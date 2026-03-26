import 'package:supabase_flutter/supabase_flutter.dart';
import '../models/term.dart';
import '../models/weekly_plan.dart';
import 'curriculum_map.dart' show CurriculumMap;

class TermService {
  final _supabase = Supabase.instance.client;

  String? get _teacherId => _supabase.auth.currentUser?.id;

  Future<String?> _getSchoolId() async {
    if (_teacherId == null) return null;
    final row = await _supabase
        .from('teachers')
        .select('school_id')
        .eq('id', _teacherId as Object)
        .maybeSingle();
    return row?['school_id'] as String?;
  }

  // ── Get or create active school year ────────────────────────────────────
  Future<Map<String, dynamic>?> getOrCreateActiveSchoolYear() async {
    final schoolId = await _getSchoolId();
    if (schoolId == null) return null;

    // Try to find an active school year
    final existing = await _supabase
        .from('school_years')
        .select()
        .eq('school_id', schoolId)
        .eq('is_active', true)
        .maybeSingle();
    if (existing != null) return existing;

    // Create one based on current date
    final now = DateTime.now();
    // Nigerian school year: starts September, e.g. "2024/2025"
    final startYear = now.month >= 9 ? now.year : now.year - 1;
    final label = '$startYear/${startYear + 1}';

    final created = await _supabase
        .from('school_years')
        .insert({'school_id': schoolId, 'label': label, 'is_active': true})
        .select()
        .single();
    return created;
  }

  // ── Get active term ──────────────────────────────────────────────────────
  Future<Term?> getActiveTerm() async {
    final schoolId = await _getSchoolId();
    if (schoolId == null) return null;

    final row = await _supabase
        .from('terms')
        .select('*, school_years(label)')
        .eq('school_id', schoolId)
        .eq('is_active', true)
        .maybeSingle();

    if (row == null) return null;
    return _termFromRow(row);
  }

  // ── Get all terms for current school ────────────────────────────────────
  Future<List<Term>> getAllTerms() async {
    final schoolId = await _getSchoolId();
    if (schoolId == null) return [];

    final rows = await _supabase
        .from('terms')
        .select('*, school_years(label)')
        .eq('school_id', schoolId)
        .order('created_at');

    return (rows as List)
        .map((r) => _termFromRow(r as Map<String, dynamic>))
        .toList();
  }

  // ── Create a new term and seed weekly plans ──────────────────────────────
  Future<Term?> createTerm({
    required int termNumber,
    required int weekCount,
    DateTime? startDate,
    DateTime? endDate,
  }) async {
    final schoolId = await _getSchoolId();
    if (schoolId == null) return null;

    final schoolYear = await getOrCreateActiveSchoolYear();
    if (schoolYear == null) return null;

    // Deactivate any currently active term first
    await _supabase
        .from('terms')
        .update({'is_active': false})
        .eq('school_id', schoolId);

    final row = await _supabase
        .from('terms')
        .insert({
      'school_year_id': schoolYear['id'],
      'school_id': schoolId,
      'term_number': termNumber,
      'week_count': weekCount,
      'start_date': startDate?.toIso8601String().split('T').first,
      'end_date': endDate?.toIso8601String().split('T').first,
      'is_active': true,
    })
        .select('*, school_years(label)')
        .single();

    final term = _termFromRow(row);

    // Seed default weekly plans for all three levels
    await _seedWeeklyPlans(term);

    return term;
  }

  // ── Update term dates ────────────────────────────────────────────────────
  Future<void> updateTermDates(
      String termId, {
        DateTime? startDate,
        DateTime? endDate,
        int? weekCount,
      }) async {
    final updates = <String, dynamic>{};
    if (startDate != null) {
      updates['start_date'] = startDate.toIso8601String().split('T').first;
    }
    if (endDate != null) {
      updates['end_date'] = endDate.toIso8601String().split('T').first;
    }
    if (weekCount != null) updates['week_count'] = weekCount;
    if (updates.isEmpty) return;
    await _supabase.from('terms').update(updates).eq('id', termId);
  }

  // ── Delete term ───────────────────────────────────────────────────────────
  Future<void> deleteTerm(String termId) async {
    await _supabase.from('terms').delete().eq('id', termId);
  }

  // ── Set active term ──────────────────────────────────────────────────────
  Future<void> setActiveTerm(String termId) async {
    final schoolId = await _getSchoolId();
    if (schoolId == null) return;
    await _supabase
        .from('terms')
        .update({'is_active': false})
        .eq('school_id', schoolId);
    await _supabase
        .from('terms')
        .update({'is_active': true})
        .eq('id', termId);
  }

  // ── Get weekly plans for a term and level ────────────────────────────────
  Future<List<WeeklyPlan>> getWeeklyPlans(
      String termId, String level) async {
    // Always derive weekly plans from the local CurriculumMap — it is the
    // source of truth.  Supabase rows may be stale from an earlier seed;
    // the map is always up to date.
    int termNumber = 1;
    try {
      if (termId != 'preview') {
        final row = await _supabase
            .from('terms')
            .select()
            .eq('id', termId)
            .maybeSingle();
        if (row != null) termNumber = _termFromRow(row).termNumber;
      }
    } catch (_) {}

    return CurriculumMap.forLevel(level,
        termNumber: termNumber, termId: termId);
  }

  // ── Get a single week plan ───────────────────────────────────────────────
  Future<WeeklyPlan?> getWeekPlan(
      String termId, int weekNumber, String level) async {
    final plans = await getWeeklyPlans(termId, level);
    try {
      return plans.firstWhere((p) => p.weekNumber == weekNumber);
    } catch (_) {
      return null;
    }
  }

  // ── Seed default curriculum for all levels ───────────────────────────────
  Future<void> _seedWeeklyPlans(Term term) async {
    final schoolId = await _getSchoolId();
    if (schoolId == null) return;

    for (final level in CurriculumMap.levels) {
      final plans = CurriculumMap.forLevel(level,
          termNumber: term.termNumber,
          termId: term.id,
          schoolId: schoolId);
      final rows = plans.map((p) => p.toRow()).toList();

      // Upsert on the unique constraint — always overwrite existing data
      await _supabase.from('weekly_plans').upsert(rows,
          onConflict: 'term_id,week_number,level');
    }
  }

  // ── Public reseed: delete all plans for term, then reseed fresh ──────────
  Future<void> reseedWeeklyPlans(Term term) async {
    // Delete existing plans for this term so stale data is fully replaced
    await _supabase
        .from('weekly_plans')
        .delete()
        .eq('term_id', term.id);
    await _seedWeeklyPlans(term);
  }

  // ── Compute current week from today and term start ───────────────────────
  int? computeCurrentWeek(Term term) => term.currentWeek;

  // ── Helper: build Term from Supabase row ─────────────────────────────────
  Term _termFromRow(Map<String, dynamic> row) {
    final yearLabel =
        (row['school_years'] as Map?)?['label'] as String? ?? '';
    return Term(
      id: row['id'] as String,
      schoolYearId: row['school_year_id'] as String,
      schoolId: row['school_id'] as String,
      termNumber: row['term_number'] as int,
      weekCount: row['week_count'] as int? ?? 13,
      startDate: row['start_date'] != null
          ? DateTime.parse(row['start_date'] as String)
          : null,
      endDate: row['end_date'] != null
          ? DateTime.parse(row['end_date'] as String)
          : null,
      isActive: row['is_active'] as bool? ?? false,
      schoolYearLabel: yearLabel,
    );
  }
}
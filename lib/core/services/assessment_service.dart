import 'package:hive/hive.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import '../models/assessment.dart';
import 'connectivity_service.dart';
import 'offline_sync_service.dart';

class AssessmentService {
  final _supabase = Supabase.instance.client;
  final _connectivity = ConnectivityService();
  final _syncService = OfflineSyncService();
  final Box<Assessment> _cache = Hive.box<Assessment>('assessments');

  // ── Serialize assessment to Supabase row ─────────────────────────────────
  Map<String, dynamic> _toRow(Assessment a) => {
    'id': a.id,
    'student_id': a.studentId,
    'level': a.level,
    'total_questions': a.totalQuestions,
    'correct_answers': a.correctAnswers,
    'score': a.score,
    'weak_skill_tags': a.weakSkillTags,
    'date': a.date.toIso8601String(),
    'assessment_type': a.assessmentType,
    'term_id': a.termId,
    'week_number': a.weekNumber,
    'term_number': a.termNumber,
  };

  // ── Deserialize from Supabase row ────────────────────────────────────────
  Assessment _fromRow(Map<String, dynamic> row) => Assessment(
    id: row['id'] as String,
    studentId: row['student_id'] as String,
    level: row['level'] as String,
    totalQuestions: row['total_questions'] as int,
    correctAnswers: row['correct_answers'] as int,
    score: (row['score'] as num).toDouble(),
    weakSkillTags: List<String>.from(row['weak_skill_tags'] ?? []),
    date: DateTime.parse(row['date'] as String),
    assessmentType: row['assessment_type'] as String? ?? 'free',
    termId: row['term_id'] as String?,
    weekNumber: row['week_number'] as int?,
    termNumber: row['term_number'] as int?,
  );

  // ── Add assessment ────────────────────────────────────────────────────────
  Future<void> addAssessment(Assessment assessment) async {
    await _cache.put(assessment.id, assessment);

    if (_connectivity.isOnline) {
      await _supabase.from('assessments').insert(_toRow(assessment));
    } else {
      await _syncService.enqueue(
        table: 'assessments',
        action: 'insert',
        payload: _toRow(assessment),
      );
    }
  }

  // ── Get all assessments for a student ────────────────────────────────────
  Future<List<Assessment>> getAssessmentsByStudent(String studentId) async {
    if (_connectivity.isOnline) {
      try {
        final data = await _supabase
            .from('assessments')
            .select()
            .eq('student_id', studentId)
            .order('date', ascending: false);

        final assessments =
        (data as List).map((row) => _fromRow(row)).toList();
        for (final a in assessments) {
          await _cache.put(a.id, a);
        }
        return assessments;
      } catch (_) {}
    }
    return _cache.values
        .where((a) => a.studentId == studentId)
        .toList()
      ..sort((a, b) => b.date.compareTo(a.date));
  }

  // ── Get assessments for a student within a specific term ─────────────────
  Future<List<Assessment>> getAssessmentsByTerm(
      String studentId, String termId) async {
    final all = await getAssessmentsByStudent(studentId);
    return all.where((a) => a.termId == termId).toList();
  }

  // ── Get assessments for a specific week within a term ────────────────────
  Future<List<Assessment>> getAssessmentsByWeek(
      String studentId, String termId, int weekNumber) async {
    final all = await getAssessmentsByTerm(studentId, termId);
    return all.where((a) => a.weekNumber == weekNumber).toList();
  }

  // ── Get term summary: weekly scores grouped by week ──────────────────────
  /// Returns a map of weekNumber → average score for all assessments
  /// that week (weekly + free).
  Future<Map<int, double>> getWeeklyScores(
      String studentId, String termId, int weekCount) async {
    final termAssessments = await getAssessmentsByTerm(studentId, termId);
    final Map<int, List<double>> grouped = {};

    for (final a in termAssessments) {
      if (a.weekNumber == null) continue;
      grouped.putIfAbsent(a.weekNumber!, () => []).add(a.score);
    }

    return {
      for (final entry in grouped.entries)
        entry.key:
        entry.value.reduce((a, b) => a + b) / entry.value.length,
    };
  }

  // ── Midterm assessments (weeks 1 – midtermWeek) ──────────────────────────
  Future<List<Assessment>> getMidtermAssessments(
      String studentId, String termId, int midtermWeek) async {
    final all = await getAssessmentsByTerm(studentId, termId);
    return all
        .where((a) => a.weekNumber != null && a.weekNumber! <= midtermWeek)
        .toList();
  }

  // ── Get assessments grouped by term number ────────────────────────────────
  /// Used for 3-term comparison report.
  Future<Map<int, List<Assessment>>> getAssessmentsByTermNumber(
      String studentId) async {
    final all = await getAssessmentsByStudent(studentId);
    final Map<int, List<Assessment>> grouped = {};
    for (final a in all) {
      if (a.termNumber == null) continue;
      grouped.putIfAbsent(a.termNumber!, () => []).add(a);
    }
    return grouped;
  }

  // ── Delete assessment ─────────────────────────────────────────────────────
  Future<void> deleteAssessment(String assessmentId) async {
    await _cache.delete(assessmentId);
    if (_connectivity.isOnline) {
      await _supabase.from('assessments').delete().eq('id', assessmentId);
    } else {
      await _syncService.enqueue(
        table: 'assessments',
        action: 'delete',
        payload: {'id': assessmentId},
      );
    }
  }
}
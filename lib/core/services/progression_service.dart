import 'package:supabase_flutter/supabase_flutter.dart';
import '../models/student.dart';
import '../models/assessment.dart';
import 'student_service.dart';

/// Promotion rules:
/// A student is eligible to move up ONLY when ALL of the following are true:
///   1. They have completed assessments across all 3 terms (termNumber 1, 2, 3)
///   2. They have at least [_minWeeksPerTerm] distinct week numbers assessed
///      in EACH term — i.e. they have worked through the full curriculum.
///   3. Their overall average score across all assessments at this level is ≥ 75%
///   4. Their most recent assessment scored ≥ 75%
///
/// Completing 3 random assessments is NOT sufficient for promotion.
class ProgressionService {
  static const double _promotionThreshold = 75.0;

  /// A student must have touched at least this many distinct weeks in each
  /// term before promotion is considered.  Each level has 13 weeks per term,
  /// but we require at least 10 distinct weeks to allow for the end-of-term
  /// summary week and any weeks a student may have genuinely missed.
  static const int _minWeeksPerTerm = 10;

  /// All three terms must be represented.
  static const int _termsRequired = 3;

  final _supabase = Supabase.instance.client;
  final StudentService _studentService = StudentService();

  static const Map<String, String> _levelUp = {
    'beginner':     'elementary',
    'elementary':   'intermediate',
    'intermediate': 'upper',
    'upper':        'secondary',
    'secondary':    'senior',
    'senior':       '',
  };

  // ── Check promotion eligibility ───────────────────────────────────────────
  Future<PromotionStatus> checkPromotion(
      Student student, Assessment latestAssessment) async {

    if (_levelUp[student.level] == '') {
      return PromotionStatus.atTopLevel;
    }

    // Rule 1: latest assessment must pass threshold
    if (latestAssessment.score < _promotionThreshold) {
      return PromotionStatus.notReady;
    }

    // Fetch all assessments at this level
    final assessments =
        await _getAssessmentsAtLevel(student.id, student.level);

    // Rule 2: must have assessments across all 3 terms
    final termsCovered = assessments
        .where((a) => a.termNumber != null)
        .map((a) => a.termNumber!)
        .toSet();

    if (termsCovered.length < _termsRequired) {
      return PromotionStatus.needsMorePractice;
    }

    // Rule 3: must have at least _minWeeksPerTerm distinct weeks in each term
    for (int term = 1; term <= _termsRequired; term++) {
      final weeksInTerm = assessments
          .where((a) => a.termNumber == term && a.weekNumber != null)
          .map((a) => a.weekNumber!)
          .toSet();
      if (weeksInTerm.length < _minWeeksPerTerm) {
        return PromotionStatus.needsMorePractice;
      }
    }

    // Rule 4: overall average must be ≥ threshold
    final avg = assessments.map((a) => a.score).reduce((a, b) => a + b)
        / assessments.length;

    if (avg >= _promotionThreshold) {
      return PromotionStatus.readyToPromote;
    }

    return PromotionStatus.notReady;
  }

  // ── Progress summary for the UI ───────────────────────────────────────────
  Future<ProgressionProgress> getProgress(Student student) async {
    try {
      final assessments =
          await _getAssessmentsAtLevel(student.id, student.level);

      // Count how many terms have enough week coverage
      int termsComplete = 0;
      final List<int> weeksPerTerm = [];

      for (int term = 1; term <= _termsRequired; term++) {
        final weeksInTerm = assessments
            .where((a) => a.termNumber == term && a.weekNumber != null)
            .map((a) => a.weekNumber!)
            .toSet()
            .length;
        weeksPerTerm.add(weeksInTerm);
        if (weeksInTerm >= _minWeeksPerTerm) termsComplete++;
      }

      return ProgressionProgress(
        termsComplete: termsComplete,
        termsRequired: _termsRequired,
        weeksPerTerm: weeksPerTerm,
        minWeeksPerTerm: _minWeeksPerTerm,
        totalAttempts: assessments.length,
      );
    } catch (_) {
      return ProgressionProgress(
        termsComplete: 0,
        termsRequired: _termsRequired,
        weeksPerTerm: const [0, 0, 0],
        minWeeksPerTerm: _minWeeksPerTerm,
      );
    }
  }

  // ── Promote student to next level ─────────────────────────────────────────
  Future<void> promoteStudent(Student student) async {
    final nextLevel = _levelUp[student.level];
    if (nextLevel == null || nextLevel.isEmpty) return;

    final promoted = Student(
      id: student.id,
      name: student.name,
      age: student.age,
      classroomId: student.classroomId,
      level: nextLevel,
      createdAt: student.createdAt,
      gender: student.gender,
      dateOfBirth: student.dateOfBirth,
      guardianName: student.guardianName,
      guardianPhone: student.guardianPhone,
      notes: student.notes,
    );

    await _studentService.updateStudent(promoted);
  }

  // ── Helpers ───────────────────────────────────────────────────────────────
  String nextLevel(String currentLevel) => _levelUp[currentLevel] ?? '';

  static String phaseLabel(String level) {
    switch (level) {
      case 'beginner':     return 'Nursery 1–2';
      case 'elementary':   return 'Nursery 3 – Primary 1';
      case 'intermediate': return 'Primary 2–3';
      case 'upper':        return 'Primary 4–5';
      case 'secondary':    return 'JSS 1–3';
      case 'senior':       return 'SSS 1–3';
      default:             return level;
    }
  }

  static String levelDescription(String level) {
    switch (level) {
      case 'beginner':
        return 'Sound awareness, rhyme, environmental sounds, and first letter sounds. (Nursery 1–2)';
      case 'elementary':
        return 'CVC words, digraphs, short vowels, and first consonant clusters. (Nursery 3 – Primary 1)';
      case 'intermediate':
        return 'Vowel digraphs, split digraphs, r-controlled vowels, and basic prefixes/suffixes. (Primary 2–3)';
      case 'upper':
        return 'Latin and Greek roots, multi-syllable words, advanced suffixes, and essay writing. (Primary 4–5)';
      case 'secondary':
        return 'Academic vocabulary, etymology, complex grammar, and WAEC-level comprehension. (JSS 1–3)';
      case 'senior':
        return 'Advanced morphology, literary analysis, examination writing, and WAEC preparation. (SSS 1–3)';
      default:
        return '';
    }
  }

  Future<List<Assessment>> _getAssessmentsAtLevel(
      String studentId, String level) async {
    try {
      final data = await _supabase
          .from('assessments')
          .select()
          .eq('student_id', studentId)
          .eq('level', level)
          .order('date', ascending: false);

      return (data as List).map((row) => Assessment(
        id: row['id'],
        studentId: row['student_id'],
        level: row['level'],
        totalQuestions: row['total_questions'],
        correctAnswers: row['correct_answers'],
        score: (row['score'] as num).toDouble(),
        weakSkillTags: List<String>.from(row['weak_skill_tags'] ?? []),
        date: DateTime.parse(row['date']),
        weekNumber: row['week_number'] as int?,
        termNumber: row['term_number'] as int?,
      )).toList();
    } catch (_) {
      return [];
    }
  }
}

enum PromotionStatus {
  readyToPromote,
  notReady,
  needsMorePractice,  // hasn't completed enough of the curriculum yet
  atTopLevel,
}

class ProgressionProgress {
  final int termsComplete;
  final int termsRequired;
  final List<int> weeksPerTerm;   // how many distinct weeks in each term
  final int minWeeksPerTerm;
  final int totalAttempts;

  const ProgressionProgress({
    required this.termsComplete,
    required this.termsRequired,
    required this.weeksPerTerm,
    required this.minWeeksPerTerm,
    this.totalAttempts = 0,
  });

  /// Legacy compat — used by some UI widgets
  int get completed => termsComplete;
  int get totalRequired => termsRequired;

  double get fraction => termsComplete / termsRequired;
  bool get isReady => termsComplete >= termsRequired;
  String get label => '$termsComplete / $termsRequired terms completed';
}
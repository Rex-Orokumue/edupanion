import '../models/question.dart';

// Each level+term file is imported directly and accessed on demand.
// We do NOT import question_pool.dart here — that file's weekSpecificQuestions
// list merges every level at once and forces Dart to allocate ~4,000 Question
// objects at startup, which is the root cause of the slow loading spinners.
//
// Instead, this service lazily loads only the level+term slice it actually
// needs when getQuestionsForWeek() is first called for that combination.

import '../../modules/phonics/data/week_questions_beginner_t1.dart';
import '../../modules/phonics/data/week_questions_beginner_t2.dart';
import '../../modules/phonics/data/week_questions_beginner_t3.dart';
import '../../modules/phonics/data/week_questions_elementary_t1.dart';
import '../../modules/phonics/data/week_questions_elementary_t2.dart';
import '../../modules/phonics/data/week_questions_elementary_t3.dart';
import '../../modules/phonics/data/week_questions_intermediate.dart';
import '../../modules/phonics/data/week_questions_upper_t1.dart';
import '../../modules/phonics/data/week_questions_upper_t2.dart';
import '../../modules/phonics/data/week_questions_upper_t3.dart';
import '../../modules/phonics/data/week_questions_secondary_t1.dart';
import '../../modules/phonics/data/week_questions_secondary_t2.dart';
import '../../modules/phonics/data/week_questions_secondary_t3.dart';
import '../../modules/phonics/data/week_questions_senior_t1.dart';
import '../../modules/phonics/data/week_questions_senior_t2.dart';
import '../../modules/phonics/data/week_questions_senior_t3.dart';
import '../../modules/phonics/data/question_pool.dart'
    show getQuestionsForLevelFromPool; // legacy free-assessment pool only

class QuestionService {
  // ── Per-slice cache ───────────────────────────────────────────────────────
  // Key: 'level_term'  e.g. 'upper_2'
  // Value: the filtered list for that level+term combination.
  // This means we only pay the filter cost once per level+term pair per session.
  final Map<String, List<Question>> _cache = {};

  // ── Week-specific assessment (primary method) ─────────────────────────────
  List<Question> getQuestionsForWeek({
    required String level,
    required int weekNumber,
    required int assessmentSet,
    int termNumber = 1,
  }) {
    final slice = _sliceFor(level, termNumber);

    final result = slice
        .where((q) =>
            q.weekNumber == weekNumber &&
            q.assessmentSet == assessmentSet)
        .toList();

    if (result.isNotEmpty) return result;

    // Fallback: legacy tag pool for any week not yet written
    return getQuestionsForLevelFromPool(level);
  }

  // ── Available sets for a week (used by assessment picker UI) ─────────────
  Set<int> availableSetsForWeek({
    required String level,
    required int weekNumber,
    int termNumber = 1,
  }) {
    return _sliceFor(level, termNumber)
        .where((q) => q.weekNumber == weekNumber)
        .map((q) => q.assessmentSet ?? 1)
        .toSet();
  }

  // ── Legacy tag-based method (kept for free assessments) ───────────────────
  List<Question> getQuestionsByLevel(String level,
      {List<String>? weekSkillTags}) {
    return getQuestionsForLevelFromPool(level, weekSkillTags: weekSkillTags);
  }

  // ── Internal: load & cache a level+term slice ─────────────────────────────
  List<Question> _sliceFor(String level, int termNumber) {
    final key = '${level}_$termNumber';
    if (_cache.containsKey(key)) return _cache[key]!;

    final source = _sourceList(level, termNumber);
    // Filter to only the questions for this level (intermediate is combined).
    final filtered = source.where((q) => q.level == level).toList();
    _cache[key] = filtered;
    return filtered;
  }

  List<Question> _sourceList(String level, int termNumber) {
    switch (level) {
      case 'beginner':
        switch (termNumber) {
          case 1: return weekQuestionsBeginnerT1;
          case 2: return weekQuestionsBeginnerT2;
          case 3: return weekQuestionsBeginnerT3;
        }
      case 'elementary':
        switch (termNumber) {
          case 1: return weekQuestionsElementaryT1;
          case 2: return weekQuestionsElementaryT2;
          case 3: return weekQuestionsElementaryT3;
        }
      case 'intermediate':
        // intermediate is stored in a single combined file
        return weekQuestionsIntermediate;
      case 'upper':
        switch (termNumber) {
          case 1: return weekQuestionsUpperT1;
          case 2: return weekQuestionsUpperT2;
          case 3: return weekQuestionsUpperT3;
        }
      case 'secondary':
        switch (termNumber) {
          case 1: return weekQuestionsSecondaryT1;
          case 2: return weekQuestionsSecondaryT2;
          case 3: return weekQuestionsSecondaryT3;
        }
      case 'senior':
        switch (termNumber) {
          case 1: return weekQuestionsSeniorT1;
          case 2: return weekQuestionsSeniorT2;
          case 3: return weekQuestionsSeniorT3;
        }
    }
    return const [];
  }
}
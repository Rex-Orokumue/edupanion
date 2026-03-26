import 'package:hive/hive.dart';

part 'question.g.dart';

@HiveType(typeId: 2)
class Question extends HiveObject {
  @HiveField(0)
  String id;

  @HiveField(1)
  String level; // 'beginner' | 'elementary' | 'intermediate' | 'upper' | 'secondary' | 'senior'

  @HiveField(2)
  String skillTag; // e.g. 'short_vowel', 'digraph', 'prefix'

  @HiveField(3)
  String questionText;

  @HiveField(4)
  List<String> options;

  @HiveField(5)
  String correctAnswer;

  // ── New fields (nullable for backwards compat with existing Hive boxes) ──

  @HiveField(6)
  int? weekNumber; // 1–13 — null = legacy tag-pool question

  @HiveField(7)
  int? assessmentSet; // 1, 2, or 3 — null = legacy tag-pool question

  @HiveField(8)
  String? questionType; // 'phonics' | 'vocabulary' | 'grammar' | 'spelling' | 'comprehension'

  @HiveField(9)
  int? termNumber; // 1, 2, or 3 — null = legacy tag-pool question

  Question({
    required this.id,
    required this.level,
    required this.skillTag,
    required this.questionText,
    required this.options,
    required this.correctAnswer,
    this.weekNumber,
    this.assessmentSet,
    this.questionType,
    this.termNumber,
  });
}
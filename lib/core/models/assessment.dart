import 'package:hive/hive.dart';

part 'assessment.g.dart';

@HiveType(typeId: 1)
class Assessment extends HiveObject {
  @HiveField(0)
  String id;

  @HiveField(1)
  String studentId;

  @HiveField(2)
  String level; // 'beginner' | 'intermediate' | 'advanced'

  @HiveField(3)
  int totalQuestions;

  @HiveField(4)
  int correctAnswers;

  @HiveField(5)
  double score; // percentage 0.0 – 100.0

  @HiveField(6)
  List<String> weakSkillTags;

  @HiveField(7)
  DateTime date;

  @HiveField(8)
  String assessmentType; // 'weekly' | 'free'

  @HiveField(9)
  String? termId;

  @HiveField(10)
  int? weekNumber;

  @HiveField(11)
  int? termNumber;

  Assessment({
    required this.id,
    required this.studentId,
    required this.level,
    required this.totalQuestions,
    required this.correctAnswers,
    required this.score,
    required this.weakSkillTags,
    required this.date,
    this.assessmentType = 'free',
    this.termId,
    this.weekNumber,
    this.termNumber,
  });
}
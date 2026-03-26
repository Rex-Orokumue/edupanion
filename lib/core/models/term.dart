import 'package:hive/hive.dart';

part 'term.g.dart';

@HiveType(typeId: 4)
class Term extends HiveObject {
  @HiveField(0)
  String id;

  @HiveField(1)
  String schoolYearId;

  @HiveField(2)
  String schoolId;

  @HiveField(3)
  int termNumber; // 1 | 2 | 3

  @HiveField(4)
  int weekCount; // 12 or 13

  @HiveField(5)
  DateTime? startDate;

  @HiveField(6)
  DateTime? endDate;

  @HiveField(7)
  bool isActive;

  @HiveField(8)
  String schoolYearLabel; // e.g. "2024/2025" — denormalised for display

  Term({
    required this.id,
    required this.schoolYearId,
    required this.schoolId,
    required this.termNumber,
    required this.schoolYearLabel,
    this.weekCount = 13,
    this.startDate,
    this.endDate,
    this.isActive = false,
  });

  String get label => 'Term $termNumber — $schoolYearLabel';

  String get termLabel => 'Term $termNumber';

  /// Returns the current week number (1–weekCount) based on startDate,
  /// or null if the term hasn't started or has no startDate.
  int? get currentWeek {
    if (startDate == null) return null;
    final now = DateTime.now();
    if (now.isBefore(startDate!)) return null;
    final daysPassed = now.difference(startDate!).inDays;
    final week = (daysPassed ~/ 7) + 1;
    return week.clamp(1, weekCount);
  }

  /// True if today falls within term dates (or startDate is set and endDate is null)
  bool get isOngoing {
    if (startDate == null) return isActive;
    final now = DateTime.now();
    if (now.isBefore(startDate!)) return false;
    if (endDate != null && now.isAfter(endDate!)) return false;
    return true;
  }

  /// Midterm boundary — first half of term
  int get midtermWeek => (weekCount / 2).ceil();
}
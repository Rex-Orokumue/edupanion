import 'package:hive/hive.dart';

part 'student.g.dart';

@HiveType(typeId: 0)
class Student extends HiveObject {
  @HiveField(0)
  String id;

  @HiveField(1)
  String name;

  @HiveField(2)
  int age;

  @HiveField(3)
  String classroomId;

  @HiveField(4)
  String level; // 'beginner' | 'intermediate' | 'advanced'

  @HiveField(5)
  DateTime createdAt;

  // ── New fields (6–10) ─────────────────────────────────────────────────────
  // Hive is additive: existing boxes missing these fields read them as null.
  // All are nullable so old data is never broken.

  @HiveField(6)
  String? gender; // 'male' | 'female' | 'other'

  @HiveField(7)
  DateTime? dateOfBirth;

  @HiveField(8)
  String? guardianName;

  @HiveField(9)
  String? guardianPhone;

  @HiveField(10)
  String? notes;

  Student({
    required this.id,
    required this.name,
    required this.age,
    required this.classroomId,
    required this.level,
    required this.createdAt,
    this.gender,
    this.dateOfBirth,
    this.guardianName,
    this.guardianPhone,
    this.notes,
  });

  // ── copyWith — used by move-class & promote features ─────────────────────
  Student copyWith({
    String? id,
    String? name,
    int? age,
    String? classroomId,
    String? level,
    DateTime? createdAt,
    String? gender,
    DateTime? dateOfBirth,
    String? guardianName,
    String? guardianPhone,
    String? notes,
  }) {
    return Student(
      id: id ?? this.id,
      name: name ?? this.name,
      age: age ?? this.age,
      classroomId: classroomId ?? this.classroomId,
      level: level ?? this.level,
      createdAt: createdAt ?? this.createdAt,
      gender: gender ?? this.gender,
      dateOfBirth: dateOfBirth ?? this.dateOfBirth,
      guardianName: guardianName ?? this.guardianName,
      guardianPhone: guardianPhone ?? this.guardianPhone,
      notes: notes ?? this.notes,
    );
  }
}
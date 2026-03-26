// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'assessment.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class AssessmentAdapter extends TypeAdapter<Assessment> {
  @override
  final int typeId = 1;

  @override
  Assessment read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Assessment(
      id: fields[0] as String,
      studentId: fields[1] as String,
      level: fields[2] as String,
      totalQuestions: fields[3] as int,
      correctAnswers: fields[4] as int,
      score: fields[5] as double,
      weakSkillTags: (fields[6] as List).cast<String>(),
      date: fields[7] as DateTime,
      assessmentType: fields[8] as String,
      termId: fields[9] as String?,
      weekNumber: fields[10] as int?,
      termNumber: fields[11] as int?,
    );
  }

  @override
  void write(BinaryWriter writer, Assessment obj) {
    writer
      ..writeByte(12)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.studentId)
      ..writeByte(2)
      ..write(obj.level)
      ..writeByte(3)
      ..write(obj.totalQuestions)
      ..writeByte(4)
      ..write(obj.correctAnswers)
      ..writeByte(5)
      ..write(obj.score)
      ..writeByte(6)
      ..write(obj.weakSkillTags)
      ..writeByte(7)
      ..write(obj.date)
      ..writeByte(8)
      ..write(obj.assessmentType)
      ..writeByte(9)
      ..write(obj.termId)
      ..writeByte(10)
      ..write(obj.weekNumber)
      ..writeByte(11)
      ..write(obj.termNumber);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is AssessmentAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'term.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class TermAdapter extends TypeAdapter<Term> {
  @override
  final int typeId = 4;

  @override
  Term read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Term(
      id: fields[0] as String,
      schoolYearId: fields[1] as String,
      schoolId: fields[2] as String,
      termNumber: fields[3] as int,
      schoolYearLabel: fields[8] as String,
      weekCount: fields[4] as int,
      startDate: fields[5] as DateTime?,
      endDate: fields[6] as DateTime?,
      isActive: fields[7] as bool,
    );
  }

  @override
  void write(BinaryWriter writer, Term obj) {
    writer
      ..writeByte(9)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.schoolYearId)
      ..writeByte(2)
      ..write(obj.schoolId)
      ..writeByte(3)
      ..write(obj.termNumber)
      ..writeByte(4)
      ..write(obj.weekCount)
      ..writeByte(5)
      ..write(obj.startDate)
      ..writeByte(6)
      ..write(obj.endDate)
      ..writeByte(7)
      ..write(obj.isActive)
      ..writeByte(8)
      ..write(obj.schoolYearLabel);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is TermAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

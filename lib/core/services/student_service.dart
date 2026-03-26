import 'package:hive/hive.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import '../models/student.dart';
import 'connectivity_service.dart';
import 'offline_sync_service.dart';

class StudentService {
  final _supabase = Supabase.instance.client;
  final _connectivity = ConnectivityService();
  final _syncService = OfflineSyncService();
  final Box<Student> _cache = Hive.box<Student>('students');

  // ── Shared payload builder ────────────────────────────────────────────────
  // Single source of truth for all fields sent to Supabase.
  Map<String, dynamic> _toPayload(Student s) => {
    'id': s.id,
    'name': s.name,
    'age': s.age,
    'level': s.level,
    'classroom_id': s.classroomId,
    'gender': s.gender ?? 'other',
    if (s.dateOfBirth != null)
      'date_of_birth':
      s.dateOfBirth!.toIso8601String().split('T').first, // DATE only
    'guardian_name': s.guardianName,
    'guardian_phone': s.guardianPhone,
    'notes': s.notes,
  };

  // ── Row → Student ─────────────────────────────────────────────────────────
  Student _fromRow(Map<String, dynamic> row) => Student(
    id: row['id'] as String,
    name: row['name'] as String,
    age: row['age'] as int,
    classroomId: row['classroom_id'] as String,
    level: row['level'] as String,
    createdAt: DateTime.parse(row['created_at'] as String),
    gender: row['gender'] as String?,
    dateOfBirth: row['date_of_birth'] != null
        ? DateTime.parse(row['date_of_birth'] as String)
        : null,
    guardianName: row['guardian_name'] as String?,
    guardianPhone: row['guardian_phone'] as String?,
    notes: row['notes'] as String?,
  );

  // ── Add student ───────────────────────────────────────────────────────────
  Future<void> addStudent(Student student) async {
    await _cache.put(student.id, student);
    final payload = _toPayload(student);
    if (_connectivity.isOnline) {
      await _supabase.from('students').insert(payload);
    } else {
      await _syncService.enqueue(
        table: 'students',
        action: 'insert',
        payload: payload,
      );
    }
  }

  // ── Update student ────────────────────────────────────────────────────────
  // Now includes classroom_id (for move) and all new fields.
  Future<void> updateStudent(Student student) async {
    await _cache.put(student.id, student);
    final payload = _toPayload(student)..remove('id'); // id goes in .eq()
    if (_connectivity.isOnline) {
      await _supabase
          .from('students')
          .update(payload)
          .eq('id', student.id);
    } else {
      await _syncService.enqueue(
        table: 'students',
        action: 'update',
        payload: _toPayload(student), // keep id for offline sync matching
      );
    }
  }

  // ── Get students by classroom ─────────────────────────────────────────────
  Future<List<Student>> getStudentsByClassroom(String classroomId) async {
    if (_connectivity.isOnline) {
      try {
        final data = await _supabase
            .from('students')
            .select()
            .eq('classroom_id', classroomId);
        final students =
        (data as List).map((row) => _fromRow(row as Map<String, dynamic>)).toList();
        for (final s in students) {
          await _cache.put(s.id, s);
        }
        return students;
      } catch (_) {}
    }
    return _cache.values
        .where((s) => s.classroomId == classroomId)
        .toList();
  }

  // ── Get all students for logged-in teacher ────────────────────────────────
  Future<List<Student>> getAllStudents() async {
    final teacherId = _supabase.auth.currentUser?.id;
    if (teacherId == null) return [];
    if (_connectivity.isOnline) {
      try {
        final data = await _supabase
            .from('students')
            .select('*, classrooms!inner(teacher_id)')
            .eq('classrooms.teacher_id', teacherId);
        final students =
        (data as List).map((row) => _fromRow(row as Map<String, dynamic>)).toList();
        for (final s in students) {
          await _cache.put(s.id, s);
        }
        return students;
      } catch (_) {}
    }
    return _cache.values.toList();
  }

  // ── Delete student ────────────────────────────────────────────────────────
  Future<void> deleteStudent(String studentId) async {
    await _cache.delete(studentId);
    if (_connectivity.isOnline) {
      await _supabase.from('students').delete().eq('id', studentId);
    } else {
      await _syncService.enqueue(
        table: 'students',
        action: 'delete',
        payload: {'id': studentId},
      );
    }
  }
}
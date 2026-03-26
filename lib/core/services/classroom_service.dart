import 'package:supabase_flutter/supabase_flutter.dart';

class ClassroomService {
  final _supabase = Supabase.instance.client;

  String? get _teacherId => _supabase.auth.currentUser?.id;

  // ── Get school ID for logged-in teacher ───────────────────────────────────
  Future<String?> _getSchoolId() async {
    if (_teacherId == null) return null;
    final teacher = await _supabase
        .from('teachers')
        .select('school_id')
        .eq('id', _teacherId as Object)
        .maybeSingle();
    return teacher?['school_id'] as String?;
  }

  // ── Create classroom ──────────────────────────────────────────────────────
  Future<Map<String, dynamic>?> createClassroom(String name) async {
    if (_teacherId == null) return null;
    final schoolId = await _getSchoolId();
    final result = await _supabase
        .from('classrooms')
        .insert({
      'name': name,
      'teacher_id': _teacherId,
      'school_id': schoolId, // include school_id to satisfy RLS
    })
        .select()
        .single();
    return result;
  }

  // ── Get all classrooms for logged-in teacher ──────────────────────────────
  Future<List<Map<String, dynamic>>> getClassrooms() async {
    if (_teacherId == null) return [];
    final result = await _supabase
        .from('classrooms')
        .select()
        .eq('teacher_id', _teacherId as Object);
    return List<Map<String, dynamic>>.from(result);
  }

  // ── Update classroom name ─────────────────────────────────────────────────
  Future<void> updateClassroom(String classroomId, String newName) async {
    await _supabase
        .from('classrooms')
        .update({'name': newName})
        .eq('id', classroomId);
  }

  // ── Delete classroom ──────────────────────────────────────────────────────
  Future<void> deleteClassroom(String classroomId) async {
    await _supabase.from('classrooms').delete().eq('id', classroomId);
  }

  // ── Get or create default classroom ──────────────────────────────────────
  Future<String?> getOrCreateDefaultClassroom() async {
    if (_teacherId == null) return null;
    final existing = await _supabase
        .from('classrooms')
        .select('id')
        .eq('teacher_id', _teacherId as Object)
        .maybeSingle();

    if (existing != null) return existing['id'] as String;

    final schoolId = await _getSchoolId();
    final created = await _supabase
        .from('classrooms')
        .insert({
      'name': 'My Class',
      'teacher_id': _teacherId,
      'school_id': schoolId,
    })
        .select('id')
        .single();
    return created['id'] as String;
  }

  // ── Get student count per classroom ──────────────────────────────────────
  Future<int> getStudentCount(String classroomId) async {
    final result = await _supabase
        .from('students')
        .select('id')
        .eq('classroom_id', classroomId);
    return (result as List).length;
  }
}
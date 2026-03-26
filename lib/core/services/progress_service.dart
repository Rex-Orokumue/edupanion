import 'package:supabase_flutter/supabase_flutter.dart';
import '../models/student.dart';
import '../models/assessment.dart';

class ProgressService {
  final _supabase = Supabase.instance.client;

  // ── All students for logged-in teacher ───────────────────────────────────
  Future<List<Student>> getAllStudents() async {
    final teacherId = _supabase.auth.currentUser?.id;
    if (teacherId == null) return [];

    final data = await _supabase
        .from('students')
        .select('*, classrooms!inner(teacher_id)')
        .eq('classrooms.teacher_id', teacherId);

    return (data as List).map((row) => Student(
      id: row['id'],
      name: row['name'],
      age: row['age'],
      classroomId: row['classroom_id'],
      level: row['level'],
      createdAt: DateTime.parse(row['created_at']),
    )).toList();
  }

  // ── All assessments for a student ────────────────────────────────────────
  Future<List<Assessment>> getAssessmentsForStudent(String studentId) async {
    final data = await _supabase
        .from('assessments')
        .select()
        .eq('student_id', studentId);

    return (data as List).map((row) => Assessment(
      id: row['id'],
      studentId: row['student_id'],
      level: row['level'],
      totalQuestions: row['total_questions'],
      correctAnswers: row['correct_answers'],
      score: (row['score'] as num).toDouble(),
      weakSkillTags: List<String>.from(row['weak_skill_tags'] ?? []),
      date: DateTime.parse(row['date']),
    )).toList();
  }

  // ── Latest assessment for a student ──────────────────────────────────────
  Future<Assessment?> getLatestAssessment(String studentId) async {
    final data = await _supabase
        .from('assessments')
        .select()
        .eq('student_id', studentId)
        .order('date', ascending: false)
        .limit(1);

    if ((data as List).isEmpty) return null;
    final row = data.first;
    return Assessment(
      id: row['id'],
      studentId: row['student_id'],
      level: row['level'],
      totalQuestions: row['total_questions'],
      correctAnswers: row['correct_answers'],
      score: (row['score'] as num).toDouble(),
      weakSkillTags: List<String>.from(row['weak_skill_tags'] ?? []),
      date: DateTime.parse(row['date']),
    );
  }

  // ── Average score for a student ───────────────────────────────────────────
  Future<double> getAverageScore(String studentId) async {
    final assessments = await getAssessmentsForStudent(studentId);
    if (assessments.isEmpty) return 0;
    return assessments.map((a) => a.score).reduce((a, b) => a + b) /
        assessments.length;
  }

  // ── Recent assessments across all students ────────────────────────────────
  Future<List<Assessment>> getRecentAssessments({int limit = 5, String? classroomId}) async {
    final teacherId = _supabase.auth.currentUser?.id;
    if (teacherId == null) return [];

    var query = _supabase
        .from('assessments')
        .select('*, students!inner(classroom_id, classrooms!inner(teacher_id))')
        .eq('students.classrooms.teacher_id', teacherId);

    if (classroomId != null) {
      query = query.eq('students.classroom_id', classroomId);
    }

    final data = await query
        .order('date', ascending: false)
        .limit(limit);

    return (data as List).map((row) => Assessment(
      id: row['id'],
      studentId: row['student_id'],
      level: row['level'],
      totalQuestions: row['total_questions'],
      correctAnswers: row['correct_answers'],
      score: (row['score'] as num).toDouble(),
      weakSkillTags: List<String>.from(row['weak_skill_tags'] ?? []),
      date: DateTime.parse(row['date']),
    )).toList();
  }

  // ── Student name lookup ───────────────────────────────────────────────────
  Future<String> getStudentName(String studentId) async {
    final data = await _supabase
        .from('students')
        .select('name')
        .eq('id', studentId)
        .single();
    return data['name'] as String? ?? 'Unknown';
  }

  // ── Students by classroom ─────────────────────────────────────────────────
  Future<List<Student>> getStudentsByClassroom(String classroomId) async {
    final data = await _supabase
        .from('students')
        .select()
        .eq('classroom_id', classroomId);

    return (data as List).map((row) => Student(
      id: row['id'],
      name: row['name'],
      age: row['age'],
      classroomId: row['classroom_id'],
      level: row['level'],
      createdAt: DateTime.parse(row['created_at']),
    )).toList();
  }
}
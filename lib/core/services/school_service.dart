import 'package:supabase_flutter/supabase_flutter.dart';

class SchoolService {
  final _supabase = Supabase.instance.client;

  // ── Get school name for logged-in teacher ─────────────────────────────────
  Future<String?> getMySchoolName() async {
    final teacherId = _supabase.auth.currentUser?.id;
    if (teacherId == null) return null;

    final teacher = await _supabase
        .from('teachers')
        .select('school_id')
        .eq('id', teacherId)
        .maybeSingle();

    if (teacher == null || teacher['school_id'] == null) return null;

    final school = await _supabase
        .from('schools')
        .select('name')
        .eq('id', teacher['school_id'])
        .maybeSingle();

    return school?['name'] as String?;
  }

  // ── Get school ID for logged-in teacher ───────────────────────────────────
  Future<String?> getMySchoolId() async {
    final teacherId = _supabase.auth.currentUser?.id;
    if (teacherId == null) return null;

    final teacher = await _supabase
        .from('teachers')
        .select('school_id')
        .eq('id', teacherId)
        .maybeSingle();

    return teacher?['school_id'] as String?;
  }

  // ── Get school code to share with other teachers ──────────────────────────
  // The school code IS the school UUID — teachers share this to let
  // colleagues join the same school during registration.
  Future<String?> getMySchoolCode() async => getMySchoolId();
}
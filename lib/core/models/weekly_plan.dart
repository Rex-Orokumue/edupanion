/// WeeklyPlan is NOT cached in Hive — it lives in Supabase and in the
/// built-in curriculum map. No offline writes needed for plans.
class WeeklyPlan {
  final String id;
  final String termId;
  final String schoolId;
  final int weekNumber;
  final String title;        // "Week 3 — Digraphs"
  final List<String> skillTags;
  final List<String> objectives;
  final String level;        // 'beginner' | 'intermediate' | 'advanced'

  const WeeklyPlan({
    required this.id,
    required this.termId,
    required this.schoolId,
    required this.weekNumber,
    required this.title,
    required this.skillTags,
    required this.objectives,
    required this.level,
  });

  factory WeeklyPlan.fromRow(Map<String, dynamic> row) => WeeklyPlan(
    id: row['id'] as String,
    termId: row['term_id'] as String,
    schoolId: row['school_id'] as String,
    weekNumber: row['week_number'] as int,
    title: row['title'] as String,
    skillTags: List<String>.from(row['skill_tags'] as List),
    objectives: List<String>.from(row['objectives'] as List),
    level: row['level'] as String,
  );

  Map<String, dynamic> toRow() => {
    'term_id': termId,
    'school_id': schoolId,
    'week_number': weekNumber,
    'title': title,
    'skill_tags': skillTags,
    'objectives': objectives,
    'level': level,
  };
}
import 'package:flutter/material.dart';
import '../../../core/models/student.dart';
import '../../../core/models/assessment.dart';
import '../../../core/services/progress_service.dart';
import '../../../core/services/classroom_service.dart';
import '../../../core/theme/app_theme.dart';
import '../../students/screens/student_profile_screen.dart';
import '../../shared/app_header.dart';
import '../../../core/services/progression_service.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  final ProgressService _progressService = ProgressService();
  final ClassroomService _classroomService = ClassroomService();

  List<Map<String, dynamic>> _classrooms = [];
  String? _selectedClassroomId;
  String _selectedClassroomName = 'All Classes';

  List<Student> _students = [];
  List<Assessment> _recentAssessments = [];
  double _classAvg = 0;
  int _totalAssessments = 0;
  bool _isLoading = true;

  final Map<String, double> _avgScores = {};
  final Map<String, Assessment?> _latestAssessments = {};
  final Map<String, String> _studentNames = {};
  final Set<String> _promotionReady = {}; // student IDs ready to promote

  @override
  void initState() {
    super.initState();
    _loadClassrooms();
  }

  Future<void> _loadClassrooms() async {
    try {
      final classrooms = await _classroomService.getClassrooms();
      if (!mounted) return;
      setState(() => _classrooms = classrooms);
    } catch (_) {}
    await _loadDashboard();
  }

  Future<void> _loadDashboard() async {
    if (!mounted) return;
    setState(() => _isLoading = true);
    try {
      // Load students — filtered by classroom if one is selected
      final List<Student> students;
      if (_selectedClassroomId != null) {
        students = await _progressService
            .getStudentsByClassroom(_selectedClassroomId!);
      } else {
        students = await _progressService.getAllStudents();
      }

      final recentAssessments =
      await _progressService.getRecentAssessments(limit: 5,
          classroomId: _selectedClassroomId);

      final results = await Future.wait(students.map((s) async {
        final avg = await _progressService.getAverageScore(s.id);
        final latest = await _progressService.getLatestAssessment(s.id);
        final assessments = await _progressService.getAssessmentsForStudent(s.id);
        return {
          'id': s.id,
          'name': s.name,
          'avg': avg,
          'latest': latest,
          'count': assessments.length,
        };
      }));

      final avgScores = <String, double>{};
      final latestAssessments = <String, Assessment?>{};
      final studentNames = <String, String>{};
      int totalAssessments = 0;

      for (final r in results) {
        final id = r['id'] as String;
        avgScores[id] = r['avg'] as double;
        latestAssessments[id] = r['latest'] as Assessment?;
        studentNames[id] = r['name'] as String;
        totalAssessments += r['count'] as int;
      }

      final scored = avgScores.values.where((v) => v > 0).toList();
      final classAvg = scored.isEmpty
          ? 0.0
          : scored.reduce((a, b) => a + b) / scored.length;

      // Check which students are ready to promote
      final progressionService = ProgressionService();
      final promotionReady = <String>{};
      for (final s in students) {
        final latest = latestAssessments[s.id];
        if (latest != null) {
          final status =
          await progressionService.checkPromotion(s, latest);
          if (status == PromotionStatus.readyToPromote) {
            promotionReady.add(s.id);
          }
        }
      }

      if (!mounted) return;
      setState(() {
        _students = students;
        _recentAssessments = recentAssessments;
        _avgScores
          ..clear()
          ..addAll(avgScores);
        _latestAssessments
          ..clear()
          ..addAll(latestAssessments);
        _studentNames
          ..clear()
          ..addAll(studentNames);
        _promotionReady
          ..clear()
          ..addAll(promotionReady);
        _classAvg = classAvg;
        _totalAssessments = totalAssessments;
        _isLoading = false;
      });
    } catch (e) {
      if (!mounted) return;
      setState(() => _isLoading = false);
    }
  }

  Color _scoreColor(double score) => AppTheme.scoreColor(score);

  String _formatDate(DateTime date) =>
      '${date.day}/${date.month}/${date.year}';

  List<Student> get _needingAttention => _students
      .where((s) =>
  (_avgScores[s.id] ?? 0) > 0 && (_avgScores[s.id] ?? 0) < 50)
      .toList();

  List<Student> get _untested =>
      _students.where((s) => _latestAssessments[s.id] == null).toList();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppTheme.surface,
      body: Column(
        children: [
          const AppHeader(),
          // ── Classroom Filter ──────────────────────────────────────────
          if (_classrooms.length > 1)
            Padding(
              padding: const EdgeInsets.fromLTRB(16, 12, 16, 0),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    _ClassroomChip(
                      label: 'All Classes',
                      selected: _selectedClassroomId == null,
                      onTap: () {
                        setState(() {
                          _selectedClassroomId = null;
                          _selectedClassroomName = 'All Classes';
                        });
                        _loadDashboard();
                      },
                    ),
                    ..._classrooms.map((c) => _ClassroomChip(
                      label: c['name'],
                      selected: _selectedClassroomId == c['id'],
                      onTap: () {
                        setState(() {
                          _selectedClassroomId = c['id'];
                          _selectedClassroomName = c['name'];
                        });
                        _loadDashboard();
                      },
                    )),
                  ],
                ),
              ),
            ),
          Expanded(
            child: _isLoading
                ? const Center(child: CircularProgressIndicator())
                : _students.isEmpty
                ? Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    padding: const EdgeInsets.all(24),
                    decoration: BoxDecoration(
                      color: AppTheme.primary
                          .withValues(alpha: 0.08),
                      shape: BoxShape.circle,
                    ),
                    child: const Icon(
                        Icons.people_outline_rounded,
                        size: 48,
                        color: AppTheme.primary),
                  ),
                  const SizedBox(height: 20),
                  const Text('No students yet',
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w700,
                          color: AppTheme.textPrimary)),
                  const SizedBox(height: 8),
                  const Text(
                      'Add students from the Classrooms tab',
                      style: TextStyle(
                          color: AppTheme.textSecondary)),
                ],
              ),
            )
                : RefreshIndicator(
              onRefresh: _loadDashboard,
              child: SingleChildScrollView(
                physics: const AlwaysScrollableScrollPhysics(),
                padding:
                const EdgeInsets.fromLTRB(16, 16, 16, 24),
                child: Column(
                  crossAxisAlignment:
                  CrossAxisAlignment.stretch,
                  children: [
                    // ── Classroom label ─────────────────
                    Row(
                      children: [
                        const Icon(Icons.filter_list_rounded,
                            size: 16,
                            color: AppTheme.textSecondary),
                        const SizedBox(width: 6),
                        Text(
                          _selectedClassroomId == null
                              ? 'Showing all classes'
                              : 'Showing: $_selectedClassroomName',
                          style: const TextStyle(
                              fontSize: 12,
                              color: AppTheme.textSecondary),
                        ),
                      ],
                    ),
                    const SizedBox(height: 12),

                    // ── Overview Stats ──────────────────
                    Row(
                      children: [
                        Expanded(
                          child: StatCard(
                            label: 'Students',
                            value: '${_students.length}',
                            icon: Icons.group_rounded,
                            color: AppTheme.primary,
                          ),
                        ),
                        const SizedBox(width: 10),
                        Expanded(
                          child: StatCard(
                            label: 'Assessments',
                            value: '$_totalAssessments',
                            icon: Icons
                                .assignment_turned_in_rounded,
                            color: AppTheme.beginnerColor,
                          ),
                        ),
                        const SizedBox(width: 10),
                        Expanded(
                          child: StatCard(
                            label: 'Class Avg',
                            value: _classAvg == 0
                                ? '—'
                                : '${_classAvg.toStringAsFixed(0)}%',
                            icon: Icons.bar_chart_rounded,
                            color: _classAvg == 0
                                ? AppTheme.textSecondary
                                : _scoreColor(_classAvg),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 20),

                    // ── Ready to Promote ────────────────
                    if (_promotionReady.isNotEmpty) ...[
                      Container(
                        padding: const EdgeInsets.all(14),
                        decoration: BoxDecoration(
                          gradient: LinearGradient(colors: [
                            const Color(0xFFFFD700)
                                .withValues(alpha: 0.12),
                            const Color(0xFFFFA500)
                                .withValues(alpha: 0.06),
                          ]),
                          borderRadius: BorderRadius.circular(14),
                          border: Border.all(
                              color: const Color(0xFFFFD700)
                                  .withValues(alpha: 0.4)),
                        ),
                        child: Column(
                          crossAxisAlignment:
                          CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                const Text('🏆',
                                    style:
                                    TextStyle(fontSize: 16)),
                                const SizedBox(width: 8),
                                Text(
                                  '${_promotionReady.length} student${_promotionReady.length > 1 ? 's' : ''} ready to move up',
                                  style: const TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w800,
                                      color: AppTheme.textPrimary),
                                ),
                              ],
                            ),
                            const SizedBox(height: 10),
                            ..._students
                                .where((s) => _promotionReady
                                .contains(s.id))
                                .map((s) => _DashStudentTile(
                              student: s,
                              trailing:
                              '${(_avgScores[s.id] ?? 0).toStringAsFixed(0)}%',
                              trailingColor:
                              AppTheme.success,
                              promotionReady: true,
                              onTap: () async {
                                await Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (_) =>
                                        StudentProfileScreen(
                                            student: s),
                                  ),
                                );
                                _loadDashboard();
                              },
                            )),
                          ],
                        ),
                      ),
                      const SizedBox(height: 20),
                    ],

                    // ── Needs Attention ─────────────────
                    if (_needingAttention.isNotEmpty) ...[
                      SectionHeader(
                        icon: Icons.warning_amber_rounded,
                        label: 'Needs Attention',
                        color: AppTheme.danger,
                      ),
                      const SizedBox(height: 10),
                      ..._needingAttention
                          .map((s) => _DashStudentTile(
                        student: s,
                        trailing:
                        '${(_avgScores[s.id] ?? 0).toStringAsFixed(0)}%',
                        trailingColor: AppTheme.danger,
                        promotionReady: _promotionReady.contains(s.id),
                        onTap: () async {
                          await Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (_) =>
                                  StudentProfileScreen(
                                      student: s),
                            ),
                          );
                          _loadDashboard();
                        },
                      )),
                      const SizedBox(height: 20),
                    ],

                    // ── Not Yet Tested ──────────────────
                    if (_untested.isNotEmpty) ...[
                      SectionHeader(
                        icon: Icons.help_outline_rounded,
                        label: 'Not Yet Tested',
                        color: AppTheme.textSecondary,
                      ),
                      const SizedBox(height: 10),
                      ..._untested.map((s) => _DashStudentTile(
                        student: s,
                        trailing: 'No data',
                        trailingColor: AppTheme.textSecondary,
                        onTap: () async {
                          await Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (_) =>
                                  StudentProfileScreen(
                                      student: s),
                            ),
                          );
                          _loadDashboard();
                        },
                      )),
                      const SizedBox(height: 20),
                    ],

                    // ── Recent Assessments ──────────────
                    if (_recentAssessments.isNotEmpty) ...[
                      SectionHeader(
                        icon: Icons.history_rounded,
                        label: 'Recent Assessments',
                        color: AppTheme.primary,
                      ),
                      const SizedBox(height: 10),
                      ..._recentAssessments
                          .map((a) => _RecentTile(
                        assessment: a,
                        studentName:
                        _studentNames[a.studentId] ??
                            'Unknown',
                        scoreColor:
                        _scoreColor(a.score),
                        formatDate: _formatDate,
                      )),
                      const SizedBox(height: 20),
                    ],

                    // ── All Students ────────────────────
                    SectionHeader(
                      icon: Icons.people_rounded,
                      label: 'All Students',
                      color: AppTheme.primary,
                    ),
                    const SizedBox(height: 10),
                    ..._students.map((s) {
                      final avg = _avgScores[s.id] ?? 0;
                      final latest =
                      _latestAssessments[s.id];
                      return _DashStudentTile(
                        student: s,
                        subtitle: latest == null
                            ? 'No assessments'
                            : 'Last: ${_formatDate(latest.date)}',
                        trailing: avg == 0
                            ? '—'
                            : '${avg.toStringAsFixed(0)}%',
                        trailingColor: avg == 0
                            ? AppTheme.textSecondary
                            : _scoreColor(avg),
                        onTap: () async {
                          await Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (_) =>
                                  StudentProfileScreen(
                                      student: s),
                            ),
                          );
                          _loadDashboard();
                        },
                      );
                    }),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

// ── Classroom filter chip ─────────────────────────────────────────────────────
class _ClassroomChip extends StatelessWidget {
  final String label;
  final bool selected;
  final VoidCallback onTap;

  const _ClassroomChip(
      {required this.label, required this.selected, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 8),
      child: GestureDetector(
        onTap: onTap,
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 200),
          padding:
          const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          decoration: BoxDecoration(
            color: selected ? AppTheme.primary : Colors.white,
            borderRadius: BorderRadius.circular(20),
            border: Border.all(
              color: selected
                  ? AppTheme.primary
                  : Colors.grey.shade200,
            ),
            boxShadow: selected
                ? [
              BoxShadow(
                color: AppTheme.primary.withValues(alpha: 0.25),
                blurRadius: 8,
                offset: const Offset(0, 3),
              )
            ]
                : [],
          ),
          child: Text(
            label,
            style: TextStyle(
              fontSize: 13,
              fontWeight: FontWeight.w600,
              color: selected ? Colors.white : AppTheme.textSecondary,
            ),
          ),
        ),
      ),
    );
  }
}

// ── Student tile ──────────────────────────────────────────────────────────────
class _DashStudentTile extends StatelessWidget {
  final Student student;
  final String trailing;
  final Color trailingColor;
  final String? subtitle;
  final VoidCallback onTap;
  final bool promotionReady;

  const _DashStudentTile({
    required this.student,
    required this.trailing,
    required this.trailingColor,
    required this.onTap,
    this.subtitle,
    this.promotionReady = false,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8),
      child: Material(
        color: Colors.white,
        borderRadius: BorderRadius.circular(14),
        child: InkWell(
          onTap: onTap,
          borderRadius: BorderRadius.circular(14),
          child: Container(
            padding: const EdgeInsets.all(14),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(14),
              border: Border.all(color: Colors.grey.shade100),
            ),
            child: Row(
              children: [
                NameAvatar(name: student.name, radius: 22, fontSize: 16),
                const SizedBox(width: 12),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(student.name,
                          style: const TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                              color: AppTheme.textPrimary)),
                      const SizedBox(height: 3),
                      Text(
                        subtitle ??
                            '${student.level[0].toUpperCase()}${student.level.substring(1)} • Age ${student.age}',
                        style: const TextStyle(
                            fontSize: 12,
                            color: AppTheme.textSecondary),
                      ),
                    ],
                  ),
                ),
                Text(
                  trailing,
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 15,
                    color: trailingColor,
                  ),
                ),
                if (promotionReady) ...[
                  const SizedBox(width: 6),
                  Container(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 8, vertical: 4),
                    decoration: BoxDecoration(
                      color: const Color(0xFFFFD700).withValues(alpha: 0.15),
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(
                          color:
                          const Color(0xFFFFD700).withValues(alpha: 0.5)),
                    ),
                    child: const Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text('🏆', style: TextStyle(fontSize: 12)),
                        SizedBox(width: 4),
                        Text('Ready',
                            style: TextStyle(
                                fontSize: 11,
                                fontWeight: FontWeight.w700,
                                color: Color(0xFF8B6914))),
                      ],
                    ),
                  ),
                ],
              ],
            ),
          ),
        ),
      ),
    );
  }
}

// ── Recent assessment tile ────────────────────────────────────────────────────
class _RecentTile extends StatelessWidget {
  final Assessment assessment;
  final String studentName;
  final Color scoreColor;
  final String Function(DateTime) formatDate;

  const _RecentTile({
    required this.assessment,
    required this.studentName,
    required this.scoreColor,
    required this.formatDate,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8),
      child: Container(
        padding: const EdgeInsets.all(14),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(14),
          border: Border.all(color: Colors.grey.shade100),
        ),
        child: Row(
          children: [
            Container(
              width: 44,
              height: 44,
              decoration: BoxDecoration(
                color: scoreColor.withValues(alpha: 0.1),
                borderRadius: BorderRadius.circular(12),
              ),
              child: Center(
                child: Text(
                  '${assessment.score.toStringAsFixed(0)}%',
                  style: TextStyle(
                      fontSize: 11,
                      fontWeight: FontWeight.w700,
                      color: scoreColor),
                ),
              ),
            ),
            const SizedBox(width: 12),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(studentName,
                      style: const TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                          color: AppTheme.textPrimary)),
                  const SizedBox(height: 3),
                  Text(
                    '${assessment.level[0].toUpperCase()}${assessment.level.substring(1)} • ${formatDate(assessment.date)}',
                    style: const TextStyle(
                        fontSize: 12, color: AppTheme.textSecondary),
                  ),
                ],
              ),
            ),
            assessment.weakSkillTags.isNotEmpty
                ? Container(
              padding: const EdgeInsets.all(4),
              decoration: BoxDecoration(
                color: AppTheme.warning.withValues(alpha: 0.1),
                borderRadius: BorderRadius.circular(6),
              ),
              child: const Icon(Icons.warning_amber_rounded,
                  color: AppTheme.warning, size: 16),
            )
                : Container(
              padding: const EdgeInsets.all(4),
              decoration: BoxDecoration(
                color: AppTheme.success.withValues(alpha: 0.1),
                borderRadius: BorderRadius.circular(6),
              ),
              child: const Icon(Icons.check_circle_rounded,
                  color: AppTheme.success, size: 16),
            ),
          ],
        ),
      ),
    );
  }
}
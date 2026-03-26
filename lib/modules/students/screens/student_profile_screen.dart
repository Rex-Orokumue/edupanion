import 'package:flutter/material.dart';
import '../../../core/models/student.dart';
import '../../../core/models/assessment.dart';
import '../../../core/models/teaching_tip.dart';
import '../../../core/services/assessment_service.dart';
import '../../../core/services/report_service.dart';
import '../../../core/services/progression_service.dart';
import '../../../core/services/teaching_tips_service.dart';
import '../../../core/theme/app_theme.dart';
import '../../assessment/screens/assessment_screen.dart';
import '../../ai/screens/ai_insights_screen.dart';
import '../../shared/teaching_tip_card.dart';
import '../../../core/models/term.dart';
import '../../../core/services/term_service.dart';
import '../../terms/screens/term_progress_screen.dart';

class StudentProfileScreen extends StatefulWidget {
  final Student student;

  const StudentProfileScreen({super.key, required this.student});

  @override
  State<StudentProfileScreen> createState() => _StudentProfileScreenState();
}

class _StudentProfileScreenState extends State<StudentProfileScreen>
    with RouteAware {
  // RouteAware lets us reload whenever this screen comes back into focus
  // (e.g. after returning from assessment or AI insights screen)
  final _assessmentService = AssessmentService();
  final _reportService = ReportService();
  final _progressionService = ProgressionService();
  final _tipsService = TeachingTipsService();
  final _termService = TermService();
  Term? _activeTerm;

  List<Assessment> _assessments = [];
  List<TeachingTip> _teachingTips = [];
  PromotionStatus? _promotionStatus;
  ProgressionProgress? _progressionProgress;
  bool _isLoading = true;
  bool _generatingReport = false;

  @override
  void initState() {
    super.initState();
    _loadAssessments();
  }

  // Called when a route above this one is popped (e.g. coming back from assessment)
  @override
  void didPopNext() => _loadAssessments();

  Future<void> _loadAssessments() async {
    if (!mounted) return;
    setState(() => _isLoading = true);
    try {
      final assessments =
      await _assessmentService.getAssessmentsByStudent(widget.student.id);

      PromotionStatus? status;
      ProgressionProgress? progress;
      if (assessments.isNotEmpty) {
        status = await _progressionService.checkPromotion(
            widget.student, assessments.first);
        progress = await _progressionService.getProgress(widget.student);
      }

      final allWeakTags =
      assessments.expand((a) => a.weakSkillTags).toSet().toList();
      final tips = _tipsService.getTipsForWeakTags(
        allWeakTags,
        maxTips: 3,
        sessionSeed: assessments.length,
      );

      final activeTerm = await _termService.getActiveTerm();

      if (!mounted) return;
      setState(() {
        _assessments = assessments;
        _promotionStatus = status;
        _progressionProgress = progress;
        _teachingTips = tips;
        _activeTerm = activeTerm;
        _isLoading = false;
      });
    } catch (e) {
      if (!mounted) return;
      setState(() => _isLoading = false);
    }
  }

  Future<void> _confirmPromotion() async {
    final nextLevel = _progressionService.nextLevel(widget.student.level);
    final confirm = await showDialog<bool>(
      context: context,
      builder: (_) => AlertDialog(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        title: const Text('Confirm Promotion'),
        content: Text(
          'Move ${widget.student.name} from '
              '${ProgressionService.phaseLabel(widget.student.level)} to '
              '${ProgressionService.phaseLabel(nextLevel)}?\n\n'
              'Future assessments will use ${ProgressionService.phaseLabel(nextLevel)} questions.',
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context, false),
            child: const Text('Not yet'),
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
                backgroundColor: AppTheme.primary,
                foregroundColor: Colors.white),
            onPressed: () => Navigator.pop(context, true),
            child: const Text('Yes, promote'),
          ),
        ],
      ),
    );
    if (confirm == true) {
      await _progressionService.promoteStudent(widget.student);
      if (!mounted) return;
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(
              '${widget.student.name} moved to ${ProgressionService.phaseLabel(nextLevel)}!'),
          backgroundColor: AppTheme.success,
        ),
      );
      Navigator.pop(context);
    }
  }

  Future<void> _downloadReport() async {
    setState(() => _generatingReport = true);
    try {
      await _reportService.generateStudentReport(
          student: widget.student, assessments: _assessments);
    } finally {
      setState(() => _generatingReport = false);
    }
  }

  String _formatDate(DateTime date) =>
      '${date.day}/${date.month}/${date.year}';

  String _capitalize(String s) =>
      s.isEmpty ? s : s[0].toUpperCase() + s.substring(1);

  @override
  Widget build(BuildContext context) {
    final double avgScore = _assessments.isEmpty
        ? 0
        : _assessments.map((a) => a.score).reduce((a, b) => a + b) /
        _assessments.length;

    final Set<String> weakTags =
    _assessments.expand((a) => a.weakSkillTags).toSet();

    return Scaffold(
      backgroundColor: AppTheme.surface,
      body: _isLoading
          ? const Center(child: CircularProgressIndicator())
          : CustomScrollView(
        slivers: [
          // ── Hero App Bar ──────────────────────────────────────────
          SliverAppBar(
            expandedHeight: 200,
            pinned: true,
            backgroundColor: AppTheme.primaryDark,
            leading: IconButton(
              icon: const Icon(Icons.arrow_back_ios_new_rounded,
                  color: Colors.white, size: 20),
              onPressed: () => Navigator.pop(context),
            ),
            actions: [
              IconButton(
                icon: const Icon(Icons.auto_awesome_outlined,
                    color: Colors.white),
                tooltip: 'AI Insights',
                onPressed: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => AiInsightsScreen(
                      student: widget.student,
                      assessments: _assessments,
                    ),
                  ),
                ),
              ),
              IconButton(
                icon: const Icon(Icons.family_restroom_rounded,
                    color: Colors.white),
                tooltip: 'Parent Report',
                onPressed: _generatingReport
                    ? null
                    : () async {
                  setState(() => _generatingReport = true);
                  try {
                    await _reportService.generateParentReport(
                        student: widget.student,
                        assessments: _assessments);
                  } finally {
                    setState(() => _generatingReport = false);
                  }
                },
              ),
              IconButton(
                icon: _generatingReport
                    ? const SizedBox(
                  width: 20,
                  height: 20,
                  child: CircularProgressIndicator(
                      strokeWidth: 2, color: Colors.white),
                )
                    : const Icon(Icons.picture_as_pdf_outlined,
                    color: Colors.white),
                tooltip: 'Teacher Report',
                onPressed: _generatingReport ? null : _downloadReport,
              ),
            ],
            flexibleSpace: FlexibleSpaceBar(
              background: Container(
                decoration:
                const BoxDecoration(gradient: AppTheme.primaryGradient),
                child: SafeArea(
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(20, 56, 20, 20),
                    child: Row(
                      children: [
                        Container(
                          width: 80,
                          height: 80,
                          decoration: BoxDecoration(
                            color: Colors.white.withValues(alpha: 0.2),
                            borderRadius: BorderRadius.circular(24),
                            border: Border.all(
                                color:
                                Colors.white.withValues(alpha: 0.4),
                                width: 2),
                          ),
                          child: Center(
                            child: Text(
                              widget.student.name[0].toUpperCase(),
                              style: const TextStyle(
                                  fontSize: 36,
                                  fontWeight: FontWeight.w800,
                                  color: Colors.white),
                            ),
                          ),
                        ),
                        const SizedBox(width: 16),
                        Expanded(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                widget.student.name,
                                style: const TextStyle(
                                    fontSize: 22,
                                    fontWeight: FontWeight.w800,
                                    color: Colors.white,
                                    letterSpacing: -0.3),
                              ),
                              const SizedBox(height: 6),
                              Wrap(
                                spacing: 6,
                                runSpacing: 6,
                                children: [
                                  _HeroPill(
                                      label: 'Age ${widget.student.age}',
                                      icon: Icons.cake_outlined),
                                  _HeroPill(
                                    label: _capitalize(widget.student.level),
                                    icon: Icons.signal_cellular_alt_rounded,
                                  ),
                                  if ((widget.student.gender ?? 'other') != 'other')
                                    _HeroPill(
                                      label: (widget.student.gender ?? 'other') == 'male'
                                          ? '👦 Male'
                                          : '👧 Female',
                                      icon: Icons.person_outline_rounded,
                                    ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),

          SliverPadding(
            padding: const EdgeInsets.all(16),
            sliver: SliverList(
              delegate: SliverChildListDelegate([

                // ── Stats Row ───────────────────────────────────────
                Row(
                  children: [
                    Expanded(
                      child: StatCard(
                        label: 'Assessments',
                        value: '${_assessments.length}',
                        icon: Icons.assignment_rounded,
                        color: AppTheme.primary,
                      ),
                    ),
                    const SizedBox(width: 10),
                    Expanded(
                      child: StatCard(
                        label: 'Avg Score',
                        value: _assessments.isEmpty
                            ? '—'
                            : '${avgScore.toStringAsFixed(0)}%',
                        icon: Icons.bar_chart_rounded,
                        color: _assessments.isEmpty
                            ? AppTheme.textSecondary
                            : AppTheme.scoreColor(avgScore),
                      ),
                    ),
                    const SizedBox(width: 10),
                    Expanded(
                      child: StatCard(
                        label: 'Status',
                        value: _assessments.isEmpty
                            ? '—'
                            : avgScore >= 80
                            ? 'Strong'
                            : avgScore >= 50
                            ? 'Growing'
                            : 'Support',
                        icon: Icons.flag_rounded,
                        color: _assessments.isEmpty
                            ? AppTheme.textSecondary
                            : AppTheme.scoreColor(avgScore),
                      ),
                    ),
                  ],
                ),

                const SizedBox(height: 16),

                // ── Student info card ───────────────────────────────
                if (widget.student.guardianName != null ||
                    widget.student.guardianPhone != null ||
                    widget.student.notes != null ||
                    widget.student.dateOfBirth != null ||
                    widget.student.gender != 'other') ...[
                  Container(
                    padding: const EdgeInsets.all(14),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(14),
                      border:
                      Border.all(color: Colors.grey.shade100),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text('Student Info',
                            style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w700,
                                color: AppTheme.textSecondary,
                                letterSpacing: 0.3)),
                        const SizedBox(height: 10),
                        if (widget.student.dateOfBirth != null)
                          _InfoRow(
                            icon: Icons.calendar_today_outlined,
                            label: 'Date of Birth',
                            value: _formatDate(
                                widget.student.dateOfBirth!),
                          ),
                        if (widget.student.gender != 'other')
                          _InfoRow(
                            icon: Icons.person_outline_rounded,
                            label: 'Gender',
                            value: _capitalize(widget.student.gender ?? 'other'),
                          ),
                        if (widget.student.guardianName != null)
                          _InfoRow(
                            icon: Icons.family_restroom_rounded,
                            label: 'Guardian',
                            value: widget.student.guardianName!,
                          ),
                        if (widget.student.guardianPhone != null)
                          _InfoRow(
                            icon: Icons.phone_outlined,
                            label: 'Phone',
                            value: widget.student.guardianPhone!,
                          ),
                        if (widget.student.notes != null)
                          _InfoRow(
                            icon: Icons.notes_rounded,
                            label: 'Notes',
                            value: widget.student.notes!,
                          ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 4),
                ],

                // ── Phase info ──────────────────────────────────────
                Container(
                  padding: const EdgeInsets.all(14),
                  decoration: BoxDecoration(
                    color: AppTheme.primary.withValues(alpha: 0.05),
                    borderRadius: BorderRadius.circular(14),
                    border: Border.all(
                        color: AppTheme.primary.withValues(alpha: 0.15)),
                  ),
                  child: Row(
                    children: [
                      Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 10, vertical: 6),
                        decoration: BoxDecoration(
                          color: AppTheme.primary.withValues(alpha: 0.1),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Text(
                          ProgressionService.phaseLabel(
                              widget.student.level),
                          style: const TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w700,
                              color: AppTheme.primary),
                        ),
                      ),
                      const SizedBox(width: 12),
                      Expanded(
                        child: Text(
                          ProgressionService.levelDescription(
                              widget.student.level),
                          style: const TextStyle(
                              fontSize: 12,
                              color: AppTheme.textSecondary),
                        ),
                      ),
                    ],
                  ),
                ),

                // ── Progression progress ────────────────────────────
                if (_progressionProgress != null) ...[
                  const SizedBox(height: 12),
                  _ProgressionBar(progress: _progressionProgress!),
                ],

                // ── Promotion banner ────────────────────────────────
                if (_promotionStatus == PromotionStatus.readyToPromote) ...[
                  const SizedBox(height: 12),
                  Container(
                    padding: const EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      gradient: LinearGradient(colors: [
                        const Color(0xFFFFD700).withValues(alpha: 0.15),
                        const Color(0xFFFFA500).withValues(alpha: 0.08),
                      ]),
                      borderRadius: BorderRadius.circular(16),
                      border: Border.all(
                          color: const Color(0xFFFFD700)
                              .withValues(alpha: 0.5)),
                    ),
                    child: Row(
                      children: [
                        const Text('🏆',
                            style: TextStyle(fontSize: 26)),
                        const SizedBox(width: 12),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                '${widget.student.name} is ready to move up!',
                                style: const TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w800,
                                    color: AppTheme.textPrimary),
                              ),
                              const SizedBox(height: 4),
                              Text(
                                'Scored ≥75% — ready for ${ProgressionService.phaseLabel(_progressionService.nextLevel(widget.student.level))}',
                                style: const TextStyle(
                                    fontSize: 12,
                                    color: AppTheme.textSecondary),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(width: 8),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: const Color(0xFFFFD700),
                            foregroundColor: Colors.black87,
                            padding: const EdgeInsets.symmetric(
                                horizontal: 12, vertical: 8),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10)),
                            elevation: 0,
                          ),
                          onPressed: _confirmPromotion,
                          child: const Text('Promote',
                              style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w700)),
                        ),
                      ],
                    ),
                  ),
                ],

                if (_promotionStatus == PromotionStatus.needsMorePractice) ...[
                  const SizedBox(height: 12),
                  Container(
                    padding: const EdgeInsets.all(14),
                    decoration: BoxDecoration(
                      color: AppTheme.primary.withValues(alpha: 0.05),
                      borderRadius: BorderRadius.circular(14),
                      border: Border.all(
                          color:
                          AppTheme.primary.withValues(alpha: 0.15)),
                    ),
                    child: Row(
                      children: [
                        const Text('📚',
                            style: TextStyle(fontSize: 20)),
                        const SizedBox(width: 10),
                        Expanded(
                          child: Text(
                            '${_assessments.length}/3 assessments done. '
                                'Complete ${3 - _assessments.length} more to unlock promotion.',
                            style: const TextStyle(
                                fontSize: 12,
                                color: AppTheme.textSecondary),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],

                const SizedBox(height: 16),

                // ── Weak areas ──────────────────────────────────────
                if (weakTags.isNotEmpty) ...[
                  Container(
                    padding: const EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      color: AppTheme.warning.withValues(alpha: 0.06),
                      borderRadius: BorderRadius.circular(16),
                      border: Border.all(
                          color:
                          AppTheme.warning.withValues(alpha: 0.2)),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Container(
                              padding: const EdgeInsets.all(6),
                              decoration: BoxDecoration(
                                color: AppTheme.warning
                                    .withValues(alpha: 0.1),
                                borderRadius: BorderRadius.circular(8),
                              ),
                              child: const Icon(
                                  Icons.warning_amber_rounded,
                                  color: AppTheme.warning, size: 16),
                            ),
                            const SizedBox(width: 8),
                            const Text('Weak Areas',
                                style: TextStyle(
                                    fontWeight: FontWeight.w700,
                                    fontSize: 14,
                                    color: AppTheme.textPrimary)),
                          ],
                        ),
                        const SizedBox(height: 12),
                        Wrap(
                          spacing: 8,
                          runSpacing: 6,
                          children: weakTags
                              .map((tag) => Container(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 12, vertical: 6),
                            decoration: BoxDecoration(
                              color: AppTheme.warning
                                  .withValues(alpha: 0.1),
                              borderRadius:
                              BorderRadius.circular(20),
                              border: Border.all(
                                  color: AppTheme.warning
                                      .withValues(alpha: 0.3)),
                            ),
                            child: Text(
                              tag.replaceAll('_', ' '),
                              style: const TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w600,
                                  color: AppTheme.warning),
                            ),
                          ))
                              .toList(),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 16),
                ],

                // ── Teaching Tips ───────────────────────────────────
                if (_teachingTips.isNotEmpty) ...[
                  Row(
                    children: [
                      Container(
                        padding: const EdgeInsets.all(6),
                        decoration: BoxDecoration(
                          color: AppTheme.primary.withValues(alpha: 0.1),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: const Icon(
                            Icons.tips_and_updates_rounded,
                            color: AppTheme.primary, size: 16),
                      ),
                      const SizedBox(width: 8),
                      const Text('Teaching Tips',
                          style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w800,
                              color: AppTheme.textPrimary)),
                    ],
                  ),
                  const SizedBox(height: 4),
                  const Text(
                    'Based on weak areas across all assessments',
                    style: TextStyle(
                        fontSize: 12, color: AppTheme.textSecondary),
                  ),
                  const SizedBox(height: 12),
                  ..._teachingTips.asMap().entries.map(
                        (e) => TeachingTipCard(
                        tip: e.value, index: e.key),
                  ),
                  const SizedBox(height: 8),
                ],

                // ── Term Progress ────────────────────────────────────
                if (_activeTerm != null) ...[
                  OutlinedButton.icon(
                    icon: const Icon(Icons.calendar_view_week_rounded),
                    label: Text('${_activeTerm!.termLabel} Progress'),
                    style: OutlinedButton.styleFrom(
                      foregroundColor: AppTheme.primary,
                      side: const BorderSide(color: AppTheme.primary),
                      padding: const EdgeInsets.symmetric(vertical: 14),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(14)),
                    ),
                    onPressed: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) => TermProgressScreen(
                          student: widget.student,
                          term: _activeTerm!,
                        ),
                      ),
                    ).then((_) => _loadAssessments()),
                  ),
                  const SizedBox(height: 10),
                ],

                // ── Start Assessment ────────────────────────────────
                Container(
                  decoration: BoxDecoration(
                    gradient: const LinearGradient(
                      colors: [AppTheme.primaryDark, AppTheme.primary],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                    ),
                    borderRadius: BorderRadius.circular(14),
                    boxShadow: [
                      BoxShadow(
                        color: AppTheme.primary.withValues(alpha: 0.3),
                        blurRadius: 12,
                        offset: const Offset(0, 4),
                      ),
                    ],
                  ),
                  child: ElevatedButton.icon(
                    icon: const Icon(Icons.play_arrow_rounded,
                        color: Colors.white),
                    label: const Text('Start New Assessment',
                        style: TextStyle(color: Colors.white)),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.transparent,
                      shadowColor: Colors.transparent,
                      padding: const EdgeInsets.symmetric(vertical: 14),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(14)),
                    ),
                    onPressed: () async {
                      final term = _activeTerm;
                      final week = term?.currentWeek ?? 1;
                      await Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (_) => AssessmentScreen(
                            studentId: widget.student.id,
                            level: widget.student.level,
                            student: widget.student,
                            termId: term?.id,
                            weekNumber: week,
                            termNumber: term?.termNumber ?? 1,
                            assessmentType: 'weekly',
                            weekTitle: 'Week $week',
                          ),
                        ),
                      );
                      _loadAssessments();
                    },
                  ),
                ),

                const SizedBox(height: 24),

                // ── Assessment History ──────────────────────────────
                SectionHeader(
                  icon: Icons.history_rounded,
                  label: 'Assessment History',
                  color: AppTheme.primary,
                ),
                const SizedBox(height: 12),

                if (_assessments.isEmpty)
                  Center(
                    child: Padding(
                      padding: const EdgeInsets.all(32),
                      child: Column(
                        children: [
                          Icon(Icons.assignment_outlined,
                              size: 40,
                              color: AppTheme.textSecondary
                                  .withValues(alpha: 0.4)),
                          const SizedBox(height: 12),
                          const Text('No assessments yet',
                              style: TextStyle(
                                  color: AppTheme.textSecondary,
                                  fontSize: 14)),
                        ],
                      ),
                    ),
                  )
                else
                  ...List.generate(_assessments.length, (index) {
                    final a = _assessments[index];
                    final color = AppTheme.scoreColor(a.score);
                    return Padding(
                      padding: const EdgeInsets.only(bottom: 10),
                      child: Container(
                        padding: const EdgeInsets.all(16),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(14),
                          border:
                          Border.all(color: Colors.grey.shade100),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment:
                              MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    LevelBadge(level: a.level),
                                    const SizedBox(width: 8),
                                    Text(
                                      _formatDate(a.date),
                                      style: const TextStyle(
                                          fontSize: 12,
                                          color:
                                          AppTheme.textSecondary),
                                    ),
                                  ],
                                ),
                                ScoreBadge(score: a.score),
                              ],
                            ),
                            const SizedBox(height: 10),
                            Row(
                              children: [
                                const Icon(
                                    Icons.check_circle_outline_rounded,
                                    size: 14,
                                    color: AppTheme.textSecondary),
                                const SizedBox(width: 4),
                                Text(
                                  '${a.correctAnswers}/${a.totalQuestions} correct',
                                  style: const TextStyle(
                                      fontSize: 13,
                                      color: AppTheme.textSecondary),
                                ),
                              ],
                            ),
                            if (a.weakSkillTags.isNotEmpty) ...[
                              const SizedBox(height: 8),
                              Wrap(
                                spacing: 6,
                                runSpacing: 4,
                                children: a.weakSkillTags
                                    .map((t) => Container(
                                  padding: const EdgeInsets
                                      .symmetric(
                                      horizontal: 8,
                                      vertical: 3),
                                  decoration: BoxDecoration(
                                    color: color.withValues(
                                        alpha: 0.08),
                                    borderRadius:
                                    BorderRadius.circular(
                                        6),
                                  ),
                                  child: Text(
                                    t.replaceAll('_', ' '),
                                    style: TextStyle(
                                        fontSize: 11,
                                        color: color,
                                        fontWeight:
                                        FontWeight.w600),
                                  ),
                                ))
                                    .toList(),
                              ),
                            ],
                          ],
                        ),
                      ),
                    );
                  }),

                const SizedBox(height: 24),
              ]),
            ),
          ),
        ],
      ),
    );
  }
}

// ── Hero pill ─────────────────────────────────────────────────────────────────
class _HeroPill extends StatelessWidget {
  final String label;
  final IconData icon;

  const _HeroPill({required this.label, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      decoration: BoxDecoration(
        color: Colors.white.withValues(alpha: 0.2),
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: Colors.white.withValues(alpha: 0.3)),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(icon, color: Colors.white, size: 12),
          const SizedBox(width: 4),
          Text(label,
              style: const TextStyle(
                  color: Colors.white,
                  fontSize: 12,
                  fontWeight: FontWeight.w600)),
        ],
      ),
    );
  }
}

// ── Info row ──────────────────────────────────────────────────────────────────
class _InfoRow extends StatelessWidget {
  final IconData icon;
  final String label;
  final String value;

  const _InfoRow({
    required this.icon,
    required this.label,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(icon, size: 16, color: AppTheme.textSecondary),
          const SizedBox(width: 8),
          SizedBox(
            width: 70,
            child: Text(
              label,
              style: const TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w600,
                  color: AppTheme.textSecondary),
            ),
          ),
          Expanded(
            child: Text(
              value,
              style: const TextStyle(
                  fontSize: 13, color: AppTheme.textPrimary),
            ),
          ),
        ],
      ),
    );
  }
}
class _ProgressionBar extends StatelessWidget {
  final ProgressionProgress progress;

  const _ProgressionBar({required this.progress});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(14),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(14),
        border: Border.all(color: Colors.grey.shade100),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text('Progress to next level',
                  style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w600,
                      color: AppTheme.textSecondary)),
              Text(
                '${progress.completed}/3 rounds ≥75%',
                style: const TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w700,
                    color: AppTheme.primary),
              ),
            ],
          ),
          const SizedBox(height: 10),
          Row(
            children: List.generate(3, (i) {
              final filled = i < progress.completed;
              return Expanded(
                child: Container(
                  margin: EdgeInsets.only(right: i < 2 ? 6 : 0),
                  height: 8,
                  decoration: BoxDecoration(
                    color: filled
                        ? AppTheme.primary
                        : Colors.grey.shade200,
                    borderRadius: BorderRadius.circular(4),
                  ),
                ),
              );
            }),
          ),
          if (progress.totalAttempts < 3) ...[
            const SizedBox(height: 8),
            Text(
              '${3 - progress.totalAttempts} more assessment(s) needed to unlock promotion',
              style: const TextStyle(
                  fontSize: 11, color: AppTheme.textSecondary),
            ),
          ],
        ],
      ),
    );
  }
}
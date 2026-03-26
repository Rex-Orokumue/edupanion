import 'package:flutter/material.dart';
import '../../../core/models/student.dart';
import '../../../core/models/assessment.dart';
import '../../../core/models/term.dart';
import '../../../core/models/weekly_plan.dart';
import '../../../core/services/assessment_service.dart';
import '../../../core/services/term_service.dart';
import '../../../core/services/teaching_tips_service.dart';
import '../../../core/theme/app_theme.dart';
import '../../assessment/screens/assessment_screen.dart';
import '../../shared/teaching_tip_card.dart';

class TermProgressScreen extends StatefulWidget {
  final Student student;
  final Term term;

  const TermProgressScreen({
    super.key,
    required this.student,
    required this.term,
  });

  @override
  State<TermProgressScreen> createState() => _TermProgressScreenState();
}

class _TermProgressScreenState extends State<TermProgressScreen>
    with SingleTickerProviderStateMixin {
  final _assessmentService = AssessmentService();
  final _termService = TermService();
  final _tipsService = TeachingTipsService();

  late TabController _tabController;

  List<Assessment> _termAssessments = [];
  List<WeeklyPlan> _weeklyPlans = [];
  Map<int, double> _weeklyScores = {};
  bool _isLoading = true;

  int get _currentWeek => widget.term.currentWeek ?? 1;
  int get _midtermWeek => widget.term.midtermWeek;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
    _load();
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  Future<void> _load() async {
    if (!mounted) return;
    setState(() => _isLoading = true);
    try {
      final assessments = await _assessmentService.getAssessmentsByTerm(
          widget.student.id, widget.term.id);
      final plans = await _termService.getWeeklyPlans(
          widget.term.id, widget.student.level);
      final weeklyScores = await _assessmentService.getWeeklyScores(
          widget.student.id, widget.term.id, widget.term.weekCount);

      if (!mounted) return;
      setState(() {
        _termAssessments = assessments;
        _weeklyPlans = plans;
        _weeklyScores = weeklyScores;
        _isLoading = false;
      });
    } catch (e) {
      if (!mounted) return;
      setState(() => _isLoading = false);
    }
  }

  double get _termAvg {
    if (_termAssessments.isEmpty) return 0;
    return _termAssessments.map((a) => a.score).reduce((a, b) => a + b) /
        _termAssessments.length;
  }

  Set<String> get _allWeakTags =>
      _termAssessments.expand((a) => a.weakSkillTags).toSet();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppTheme.surface,
      body: _isLoading
          ? const Center(child: CircularProgressIndicator())
          : NestedScrollView(
        headerSliverBuilder: (_, _) => [
          _buildSliverHeader(),
        ],
        body: TabBarView(
          controller: _tabController,
          children: [
            _WeeklyTab(
              student: widget.student,
              term: widget.term,
              weeklyPlans: _weeklyPlans,
              weeklyScores: _weeklyScores,
              termAssessments: _termAssessments,
              currentWeek: _currentWeek,
              onStartAssessment: _startWeeklyAssessment,
            ),
            _SummaryTab(
              student: widget.student,
              termAssessments: _termAssessments,
              weeklyScores: _weeklyScores,
              weekCount: widget.term.weekCount,
              midtermWeek: _midtermWeek,
              allWeakTags: _allWeakTags,
              tipsService: _tipsService,
              termAvg: _termAvg,
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildSliverHeader() {
    return SliverAppBar(
      expandedHeight: 140,
      pinned: true,
      backgroundColor: AppTheme.primaryDark,
      leading: IconButton(
        icon: const Icon(Icons.arrow_back_ios_new_rounded,
            color: Colors.white, size: 20),
        onPressed: () => Navigator.pop(context),
      ),
      flexibleSpace: FlexibleSpaceBar(
        background: Container(
          decoration: const BoxDecoration(gradient: AppTheme.primaryGradient),
          child: SafeArea(
            child: Padding(
              // bottom: 52 clears the TabBar height so pills don't overlap
              padding: const EdgeInsets.fromLTRB(20, 8, 20, 52),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.term.label,
                    style: const TextStyle(
                        color: Colors.white70, fontSize: 11),
                  ),
                  const SizedBox(height: 2),
                  Text(
                    widget.student.name,
                    style: const TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.w800),
                  ),
                  const SizedBox(height: 6),
                  Wrap(
                    spacing: 6,
                    runSpacing: 4,
                    children: [
                      _Pill(
                          label: 'Week $_currentWeek / ${widget.term.weekCount}',
                          icon: Icons.calendar_today_outlined),
                      _Pill(
                          label: '${_termAssessments.length} assessments',
                          icon: Icons.assignment_rounded),
                      if (_termAvg > 0)
                        _Pill(
                            label: '${_termAvg.toStringAsFixed(0)}% avg',
                            icon: Icons.bar_chart_rounded),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
      bottom: TabBar(
        controller: _tabController,
        indicatorColor: Colors.white,
        labelColor: Colors.white,
        unselectedLabelColor: Colors.white60,
        tabs: const [
          Tab(text: 'Weekly Plan'),
          Tab(text: 'Term Summary'),
        ],
      ),
    );
  }

  void _startWeeklyAssessment(WeeklyPlan plan) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (_) => AssessmentScreen(
          studentId: widget.student.id,
          level: widget.student.level,
          student: widget.student,
          termId: widget.term.id,
          weekNumber: plan.weekNumber,
          termNumber: widget.term.termNumber,
          assessmentType: 'weekly',
          weekTitle: plan.title,
          weekSkillTags: plan.skillTags, // align questions to this week's topics
        ),
      ),
    ).then((_) => _load());
  }
}

// ── Weekly Plan Tab ───────────────────────────────────────────────────────────
class _WeeklyTab extends StatelessWidget {
  final Student student;
  final Term term;
  final List<WeeklyPlan> weeklyPlans;
  final Map<int, double> weeklyScores;
  final List<Assessment> termAssessments;
  final int currentWeek;
  final void Function(WeeklyPlan) onStartAssessment;

  const _WeeklyTab({
    required this.student,
    required this.term,
    required this.weeklyPlans,
    required this.weeklyScores,
    required this.termAssessments,
    required this.currentWeek,
    required this.onStartAssessment,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: const EdgeInsets.all(16),
      itemCount: weeklyPlans.length,
      itemBuilder: (_, i) {
        final plan = weeklyPlans[i];
        final score = weeklyScores[plan.weekNumber];
        final isCurrentWeek = plan.weekNumber == currentWeek;
        final isPast = plan.weekNumber < currentWeek;
        final isFuture = plan.weekNumber > currentWeek;
        final assessmentsThisWeek = termAssessments
            .where((a) => a.weekNumber == plan.weekNumber)
            .toList();

        return _WeekCard(
          plan: plan,
          score: score,
          isCurrentWeek: isCurrentWeek,
          isPast: isPast,
          isFuture: isFuture,
          assessmentCount: assessmentsThisWeek.length,
          onStartAssessment: isFuture
              ? null
              : () => onStartAssessment(plan),
        );
      },
    );
  }
}

// ── Week Card ─────────────────────────────────────────────────────────────────
class _WeekCard extends StatefulWidget {
  final WeeklyPlan plan;
  final double? score;
  final bool isCurrentWeek;
  final bool isPast;
  final bool isFuture;
  final int assessmentCount;
  final VoidCallback? onStartAssessment;

  const _WeekCard({
    required this.plan,
    required this.isCurrentWeek,
    required this.isPast,
    required this.isFuture,
    required this.assessmentCount,
    this.score,
    this.onStartAssessment,
  });

  @override
  State<_WeekCard> createState() => _WeekCardState();
}

class _WeekCardState extends State<_WeekCard> {
  bool _expanded = false;

  @override
  void initState() {
    super.initState();
    // Auto-expand current week
    _expanded = widget.isCurrentWeek;
  }

  @override
  Widget build(BuildContext context) {
    final borderColor = widget.isCurrentWeek
        ? AppTheme.primary
        : widget.isPast && widget.score != null
        ? AppTheme.scoreColor(widget.score!)
        : Colors.grey.shade200;

    final bgColor = widget.isCurrentWeek
        ? AppTheme.primary.withValues(alpha: 0.04)
        : Colors.white;

    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: Container(
        decoration: BoxDecoration(
          color: bgColor,
          borderRadius: BorderRadius.circular(14),
          border: Border.all(color: borderColor, width: widget.isCurrentWeek ? 1.5 : 1),
        ),
        child: Column(
          children: [
            // ── Header row ────────────────────────────────────────────
            InkWell(
              onTap: widget.isFuture
                  ? null
                  : () => setState(() => _expanded = !_expanded),
              borderRadius: BorderRadius.circular(14),
              child: Padding(
                padding: const EdgeInsets.all(14),
                child: Row(
                  children: [
                    // Week number circle
                    Container(
                      width: 36,
                      height: 36,
                      decoration: BoxDecoration(
                        color: widget.isCurrentWeek
                            ? AppTheme.primary
                            : widget.isPast
                            ? Colors.grey.shade100
                            : Colors.grey.shade50,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Center(
                        child: widget.isPast && widget.score != null
                            ? Icon(Icons.check_rounded,
                            size: 18,
                            color: AppTheme.scoreColor(widget.score!))
                            : Text(
                          '${widget.plan.weekNumber}',
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w800,
                              color: widget.isCurrentWeek
                                  ? Colors.white
                                  : AppTheme.textSecondary),
                        ),
                      ),
                    ),
                    const SizedBox(width: 12),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              if (widget.isCurrentWeek)
                                Container(
                                  margin: const EdgeInsets.only(right: 6),
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 6, vertical: 2),
                                  decoration: BoxDecoration(
                                    color: AppTheme.primary,
                                    borderRadius: BorderRadius.circular(4),
                                  ),
                                  child: const Text('NOW',
                                      style: TextStyle(
                                          fontSize: 9,
                                          fontWeight: FontWeight.w800,
                                          color: Colors.white)),
                                ),
                              Expanded(
                                child: Text(
                                  widget.plan.title,
                                  style: TextStyle(
                                      fontSize: 13,
                                      fontWeight: FontWeight.w700,
                                      color: widget.isFuture
                                          ? AppTheme.textSecondary
                                          : AppTheme.textPrimary),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 4),
                          Wrap(
                            spacing: 4,
                            children: widget.plan.skillTags
                                .take(3)
                                .map((t) => Text(
                              t.replaceAll('_', ' '),
                              style: const TextStyle(
                                  fontSize: 11,
                                  color: AppTheme.textSecondary),
                            ))
                                .toList(),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(width: 8),
                    // Score badge or lock
                    if (widget.isFuture)
                      const Icon(Icons.lock_outline_rounded,
                          size: 16, color: AppTheme.textSecondary)
                    else if (widget.score != null)
                      ScoreBadge(score: widget.score!)
                    else if (widget.isCurrentWeek || widget.isPast)
                        Container(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 8, vertical: 4),
                          decoration: BoxDecoration(
                            color: Colors.grey.shade100,
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: const Text('—',
                              style: TextStyle(
                                  fontSize: 13,
                                  fontWeight: FontWeight.w700,
                                  color: AppTheme.textSecondary)),
                        ),
                  ],
                ),
              ),
            ),

            // ── Expanded details ──────────────────────────────────────
            if (_expanded && !widget.isFuture) ...[
              const Divider(height: 1),
              Padding(
                padding: const EdgeInsets.fromLTRB(14, 12, 14, 14),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Objectives
                    const Text('Learning Objectives',
                        style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w700,
                            color: AppTheme.textSecondary)),
                    const SizedBox(height: 8),
                    ...widget.plan.objectives.map(
                          (obj) => Padding(
                        padding: const EdgeInsets.only(bottom: 6),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Icon(Icons.radio_button_unchecked,
                                size: 14, color: AppTheme.primary),
                            const SizedBox(width: 8),
                            Expanded(
                              child: Text(obj,
                                  style: const TextStyle(
                                      fontSize: 12,
                                      color: AppTheme.textPrimary)),
                            ),
                          ],
                        ),
                      ),
                    ),

                    if (widget.assessmentCount > 0) ...[
                      const SizedBox(height: 8),
                      Text(
                        '${widget.assessmentCount} assessment${widget.assessmentCount > 1 ? 's' : ''} done this week',
                        style: const TextStyle(
                            fontSize: 12, color: AppTheme.textSecondary),
                      ),
                    ],

                    const SizedBox(height: 12),
                    if (widget.onStartAssessment != null)
                      SizedBox(
                        width: double.infinity,
                        child: ElevatedButton.icon(
                          icon: const Icon(Icons.play_arrow_rounded,
                              color: Colors.white, size: 18),
                          label: Text(
                            widget.assessmentCount > 0
                                ? 'Assess Again'
                                : 'Start Week ${widget.plan.weekNumber} Assessment',
                            style: const TextStyle(color: Colors.white),
                          ),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: AppTheme.primary,
                            padding:
                            const EdgeInsets.symmetric(vertical: 12),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10)),
                          ),
                          onPressed: widget.onStartAssessment,
                        ),
                      ),
                  ],
                ),
              ),
            ],
          ],
        ),
      ),
    );
  }
}

// ── Term Summary Tab ──────────────────────────────────────────────────────────
class _SummaryTab extends StatelessWidget {
  final Student student;
  final List<Assessment> termAssessments;
  final Map<int, double> weeklyScores;
  final int weekCount;
  final int midtermWeek;
  final Set<String> allWeakTags;
  final TeachingTipsService tipsService;
  final double termAvg;

  const _SummaryTab({
    required this.student,
    required this.termAssessments,
    required this.weeklyScores,
    required this.weekCount,
    required this.midtermWeek,
    required this.allWeakTags,
    required this.tipsService,
    required this.termAvg,
  });

  @override
  Widget build(BuildContext context) {
    final midtermAssessments =
    termAssessments.where((a) => (a.weekNumber ?? 0) <= midtermWeek).toList();
    final midtermAvg = midtermAssessments.isEmpty
        ? 0.0
        : midtermAssessments.map((a) => a.score).reduce((a, b) => a + b) /
        midtermAssessments.length;

    final tips = tipsService.getTipsForWeakTags(
      allWeakTags.toList(),
      maxTips: 3,
      sessionSeed: termAssessments.length,
    );

    return ListView(
      padding: const EdgeInsets.all(16),
      children: [
        // ── Score cards ───────────────────────────────────────────────
        Row(
          children: [
            Expanded(
              child: StatCard(
                label: 'Term Avg',
                value: termAvg == 0
                    ? '—'
                    : '${termAvg.toStringAsFixed(0)}%',
                icon: Icons.bar_chart_rounded,
                color: termAvg == 0
                    ? AppTheme.textSecondary
                    : AppTheme.scoreColor(termAvg),
              ),
            ),
            const SizedBox(width: 10),
            Expanded(
              child: StatCard(
                label: 'Midterm Avg',
                value: midtermAvg == 0
                    ? '—'
                    : '${midtermAvg.toStringAsFixed(0)}%',
                icon: Icons.flag_outlined,
                color: midtermAvg == 0
                    ? AppTheme.textSecondary
                    : AppTheme.scoreColor(midtermAvg),
              ),
            ),
            const SizedBox(width: 10),
            Expanded(
              child: StatCard(
                label: 'Assessments',
                value: '${termAssessments.length}',
                icon: Icons.assignment_rounded,
                color: AppTheme.primary,
              ),
            ),
          ],
        ),
        const SizedBox(height: 16),

        // ── Week-by-week score bar ─────────────────────────────────────
        if (weeklyScores.isNotEmpty) ...[
          Container(
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(14),
              border: Border.all(color: Colors.grey.shade100),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text('Weekly Scores',
                    style: TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.w700,
                        color: AppTheme.textPrimary)),
                const SizedBox(height: 16),
                SizedBox(
                  height: 120,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: List.generate(weekCount, (i) {
                      final week = i + 1;
                      final score = weeklyScores[week];
                      final barFraction =
                      score == null ? 0.0 : score / 100.0;
                      final color = score == null
                          ? Colors.grey.shade200
                          : AppTheme.scoreColor(score);
                      return Expanded(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 2),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              if (score != null)
                                Text(
                                  score.toStringAsFixed(0),
                                  style: TextStyle(
                                      fontSize: 8,
                                      color: color,
                                      fontWeight: FontWeight.w700),
                                ),
                              const SizedBox(height: 2),
                              Flexible(
                                child: FractionallySizedBox(
                                  heightFactor: barFraction == 0
                                      ? 0.05
                                      : barFraction,
                                  child: Container(
                                    decoration: BoxDecoration(
                                      color: color,
                                      borderRadius:
                                      BorderRadius.circular(3),
                                    ),
                                  ),
                                ),
                              ),
                              const SizedBox(height: 4),
                              Text(
                                'W$week',
                                style: const TextStyle(
                                    fontSize: 8,
                                    color: AppTheme.textSecondary),
                              ),
                            ],
                          ),
                        ),
                      );
                    }),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 16),
        ],

        // ── Midterm divider ────────────────────────────────────────────
        if (midtermAssessments.isNotEmpty) ...[
          Container(
            padding: const EdgeInsets.all(14),
            decoration: BoxDecoration(
              color: AppTheme.primary.withValues(alpha: 0.05),
              borderRadius: BorderRadius.circular(12),
              border: Border.all(
                  color: AppTheme.primary.withValues(alpha: 0.15)),
            ),
            child: Row(
              children: [
                const Icon(Icons.flag_rounded,
                    color: AppTheme.primary, size: 18),
                const SizedBox(width: 10),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text('Midterm Summary',
                          style: TextStyle(
                              fontSize: 13,
                              fontWeight: FontWeight.w700,
                              color: AppTheme.textPrimary)),
                      const SizedBox(height: 2),
                      Text(
                        'Weeks 1–$midtermWeek: ${midtermAssessments.length} assessments, '
                            '${midtermAvg.toStringAsFixed(0)}% average',
                        style: const TextStyle(
                            fontSize: 12, color: AppTheme.textSecondary),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 16),
        ],

        // ── Weak areas ─────────────────────────────────────────────────
        if (allWeakTags.isNotEmpty) ...[
          SectionHeader(
              icon: Icons.warning_amber_rounded,
              label: 'Weak Areas This Term',
              color: AppTheme.warning),
          const SizedBox(height: 10),
          Wrap(
            spacing: 8,
            runSpacing: 6,
            children: allWeakTags
                .map((tag) => Container(
              padding: const EdgeInsets.symmetric(
                  horizontal: 12, vertical: 6),
              decoration: BoxDecoration(
                color: AppTheme.warning.withValues(alpha: 0.1),
                borderRadius: BorderRadius.circular(20),
                border: Border.all(
                    color:
                    AppTheme.warning.withValues(alpha: 0.3)),
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
          const SizedBox(height: 16),
        ],

        // ── Teaching tips ──────────────────────────────────────────────
        if (tips.isNotEmpty) ...[
          SectionHeader(
              icon: Icons.tips_and_updates_rounded,
              label: 'Teaching Tips for This Term',
              color: AppTheme.primary),
          const SizedBox(height: 12),
          ...tips.asMap().entries.map(
                (e) => TeachingTipCard(tip: e.value, index: e.key),
          ),
          const SizedBox(height: 16),
        ],

        if (termAssessments.isEmpty)
          Center(
            child: Padding(
              padding: const EdgeInsets.all(40),
              child: Column(
                children: [
                  Icon(Icons.assignment_outlined,
                      size: 48,
                      color: AppTheme.textSecondary
                          .withValues(alpha: 0.3)),
                  const SizedBox(height: 16),
                  const Text('No assessments yet this term.',
                      style: TextStyle(
                          fontSize: 14, color: AppTheme.textSecondary)),
                  const SizedBox(height: 8),
                  const Text(
                      'Go to Weekly Plan and start an assessment.',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 13, color: AppTheme.textSecondary)),
                ],
              ),
            ),
          ),
      ],
    );
  }
}

// ── Small pill widget ─────────────────────────────────────────────────────────
class _Pill extends StatelessWidget {
  final String label;
  final IconData icon;
  const _Pill({required this.label, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
      decoration: BoxDecoration(
        color: Colors.white.withValues(alpha: 0.2),
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: Colors.white.withValues(alpha: 0.3)),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(icon, size: 12, color: Colors.white),
          const SizedBox(width: 4),
          Text(label,
              style: const TextStyle(
                  fontSize: 11,
                  color: Colors.white,
                  fontWeight: FontWeight.w600)),
        ],
      ),
    );
  }
}
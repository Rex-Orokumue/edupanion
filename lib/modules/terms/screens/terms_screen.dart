import 'package:flutter/material.dart';
import '../../../core/models/term.dart';
import '../../../core/models/weekly_plan.dart';
import '../../../core/services/term_service.dart';
import '../../../core/services/curriculum_map.dart';
import '../../../core/theme/app_theme.dart';

class TermsScreen extends StatefulWidget {
  const TermsScreen({super.key});

  @override
  State<TermsScreen> createState() => _TermsScreenState();
}

class _TermsScreenState extends State<TermsScreen>
    with SingleTickerProviderStateMixin {
  final _termService = TermService();
  late TabController _tabController;

  List<Term> _terms = [];
  Term? _activeTerm;
  bool _isLoading = true;

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
      final terms = await _termService.getAllTerms();
      final active = terms.isEmpty
          ? null
          : terms.firstWhere((t) => t.isActive,
          orElse: () => terms.last);
      if (!mounted) return;
      setState(() {
        _terms = terms;
        _activeTerm = active;
        _isLoading = false;
      });
    } catch (e) {
      if (!mounted) return;
      setState(() => _isLoading = false);
    }
  }

  void _showEditTermDialog(Term term) {
    int selectedWeekCount = term.weekCount;
    DateTime? startDate = term.startDate;
    DateTime? endDate = term.endDate;

    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
      builder: (ctx) => StatefulBuilder(
        builder: (context, setSheet) => Padding(
          padding: EdgeInsets.only(
              bottom: MediaQuery.of(ctx).viewInsets.bottom),
          child: Container(
            padding: const EdgeInsets.fromLTRB(24, 20, 24, 32),
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius:
              BorderRadius.vertical(top: Radius.circular(24)),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Center(
                  child: Container(
                    width: 40, height: 4,
                    decoration: BoxDecoration(
                        color: Colors.grey.shade300,
                        borderRadius: BorderRadius.circular(2)),
                  ),
                ),
                const SizedBox(height: 20),
                Text('Edit ${term.termLabel}',
                    style: const TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w700,
                        color: AppTheme.textPrimary)),
                const SizedBox(height: 20),

                // Week count
                const Text('Number of Weeks',
                    style: TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.w600,
                        color: AppTheme.textSecondary)),
                const SizedBox(height: 8),
                Row(
                  children: [12, 13].map((w) {
                    final selected = selectedWeekCount == w;
                    return Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(right: 8),
                        child: GestureDetector(
                          onTap: () =>
                              setSheet(() => selectedWeekCount = w),
                          child: AnimatedContainer(
                            duration: const Duration(milliseconds: 200),
                            padding: const EdgeInsets.symmetric(
                                vertical: 12),
                            decoration: BoxDecoration(
                              color: selected
                                  ? AppTheme.primary
                                  .withValues(alpha: 0.1)
                                  : Colors.grey.shade100,
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(
                                color: selected
                                    ? AppTheme.primary
                                    : Colors.transparent,
                                width: 1.5,
                              ),
                            ),
                            child: Text('$w weeks',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 13,
                                  fontWeight: FontWeight.w700,
                                  color: selected
                                      ? AppTheme.primary
                                      : AppTheme.textSecondary,
                                )),
                          ),
                        ),
                      ),
                    );
                  }).toList(),
                ),
                const SizedBox(height: 16),

                // Start date
                _DatePicker(
                  label: 'Start Date',
                  date: startDate,
                  onPicked: (d) => setSheet(() => startDate = d),
                  onCleared: () => setSheet(() => startDate = null),
                ),
                const SizedBox(height: 10),

                // End date
                _DatePicker(
                  label: 'End Date',
                  date: endDate,
                  onPicked: (d) => setSheet(() => endDate = d),
                  onCleared: () => setSheet(() => endDate = null),
                ),
                const SizedBox(height: 20),

                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: AppTheme.primary,
                    foregroundColor: Colors.white,
                    padding: const EdgeInsets.symmetric(vertical: 14),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12)),
                  ),
                  onPressed: () async {
                    Navigator.pop(ctx);
                    await _termService.updateTermDates(
                      term.id,
                      startDate: startDate,
                      endDate: endDate,
                      weekCount: selectedWeekCount,
                    );
                    _load();
                  },
                  child: const Text('Save Changes',
                      style: TextStyle(
                          fontSize: 16, fontWeight: FontWeight.w700)),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Future<void> _deleteTerm(Term term) async {
    final confirm = await showDialog<bool>(
      context: context,
      builder: (ctx) => AlertDialog(
        shape:
        RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        title: const Text('Delete Term'),
        content: Text(
            'Delete ${term.label}? This will also delete all weekly plans for this term. Assessment records are kept.'),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(ctx, false),
            child: const Text('Cancel'),
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
                backgroundColor: AppTheme.danger,
                foregroundColor: Colors.white),
            onPressed: () => Navigator.pop(ctx, true),
            child: const Text('Delete'),
          ),
        ],
      ),
    );
    if (confirm == true) {
      await _termService.deleteTerm(term.id);
      if (mounted) _load();
    }
  }

  Future<void> _reseedCurriculum() async {
    if (_terms.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('No terms found. Create a term first.')),
      );
      return;
    }

    final confirm = await showDialog<bool>(
      context: context,
      builder: (ctx) => AlertDialog(
        shape:
        RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        title: const Text('Reseed Curriculum'),
        content: const Text(
            'This will delete and re-create all weekly plans for all existing terms using the latest curriculum. Assessment records are kept.\n\nContinue?'),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(ctx, false),
            child: const Text('Cancel'),
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
                backgroundColor: AppTheme.primary,
                foregroundColor: Colors.white),
            onPressed: () => Navigator.pop(ctx, true),
            child: const Text('Reseed'),
          ),
        ],
      ),
    );

    if (confirm != true) return;

    if (!mounted) return;
    setState(() => _isLoading = true);
    try {
      for (final term in _terms) {
        await _termService.reseedWeeklyPlans(term);
      }
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text('Curriculum reseeded successfully ✓'),
            backgroundColor: AppTheme.primary,
          ),
        );
      }
    } catch (e) {
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Error: $e')),
        );
      }
    }
    await _load();
  }

  void _showCreateTermDialog() {
    int selectedTermNumber = 1;
    int selectedWeekCount = 13;
    DateTime? startDate;

    // Suggest next term number
    if (_terms.isNotEmpty) {
      final used = _terms.map((t) => t.termNumber).toSet();
      for (int i = 1; i <= 3; i++) {
        if (!used.contains(i)) {
          selectedTermNumber = i;
          break;
        }
      }
    }

    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
      builder: (ctx) => StatefulBuilder(
        builder: (context, setSheet) => Padding(
          padding: EdgeInsets.only(
              bottom: MediaQuery.of(ctx).viewInsets.bottom),
          child: Container(
            padding: const EdgeInsets.fromLTRB(24, 20, 24, 32),
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.vertical(top: Radius.circular(24)),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Center(
                  child: Container(
                    width: 40,
                    height: 4,
                    decoration: BoxDecoration(
                        color: Colors.grey.shade300,
                        borderRadius: BorderRadius.circular(2)),
                  ),
                ),
                const SizedBox(height: 20),
                const Text('Create New Term',
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w700,
                        color: AppTheme.textPrimary)),
                const SizedBox(height: 4),
                const Text('This will become the active term',
                    style: TextStyle(
                        fontSize: 13, color: AppTheme.textSecondary)),
                const SizedBox(height: 20),

                // Term number
                const Text('Term Number',
                    style: TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.w600,
                        color: AppTheme.textSecondary)),
                const SizedBox(height: 8),
                Row(
                  children: [1, 2, 3].map((n) {
                    final selected = selectedTermNumber == n;
                    return Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(right: 8),
                        child: GestureDetector(
                          onTap: () =>
                              setSheet(() => selectedTermNumber = n),
                          child: AnimatedContainer(
                            duration: const Duration(milliseconds: 200),
                            padding: const EdgeInsets.symmetric(vertical: 12),
                            decoration: BoxDecoration(
                              color: selected
                                  ? AppTheme.primary.withValues(alpha: 0.1)
                                  : Colors.grey.shade100,
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(
                                color: selected
                                    ? AppTheme.primary
                                    : Colors.transparent,
                                width: 1.5,
                              ),
                            ),
                            child: Text(
                              'Term $n',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 13,
                                fontWeight: FontWeight.w700,
                                color: selected
                                    ? AppTheme.primary
                                    : AppTheme.textSecondary,
                              ),
                            ),
                          ),
                        ),
                      ),
                    );
                  }).toList(),
                ),
                const SizedBox(height: 16),

                // Week count
                const Text('Number of Weeks',
                    style: TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.w600,
                        color: AppTheme.textSecondary)),
                const SizedBox(height: 8),
                Row(
                  children: [12, 13].map((w) {
                    final selected = selectedWeekCount == w;
                    return Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(right: 8),
                        child: GestureDetector(
                          onTap: () =>
                              setSheet(() => selectedWeekCount = w),
                          child: AnimatedContainer(
                            duration: const Duration(milliseconds: 200),
                            padding: const EdgeInsets.symmetric(vertical: 12),
                            decoration: BoxDecoration(
                              color: selected
                                  ? AppTheme.primary.withValues(alpha: 0.1)
                                  : Colors.grey.shade100,
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(
                                color: selected
                                    ? AppTheme.primary
                                    : Colors.transparent,
                                width: 1.5,
                              ),
                            ),
                            child: Text(
                              '$w weeks',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 13,
                                fontWeight: FontWeight.w700,
                                color: selected
                                    ? AppTheme.primary
                                    : AppTheme.textSecondary,
                              ),
                            ),
                          ),
                        ),
                      ),
                    );
                  }).toList(),
                ),
                const SizedBox(height: 16),

                // Start date
                GestureDetector(
                  onTap: () async {
                    final picked = await showDatePicker(
                      context: context,
                      initialDate: DateTime.now(),
                      firstDate: DateTime(2020),
                      lastDate: DateTime(2030),
                      helpText: 'Term Start Date',
                      builder: (context, child) => Theme(
                        data: Theme.of(context).copyWith(
                          colorScheme: const ColorScheme.light(
                              primary: AppTheme.primary),
                        ),
                        child: child!,
                      ),
                    );
                    if (picked != null) setSheet(() => startDate = picked);
                  },
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 14, vertical: 14),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey.shade300),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Row(
                      children: [
                        const Icon(Icons.calendar_today_outlined,
                            size: 20, color: AppTheme.textSecondary),
                        const SizedBox(width: 12),
                        Text(
                          startDate == null
                              ? 'Start Date (optional)'
                              : '${startDate!.day}/${startDate!.month}/${startDate!.year}',
                          style: TextStyle(
                            fontSize: 14,
                            color: startDate == null
                                ? Colors.grey.shade500
                                : AppTheme.textPrimary,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 8),
                const Text(
                  'Setting a start date enables automatic week tracking',
                  style:
                  TextStyle(fontSize: 11, color: AppTheme.textSecondary),
                ),
                const SizedBox(height: 20),

                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: AppTheme.primary,
                    foregroundColor: Colors.white,
                    padding: const EdgeInsets.symmetric(vertical: 14),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12)),
                  ),
                  onPressed: () async {
                    Navigator.pop(ctx);
                    await _termService.createTerm(
                      termNumber: selectedTermNumber,
                      weekCount: selectedWeekCount,
                      startDate: startDate,
                    );
                    _load();
                  },
                  child: const Text('Create Term',
                      style: TextStyle(
                          fontSize: 16, fontWeight: FontWeight.w700)),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppTheme.surface,
      body: NestedScrollView(
        headerSliverBuilder: (context, innerBoxIsScrolled) => [
          SliverAppBar(
            pinned: true,
            backgroundColor: AppTheme.primaryDark,
            title: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text('Terms & Curriculum',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.w800)),
                Text(
                  _activeTerm != null
                      ? 'Active: ${_activeTerm!.label}'
                      : 'No active term',
                  style: const TextStyle(
                      color: Colors.white70, fontSize: 12),
                ),
              ],
            ),
            actions: [
              IconButton(
                icon: const Icon(Icons.refresh_rounded, color: Colors.white),
                tooltip: 'Reseed Curriculum',
                onPressed: _reseedCurriculum,
              ),
              IconButton(
                icon: const Icon(Icons.add_rounded, color: Colors.white),
                tooltip: 'New Term',
                onPressed: _showCreateTermDialog,
              ),
            ],
            bottom: TabBar(
              controller: _tabController,
              indicatorColor: Colors.white,
              labelColor: Colors.white,
              unselectedLabelColor: Colors.white60,
              tabs: const [
                Tab(text: 'Terms'),
                Tab(text: 'Curriculum'),
              ],
            ),
          ),
        ],
        body: _isLoading
            ? const Center(child: CircularProgressIndicator())
            : TabBarView(
          controller: _tabController,
          children: [
            _TermsTab(
              terms: _terms,
              activeTerm: _activeTerm,
              termService: _termService,
              onRefresh: _load,
              onCreateTerm: _showCreateTermDialog,
              onEditTerm: _showEditTermDialog,
              onDeleteTerm: _deleteTerm,
            ),
            _CurriculumTab(activeTerm: _activeTerm),
          ],
        ),
      ),
    );
  }
}

// ── Terms Tab ─────────────────────────────────────────────────────────────────
class _TermsTab extends StatelessWidget {
  final List<Term> terms;
  final Term? activeTerm;
  final TermService termService;
  final VoidCallback onRefresh;
  final VoidCallback onCreateTerm;
  final void Function(Term) onEditTerm;
  final void Function(Term) onDeleteTerm;

  const _TermsTab({
    required this.terms,
    required this.activeTerm,
    required this.termService,
    required this.onRefresh,
    required this.onCreateTerm,
    required this.onEditTerm,
    required this.onDeleteTerm,
  });

  @override
  Widget build(BuildContext context) {
    if (terms.isEmpty) {
      return Center(
        child: Padding(
          padding: const EdgeInsets.all(40),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(Icons.calendar_month_outlined,
                  size: 56,
                  color: AppTheme.textSecondary.withValues(alpha: 0.3)),
              const SizedBox(height: 16),
              const Text('No terms yet',
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: AppTheme.textPrimary)),
              const SizedBox(height: 8),
              const Text(
                'Create a term to start tracking weekly\nassessments and curriculum progress.',
                textAlign: TextAlign.center,
                style:
                TextStyle(fontSize: 13, color: AppTheme.textSecondary),
              ),
              const SizedBox(height: 24),
              ElevatedButton.icon(
                icon: const Icon(Icons.add_rounded, color: Colors.white),
                label: const Text('Create First Term',
                    style: TextStyle(color: Colors.white)),
                style: ElevatedButton.styleFrom(
                  backgroundColor: AppTheme.primary,
                  padding: const EdgeInsets.symmetric(
                      horizontal: 24, vertical: 12),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12)),
                ),
                onPressed: onCreateTerm,
              ),
            ],
          ),
        ),
      );
    }

    return ListView.builder(
      padding: const EdgeInsets.all(16),
      itemCount: terms.length,
      itemBuilder: (_, i) {
        final term = terms[i];
        final isActive = term.id == activeTerm?.id;
        return _TermCard(
          term: term,
          isActive: isActive,
          onSetActive: isActive
              ? null
              : () async {
            await termService.setActiveTerm(term.id);
            onRefresh();
          },
          onEdit: () => onEditTerm(term),
          onDelete: () => onDeleteTerm(term),
        );
      },
    );
  }
}

// ── Term Card ─────────────────────────────────────────────────────────────────
class _TermCard extends StatelessWidget {
  final Term term;
  final bool isActive;
  final VoidCallback? onSetActive;
  final VoidCallback onEdit;
  final VoidCallback onDelete;

  const _TermCard({
    required this.term,
    required this.isActive,
    required this.onEdit,
    required this.onDelete,
    this.onSetActive,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 12),
      child: Container(
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: isActive
              ? AppTheme.primary.withValues(alpha: 0.05)
              : Colors.white,
          borderRadius: BorderRadius.circular(16),
          border: Border.all(
            color: isActive
                ? AppTheme.primary.withValues(alpha: 0.3)
                : Colors.grey.shade100,
            width: isActive ? 1.5 : 1,
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text(
                            term.label,
                            style: const TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w700,
                                color: AppTheme.textPrimary),
                          ),
                          if (isActive) ...[
                            const SizedBox(width: 8),
                            Container(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 8, vertical: 3),
                              decoration: BoxDecoration(
                                color: AppTheme.primary,
                                borderRadius: BorderRadius.circular(6),
                              ),
                              child: const Text('ACTIVE',
                                  style: TextStyle(
                                      fontSize: 10,
                                      fontWeight: FontWeight.w800,
                                      color: Colors.white)),
                            ),
                          ],
                        ],
                      ),
                      const SizedBox(height: 4),
                      Text(
                        '${term.weekCount} weeks',
                        style: const TextStyle(
                            fontSize: 13, color: AppTheme.textSecondary),
                      ),
                    ],
                  ),
                ),
                PopupMenuButton<String>(
                  icon: const Icon(Icons.more_vert_rounded,
                      color: AppTheme.textSecondary, size: 20),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12)),
                  onSelected: (value) {
                    if (value == 'activate') onSetActive?.call();
                    if (value == 'edit') onEdit();
                    if (value == 'delete') onDelete();
                  },
                  itemBuilder: (_) => [
                    if (!isActive)
                      const PopupMenuItem(
                        value: 'activate',
                        child: Row(children: [
                          Icon(Icons.check_circle_outline_rounded,
                              size: 18, color: AppTheme.primary),
                          SizedBox(width: 10),
                          Text('Set Active'),
                        ]),
                      ),
                    const PopupMenuItem(
                      value: 'edit',
                      child: Row(children: [
                        Icon(Icons.edit_outlined,
                            size: 18, color: AppTheme.primary),
                        SizedBox(width: 10),
                        Text('Edit'),
                      ]),
                    ),
                    PopupMenuItem(
                      value: 'delete',
                      child: Row(children: [
                        Icon(Icons.delete_outline_rounded,
                            size: 18, color: AppTheme.danger),
                        const SizedBox(width: 10),
                        Text('Delete',
                            style:
                            TextStyle(color: AppTheme.danger)),
                      ]),
                    ),
                  ],
                ),
              ],
            ),

            // Dates
            if (term.startDate != null) ...[
              const SizedBox(height: 10),
              const Divider(height: 1),
              const SizedBox(height: 10),
              Row(
                children: [
                  const Icon(Icons.calendar_today_outlined,
                      size: 14, color: AppTheme.textSecondary),
                  const SizedBox(width: 6),
                  Text(
                    _fmt(term.startDate!),
                    style: const TextStyle(
                        fontSize: 12, color: AppTheme.textSecondary),
                  ),
                  if (term.endDate != null) ...[
                    const Text(' → ',
                        style: TextStyle(
                            fontSize: 12, color: AppTheme.textSecondary)),
                    Text(
                      _fmt(term.endDate!),
                      style: const TextStyle(
                          fontSize: 12, color: AppTheme.textSecondary),
                    ),
                  ],
                ],
              ),
            ],

            // Week progress bar
            if (isActive && term.startDate != null) ...[
              const SizedBox(height: 12),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Week ${term.currentWeek ?? 1} of ${term.weekCount}',
                    style: const TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w600,
                        color: AppTheme.primary),
                  ),
                  Text(
                    '${(((term.currentWeek ?? 1) / term.weekCount) * 100).toStringAsFixed(0)}% through term',
                    style: const TextStyle(
                        fontSize: 12, color: AppTheme.textSecondary),
                  ),
                ],
              ),
              const SizedBox(height: 6),
              ClipRRect(
                borderRadius: BorderRadius.circular(4),
                child: LinearProgressIndicator(
                  value: (term.currentWeek ?? 1) / term.weekCount,
                  backgroundColor: Colors.grey.shade200,
                  valueColor:
                  const AlwaysStoppedAnimation<Color>(AppTheme.primary),
                  minHeight: 6,
                ),
              ),
            ],
          ],
        ),
      ),
    );
  }

  String _fmt(DateTime d) => '${d.day}/${d.month}/${d.year}';
}

// ── Curriculum Tab ────────────────────────────────────────────────────────────
class _CurriculumTab extends StatefulWidget {
  final Term? activeTerm;
  const _CurriculumTab({required this.activeTerm});

  @override
  State<_CurriculumTab> createState() => _CurriculumTabState();
}

class _CurriculumTabState extends State<_CurriculumTab> {
  final _termService = TermService();
  String _selectedLevel = 'beginner';
  List<WeeklyPlan> _plans = [];
  bool _isLoading = false;

  @override
  void initState() {
    super.initState();
    _loadPlans();
  }

  Future<void> _loadPlans() async {
    if (!mounted) return;
    setState(() => _isLoading = true);
    try {
      List<WeeklyPlan> plans;
      if (widget.activeTerm != null) {
        plans = await _termService.getWeeklyPlans(
            widget.activeTerm!.id, _selectedLevel);
      } else {
        // No active term — show built-in curriculum map as preview
        plans = await _termService.getWeeklyPlans('preview', _selectedLevel);
      }
      if (!mounted) return;
      setState(() {
        _plans = plans;
        _isLoading = false;
      });
    } catch (e) {
      if (!mounted) return;
      setState(() => _isLoading = false);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Level selector
        Padding(
          padding: const EdgeInsets.fromLTRB(16, 16, 16, 8),
          child: Wrap(
            spacing: 8,
            runSpacing: 8,
            children: CurriculumMap.levels.map((level) {
              final selected = _selectedLevel == level;
              final color = AppTheme.levelColor(level);
              return GestureDetector(
                onTap: () {
                  setState(() => _selectedLevel = level);
                  _loadPlans();
                },
                child: AnimatedContainer(
                  duration: const Duration(milliseconds: 200),
                  padding: const EdgeInsets.symmetric(
                      horizontal: 12, vertical: 8),
                  decoration: BoxDecoration(
                    color: selected
                        ? color.withValues(alpha: 0.12)
                        : Colors.grey.shade100,
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                      color: selected ? color : Colors.transparent,
                      width: 1.5,
                    ),
                  ),
                  child: Text(
                    CurriculumMap.levelLabel(level),
                    style: TextStyle(
                      fontSize: 11,
                      fontWeight: FontWeight.w700,
                      color:
                      selected ? color : AppTheme.textSecondary,
                    ),
                  ),
                ),
              );
            }).toList(),
          ),  // Wrap
        ),    // Padding

        if (widget.activeTerm == null)
          Container(
            margin: const EdgeInsets.fromLTRB(16, 0, 16, 8),
            padding: const EdgeInsets.all(12),
            decoration: BoxDecoration(
              color: AppTheme.warning.withValues(alpha: 0.08),
              borderRadius: BorderRadius.circular(10),
              border: Border.all(
                  color: AppTheme.warning.withValues(alpha: 0.2)),
            ),
            child: const Row(
              children: [
                Icon(Icons.info_outline_rounded,
                    size: 16, color: AppTheme.warning),
                SizedBox(width: 8),
                Expanded(
                  child: Text(
                    'No active term — showing default curriculum. Create a term to track progress.',
                    style: TextStyle(
                        fontSize: 12, color: AppTheme.textSecondary),
                  ),
                ),
              ],
            ),
          ),

        // Week list
        Expanded(
          child: _isLoading
              ? const Center(child: CircularProgressIndicator())
              : ListView.builder(
            padding: const EdgeInsets.fromLTRB(16, 0, 16, 16),
            itemCount: _plans.length,
            itemBuilder: (_, i) => _CurriculumWeekCard(plan: _plans[i]),
          ),
        ),
      ],
    );
  }
}

// ── Curriculum Week Card ──────────────────────────────────────────────────────
class _CurriculumWeekCard extends StatefulWidget {
  final WeeklyPlan plan;
  const _CurriculumWeekCard({required this.plan});

  @override
  State<_CurriculumWeekCard> createState() => _CurriculumWeekCardState();
}

class _CurriculumWeekCardState extends State<_CurriculumWeekCard> {
  bool _expanded = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12),
          border: Border.all(color: Colors.grey.shade100),
        ),
        child: Column(
          children: [
            InkWell(
              onTap: () => setState(() => _expanded = !_expanded),
              borderRadius: BorderRadius.circular(12),
              child: Padding(
                padding: const EdgeInsets.all(14),
                child: Row(
                  children: [
                    Container(
                      width: 32,
                      height: 32,
                      decoration: BoxDecoration(
                        color: AppTheme.primary.withValues(alpha: 0.1),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Center(
                        child: Text(
                          '${widget.plan.weekNumber}',
                          style: const TextStyle(
                              fontSize: 13,
                              fontWeight: FontWeight.w800,
                              color: AppTheme.primary),
                        ),
                      ),
                    ),
                    const SizedBox(width: 12),
                    Expanded(
                      child: Text(
                        widget.plan.title,
                        style: const TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.w600,
                            color: AppTheme.textPrimary),
                      ),
                    ),
                    Icon(
                      _expanded
                          ? Icons.expand_less_rounded
                          : Icons.expand_more_rounded,
                      size: 20,
                      color: AppTheme.textSecondary,
                    ),
                  ],
                ),
              ),
            ),
            if (_expanded) ...[
              const Divider(height: 1),
              Padding(
                padding: const EdgeInsets.all(14),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Skill tags
                    Wrap(
                      spacing: 6,
                      runSpacing: 4,
                      children: widget.plan.skillTags
                          .map((tag) => Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 10, vertical: 4),
                        decoration: BoxDecoration(
                          color: AppTheme.primary
                              .withValues(alpha: 0.08),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Text(
                          tag.replaceAll('_', ' '),
                          style: const TextStyle(
                              fontSize: 11,
                              fontWeight: FontWeight.w600,
                              color: AppTheme.primary),
                        ),
                      ))
                          .toList(),
                    ),
                    const SizedBox(height: 12),
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
                            const Text('• ',
                                style: TextStyle(
                                    color: AppTheme.primary,
                                    fontWeight: FontWeight.w700)),
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

// ── Reusable date picker row ───────────────────────────────────────────────────
class _DatePicker extends StatelessWidget {
  final String label;
  final DateTime? date;
  final void Function(DateTime) onPicked;
  final VoidCallback onCleared;

  const _DatePicker({
    required this.label,
    required this.onPicked,
    required this.onCleared,
    this.date,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () async {
        final picked = await showDatePicker(
          context: context,
          initialDate: date ?? DateTime.now(),
          firstDate: DateTime(2020),
          lastDate: DateTime(2030),
          helpText: label,
          builder: (context, child) => Theme(
            data: Theme.of(context).copyWith(
              colorScheme:
              const ColorScheme.light(primary: AppTheme.primary),
            ),
            child: child!,
          ),
        );
        if (picked != null) onPicked(picked);
      },
      child: Container(
        padding:
        const EdgeInsets.symmetric(horizontal: 14, vertical: 14),
        decoration: BoxDecoration(
          border: Border.all(color: Colors.grey.shade300),
          borderRadius: BorderRadius.circular(12),
        ),
        child: Row(
          children: [
            const Icon(Icons.calendar_today_outlined,
                size: 20, color: AppTheme.textSecondary),
            const SizedBox(width: 12),
            Expanded(
              child: Text(
                date == null
                    ? '$label (optional)'
                    : '${date!.day}/${date!.month}/${date!.year}',
                style: TextStyle(
                  fontSize: 14,
                  color: date == null
                      ? Colors.grey.shade500
                      : AppTheme.textPrimary,
                ),
              ),
            ),
            if (date != null)
              GestureDetector(
                onTap: onCleared,
                child: Icon(Icons.close_rounded,
                    size: 18,
                    color: AppTheme.textSecondary
                        .withValues(alpha: 0.6)),
              ),
          ],
        ),
      ),
    );
  }
}
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:uuid/uuid.dart';
import '../../../core/models/question.dart';
import '../../../core/models/assessment.dart';
import '../../../core/models/student.dart';
import '../../../core/services/assessment_service.dart';
import '../../../core/services/question_service.dart';
import '../../../core/services/tts_service.dart';
import '../../../core/services/progression_service.dart';
import '../../../core/theme/app_theme.dart';
import '../../../core/models/teaching_tip.dart';
import '../../../core/services/teaching_tips_service.dart';
import '../../../modules/shared/teaching_tip_card.dart';

class AssessmentScreen extends StatefulWidget {
  final String studentId;
  final String level;
  final Student student;
  final String? termId;
  final int? weekNumber;
  final int? termNumber;
  final String assessmentType; // 'weekly' | 'free'
  final String? weekTitle;
  final List<String>? weekSkillTags;
  final int? assessmentSet; // 1, 2, or 3 — null means show picker first

  const AssessmentScreen({
    super.key,
    required this.studentId,
    required this.level,
    required this.student,
    this.termId,
    this.weekNumber,
    this.termNumber,
    this.assessmentType = 'free',
    this.weekTitle,
    this.weekSkillTags,
    this.assessmentSet,
  });

  @override
  State<AssessmentScreen> createState() => _AssessmentScreenState();
}

class _AssessmentScreenState extends State<AssessmentScreen>
    with TickerProviderStateMixin {
  final QuestionService _questionService = QuestionService();
  final AssessmentService _assessmentService = AssessmentService();
  final TtsService _ttsService = TtsService();
  final Uuid _uuid = const Uuid();

  late List<Question> _questions;
  int _currentIndex = 0;
  int _correctAnswers = 0;
  final List<String> _weakSkillTags = [];

  // Assessment set — null means picker not yet confirmed
  int? _chosenSet;
  bool _showingPicker = false;

  // Answer state
  String? _selectedAnswer;
  bool _answered = false;
  bool _isSpeaking = false;

  // Animations
  late AnimationController _progressController;
  late AnimationController _cardController;
  late AnimationController _feedbackController;
  late Animation<double> _progressAnim;
  late Animation<double> _cardAnim;

  bool get _isWeekly =>
      widget.assessmentType == 'weekly' && widget.weekNumber != null;

  @override
  void initState() {
    super.initState();
    _progressController = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 600));
    _cardController = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 400));
    _feedbackController = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 300));

    // For weekly assessments with no pre-chosen set: show picker first
    if (_isWeekly && widget.assessmentSet == null) {
      _showingPicker = true;
      _questions = [];
      _progressAnim = Tween<double>(begin: 0, end: 0.1)
          .animate(CurvedAnimation(parent: _progressController, curve: Curves.easeOut));
      _cardAnim = CurvedAnimation(parent: _cardController, curve: Curves.easeOut);
      return;
    }

    _chosenSet = widget.assessmentSet;
    _initQuestions();
  }

  void _initQuestions() {
    List<Question> raw;
    if (_isWeekly && widget.weekNumber != null) {
      raw = _questionService.getQuestionsForWeek(
        level: widget.level,
        weekNumber: widget.weekNumber!,
        assessmentSet: _chosenSet ?? 1,
        termNumber: widget.termNumber ?? 1,
      );
    } else {
      raw = _questionService.getQuestionsByLevel(widget.level,
          weekSkillTags: widget.weekSkillTags);
    }

    raw.shuffle();
    _questions = raw.map((q) {
      final opts = List<String>.from(q.options)..shuffle();
      return Question(
        id: q.id, level: q.level, skillTag: q.skillTag,
        questionText: q.questionText, options: opts,
        correctAnswer: q.correctAnswer,
        weekNumber: q.weekNumber, assessmentSet: q.assessmentSet,
        termNumber: q.termNumber,
        questionType: q.questionType,
      );
    }).toList();

    final len = _questions.isEmpty ? 10 : _questions.length;
    _progressAnim = Tween<double>(begin: 0, end: 1 / len)
        .animate(CurvedAnimation(parent: _progressController, curve: Curves.easeOut));
    _cardAnim = CurvedAnimation(parent: _cardController, curve: Curves.easeOut);

    _progressController.forward();
    _cardController.forward();
  }

  // Called when teacher taps a set button in the picker
  void _confirmSet(int set) {
    _chosenSet = set;
    _initQuestions(); // fills _questions, sets up animations
    setState(() {
      _showingPicker = false; // triggers rebuild now that _questions is ready
    });
  }

  Future<void> _speakQuestion() async {
    if (_questions.isEmpty || !mounted) return;
    setState(() => _isSpeaking = true);
    // For comprehension questions, only read the Q: part, not the passage
    final fullText = _questions[_currentIndex].questionText;
    final qIndex = fullText.indexOf('\nQ: ');
    final textToSpeak = qIndex >= 0 ? fullText.substring(qIndex + 1) : fullText;
    await _ttsService.speak(textToSpeak);
    if (mounted) setState(() => _isSpeaking = false);
  }

  @override
  void dispose() {
    _ttsService.stop();
    _progressController.dispose();
    _cardController.dispose();
    _feedbackController.dispose();
    super.dispose();
  }

  void _answerQuestion(String selected) async {
    if (_answered) return;

    final question = _questions[_currentIndex];
    final isCorrect = selected == question.correctAnswer;

    // Haptic feedback
    if (isCorrect) {
      HapticFeedback.lightImpact();
    } else {
      HapticFeedback.mediumImpact();
    }

    setState(() {
      _selectedAnswer = selected;
      _answered = true;
    });

    _feedbackController.forward();

    if (isCorrect) {
      _correctAnswers++;
    } else {
      if (!_weakSkillTags.contains(question.skillTag)) {
        _weakSkillTags.add(question.skillTag);
      }
    }

    // Wait for user to see feedback, then advance
    await Future.delayed(const Duration(milliseconds: 900));
    if (!mounted) return;

    final isLast = _currentIndex == _questions.length - 1;
    if (isLast) {
      _finishAssessment();
    } else {
      _cardController.reset();
      _feedbackController.reset();
      setState(() {
        _currentIndex++;
        _selectedAnswer = null;
        _answered = false;
      });

      // Animate progress
      final newProgress = (_currentIndex + 1) / _questions.length;
      _progressAnim = Tween<double>(
        begin: _currentIndex / _questions.length,
        end: newProgress,
      ).animate(CurvedAnimation(
          parent: _progressController, curve: Curves.easeOut));
      _progressController
        ..reset()
        ..forward();

      _cardController.forward();
    }
  }

  void _finishAssessment() async {
    final score = (_correctAnswers / _questions.length) * 100;

    final assessment = Assessment(
      id: _uuid.v4(),
      studentId: widget.studentId,
      level: widget.level,
      totalQuestions: _questions.length,
      correctAnswers: _correctAnswers,
      score: score,
      weakSkillTags: _weakSkillTags,
      date: DateTime.now(),
      assessmentType: widget.assessmentType,
      termId: widget.termId,
      weekNumber: widget.weekNumber,
      termNumber: widget.termNumber,
    );

    await _assessmentService.addAssessment(assessment);

    // Check promotion eligibility
    final promotionStatus = await ProgressionService()
        .checkPromotion(widget.student, assessment);

    // Generate teaching tips for weak skill tags
    final tips = TeachingTipsService().getTipsForWeakTags(
      _weakSkillTags,
      maxTips: 3,
      sessionSeed: _correctAnswers,
    );

    if (!mounted) return;

    // Navigate to result screen
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(
        builder: (_) => _ResultScreen(
          score: score,
          correctAnswers: _correctAnswers,
          totalQuestions: _questions.length,
          weakSkillTags: _weakSkillTags,
          level: widget.level,
          student: widget.student,
          promotionStatus: promotionStatus,
          teachingTips: tips,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    // ── Assessment set picker ────────────────────────────────────────────────
    if (_showingPicker) {
      return _AssessmentSetPicker(
        weekTitle: widget.weekTitle ?? 'Week ${widget.weekNumber}',
        level: widget.level,
        weekNumber: widget.weekNumber ?? 1,
        termNumber: widget.termNumber ?? 1,
        questionService: _questionService,
        onSetChosen: _confirmSet,
        onBack: () => Navigator.pop(context),
      );
    }

    if (_questions.isEmpty) {
      return Scaffold(
        appBar: AppBar(
          title: Text(widget.weekTitle ??
              (widget.assessmentType == 'weekly' &&
                  widget.weekNumber != null
                  ? 'Week ${widget.weekNumber} Assessment'
                  : 'Free Assessment')),
        ),
        body: const Center(child: Text('No questions available.')),
      );
    }

    final question = _questions[_currentIndex];
    final levelColor = AppTheme.levelColor(widget.level);

    return Scaffold(
      backgroundColor: AppTheme.surface,
      body: SafeArea(
        child: Column(
          children: [
            // ── Header ──────────────────────────────────────────────────
            Padding(
              padding: const EdgeInsets.fromLTRB(16, 12, 16, 0),
              child: Row(
                children: [
                  GestureDetector(
                    onTap: () => _showExitConfirm(),
                    child: Container(
                      padding: const EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: Colors.grey.shade200),
                      ),
                      child: const Icon(Icons.close_rounded,
                          size: 20, color: AppTheme.textPrimary),
                    ),
                  ),
                  const SizedBox(width: 12),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              '${widget.level[0].toUpperCase()}${widget.level.substring(1)} Assessment',
                              style: const TextStyle(
                                fontSize: 13,
                                fontWeight: FontWeight.w600,
                                color: AppTheme.textSecondary,
                              ),
                            ),
                            Text(
                              '${_currentIndex + 1} / ${_questions.length}',
                              style: TextStyle(
                                fontSize: 13,
                                fontWeight: FontWeight.w700,
                                color: levelColor,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 6),
                        // Animated progress bar
                        ClipRRect(
                          borderRadius: BorderRadius.circular(4),
                          child: AnimatedBuilder(
                            animation: _progressAnim,
                            builder: (context, _) => LinearProgressIndicator(
                              value: _progressAnim.value,
                              minHeight: 8,
                              backgroundColor: Colors.grey.shade200,
                              valueColor:
                              AlwaysStoppedAnimation<Color>(levelColor),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 16),

            // ── Score tracker ────────────────────────────────────────────
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                children: [
                  _ScorePill(
                    label: '✓ $_correctAnswers correct',
                    color: AppTheme.success,
                  ),
                  const SizedBox(width: 8),
                  _ScorePill(
                    label:
                    '✗ ${_currentIndex - _correctAnswers + (_answered ? 0 : 0)} wrong',
                    color: _currentIndex > _correctAnswers
                        ? AppTheme.danger
                        : AppTheme.textSecondary,
                  ),
                ],
              ),
            ),

            const SizedBox(height: 20),

            // ── Question card ────────────────────────────────────────────
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: FadeTransition(
                  opacity: _cardAnim,
                  child: SlideTransition(
                    position: Tween<Offset>(
                      begin: const Offset(0.05, 0),
                      end: Offset.zero,
                    ).animate(_cardAnim),
                    child: SingleChildScrollView(
                      physics: const BouncingScrollPhysics(),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                        // Question box
                        Container(
                          padding: const EdgeInsets.all(24),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20),
                            border:
                            Border.all(color: Colors.grey.shade100),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black.withValues(alpha: 0.04),
                                blurRadius: 12,
                                offset: const Offset(0, 4),
                              ),
                            ],
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              // Skill tag pill
                              Container(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 10, vertical: 4),
                                decoration: BoxDecoration(
                                  color: levelColor.withValues(alpha: 0.1),
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                child: Text(
                                  question.skillTag.replaceAll('_', ' '),
                                  style: TextStyle(
                                    fontSize: 11,
                                    fontWeight: FontWeight.w600,
                                    color: levelColor,
                                  ),
                                ),
                              ),
                              const SizedBox(height: 14),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Expanded(
                                    child: Text(
                                      question.questionText,
                                      style: const TextStyle(
                                        fontSize: 22,
                                        fontWeight: FontWeight.w700,
                                        color: AppTheme.textPrimary,
                                        height: 1.3,
                                      ),
                                    ),
                                  ),
                                  const SizedBox(width: 12),
                                  GestureDetector(
                                    onTap: _isSpeaking ? null : _speakQuestion,
                                    child: AnimatedContainer(
                                      duration: const Duration(milliseconds: 200),
                                      padding: const EdgeInsets.all(10),
                                      decoration: BoxDecoration(
                                        color: _isSpeaking
                                            ? levelColor.withValues(alpha: 0.15)
                                            : levelColor.withValues(alpha: 0.08),
                                        borderRadius: BorderRadius.circular(12),
                                        border: Border.all(
                                          color: levelColor.withValues(alpha: 0.3),
                                        ),
                                      ),
                                      child: Icon(
                                        _isSpeaking
                                            ? Icons.volume_up_rounded
                                            : Icons.play_circle_outline_rounded,
                                        color: levelColor,
                                        size: 22,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),

                        const SizedBox(height: 20),

                        // Answer options
                        ...List.generate(question.options.length, (i) {
                          final option = question.options[i];
                          return _AnswerButton(
                            option: option,
                            index: i,
                            selectedAnswer: _selectedAnswer,
                            correctAnswer: question.correctAnswer,
                            answered: _answered,
                            onTap: () => _answerQuestion(option),
                          );
                        }),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),

            const SizedBox(height: 16),
          ],
        ),
      ),
    );
  }

  void _showExitConfirm() {
    // Capture the navigator BEFORE the dialog opens.
    // After the dialog pops, `context` may be defunct, so we must not
    // call Navigator.of(context) inside the button callbacks.
    final nav = Navigator.of(context);
    showDialog<bool>(
      context: context,
      builder: (dialogCtx) => AlertDialog(
        shape:
        RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        title: const Text('Exit Assessment?'),
        content: const Text(
            'Your progress will be lost. Are you sure you want to quit?'),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(dialogCtx),
            child: const Text('Continue'),
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
                backgroundColor: AppTheme.danger,
                foregroundColor: Colors.white),
            onPressed: () => Navigator.pop(dialogCtx, true),
            child: const Text('Exit'),
          ),
        ],
      ),
    ).then((confirmed) {
      if (confirmed == true) nav.pop();
    });
  }
}

// ── Answer button ─────────────────────────────────────────────────────────────
class _AnswerButton extends StatelessWidget {
  final String option;
  final int index;
  final String? selectedAnswer;
  final String correctAnswer;
  final bool answered;
  final VoidCallback onTap;

  static const _labels = ['A', 'B', 'C', 'D'];

  const _AnswerButton({
    required this.option,
    required this.index,
    required this.selectedAnswer,
    required this.correctAnswer,
    required this.answered,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final isSelected = selectedAnswer == option;
    final isCorrect = option == correctAnswer;

    Color bgColor = Colors.white;
    Color borderColor = Colors.grey.shade200;
    Color textColor = AppTheme.textPrimary;
    Color labelBg = Colors.grey.shade100;
    Color labelColor = AppTheme.textSecondary;
    Widget? trailingIcon;

    if (answered) {
      if (isCorrect) {
        bgColor = AppTheme.success.withValues(alpha: 0.08);
        borderColor = AppTheme.success;
        textColor = AppTheme.success;
        labelBg = AppTheme.success.withValues(alpha: 0.15);
        labelColor = AppTheme.success;
        trailingIcon = const Icon(Icons.check_circle_rounded,
            color: AppTheme.success, size: 22);
      } else if (isSelected) {
        bgColor = AppTheme.danger.withValues(alpha: 0.08);
        borderColor = AppTheme.danger;
        textColor = AppTheme.danger;
        labelBg = AppTheme.danger.withValues(alpha: 0.15);
        labelColor = AppTheme.danger;
        trailingIcon = const Icon(Icons.cancel_rounded,
            color: AppTheme.danger, size: 22);
      } else {
        bgColor = Colors.grey.shade50;
        textColor = AppTheme.textSecondary;
        labelColor = Colors.grey.shade400;
      }
    }

    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: GestureDetector(
        onTap: answered ? null : onTap,
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 250),
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
          decoration: BoxDecoration(
            color: bgColor,
            borderRadius: BorderRadius.circular(14),
            border: Border.all(color: borderColor, width: 1.5),
            boxShadow: answered
                ? []
                : [
              BoxShadow(
                color: Colors.black.withValues(alpha: 0.03),
                blurRadius: 6,
                offset: const Offset(0, 2),
              ),
            ],
          ),
          child: Row(
            children: [
              // Letter label
              AnimatedContainer(
                duration: const Duration(milliseconds: 250),
                width: 32,
                height: 32,
                decoration: BoxDecoration(
                  color: labelBg,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Center(
                  child: Text(
                    _labels[index],
                    style: TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.w700,
                      color: labelColor,
                    ),
                  ),
                ),
              ),
              const SizedBox(width: 14),
              Expanded(
                child: Text(
                  option,
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: textColor,
                  ),
                ),
              ),
              trailingIcon ?? const SizedBox.shrink(),
            ],
          ),
        ),
      ),
    );
  }
}

// ── Score pill ────────────────────────────────────────────────────────────────
class _ScorePill extends StatelessWidget {
  final String label;
  final Color color;

  const _ScorePill({required this.label, required this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
      decoration: BoxDecoration(
        color: color.withValues(alpha: 0.1),
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: color.withValues(alpha: 0.2)),
      ),
      child: Text(
        label,
        style: TextStyle(
          fontSize: 12,
          fontWeight: FontWeight.w600,
          color: color,
        ),
      ),
    );
  }
}

// ── Result Screen ─────────────────────────────────────────────────────────────
class _ResultScreen extends StatefulWidget {
  final double score;
  final int correctAnswers;
  final int totalQuestions;
  final List<String> weakSkillTags;
  final String level;
  final Student student;
  final PromotionStatus promotionStatus;
  final List<TeachingTip> teachingTips;

  const _ResultScreen({
    required this.score,
    required this.correctAnswers,
    required this.totalQuestions,
    required this.weakSkillTags,
    required this.level,
    required this.student,
    required this.promotionStatus,
    required this.teachingTips,
  });

  @override
  State<_ResultScreen> createState() => _ResultScreenState();
}

class _ResultScreenState extends State<_ResultScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _scoreAnim;
  late Animation<double> _fadeAnim;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 1200),
    );
    _scoreAnim = Tween<double>(begin: 0, end: widget.score).animate(
      CurvedAnimation(parent: _controller, curve: Curves.easeOut),
    );
    _fadeAnim = CurvedAnimation(parent: _controller, curve: Curves.easeIn);
    _controller.forward();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  String get _emoji {
    if (widget.score >= 80) return '🎉';
    if (widget.score >= 50) return '👍';
    return '💪';
  }

  String get _message {
    if (widget.score >= 80) return 'Excellent work!';
    if (widget.score >= 50) return 'Good effort!';
    return 'Keep practising!';
  }

  Color get _scoreColor => AppTheme.scoreColor(widget.score);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppTheme.surface,
      body: SafeArea(
        child: FadeTransition(
          opacity: _fadeAnim,
          child: SingleChildScrollView(
            padding: const EdgeInsets.all(24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [

                const SizedBox(height: 16),

                // ── Score circle ───────────────────────────────────────
                Center(
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      SizedBox(
                        width: 160,
                        height: 160,
                        child: AnimatedBuilder(
                          animation: _scoreAnim,
                          builder: (context, _) => CircularProgressIndicator(
                            value: _scoreAnim.value / 100,
                            strokeWidth: 12,
                            backgroundColor: Colors.grey.shade200,
                            valueColor:
                            AlwaysStoppedAnimation<Color>(_scoreColor),
                            strokeCap: StrokeCap.round,
                          ),
                        ),
                      ),
                      Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            _emoji,
                            style: const TextStyle(fontSize: 32),
                          ),
                          AnimatedBuilder(
                            animation: _scoreAnim,
                            builder: (context, _) => Text(
                              '${_scoreAnim.value.toStringAsFixed(0)}%',
                              style: TextStyle(
                                fontSize: 36,
                                fontWeight: FontWeight.w800,
                                color: _scoreColor,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),

                const SizedBox(height: 20),

                // ── Message ────────────────────────────────────────────
                Text(
                  _message,
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w800,
                    color: AppTheme.textPrimary,
                  ),
                ),
                const SizedBox(height: 6),
                Text(
                  '${widget.correctAnswers} out of ${widget.totalQuestions} questions correct',
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                      fontSize: 14, color: AppTheme.textSecondary),
                ),

                const SizedBox(height: 28),

                // ── Stats row ──────────────────────────────────────────
                Row(
                  children: [
                    Expanded(
                      child: _ResultStat(
                        label: 'Correct',
                        value: '${widget.correctAnswers}',
                        color: AppTheme.success,
                        icon: Icons.check_circle_outline_rounded,
                      ),
                    ),
                    const SizedBox(width: 12),
                    Expanded(
                      child: _ResultStat(
                        label: 'Wrong',
                        value:
                        '${widget.totalQuestions - widget.correctAnswers}',
                        color: AppTheme.danger,
                        icon: Icons.cancel_outlined,
                      ),
                    ),
                    const SizedBox(width: 12),
                    Expanded(
                      child: _ResultStat(
                        label: 'Total',
                        value: '${widget.totalQuestions}',
                        color: AppTheme.primary,
                        icon: Icons.assignment_outlined,
                      ),
                    ),
                  ],
                ),

                const SizedBox(height: 20),

                // ── Weak areas ─────────────────────────────────────────
                if (widget.weakSkillTags.isNotEmpty) ...[
                  Container(
                    padding: const EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      color: AppTheme.warning.withValues(alpha: 0.06),
                      borderRadius: BorderRadius.circular(16),
                      border: Border.all(
                          color: AppTheme.warning.withValues(alpha: 0.2)),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Row(
                          children: [
                            Icon(Icons.lightbulb_outline_rounded,
                                color: AppTheme.warning, size: 18),
                            SizedBox(width: 8),
                            Text('Areas to practise',
                                style: TextStyle(
                                    fontWeight: FontWeight.w700,
                                    fontSize: 14,
                                    color: AppTheme.textPrimary)),
                          ],
                        ),
                        const SizedBox(height: 10),
                        Wrap(
                          spacing: 8,
                          runSpacing: 6,
                          children: widget.weakSkillTags
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
                                color: AppTheme.warning,
                              ),
                            ),
                          ))
                              .toList(),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 20),
                ],

                // ── Teaching Tips ──────────────────────────────────────
                if (widget.teachingTips.isNotEmpty) ...[
                  Row(
                    children: [
                      Container(
                        padding: const EdgeInsets.all(6),
                        decoration: BoxDecoration(
                          color: AppTheme.primary.withValues(alpha: 0.1),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: const Icon(Icons.tips_and_updates_rounded,
                            color: AppTheme.primary, size: 16),
                      ),
                      const SizedBox(width: 8),
                      const Text(
                        'Teaching Tips',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w800,
                          color: AppTheme.textPrimary,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 4),
                  Text(
                    'Targeted strategies for ${widget.student.name}\'s weak areas',
                    style: const TextStyle(
                        fontSize: 12, color: AppTheme.textSecondary),
                  ),
                  const SizedBox(height: 12),
                  ...widget.teachingTips.asMap().entries.map(
                        (e) => TeachingTipCard(tip: e.value, index: e.key),
                  ),
                  const SizedBox(height: 8),
                ],

                // ── Promotion banner ───────────────────────────────────
                if (widget.promotionStatus == PromotionStatus.needsMorePractice) ...[
                  Container(
                    padding: const EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      color: AppTheme.primary.withValues(alpha: 0.06),
                      borderRadius: BorderRadius.circular(16),
                      border: Border.all(
                          color: AppTheme.primary.withValues(alpha: 0.2)),
                    ),
                    child: Row(
                      children: [
                        const Text('📚', style: TextStyle(fontSize: 26)),
                        const SizedBox(width: 12),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text('Keep going!',
                                  style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w800,
                                      color: AppTheme.textPrimary)),
                              const SizedBox(height: 3),
                              Text(
                                'Complete more assessments at ${ProgressionService.phaseLabel(widget.level)} '
                                    'to unlock the next level.',
                                style: const TextStyle(
                                    fontSize: 12,
                                    color: AppTheme.textSecondary),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 16),
                ],

                if (widget.promotionStatus == PromotionStatus.readyToPromote) ...[
                  Container(
                    padding: const EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [
                          const Color(0xFFFFD700).withValues(alpha: 0.15),
                          const Color(0xFFFFA500).withValues(alpha: 0.1),
                        ],
                      ),
                      borderRadius: BorderRadius.circular(16),
                      border: Border.all(
                          color: const Color(0xFFFFD700).withValues(alpha: 0.5)),
                    ),
                    child: Row(
                      children: [
                        const Text('🏆', style: TextStyle(fontSize: 28)),
                        const SizedBox(width: 12),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                'Ready to move up!',
                                style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w800,
                                  color: AppTheme.textPrimary,
                                ),
                              ),
                              const SizedBox(height: 3),
                              Text(
                                '${widget.student.name} has mastered ${ProgressionService.phaseLabel(widget.level)}. '
                                    'Their teacher will be notified to confirm the move to '
                                    '${ProgressionService.phaseLabel(ProgressionService().nextLevel(widget.level))}.',
                                style: const TextStyle(
                                    fontSize: 12,
                                    color: AppTheme.textSecondary),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 16),
                ],

                if (widget.promotionStatus == PromotionStatus.atTopLevel) ...[
                  Container(
                    padding: const EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      color: AppTheme.success.withValues(alpha: 0.08),
                      borderRadius: BorderRadius.circular(16),
                      border: Border.all(
                          color: AppTheme.success.withValues(alpha: 0.3)),
                    ),
                    child: const Row(
                      children: [
                        Text('🌟', style: TextStyle(fontSize: 28)),
                        SizedBox(width: 12),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Top of the class!',
                                  style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w800,
                                      color: AppTheme.textPrimary)),
                              SizedBox(height: 3),
                              Text(
                                'This student has completed all phases of the phonics curriculum.',
                                style: TextStyle(
                                    fontSize: 12,
                                    color: AppTheme.textSecondary),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 16),
                ],

                // ── Done / Next actions ────────────────────────────────
                Row(
                  children: [
                    Expanded(
                      child: OutlinedButton.icon(
                        icon: const Icon(Icons.person_outlined),
                        label: const Text('Back to Profile'),
                        style: OutlinedButton.styleFrom(
                          foregroundColor: AppTheme.primary,
                          side: const BorderSide(color: AppTheme.primary),
                          padding: const EdgeInsets.symmetric(vertical: 14),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(14)),
                        ),
                        onPressed: () {
                          // Pop result screen AND assessment screen
                          // to return to the profile with fresh data
                          Navigator.pop(context);
                          Navigator.pop(context);
                        },
                      ),
                    ),
                    const SizedBox(width: 12),
                    Expanded(
                      child: Container(
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
                          icon: const Icon(Icons.replay_rounded,
                              color: Colors.white),
                          label: const Text('New Assessment',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w700)),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.transparent,
                            shadowColor: Colors.transparent,
                            padding: const EdgeInsets.symmetric(vertical: 14),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(14)),
                          ),
                          onPressed: () {
                            // Pop result, then pop assessment — profile's
                            // _loadAssessments fires on return via its
                            // Navigator.push(...).then((_) => _loadAssessments())
                            Navigator.pop(context);
                            Navigator.pop(context);
                          },
                        ),
                      ),
                    ),
                  ],
                ),

                const SizedBox(height: 16),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

// ── Result stat card ──────────────────────────────────────────────────────────
class _ResultStat extends StatelessWidget {
  final String label;
  final String value;
  final Color color;
  final IconData icon;

  const _ResultStat({
    required this.label,
    required this.value,
    required this.color,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 8),
      decoration: BoxDecoration(
        color: color.withValues(alpha: 0.06),
        borderRadius: BorderRadius.circular(14),
        border: Border.all(color: color.withValues(alpha: 0.15)),
      ),
      child: Column(
        children: [
          Icon(icon, color: color, size: 22),
          const SizedBox(height: 6),
          Text(value,
              style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.w800,
                  color: color)),
          const SizedBox(height: 2),
          Text(label,
              style: const TextStyle(
                  fontSize: 11,
                  color: AppTheme.textSecondary,
                  fontWeight: FontWeight.w500)),
        ],
      ),
    );
  }
}

// ── Assessment Set Picker ─────────────────────────────────────────────────────
class _AssessmentSetPicker extends StatelessWidget {
  final String weekTitle;
  final String level;
  final int weekNumber;
  final int termNumber;
  final QuestionService questionService;
  final void Function(int set) onSetChosen;
  final VoidCallback onBack;

  const _AssessmentSetPicker({
    required this.weekTitle,
    required this.level,
    required this.weekNumber,
    required this.termNumber,
    required this.questionService,
    required this.onSetChosen,
    required this.onBack,
  });

  @override
  Widget build(BuildContext context) {
    final levelColor = AppTheme.levelColor(level);
    final availableSets = questionService.availableSetsForWeek(
      level: level,
      weekNumber: weekNumber,
      termNumber: termNumber,
    );
    // If no week-specific sets yet, default to showing sets 1 & 2
    final sets = availableSets.isEmpty ? {1, 2} : availableSets;
    final setList = sets.toList()..sort();

    final setLabels = {
      1: ('Assessment 1', 'First attempt\nFormative check', Icons.looks_one_rounded),
      2: ('Assessment 2', 'Second attempt\nConsolidation', Icons.looks_two_rounded),
      3: ('Assessment 3', 'Third attempt\nRe-assessment', Icons.looks_3_rounded),
    };

    return Scaffold(
      backgroundColor: AppTheme.surface,
      body: SafeArea(
        child: Column(
          children: [
            // Header
            Container(
              padding: const EdgeInsets.fromLTRB(16, 20, 16, 24),
              decoration: BoxDecoration(
                color: levelColor,
                borderRadius: const BorderRadius.vertical(bottom: Radius.circular(24)),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  IconButton(
                    onPressed: onBack,
                    icon: const Icon(Icons.arrow_back_rounded, color: Colors.white),
                    padding: EdgeInsets.zero,
                  ),
                  const SizedBox(height: 8),
                  Text(weekTitle,
                      style: const TextStyle(
                          color: Colors.white70, fontSize: 13, fontWeight: FontWeight.w500)),
                  const SizedBox(height: 4),
                  const Text('Choose Assessment',
                      style: TextStyle(
                          color: Colors.white, fontSize: 24, fontWeight: FontWeight.w800)),
                  const SizedBox(height: 8),
                  const Text(
                    'Each assessment uses a different set of questions\non the same topic.',
                    style: TextStyle(color: Colors.white70, fontSize: 13),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 32),

            // Set buttons
            Expanded(
              child: ListView(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                children: setList.map((setNum) {
                  final info = setLabels[setNum]!;
                  return Padding(
                    padding: const EdgeInsets.only(bottom: 16),
                    child: Material(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                      child: InkWell(
                        onTap: () => onSetChosen(setNum),
                        borderRadius: BorderRadius.circular(20),
                        child: Container(
                          padding: const EdgeInsets.all(24),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            border: Border.all(color: Colors.grey.shade100),
                          ),
                          child: Row(
                            children: [
                              Container(
                                width: 56,
                                height: 56,
                                decoration: BoxDecoration(
                                  color: levelColor.withValues(alpha: 0.1),
                                  borderRadius: BorderRadius.circular(16),
                                ),
                                child: Icon(info.$3, color: levelColor, size: 28),
                              ),
                              const SizedBox(width: 20),
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(info.$1,
                                        style: const TextStyle(
                                            fontSize: 17,
                                            fontWeight: FontWeight.w800,
                                            color: AppTheme.textPrimary)),
                                    const SizedBox(height: 4),
                                    Text(info.$2,
                                        style: const TextStyle(
                                            fontSize: 13,
                                            color: AppTheme.textSecondary,
                                            height: 1.4)),
                                  ],
                                ),
                              ),
                              Icon(Icons.arrow_forward_ios_rounded,
                                  size: 16, color: levelColor),
                            ],
                          ),
                        ),
                      ),
                    ),
                  );
                }).toList(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
import 'package:flutter/material.dart';
import '../../../core/models/teaching_tip.dart';
import '../../../core/theme/app_theme.dart';

class TeachingTipCard extends StatefulWidget {
  final TeachingTip tip;
  final int index;

  const TeachingTipCard({super.key, required this.tip, required this.index});

  @override
  State<TeachingTipCard> createState() => _TeachingTipCardState();
}

class _TeachingTipCardState extends State<TeachingTipCard> {
  bool _expanded = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 12),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: const Color(0xFF2D6A4F).withValues(alpha: 0.15)),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.04),
            blurRadius: 8,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          // ── Header ─────────────────────────────────────────────────────
          GestureDetector(
            onTap: () => setState(() => _expanded = !_expanded),
            child: Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: const Color(0xFF2D6A4F).withValues(alpha: 0.04),
                borderRadius: _expanded
                    ? const BorderRadius.vertical(top: Radius.circular(16))
                    : BorderRadius.circular(16),
              ),
              child: Row(
                children: [
                  Container(
                    width: 32,
                    height: 32,
                    decoration: BoxDecoration(
                      color: AppTheme.primary.withValues(alpha: 0.12),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Center(
                      child: Text(
                        '💡',
                        style: const TextStyle(fontSize: 16),
                      ),
                    ),
                  ),
                  const SizedBox(width: 12),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Teaching Tip ${widget.index + 1}',
                          style: const TextStyle(
                            fontSize: 11,
                            fontWeight: FontWeight.w600,
                            color: AppTheme.primary,
                            letterSpacing: 0.5,
                          ),
                        ),
                        const SizedBox(height: 2),
                        Text(
                          widget.tip.headline,
                          style: const TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w700,
                            color: AppTheme.textPrimary,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Icon(
                    _expanded
                        ? Icons.keyboard_arrow_up_rounded
                        : Icons.keyboard_arrow_down_rounded,
                    color: AppTheme.textSecondary,
                    size: 20,
                  ),
                ],
              ),
            ),
          ),

          // ── Expandable content ──────────────────────────────────────────
          AnimatedCrossFade(
            duration: const Duration(milliseconds: 250),
            crossFadeState: _expanded
                ? CrossFadeState.showSecond
                : CrossFadeState.showFirst,
            firstChild: const SizedBox.shrink(),
            secondChild: Padding(
              padding: const EdgeInsets.fromLTRB(16, 0, 16, 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Divider(height: 20),

                  // Exercise
                  _TipSection(
                    icon: '🎯',
                    label: 'Try this now',
                    content: widget.tip.exercise,
                    contentColor: AppTheme.textPrimary,
                  ),

                  const SizedBox(height: 14),

                  // Example words
                  _TipSection(
                    icon: '📝',
                    label: 'Example words to practise',
                    content: null,
                    chips: widget.tip.exampleWords,
                  ),

                  const SizedBox(height: 14),

                  // What to avoid
                  _TipSection(
                    icon: '⚠️',
                    label: 'What to avoid',
                    content: widget.tip.avoid,
                    contentColor: AppTheme.danger,
                    bgColor: AppTheme.danger.withValues(alpha: 0.04),
                  ),

                  const SizedBox(height: 14),

                  // Classroom activity
                  _TipSection(
                    icon: '🏫',
                    label: 'Classroom activity',
                    content: widget.tip.classroomActivity,
                    contentColor: AppTheme.textPrimary,
                    bgColor: AppTheme.primary.withValues(alpha: 0.04),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

// ── Section within a tip card ─────────────────────────────────────────────────
class _TipSection extends StatelessWidget {
  final String icon;
  final String label;
  final String? content;
  final List<String>? chips;
  final Color? contentColor;
  final Color? bgColor;

  const _TipSection({
    required this.icon,
    required this.label,
    required this.content,
    this.chips,
    this.contentColor,
    this.bgColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: bgColor ?? Colors.grey.shade50,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Text(icon, style: const TextStyle(fontSize: 14)),
              const SizedBox(width: 6),
              Text(
                label,
                style: const TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w700,
                  color: AppTheme.textSecondary,
                ),
              ),
            ],
          ),
          const SizedBox(height: 8),
          if (content != null)
            Text(
              content!,
              style: TextStyle(
                fontSize: 13,
                color: contentColor ?? AppTheme.textSecondary,
                height: 1.5,
              ),
            ),
          if (chips != null)
            Wrap(
              spacing: 6,
              runSpacing: 6,
              children: chips!
                  .map((word) => Container(
                padding: const EdgeInsets.symmetric(
                    horizontal: 10, vertical: 4),
                decoration: BoxDecoration(
                  color: AppTheme.primary.withValues(alpha: 0.08),
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(
                      color: AppTheme.primary.withValues(alpha: 0.2)),
                ),
                child: Text(
                  word,
                  style: const TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w600,
                    color: AppTheme.primary,
                  ),
                ),
              ))
                  .toList(),
            ),
        ],
      ),
    );
  }
}
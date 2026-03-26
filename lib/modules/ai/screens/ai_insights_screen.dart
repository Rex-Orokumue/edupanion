import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:fl_chart/fl_chart.dart';
import '../../../core/models/student.dart';
import '../../../core/models/assessment.dart';
import '../../../core/services/ai_service.dart';

class AiInsightsScreen extends StatefulWidget {
  final Student student;
  final List<Assessment> assessments;

  const AiInsightsScreen({
    super.key,
    required this.student,
    required this.assessments,
  });

  @override
  State<AiInsightsScreen> createState() => _AiInsightsScreenState();
}

class _AiInsightsScreenState extends State<AiInsightsScreen> {
  final AiService _aiService = AiService();
  String? _insights;
  bool _isLoading = false;
  String? _error;

  late final List<Assessment> _sorted;

  @override
  void initState() {
    super.initState();
    _sorted = [...widget.assessments]
      ..sort((a, b) => a.date.compareTo(b.date));
    _loadInsights();
  }

  Future<void> _loadInsights() async {
    if (!mounted) return;
    setState(() {
      _isLoading = true;
      _error = null;
    });
    try {
      final insights = await _aiService.getPhonicsInsights(
        student: widget.student,
        assessments: widget.assessments,
      );
      if (!mounted) return;
      setState(() {
        _insights = insights;
        _isLoading = false;
      });
    } catch (e) {
      if (!mounted) return;
      setState(() {
        _error = e.toString();
        _isLoading = false;
      });
    }
  }

  Color _scoreColor(double score) {
    if (score >= 80) return Colors.green;
    if (score >= 50) return Colors.orange;
    return Colors.red;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('AI Insights — ${widget.student.name}'),
        actions: [
          IconButton(
            icon: const Icon(Icons.refresh),
            onPressed: _isLoading ? null : _loadInsights,
          ),
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [

            // ── Score Trend Chart ─────────────────────────────────────────
            if (_sorted.length >= 2) ...[
              const Text(
                'Score Trend',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 12),
              Card(
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(8, 20, 20, 12),
                  child: SizedBox(
                    height: 200,
                    child: LineChart(
                      LineChartData(
                        minY: 0,
                        maxY: 100,
                        gridData: FlGridData(
                          show: true,
                          horizontalInterval: 25,
                          getDrawingHorizontalLine: (value) => FlLine(
                            color: Colors.grey.shade200,
                            strokeWidth: 1,
                          ),
                          drawVerticalLine: false,
                        ),
                        borderData: FlBorderData(show: false),
                        titlesData: FlTitlesData(
                          leftTitles: AxisTitles(
                            sideTitles: SideTitles(
                              showTitles: true,
                              interval: 25,
                              reservedSize: 36,
                              getTitlesWidget: (value, meta) => Text(
                                '${value.toInt()}%',
                                style: const TextStyle(
                                    fontSize: 10, color: Colors.grey),
                              ),
                            ),
                          ),
                          bottomTitles: AxisTitles(
                            sideTitles: SideTitles(
                              showTitles: true,
                              getTitlesWidget: (value, meta) {
                                final index = value.toInt();
                                if (index < 0 || index >= _sorted.length) {
                                  return const SizedBox.shrink();
                                }
                                return Text(
                                  '#${index + 1}',
                                  style: const TextStyle(
                                      fontSize: 10, color: Colors.grey),
                                );
                              },
                            ),
                          ),
                          rightTitles: const AxisTitles(
                              sideTitles: SideTitles(showTitles: false)),
                          topTitles: const AxisTitles(
                              sideTitles: SideTitles(showTitles: false)),
                        ),
                        lineBarsData: [
                          LineChartBarData(
                            spots: _sorted.asMap().entries.map((e) {
                              return FlSpot(
                                e.key.toDouble(),
                                e.value.score,
                              );
                            }).toList(),
                            isCurved: true,
                            color: Colors.indigo,
                            barWidth: 3,
                            dotData: FlDotData(
                              show: true,
                              getDotPainter: (spot, _, _, _) =>
                                  FlDotCirclePainter(
                                    radius: 5,
                                    color: _scoreColor(spot.y),
                                    strokeWidth: 2,
                                    strokeColor: Colors.white,
                                  ),
                            ),
                            belowBarData: BarAreaData(
                              show: true,
                              color: Colors.indigo.withValues(alpha: 0.08),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20),
            ],

            // ── AI Diagnosis ──────────────────────────────────────────────
            const Text(
              'AI Phonics Diagnosis',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 12),

            if (_isLoading)
              const Card(
                child: Padding(
                  padding: EdgeInsets.all(32),
                  child: Column(
                    children: [
                      CircularProgressIndicator(),
                      SizedBox(height: 16),
                      Text(
                        'Analysing assessment data...',
                        style: TextStyle(color: Colors.grey),
                      ),
                    ],
                  ),
                ),
              )
            else if (_error != null)
              Card(
                color: Colors.red.shade50,
                child: Padding(
                  padding: const EdgeInsets.all(16),
                  child: Column(
                    children: [
                      const Icon(Icons.error_outline, color: Colors.red),
                      const SizedBox(height: 8),
                      Text(_error!,
                          textAlign: TextAlign.center,
                          style: const TextStyle(color: Colors.red)),
                      const SizedBox(height: 12),
                      ElevatedButton(
                        onPressed: _loadInsights,
                        child: const Text('Retry'),
                      ),
                    ],
                  ),
                ),
              )
            else if (_insights != null)
                Card(
                  child: Padding(
                    padding: const EdgeInsets.all(16),
                    child: MarkdownBody(
                      data: _insights!,
                      styleSheet: MarkdownStyleSheet(
                        h2: const TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: Colors.indigo),
                        p: const TextStyle(fontSize: 13, height: 1.5),
                        listBullet: const TextStyle(fontSize: 13),
                      ),
                    ),
                  ),
                ),
          ],
        ),
      ),
    );
  }
}
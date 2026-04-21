import 'dart:convert';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:http/http.dart' as http;
import '../models/student.dart';
import '../models/assessment.dart';

class AiService {
  static String get _apiKey => dotenv.env['GROQ_API_KEY'] ?? '';
  static const String _apiUrl = 'https://api.groq.com/openai/v1/chat/completions';
  static const String _model = 'llama-3.3-70b-versatile';

  Future<String> getPhonicsInsights({
    required Student student,
    required List<Assessment> assessments,
  }) async {
    if (assessments.isEmpty) {
      return 'No assessment data available yet. '
          'Complete at least one assessment to get AI insights.';
    }

    final prompt = _buildPrompt(student, assessments);

    final response = await http.post(
      Uri.parse(_apiUrl),
      headers: {
        'Content-Type': 'application/json',
        'Authorization': 'Bearer $_apiKey',
      },
      body: jsonEncode({
        'model': _model,
        'messages': [
          {
            'role': 'system',
            'content': 'You are an expert phonics and early literacy specialist helping teachers understand student progress.',
          },
          {
            'role': 'user',
            'content': prompt,
          }
        ],
        'max_tokens': 1024,
        'temperature': 0.7,
      }),
    );

    if (response.statusCode == 200) {
      final data = jsonDecode(response.body);
      return data['choices'][0]['message']['content'] as String;
    } else {
      throw Exception('AI request failed: ${response.statusCode} — ${response.body}');
    }
  }

  String _buildPrompt(Student student, List<Assessment> assessments) {
    final sorted = [...assessments]..sort((a, b) => a.date.compareTo(b.date));

    final assessmentSummary = sorted.asMap().entries.map((entry) {
      final i = entry.key + 1;
      final a = entry.value;
      final weakTags = a.weakSkillTags.isEmpty
          ? 'none'
          : a.weakSkillTags.map((t) => t.replaceAll('_', ' ')).join(', ');
      return 'Assessment $i (${a.level}): '
          '${a.correctAnswers}/${a.totalQuestions} correct, '
          'score ${a.score.toStringAsFixed(0)}%, '
          'weak areas: $weakTags';
    }).join('\n');

    final avgScore = assessments.map((a) => a.score).reduce((a, b) => a + b) /
        assessments.length;

    final allWeakTags = assessments
        .expand((a) => a.weakSkillTags)
        .toSet()
        .map((t) => t.replaceAll('_', ' '))
        .join(', ');

    final gender = student.gender ?? 'other';
    final pronounLine = gender == 'male'
        ? 'Gender: Male — use he/him pronouns'
        : gender == 'female'
        ? 'Gender: Female — use she/her pronouns'
        : 'Gender: Not specified — use they/them pronouns';

    return '''
Analyse the following student assessment data and provide a clear, actionable diagnosis for the teacher.

Student: ${student.name}
Age: ${student.age}
$pronounLine
Current Level: ${student.level}
Total Assessments: ${assessments.length}
Average Score: ${avgScore.toStringAsFixed(1)}%
Recurring Weak Areas: ${allWeakTags.isEmpty ? 'none identified' : allWeakTags}

Assessment History:
$assessmentSummary

Please provide:
1. **Overall Phonics Profile** — a brief summary of where this student stands in the SSP curriculum
2. **Key Strengths** — what the student is doing well, with specific skill tags
3. **Priority Areas for Improvement** — the most critical skills to focus on next, ordered by urgency
4. **Specific Teaching Strategies** — 3 to 5 concrete activities the teacher can use immediately in the classroom, tailored to the weak areas
5. **Suggested Practice Words** — 6 to 8 specific words the teacher should use when practising the priority skills
6. **Progress Trend** — whether the student is improving, plateauing, or declining, and what this suggests
7. **Promotion Readiness** — based on the scores, is this student close to being ready for the next phase?

Keep your response practical and teacher-friendly. Use simple language a classroom teacher can act on immediately. Use bullet points and bold headings.
''';
  }
}
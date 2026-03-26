import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;
import 'package:printing/printing.dart';
import '../models/student.dart';
import '../models/assessment.dart';

class ReportService {
  /// Generates and shares a PDF report for a single student.
  Future<void> generateStudentReport({
    required Student student,
    required List<Assessment> assessments,
  }) async {
    final pdf = pw.Document();

    assessments.sort((a, b) => b.date.compareTo(a.date));

    final double avgScore = assessments.isEmpty
        ? 0
        : assessments.map((a) => a.score).reduce((a, b) => a + b) /
        assessments.length;

    final Set<String> allWeakTags =
    assessments.expand((a) => a.weakSkillTags).toSet();

    pdf.addPage(
      pw.MultiPage(
        pageFormat: PdfPageFormat.a4,
        margin: const pw.EdgeInsets.all(40),
        header: (context) => _buildHeader(student),
        footer: (context) => _buildFooter(context),
        build: (context) => [
          pw.SizedBox(height: 16),

          // ── Student Info ──────────────────────────────────────────────
          _sectionTitle('Student Information'),
          pw.SizedBox(height: 8),
          _infoTable([
            ['Name', student.name],
            ['Age', '${student.age} years'],
            ['Level', _capitalize(student.level)],
            ['Report Date', _formatDate(DateTime.now())],
          ]),

          pw.SizedBox(height: 20),

          // ── Summary ───────────────────────────────────────────────────
          _sectionTitle('Performance Summary'),
          pw.SizedBox(height: 8),
          _infoTable([
            ['Total Assessments', '${assessments.length}'],
            ['Average Score', '${avgScore.toStringAsFixed(1)}%'],
            ['Performance Status', _scoreLabel(avgScore)],
            [
              'Weak Areas',
              allWeakTags.isEmpty
                  ? 'None identified'
                  : allWeakTags
                  .map((t) => t.replaceAll('_', ' '))
                  .join(', ')
            ],
          ]),

          pw.SizedBox(height: 20),

          // ── Assessment History ────────────────────────────────────────
          if (assessments.isNotEmpty) ...[
            _sectionTitle('Assessment History'),
            pw.SizedBox(height: 8),
            _assessmentTable(assessments),
          ] else ...[
            pw.Text('No assessments recorded yet.',
                style: pw.TextStyle(
                    color: PdfColors.grey,
                    fontStyle: pw.FontStyle.italic)),
          ],

          pw.SizedBox(height: 20),

          // ── Recommendations ───────────────────────────────────────────
          if (allWeakTags.isNotEmpty) ...[
            _sectionTitle('Recommendations'),
            pw.SizedBox(height: 8),
            ...allWeakTags.map((tag) => pw.Padding(
              padding: const pw.EdgeInsets.only(bottom: 6),
              child: pw.Row(
                crossAxisAlignment: pw.CrossAxisAlignment.start,
                children: [
                  pw.Text('• ',
                      style:
                      pw.TextStyle(fontWeight: pw.FontWeight.bold)),
                  pw.Expanded(
                    child: pw.Text(
                      _recommendationFor(tag),
                      style: const pw.TextStyle(fontSize: 11),
                    ),
                  ),
                ],
              ),
            )),
          ],
        ],
      ),
    );

    // Share / print the PDF
    await Printing.sharePdf(
      bytes: await pdf.save(),
      filename: '${student.name.replaceAll(' ', '_')}_report.pdf',
    );
  }

  // ── Header ──────────────────────────────────────────────────────────────
  pw.Widget _buildHeader(Student student) {
    return pw.Container(
      padding: const pw.EdgeInsets.only(bottom: 12),
      decoration: const pw.BoxDecoration(
        border: pw.Border(
          bottom: pw.BorderSide(color: PdfColors.indigo, width: 2),
        ),
      ),
      child: pw.Row(
        mainAxisAlignment: pw.MainAxisAlignment.spaceBetween,
        children: [
          pw.Text(
            'EduPanion',
            style: pw.TextStyle(
              fontSize: 20,
              fontWeight: pw.FontWeight.bold,
              color: PdfColors.indigo,
            ),
          ),
          pw.Text(
            'Student Progress Report',
            style: pw.TextStyle(
              fontSize: 13,
              color: PdfColors.grey700,
            ),
          ),
        ],
      ),
    );
  }

  // ── Footer ──────────────────────────────────────────────────────────────
  pw.Widget _buildFooter(pw.Context context) {
    return pw.Container(
      padding: const pw.EdgeInsets.only(top: 8),
      decoration: const pw.BoxDecoration(
        border: pw.Border(
          top: pw.BorderSide(color: PdfColors.grey300, width: 1),
        ),
      ),
      child: pw.Row(
        mainAxisAlignment: pw.MainAxisAlignment.spaceBetween,
        children: [
          pw.Text('Generated by EduPanion',
              style: const pw.TextStyle(
                  fontSize: 9, color: PdfColors.grey)),
          pw.Text('Page ${context.pageNumber} of ${context.pagesCount}',
              style: const pw.TextStyle(
                  fontSize: 9, color: PdfColors.grey)),
        ],
      ),
    );
  }

  // ── Section title ────────────────────────────────────────────────────────
  pw.Widget _sectionTitle(String title) {
    return pw.Container(
      padding: const pw.EdgeInsets.symmetric(vertical: 6, horizontal: 10),
      decoration: const pw.BoxDecoration(color: PdfColors.indigo50),
      child: pw.Text(
        title,
        style: pw.TextStyle(
          fontSize: 13,
          fontWeight: pw.FontWeight.bold,
          color: PdfColors.indigo900,
        ),
      ),
    );
  }

  // ── Info table ───────────────────────────────────────────────────────────
  pw.Widget _infoTable(List<List<String>> rows) {
    return pw.Table(
      border: pw.TableBorder.all(color: PdfColors.grey300, width: 0.5),
      columnWidths: {
        0: const pw.FlexColumnWidth(1),
        1: const pw.FlexColumnWidth(2),
      },
      children: rows
          .map(
            (row) => pw.TableRow(
          children: [
            pw.Padding(
              padding: const pw.EdgeInsets.all(8),
              child: pw.Text(row[0],
                  style: pw.TextStyle(
                      fontWeight: pw.FontWeight.bold, fontSize: 11)),
            ),
            pw.Padding(
              padding: const pw.EdgeInsets.all(8),
              child: pw.Text(row[1],
                  style: const pw.TextStyle(fontSize: 11)),
            ),
          ],
        ),
      )
          .toList(),
    );
  }

  // ── Assessment history table ─────────────────────────────────────────────
  pw.Widget _assessmentTable(List<Assessment> assessments) {
    return pw.Table(
      border: pw.TableBorder.all(color: PdfColors.grey300, width: 0.5),
      columnWidths: {
        0: const pw.FlexColumnWidth(1.2),
        1: const pw.FlexColumnWidth(1),
        2: const pw.FlexColumnWidth(0.8),
        3: const pw.FlexColumnWidth(2),
      },
      children: [
        // Header row
        pw.TableRow(
          decoration: const pw.BoxDecoration(color: PdfColors.indigo100),
          children: ['Date', 'Level', 'Score', 'Weak Areas']
              .map(
                (h) => pw.Padding(
              padding: const pw.EdgeInsets.all(8),
              child: pw.Text(h,
                  style: pw.TextStyle(
                      fontWeight: pw.FontWeight.bold, fontSize: 10)),
            ),
          )
              .toList(),
        ),
        // Data rows
        ...assessments.map(
              (a) => pw.TableRow(
            children: [
              pw.Padding(
                padding: const pw.EdgeInsets.all(8),
                child: pw.Text(_formatDate(a.date),
                    style: const pw.TextStyle(fontSize: 10)),
              ),
              pw.Padding(
                padding: const pw.EdgeInsets.all(8),
                child: pw.Text(_capitalize(a.level),
                    style: const pw.TextStyle(fontSize: 10)),
              ),
              pw.Padding(
                padding: const pw.EdgeInsets.all(8),
                child: pw.Text(
                  '${a.score.toStringAsFixed(0)}%',
                  style: pw.TextStyle(
                    fontSize: 10,
                    fontWeight: pw.FontWeight.bold,
                    color: a.score >= 80
                        ? PdfColors.green700
                        : a.score >= 50
                        ? PdfColors.orange700
                        : PdfColors.red700,
                  ),
                ),
              ),
              pw.Padding(
                padding: const pw.EdgeInsets.all(8),
                child: pw.Text(
                  a.weakSkillTags.isEmpty
                      ? '—'
                      : a.weakSkillTags
                      .map((t) => t.replaceAll('_', ' '))
                      .join(', '),
                  style: const pw.TextStyle(fontSize: 10),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  // ── Helpers ──────────────────────────────────────────────────────────────
  String _formatDate(DateTime date) =>
      '${date.day.toString().padLeft(2, '0')}/${date.month.toString().padLeft(2, '0')}/${date.year}';

  String _capitalize(String text) =>
      text[0].toUpperCase() + text.substring(1);

  String _scoreLabel(double score) {
    if (score >= 80) return 'Strong';
    if (score >= 50) return 'Developing';
    if (score > 0) return 'Needs Support';
    return 'Not yet assessed';
  }

  String _recommendationFor(String tag) {
    switch (tag) {
      case 'letter_sound':
        return 'Practise letter-sound correspondence using alphabet flashcards and sound isolation activities.';
      case 'short_vowel':
        return 'Reinforce short vowel sounds with CVC word sorting and vowel substitution games.';
      case 'cvc':
        return 'Build CVC word fluency through blending activities and word-building exercises.';
      case 'digraph':
        return 'Focus on common digraphs (sh, ch, th, wh) using picture-word matching activities.';
      case 'blend':
        return 'Practise consonant blends with onset-rime activities and blending drills.';
      case 'long_vowel':
        return 'Reinforce long vowel patterns using vowel team sorting and word family practice.';
      case 'silent_e':
        return 'Use magic-e word pairs (pin/pine, cap/cape) to build understanding of the silent e rule.';
      case 'r_controlled':
        return 'Practise r-controlled vowels (ar, er, ir, or, ur) with word sorting and reading passages.';
      case 'multisyllable':
        return 'Build syllable awareness through clapping syllables, syllable sorting, and compound word activities.';
      default:
        return 'Provide additional practice and targeted support for this skill area.';
    }
  }

  // ── Parent Report ─────────────────────────────────────────────────────────
  /// A warm, jargon-free one-pager for parents to take home.
  Future<void> generateParentReport({
    required Student student,
    required List<Assessment> assessments,
  }) async {
    final pdf = pw.Document();

    final avgScore = assessments.isEmpty
        ? 0.0
        : assessments.map((a) => a.score).reduce((a, b) => a + b) /
        assessments.length;

    final latest = assessments.isNotEmpty ? assessments.first : null;
    final allWeakTags =
    assessments.expand((a) => a.weakSkillTags).toSet().toList();
    final isDoingWell = avgScore >= 75;
    final needsSupport = avgScore < 50;

    pdf.addPage(
      pw.Page(
        pageFormat: PdfPageFormat.a4,
        margin: const pw.EdgeInsets.all(40),
        build: (context) => pw.Column(
          crossAxisAlignment: pw.CrossAxisAlignment.start,
          children: [
            // ── Header ─────────────────────────────────────────────────
            pw.Container(
              padding: const pw.EdgeInsets.all(20),
              decoration: pw.BoxDecoration(
                color: PdfColor.fromHex('2D6A4F'),
                borderRadius: pw.BorderRadius.circular(12),
              ),
              child: pw.Row(
                mainAxisAlignment: pw.MainAxisAlignment.spaceBetween,
                children: [
                  pw.Column(
                    crossAxisAlignment: pw.CrossAxisAlignment.start,
                    children: [
                      pw.Text('EduPanion',
                          style: pw.TextStyle(
                              color: PdfColors.white,
                              fontSize: 11,
                              fontWeight: pw.FontWeight.normal)),
                      pw.SizedBox(height: 4),
                      pw.Text('Reading Progress Report',
                          style: pw.TextStyle(
                              color: PdfColors.white,
                              fontSize: 20,
                              fontWeight: pw.FontWeight.bold)),
                      pw.SizedBox(height: 4),
                      pw.Text('For the family of ${student.name}',
                          style: const pw.TextStyle(
                              color: PdfColors.white, fontSize: 13)),
                    ],
                  ),
                  pw.Column(
                    crossAxisAlignment: pw.CrossAxisAlignment.end,
                    children: [
                      pw.Text(_formatDate(DateTime.now()),
                          style: const pw.TextStyle(
                              color: PdfColors.white, fontSize: 11)),
                    ],
                  ),
                ],
              ),
            ),

            pw.SizedBox(height: 24),

            // ── Greeting ───────────────────────────────────────────────
            pw.Text('Dear Parent or Carer,',
                style: pw.TextStyle(
                    fontSize: 13, fontWeight: pw.FontWeight.bold)),
            pw.SizedBox(height: 8),
            pw.Text(
              'We wanted to share a quick update on how ${student.name} is getting on with reading and phonics at school.',
              style: const pw.TextStyle(fontSize: 12, lineSpacing: 4),
            ),

            pw.SizedBox(height: 20),

            // ── Score summary ──────────────────────────────────────────
            pw.Container(
              padding: const pw.EdgeInsets.all(16),
              decoration: pw.BoxDecoration(
                color: isDoingWell
                    ? PdfColor.fromHex('F0FFF4')
                    : needsSupport
                    ? PdfColor.fromHex('FFF5F5')
                    : PdfColor.fromHex('FFFFF0'),
                borderRadius: pw.BorderRadius.circular(8),
                border: pw.Border.all(
                  color: isDoingWell
                      ? PdfColor.fromHex('2D6A4F')
                      : needsSupport
                      ? PdfColor.fromHex('E53E3E')
                      : PdfColor.fromHex('D69E2E'),
                  width: 1,
                ),
              ),
              child: pw.Row(
                mainAxisAlignment: pw.MainAxisAlignment.spaceBetween,
                children: [
                  pw.Column(
                    crossAxisAlignment: pw.CrossAxisAlignment.start,
                    children: [
                      pw.Text('Overall Score',
                          style: const pw.TextStyle(fontSize: 11)),
                      pw.SizedBox(height: 4),
                      pw.Text('${avgScore.toStringAsFixed(0)}%',
                          style: pw.TextStyle(
                              fontSize: 28,
                              fontWeight: pw.FontWeight.bold,
                              color: isDoingWell
                                  ? PdfColor.fromHex('2D6A4F')
                                  : needsSupport
                                  ? PdfColor.fromHex('E53E3E')
                                  : PdfColor.fromHex('D69E2E'))),
                    ],
                  ),
                  pw.Column(
                    crossAxisAlignment: pw.CrossAxisAlignment.end,
                    children: [
                      pw.Text(
                        isDoingWell
                            ? '🌟 Doing really well!'
                            : needsSupport
                            ? 'Needs extra practice'
                            : 'Making good progress',
                        style: pw.TextStyle(
                            fontSize: 12,
                            fontWeight: pw.FontWeight.bold),
                      ),
                      pw.SizedBox(height: 4),
                      pw.Text(
                          '${assessments.length} assessment${assessments.length == 1 ? '' : 's'} completed',
                          style: const pw.TextStyle(
                              fontSize: 11, color: PdfColors.grey700)),
                    ],
                  ),
                ],
              ),
            ),

            pw.SizedBox(height: 20),

            // ── What we're working on ──────────────────────────────────
            pw.Text('What we are working on',
                style: pw.TextStyle(
                    fontSize: 14, fontWeight: pw.FontWeight.bold)),
            pw.SizedBox(height: 6),
            pw.Text(
              _parentLevelDescription(student.level),
              style: const pw.TextStyle(fontSize: 12, lineSpacing: 4),
            ),

            if (latest != null) ...[
              pw.SizedBox(height: 20),
              pw.Text('Most recent assessment',
                  style: pw.TextStyle(
                      fontSize: 14, fontWeight: pw.FontWeight.bold)),
              pw.SizedBox(height: 6),
              pw.Text(
                '${student.name} answered ${latest.correctAnswers} out of ${latest.totalQuestions} questions correctly (${latest.score.toStringAsFixed(0)}%) on ${_formatDate(latest.date)}.',
                style: const pw.TextStyle(fontSize: 12, lineSpacing: 4),
              ),
            ],

            if (allWeakTags.isNotEmpty) ...[
              pw.SizedBox(height: 20),
              pw.Text('Areas to practise at home',
                  style: pw.TextStyle(
                      fontSize: 14, fontWeight: pw.FontWeight.bold)),
              pw.SizedBox(height: 6),
              ...allWeakTags.take(3).map((tag) => pw.Padding(
                padding: const pw.EdgeInsets.only(bottom: 6),
                child: pw.Row(
                  crossAxisAlignment: pw.CrossAxisAlignment.start,
                  children: [
                    pw.Text('• ',
                        style: pw.TextStyle(
                            fontWeight: pw.FontWeight.bold,
                            fontSize: 12)),
                    pw.Expanded(
                      child: pw.Text(
                        _parentTip(tag),
                        style: const pw.TextStyle(
                            fontSize: 12, lineSpacing: 3),
                      ),
                    ),
                  ],
                ),
              )),
            ],

            pw.SizedBox(height: 20),

            // ── Encouragement ──────────────────────────────────────────
            pw.Container(
              padding: const pw.EdgeInsets.all(14),
              decoration: pw.BoxDecoration(
                color: PdfColor.fromHex('F7FAFC'),
                borderRadius: pw.BorderRadius.circular(8),
              ),
              child: pw.Text(
                isDoingWell
                    ? '${student.name} is doing brilliantly — keep up the great work! Reading together at home for just 10 minutes a day makes a huge difference.'
                    : '${student.name} is working hard and every bit of practice helps. Try reading together for 10 minutes each evening — it really does make a big difference.',
                style: const pw.TextStyle(
                    fontSize: 12, lineSpacing: 4, color: PdfColors.grey800),
              ),
            ),

            pw.Spacer(),

            // ── Footer ─────────────────────────────────────────────────
            pw.Divider(),
            pw.SizedBox(height: 6),
            pw.Text(
              'This report was generated by EduPanion. If you have questions, please speak to your child\'s teacher.',
              style: const pw.TextStyle(
                  fontSize: 10, color: PdfColors.grey600),
            ),
          ],
        ),
      ),
    );

    await Printing.sharePdf(
      bytes: await pdf.save(),
      filename:
      '${student.name.replaceAll(' ', '_')}_parent_report.pdf',
    );
  }

  String _parentLevelDescription(String level) {
    switch (level) {
      case 'beginner':
        return 'Right now we are focusing on the sounds that letters make, '
            'learning to hear rhymes, and blending simple three-letter words like "cat", "sit", and "hop".';
      case 'intermediate':
        return 'We are now working on letter combinations like "sh", "ch", and "th", '
            'as well as vowel pairs like "ai" (rain) and "ee" (feet), and reading longer words.';
      case 'advanced':
        return 'We are exploring more complex spelling patterns, including "magic e" words like "cake" and "kite", '
            'as well as how prefixes and suffixes change the meaning of words.';
      default:
        return 'We are working on phonics and early reading skills.';
    }
  }

  String _parentTip(String tag) {
    switch (tag) {
      case 'rhyme':
        return 'Play rhyming games — say a word and take turns thinking of words that sound the same at the end. "Cat… hat… bat!"';
      case 'oral_blending':
        return 'Say sounds slowly and ask your child to guess the word: "/d/ /o/ /g/ — what\'s that word?"';
      case 'letter_sound':
        return 'Point to letters in books or around the house and ask your child what sound that letter makes (not its name).';
      case 'short_vowel':
        return 'Read simple three-letter books together and tap out the sounds in each word on your fingers.';
      case 'cvc_word':
        return 'Use magnetic letters on the fridge to build simple words like "cat", "pin", "hop". Change one letter at a time.';
      case 'digraph':
        return 'Look for "sh", "ch", and "th" words in books you read together. Point them out and say the sound.';
      case 'vowel_digraph':
        return 'When reading together, look for words where two vowels sit next to each other like "rain" or "feet".';
      case 'split_digraph':
        return 'Play the "magic e" game — write "pin", then add an "e" to make "pine". See how the vowel sound changes!';
      case 'consonant_cluster':
        return 'Practise words that start with two consonants: "stop", "frog", "blue". Clap the sounds together.';
      case 'prefix':
        return 'Talk about what "un-" and "re-" mean. "If happy means happy, what does unhappy mean?"';
      case 'suffix':
        return 'When reading, look for "-ing" and "-ed" endings and talk about what they tell us about the action.';
      case 'syllable':
        return 'Clap the beats in longer words when you say them: "el-e-phant" is three claps.';
      default:
        return 'Reading together for 10 minutes a day is the single most powerful thing you can do to support your child.';
    }
  }
}
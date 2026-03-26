import 'package:flutter_tts/flutter_tts.dart';

class TtsService {
  static final TtsService _instance = TtsService._internal();
  factory TtsService() => _instance;
  TtsService._internal();

  final FlutterTts _tts = FlutterTts();
  bool _isInitialized = false;
  bool _isSpeaking = false;

  bool get isSpeaking => _isSpeaking;

  // ── Phonics sound map ─────────────────────────────────────────────────────
  // Maps written phonics patterns to phonetic spellings TTS can pronounce
  static const Map<String, String> _phonicsMap = {
    // Digraphs — these are working well, keep them
    'sh': 'shh',
    'ch': 'chh',
    'th': 'thh',
    'wh': 'wh',
    'ph': 'fuh',
    'ng': 'ing',
    'ck': 'k',
    'gh': 'fuh',
    'kn': 'nuh',
    'wr': 'ruh',
    'mb': 'muh',

    // R-controlled vowels — use anchor words TTS handles well
    'ar': 'ar, as in car',
    'er': 'er, as in her',
    'ir': 'er, as in bird',
    'ur': 'er, as in turn',
    'or': 'or, as in for',
    'are': 'air, as in care',
    'ear': 'eer, as in hear',
    'eer': 'eer, as in deer',

    // Long vowel digraphs
    'ai': 'ay, as in rain',
    'ay': 'ay, as in day',
    'ea': 'ee, as in eat',
    'ee': 'ee, as in see',
    'ie': 'eye, as in pie',
    'igh': 'eye, as in night',
    'oa': 'oh, as in boat',
    'oe': 'oh, as in toe',
    'oo': 'oo, as in moon',
    'ue': 'you, as in blue',
    'ew': 'you, as in new',
    'ou': 'ow, as in out',
    'ow': 'ow, as in cow',
    'oi': 'oy, as in coin',
    'oy': 'oy, as in boy',
    'aw': 'aw, as in saw',
    'au': 'aw, as in fault',

    // Short vowels — just the phonetic sound, questions already say "short"
    'a': 'aah',
    'e': 'eh',
    'i': 'ih',
    'o': 'oh',
    'u': 'uh',

    // Consonants — use "uh" suffix with a word anchor
    'b': 'buh, as in ball',
    'c': 'kuh, as in cat',
    'k': 'kuh, as in kite',
    'd': 'duh, as in dog',
    'f': 'fuh, as in fish',
    'g': 'guh, as in go',
    'h': 'huh, as in hat',
    'j': 'juh, as in jump',
    'l': 'luh, as in leg',
    'm': 'muh, as in map',
    'n': 'nuh, as in net',
    'p': 'puh, as in pan',
    'r': 'ruh, as in run',
    's': 'suh, as in sun',
    't': 'tuh, as in top',
    'v': 'vuh, as in van',
    'w': 'wuh, as in wet',
    'x': 'ks, as in fox',
    'y': 'yuh, as in yes',
    'z': 'zuh, as in zip',

    // Blends
    'bl': 'bl, as in blue',
    'br': 'br, as in bring',
    'cl': 'cl, as in clap',
    'cr': 'cr, as in crab',
    'dr': 'dr, as in drop',
    'fl': 'fl, as in flag',
    'fr': 'fr, as in frog',
    'gl': 'gl, as in glad',
    'gr': 'gr, as in grab',
    'pl': 'pl, as in plan',
    'pr': 'pr, as in press',
    'sc': 'sk, as in scab',
    'sk': 'sk, as in skip',
    'sl': 'sl, as in slip',
    'sm': 'sm, as in smell',
    'sn': 'sn, as in snap',
    'sp': 'sp, as in spot',
    'st': 'st, as in step',
    'sw': 'sw, as in swim',
    'tr': 'tr, as in trip',
    'tw': 'tw, as in twin',
  };

  // ── Preprocess text for phonics-aware TTS ─────────────────────────────────
  String _preprocess(String text) {
    String result = text;

    // Replace /sound/ notation e.g. /ck/, /sh/, /b/
    // When followed by " sound", strip the "as in..." anchor to avoid
    // "buh as in ball sound" — just say "buh sound"
    result = result.replaceAllMapped(
      RegExp(r'/([a-zA-Z]+)/\s*sound', caseSensitive: false),
          (match) {
        final sound = match.group(1)!.toLowerCase();
        final full = _phonicsMap[sound] ?? sound;
        // Strip ", as in ..." part if present
        final short = full.contains(',') ? full.split(',')[0] : full;
        return '$short sound';
      },
    );

    // Replace remaining /sound/ notation not followed by "sound"
    result = result.replaceAllMapped(
      RegExp(r'/([a-zA-Z]+)/'),
          (match) {
        final sound = match.group(1)!.toLowerCase();
        return _phonicsMap[sound] ?? sound;
      },
    );

    // Replace "the X sound" — e.g. "the sh sound", "the ar sound"
    result = result.replaceAllMapped(
      RegExp(r'\bthe ([a-zA-Z]{1,3}) sound\b', caseSensitive: false),
          (match) {
        final sound = match.group(1)!.toLowerCase();
        if (_phonicsMap.containsKey(sound)) {
          final full = _phonicsMap[sound]!;
          final short = full.contains(',') ? full.split(',')[0] : full;
          return 'the $short sound';
        }
        return match.group(0)!;
      },
    );

    // Replace "X sound" without "the"
    result = result.replaceAllMapped(
      RegExp(r'\b([a-zA-Z]{1,3}) sound\b', caseSensitive: false),
          (match) {
        final sound = match.group(1)!.toLowerCase();
        if (_phonicsMap.containsKey(sound)) {
          final full = _phonicsMap[sound]!;
          final short = full.contains(',') ? full.split(',')[0] : full;
          return '$short sound';
        }
        return match.group(0)!;
      },
    );

    // Replace "X blend" / "X digraph"
    result = result.replaceAllMapped(
      RegExp(r'\b([a-zA-Z]{1,3}) (blend|digraph)\b', caseSensitive: false),
          (match) {
        final sound = match.group(1)!.toLowerCase();
        final type = match.group(2)!;
        if (_phonicsMap.containsKey(sound)) {
          final full = _phonicsMap[sound]!;
          final short = full.contains(',') ? full.split(',')[0] : full;
          return '$short $type';
        }
        return match.group(0)!;
      },
    );

    return result;
  }

  Future<void> initialize() async {
    if (_isInitialized) return;

    await _tts.setLanguage('en-US');
    await _tts.setSpeechRate(0.38); // Slow for young learners
    await _tts.setVolume(1.0);
    await _tts.setPitch(1.05);

    _tts.setStartHandler(() => _isSpeaking = true);
    _tts.setCompletionHandler(() => _isSpeaking = false);
    _tts.setCancelHandler(() => _isSpeaking = false);
    _tts.setErrorHandler((msg) {
      _isSpeaking = false;
      _isInitialized = false; // Force reinit next time
    });

    _isInitialized = true;
  }

  Future<void> speak(String text) async {
    try {
      await initialize();
      // Stop any current speech before starting new
      final result = await _tts.stop();
      if (result == 1 || result == null) {
        final processed = _preprocess(text);
        await _tts.speak(processed);
      }
    } catch (e) {
      _isInitialized = false; // Force reinit on next attempt
    }
  }

  Future<void> stop() async {
    try {
      await _tts.stop();
    } catch (_) {}
    _isSpeaking = false;
  }

  void dispose() {
    _tts.stop();
    _isInitialized = false;
  }
}
import '../models/teaching_tip.dart';

/// Rule-based micro teaching prompts — fully offline, zero latency.
/// Each skill tag has 2–3 tips. Up to 3 tips are shown per session,
/// one per weak skill tag, rotated so the teacher sees variety.
class TeachingTipsService {
  static final Map<String, List<TeachingTip>> _tips = {

    // ── Phase 1 ───────────────────────────────────────────────────────────
    'rhyme': [
      TeachingTip(
        skillTag: 'rhyme',
        headline: 'Build a rhyme chain together',
        exercise: 'Say a word — "cat" — and ask the child to think of a word '
            'that sounds the same at the end. Take turns adding to the chain: '
            'cat → hat → bat → sat.',
        exampleWords: ['cat / hat / bat', 'big / pig / wig', 'hop / top / mop'],
        avoid: 'Avoid asking "does this rhyme?" with a yes/no. '
            'Instead ask "what sounds the same as cat?"',
        classroomActivity: 'Rhyme circle — each child adds one word to the chain. '
            'Clap on the rhyming part to make it physical.',
      ),
      TeachingTip(
        skillTag: 'rhyme',
        headline: 'Use nursery rhymes as anchors',
        exercise: 'Read a familiar rhyme slowly and pause before the rhyming word. '
            'Let the child fill in the blank: "Humpty Dumpty had a great ___".',
        exampleWords: ['wall / fall', 'hill / Jill', 'sheep / sleep'],
        avoid: 'Avoid correcting immediately. Let the child self-correct by '
            'continuing to read — they will often hear their own mistake.',
        classroomActivity: 'Odd one out — say three words, two that rhyme and '
            'one that doesn\'t. Children hold up a thumb for the odd one out.',
      ),
    ],

    'alliteration': [
      TeachingTip(
        skillTag: 'alliteration',
        headline: 'Listen for the first sound',
        exercise: 'Place 4–5 objects on the table. Ask: "Which ones start with '
            'the same sound as snake?" The child points or picks them up.',
        exampleWords: ['sun / sand / sock', 'ball / bird / book', 'mat / moon / mug'],
        avoid: 'Avoid saying the letter name. Say the sound: "ssss" not "ess".',
        classroomActivity: 'Alliteration tongue twisters — "Sally sells seashells". '
            'Ask children to clap on every word that starts with /s/.',
      ),
    ],

    'oral_blending': [
      TeachingTip(
        skillTag: 'oral_blending',
        headline: 'Stretch — then snap together',
        exercise: 'Say each sound slowly with a pause: "/c/ ... /a/ ... /t/". '
            'Then say it faster each time until the child hears the word. '
            'Use your fingers — one finger per sound.',
        exampleWords: ['c-a-t → cat', 's-i-t → sit', 'm-a-p → map'],
        avoid: 'Avoid blending sounds that distort — say "mmm" not "muh", '
            '"sss" not "suh". Adding "uh" to consonants breaks blending.',
        classroomActivity: 'Robot talk — speak in robot sounds and children '
            'translate into normal words. "The r-o-b-oo-t says hello."',
      ),
      TeachingTip(
        skillTag: 'oral_blending',
        headline: 'Use a slinky or rubber band',
        exercise: 'Stretch a rubber band as you say each sound, then release it '
            'as you blend. The physical action reinforces the concept of '
            'separate sounds joining into one word.',
        exampleWords: ['d-o-g → dog', 'p-i-n → pin', 'r-u-n → run'],
        avoid: 'Don\'t rush. Children need 2–3 seconds between sounds at first.',
        classroomActivity: 'Sound buttons — draw dots under each letter of a word '
            'on a whiteboard. Children tap each dot as they say the sound.',
      ),
    ],

    'letter_sound': [
      TeachingTip(
        skillTag: 'letter_sound',
        headline: 'Anchor each letter to a picture and action',
        exercise: 'For each tricky letter, use an action: /s/ — wave your hand '
            'like a snake. /m/ — rub your tummy. /b/ — bounce an imaginary ball. '
            'Say the sound, do the action, then find it in a word.',
        exampleWords: ['s — sun, sit, sand', 'm — map, mug, man', 'b — bat, bed, bus'],
        avoid: 'Never say letter names during phonics teaching. '
            '"Bee" teaches the name, not the sound /b/.',
        classroomActivity: 'Sound hunt — give children old magazines. '
            'They cut out pictures of things that start with the target sound.',
      ),
      TeachingTip(
        skillTag: 'letter_sound',
        headline: 'Distinguish easily confused letters',
        exercise: 'For b/d confusion: write a bed — the b faces right (headboard) '
            'and d faces left (footboard). For p/q: p hangs down, q hangs down too '
            'but faces right. Repeat daily until automatic.',
        exampleWords: ['b — bat, ball, bus', 'd — dog, dig, dot', 'p — pan, pin, pop'],
        avoid: 'Avoid drilling b and d together — this increases confusion. '
            'Master one fully before introducing the other.',
        classroomActivity: 'Letter formation in sand trays or on each other\'s backs. '
            'Multi-sensory input strengthens letter-sound memory.',
      ),
    ],

    'short_vowel': [
      TeachingTip(
        skillTag: 'short_vowel',
        headline: 'Anchor vowels to key words and mouth shapes',
        exercise: 'For each short vowel, use an anchor word with a mouth action: '
            '/a/ — "apple" (mouth wide open), /e/ — "egg" (slight smile), '
            '/i/ — "itch" (short sharp), /o/ — "on" (round lips), /u/ — "up" (lips loose).',
        exampleWords: ['a — cat, hat, map', 'e — bed, hen, leg', 'i — big, sit, tip',
          'o — dog, hop, top', 'u — bug, run, cup'],
        avoid: 'Don\'t mix long and short vowels in the same lesson — '
            'children confuse "a in apple" with "a in ape".',
        classroomActivity: 'Vowel swap — write a CVC word on the board and '
            'change only the vowel: cat → cot → cut → cit → cet. '
            'Children read each new word.',
      ),
    ],

    'cvc_word': [
      TeachingTip(
        skillTag: 'cvc_word',
        headline: 'Finger blending with CVC words',
        exercise: 'Hold up three fingers. Touch each finger as you say each '
            'sound of the word. Then slide a thumb across all three fingers '
            'as you blend: "c — a — t … cat". '
            'The child mirrors the action.',
        exampleWords: ['cat', 'sit', 'hop', 'mud', 'pen'],
        avoid: 'Don\'t skip the segmenting step. Children need to break words '
            'apart before they can blend them back together.',
        classroomActivity: 'CVC word building with letter cards — lay out vowels '
            'in the middle, consonants on each side. Children build words '
            'by selecting one from each pile.',
      ),
    ],

    // ── Phase 3 ───────────────────────────────────────────────────────────
    'digraph': [
      TeachingTip(
        skillTag: 'digraph',
        headline: 'Two letters, one sound',
        exercise: 'Write "sh" on a card and cover one letter at a time. '
            'Show that neither /s/ nor /h/ alone makes the sound — '
            'only together do they make /shh/. '
            'Let the child hold the two letter cards and push them together.',
        exampleWords: ['sh — ship, shop, fish', 'ch — chin, chip, much',
          'th — thin, path, with', 'ng — ring, song, long'],
        avoid: 'Don\'t say "s-h says sh". Say "sh together makes /shh/".',
        classroomActivity: 'Digraph sort — write words on cards, children sort '
            'them into piles by their digraph. Time the sort for fun.',
      ),
      TeachingTip(
        skillTag: 'digraph',
        headline: 'Find the digraph in words',
        exercise: 'Say a word and ask the child to clap when they hear the '
            'digraph sound. "I\'m going to say a word — clap when you hear /shh/": '
            'fish 🎯, sand, ship 🎯, cat, brush 🎯.',
        exampleWords: ['ck — duck, back, clock', 'wh — when, whip, wheel',
          'ph — phone, photo, dolphin'],
        avoid: 'Avoid writing the digraph as two separate sounds in a word — '
            'always underline or colour them as a unit.',
        classroomActivity: 'Digraph hunt in reading books — children underline '
            'every digraph they spot with a coloured pencil.',
      ),
    ],

    'vowel_digraph': [
      TeachingTip(
        skillTag: 'vowel_digraph',
        headline: '"When two vowels go walking, the first one does the talking"',
        exercise: 'Teach the jingle for ai, ea, oa, ee. Write "rain" — underline '
            '"ai" and explain the first vowel /a/ says its name. '
            'Then practise reading: rain, tail, paid, sail.',
        exampleWords: ['ai — rain, tail, snail', 'ee — feet, seed, queen',
          'oa — boat, coat, road', 'ea — beat, leaf, dream'],
        avoid: 'Note exceptions early — "oo" has two sounds (moon vs book). '
            'Don\'t teach all vowel digraphs at once.',
        classroomActivity: 'Vowel digraph flip books — fold paper into thirds, '
            'write a consonant on each flap, digraph in the middle. '
            'Children flip to make new words.',
      ),
    ],

    'r_controlled': [
      TeachingTip(
        skillTag: 'r_controlled',
        headline: 'The "r" bosses the vowel',
        exercise: 'Explain that when r follows a vowel, it changes the vowel\'s '
            'sound completely. Compare: "a" in cat vs "ar" in car. '
            'The r "bosses" the a and makes it say /ar/.',
        exampleWords: ['ar — car, farm, start', 'or — corn, fork, sport',
          'er — her, fern, verb', 'ir — bird, girl, shirt', 'ur — burn, turn, hurt'],
        avoid: 'Don\'t teach er, ir, and ur in the same lesson — '
            'they all make the same sound, which confuses spelling.',
        classroomActivity: 'Bossy R posters — each r-controlled vowel gets its '
            'own poster with picture anchors. Display in the classroom.',
      ),
    ],

    'consonant_cluster': [
      TeachingTip(
        skillTag: 'consonant_cluster',
        headline: 'Blend consonants without adding extra sounds',
        exercise: 'Say each consonant quickly without a vowel between them: '
            '"st" not "suh-tuh". Hold up two fingers for the two sounds, '
            'then push them together quickly. Practise: st, bl, fr, cr.',
        exampleWords: ['st — stop, step, best', 'bl — blue, black, blend',
          'fr — frog, from, frost', 'cr — crab, cried, cross'],
        avoid: 'Avoid "suh-top" for "stop". The schwa vowel between consonants '
            'is the most common blending error.',
        classroomActivity: 'Cluster swap — write "top" on the board. '
            'Add a letter to the front: stop, atop. '
            'How many clusters can the class make?',
      ),
    ],

    'ccvc_cvcc': [
      TeachingTip(
        skillTag: 'ccvc_cvcc',
        headline: 'Segment longer words with your fingers',
        exercise: 'For CCVC words (4 sounds), use four fingers. '
            'Touch each finger for each sound in "frog": /f/ /r/ /o/ /g/. '
            'Then blend all four back together.',
        exampleWords: ['CCVC — frog, step, drip, clap', 'CVCC — jump, lamp, melt, best'],
        avoid: 'Don\'t let children guess from the first letter only. '
            'Insist on touching every sound before blending.',
        classroomActivity: 'Word sort — a mix of CVC and CCVC word cards. '
            'Children sort into two piles and count the sounds in each.',
      ),
    ],

    // ── Phase 5 ───────────────────────────────────────────────────────────
    'split_digraph': [
      TeachingTip(
        skillTag: 'split_digraph',
        headline: 'Magic e reaches back across the consonant',
        exercise: 'Write "pin" on the board. Add an e at the end and draw an '
            'arrow curving over the n back to the i: "pine". '
            'The e is silent but makes the i say its name /eye/.',
        exampleWords: ['a-e — cake, make, lake', 'i-e — kite, pine, mile',
          'o-e — bone, home, rose', 'u-e — cube, tune, flute'],
        avoid: 'Don\'t call it "silent e" alone — children then apply it '
            'to every word. Call it "magic e that changes the vowel".',
        classroomActivity: 'Add the magic e — give children CVC words on cards. '
            'They add an e tile to the end and read the new word. '
            'cap → cape, kit → kite, hop → hope.',
      ),
    ],

    'alternative_spelling': [
      TeachingTip(
        skillTag: 'alternative_spelling',
        headline: 'Same sound, different spelling',
        exercise: 'Create a "sound family" chart: the /ay/ sound can be written '
            'as ai (rain), ay (day), a-e (cake), eigh (eight). '
            'Read words from each column and listen for the same sound.',
        exampleWords: ['long a — rain, day, cake, they', 'long i — night, kite, pie, my',
          'long o — boat, snow, bone, toe'],
        avoid: 'Don\'t teach all alternatives at once. Introduce one spelling '
            'per lesson and compare it to the one they already know.',
        classroomActivity: 'Spelling detective — read a passage and highlight '
            'all the different spellings of one target sound.',
      ),
    ],

    // ── Phase 6 ───────────────────────────────────────────────────────────
    'suffix': [
      TeachingTip(
        skillTag: 'suffix',
        headline: 'Cover the suffix, read the root',
        exercise: 'Write "running". Cover "-ing" and ask: what is the root word? '
            '"run". Now what does -ing tell us? It\'s happening now. '
            'Uncover and read the whole word together.',
        exampleWords: ['jump → jumped / jumping', 'happy → happily / happiness',
          'hope → hopeful / hopeless'],
        avoid: 'Don\'t ignore spelling changes — "run + ing = running" (double n). '
            'Teach the doubling rule explicitly.',
        classroomActivity: 'Suffix tree — draw a tree. The root word is the trunk, '
            'suffixes are branches. Children grow the tree with new words.',
      ),
    ],

    'prefix': [
      TeachingTip(
        skillTag: 'prefix',
        headline: 'The prefix changes the meaning',
        exercise: 'Write "happy" and "unhappy" side by side. '
            'Ask: what changed? What does "un-" do to the meaning? '
            'Repeat with re- (do again) and pre- (before).',
        exampleWords: ['un — unhappy, undo, unlike', 're — redo, rewrite, replay',
          'pre — preview, prepare, predict'],
        avoid: 'Avoid treating the prefix as a spelling chunk only. '
            'Always connect it to meaning.',
        classroomActivity: 'Prefix swap game — a list of root words on the board. '
            'Children compete to add the correct prefix to change the meaning.',
      ),
    ],

    'syllable': [
      TeachingTip(
        skillTag: 'syllable',
        headline: 'Clap, chin, or chop the syllables',
        exercise: 'Place a hand under your chin. Say "elephant" — your chin '
            'drops three times (el-e-phant = 3 syllables). '
            'The chin method is more reliable than clapping for most children.',
        exampleWords: ['1 — cat, jump, bright', '2 — rabbit, garden, plastic',
          '3 — elephant, umbrella, together', '4 — alligator, caterpillar'],
        avoid: 'Don\'t let children guess by clapping rhythm alone — '
            'the chin method forces them to feel each vowel sound.',
        classroomActivity: 'Syllable race — call out words, children hold up '
            'the correct number of fingers. First correct answer wins a point.',
      ),
    ],

    'homophone': [
      TeachingTip(
        skillTag: 'homophone',
        headline: 'Same sound, different meaning and spelling',
        exercise: 'Write both words: "hear" and "here". Ask the child to use '
            'each in a sentence. Draw a small picture clue next to each. '
            'Hear has "ear" inside it — you hear with your ear!',
        exampleWords: ['hear / here', 'their / there / they\'re',
          'to / too / two', 'write / right'],
        avoid: 'Avoid teaching more than one homophone pair per lesson. '
            'Overloading leads to swapping them randomly.',
        classroomActivity: 'Homophone sentences — children write one sentence '
            'using both words correctly: "I can hear the music over here."',
      ),
    ],
  };

  /// Returns up to [maxTips] teaching tips for the given weak skill tags.
  /// Rotates through available tips using the assessment count as a seed
  /// so the teacher sees different tips across sessions.
  List<TeachingTip> getTipsForWeakTags(
      List<String> weakTags, {
        int maxTips = 3,
        int sessionSeed = 0,
      }) {
    final List<TeachingTip> result = [];

    for (final tag in weakTags) {
      if (result.length >= maxTips) break;
      final tips = _tips[tag];
      if (tips == null || tips.isEmpty) continue;
      // Rotate tips using session seed so teacher sees variety
      final tip = tips[sessionSeed % tips.length];
      result.add(tip);
    }

    return result;
  }
}
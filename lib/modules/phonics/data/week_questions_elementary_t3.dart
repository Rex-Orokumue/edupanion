import 'package:uuid/uuid.dart';
import '../../../core/models/question.dart';

// ignore_for_file: prefer_single_quotes
const _ue3 = Uuid();

Question _qe3(String level, String tag, int week, int set, String type,
    String q, List<String> opts, String ans) =>
    Question(
      id: _ue3.v4(), level: level, skillTag: tag,
      weekNumber: week, assessmentSet: set, questionType: type,
      termNumber: 3,
      questionText: q, options: opts, correctAnswer: ans,
    );

// ─────────────────────────────────────────────────────────────────────────────
// ELEMENTARY — TERM 3  (Nursery 3 – Primary 1)
// W1  : Review Split Digraph & Vowel Digraphs    → split_digraph, vowel_digraph
// W2  : Alternative Spellings for /a/            → alternative_spelling
// W3  : Alternative Spellings for /e/ and /i/    → alternative_spelling
// W4  : Syllables: Counting & Clapping           → syllable
// W5  : Syllable Division VC/CV                  → syllable
// W6  : Prefixes: un-, re-                       → prefix
// W7  : Suffixes: -er, -est, -ly                 → suffix
// W8  : Homophones (basic)                       → homophone
// W9  : Reading a Full Story                     → alternative_spelling, syllable
// W10 : Writing a Story                          → suffix, prefix
// W11 : Spelling Strategies                      → alternative_spelling, homophone
// W12 : Year Consolidation                       → digraph, vowel_digraph, split_digraph, suffix, prefix
// W13 : End-of-Year Assessment                   → alternative_spelling, syllable, prefix, suffix, homophone
// ─────────────────────────────────────────────────────────────────────────────

final List<Question> weekQuestionsElementaryT3 = [

  // ══════════════════════════════════════════════════════════════════════════
  // WEEK 1 — Review Split Digraph & Vowel Digraphs (split_digraph + vowel_digraph)
  // Focus: 30 words covering all vowel digraph patterns; spell 12 from dictation
  // ══════════════════════════════════════════════════════════════════════════

  // Set 1
  _qe3('elementary','split_digraph',1,1,'phonics', 'Which word uses the a_e pattern?', ['cake','cat','cart','call'], 'cake'),
  _qe3('elementary','vowel_digraph',1,1,'phonics', 'Which word has the long /a/ vowel digraph?', ['rain','ran','rin','run'], 'rain'),
  _qe3('elementary','split_digraph',1,1,'phonics', 'Which word uses the i_e pattern?', ['kite','kit','kid','kin'], 'kite'),
  _qe3('elementary','vowel_digraph',1,1,'phonics', 'Which word has the long /e/ vowel digraph?', ['feet','fat','fit','fog'], 'feet'),
  _qe3('elementary','split_digraph',1,1,'phonics', 'Which word uses the o_e pattern?', ['bone','bon','bob','bog'], 'bone'),
  _qe3('elementary','vowel_digraph',1,1,'phonics', 'Which word has the long /o/ vowel digraph?', ['boat','bot','bat','bit'], 'boat'),
  _qe3('elementary','split_digraph',1,1,'phonics', 'Which word uses the u_e pattern?', ['cube','cub','cut','cup'], 'cube'),
  _qe3('elementary','vowel_digraph',1,1,'phonics', 'Which word has the /oy/ sound?', ['coin','can','cold','cord'], 'coin'),
  _qe3('elementary','split_digraph',1,1,'phonics', 'What does the magic-e do in "tune"?', ['makes u say long /u/','makes t silent','doubles the n','nothing'], 'makes u say long /u/'),
  _qe3('elementary','vowel_digraph',1,1,'phonics', 'Which word has the /ow/ sound?', ['cloud','clod','clad','clue'], 'cloud'),

  // Set 2
  _qe3('elementary','vowel_digraph',1,2,'phonics', 'Which word has the long /oo/ sound?', ['moon','book','cook','look'], 'moon'),
  _qe3('elementary','split_digraph',1,2,'phonics', 'Which word uses the e_e pattern?', ['theme','them','then','there'], 'theme'),
  _qe3('elementary','vowel_digraph',1,2,'phonics', 'Which word has the short /oo/ sound?', ['book','moon','spoon','food'], 'book'),
  _qe3('elementary','split_digraph',1,2,'phonics', 'What does adding "e" to "hop" make?', ['hope','hipe','hape','hupe'], 'hope'),
  _qe3('elementary','vowel_digraph',1,2,'phonics', 'Which word uses "oy" for /oy/?', ['boy','bot','bit','bad'], 'boy'),
  _qe3('elementary','split_digraph',1,2,'phonics', 'Which word uses a_e?', ['late','lat','lad','lag'], 'late'),
  _qe3('elementary','vowel_digraph',1,2,'phonics', 'Which word uses "ay" for long /a/?', ['play','pal','pill','pull'], 'play'),
  _qe3('elementary','split_digraph',1,2,'phonics', 'Which word does NOT use a magic-e pattern?', ['cake','kite','bone','bit'], 'bit'),
  _qe3('elementary','vowel_digraph',1,2,'phonics', 'Which word uses "ee" for long /e/?', ['tree','try','trap','trip'], 'tree'),
  _qe3('elementary','split_digraph',1,2,'phonics', 'Which word uses the o_e pattern?', ['home','hom','hot','hop'], 'home'),

  // ══════════════════════════════════════════════════════════════════════════
  // WEEK 2 — Alternative Spellings for /a/ (alternative_spelling)
  // Focus: map a_e, ai, ay, a to long /a/; decode unfamiliar /a/ words
  // ══════════════════════════════════════════════════════════════════════════

  // Set 1
  _qe3('elementary','alternative_spelling',2,1,'phonics', 'Which spellings can all make the long /a/ sound?', ['a_e, ai, ay, a','ee, ea, e, y','oa, ow, o_e, o','ir, er, ur'], 'a_e, ai, ay, a'),
  _qe3('elementary','alternative_spelling',2,1,'phonics', 'Which word uses "a_e" for long /a/?', ['cake','cat','cart','call'], 'cake'),
  _qe3('elementary','alternative_spelling',2,1,'phonics', 'Which word uses "ai" for long /a/?', ['rain','ran','rin','run'], 'rain'),
  _qe3('elementary','alternative_spelling',2,1,'phonics', 'Which word uses "ay" for long /a/?', ['play','pal','pill','pull'], 'play'),
  _qe3('elementary','alternative_spelling',2,1,'phonics', 'In "baby", the letter "a" makes which sound?', ['long /a/','short /a/','long /e/','/ar/'], 'long /a/'),
  _qe3('elementary','alternative_spelling',2,1,'phonics', 'Which word uses "ai"?', ['sail','sal','sill','sell'], 'sail'),
  _qe3('elementary','alternative_spelling',2,1,'phonics', 'Which word uses "ay"?', ['stay','sat','sit','set'], 'stay'),
  _qe3('elementary','alternative_spelling',2,1,'phonics', 'Which word uses "a_e"?', ['name','nap','nab','nag'], 'name'),
  _qe3('elementary','alternative_spelling',2,1,'phonics', 'All four — a_e, ai, ay, a — make which sound?', ['long /a/','short /a/','long /e/','long /i/'], 'long /a/'),
  _qe3('elementary','alternative_spelling',2,1,'phonics', 'Which word does NOT have the long /a/ sound?', ['cake','rain','play','cat'], 'cat'),

  // Set 2
  _qe3('elementary','alternative_spelling',2,2,'phonics', 'Which word uses "ai"?', ['wait','wit','wet','wot'], 'wait'),
  _qe3('elementary','alternative_spelling',2,2,'phonics', 'Which word uses "ay"?', ['tray','try','trip','trap'], 'tray'),
  _qe3('elementary','alternative_spelling',2,2,'phonics', 'Which word uses "a_e"?', ['wave','wag','wax','wad'], 'wave'),
  _qe3('elementary','alternative_spelling',2,2,'phonics', 'In "paper", the first "a" makes which sound?', ['long /a/','short /a/','long /e/','/ar/'], 'long /a/'),
  _qe3('elementary','alternative_spelling',2,2,'phonics', 'Which word uses "ai"?', ['chain','chin','chan','chun'], 'chain'),
  _qe3('elementary','alternative_spelling',2,2,'phonics', 'Which word uses "ay"?', ['spray','spry','spree','sprag'], 'spray'),
  _qe3('elementary','alternative_spelling',2,2,'phonics', 'Which word uses "a_e"?', ['brave','brad','bran','brat'], 'brave'),
  _qe3('elementary','alternative_spelling',2,2,'phonics', 'Which two words both have the long /a/ sound?', ['rain / play','rain / ran','play / pat','sat / stay'], 'rain / play'),
  _qe3('elementary','alternative_spelling',2,2,'phonics', 'Which word has the long /a/ sound spelled with just the letter "a"?', ['baby','bat','ban','back'], 'baby'),
  _qe3('elementary','alternative_spelling',2,2,'phonics', 'Which word does NOT have the long /a/ sound?', ['sail','day','brave','sat'], 'sat'),

  // ══════════════════════════════════════════════════════════════════════════
  // WEEK 3 — Alternative Spellings for /e/ and /i/ (alternative_spelling)
  // Focus: ee, ea, e, y → long /e/; i_e, igh, y → long /i/; word sort
  // ══════════════════════════════════════════════════════════════════════════

  // Set 1
  _qe3('elementary','alternative_spelling',3,1,'phonics', 'Which spellings can all make the long /e/ sound?', ['ee, ea, e, y','a_e, ai, ay, a','oa, ow, o_e, o','ir, er, ur'], 'ee, ea, e, y'),
  _qe3('elementary','alternative_spelling',3,1,'phonics', 'Which word uses "ee" for long /e/?', ['tree','try','trap','trip'], 'tree'),
  _qe3('elementary','alternative_spelling',3,1,'phonics', 'Which word uses "ea" for long /e/?', ['beach','bach','bich','boch'], 'beach'),
  _qe3('elementary','alternative_spelling',3,1,'phonics', 'In "he", the letter "e" makes which sound?', ['long /e/','short /e/','long /a/','/er/'], 'long /e/'),
  _qe3('elementary','alternative_spelling',3,1,'phonics', 'In "happy", the letter "y" makes which sound?', ['long /e/','short /e/','long /i/','/y/'], 'long /e/'),
  _qe3('elementary','alternative_spelling',3,1,'phonics', 'Which spellings can all make the long /i/ sound?', ['i_e, igh, y','ee, ea, e, y','a_e, ai, ay, a','oa, ow, o_e, o'], 'i_e, igh, y'),
  _qe3('elementary','alternative_spelling',3,1,'phonics', 'Which word uses "i_e" for long /i/?', ['kite','kit','kid','kin'], 'kite'),
  _qe3('elementary','alternative_spelling',3,1,'phonics', 'Which word uses "igh" for long /i/?', ['night','nit','nib','nil'], 'night'),
  _qe3('elementary','alternative_spelling',3,1,'phonics', 'In "fly", the letter "y" makes which sound?', ['long /i/','long /e/','/y/','short /i/'], 'long /i/'),
  _qe3('elementary','alternative_spelling',3,1,'phonics', 'Which word does NOT have the long /e/ sound?', ['tree','beach','he','bed'], 'bed'),

  // Set 2
  _qe3('elementary','alternative_spelling',3,2,'phonics', 'Which word uses "ee"?', ['cheek','check','chuck','chick'], 'cheek'),
  _qe3('elementary','alternative_spelling',3,2,'phonics', 'Which word uses "ea"?', ['dream','dram','drum','drim'], 'dream'),
  _qe3('elementary','alternative_spelling',3,2,'phonics', 'Which word uses "igh"?', ['light','lit','lid','lip'], 'light'),
  _qe3('elementary','alternative_spelling',3,2,'phonics', 'In "sky", the letter "y" makes which sound?', ['long /i/','long /e/','/y/','short /i/'], 'long /i/'),
  _qe3('elementary','alternative_spelling',3,2,'phonics', 'In "she", the letter "e" makes which sound?', ['long /e/','short /e/','long /a/','/er/'], 'long /e/'),
  _qe3('elementary','alternative_spelling',3,2,'phonics', 'Which word uses "i_e"?', ['smile','small','smell','spell'], 'smile'),
  _qe3('elementary','alternative_spelling',3,2,'phonics', 'Which word uses "igh"?', ['right','rit','rid','rig'], 'right'),
  _qe3('elementary','alternative_spelling',3,2,'phonics', 'Which two words both have the long /i/ sound?', ['night / kite','night / kit','kite / bit','sit / bike'], 'night / kite'),
  _qe3('elementary','alternative_spelling',3,2,'phonics', 'Which word has the long /e/ sound spelled with "y"?', ['funny','fan','fend','fond'], 'funny'),
  _qe3('elementary','alternative_spelling',3,2,'phonics', 'Which word does NOT have the long /i/ sound?', ['kite','night','fly','bit'], 'bit'),

  // ══════════════════════════════════════════════════════════════════════════
  // WEEK 4 — Syllables: Counting & Clapping (syllable)
  // Focus: count syllables in 1–3 syllable words; identify stressed syllable
  // ══════════════════════════════════════════════════════════════════════════

  // Set 1
  _qe3('elementary','syllable',4,1,'phonics', 'How many syllables does "cat" have?', ['1','2','3','4'], '1'),
  _qe3('elementary','syllable',4,1,'phonics', 'How many syllables does "rabbit" have?', ['2','1','3','4'], '2'),
  _qe3('elementary','syllable',4,1,'phonics', 'How many syllables does "elephant" have?', ['3','2','1','4'], '3'),
  _qe3('elementary','syllable',4,1,'phonics', 'How many syllables does "dog" have?', ['1','2','3','4'], '1'),
  _qe3('elementary','syllable',4,1,'phonics', 'How many syllables does "garden" have?', ['2','1','3','4'], '2'),
  _qe3('elementary','syllable',4,1,'phonics', 'How many syllables does "sun" have?', ['1','2','3','4'], '1'),
  _qe3('elementary','syllable',4,1,'phonics', 'How many syllables does "banana" have?', ['3','2','1','4'], '3'),
  _qe3('elementary','syllable',4,1,'phonics', 'How many syllables does "table" have?', ['2','1','3','4'], '2'),
  _qe3('elementary','syllable',4,1,'phonics', 'A syllable always contains a ___?', ['vowel sound','consonant','digraph','cluster'], 'vowel sound'),
  _qe3('elementary','syllable',4,1,'phonics', 'How many syllables does "computer" have?', ['3','2','1','4'], '3'),

  // Set 2
  _qe3('elementary','syllable',4,2,'phonics', 'How many syllables does "pen" have?', ['1','2','3','4'], '1'),
  _qe3('elementary','syllable',4,2,'phonics', 'How many syllables does "pencil" have?', ['2','1','3','4'], '2'),
  _qe3('elementary','syllable',4,2,'phonics', 'How many syllables does "umbrella" have?', ['3','2','1','4'], '3'),
  _qe3('elementary','syllable',4,2,'phonics', 'How many syllables does "book" have?', ['1','2','3','4'], '1'),
  _qe3('elementary','syllable',4,2,'phonics', 'How many syllables does "window" have?', ['2','1','3','4'], '2'),
  _qe3('elementary','syllable',4,2,'phonics', 'How many syllables does "crocodile" have?', ['3','2','1','4'], '3'),
  _qe3('elementary','syllable',4,2,'phonics', 'Which word has 2 syllables?', ['paper','cat','sun','strip'], 'paper'),
  _qe3('elementary','syllable',4,2,'phonics', 'Which word has 1 syllable?', ['dog','table','garden','rabbit'], 'dog'),
  _qe3('elementary','syllable',4,2,'phonics', 'Which word has 3 syllables?', ['elephant','cat','table','pencil'], 'elephant'),
  _qe3('elementary','syllable',4,2,'phonics', 'How many syllables does "butterfly" have?', ['3','2','1','4'], '3'),

  // ══════════════════════════════════════════════════════════════════════════
  // WEEK 5 — Syllable Division VC/CV (syllable)
  // Focus: divide 2-syllable words using VC/CV rule; rabbit, basket, napkin
  // ══════════════════════════════════════════════════════════════════════════

  // Set 1
  _qe3('elementary','syllable',5,1,'phonics', 'The VC/CV rule says: divide between the ___ consonants?', ['two middle','first two','last two','all'], 'two middle'),
  _qe3('elementary','syllable',5,1,'phonics', 'How do you divide "rabbit" using VC/CV?', ['rab-bit','ra-bbit','rabb-it','r-abbit'], 'rab-bit'),
  _qe3('elementary','syllable',5,1,'phonics', 'How do you divide "basket" using VC/CV?', ['bas-ket','ba-sket','bask-et','b-asket'], 'bas-ket'),
  _qe3('elementary','syllable',5,1,'phonics', 'How do you divide "napkin" using VC/CV?', ['nap-kin','na-pkin','napk-in','n-apkin'], 'nap-kin'),
  _qe3('elementary','syllable',5,1,'phonics', 'How do you divide "mitten" using VC/CV?', ['mit-ten','mi-tten','mitt-en','m-itten'], 'mit-ten'),
  _qe3('elementary','syllable',5,1,'phonics', 'How do you divide "button" using VC/CV?', ['but-ton','bu-tton','butt-on','b-utton'], 'but-ton'),
  _qe3('elementary','syllable',5,1,'phonics', 'How do you divide "sunset" using VC/CV?', ['sun-set','su-nset','suns-et','s-unset'], 'sun-set'),
  _qe3('elementary','syllable',5,1,'phonics', 'How do you divide "muffin" using VC/CV?', ['muf-fin','mu-ffin','muff-in','m-uffin'], 'muf-fin'),
  _qe3('elementary','syllable',5,1,'phonics', 'How many syllables does "rabbit" have?', ['2','1','3','4'], '2'),
  _qe3('elementary','syllable',5,1,'phonics', 'How do you divide "kitten" using VC/CV?', ['kit-ten','ki-tten','kitt-en','k-itten'], 'kit-ten'),

  // Set 2
  _qe3('elementary','syllable',5,2,'phonics', 'How do you divide "plastic" using VC/CV?', ['plas-tic','pla-stic','plast-ic','p-lastic'], 'plas-tic'),
  _qe3('elementary','syllable',5,2,'phonics', 'How do you divide "winter" using VC/CV?', ['win-ter','wi-nter','wint-er','w-inter'], 'win-ter'),
  _qe3('elementary','syllable',5,2,'phonics', 'How do you divide "candid" using VC/CV?', ['can-did','ca-ndid','cand-id','c-andid'], 'can-did'),
  _qe3('elementary','syllable',5,2,'phonics', 'How do you divide "carpet" using VC/CV?', ['car-pet','ca-rpet','carp-et','c-arpet'], 'car-pet'),
  _qe3('elementary','syllable',5,2,'phonics', 'Which word follows the VC/CV pattern?', ['rabbit','able','table','even'], 'rabbit'),
  _qe3('elementary','syllable',5,2,'phonics', 'How do you divide "insect" using VC/CV?', ['in-sect','i-nsect','ins-ect','inse-ct'], 'in-sect'),
  _qe3('elementary','syllable',5,2,'phonics', 'How do you divide "pencil" using VC/CV?', ['pen-cil','pe-ncil','penc-il','p-encil'], 'pen-cil'),
  _qe3('elementary','syllable',5,2,'phonics', 'How do you divide "lemon" using VC/CV?', ['lem-on','le-mon','lem-on','l-emon'], 'lem-on'),
  _qe3('elementary','syllable',5,2,'phonics', 'How do you divide "market" using VC/CV?', ['mar-ket','ma-rket','mark-et','m-arket'], 'mar-ket'),
  _qe3('elementary','syllable',5,2,'phonics', 'How do you divide "contact" using VC/CV?', ['con-tact','co-ntact','cont-act','c-ontact'], 'con-tact'),

  // ══════════════════════════════════════════════════════════════════════════
  // WEEK 6 — Prefixes: un-, re- (prefix)
  // Focus: un- = not/reverse; re- = again; add prefixes to known base words
  // ══════════════════════════════════════════════════════════════════════════

  // Set 1
  _qe3('elementary','prefix',6,1,'phonics', 'What does the prefix "un-" mean?', ['not or reverse','again','before','after'], 'not or reverse'),
  _qe3('elementary','prefix',6,1,'phonics', 'What does "unhappy" mean?', ['not happy','very happy','happy again','before happy'], 'not happy'),
  _qe3('elementary','prefix',6,1,'phonics', 'What does the prefix "re-" mean?', ['again','not','before','after'], 'again'),
  _qe3('elementary','prefix',6,1,'phonics', 'What does "redo" mean?', ['do again','not do','undo','before doing'], 'do again'),
  _qe3('elementary','prefix',6,1,'phonics', 'Which word uses the prefix "un-"?', ['unpack','repack','prepack','mispack'], 'unpack'),
  _qe3('elementary','prefix',6,1,'phonics', 'Which word uses the prefix "re-"?', ['replay','unplay','preplay','misplay'], 'replay'),
  _qe3('elementary','prefix',6,1,'phonics', 'What does "untie" mean?', ['reverse tying','tie again','tie before','not tie ever'], 'reverse tying'),
  _qe3('elementary','prefix',6,1,'phonics', 'What does "rewrite" mean?', ['write again','not write','write before','write after'], 'write again'),
  _qe3('elementary','prefix',6,1,'phonics', 'What is the base word in "unhappy"?', ['happy','un','unhap','py'], 'happy'),
  _qe3('elementary','prefix',6,1,'phonics', 'What is the base word in "replay"?', ['play','re','repla','lay'], 'play'),

  // Set 2
  _qe3('elementary','prefix',6,2,'phonics', 'What does "unzip" mean?', ['open a zip','close a zip','zip again','zip before'], 'open a zip'),
  _qe3('elementary','prefix',6,2,'phonics', 'What does "refill" mean?', ['fill again','not fill','fill before','empty'], 'fill again'),
  _qe3('elementary','prefix',6,2,'phonics', 'Which word uses "un-"?', ['unkind','rekind','prekind','miskind'], 'unkind'),
  _qe3('elementary','prefix',6,2,'phonics', 'Which word uses "re-"?', ['return','unturn','preturn','misturn'], 'return'),
  _qe3('elementary','prefix',6,2,'phonics', 'What does "unsafe" mean?', ['not safe','safe again','very safe','safe before'], 'not safe'),
  _qe3('elementary','prefix',6,2,'phonics', 'What does "rebuild" mean?', ['build again','not build','build before','build after'], 'build again'),
  _qe3('elementary','prefix',6,2,'phonics', 'Which word has the prefix "un-"?', ['unlock','relock','prelock','mislock'], 'unlock'),
  _qe3('elementary','prefix',6,2,'phonics', 'Which word has the prefix "re-"?', ['restart','unstart','prestart','misstart'], 'restart'),
  _qe3('elementary','prefix',6,2,'phonics', 'What does "unwell" mean?', ['not well / ill','well again','very well','well before'], 'not well / ill'),
  _qe3('elementary','prefix',6,2,'phonics', 'What does "recycle" mean?', ['cycle/use again','not cycle','cycle before','cycle after'], 'cycle/use again'),

  // ══════════════════════════════════════════════════════════════════════════
  // WEEK 7 — Suffixes: -er, -est, -ly (suffix)
  // Focus: -er and -est for comparison; -ly for adverbs; quickly, faster, tallest
  // ══════════════════════════════════════════════════════════════════════════

  // Set 1
  _qe3('elementary','suffix',7,1,'phonics', 'What does the suffix "-er" do to an adjective?', ['compares two things','makes it superlative','makes it an adverb','makes it a noun'], 'compares two things'),
  _qe3('elementary','suffix',7,1,'phonics', 'What does the suffix "-est" do to an adjective?', ['makes it superlative (most)','compares two things','makes it an adverb','makes it a noun'], 'makes it superlative (most)'),
  _qe3('elementary','suffix',7,1,'phonics', 'What is "tall" + "-er"?', ['taller','tallest','tally','tallly'], 'taller'),
  _qe3('elementary','suffix',7,1,'phonics', 'What is "tall" + "-est"?', ['tallest','taller','tally','tallly'], 'tallest'),
  _qe3('elementary','suffix',7,1,'phonics', 'What does the suffix "-ly" do to an adjective?', ['makes it an adverb','makes it a noun','compares it','makes it superlative'], 'makes it an adverb'),
  _qe3('elementary','suffix',7,1,'phonics', 'What is "quick" + "-ly"?', ['quickly','quickest','quicker','quickl'], 'quickly'),
  _qe3('elementary','suffix',7,1,'phonics', 'What is "fast" + "-er"?', ['faster','fastest','fastly','fast'], 'faster'),
  _qe3('elementary','suffix',7,1,'phonics', 'What is "slow" + "-est"?', ['slowest','slower','slowly','slowl'], 'slowest'),
  _qe3('elementary','suffix',7,1,'phonics', 'What is "soft" + "-ly"?', ['softly','softest','softer','softl'], 'softly'),
  _qe3('elementary','suffix',7,1,'phonics', 'Which word uses the "-er" suffix?', ['bigger','biggest','bigly','bigg'], 'bigger'),

  // Set 2
  _qe3('elementary','suffix',7,2,'phonics', 'What is "kind" + "-er"?', ['kinder','kindest','kindly','kindes'], 'kinder'),
  _qe3('elementary','suffix',7,2,'phonics', 'What is "kind" + "-est"?', ['kindest','kinder','kindly','kindes'], 'kindest'),
  _qe3('elementary','suffix',7,2,'phonics', 'What is "kind" + "-ly"?', ['kindly','kinder','kindest','kindl'], 'kindly'),
  _qe3('elementary','suffix',7,2,'phonics', 'What is "bright" + "-er"?', ['brighter','brightest','brightly','brightes'], 'brighter'),
  _qe3('elementary','suffix',7,2,'phonics', 'What is "bright" + "-est"?', ['brightest','brighter','brightly','brightes'], 'brightest'),
  _qe3('elementary','suffix',7,2,'phonics', 'What is "loud" + "-ly"?', ['loudly','louder','loudest','loudl'], 'loudly'),
  _qe3('elementary','suffix',7,2,'phonics', 'Which word uses the "-ly" suffix?', ['slowly','slower','slowest','slow'], 'slowly'),
  _qe3('elementary','suffix',7,2,'phonics', 'Which word uses the "-est" suffix?', ['tallest','taller','tally','tall'], 'tallest'),
  _qe3('elementary','suffix',7,2,'phonics', 'What does "She ran quickly" tell us?', ['how she ran','who ran','where she ran','when she ran'], 'how she ran'),
  _qe3('elementary','suffix',7,2,'phonics', 'Which is the superlative form of "big"?', ['biggest','bigger','bigly','bigg'], 'biggest'),

  // ══════════════════════════════════════════════════════════════════════════
  // WEEK 8 — Homophones (basic) (homophone)
  // Focus: to/two/too, here/hear; use context to choose correct spelling
  // ══════════════════════════════════════════════════════════════════════════

  // Set 1
  _qe3('elementary','homophone',8,1,'phonics', 'Homophones are words that ___?', ['sound the same but have different spellings/meanings','are spelled the same but sound different','mean the same thing','are always verbs'], 'sound the same but have different spellings/meanings'),
  _qe3('elementary','homophone',8,1,'phonics', 'Which "to/two/too" fits: "I have ___ cats"?', ['two','to','too','tew'], 'two'),
  _qe3('elementary','homophone',8,1,'phonics', 'Which "to/two/too" fits: "She went ___ school"?', ['to','two','too','tew'], 'to'),
  _qe3('elementary','homophone',8,1,'phonics', 'Which "to/two/too" fits: "I like cake ___."', ['too','to','two','tew'], 'too'),
  _qe3('elementary','homophone',8,1,'phonics', 'Which "here/hear" fits: "Come over ___"?', ['here','hear','heer','heare'], 'here'),
  _qe3('elementary','homophone',8,1,'phonics', 'Which "here/hear" fits: "Can you ___ that sound?"', ['hear','here','heer','heare'], 'hear'),
  _qe3('elementary','homophone',8,1,'phonics', 'Which is the number word?', ['two','to','too','tew'], 'two'),
  _qe3('elementary','homophone',8,1,'phonics', 'Which means "also"?', ['too','to','two','tew'], 'too'),
  _qe3('elementary','homophone',8,1,'phonics', 'Which means "in this place"?', ['here','hear','heer','heare'], 'here'),
  _qe3('elementary','homophone',8,1,'phonics', 'Which means "to listen"?', ['hear','here','heer','heare'], 'hear'),

  // Set 2
  _qe3('elementary','homophone',8,2,'phonics', 'Which "to/two/too" fits: "It is ___ hot today."', ['too','to','two','tew'], 'too'),
  _qe3('elementary','homophone',8,2,'phonics', 'Which "to/two/too" fits: "I am going ___ the park."', ['to','two','too','tew'], 'to'),
  _qe3('elementary','homophone',8,2,'phonics', 'Which "here/hear" fits: "Put the book ___ on the table."', ['here','hear','heer','heare'], 'here'),
  _qe3('elementary','homophone',8,2,'phonics', 'Which "here/hear" fits: "I can ___ the birds singing."', ['hear','here','heer','heare'], 'hear'),
  _qe3('elementary','homophone',8,2,'phonics', 'Which sentence is correct?', ['She has two dogs.','She has to dogs.','She has too dogs.','She has tew dogs.'], 'She has two dogs.'),
  _qe3('elementary','homophone',8,2,'phonics', 'Which sentence is correct?', ['He went to school.','He went two school.','He went too school.','He went tew school.'], 'He went to school.'),
  _qe3('elementary','homophone',8,2,'phonics', 'Which sentence is correct?', ['Can you hear me?','Can you here me?','Can you heer me?','Can you heare me?'], 'Can you hear me?'),
  _qe3('elementary','homophone',8,2,'phonics', 'Which sentence is correct?', ['She is here.','She is hear.','She is heer.','She is heare.'], 'She is here.'),
  _qe3('elementary','homophone',8,2,'phonics', 'Which sentence is correct?', ['I like it too.','I like it to.','I like it two.','I like it tew.'], 'I like it too.'),
  _qe3('elementary','homophone',8,2,'phonics', 'Which "two" sentence is correct?', ['I have two sisters.','I have to sisters.','I have too sisters.','I have tew sisters.'], 'I have two sisters.'),

  // ══════════════════════════════════════════════════════════════════════════
  // WEEK 9 — Reading a Full Story (alternative_spelling + syllable)
  // Focus: read a complete short story; summarise beginning, middle, end
  // ══════════════════════════════════════════════════════════════════════════

  // Set 1
  _qe3('elementary','alternative_spelling',9,1,'phonics', 'Which word has the long /a/ sound in: "The rain came and the train was late"?', ['rain','The','came','was'], 'rain'),
  _qe3('elementary','syllable',9,1,'phonics', 'How many syllables in "garden"?', ['2','1','3','4'], '2'),
  _qe3('elementary','alternative_spelling',9,1,'phonics', 'Which word has long /e/ in: "He could see the green trees"?', ['green','He','could','the'], 'green'),
  _qe3('elementary','syllable',9,1,'phonics', 'How many syllables in "elephant"?', ['3','2','1','4'], '3'),
  _qe3('elementary','alternative_spelling',9,1,'phonics', 'Which word has long /i/ in: "The kite flew high in the bright sky"?', ['high','The','kite','flew'], 'high'),
  _qe3('elementary','syllable',9,1,'phonics', 'How many syllables in "rabbit"?', ['2','1','3','4'], '2'),
  _qe3('elementary','alternative_spelling',9,1,'phonics', 'Which word uses "igh" in: "She wore a bright light coat"?', ['bright','She','wore','coat'], 'bright'),
  _qe3('elementary','syllable',9,1,'phonics', 'Which word has 3 syllables?', ['banana','table','dog','cat'], 'banana'),
  _qe3('elementary','alternative_spelling',9,1,'phonics', 'What is the long /a/ spelling in "brave"?', ['a_e','ai','ay','a'], 'a_e'),
  _qe3('elementary','syllable',9,1,'phonics', 'How many syllables in "butterfly"?', ['3','2','1','4'], '3'),

  // Set 2
  _qe3('elementary','alternative_spelling',9,2,'phonics', 'Which word has long /e/ in: "The funny monkey ate all the honey"?', ['monkey','The','funny','ate'], 'monkey'),
  _qe3('elementary','syllable',9,2,'phonics', 'How many syllables in "pencil"?', ['2','1','3','4'], '2'),
  _qe3('elementary','alternative_spelling',9,2,'phonics', 'Which word uses "ee" in: "She could see three big trees"?', ['three','She','could','big'], 'three'),
  _qe3('elementary','syllable',9,2,'phonics', 'How do you divide "napkin" using VC/CV?', ['nap-kin','na-pkin','napk-in','n-apkin'], 'nap-kin'),
  _qe3('elementary','alternative_spelling',9,2,'phonics', 'What does the "y" spell in "happy"?', ['long /e/','long /i/','/y/','short /e/'], 'long /e/'),
  _qe3('elementary','syllable',9,2,'phonics', 'Which word has 2 syllables?', ['paper','cat','sun','strip'], 'paper'),
  _qe3('elementary','alternative_spelling',9,2,'phonics', 'Which word has long /i/ in: "The sky was bright and the stars shone"?', ['bright','The','sky','stars'], 'bright'),
  _qe3('elementary','syllable',9,2,'phonics', 'How do you divide "basket" using VC/CV?', ['bas-ket','ba-sket','bask-et','b-asket'], 'bas-ket'),
  _qe3('elementary','alternative_spelling',9,2,'phonics', 'Which word uses "ay" in: "Let us play in the bay today"?', ['play','Let','us','in'], 'play'),
  _qe3('elementary','syllable',9,2,'phonics', 'How many syllables in "computer"?', ['3','2','1','4'], '3'),

  // ══════════════════════════════════════════════════════════════════════════
  // WEEK 10 — Writing a Story (suffix + prefix)
  // Focus: plan and write a 3-sentence story; use words with affixes; peer review
  // ══════════════════════════════════════════════════════════════════════════

  // Set 1
  _qe3('elementary','prefix',10,1,'phonics', 'What does "unhappy" mean?', ['not happy','very happy','happy again','before happy'], 'not happy'),
  _qe3('elementary','suffix',10,1,'phonics', 'What is "quick" + "-ly"?', ['quickly','quickest','quicker','quickl'], 'quickly'),
  _qe3('elementary','prefix',10,1,'phonics', 'What does "redo" mean?', ['do again','not do','undo','before doing'], 'do again'),
  _qe3('elementary','suffix',10,1,'phonics', 'What is "tall" + "-est"?', ['tallest','taller','tally','tallly'], 'tallest'),
  _qe3('elementary','prefix',10,1,'phonics', 'Which word uses the prefix "un-"?', ['unlock','relock','prelock','mislock'], 'unlock'),
  _qe3('elementary','suffix',10,1,'phonics', 'What is "run" + "-ing"?', ['running','runing','runeing','runneing'], 'running'),
  _qe3('elementary','prefix',10,1,'phonics', 'What is the base word in "replay"?', ['play','re','repla','lay'], 'play'),
  _qe3('elementary','suffix',10,1,'phonics', 'What is the plural of "dish"?', ['dishes','dishs','dishies','dishses'], 'dishes'),
  _qe3('elementary','prefix',10,1,'phonics', 'What does "unsafe" mean?', ['not safe','safe again','very safe','safe before'], 'not safe'),
  _qe3('elementary','suffix',10,1,'phonics', 'What is "hop" + "-ing"?', ['hopping','hoping','hopeing','hoppying'], 'hopping'),

  // Set 2
  _qe3('elementary','suffix',10,2,'phonics', 'What is "kind" + "-ly"?', ['kindly','kinder','kindest','kindl'], 'kindly'),
  _qe3('elementary','prefix',10,2,'phonics', 'What does "refill" mean?', ['fill again','not fill','fill before','empty'], 'fill again'),
  _qe3('elementary','suffix',10,2,'phonics', 'What is "jump" + "-ed"?', ['jumped','jumpped','jumpd','jumpied'], 'jumped'),
  _qe3('elementary','prefix',10,2,'phonics', 'Which word uses the prefix "re-"?', ['restart','unstart','prestart','misstart'], 'restart'),
  _qe3('elementary','suffix',10,2,'phonics', 'What is "fast" + "-er"?', ['faster','fastest','fastly','fast'], 'faster'),
  _qe3('elementary','prefix',10,2,'phonics', 'What is the base word in "unhappy"?', ['happy','un','unhap','py'], 'happy'),
  _qe3('elementary','suffix',10,2,'phonics', 'Which word uses the "-est" suffix?', ['tallest','taller','tally','tall'], 'tallest'),
  _qe3('elementary','prefix',10,2,'phonics', 'Which word uses the prefix "un-"?', ['unkind','rekind','prekind','miskind'], 'unkind'),
  _qe3('elementary','suffix',10,2,'phonics', 'What is the plural of "box"?', ['boxes','boxs','boxies','boxess'], 'boxes'),
  _qe3('elementary','prefix',10,2,'phonics', 'What does "rebuild" mean?', ['build again','not build','build before','build after'], 'build again'),

  // ══════════════════════════════════════════════════════════════════════════
  // WEEK 11 — Spelling Strategies (alternative_spelling + homophone)
  // Focus: look-cover-write-check; mnemonics; personal spelling list
  // ══════════════════════════════════════════════════════════════════════════

  // Set 1
  _qe3('elementary','alternative_spelling',11,1,'phonics', 'Which word is spelled correctly?', ['night','nite','nigt','nigte'], 'night'),
  _qe3('elementary','homophone',11,1,'phonics', 'Which fits: "I ___ two dogs"?', ['have','here','hear','hare'], 'have'),
  _qe3('elementary','alternative_spelling',11,1,'phonics', 'Which word is spelled correctly?', ['play','plai','plaay','playe'], 'play'),
  _qe3('elementary','homophone',11,1,'phonics', 'Which "to/two/too" fits: "She has ___ brothers"?', ['two','to','too','tew'], 'two'),
  _qe3('elementary','alternative_spelling',11,1,'phonics', 'Which word is spelled correctly?', ['funny','funy','funni','funnye'], 'funny'),
  _qe3('elementary','homophone',11,1,'phonics', 'Which fits: "Can you ___ the music?"', ['hear','here','heer','heare'], 'hear'),
  _qe3('elementary','alternative_spelling',11,1,'phonics', 'Which word is spelled correctly?', ['baby','babe','babby','bayby'], 'baby'),
  _qe3('elementary','homophone',11,1,'phonics', 'Which fits: "Stand ___ next to me"?', ['here','hear','heer','heare'], 'here'),
  _qe3('elementary','alternative_spelling',11,1,'phonics', 'Which word is spelled correctly?', ['bright','brite','brigt','brigte'], 'bright'),
  _qe3('elementary','homophone',11,1,'phonics', 'Which fits: "I want to go ___."', ['too','to','two','tew'], 'too'),

  // Set 2
  _qe3('elementary','alternative_spelling',11,2,'phonics', 'Which word is spelled correctly?', ['train','trayn','trane','trein'], 'train'),
  _qe3('elementary','homophone',11,2,'phonics', 'Which sentence is correct?', ['She went to the shop.','She went two the shop.','She went too the shop.','She went tew the shop.'], 'She went to the shop.'),
  _qe3('elementary','alternative_spelling',11,2,'phonics', 'Which word is spelled correctly?', ['kite','kiet','kyte','kiite'], 'kite'),
  _qe3('elementary','homophone',11,2,'phonics', 'Which sentence is correct?', ['I can hear you.','I can here you.','I can heer you.','I can heare you.'], 'I can hear you.'),
  _qe3('elementary','alternative_spelling',11,2,'phonics', 'Which word is spelled correctly?', ['stream','streem','streme','streame'], 'stream'),
  _qe3('elementary','homophone',11,2,'phonics', 'Which sentence is correct?', ['Put it here.','Put it hear.','Put it heer.','Put it heare.'], 'Put it here.'),
  _qe3('elementary','alternative_spelling',11,2,'phonics', 'Which word is spelled correctly?', ['smile','smille','smiil','smyle'], 'smile'),
  _qe3('elementary','homophone',11,2,'phonics', 'Which sentence is correct?', ['We have two cats.','We have to cats.','We have too cats.','We have tew cats.'], 'We have two cats.'),
  _qe3('elementary','alternative_spelling',11,2,'phonics', 'Which word is spelled correctly?', ['fly','flie','flye','fley'], 'fly'),
  _qe3('elementary','homophone',11,2,'phonics', 'Which fits: "I like reading ___."', ['too','to','two','tew'], 'too'),

  // ══════════════════════════════════════════════════════════════════════════
  // WEEK 12 — Year Consolidation
  // Focus: digraph, vowel_digraph, split_digraph, suffix, prefix
  // ══════════════════════════════════════════════════════════════════════════

  // Set 1
  _qe3('elementary','digraph',12,1,'phonics', 'Which word has a digraph?', ['ship','sip','sit','six'], 'ship'),
  _qe3('elementary','vowel_digraph',12,1,'phonics', 'Which word has the long /a/ sound?', ['rain','ran','rin','run'], 'rain'),
  _qe3('elementary','split_digraph',12,1,'phonics', 'Which word uses a magic-e pattern?', ['cake','cat','cart','call'], 'cake'),
  _qe3('elementary','suffix',12,1,'phonics', 'What is "quick" + "-ly"?', ['quickly','quickest','quicker','quickl'], 'quickly'),
  _qe3('elementary','prefix',12,1,'phonics', 'What does "unhappy" mean?', ['not happy','very happy','happy again','before happy'], 'not happy'),
  _qe3('elementary','vowel_digraph',12,1,'phonics', 'Which word has the /oy/ sound?', ['coin','can','cold','cord'], 'coin'),
  _qe3('elementary','split_digraph',12,1,'phonics', 'What vowel sound does "kite" have?', ['long /i/','short /i/','long /a/','/ir/'], 'long /i/'),
  _qe3('elementary','suffix',12,1,'phonics', 'What is the plural of "dish"?', ['dishes','dishs','dishies','dishses'], 'dishes'),
  _qe3('elementary','prefix',12,1,'phonics', 'What does "redo" mean?', ['do again','not do','undo','before doing'], 'do again'),
  _qe3('elementary','digraph',12,1,'phonics', 'What sound does "ph" make?', ['/f/','/p/','/ph/','/v/'], '/f/'),

  // Set 2
  _qe3('elementary','vowel_digraph',12,2,'phonics', 'Which word has the long /oo/ sound?', ['moon','book','cook','look'], 'moon'),
  _qe3('elementary','split_digraph',12,2,'phonics', 'Adding "e" to "tub" makes ___?', ['tube','tabe','tibe','tobe'], 'tube'),
  _qe3('elementary','suffix',12,2,'phonics', 'What is "hop" + "-ing"?', ['hopping','hoping','hopeing','hoppying'], 'hopping'),
  _qe3('elementary','prefix',12,2,'phonics', 'What does "rebuild" mean?', ['build again','not build','build before','build after'], 'build again'),
  _qe3('elementary','digraph',12,2,'phonics', 'Which word has the "ng" ending?', ['ring','rip','rid','rim'], 'ring'),
  _qe3('elementary','vowel_digraph',12,2,'phonics', 'Which word has the /ow/ sound?', ['cloud','clod','clad','clue'], 'cloud'),
  _qe3('elementary','split_digraph',12,2,'phonics', 'Which word uses i_e?', ['bike','bik','bid','bit'], 'bike'),
  _qe3('elementary','suffix',12,2,'phonics', 'What is "tall" + "-est"?', ['tallest','taller','tally','tallly'], 'tallest'),
  _qe3('elementary','prefix',12,2,'phonics', 'Which word uses the prefix "un-"?', ['unkind','rekind','prekind','miskind'], 'unkind'),
  _qe3('elementary','vowel_digraph',12,2,'phonics', 'Which word uses "ay" for long /a/?', ['play','pal','pill','pull'], 'play'),

  // ══════════════════════════════════════════════════════════════════════════
  // WEEK 13 — End-of-Year Assessment
  // Focus: alternative_spelling, syllable, prefix, suffix, homophone
  // ══════════════════════════════════════════════════════════════════════════

  // Set 1
  _qe3('elementary','alternative_spelling',13,1,'phonics', 'Which spellings can all make the long /a/ sound?', ['a_e, ai, ay, a','ee, ea, e, y','oa, ow, o_e, o','ir, er, ur'], 'a_e, ai, ay, a'),
  _qe3('elementary','syllable',13,1,'phonics', 'How many syllables does "elephant" have?', ['3','2','1','4'], '3'),
  _qe3('elementary','prefix',13,1,'phonics', 'What does "unhappy" mean?', ['not happy','very happy','happy again','before happy'], 'not happy'),
  _qe3('elementary','suffix',13,1,'phonics', 'What is "tall" + "-est"?', ['tallest','taller','tally','tallly'], 'tallest'),
  _qe3('elementary','homophone',13,1,'phonics', 'Which fits: "She has ___ brothers"?', ['two','to','too','tew'], 'two'),
  _qe3('elementary','alternative_spelling',13,1,'phonics', 'Which spellings can all make the long /e/ sound?', ['ee, ea, e, y','a_e, ai, ay, a','oa, ow, o_e, o','ir, er, ur'], 'ee, ea, e, y'),
  _qe3('elementary','syllable',13,1,'phonics', 'How do you divide "rabbit" using VC/CV?', ['rab-bit','ra-bbit','rabb-it','r-abbit'], 'rab-bit'),
  _qe3('elementary','prefix',13,1,'phonics', 'What does "redo" mean?', ['do again','not do','undo','before doing'], 'do again'),
  _qe3('elementary','suffix',13,1,'phonics', 'What is "quick" + "-ly"?', ['quickly','quickest','quicker','quickl'], 'quickly'),
  _qe3('elementary','homophone',13,1,'phonics', 'Which fits: "Can you ___ me?"', ['hear','here','heer','heare'], 'hear'),

  // Set 2
  _qe3('elementary','alternative_spelling',13,2,'phonics', 'In "fly", the letter "y" makes which sound?', ['long /i/','long /e/','/y/','short /i/'], 'long /i/'),
  _qe3('elementary','syllable',13,2,'phonics', 'Which word has 2 syllables?', ['paper','cat','sun','strip'], 'paper'),
  _qe3('elementary','prefix',13,2,'phonics', 'What does "rebuild" mean?', ['build again','not build','build before','build after'], 'build again'),
  _qe3('elementary','suffix',13,2,'phonics', 'What is "hop" + "-ing"?', ['hopping','hoping','hopeing','hoppying'], 'hopping'),
  _qe3('elementary','homophone',13,2,'phonics', 'Which fits: "Stand ___ next to me"?', ['here','hear','heer','heare'], 'here'),
  _qe3('elementary','alternative_spelling',13,2,'phonics', 'Which word has long /i/ spelled with "igh"?', ['night','nit','nib','nil'], 'night'),
  _qe3('elementary','syllable',13,2,'phonics', 'How do you divide "basket" using VC/CV?', ['bas-ket','ba-sket','bask-et','b-asket'], 'bas-ket'),
  _qe3('elementary','prefix',13,2,'phonics', 'Which word uses "un-"?', ['unlock','relock','prelock','mislock'], 'unlock'),
  _qe3('elementary','suffix',13,2,'phonics', 'What is the plural of "box"?', ['boxes','boxs','boxies','boxess'], 'boxes'),
  _qe3('elementary','homophone',13,2,'phonics', 'Which sentence is correct?', ['I like it too.','I like it to.','I like it two.','I like it tew.'], 'I like it too.'),

];
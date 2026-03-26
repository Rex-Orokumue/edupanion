import 'package:uuid/uuid.dart';
import '../../../core/models/question.dart';

// ignore_for_file: prefer_single_quotes
const _ui = Uuid();

Question _qi(String level, String tag, int week, int set, String type,
    String q, List<String> opts, String ans, {required int term}) =>
    Question(
      id: _ui.v4(), level: level, skillTag: tag,
      weekNumber: week, assessmentSet: set, questionType: type,
      termNumber: term,
      questionText: q, options: opts, correctAnswer: ans,
    );

// ─────────────────────────────────────────────────────────────────────────────
// INTERMEDIATE — Primary 2–3  (All Terms)
//
// TERM 1:
// W1  : Review Elementary Patterns               → split_digraph, vowel_digraph, r_controlled
// W2  : Alternative Spellings for Long Vowels    → alternative_spelling
// W3  : Alternative Spellings for /o/ and /u/    → alternative_spelling
// W4  : Syllable Types: Open & Closed            → syllable
// W5  : Syllable Division: V/CV & VC/V           → syllable
// W6  : Prefixes: un-, re-, pre-, dis-           → prefix
// W7  : Prefixes: mis-, over-, sub-              → prefix
// W8  : Suffixes: -tion, -sion                   → suffix
// W9  : Suffixes: -ness, -ful, -less             → suffix
// W10 : Homophones                               → homophone
// W11 : Reading Comprehension                    → alternative_spelling, syllable
// W12 : Written Composition                      → prefix, suffix
// W13 : End-of-Term Assessment                   → alternative_spelling, syllable, prefix, suffix, homophone
//
// TERM 2:
// W1  : Review & Consolidate                     → alternative_spelling, prefix, suffix
// W2  : Silent Letters: kn, wr, gn               → alternative_spelling
// W3  : Silent Letters: mb, gh                   → alternative_spelling
// W4  : Compound Words                           → syllable
// W5  : Contractions                             → alternative_spelling
// W6  : Possessive Apostrophe                    → suffix
// W7  : Adjectives & Comparatives                → suffix
// W8  : Adverbs with -ly                         → suffix
// W9  : More Homophones                          → homophone
// W10 : 3-Syllable Words                         → syllable
// W11 : Reading: Non-Fiction                     → alternative_spelling, suffix, prefix
// W12 : Writing: Non-Fiction Paragraph           → suffix, prefix
// W13 : End-of-Term Assessment                   → alternative_spelling, syllable, suffix, homophone
//
// TERM 3:
// W1  : Year Review: Spelling Patterns           → alternative_spelling, split_digraph
// W2  : Word Families & Roots                    → prefix, suffix
// W3  : Greek & Latin Roots (intro)              → prefix, suffix
// W4  : Vocabulary: Synonyms & Antonyms          → homophone
// W5  : Punctuation for Effect                   → suffix
// W6  : Reading: Fiction                         → alternative_spelling, syllable
// W7  : Writing: Narrative                       → prefix, suffix, alternative_spelling
// W8  : Poetry & Rhyme                           → rhyme, alliteration
// W9  : Spelling Strategies Revision             → alternative_spelling, homophone
// W10 : Oral Presentation                        → syllable
// W11 : Comprehension Strategies                 → alternative_spelling, prefix
// W12 : Year Consolidation                       → alternative_spelling, syllable, prefix, suffix, homophone
// W13 : End-of-Year Assessment                   → alternative_spelling, syllable, prefix, suffix, homophone
// ─────────────────────────────────────────────────────────────────────────────

final List<Question> weekQuestionsIntermediate = [

  // ████████████████████████████████████████████████████████████████████████
  // TERM 1
  // ████████████████████████████████████████████████████████████████████████

  // ══════════════════════════════════════════════════════════════════════════
  // T1 WEEK 1 — Review Elementary Patterns (split_digraph + vowel_digraph + r_controlled)
  // ══════════════════════════════════════════════════════════════════════════

  // Set 1
  _qi('intermediate','split_digraph',1,1,'phonics', 'Which word uses the a_e pattern?', ['cake','cat','cart','call'], 'cake', term: 1),
  _qi('intermediate','vowel_digraph',1,1,'phonics', 'Which word has the long /a/ vowel digraph?', ['rain','ran','rin','run'], 'rain', term: 1),
  _qi('intermediate','r_controlled',1,1,'phonics', 'Which word has the /ar/ sound?', ['farm','fan','fin','fun'], 'farm', term: 1),
  _qi('intermediate','split_digraph',1,1,'phonics', 'Which word uses the i_e pattern?', ['kite','kit','kid','kin'], 'kite', term: 1),
  _qi('intermediate','vowel_digraph',1,1,'phonics', 'Which word has the long /e/ vowel digraph?', ['feet','fat','fit','fog'], 'feet', term: 1),
  _qi('intermediate','r_controlled',1,1,'phonics', 'Which word has the /or/ sound?', ['corn','con','can','coin'], 'corn', term: 1),
  _qi('intermediate','split_digraph',1,1,'phonics', 'Which word uses the o_e pattern?', ['bone','bon','bob','bog'], 'bone', term: 1),
  _qi('intermediate','vowel_digraph',1,1,'phonics', 'Which word has the /oy/ sound?', ['coin','can','cold','cord'], 'coin', term: 1),
  _qi('intermediate','r_controlled',1,1,'phonics', 'Which word has the /ur/ sound?', ['bird','bad','bid','bed'], 'bird', term: 1),
  _qi('intermediate','split_digraph',1,1,'phonics', 'Adding "e" to "tub" makes ___?', ['tube','tabe','tibe','tobe'], 'tube', term: 1),

  // Set 2
  _qi('intermediate','vowel_digraph',1,2,'phonics', 'Which word has the long /oo/ sound?', ['moon','book','cook','look'], 'moon', term: 1),
  _qi('intermediate','r_controlled',1,2,'phonics', 'Which three spellings all make the /ur/ sound?', ['er, ir, ur','ar, or, ur','er, ar, or','ir, ar, ee'], 'er, ir, ur', term: 1),
  _qi('intermediate','split_digraph',1,2,'phonics', 'What does the magic-e do in "tune"?', ['makes u say long /u/','makes t silent','doubles the n','nothing'], 'makes u say long /u/', term: 1),
  _qi('intermediate','vowel_digraph',1,2,'phonics', 'Which word has the /ow/ sound?', ['cloud','clod','clad','clue'], 'cloud', term: 1),
  _qi('intermediate','r_controlled',1,2,'phonics', 'Which word has the /ar/ sound?', ['car','can','cap','cat'], 'car', term: 1),
  _qi('intermediate','split_digraph',1,2,'phonics', 'Which word uses i_e?', ['bike','bik','bid','bit'], 'bike', term: 1),
  _qi('intermediate','vowel_digraph',1,2,'phonics', 'Which word uses "ay" for long /a/?', ['play','pal','pill','pull'], 'play', term: 1),
  _qi('intermediate','r_controlled',1,2,'phonics', 'Which word has the /ur/ sound spelled "ur"?', ['burn','barn','born','bran'], 'burn', term: 1),
  _qi('intermediate','split_digraph',1,2,'phonics', 'Which word does NOT use a magic-e pattern?', ['cake','kite','bone','bit'], 'bit', term: 1),
  _qi('intermediate','vowel_digraph',1,2,'phonics', 'Which word uses "oa" for long /o/?', ['road','rod','red','rid'], 'road', term: 1),

  // ══════════════════════════════════════════════════════════════════════════
  // T1 WEEK 2 — Alternative Spellings for Long Vowels (alternative_spelling)
  // Focus: map all spellings for /a/, /e/, /i/; use a sound-spelling reference chart
  // ══════════════════════════════════════════════════════════════════════════

  // Set 1
  _qi('intermediate','alternative_spelling',2,1,'phonics', 'Which spellings can all represent long /a/?', ['a_e, ai, ay, a','ee, ea, e, y','oa, ow, o_e, o','ir, er, ur'], 'a_e, ai, ay, a', term: 1),
  _qi('intermediate','alternative_spelling',2,1,'phonics', 'Which spellings can all represent long /e/?', ['ee, ea, e, y','a_e, ai, ay, a','oa, ow, o_e, o','ir, er, ur'], 'ee, ea, e, y', term: 1),
  _qi('intermediate','alternative_spelling',2,1,'phonics', 'Which spellings can all represent long /i/?', ['i_e, igh, y, ie','ee, ea, e, y','a_e, ai, ay, a','oa, ow, o_e, o'], 'i_e, igh, y, ie', term: 1),
  _qi('intermediate','alternative_spelling',2,1,'phonics', 'The word "eight" — which spelling represents long /a/?', ['eigh','ei','ey','ea'], 'eigh', term: 1),
  _qi('intermediate','alternative_spelling',2,1,'phonics', 'In "they", how is long /a/ spelled?', ['ey','ai','ay','a_e'], 'ey', term: 1),
  _qi('intermediate','alternative_spelling',2,1,'phonics', 'In "field", how is long /e/ spelled?', ['ie','ee','ea','e'], 'ie', term: 1),
  _qi('intermediate','alternative_spelling',2,1,'phonics', 'In "baby", the first vowel makes long /a/ — it is spelled with just ___', ['a','ai','ay','a_e'], 'a', term: 1),
  _qi('intermediate','alternative_spelling',2,1,'phonics', 'In "pie", how is long /i/ spelled?', ['ie','i_e','igh','y'], 'ie', term: 1),
  _qi('intermediate','alternative_spelling',2,1,'phonics', 'Which word has long /e/ spelled with "y"?', ['funny','fan','fend','fond'], 'funny', term: 1),
  _qi('intermediate','alternative_spelling',2,1,'phonics', 'Which word has long /i/ spelled with "igh"?', ['night','nit','nib','nil'], 'night', term: 1),

  // Set 2
  _qi('intermediate','alternative_spelling',2,2,'phonics', 'Which word has long /a/ spelled with "eigh"?', ['eight','eat','east','each'], 'eight', term: 1),
  _qi('intermediate','alternative_spelling',2,2,'phonics', 'Which word has long /e/ spelled with "ie"?', ['piece','pace','pike','poke'], 'piece', term: 1),
  _qi('intermediate','alternative_spelling',2,2,'phonics', 'Which word has long /i/ spelled with "ie"?', ['pie','pay','pea','poe'], 'pie', term: 1),
  _qi('intermediate','alternative_spelling',2,2,'phonics', 'In "obey", how is long /a/ spelled?', ['ey','ai','ay','a_e'], 'ey', term: 1),
  _qi('intermediate','alternative_spelling',2,2,'phonics', 'In "ski", how is long /e/ spelled?', ['i','ee','ea','ie'], 'i', term: 1),
  _qi('intermediate','alternative_spelling',2,2,'phonics', 'Which two words both have long /a/?', ['rain / eight','rain / bit','eight / sit','bat / cat'], 'rain / eight', term: 1),
  _qi('intermediate','alternative_spelling',2,2,'phonics', 'Which two words both have long /e/?', ['feet / piece','feet / fat','piece / pit','fit / set'], 'feet / piece', term: 1),
  _qi('intermediate','alternative_spelling',2,2,'phonics', 'Which two words both have long /i/?', ['night / pie','night / nit','pie / pit','sit / bit'], 'night / pie', term: 1),
  _qi('intermediate','alternative_spelling',2,2,'phonics', 'Which word does NOT have long /a/?', ['rain','eight','they','bat'], 'bat', term: 1),
  _qi('intermediate','alternative_spelling',2,2,'phonics', 'Which word does NOT have long /e/?', ['feet','piece','funny','fed'], 'fed', term: 1),

  // ══════════════════════════════════════════════════════════════════════════
  // T1 WEEK 3 — Alternative Spellings for /o/ and /u/ (alternative_spelling)
  // Focus: o_e, oa, ow, o → /o/; u_e, ue, ew → /u/
  // ══════════════════════════════════════════════════════════════════════════

  // Set 1
  _qi('intermediate','alternative_spelling',3,1,'phonics', 'Which spellings can all represent long /o/?', ['o_e, oa, ow, o','a_e, ai, ay, a','ee, ea, e, y','ir, er, ur'], 'o_e, oa, ow, o', term: 1),
  _qi('intermediate','alternative_spelling',3,1,'phonics', 'Which spellings can all represent long /u/?', ['u_e, ue, ew','o_e, oa, ow, o','ee, ea, e, y','ir, er, ur'], 'u_e, ue, ew', term: 1),
  _qi('intermediate','alternative_spelling',3,1,'phonics', 'In "bone", how is long /o/ spelled?', ['o_e','oa','ow','o'], 'o_e', term: 1),
  _qi('intermediate','alternative_spelling',3,1,'phonics', 'In "boat", how is long /o/ spelled?', ['oa','o_e','ow','o'], 'oa', term: 1),
  _qi('intermediate','alternative_spelling',3,1,'phonics', 'In "snow", how is long /o/ spelled?', ['ow','o_e','oa','o'], 'ow', term: 1),
  _qi('intermediate','alternative_spelling',3,1,'phonics', 'In "go", how is long /o/ spelled?', ['o','o_e','oa','ow'], 'o', term: 1),
  _qi('intermediate','alternative_spelling',3,1,'phonics', 'In "tune", how is long /u/ spelled?', ['u_e','ue','ew','u'], 'u_e', term: 1),
  _qi('intermediate','alternative_spelling',3,1,'phonics', 'In "blue", how is long /u/ spelled?', ['ue','u_e','ew','u'], 'ue', term: 1),
  _qi('intermediate','alternative_spelling',3,1,'phonics', 'In "new", how is long /u/ spelled?', ['ew','u_e','ue','u'], 'ew', term: 1),
  _qi('intermediate','alternative_spelling',3,1,'phonics', 'Which word has long /o/ spelled with just "o"?', ['old','oat','one','owe'], 'old', term: 1),

  // Set 2
  _qi('intermediate','alternative_spelling',3,2,'phonics', 'Which word has long /o/ spelled with "oa"?', ['road','rod','red','rid'], 'road', term: 1),
  _qi('intermediate','alternative_spelling',3,2,'phonics', 'Which word has long /o/ spelled with "ow"?', ['slow','slot','slob','slop'], 'slow', term: 1),
  _qi('intermediate','alternative_spelling',3,2,'phonics', 'Which word has long /u/ spelled with "ue"?', ['clue','club','clug','clun'], 'clue', term: 1),
  _qi('intermediate','alternative_spelling',3,2,'phonics', 'Which word has long /u/ spelled with "ew"?', ['drew','drab','drip','drop'], 'drew', term: 1),
  _qi('intermediate','alternative_spelling',3,2,'phonics', 'Which two words both have long /o/?', ['road / snow','road / rod','snow / slot','clue / blue'], 'road / snow', term: 1),
  _qi('intermediate','alternative_spelling',3,2,'phonics', 'Which two words both have long /u/?', ['clue / drew','clue / club','drew / drip','tune / tun'], 'clue / drew', term: 1),
  _qi('intermediate','alternative_spelling',3,2,'phonics', 'Which word does NOT have long /o/?', ['bone','road','snow','not'], 'not', term: 1),
  _qi('intermediate','alternative_spelling',3,2,'phonics', 'Which word does NOT have long /u/?', ['tune','blue','new','cup'], 'cup', term: 1),
  _qi('intermediate','alternative_spelling',3,2,'phonics', 'In "throw", how is long /o/ spelled?', ['ow','oa','o_e','o'], 'ow', term: 1),
  _qi('intermediate','alternative_spelling',3,2,'phonics', 'In "Sue", how is long /u/ spelled?', ['ue','u_e','ew','u'], 'ue', term: 1),

  // ══════════════════════════════════════════════════════════════════════════
  // T1 WEEK 4 — Syllable Types: Open & Closed (syllable)
  // Focus: open syllables (CV: me, go); closed syllables (CVC: sit, map)
  // ══════════════════════════════════════════════════════════════════════════

  // Set 1
  _qi('intermediate','syllable',4,1,'phonics', 'An open syllable ends in a ___?', ['vowel','consonant','digraph','cluster'], 'vowel', term: 1),
  _qi('intermediate','syllable',4,1,'phonics', 'A closed syllable ends in a ___?', ['consonant','vowel','digraph','cluster'], 'consonant', term: 1),
  _qi('intermediate','syllable',4,1,'phonics', 'Which syllable is open?', ['me','sit','map','cat'], 'me', term: 1),
  _qi('intermediate','syllable',4,1,'phonics', 'Which syllable is closed?', ['sit','me','go','she'], 'sit', term: 1),
  _qi('intermediate','syllable',4,1,'phonics', 'In an open syllable, the vowel is usually ___?', ['long','short','silent','schwa'], 'long', term: 1),
  _qi('intermediate','syllable',4,1,'phonics', 'In a closed syllable, the vowel is usually ___?', ['short','long','silent','schwa'], 'short', term: 1),
  _qi('intermediate','syllable',4,1,'phonics', 'Which syllable is open?', ['go','got','cot','hot'], 'go', term: 1),
  _qi('intermediate','syllable',4,1,'phonics', 'Which syllable is closed?', ['map','may','pay','say'], 'map', term: 1),
  _qi('intermediate','syllable',4,1,'phonics', 'In "tiger", what type is the first syllable "ti"?', ['open','closed','digraph','r-controlled'], 'open', term: 1),
  _qi('intermediate','syllable',4,1,'phonics', 'In "rabbit", what type is the first syllable "rab"?', ['closed','open','digraph','r-controlled'], 'closed', term: 1),

  // Set 2
  _qi('intermediate','syllable',4,2,'phonics', 'Which syllable is open?', ['she','shed','ship','shop'], 'she', term: 1),
  _qi('intermediate','syllable',4,2,'phonics', 'Which syllable is closed?', ['cat','pay','day','go'], 'cat', term: 1),
  _qi('intermediate','syllable',4,2,'phonics', 'In "bacon", the first syllable "ba" is ___?', ['open','closed','digraph','r-controlled'], 'open', term: 1),
  _qi('intermediate','syllable',4,2,'phonics', 'In "basket", the first syllable "bas" is ___?', ['closed','open','digraph','r-controlled'], 'closed', term: 1),
  _qi('intermediate','syllable',4,2,'phonics', 'Which word starts with an open syllable?', ['paper','rabbit','basket','napkin'], 'paper', term: 1),
  _qi('intermediate','syllable',4,2,'phonics', 'Which word starts with a closed syllable?', ['mitten','tiger','bacon','raven'], 'mitten', term: 1),
  _qi('intermediate','syllable',4,2,'phonics', 'The syllable "pro" in "program" is ___?', ['open','closed','digraph','r-controlled'], 'open', term: 1),
  _qi('intermediate','syllable',4,2,'phonics', 'The syllable "lem" in "lemon" is ___?', ['closed','open','digraph','r-controlled'], 'closed', term: 1),
  _qi('intermediate','syllable',4,2,'phonics', 'Which syllable is open?', ['by','bit','bat','bog'], 'by', term: 1),
  _qi('intermediate','syllable',4,2,'phonics', 'Which syllable is closed?', ['hub','he','be','go'], 'hub', term: 1),

  // ══════════════════════════════════════════════════════════════════════════
  // T1 WEEK 5 — Syllable Division: V/CV & VC/V (syllable)
  // Focus: V/CV rule (ti-ger); VC/V rule (cab-in)
  // ══════════════════════════════════════════════════════════════════════════

  // Set 1
  _qi('intermediate','syllable',5,1,'phonics', 'The V/CV rule says: divide ___ the consonant, leaving an open first syllable?', ['before','after','between two','at the end'], 'before', term: 1),
  _qi('intermediate','syllable',5,1,'phonics', 'The VC/V rule says: divide ___ the consonant, creating a closed first syllable?', ['after','before','between two','at the end'], 'after', term: 1),
  _qi('intermediate','syllable',5,1,'phonics', 'How do you divide "tiger" using V/CV?', ['ti-ger','tig-er','t-iger','tige-r'], 'ti-ger', term: 1),
  _qi('intermediate','syllable',5,1,'phonics', 'How do you divide "cabin" using VC/V?', ['cab-in','ca-bin','c-abin','cabi-n'], 'cab-in', term: 1),
  _qi('intermediate','syllable',5,1,'phonics', 'How do you divide "robot" using V/CV?', ['ro-bot','rob-ot','r-obot','robo-t'], 'ro-bot', term: 1),
  _qi('intermediate','syllable',5,1,'phonics', 'How do you divide "novel" using VC/V?', ['nov-el','no-vel','n-ovel','nove-l'], 'nov-el', term: 1),
  _qi('intermediate','syllable',5,1,'phonics', 'How do you divide "paper" using V/CV?', ['pa-per','pap-er','p-aper','pape-r'], 'pa-per', term: 1),
  _qi('intermediate','syllable',5,1,'phonics', 'How do you divide "camel" using VC/V?', ['cam-el','ca-mel','c-amel','came-l'], 'cam-el', term: 1),
  _qi('intermediate','syllable',5,1,'phonics', 'In V/CV division, the first syllable is usually ___?', ['open (long vowel)','closed (short vowel)','r-controlled','silent'], 'open (long vowel)', term: 1),
  _qi('intermediate','syllable',5,1,'phonics', 'In VC/V division, the first syllable is usually ___?', ['closed (short vowel)','open (long vowel)','r-controlled','silent'], 'closed (short vowel)', term: 1),

  // Set 2
  _qi('intermediate','syllable',5,2,'phonics', 'How do you divide "music" using V/CV?', ['mu-sic','mus-ic','m-usic','musi-c'], 'mu-sic', term: 1),
  _qi('intermediate','syllable',5,2,'phonics', 'How do you divide "lemon" using VC/V?', ['lem-on','le-mon','l-emon','lemo-n'], 'lem-on', term: 1),
  _qi('intermediate','syllable',5,2,'phonics', 'How do you divide "spider" using V/CV?', ['spi-der','spid-er','sp-ider','spide-r'], 'spi-der', term: 1),
  _qi('intermediate','syllable',5,2,'phonics', 'How do you divide "planet" using VC/V?', ['plan-et','pla-net','p-lanet','plane-t'], 'plan-et', term: 1),
  _qi('intermediate','syllable',5,2,'phonics', 'How do you divide "even" using V/CV?', ['e-ven','ev-en','e-v-en','eve-n'], 'e-ven', term: 1),
  _qi('intermediate','syllable',5,2,'phonics', 'How do you divide "rapid" using VC/V?', ['rap-id','ra-pid','r-apid','rapi-d'], 'rap-id', term: 1),
  _qi('intermediate','syllable',5,2,'phonics', 'How do you divide "bonus" using V/CV?', ['bo-nus','bon-us','b-onus','bonu-s'], 'bo-nus', term: 1),
  _qi('intermediate','syllable',5,2,'phonics', 'How do you divide "magic" using VC/V?', ['mag-ic','ma-gic','m-agic','magi-c'], 'mag-ic', term: 1),
  _qi('intermediate','syllable',5,2,'phonics', 'Which word follows V/CV (open first syllable)?', ['tiger','cabin','camel','novel'], 'tiger', term: 1),
  _qi('intermediate','syllable',5,2,'phonics', 'Which word follows VC/V (closed first syllable)?', ['cabin','tiger','paper','robot'], 'cabin', term: 1),

  // ══════════════════════════════════════════════════════════════════════════
  // T1 WEEK 6 — Prefixes: un-, re-, pre-, dis- (prefix)
  // Focus: add prefixes to base words; infer word meaning from prefix
  // ══════════════════════════════════════════════════════════════════════════

  // Set 1
  _qi('intermediate','prefix',6,1,'phonics', 'What does "pre-" mean?', ['before','again','not','wrongly'], 'before', term: 1),
  _qi('intermediate','prefix',6,1,'phonics', 'What does "dis-" mean?', ['not or reverse','before','again','after'], 'not or reverse', term: 1),
  _qi('intermediate','prefix',6,1,'phonics', 'What does "preview" mean?', ['view before','view again','not view','view wrongly'], 'view before', term: 1),
  _qi('intermediate','prefix',6,1,'phonics', 'What does "disagree" mean?', ['not agree','agree again','agree before','agree wrongly'], 'not agree', term: 1),
  _qi('intermediate','prefix',6,1,'phonics', 'What does "prepay" mean?', ['pay before','pay again','not pay','pay wrongly'], 'pay before', term: 1),
  _qi('intermediate','prefix',6,1,'phonics', 'What does "disconnect" mean?', ['not connect / separate','connect again','connect before','connect wrongly'], 'not connect / separate', term: 1),
  _qi('intermediate','prefix',6,1,'phonics', 'Which word uses "pre-"?', ['preheat','reheat','unheat','disheat'], 'preheat', term: 1),
  _qi('intermediate','prefix',6,1,'phonics', 'Which word uses "dis-"?', ['disappear','reappear','unappear','preappear'], 'disappear', term: 1),
  _qi('intermediate','prefix',6,1,'phonics', 'What is the base word in "preview"?', ['view','pre','previ','ew'], 'view', term: 1),
  _qi('intermediate','prefix',6,1,'phonics', 'What is the base word in "disagree"?', ['agree','dis','disag','ree'], 'agree', term: 1),

  // Set 2
  _qi('intermediate','prefix',6,2,'phonics', 'What does "un-" mean?', ['not or reverse','again','before','wrongly'], 'not or reverse', term: 1),
  _qi('intermediate','prefix',6,2,'phonics', 'What does "re-" mean?', ['again','not','before','wrongly'], 'again', term: 1),
  _qi('intermediate','prefix',6,2,'phonics', 'What does "precook" mean?', ['cook before','cook again','not cook','cook wrongly'], 'cook before', term: 1),
  _qi('intermediate','prefix',6,2,'phonics', 'What does "dislike" mean?', ['not like','like again','like before','like wrongly'], 'not like', term: 1),
  _qi('intermediate','prefix',6,2,'phonics', 'What does "uncomfortable" mean?', ['not comfortable','comfortable again','comfortable before','comfortable wrongly'], 'not comfortable', term: 1),
  _qi('intermediate','prefix',6,2,'phonics', 'What does "reuse" mean?', ['use again','not use','use before','use wrongly'], 'use again', term: 1),
  _qi('intermediate','prefix',6,2,'phonics', 'Which prefix means "before"?', ['pre-','re-','un-','dis-'], 'pre-', term: 1),
  _qi('intermediate','prefix',6,2,'phonics', 'Which prefix means "not or reverse"?', ['dis-','re-','pre-','mis-'], 'dis-', term: 1),
  _qi('intermediate','prefix',6,2,'phonics', 'Which word has "pre-"?', ['predict','redirect','undict','disdict'], 'predict', term: 1),
  _qi('intermediate','prefix',6,2,'phonics', 'Which word has "dis-"?', ['disorder','reorder','unorder','preorder'], 'disorder', term: 1),

  // ══════════════════════════════════════════════════════════════════════════
  // T1 WEEK 7 — Prefixes: mis-, over-, sub- (prefix)
  // Focus: mis- = wrongly, over- = too much, sub- = under
  // ══════════════════════════════════════════════════════════════════════════

  // Set 1
  _qi('intermediate','prefix',7,1,'phonics', 'What does "mis-" mean?', ['wrongly','too much','under','before'], 'wrongly', term: 1),
  _qi('intermediate','prefix',7,1,'phonics', 'What does "over-" mean?', ['too much / above','wrongly','under','before'], 'too much / above', term: 1),
  _qi('intermediate','prefix',7,1,'phonics', 'What does "sub-" mean?', ['under / below','too much','wrongly','before'], 'under / below', term: 1),
  _qi('intermediate','prefix',7,1,'phonics', 'What does "misspell" mean?', ['spell wrongly','spell again','spell before','spell too much'], 'spell wrongly', term: 1),
  _qi('intermediate','prefix',7,1,'phonics', 'What does "overeat" mean?', ['eat too much','eat wrongly','eat under','eat before'], 'eat too much', term: 1),
  _qi('intermediate','prefix',7,1,'phonics', 'What does "subway" mean?', ['way under ground','way above','wrong way','way before'], 'way under ground', term: 1),
  _qi('intermediate','prefix',7,1,'phonics', 'Which word uses "mis-"?', ['mislead','overlead','sublead','prelead'], 'mislead', term: 1),
  _qi('intermediate','prefix',7,1,'phonics', 'Which word uses "over-"?', ['overlook','mislead','submerge','predict'], 'overlook', term: 1),
  _qi('intermediate','prefix',7,1,'phonics', 'Which word uses "sub-"?', ['submerge','mislead','overlook','preview'], 'submerge', term: 1),
  _qi('intermediate','prefix',7,1,'phonics', 'What does "misunderstand" mean?', ['understand wrongly','understand too much','understand under','understand again'], 'understand wrongly', term: 1),

  // Set 2
  _qi('intermediate','prefix',7,2,'phonics', 'What does "overwork" mean?', ['work too much','work wrongly','work under','work before'], 'work too much', term: 1),
  _qi('intermediate','prefix',7,2,'phonics', 'What does "submarine" mean?', ['vessel under water','vessel too big','vessel wrongly made','vessel before time'], 'vessel under water', term: 1),
  _qi('intermediate','prefix',7,2,'phonics', 'What does "misbehave" mean?', ['behave wrongly / badly','behave too much','behave under pressure','behave before others'], 'behave wrongly / badly', term: 1),
  _qi('intermediate','prefix',7,2,'phonics', 'What does "overcharge" mean?', ['charge too much','charge wrongly','charge under','charge before'], 'charge too much', term: 1),
  _qi('intermediate','prefix',7,2,'phonics', 'Which prefix means "wrongly"?', ['mis-','over-','sub-','pre-'], 'mis-', term: 1),
  _qi('intermediate','prefix',7,2,'phonics', 'Which prefix means "too much"?', ['over-','mis-','sub-','pre-'], 'over-', term: 1),
  _qi('intermediate','prefix',7,2,'phonics', 'Which prefix means "under"?', ['sub-','mis-','over-','pre-'], 'sub-', term: 1),
  _qi('intermediate','prefix',7,2,'phonics', 'What is the base word in "mislead"?', ['lead','mis','misl','ead'], 'lead', term: 1),
  _qi('intermediate','prefix',7,2,'phonics', 'What is the base word in "overlook"?', ['look','over','overl','ook'], 'look', term: 1),
  _qi('intermediate','prefix',7,2,'phonics', 'What is the base word in "submerge"?', ['merge','sub','subm','erge'], 'merge', term: 1),

  // ══════════════════════════════════════════════════════════════════════════
  // T1 WEEK 8 — Suffixes: -tion, -sion (suffix)
  // Focus: nation, station, action; mansion, tension
  // ══════════════════════════════════════════════════════════════════════════

  // Set 1
  _qi('intermediate','suffix',8,1,'phonics', 'What sound does "-tion" make?', ['/shun/','/tion/','/sion/','/shon/'], '/shun/', term: 1),
  _qi('intermediate','suffix',8,1,'phonics', 'What sound does "-sion" make?', ['/shun/ or /zhun/','/sion/','/tion/','/shon/'], '/shun/ or /zhun/', term: 1),
  _qi('intermediate','suffix',8,1,'phonics', 'Which word ends with "-tion"?', ['nation','mansion','version','occasion'], 'nation', term: 1),
  _qi('intermediate','suffix',8,1,'phonics', 'Which word ends with "-sion"?', ['mansion','nation','station','action'], 'mansion', term: 1),
  _qi('intermediate','suffix',8,1,'phonics', 'Which word ends with "-tion"?', ['station','tension','vision','fusion'], 'station', term: 1),
  _qi('intermediate','suffix',8,1,'phonics', 'Which word ends with "-sion"?', ['tension','action','nation','fraction'], 'tension', term: 1),
  _qi('intermediate','suffix',8,1,'phonics', 'What is "act" + "-ion"?', ['action','acttion','actsion','actision'], 'action', term: 1),
  _qi('intermediate','suffix',8,1,'phonics', 'What does the suffix "-tion" / "-sion" typically turn a verb into?', ['a noun','an adjective','an adverb','a verb'], 'a noun', term: 1),
  _qi('intermediate','suffix',8,1,'phonics', 'Which word is spelled correctly?', ['fraction','fracktion','fraktion','fracktion'], 'fraction', term: 1),
  _qi('intermediate','suffix',8,1,'phonics', 'Which word is spelled correctly?', ['vision','vizion','vission','viszion'], 'vision', term: 1),

  // Set 2
  _qi('intermediate','suffix',8,2,'phonics', 'Which word ends with "-tion"?', ['direction','extension','dimension','mansion'], 'direction', term: 1),
  _qi('intermediate','suffix',8,2,'phonics', 'Which word ends with "-sion"?', ['extension','direction','fraction','nation'], 'extension', term: 1),
  _qi('intermediate','suffix',8,2,'phonics', 'Which word is spelled correctly?', ['mention','mension','menttion','mentshun'], 'mention', term: 1),
  _qi('intermediate','suffix',8,2,'phonics', 'Which word is spelled correctly?', ['passion','pation','pasion','passtion'], 'passion', term: 1),
  _qi('intermediate','suffix',8,2,'phonics', 'What is "tense" → "-ion" form?', ['tension','tention','tenstion','tenshun'], 'tension', term: 1),
  _qi('intermediate','suffix',8,2,'phonics', 'What is "educate" → "-ion" form?', ['education','educattion','educasion','educashun'], 'education', term: 1),
  _qi('intermediate','suffix',8,2,'phonics', 'Which word ends with "-tion"?', ['pollution','explosion','invasion','decision'], 'pollution', term: 1),
  _qi('intermediate','suffix',8,2,'phonics', 'Which word ends with "-sion"?', ['invasion','pollution','solution','nation'], 'invasion', term: 1),
  _qi('intermediate','suffix',8,2,'phonics', 'Which word is spelled correctly?', ['position','possition','posision','posittion'], 'position', term: 1),
  _qi('intermediate','suffix',8,2,'phonics', 'Which word is spelled correctly?', ['decision','decission','desision','decistion'], 'decision', term: 1),

  // ══════════════════════════════════════════════════════════════════════════
  // T1 WEEK 9 — Suffixes: -ness, -ful, -less (suffix)
  // Focus: add -ness, -ful, -less to adjectives; understand meaning change
  // ══════════════════════════════════════════════════════════════════════════

  // Set 1
  _qi('intermediate','suffix',9,1,'phonics', 'What does the suffix "-ness" do?', ['turns an adjective into a noun (state of)','turns a noun into a verb','makes a word negative','means full of'], 'turns an adjective into a noun (state of)', term: 1),
  _qi('intermediate','suffix',9,1,'phonics', 'What does the suffix "-ful" mean?', ['full of','without','state of','action of'], 'full of', term: 1),
  _qi('intermediate','suffix',9,1,'phonics', 'What does the suffix "-less" mean?', ['without','full of','state of','action of'], 'without', term: 1),
  _qi('intermediate','suffix',9,1,'phonics', 'What is "happy" + "-ness"?', ['happiness','happyness','hapiness','happinness'], 'happiness', term: 1),
  _qi('intermediate','suffix',9,1,'phonics', 'What is "hope" + "-ful"?', ['hopeful','hopefull','hopful','hopefule'], 'hopeful', term: 1),
  _qi('intermediate','suffix',9,1,'phonics', 'What is "hope" + "-less"?', ['hopeless','hopeles','hoopless','hopless'], 'hopeless', term: 1),
  _qi('intermediate','suffix',9,1,'phonics', 'What does "darkness" mean?', ['state of being dark','full of dark','without dark','action of dark'], 'state of being dark', term: 1),
  _qi('intermediate','suffix',9,1,'phonics', 'What does "careful" mean?', ['full of care','without care','state of care','action of care'], 'full of care', term: 1),
  _qi('intermediate','suffix',9,1,'phonics', 'What does "careless" mean?', ['without care','full of care','state of care','action of care'], 'without care', term: 1),
  _qi('intermediate','suffix',9,1,'phonics', 'What is "kind" + "-ness"?', ['kindness','kindnes','kyndness','kindnness'], 'kindness', term: 1),

  // Set 2
  _qi('intermediate','suffix',9,2,'phonics', 'What is "power" + "-ful"?', ['powerful','powerfull','powerful','powrful'], 'powerful', term: 1),
  _qi('intermediate','suffix',9,2,'phonics', 'What is "power" + "-less"?', ['powerless','powerles','powrless','powerles'], 'powerless', term: 1),
  _qi('intermediate','suffix',9,2,'phonics', 'What is "sad" + "-ness"?', ['sadness','sadnes','sadnness','sadnes'], 'sadness', term: 1),
  _qi('intermediate','suffix',9,2,'phonics', 'What is "fear" + "-less"?', ['fearless','fearles','ferless','feerless'], 'fearless', term: 1),
  _qi('intermediate','suffix',9,2,'phonics', 'What is "use" + "-ful"?', ['useful','usefull','usful','usefule'], 'useful', term: 1),
  _qi('intermediate','suffix',9,2,'phonics', 'What is "use" + "-less"?', ['useless','useles','usless','uselless'], 'useless', term: 1),
  _qi('intermediate','suffix',9,2,'phonics', 'Which word uses "-ness"?', ['goodness','goodful','goodless','goodly'], 'goodness', term: 1),
  _qi('intermediate','suffix',9,2,'phonics', 'Which word uses "-ful"?', ['thankful','thankness','thankless','thankly'], 'thankful', term: 1),
  _qi('intermediate','suffix',9,2,'phonics', 'Which word uses "-less"?', ['speechless','speechful','speechness','speechly'], 'speechless', term: 1),
  _qi('intermediate','suffix',9,2,'phonics', 'What is "bright" + "-ness"?', ['brightness','brightnes','bryghtness','brightnness'], 'brightness', term: 1),

  // ══════════════════════════════════════════════════════════════════════════
  // T1 WEEK 10 — Homophones (homophone)
  // Focus: their/there/they're, where/wear/were
  // ══════════════════════════════════════════════════════════════════════════

  // Set 1
  _qi('intermediate','homophone',10,1,'phonics', 'Which "their/there/they\'re" fits: "___ going to the park"?', ['They\'re','Their','There','Thare'], 'They\'re', term: 1),
  _qi('intermediate','homophone',10,1,'phonics', 'Which "their/there/they\'re" fits: "Put the bag over ___"?', ['there','their','they\'re','thare'], 'there', term: 1),
  _qi('intermediate','homophone',10,1,'phonics', 'Which "their/there/they\'re" fits: "___ dog is brown"?', ['Their','There','They\'re','Thare'], 'Their', term: 1),
  _qi('intermediate','homophone',10,1,'phonics', 'What is "they\'re" short for?', ['they are','they were','there is','their own'], 'they are', term: 1),
  _qi('intermediate','homophone',10,1,'phonics', 'Which "where/wear/were" fits: "___ did you go?"', ['Where','Wear','Were','Wher'], 'Where', term: 1),
  _qi('intermediate','homophone',10,1,'phonics', 'Which "where/wear/were" fits: "She will ___ a hat"?', ['wear','where','were','wer'], 'wear', term: 1),
  _qi('intermediate','homophone',10,1,'phonics', 'Which "where/wear/were" fits: "They ___ happy"?', ['were','where','wear','wer'], 'were', term: 1),
  _qi('intermediate','homophone',10,1,'phonics', 'Which sentence is correct?', ['Their dog is lost.','There dog is lost.','They\'re dog is lost.','Thare dog is lost.'], 'Their dog is lost.', term: 1),
  _qi('intermediate','homophone',10,1,'phonics', 'Which sentence is correct?', ['They\'re coming soon.','Their coming soon.','There coming soon.','Thare coming soon.'], 'They\'re coming soon.', term: 1),
  _qi('intermediate','homophone',10,1,'phonics', 'Which sentence is correct?', ['Put it there.','Put it their.','Put it they\'re.','Put it thare.'], 'Put it there.', term: 1),

  // Set 2
  _qi('intermediate','homophone',10,2,'phonics', 'Which sentence is correct?', ['Where are you?','Wear are you?','Were are you?','Wher are you?'], 'Where are you?', term: 1),
  _qi('intermediate','homophone',10,2,'phonics', 'Which sentence is correct?', ['She will wear red.','She will where red.','She will were red.','She will wer red.'], 'She will wear red.', term: 1),
  _qi('intermediate','homophone',10,2,'phonics', 'Which sentence is correct?', ['They were late.','They where late.','They wear late.','They wer late.'], 'They were late.', term: 1),
  _qi('intermediate','homophone',10,2,'phonics', 'Which fits: "___ is my pen?"', ['Where','Wear','Were','Wher'], 'Where', term: 1),
  _qi('intermediate','homophone',10,2,'phonics', 'Which fits: "I ___ my school uniform"?', ['wear','where','were','wer'], 'wear', term: 1),
  _qi('intermediate','homophone',10,2,'phonics', 'Which fits: "We ___ at school yesterday"?', ['were','where','wear','wer'], 'were', term: 1),
  _qi('intermediate','homophone',10,2,'phonics', 'Which fits: "___ books are on the shelf"?', ['Their','There','They\'re','Thare'], 'Their', term: 1),
  _qi('intermediate','homophone',10,2,'phonics', 'Which fits: "___ is the library?"', ['Where','Wear','Were','Wher'], 'Where', term: 1),
  _qi('intermediate','homophone',10,2,'phonics', 'Which fits: "___ happy to help"?', ['They\'re','Their','There','Thare'], 'They\'re', term: 1),
  _qi('intermediate','homophone',10,2,'phonics', 'Which fits: "She was ___ before me"?', ['there','their','they\'re','thare'], 'there', term: 1),

  // ══════════════════════════════════════════════════════════════════════════
  // T1 WEEK 11 — Reading Comprehension (alternative_spelling + syllable)
  // Focus: read a 2-paragraph text; answer literal and inferential questions
  // ══════════════════════════════════════════════════════════════════════════

  // Set 1
  _qi('intermediate','alternative_spelling',11,1,'phonics', 'Which word has long /a/ in: "The player gained eight points in the game"?', ['gained','The','player','points'], 'gained', term: 1),
  _qi('intermediate','syllable',11,1,'phonics', 'How many syllables in "fantastic"?', ['3','2','4','1'], '3', term: 1),
  _qi('intermediate','alternative_spelling',11,1,'phonics', 'Which word has long /e/ in: "The chief believed the thief had fled"?', ['believed','The','chief','had'], 'believed', term: 1),
  _qi('intermediate','syllable',11,1,'phonics', 'How many syllables in "umbrella"?', ['3','2','4','1'], '3', term: 1),
  _qi('intermediate','alternative_spelling',11,1,'phonics', 'Which word has long /i/ in: "The bright light made the night sky glow"?', ['bright','The','made','sky'], 'bright', term: 1),
  _qi('intermediate','syllable',11,1,'phonics', 'How do you divide "tiger" (V/CV)?', ['ti-ger','tig-er','t-iger','tige-r'], 'ti-ger', term: 1),
  _qi('intermediate','alternative_spelling',11,1,'phonics', 'Which word has long /o/ in: "The old boat floated down the slow river"?', ['floated','old','boat','slow'], 'floated', term: 1),
  _qi('intermediate','syllable',11,1,'phonics', 'How do you divide "cabin" (VC/V)?', ['cab-in','ca-bin','c-abin','cabi-n'], 'cab-in', term: 1),
  _qi('intermediate','alternative_spelling',11,1,'phonics', 'Which word has long /u/ in: "The student drew a new clue on the board"?', ['drew','The','student','board'], 'drew', term: 1),
  _qi('intermediate','syllable',11,1,'phonics', 'Which syllable type ends in a vowel?', ['open','closed','r-controlled','digraph'], 'open', term: 1),

  // Set 2
  _qi('intermediate','syllable',11,2,'phonics', 'How many syllables in "exciting"?', ['3','2','4','1'], '3', term: 1),
  _qi('intermediate','alternative_spelling',11,2,'phonics', 'Which word uses "eigh" for long /a/?', ['eight','eat','east','each'], 'eight', term: 1),
  _qi('intermediate','syllable',11,2,'phonics', 'How many syllables in "beautiful"?', ['3','2','4','1'], '3', term: 1),
  _qi('intermediate','alternative_spelling',11,2,'phonics', 'Which word uses "ie" for long /e/?', ['piece','pace','pike','poke'], 'piece', term: 1),
  _qi('intermediate','syllable',11,2,'phonics', 'How many syllables in "important"?', ['3','2','4','1'], '3', term: 1),
  _qi('intermediate','alternative_spelling',11,2,'phonics', 'Which word uses "igh" for long /i/?', ['light','lit','lid','lip'], 'light', term: 1),
  _qi('intermediate','syllable',11,2,'phonics', 'How do you divide "music" (V/CV)?', ['mu-sic','mus-ic','m-usic','musi-c'], 'mu-sic', term: 1),
  _qi('intermediate','alternative_spelling',11,2,'phonics', 'Which word uses "ue" for long /u/?', ['clue','club','clug','clun'], 'clue', term: 1),
  _qi('intermediate','syllable',11,2,'phonics', 'How do you divide "lemon" (VC/V)?', ['lem-on','le-mon','l-emon','lemo-n'], 'lem-on', term: 1),
  _qi('intermediate','alternative_spelling',11,2,'phonics', 'Which word uses "ew" for long /u/?', ['drew','drab','drip','drop'], 'drew', term: 1),

  // ══════════════════════════════════════════════════════════════════════════
  // T1 WEEK 12 — Written Composition (prefix + suffix)
  // Focus: write a 5-sentence paragraph; use 3+ words with affixes
  // ══════════════════════════════════════════════════════════════════════════

  // Set 1
  _qi('intermediate','prefix',12,1,'phonics', 'Which word is spelled correctly?', ['preview','prevew','preveew','preveiw'], 'preview', term: 1),
  _qi('intermediate','suffix',12,1,'phonics', 'Which word is spelled correctly?', ['happiness','happyness','hapiness','happinness'], 'happiness', term: 1),
  _qi('intermediate','prefix',12,1,'phonics', 'Which word is spelled correctly?', ['disappear','disapear','dissapear','disappear'], 'disappear', term: 1),
  _qi('intermediate','suffix',12,1,'phonics', 'Which word is spelled correctly?', ['hopeful','hopefull','hopful','hopefule'], 'hopeful', term: 1),
  _qi('intermediate','prefix',12,1,'phonics', 'Which word is spelled correctly?', ['mislead','misleed','mislied','misleede'], 'mislead', term: 1),
  _qi('intermediate','suffix',12,1,'phonics', 'Which word is spelled correctly?', ['nation','nashun','nattion','nashion'], 'nation', term: 1),
  _qi('intermediate','prefix',12,1,'phonics', 'Which word is spelled correctly?', ['submarine','submirine','submareene','submerine'], 'submarine', term: 1),
  _qi('intermediate','suffix',12,1,'phonics', 'Which word is spelled correctly?', ['careless','carelless','careles','carelees'], 'careless', term: 1),
  _qi('intermediate','prefix',12,1,'phonics', 'Which sentence uses a prefix correctly?', ['She will preheat the oven.','She will praheat the oven.','She will priheat the oven.','She will prooheat the oven.'], 'She will preheat the oven.', term: 1),
  _qi('intermediate','suffix',12,1,'phonics', 'Which sentence uses a suffix correctly?', ['The decision was final.','The descision was final.','The decistion was final.','The decission was final.'], 'The decision was final.', term: 1),

  // Set 2
  _qi('intermediate','suffix',12,2,'phonics', 'Which word is spelled correctly?', ['tension','tenstion','tenshun','tenscion'], 'tension', term: 1),
  _qi('intermediate','prefix',12,2,'phonics', 'Which word is spelled correctly?', ['overwork','overwerk','overworck','ovwerwork'], 'overwork', term: 1),
  _qi('intermediate','suffix',12,2,'phonics', 'Which word is spelled correctly?', ['darkness','darknes','darknness','darknesse'], 'darkness', term: 1),
  _qi('intermediate','prefix',12,2,'phonics', 'Which word is spelled correctly?', ['misbehave','misbehav','misbeheve','misbehav'], 'misbehave', term: 1),
  _qi('intermediate','suffix',12,2,'phonics', 'Which word is spelled correctly?', ['powerful','powerfull','powerful','powrful'], 'powerful', term: 1),
  _qi('intermediate','prefix',12,2,'phonics', 'Which word is spelled correctly?', ['disagree','dissagree','disaagree','disagreee'], 'disagree', term: 1),
  _qi('intermediate','suffix',12,2,'phonics', 'Which word is spelled correctly?', ['useless','useles','usless','uselless'], 'useless', term: 1),
  _qi('intermediate','prefix',12,2,'phonics', 'Which word is spelled correctly?', ['predict','prediect','preddict','prediict'], 'predict', term: 1),
  _qi('intermediate','suffix',12,2,'phonics', 'Which word is spelled correctly?', ['kindness','kindnes','kyndness','kindnness'], 'kindness', term: 1),
  _qi('intermediate','prefix',12,2,'phonics', 'Which word is spelled correctly?', ['uncomfortable','uncomfertable','uncomftable','uncomfortble'], 'uncomfortable', term: 1),

  // ══════════════════════════════════════════════════════════════════════════
  // T1 WEEK 13 — End-of-Term Assessment
  // Focus: alternative_spelling, syllable, prefix, suffix, homophone
  // ══════════════════════════════════════════════════════════════════════════

  // Set 1
  _qi('intermediate','alternative_spelling',13,1,'phonics', 'Which spellings represent long /o/?', ['o_e, oa, ow, o','a_e, ai, ay, a','ee, ea, e, y','ir, er, ur'], 'o_e, oa, ow, o', term: 1),
  _qi('intermediate','syllable',13,1,'phonics', 'How do you divide "tiger"?', ['ti-ger','tig-er','t-iger','tige-r'], 'ti-ger', term: 1),
  _qi('intermediate','prefix',13,1,'phonics', 'What does "preview" mean?', ['view before','view again','not view','view wrongly'], 'view before', term: 1),
  _qi('intermediate','suffix',13,1,'phonics', 'What does "hopeful" mean?', ['full of hope','without hope','state of hope','action of hope'], 'full of hope', term: 1),
  _qi('intermediate','homophone',13,1,'phonics', 'Which fits: "___ going to school"?', ['They\'re','Their','There','Thare'], 'They\'re', term: 1),
  _qi('intermediate','alternative_spelling',13,1,'phonics', 'Which spellings represent long /u/?', ['u_e, ue, ew','o_e, oa, ow, o','ee, ea, e, y','ir, er, ur'], 'u_e, ue, ew', term: 1),
  _qi('intermediate','syllable',13,1,'phonics', 'How do you divide "cabin"?', ['cab-in','ca-bin','c-abin','cabi-n'], 'cab-in', term: 1),
  _qi('intermediate','prefix',13,1,'phonics', 'What does "misunderstand" mean?', ['understand wrongly','understand again','not understand','understand before'], 'understand wrongly', term: 1),
  _qi('intermediate','suffix',13,1,'phonics', 'What does "careless" mean?', ['without care','full of care','state of care','action of care'], 'without care', term: 1),
  _qi('intermediate','homophone',13,1,'phonics', 'Which fits: "___ books are mine"?', ['Their','There','They\'re','Thare'], 'Their', term: 1),

  // Set 2
  _qi('intermediate','alternative_spelling',13,2,'phonics', 'Which word has long /a/ spelled "eigh"?', ['eight','eat','east','each'], 'eight', term: 1),
  _qi('intermediate','syllable',13,2,'phonics', 'An open syllable ends in a ___?', ['vowel','consonant','digraph','cluster'], 'vowel', term: 1),
  _qi('intermediate','prefix',13,2,'phonics', 'What does "submarine" mean?', ['vessel under water','vessel too big','vessel wrongly made','vessel before time'], 'vessel under water', term: 1),
  _qi('intermediate','suffix',13,2,'phonics', 'What is "happy" + "-ness"?', ['happiness','happyness','hapiness','happinness'], 'happiness', term: 1),
  _qi('intermediate','homophone',13,2,'phonics', 'Which fits: "___ were you yesterday?"', ['Where','Wear','Were','Wher'], 'Where', term: 1),
  _qi('intermediate','alternative_spelling',13,2,'phonics', 'Which word has long /i/ spelled "igh"?', ['night','nit','nib','nil'], 'night', term: 1),
  _qi('intermediate','syllable',13,2,'phonics', 'A closed syllable ends in a ___?', ['consonant','vowel','digraph','cluster'], 'consonant', term: 1),
  _qi('intermediate','prefix',13,2,'phonics', 'What does "overwork" mean?', ['work too much','work wrongly','work under','work before'], 'work too much', term: 1),
  _qi('intermediate','suffix',13,2,'phonics', 'What is "action" formed from?', ['act + -ion','-tion alone','acti + on','a + ction'], 'act + -ion', term: 1),
  _qi('intermediate','homophone',13,2,'phonics', 'Which fits: "She will ___ a coat today"?', ['wear','where','were','wer'], 'wear', term: 1),

  // ████████████████████████████████████████████████████████████████████████
  // TERM 2
  // ████████████████████████████████████████████████████████████████████████

  // ══════════════════════════════════════════════════════════════════════════
  // T2 WEEK 1 — Review & Consolidate (alternative_spelling + prefix + suffix)
  // ══════════════════════════════════════════════════════════════════════════

  // Set 1
  _qi('intermediate','alternative_spelling',1,1,'phonics', 'Which word has long /a/?', ['eight','eat','east','each'], 'eight', term: 2),
  _qi('intermediate','prefix',1,1,'phonics', 'What does "disagree" mean?', ['not agree','agree again','agree before','agree wrongly'], 'not agree', term: 2),
  _qi('intermediate','suffix',1,1,'phonics', 'What does "hopeless" mean?', ['without hope','full of hope','state of hope','action of hope'], 'without hope', term: 2),
  _qi('intermediate','alternative_spelling',1,1,'phonics', 'Which word has long /e/?', ['piece','pace','pike','poke'], 'piece', term: 2),
  _qi('intermediate','prefix',1,1,'phonics', 'What does "overwork" mean?', ['work too much','work wrongly','work under','work before'], 'work too much', term: 2),
  _qi('intermediate','suffix',1,1,'phonics', 'What is "nation" formed from?', ['nation + -al','act + -ion','-tion alone','nat + ion'], 'act + -ion', term: 2),
  _qi('intermediate','alternative_spelling',1,1,'phonics', 'Which word has long /i/?', ['night','nit','nib','nil'], 'night', term: 2),
  _qi('intermediate','prefix',1,1,'phonics', 'What does "submarine" mean?', ['vessel under water','vessel too big','vessel wrongly made','vessel before time'], 'vessel under water', term: 2),
  _qi('intermediate','suffix',1,1,'phonics', 'What does "darkness" mean?', ['state of being dark','full of dark','without dark','action of dark'], 'state of being dark', term: 2),
  _qi('intermediate','alternative_spelling',1,1,'phonics', 'Which word has long /o/?', ['road','rod','red','rid'], 'road', term: 2),

  // Set 2
  _qi('intermediate','prefix',1,2,'phonics', 'Which word uses "mis-"?', ['mislead','overlead','sublead','prelead'], 'mislead', term: 2),
  _qi('intermediate','suffix',1,2,'phonics', 'Which word uses "-ful"?', ['thankful','thankness','thankless','thankly'], 'thankful', term: 2),
  _qi('intermediate','alternative_spelling',1,2,'phonics', 'Which word has long /u/?', ['clue','club','clug','clun'], 'clue', term: 2),
  _qi('intermediate','prefix',1,2,'phonics', 'Which word uses "pre-"?', ['predict','redirect','undict','disdict'], 'predict', term: 2),
  _qi('intermediate','suffix',1,2,'phonics', 'Which word uses "-ness"?', ['goodness','goodful','goodless','goodly'], 'goodness', term: 2),
  _qi('intermediate','alternative_spelling',1,2,'phonics', 'Which word has long /e/ spelled "ie"?', ['field','feel','fell','fill'], 'field', term: 2),
  _qi('intermediate','prefix',1,2,'phonics', 'Which word uses "dis-"?', ['disorder','reorder','unorder','preorder'], 'disorder', term: 2),
  _qi('intermediate','suffix',1,2,'phonics', 'Which word uses "-less"?', ['speechless','speechful','speechness','speechly'], 'speechless', term: 2),
  _qi('intermediate','alternative_spelling',1,2,'phonics', 'Which word has long /a/ spelled "ey"?', ['they','the','this','that'], 'they', term: 2),
  _qi('intermediate','prefix',1,2,'phonics', 'Which word uses "sub-"?', ['submerge','mislead','overlook','preview'], 'submerge', term: 2),

  // ══════════════════════════════════════════════════════════════════════════
  // T2 WEEK 2 — Silent Letters: kn, wr, gn (alternative_spelling)
  // Focus: kn = /n/, wr = /r/, gn = /n/; know, write, gnaw, kneel
  // ══════════════════════════════════════════════════════════════════════════

  // Set 1
  _qi('intermediate','alternative_spelling',2,1,'phonics', 'In words starting with "kn", the "k" is ___?', ['silent','sounded','a blend','doubled'], 'silent', term: 2),
  _qi('intermediate','alternative_spelling',2,1,'phonics', 'What sound does "kn" make in "know"?', ['/n/','/kn/','/k/','/nw/'], '/n/', term: 2),
  _qi('intermediate','alternative_spelling',2,1,'phonics', 'In words starting with "wr", the "w" is ___?', ['silent','sounded','a blend','doubled'], 'silent', term: 2),
  _qi('intermediate','alternative_spelling',2,1,'phonics', 'What sound does "wr" make in "write"?', ['/r/','/wr/','/w/','/rw/'], '/r/', term: 2),
  _qi('intermediate','alternative_spelling',2,1,'phonics', 'What sound does "gn" make in "gnaw"?', ['/n/','/gn/','/g/','/ng/'], '/n/', term: 2),
  _qi('intermediate','alternative_spelling',2,1,'phonics', 'Which word starts with silent "k"?', ['kneel','reel','feel','steel'], 'kneel', term: 2),
  _qi('intermediate','alternative_spelling',2,1,'phonics', 'Which word starts with silent "w"?', ['wrap','rap','tap','cap'], 'wrap', term: 2),
  _qi('intermediate','alternative_spelling',2,1,'phonics', 'Which word starts with silent "g"?', ['gnaw','naw','jaw','caw'], 'gnaw', term: 2),
  _qi('intermediate','alternative_spelling',2,1,'phonics', 'Which word is spelled correctly?', ['knock','nock','knoc','knoock'], 'knock', term: 2),
  _qi('intermediate','alternative_spelling',2,1,'phonics', 'Which word is spelled correctly?', ['write','rite','writ','wriet'], 'write', term: 2),

  // Set 2
  _qi('intermediate','alternative_spelling',2,2,'phonics', 'Which word has a silent "k"?', ['knife','life','wife','strife'], 'knife', term: 2),
  _qi('intermediate','alternative_spelling',2,2,'phonics', 'Which word has a silent "w"?', ['wrong','long','song','strong'], 'wrong', term: 2),
  _qi('intermediate','alternative_spelling',2,2,'phonics', 'Which word has a silent "g"?', ['gnat','nat','bat','fat'], 'gnat', term: 2),
  _qi('intermediate','alternative_spelling',2,2,'phonics', 'Which word is spelled correctly?', ['know','now','kno','knoe'], 'know', term: 2),
  _qi('intermediate','alternative_spelling',2,2,'phonics', 'Which word is spelled correctly?', ['wrist','rist','wist','wrrist'], 'wrist', term: 2),
  _qi('intermediate','alternative_spelling',2,2,'phonics', 'Which word is spelled correctly?', ['knight','night','knigt','nigte'], 'knight', term: 2),
  _qi('intermediate','alternative_spelling',2,2,'phonics', 'Which word is spelled correctly?', ['wreck','reck','wrek','wreeck'], 'wreck', term: 2),
  _qi('intermediate','alternative_spelling',2,2,'phonics', 'Which word is spelled correctly?', ['knit','nit','knitt','knite'], 'knit', term: 2),
  _qi('intermediate','alternative_spelling',2,2,'phonics', 'Which word does NOT have a silent letter?', ['know','wrap','gnat','net'], 'net', term: 2),
  _qi('intermediate','alternative_spelling',2,2,'phonics', 'In "knowledge", the silent letter is ___?', ['k','l','e','d'], 'k', term: 2),

  // ══════════════════════════════════════════════════════════════════════════
  // T2 WEEK 3 — Silent Letters: mb, gh (alternative_spelling)
  // Focus: lamb, thumb, night, eight; mb and gh
  // ══════════════════════════════════════════════════════════════════════════

  // Set 1
  _qi('intermediate','alternative_spelling',3,1,'phonics', 'In words ending with "mb", the "b" is ___?', ['silent','sounded','a blend','doubled'], 'silent', term: 2),
  _qi('intermediate','alternative_spelling',3,1,'phonics', 'Which word has a silent "b"?', ['lamb','lame','lane','lake'], 'lamb', term: 2),
  _qi('intermediate','alternative_spelling',3,1,'phonics', 'Which word has a silent "b"?', ['thumb','thud','thin','them'], 'thumb', term: 2),
  _qi('intermediate','alternative_spelling',3,1,'phonics', 'In "night", the letters "gh" are ___?', ['silent','sounded as /g/','sounded as /f/','sounded as /h/'], 'silent', term: 2),
  _qi('intermediate','alternative_spelling',3,1,'phonics', 'In "enough", the letters "gh" sound like ___?', ['/f/','silent','/g/','/ h/'], '/f/', term: 2),
  _qi('intermediate','alternative_spelling',3,1,'phonics', 'Which word has silent "gh"?', ['night','nit','nib','nil'], 'night', term: 2),
  _qi('intermediate','alternative_spelling',3,1,'phonics', 'Which word has silent "gh"?', ['eight','eat','east','each'], 'eight', term: 2),
  _qi('intermediate','alternative_spelling',3,1,'phonics', 'Which word is spelled correctly?', ['comb','com','coomb','combe'], 'comb', term: 2),
  _qi('intermediate','alternative_spelling',3,1,'phonics', 'Which word is spelled correctly?', ['climb','clim','cliumb','climbe'], 'climb', term: 2),
  _qi('intermediate','alternative_spelling',3,1,'phonics', 'Which word is spelled correctly?', ['light','lite','ligh','lighte'], 'light', term: 2),

  // Set 2
  _qi('intermediate','alternative_spelling',3,2,'phonics', 'Which word has a silent "b"?', ['bomb','boom','book','bore'], 'bomb', term: 2),
  _qi('intermediate','alternative_spelling',3,2,'phonics', 'Which word has silent "gh"?', ['thought','though','through','tough'], 'thought', term: 2),
  _qi('intermediate','alternative_spelling',3,2,'phonics', 'Which word is spelled correctly?', ['dumb','dum','doumb','dumbe'], 'dumb', term: 2),
  _qi('intermediate','alternative_spelling',3,2,'phonics', 'Which word is spelled correctly?', ['right','rite','righte','riight'], 'right', term: 2),
  _qi('intermediate','alternative_spelling',3,2,'phonics', 'In "rough", "gh" sounds like ___?', ['/f/','/g/','silent','/h/'], '/f/', term: 2),
  _qi('intermediate','alternative_spelling',3,2,'phonics', 'In "through", "gh" is ___?', ['silent','/f/','/g/','/ h/'], 'silent', term: 2),
  _qi('intermediate','alternative_spelling',3,2,'phonics', 'Which word has a silent "b"?', ['numb','name','note','nude'], 'numb', term: 2),
  _qi('intermediate','alternative_spelling',3,2,'phonics', 'Which word does NOT have a silent letter?', ['comb','night','lamb','mend'], 'mend', term: 2),
  _qi('intermediate','alternative_spelling',3,2,'phonics', 'Which word is spelled correctly?', ['bright','brite','brigh','brighte'], 'bright', term: 2),
  _qi('intermediate','alternative_spelling',3,2,'phonics', 'Which word is spelled correctly?', ['crumb','crum','croumb','crumbe'], 'crumb', term: 2),

  // ══════════════════════════════════════════════════════════════════════════
  // T2 WEEK 4 — Compound Words (syllable)
  // Focus: two base words in a compound; football, sunshine, bedroom
  // ══════════════════════════════════════════════════════════════════════════

  // Set 1
  _qi('intermediate','syllable',4,1,'phonics', 'A compound word is made of ___?', ['two base words joined together','a root and a suffix','a prefix and a root','three syllables'], 'two base words joined together', term: 2),
  _qi('intermediate','syllable',4,1,'phonics', 'What are the two base words in "football"?', ['foot + ball','foo + tball','footb + all','fo + otball'], 'foot + ball', term: 2),
  _qi('intermediate','syllable',4,1,'phonics', 'What are the two base words in "sunshine"?', ['sun + shine','su + nshine','suns + hine','sunsh + ine'], 'sun + shine', term: 2),
  _qi('intermediate','syllable',4,1,'phonics', 'What are the two base words in "bedroom"?', ['bed + room','bedr + oom','be + droom','bedroo + m'], 'bed + room', term: 2),
  _qi('intermediate','syllable',4,1,'phonics', 'Which is a compound word?', ['rainbow','raining','rained','rainy'], 'rainbow', term: 2),
  _qi('intermediate','syllable',4,1,'phonics', 'Which is a compound word?', ['toothbrush','toothy','toothed','toothing'], 'toothbrush', term: 2),
  _qi('intermediate','syllable',4,1,'phonics', 'What are the two base words in "birthday"?', ['birth + day','bir + thday','birthd + ay','bir + today'], 'birth + day', term: 2),
  _qi('intermediate','syllable',4,1,'phonics', 'What are the two base words in "waterfall"?', ['water + fall','wat + erfall','waterf + all','wate + rfall'], 'water + fall', term: 2),
  _qi('intermediate','syllable',4,1,'phonics', 'Which is a compound word?', ['homework','homely','homing','homed'], 'homework', term: 2),
  _qi('intermediate','syllable',4,1,'phonics', 'How many syllables does "football" have?', ['2','1','3','4'], '2', term: 2),

  // Set 2
  _qi('intermediate','syllable',4,2,'phonics', 'What are the two base words in "notebook"?', ['note + book','not + ebook','noteb + ook','n + otebook'], 'note + book', term: 2),
  _qi('intermediate','syllable',4,2,'phonics', 'What are the two base words in "doorbell"?', ['door + bell','do + orbell','doorb + ell','d + oorbell'], 'door + bell', term: 2),
  _qi('intermediate','syllable',4,2,'phonics', 'Which is a compound word?', ['starfish','starry','starred','starring'], 'starfish', term: 2),
  _qi('intermediate','syllable',4,2,'phonics', 'Which is a compound word?', ['cupboard','cupped','cupping','cups'], 'cupboard', term: 2),
  _qi('intermediate','syllable',4,2,'phonics', 'How many syllables in "sunshine"?', ['2','1','3','4'], '2', term: 2),
  _qi('intermediate','syllable',4,2,'phonics', 'How many syllables in "butterfly"?', ['3','2','4','1'], '3', term: 2),
  _qi('intermediate','syllable',4,2,'phonics', 'What are the two base words in "blackbird"?', ['black + bird','bl + ackbird','blackb + ird','blackbir + d'], 'black + bird', term: 2),
  _qi('intermediate','syllable',4,2,'phonics', 'Which is NOT a compound word?', ['basket','football','bedroom','sunshine'], 'basket', term: 2),
  _qi('intermediate','syllable',4,2,'phonics', 'What are the two base words in "outside"?', ['out + side','outs + ide','ou + tside','outsi + de'], 'out + side', term: 2),
  _qi('intermediate','syllable',4,2,'phonics', 'Which is a compound word?', ['airport','airy','aired','airing'], 'airport', term: 2),

  // ══════════════════════════════════════════════════════════════════════════
  // T2 WEEK 5 — Contractions (alternative_spelling)
  // Focus: apostrophe replaces letters; can't, won't, I'm, they're
  // ══════════════════════════════════════════════════════════════════════════

  // Set 1
  _qi('intermediate','alternative_spelling',5,1,'phonics', 'In a contraction, an apostrophe replaces ___?', ['missing letters','a full stop','a comma','a space'], 'missing letters', term: 2),
  _qi('intermediate','alternative_spelling',5,1,'phonics', 'What is the full form of "can\'t"?', ['cannot','can not','can it','can will'], 'cannot', term: 2),
  _qi('intermediate','alternative_spelling',5,1,'phonics', 'What is the full form of "won\'t"?', ['will not','would not','want not','was not'], 'will not', term: 2),
  _qi('intermediate','alternative_spelling',5,1,'phonics', 'What is the full form of "I\'m"?', ['I am','I will','I have','I had'], 'I am', term: 2),
  _qi('intermediate','alternative_spelling',5,1,'phonics', 'What is the full form of "they\'re"?', ['they are','they were','they will','they have'], 'they are', term: 2),
  _qi('intermediate','alternative_spelling',5,1,'phonics', 'What is the contraction of "do not"?', ['don\'t','dont','do\'nt','d\'ont'], 'don\'t', term: 2),
  _qi('intermediate','alternative_spelling',5,1,'phonics', 'What is the contraction of "it is"?', ['it\'s','its','i\'ts','its\''], 'it\'s', term: 2),
  _qi('intermediate','alternative_spelling',5,1,'phonics', 'What is the contraction of "we are"?', ['we\'re','were','we are','we\'ar'], 'we\'re', term: 2),
  _qi('intermediate','alternative_spelling',5,1,'phonics', 'Which is correct?', ['can\'t','ca\'nt','cant\'','can t'], 'can\'t', term: 2),
  _qi('intermediate','alternative_spelling',5,1,'phonics', 'Which is correct?', ['I\'m','Im','I\'am','Iam'], 'I\'m', term: 2),

  // Set 2
  _qi('intermediate','alternative_spelling',5,2,'phonics', 'What is the full form of "she\'s"?', ['she is / she has','she was','she will','she had'], 'she is / she has', term: 2),
  _qi('intermediate','alternative_spelling',5,2,'phonics', 'What is the full form of "he\'d"?', ['he would / he had','he did','he is','he will'], 'he would / he had', term: 2),
  _qi('intermediate','alternative_spelling',5,2,'phonics', 'What is the contraction of "have not"?', ['haven\'t','hav\'nt','have\'nt','ha\'vent'], 'haven\'t', term: 2),
  _qi('intermediate','alternative_spelling',5,2,'phonics', 'What is the contraction of "would not"?', ['wouldn\'t','woul\'nt','would\'nt','wo\'uldn\'t'], 'wouldn\'t', term: 2),
  _qi('intermediate','alternative_spelling',5,2,'phonics', 'Which sentence is correct?', ['I can\'t find it.','I ca\'nt find it.','I cant find it.','I can not\' find it.'], 'I can\'t find it.', term: 2),
  _qi('intermediate','alternative_spelling',5,2,'phonics', 'Which sentence is correct?', ['They\'re here now.','Their\'e here now.','There here now.','Theyre here now.'], 'They\'re here now.', term: 2),
  _qi('intermediate','alternative_spelling',5,2,'phonics', 'What is the contraction of "you will"?', ['you\'ll','you\'l','yo\'ull','y\'oull'], 'you\'ll', term: 2),
  _qi('intermediate','alternative_spelling',5,2,'phonics', 'What is the contraction of "is not"?', ['isn\'t','is\'nt','isnt','isn t'], 'isn\'t', term: 2),
  _qi('intermediate','alternative_spelling',5,2,'phonics', 'Which word does NOT contain an apostrophe as a contraction?', ['its (possession)','it\'s (it is)','can\'t','don\'t'], 'its (possession)', term: 2),
  _qi('intermediate','alternative_spelling',5,2,'phonics', 'What is the contraction of "we have"?', ['we\'ve','we\'v','wev\'e','w\'eve'], 'we\'ve', term: 2),

  // ══════════════════════════════════════════════════════════════════════════
  // T2 WEEK 6 — Possessive Apostrophe (suffix)
  // Focus: it's vs its, who's vs whose; apostrophe-s for possession
  // ══════════════════════════════════════════════════════════════════════════

  // Set 1
  _qi('intermediate','suffix',6,1,'phonics', 'To show possession we add ___?', ['apostrophe + s','s + apostrophe always','just s','just an apostrophe'], 'apostrophe + s', term: 2),
  _qi('intermediate','suffix',6,1,'phonics', 'Which shows possession correctly?', ['Tom\'s bag','Toms bag','Toms\' bag','Tom bag'], 'Tom\'s bag', term: 2),
  _qi('intermediate','suffix',6,1,'phonics', 'What does "it\'s" mean?', ['it is / it has','belonging to it','itself','it was'], 'it is / it has', term: 2),
  _qi('intermediate','suffix',6,1,'phonics', 'What does "its" (no apostrophe) mean?', ['belonging to it','it is','it has','it was'], 'belonging to it', term: 2),
  _qi('intermediate','suffix',6,1,'phonics', 'Which sentence is correct?', ['The dog wagged its tail.','The dog wagged it\'s tail.','The dog wagged its\' tail.','The dog wagged its tail\'s.'], 'The dog wagged its tail.', term: 2),
  _qi('intermediate','suffix',6,1,'phonics', 'What does "who\'s" mean?', ['who is / who has','belonging to who','whose own','who was'], 'who is / who has', term: 2),
  _qi('intermediate','suffix',6,1,'phonics', 'What does "whose" mean?', ['belonging to whom','who is','who has','who was'], 'belonging to whom', term: 2),
  _qi('intermediate','suffix',6,1,'phonics', 'Which sentence is correct?', ['Whose book is this?','Who\'s book is this?','Whos\' book is this?','Whos book is this?'], 'Whose book is this?', term: 2),
  _qi('intermediate','suffix',6,1,'phonics', 'Which sentence is correct?', ['It\'s raining today.','Its raining today.','It\'s\' raining today.','Its\' raining today.'], 'It\'s raining today.', term: 2),
  _qi('intermediate','suffix',6,1,'phonics', 'Which shows possession correctly?', ['Sarah\'s pencil','Sarahs pencil','Sarah pencil\'s','Sarah pencils'], 'Sarah\'s pencil', term: 2),

  // Set 2
  _qi('intermediate','suffix',6,2,'phonics', 'For plural words ending in "s", the apostrophe goes ___?', ['after the s','before the s','is not used','in the middle'], 'after the s', term: 2),
  _qi('intermediate','suffix',6,2,'phonics', 'Which shows possession for plural "boys"?', ['boys\' room','boy\'s room','boys room','boyss room'], 'boys\' room', term: 2),
  _qi('intermediate','suffix',6,2,'phonics', 'Which sentence uses apostrophe correctly for possession?', ['The girl\'s bag is red.','The girls bag is red.','The girl bag\'s is red.','The girls\' bag is red.'], 'The girl\'s bag is red.', term: 2),
  _qi('intermediate','suffix',6,2,'phonics', 'Which uses "it\'s" correctly?', ['It\'s a sunny day.','Its a sunny day.','Its\' a sunny day.','It\'s\' a sunny day.'], 'It\'s a sunny day.', term: 2),
  _qi('intermediate','suffix',6,2,'phonics', 'Which uses "whose" correctly?', ['Whose coat is that?','Who\'s coat is that?','Whos coat is that?','Whos\' coat is that?'], 'Whose coat is that?', term: 2),
  _qi('intermediate','suffix',6,2,'phonics', 'Which shows possession correctly?', ['James\'s book','Jamess book','James book\'s','James\' book only if classical'], 'James\'s book', term: 2),
  _qi('intermediate','suffix',6,2,'phonics', 'Which uses "who\'s" correctly?', ['Who\'s coming tonight?','Whose coming tonight?','Whos coming tonight?','Who coming tonight?'], 'Who\'s coming tonight?', term: 2),
  _qi('intermediate','suffix',6,2,'phonics', 'Which sentence is correct?', ['The cat licked its paw.','The cat licked it\'s paw.','The cat licked its\' paw.','The cat licked its\' paw.'], 'The cat licked its paw.', term: 2),
  _qi('intermediate','suffix',6,2,'phonics', 'Which shows possession correctly for plural "teachers"?', ['teachers\' lounge','teacher\'s lounge if many','teachers lounge','teacherss lounge'], 'teachers\' lounge', term: 2),
  _qi('intermediate','suffix',6,2,'phonics', 'Which sentence is correct?', ['That is Maria\'s phone.','That is Marias phone.','That is Maria phone\'s.','That is Marias\' phone.'], 'That is Maria\'s phone.', term: 2),

  // ══════════════════════════════════════════════════════════════════════════
  // T2 WEEK 7 — Adjectives & Comparatives (suffix)
  // Focus: -er, -est comparatives; doubling and drop-e rules
  // ══════════════════════════════════════════════════════════════════════════

  // Set 1
  _qi('intermediate','suffix',7,1,'phonics', 'What is "big" + "-er"?', ['bigger','biger','bigeer','bigerr'], 'bigger', term: 2),
  _qi('intermediate','suffix',7,1,'phonics', 'What is "big" + "-est"?', ['biggest','bigest','bigst','bigggest'], 'biggest', term: 2),
  _qi('intermediate','suffix',7,1,'phonics', 'What is "nice" + "-er"?', ['nicer','niceer','niceer','niccer'], 'nicer', term: 2),
  _qi('intermediate','suffix',7,1,'phonics', 'What is "nice" + "-est"?', ['nicest','nicest','niceest','niccest'], 'nicest', term: 2),
  _qi('intermediate','suffix',7,1,'phonics', 'For CVC adjectives (like "big"), we ___ before adding -er/-est?', ['double the final consonant','add e','do nothing','drop the vowel'], 'double the final consonant', term: 2),
  _qi('intermediate','suffix',7,1,'phonics', 'For adjectives ending in silent e (like "nice"), we ___ before adding -er/-est?', ['drop the e','double the consonant','add another e','do nothing'], 'drop the e', term: 2),
  _qi('intermediate','suffix',7,1,'phonics', 'What is "hot" + "-er"?', ['hotter','hoter','hoterr','hoteer'], 'hotter', term: 2),
  _qi('intermediate','suffix',7,1,'phonics', 'What is "late" + "-er"?', ['later','lateer','latter','leter'], 'later', term: 2),
  _qi('intermediate','suffix',7,1,'phonics', 'What is "thin" + "-est"?', ['thinnest','thinest','thinest','thinnst'], 'thinnest', term: 2),
  _qi('intermediate','suffix',7,1,'phonics', 'What is "wise" + "-est"?', ['wisest','wisest','wiseest','wiisest'], 'wisest', term: 2),

  // Set 2
  _qi('intermediate','suffix',7,2,'phonics', 'What is "flat" + "-er"?', ['flatter','flater','flater','flateer'], 'flatter', term: 2),
  _qi('intermediate','suffix',7,2,'phonics', 'What is "safe" + "-est"?', ['safest','safest','safeest','safiest'], 'safest', term: 2),
  _qi('intermediate','suffix',7,2,'phonics', 'What is "slim" + "-er"?', ['slimmer','slimer','slimeer','slimmerr'], 'slimmer', term: 2),
  _qi('intermediate','suffix',7,2,'phonics', 'What is "brave" + "-est"?', ['bravest','bravest','braveest','braviest'], 'bravest', term: 2),
  _qi('intermediate','suffix',7,2,'phonics', 'Which word is the comparative form of "cold"?', ['colder','coldest','coldly','cold'], 'colder', term: 2),
  _qi('intermediate','suffix',7,2,'phonics', 'Which word is the superlative form of "cold"?', ['coldest','colder','coldly','cold'], 'coldest', term: 2),
  _qi('intermediate','suffix',7,2,'phonics', 'Which is spelled correctly?', ['thinner','thiner','thinnerr','thineer'], 'thinner', term: 2),
  _qi('intermediate','suffix',7,2,'phonics', 'Which is spelled correctly?', ['largest','largeest','larggest','larjest'], 'largest', term: 2),
  _qi('intermediate','suffix',7,2,'phonics', 'What is "wet" + "-est"?', ['wettest','wetest','wettest','wettst'], 'wettest', term: 2),
  _qi('intermediate','suffix',7,2,'phonics', 'What is "pure" + "-er"?', ['purer','pureer','purrer','pureer'], 'purer', term: 2),

  // ══════════════════════════════════════════════════════════════════════════
  // T2 WEEK 8 — Adverbs with -ly (suffix)
  // Focus: form adverbs from adjectives; identify adverbs in sentences
  // ══════════════════════════════════════════════════════════════════════════

  // Set 1
  _qi('intermediate','suffix',8,1,'phonics', 'What does an adverb typically describe?', ['a verb (how something is done)','a noun','a pronoun','another adverb only'], 'a verb (how something is done)', term: 2),
  _qi('intermediate','suffix',8,1,'phonics', 'What is "slow" + "-ly"?', ['slowly','slowely','slowlie','slow-ly'], 'slowly', term: 2),
  _qi('intermediate','suffix',8,1,'phonics', 'What is "quick" + "-ly"?', ['quickly','quickely','quicklie','quick-ly'], 'quickly', term: 2),
  _qi('intermediate','suffix',8,1,'phonics', 'What is "soft" + "-ly"?', ['softly','softely','softlie','soft-ly'], 'softly', term: 2),
  _qi('intermediate','suffix',8,1,'phonics', 'What is "brave" + "-ly"?', ['bravely','bravly','bravelly','brave-ly'], 'bravely', term: 2),
  _qi('intermediate','suffix',8,1,'phonics', 'What is "happy" + "-ly"?', ['happily','happyly','hapily','happily'], 'happily', term: 2),
  _qi('intermediate','suffix',8,1,'phonics', 'For adjectives ending in "y", before adding -ly we ___?', ['change y to i','keep the y','drop the y','double the y'], 'change y to i', term: 2),
  _qi('intermediate','suffix',8,1,'phonics', 'Which word in "She ran quickly to school" is the adverb?', ['quickly','She','ran','school'], 'quickly', term: 2),
  _qi('intermediate','suffix',8,1,'phonics', 'What is "gentle" + "-ly"?', ['gently','gentlely','gentlelie','gentle-ly'], 'gently', term: 2),
  _qi('intermediate','suffix',8,1,'phonics', 'What is "angry" + "-ly"?', ['angrily','angryly','angrily','angry-ly'], 'angrily', term: 2),

  // Set 2
  _qi('intermediate','suffix',8,2,'phonics', 'What is "loud" + "-ly"?', ['loudly','loudely','loudlie','loud-ly'], 'loudly', term: 2),
  _qi('intermediate','suffix',8,2,'phonics', 'What is "easy" + "-ly"?', ['easily','easyly','easiely','easy-ly'], 'easily', term: 2),
  _qi('intermediate','suffix',8,2,'phonics', 'Which word in "He spoke calmly to the crowd" is the adverb?', ['calmly','He','spoke','crowd'], 'calmly', term: 2),
  _qi('intermediate','suffix',8,2,'phonics', 'What is "clear" + "-ly"?', ['clearly','clearely','clearlie','clear-ly'], 'clearly', term: 2),
  _qi('intermediate','suffix',8,2,'phonics', 'What is "merry" + "-ly"?', ['merrily','merryly','merriely','merry-ly'], 'merrily', term: 2),
  _qi('intermediate','suffix',8,2,'phonics', 'Which is spelled correctly?', ['carefully','carefuly','carfully','careful-ly'], 'carefully', term: 2),
  _qi('intermediate','suffix',8,2,'phonics', 'Which is spelled correctly?', ['noisily','noisyly','noisley','noisy-ly'], 'noisily', term: 2),
  _qi('intermediate','suffix',8,2,'phonics', 'Which is spelled correctly?', ['beautifully','beautifuly','beautifly','beautiful-ly'], 'beautifully', term: 2),
  _qi('intermediate','suffix',8,2,'phonics', 'What is "simple" + "-ly"?', ['simply','simplely','simplelie','simple-ly'], 'simply', term: 2),
  _qi('intermediate','suffix',8,2,'phonics', 'Which sentence has an adverb?', ['She danced gracefully.','She is graceful.','She was grace.','Her grace was noted.'], 'She danced gracefully.', term: 2),

  // ══════════════════════════════════════════════════════════════════════════
  // T2 WEEK 9 — More Homophones (homophone)
  // Focus: passed/past, allowed/aloud, affect/effect
  // ══════════════════════════════════════════════════════════════════════════

  // Set 1
  _qi('intermediate','homophone',9,1,'phonics', 'Which "passed/past" fits: "She ___ the test"?', ['passed','past','pased','passt'], 'passed', term: 2),
  _qi('intermediate','homophone',9,1,'phonics', 'Which "passed/past" fits: "In the ___, people walked everywhere"?', ['past','passed','pased','passt'], 'past', term: 2),
  _qi('intermediate','homophone',9,1,'phonics', 'Which "allowed/aloud" fits: "She read the poem ___ to the class"?', ['aloud','allowed','allooud','alowud'], 'aloud', term: 2),
  _qi('intermediate','homophone',9,1,'phonics', 'Which "allowed/aloud" fits: "We are not ___ to run inside"?', ['allowed','aloud','allooud','alowud'], 'allowed', term: 2),
  _qi('intermediate','homophone',9,1,'phonics', 'Which "affect/effect" fits: "The rain will ___ the match"?', ['affect','effect','affact','effact'], 'affect', term: 2),
  _qi('intermediate','homophone',9,1,'phonics', 'Which "affect/effect" fits: "The ___ of the medicine was immediate"?', ['effect','affect','affact','effact'], 'effect', term: 2),
  _qi('intermediate','homophone',9,1,'phonics', '"Affect" is usually a ___?', ['verb','noun','adjective','adverb'], 'verb', term: 2),
  _qi('intermediate','homophone',9,1,'phonics', '"Effect" is usually a ___?', ['noun','verb','adjective','adverb'], 'noun', term: 2),
  _qi('intermediate','homophone',9,1,'phonics', 'Which sentence is correct?', ['She passed the finish line.','She past the finish line.','She pased the finish line.','She passt the finish line.'], 'She passed the finish line.', term: 2),
  _qi('intermediate','homophone',9,1,'phonics', 'Which sentence is correct?', ['He read aloud to the class.','He read allowed to the class.','He read alowd to the class.','He read alod to the class.'], 'He read aloud to the class.', term: 2),

  // Set 2
  _qi('intermediate','homophone',9,2,'phonics', 'Which sentence is correct?', ['In the past, they used candles.','In the passed, they used candles.','In the past, they past candles.','In the pased, they used candles.'], 'In the past, they used candles.', term: 2),
  _qi('intermediate','homophone',9,2,'phonics', 'Which sentence is correct?', ['We are allowed to leave early.','We are aloud to leave early.','We are allooud to leave early.','We are alowud to leave early.'], 'We are allowed to leave early.', term: 2),
  _qi('intermediate','homophone',9,2,'phonics', 'Which sentence is correct?', ['The cold will affect your health.','The cold will effect your health.','The cold will affact your health.','The cold will effact your health.'], 'The cold will affect your health.', term: 2),
  _qi('intermediate','homophone',9,2,'phonics', 'Which sentence is correct?', ['The effect was surprising.','The affect was surprising.','The effact was surprising.','The affact was surprising.'], 'The effect was surprising.', term: 2),
  _qi('intermediate','homophone',9,2,'phonics', 'Which fits: "The bus ___ the stop at 3 pm"?', ['passed','past','pased','passt'], 'passed', term: 2),
  _qi('intermediate','homophone',9,2,'phonics', 'Which fits: "She sang ___ to the baby"?', ['aloud','allowed','allooud','alowud'], 'aloud', term: 2),
  _qi('intermediate','homophone',9,2,'phonics', 'Which fits: "Noise can ___ concentration"?', ['affect','effect','affact','effact'], 'affect', term: 2),
  _qi('intermediate','homophone',9,2,'phonics', 'Which fits: "The ___ of the storm was devastating"?', ['effect','affect','effact','affact'], 'effect', term: 2),
  _qi('intermediate','homophone',9,2,'phonics', 'Which fits: "We walked ___ the school"?', ['past','passed','pased','passt'], 'past', term: 2),
  _qi('intermediate','homophone',9,2,'phonics', 'Which fits: "Shouting is not ___ in the library"?', ['allowed','aloud','allooud','alowud'], 'allowed', term: 2),

  // ══════════════════════════════════════════════════════════════════════════
  // T2 WEEK 10 — 3-Syllable Words (syllable)
  // Focus: divide 3-syllable words; fantastic, umbrella, exciting
  // ══════════════════════════════════════════════════════════════════════════

  // Set 1
  _qi('intermediate','syllable',10,1,'phonics', 'How many syllables in "fantastic"?', ['3','2','4','1'], '3', term: 2),
  _qi('intermediate','syllable',10,1,'phonics', 'How do you divide "fantastic"?', ['fan-tas-tic','fant-as-tic','fan-tast-ic','fanta-s-tic'], 'fan-tas-tic', term: 2),
  _qi('intermediate','syllable',10,1,'phonics', 'How many syllables in "umbrella"?', ['3','2','4','1'], '3', term: 2),
  _qi('intermediate','syllable',10,1,'phonics', 'How do you divide "umbrella"?', ['um-brel-la','umb-rel-la','um-brell-a','umbr-el-la'], 'um-brel-la', term: 2),
  _qi('intermediate','syllable',10,1,'phonics', 'How many syllables in "exciting"?', ['3','2','4','1'], '3', term: 2),
  _qi('intermediate','syllable',10,1,'phonics', 'How do you divide "exciting"?', ['ex-cit-ing','exc-it-ing','ex-ci-ting','exci-t-ing'], 'ex-cit-ing', term: 2),
  _qi('intermediate','syllable',10,1,'phonics', 'How many syllables in "together"?', ['3','2','4','1'], '3', term: 2),
  _qi('intermediate','syllable',10,1,'phonics', 'How do you divide "together"?', ['to-geth-er','tog-eth-er','to-ge-ther','toge-th-er'], 'to-geth-er', term: 2),
  _qi('intermediate','syllable',10,1,'phonics', 'How many syllables in "enormous"?', ['3','2','4','1'], '3', term: 2),
  _qi('intermediate','syllable',10,1,'phonics', 'How many syllables in "hospital"?', ['3','2','4','1'], '3', term: 2),

  // Set 2
  _qi('intermediate','syllable',10,2,'phonics', 'How do you divide "dangerous"?', ['dan-ger-ous','danger-ous','dange-r-ous','d-an-gerous'], 'dan-ger-ous', term: 2),
  _qi('intermediate','syllable',10,2,'phonics', 'How many syllables in "volcano"?', ['3','2','4','1'], '3', term: 2),
  _qi('intermediate','syllable',10,2,'phonics', 'How do you divide "important"?', ['im-por-tant','imp-or-tant','im-port-ant','impor-t-ant'], 'im-por-tant', term: 2),
  _qi('intermediate','syllable',10,2,'phonics', 'How many syllables in "tomorrow"?', ['3','2','4','1'], '3', term: 2),
  _qi('intermediate','syllable',10,2,'phonics', 'How do you divide "tomorrow"?', ['to-mor-row','tom-or-row','to-morr-ow','tomor-r-ow'], 'to-mor-row', term: 2),
  _qi('intermediate','syllable',10,2,'phonics', 'How many syllables in "adventure"?', ['3','2','4','1'], '3', term: 2),
  _qi('intermediate','syllable',10,2,'phonics', 'How do you divide "adventure"?', ['ad-ven-ture','adv-en-ture','ad-ve-nture','adven-t-ure'], 'ad-ven-ture', term: 2),
  _qi('intermediate','syllable',10,2,'phonics', 'Which word has 3 syllables?', ['telescope','scope','see','look'], 'telescope', term: 2),
  _qi('intermediate','syllable',10,2,'phonics', 'Which word has 3 syllables?', ['remember','member','remind','mind'], 'remember', term: 2),
  _qi('intermediate','syllable',10,2,'phonics', 'How do you divide "beautiful"?', ['beau-ti-ful','bea-ut-iful','beaut-i-ful','beauti-f-ul'], 'beau-ti-ful', term: 2),

  // ══════════════════════════════════════════════════════════════════════════
  // T2 WEEK 11 — Reading: Non-Fiction (alternative_spelling + suffix + prefix)
  // Focus: read non-fiction passage; identify key facts; use vocabulary
  // ══════════════════════════════════════════════════════════════════════════

  // Set 1
  _qi('intermediate','alternative_spelling',11,1,'phonics', 'Which word has silent "kn" in: "The knight needed knowledge to win"?', ['knowledge','The','knight','win'], 'knowledge', term: 2),
  _qi('intermediate','suffix',11,1,'phonics', 'Which word uses "-tion" in: "The population of the nation grew quickly"?', ['population','The','nation','grew'], 'population', term: 2),
  _qi('intermediate','prefix',11,1,'phonics', 'Which word uses "dis-" in: "The discovery was a great achievement"?', ['discovery','The','great','achievement'], 'discovery', term: 2),
  _qi('intermediate','alternative_spelling',11,1,'phonics', 'Which word has silent "gh" in: "The drought brought great hardship to the region"?', ['drought','brought','great','hardship'], 'drought', term: 2),
  _qi('intermediate','suffix',11,1,'phonics', 'Which word uses "-ness" in: "The brightness of the sun was remarkable"?', ['brightness','The','sun','remarkable'], 'brightness', term: 2),
  _qi('intermediate','prefix',11,1,'phonics', 'Which word uses "over-" in: "Scientists discovered that overfishing damaged the ecosystem"?', ['overfishing','Scientists','discovered','damaged'], 'overfishing', term: 2),
  _qi('intermediate','alternative_spelling',11,1,'phonics', 'Which word has a contraction in: "It\'s important that we protect the environment"?', ['It\'s','important','protect','environment'], 'It\'s', term: 2),
  _qi('intermediate','suffix',11,1,'phonics', 'Which word uses "-ful" in: "A careful scientist always records results"?', ['careful','scientist','records','always'], 'careful', term: 2),
  _qi('intermediate','prefix',11,1,'phonics', 'Which word uses "sub-" in: "Submarines explore underwater environments"?', ['Submarines','explore','underwater','environments'], 'Submarines', term: 2),
  _qi('intermediate','alternative_spelling',11,1,'phonics', 'Which word has silent "mb" in: "The climbers had to climb over the bomb shelter"?', ['climb','climbers','bomb','shelter'], 'climb', term: 2),

  // Set 2
  _qi('intermediate','suffix',11,2,'phonics', 'Which word uses "-ly" in: "The scientist carefully measured each sample"?', ['carefully','The','scientist','measured'], 'carefully', term: 2),
  _qi('intermediate','prefix',11,2,'phonics', 'Which word uses "mis-" in: "Misinformation can mislead the public"?', ['mislead','Misinformation','public','can'], 'mislead', term: 2),
  _qi('intermediate','alternative_spelling',11,2,'phonics', 'Which word has silent "wr" in: "The writer wrapped the findings in her report"?', ['wrapped','The','writer','findings'], 'wrapped', term: 2),
  _qi('intermediate','suffix',11,2,'phonics', 'Which word uses "-less" in: "Careless disposal of waste is harmful"?', ['Careless','disposal','waste','harmful'], 'Careless', term: 2),
  _qi('intermediate','prefix',11,2,'phonics', 'Which word uses "pre-" in: "Scientists predicted the earthquake beforehand"?', ['predicted','Scientists','earthquake','beforehand'], 'predicted', term: 2),
  _qi('intermediate','alternative_spelling',11,2,'phonics', 'Which word uses a compound in: "The rainforest covers much of the country"?', ['rainforest','The','covers','country'], 'rainforest', term: 2),
  _qi('intermediate','suffix',11,2,'phonics', 'Which word uses "-tion" in: "Deforestation is a global problem"?', ['Deforestation','global','problem','is'], 'Deforestation', term: 2),
  _qi('intermediate','prefix',11,2,'phonics', 'Which word uses "re-" in: "Countries are working to reforest damaged land"?', ['reforest','Countries','working','damaged'], 'reforest', term: 2),
  _qi('intermediate','alternative_spelling',11,2,'phonics', 'Which word uses "gn" (silent g) in: "The gnarled tree was ancient"?', ['gnarled','The','tree','ancient'], 'gnarled', term: 2),
  _qi('intermediate','suffix',11,2,'phonics', 'Which word uses "-ness" in: "The roughness of the terrain made travel difficult"?', ['roughness','terrain','travel','difficult'], 'roughness', term: 2),

  // ══════════════════════════════════════════════════════════════════════════
  // T2 WEEK 12 — Writing: Non-Fiction Paragraph (suffix + prefix)
  // Focus: write a fact-based paragraph; use technical vocabulary; edit
  // ══════════════════════════════════════════════════════════════════════════

  // Set 1
  _qi('intermediate','suffix',12,1,'phonics', 'Which word is spelled correctly?', ['pollution','pollushun','polution','polluttion'], 'pollution', term: 2),
  _qi('intermediate','prefix',12,1,'phonics', 'Which word is spelled correctly?', ['discover','discoover','dicsover','discuver'], 'discover', term: 2),
  _qi('intermediate','suffix',12,1,'phonics', 'Which word is spelled correctly?', ['carefully','carefuly','carfully','careful-ly'], 'carefully', term: 2),
  _qi('intermediate','prefix',12,1,'phonics', 'Which word is spelled correctly?', ['submarine','submirine','submareene','submerine'], 'submarine', term: 2),
  _qi('intermediate','suffix',12,1,'phonics', 'Which word is spelled correctly?', ['darkness','darknes','darknness','darknesse'], 'darkness', term: 2),
  _qi('intermediate','prefix',12,1,'phonics', 'Which word is spelled correctly?', ['overwork','overwerk','overworck','ovwerwork'], 'overwork', term: 2),
  _qi('intermediate','suffix',12,1,'phonics', 'Which word is spelled correctly?', ['happiness','happyness','hapiness','happinness'], 'happiness', term: 2),
  _qi('intermediate','prefix',12,1,'phonics', 'Which word is spelled correctly?', ['mislead','misleed','mislied','misleede'], 'mislead', term: 2),
  _qi('intermediate','suffix',12,1,'phonics', 'Which word is spelled correctly?', ['tension','tenstion','tenshun','tenscion'], 'tension', term: 2),
  _qi('intermediate','prefix',12,1,'phonics', 'Which word is spelled correctly?', ['preview','prevew','preveew','preveiw'], 'preview', term: 2),

  // Set 2
  _qi('intermediate','suffix',12,2,'phonics', 'Which sentence is correct?', ['The invention changed everything.','The inventtion changed everything.','The invenshun changed everything.','The invension changed everything.'], 'The invention changed everything.', term: 2),
  _qi('intermediate','prefix',12,2,'phonics', 'Which sentence uses a prefix correctly?', ['Scientists discovered the island.','Scientists discuvered the island.','Scientists dicsovered the island.','Scientists discuvered the island.'], 'Scientists discovered the island.', term: 2),
  _qi('intermediate','suffix',12,2,'phonics', 'Which sentence is correct?', ['She walked quickly to the meeting.','She walked quickely to the meeting.','She walked quicklie to the meeting.','She walked quick-ly to the meeting.'], 'She walked quickly to the meeting.', term: 2),
  _qi('intermediate','prefix',12,2,'phonics', 'Which sentence is correct?', ['He decided to recycle the bottles.','He decided to reecycle the bottles.','He decided to ricycle the bottles.','He decided to re-cycle the bottles.'], 'He decided to recycle the bottles.', term: 2),
  _qi('intermediate','suffix',12,2,'phonics', 'Which sentence is correct?', ['The darkness made it hard to see.','The darknes made it hard to see.','The darknness made it hard to see.','The darknesse made it hard to see.'], 'The darkness made it hard to see.', term: 2),
  _qi('intermediate','prefix',12,2,'phonics', 'Which sentence is correct?', ['The submarine dived deep.','The submirine dived deep.','The submareene dived deep.','The submerine dived deep.'], 'The submarine dived deep.', term: 2),
  _qi('intermediate','suffix',12,2,'phonics', 'Which sentence is correct?', ['The nation voted for change.','The nashun voted for change.','The nattion voted for change.','The nashion voted for change.'], 'The nation voted for change.', term: 2),
  _qi('intermediate','prefix',12,2,'phonics', 'Which sentence is correct?', ['She disagreed with the result.','She dissagreed with the result.','She disaagree with the result.','She disagreee with the result.'], 'She disagreed with the result.', term: 2),
  _qi('intermediate','suffix',12,2,'phonics', 'Which sentence is correct?', ['The hopeless situation improved.','The hopeles situation improved.','The hoopless situation improved.','The hopless situation improved.'], 'The hopeless situation improved.', term: 2),
  _qi('intermediate','prefix',12,2,'phonics', 'Which sentence is correct?', ['They decided to rebuild the bridge.','They decided to rebild the bridge.','They decided to re-buuild the bridge.','They decided to rebuil the bridge.'], 'They decided to rebuild the bridge.', term: 2),

  // ══════════════════════════════════════════════════════════════════════════
  // T2 WEEK 13 — End-of-Term Assessment
  // Focus: alternative_spelling, syllable, suffix, homophone
  // ══════════════════════════════════════════════════════════════════════════

  // Set 1
  _qi('intermediate','alternative_spelling',13,1,'phonics', 'What sound does "kn" make?', ['/n/','/kn/','/k/','/nw/'], '/n/', term: 2),
  _qi('intermediate','syllable',13,1,'phonics', 'How many syllables in "fantastic"?', ['3','2','4','1'], '3', term: 2),
  _qi('intermediate','suffix',13,1,'phonics', 'What is "big" + "-ger"?', ['bigger','biger','bigeer','bigerr'], 'bigger', term: 2),
  _qi('intermediate','homophone',13,1,'phonics', 'Which fits: "She ___ the exam"?', ['passed','past','pased','passt'], 'passed', term: 2),
  _qi('intermediate','alternative_spelling',13,1,'phonics', 'In "lamb", the silent letter is ___?', ['b','m','a','l'], 'b', term: 2),
  _qi('intermediate','syllable',13,1,'phonics', 'What are the two base words in "football"?', ['foot + ball','foo + tball','footb + all','fo + otball'], 'foot + ball', term: 2),
  _qi('intermediate','suffix',13,1,'phonics', 'What is "happy" + "-ly"?', ['happily','happyly','hapily','happily'], 'happily', term: 2),
  _qi('intermediate','homophone',13,1,'phonics', 'Which fits: "___ not allowed to run"?', ['we\'re','were','wear','wee\'re'], 'we\'re', term: 2),
  _qi('intermediate','alternative_spelling',13,1,'phonics', 'What sound does "wr" make?', ['/r/','/wr/','/w/','/rw/'], '/r/', term: 2),
  _qi('intermediate','syllable',13,1,'phonics', 'How many syllables in "umbrella"?', ['3','2','4','1'], '3', term: 2),

  // Set 2
  _qi('intermediate','suffix',13,2,'phonics', 'Which sentence uses possessive apostrophe correctly?', ['Tom\'s bag is blue.','Toms bag is blue.','Toms\' bag is blue.','Tom bag\'s is blue.'], 'Tom\'s bag is blue.', term: 2),
  _qi('intermediate','homophone',13,2,'phonics', 'Which fits: "Noise can ___ your focus"?', ['affect','effect','affact','effact'], 'affect', term: 2),
  _qi('intermediate','alternative_spelling',13,2,'phonics', 'In "night", the silent letters are ___?', ['gh','nt','igh','ig'], 'gh', term: 2),
  _qi('intermediate','syllable',13,2,'phonics', 'How do you divide "tomorrow"?', ['to-mor-row','tom-or-row','to-morr-ow','tomor-r-ow'], 'to-mor-row', term: 2),
  _qi('intermediate','suffix',13,2,'phonics', 'What is "slow" + "-ly"?', ['slowly','slowely','slowlie','slow-ly'], 'slowly', term: 2),
  _qi('intermediate','homophone',13,2,'phonics', 'Which fits: "Reading ___ helps comprehension"?', ['aloud','allowed','allooud','alowud'], 'aloud', term: 2),
  _qi('intermediate','alternative_spelling',13,2,'phonics', 'What is the full form of "can\'t"?', ['cannot','can not','can it','can will'], 'cannot', term: 2),
  _qi('intermediate','syllable',13,2,'phonics', 'How many syllables in "adventure"?', ['3','2','4','1'], '3', term: 2),
  _qi('intermediate','suffix',13,2,'phonics', 'What does "careless" mean?', ['without care','full of care','state of care','action of care'], 'without care', term: 2),
  _qi('intermediate','homophone',13,2,'phonics', 'Which fits: "In the ___, children played outside more"?', ['past','passed','pased','passt'], 'past', term: 2),

  // ████████████████████████████████████████████████████████████████████████
  // TERM 3
  // ████████████████████████████████████████████████████████████████████████

  // ══════════════════════════════════════════════════════════════════════════
  // T3 WEEK 1 — Year Review: Spelling Patterns (alternative_spelling + split_digraph)
  // ══════════════════════════════════════════════════════════════════════════

  // Set 1
  _qi('intermediate','alternative_spelling',1,1,'phonics', 'Which word has long /a/ spelled "eigh"?', ['eight','eat','east','each'], 'eight', term: 3),
  _qi('intermediate','split_digraph',1,1,'phonics', 'Which word uses the a_e pattern?', ['cake','cat','cart','call'], 'cake', term: 3),
  _qi('intermediate','alternative_spelling',1,1,'phonics', 'What sound does "kn" make?', ['/n/','/kn/','/k/','/nw/'], '/n/', term: 3),
  _qi('intermediate','split_digraph',1,1,'phonics', 'Which word uses the i_e pattern?', ['kite','kit','kid','kin'], 'kite', term: 3),
  _qi('intermediate','alternative_spelling',1,1,'phonics', 'What sound does "wr" make?', ['/r/','/wr/','/w/','/rw/'], '/r/', term: 3),
  _qi('intermediate','split_digraph',1,1,'phonics', 'Which word uses the o_e pattern?', ['bone','bon','bob','bog'], 'bone', term: 3),
  _qi('intermediate','alternative_spelling',1,1,'phonics', 'In "lamb", the silent letter is ___?', ['b','m','a','l'], 'b', term: 3),
  _qi('intermediate','split_digraph',1,1,'phonics', 'What does the magic-e do in "tune"?', ['makes u say long /u/','makes t silent','doubles the n','nothing'], 'makes u say long /u/', term: 3),
  _qi('intermediate','alternative_spelling',1,1,'phonics', 'In "night", the silent letters are ___?', ['gh','nt','igh','ig'], 'gh', term: 3),
  _qi('intermediate','split_digraph',1,1,'phonics', 'Which word does NOT use a magic-e pattern?', ['cake','kite','bone','bit'], 'bit', term: 3),

  // Set 2
  _qi('intermediate','alternative_spelling',1,2,'phonics', 'Which spellings represent long /o/?', ['o_e, oa, ow, o','a_e, ai, ay, a','ee, ea, e, y','ir, er, ur'], 'o_e, oa, ow, o', term: 3),
  _qi('intermediate','split_digraph',1,2,'phonics', 'Adding "e" to "hop" makes ___?', ['hope','hipe','hape','hupe'], 'hope', term: 3),
  _qi('intermediate','alternative_spelling',1,2,'phonics', 'Which word has long /i/ spelled "ie"?', ['pie','pay','pea','poe'], 'pie', term: 3),
  _qi('intermediate','split_digraph',1,2,'phonics', 'Which word uses u_e?', ['cube','cub','cut','cup'], 'cube', term: 3),
  _qi('intermediate','alternative_spelling',1,2,'phonics', 'Which word has long /e/ spelled "ie"?', ['piece','pace','pike','poke'], 'piece', term: 3),
  _qi('intermediate','split_digraph',1,2,'phonics', 'Which word uses i_e?', ['bike','bik','bid','bit'], 'bike', term: 3),
  _qi('intermediate','alternative_spelling',1,2,'phonics', 'Which spellings represent long /u/?', ['u_e, ue, ew','o_e, oa, ow, o','ee, ea, e, y','ir, er, ur'], 'u_e, ue, ew', term: 3),
  _qi('intermediate','split_digraph',1,2,'phonics', 'Which word uses a_e?', ['wave','wag','wax','wad'], 'wave', term: 3),
  _qi('intermediate','alternative_spelling',1,2,'phonics', 'Which word has long /a/ spelled "ey"?', ['they','the','this','that'], 'they', term: 3),
  _qi('intermediate','split_digraph',1,2,'phonics', 'What is the vowel sound in "crane"?', ['long /a/','short /a/','long /e/','/ar/'], 'long /a/', term: 3),

  // ══════════════════════════════════════════════════════════════════════════
  // T3 WEEK 2 — Word Families & Roots (prefix + suffix)
  // Focus: base words within word families; act → action → react → active
  // ══════════════════════════════════════════════════════════════════════════

  // Set 1
  _qi('intermediate','prefix',2,1,'phonics', 'In the word family "act, action, react, active", the base word is ___?', ['act','action','react','active'], 'act', term: 3),
  _qi('intermediate','suffix',2,1,'phonics', 'What suffix is added to "act" to make "action"?', ['-ion','-ive','-tion','-ing'], '-ion', term: 3),
  _qi('intermediate','prefix',2,1,'phonics', 'What prefix is added to "act" to make "react"?', ['re-','un-','pre-','dis-'], 're-', term: 3),
  _qi('intermediate','suffix',2,1,'phonics', 'What suffix is added to "act" to make "active"?', ['-ive','-ion','-ing','-ful'], '-ive', term: 3),
  _qi('intermediate','prefix',2,1,'phonics', 'Which words are in the same word family?', ['play / replay / playful','play / say / stay','play / day / may','play / lay / bay'], 'play / replay / playful', term: 3),
  _qi('intermediate','suffix',2,1,'phonics', 'What is the base word in "darkness"?', ['dark','ness','darkn','ark'], 'dark', term: 3),
  _qi('intermediate','prefix',2,1,'phonics', 'What is the base word in "unhappy"?', ['happy','un','unhap','py'], 'happy', term: 3),
  _qi('intermediate','suffix',2,1,'phonics', 'Which word is in the same family as "nation"?', ['national','notable','natural','neutral'], 'national', term: 3),
  _qi('intermediate','prefix',2,1,'phonics', 'Which word is in the same family as "connect"?', ['disconnect','discredit','discuss','displace'], 'disconnect', term: 3),
  _qi('intermediate','suffix',2,1,'phonics', 'Which suffix makes "hope" into a noun meaning "state of hoping"?', ['-ful','-less','-ness','-tion'], '-ful', term: 3),

  // Set 2
  _qi('intermediate','prefix',2,2,'phonics', 'In the word family "agree, disagree, agreement", the base word is ___?', ['agree','disagree','agreement','agreeance'], 'agree', term: 3),
  _qi('intermediate','suffix',2,2,'phonics', 'What suffix is added to "agree" to make "agreement"?', ['-ment','-tion','-ness','-ful'], '-ment', term: 3),
  _qi('intermediate','prefix',2,2,'phonics', 'What prefix is added to "agree" to make "disagree"?', ['dis-','un-','pre-','re-'], 'dis-', term: 3),
  _qi('intermediate','suffix',2,2,'phonics', 'Which word is in the same family as "help"?', ['helpful','hopeful','handful','hateful'], 'helpful', term: 3),
  _qi('intermediate','prefix',2,2,'phonics', 'Which word is in the same family as "view"?', ['preview','prevent','present','pretend'], 'preview', term: 3),
  _qi('intermediate','suffix',2,2,'phonics', 'In the family "kind, unkind, kindness, kindly", the base word is ___?', ['kind','unkind','kindness','kindly'], 'kind', term: 3),
  _qi('intermediate','prefix',2,2,'phonics', 'Which word is in the same family as "merge"?', ['submerge','submarine','subject','submit'], 'submerge', term: 3),
  _qi('intermediate','suffix',2,2,'phonics', 'Which word is NOT in the same family as "care"?', ['careful','careless','careful','carry'], 'carry', term: 3),
  _qi('intermediate','prefix',2,2,'phonics', 'Which word is NOT in the same family as "lead"?', ['mislead','leader','leading','bread'], 'bread', term: 3),
  _qi('intermediate','suffix',2,2,'phonics', 'What does the suffix "-ment" typically create?', ['a noun from a verb','a verb from a noun','an adjective','an adverb'], 'a noun from a verb', term: 3),

  // ══════════════════════════════════════════════════════════════════════════
  // T3 WEEK 3 — Greek & Latin Roots (intro) (prefix + suffix)
  // Focus: tele-, bio-, photo-; telephone, biology, photograph
  // ══════════════════════════════════════════════════════════════════════════

  // Set 1
  _qi('intermediate','prefix',3,1,'phonics', 'What does the root "tele-" mean?', ['far / distant','life','light','write'], 'far / distant', term: 3),
  _qi('intermediate','prefix',3,1,'phonics', 'What does the root "bio-" mean?', ['life','far','light','write'], 'life', term: 3),
  _qi('intermediate','prefix',3,1,'phonics', 'What does the root "photo-" mean?', ['light','life','far','write'], 'light', term: 3),
  _qi('intermediate','prefix',3,1,'phonics', 'What does "telephone" literally mean?', ['far sound','life voice','light sound','write far'], 'far sound', term: 3),
  _qi('intermediate','prefix',3,1,'phonics', 'What does "biology" literally mean?', ['study of life','study of light','study of distance','study of writing'], 'study of life', term: 3),
  _qi('intermediate','prefix',3,1,'phonics', 'What does "photograph" literally mean?', ['light writing / image','life writing','far writing','sound image'], 'light writing / image', term: 3),
  _qi('intermediate','prefix',3,1,'phonics', 'Which word uses the root "tele-"?', ['telescope','microscope','periscope','stethoscope'], 'telescope', term: 3),
  _qi('intermediate','prefix',3,1,'phonics', 'Which word uses the root "bio-"?', ['biography','geography','photography','typography'], 'biography', term: 3),
  _qi('intermediate','prefix',3,1,'phonics', 'Which word uses the root "photo-"?', ['photosynthesis','biosynthesis','geosynthesis','telesynthesis'], 'photosynthesis', term: 3),
  _qi('intermediate','suffix',3,1,'phonics', 'In "biology", the suffix "-logy" means ___?', ['study of','fear of','love of','hatred of'], 'study of', term: 3),

  // Set 2
  _qi('intermediate','prefix',3,2,'phonics', 'Which word uses "tele-"?', ['television','revision','provision','decision'], 'television', term: 3),
  _qi('intermediate','prefix',3,2,'phonics', 'Which word uses "bio-"?', ['biodegradable','geogradable','photodegradable','teledegradable'], 'biodegradable', term: 3),
  _qi('intermediate','prefix',3,2,'phonics', 'Which word uses "photo-"?', ['photography','biography','geography','typography'], 'photography', term: 3),
  _qi('intermediate','suffix',3,2,'phonics', 'In "telescope", the suffix "-scope" means ___?', ['to see / view','to hear','to measure','to write'], 'to see / view', term: 3),
  _qi('intermediate','prefix',3,2,'phonics', 'What does "biome" mean?', ['a community of living things','a type of photograph','a far location','a written record'], 'a community of living things', term: 3),
  _qi('intermediate','prefix',3,2,'phonics', 'What does "teleport" mean?', ['transport to a far place','carry life','write a message','move by light'], 'transport to a far place', term: 3),
  _qi('intermediate','prefix',3,2,'phonics', 'What does "photon" mean?', ['a particle of light','a unit of life','a distant sound','a written note'], 'a particle of light', term: 3),
  _qi('intermediate','suffix',3,2,'phonics', 'In "photograph", the root "-graph" means ___?', ['write / draw','life','far','see'], 'write / draw', term: 3),
  _qi('intermediate','prefix',3,2,'phonics', 'Which word is NOT built from "tele-"?', ['telescope','telephone','television','telegram'], 'telegram', term: 3),
  _qi('intermediate','prefix',3,2,'phonics', 'Which word is NOT built from "bio-"?', ['biography','biology','biodegradable','telescope'], 'telescope', term: 3),

  // ══════════════════════════════════════════════════════════════════════════
  // T3 WEEK 4 — Vocabulary: Synonyms & Antonyms (homophone)
  // Focus: synonyms in context; antonyms with un- and dis-; thesaurus
  // ══════════════════════════════════════════════════════════════════════════

  // Set 1
  _qi('intermediate','homophone',4,1,'phonics', 'Synonyms are words that ___?', ['have similar meanings','have opposite meanings','sound the same','are spelled the same'], 'have similar meanings', term: 3),
  _qi('intermediate','homophone',4,1,'phonics', 'Antonyms are words that ___?', ['have opposite meanings','have similar meanings','sound the same','are spelled the same'], 'have opposite meanings', term: 3),
  _qi('intermediate','homophone',4,1,'phonics', 'Which word is a synonym of "happy"?', ['joyful','sad','angry','tired'], 'joyful', term: 3),
  _qi('intermediate','homophone',4,1,'phonics', 'Which word is a synonym of "big"?', ['large','small','tiny','little'], 'large', term: 3),
  _qi('intermediate','homophone',4,1,'phonics', 'Which word is an antonym of "happy"?', ['sad','joyful','glad','pleased'], 'sad', term: 3),
  _qi('intermediate','homophone',4,1,'phonics', 'Which word is an antonym of "kind"?', ['unkind','kind','kindly','kindness'], 'unkind', term: 3),
  _qi('intermediate','homophone',4,1,'phonics', 'Which word is an antonym using "dis-"?', ['disagree','agree','agreeing','agreed'], 'disagree', term: 3),
  _qi('intermediate','homophone',4,1,'phonics', 'Which word is a synonym of "fast"?', ['quick','slow','lazy','tired'], 'quick', term: 3),
  _qi('intermediate','homophone',4,1,'phonics', 'Which word is a synonym of "start"?', ['begin','finish','end','stop'], 'begin', term: 3),
  _qi('intermediate','homophone',4,1,'phonics', 'Which word is an antonym of "safe"?', ['unsafe','safe','safely','safeness'], 'unsafe', term: 3),

  // Set 2
  _qi('intermediate','homophone',4,2,'phonics', 'Which word is a synonym of "angry"?', ['furious','calm','happy','gentle'], 'furious', term: 3),
  _qi('intermediate','homophone',4,2,'phonics', 'Which word is a synonym of "tired"?', ['exhausted','energetic','lively','active'], 'exhausted', term: 3),
  _qi('intermediate','homophone',4,2,'phonics', 'Which word is an antonym of "appear"?', ['disappear','reappear','appearance','appearing'], 'disappear', term: 3),
  _qi('intermediate','homophone',4,2,'phonics', 'Which word is an antonym of "honest"?', ['dishonest','honest','honestly','honesty'], 'dishonest', term: 3),
  _qi('intermediate','homophone',4,2,'phonics', 'Which word is a synonym of "difficult"?', ['challenging','easy','simple','effortless'], 'challenging', term: 3),
  _qi('intermediate','homophone',4,2,'phonics', 'Which word is a synonym of "beautiful"?', ['stunning','ugly','plain','dull'], 'stunning', term: 3),
  _qi('intermediate','homophone',4,2,'phonics', 'Which word is an antonym of "lucky"?', ['unlucky','lucky','luckily','luckiness'], 'unlucky', term: 3),
  _qi('intermediate','homophone',4,2,'phonics', 'Which word is an antonym using "dis-"?', ['discomfort','comfort','comforting','comfortable'], 'discomfort', term: 3),
  _qi('intermediate','homophone',4,2,'phonics', 'Which is a pair of synonyms?', ['big / large','big / small','big / tiny','big / short'], 'big / large', term: 3),
  _qi('intermediate','homophone',4,2,'phonics', 'Which is a pair of antonyms?', ['hot / cold','hot / warm','hot / heated','hot / boiling'], 'hot / cold', term: 3),

  // ══════════════════════════════════════════════════════════════════════════
  // T3 WEEK 5 — Punctuation for Effect (suffix)
  // Focus: exclamation marks, question marks, direct speech punctuation
  // ══════════════════════════════════════════════════════════════════════════

  // Set 1
  _qi('intermediate','suffix',5,1,'phonics', 'An exclamation mark (!) is used for ___?', ['strong emotion or command','asking questions','listing items','showing possession'], 'strong emotion or command', term: 3),
  _qi('intermediate','suffix',5,1,'phonics', 'A question mark (?) is used for ___?', ['asking questions','strong emotion','listing items','showing possession'], 'asking questions', term: 3),
  _qi('intermediate','suffix',5,1,'phonics', 'Which sentence uses punctuation correctly?', ['What a great day!','What a great day.','What a great day?','What a great day,'], 'What a great day!', term: 3),
  _qi('intermediate','suffix',5,1,'phonics', 'Which sentence uses punctuation correctly?', ['Where are you going?','Where are you going!','Where are you going.','Where are you going,'], 'Where are you going?', term: 3),
  _qi('intermediate','suffix',5,1,'phonics', 'In direct speech, the spoken words go inside ___?', ['quotation marks','brackets','dashes','commas'], 'quotation marks', term: 3),
  _qi('intermediate','suffix',5,1,'phonics', 'Which sentence uses direct speech correctly?', ['She said, "I am ready."','She said I am ready.','She said, I am ready.','She said "I am ready.'], 'She said, "I am ready."', term: 3),
  _qi('intermediate','suffix',5,1,'phonics', 'Which sentence is correct?', ['"Come here!" she shouted.','Come here she shouted.','"Come here" she shouted.','Come here! she shouted.'], '"Come here!" she shouted.', term: 3),
  _qi('intermediate','suffix',5,1,'phonics', 'Which sentence uses a question correctly in direct speech?', ['He asked, "Are you coming?"','He asked "Are you coming"','He asked, Are you coming?','He asked Are you coming?'], 'He asked, "Are you coming?"', term: 3),
  _qi('intermediate','suffix',5,1,'phonics', 'A comma usually comes ___ the opening quotation mark?', ['before','after','inside','instead of'], 'before', term: 3),
  _qi('intermediate','suffix',5,1,'phonics', 'Which sentence is correct?', ['"Stop that," he said quietly.','"Stop that" he said quietly.','Stop that, he said quietly.','"Stop that." he said quietly.'], '"Stop that," he said quietly.', term: 3),

  // Set 2
  _qi('intermediate','suffix',5,2,'phonics', 'Which sentence is correct?', ['"How wonderful!" she cried.','"How wonderful!" She cried.','How wonderful! she cried.','"How wonderful" she cried!'], '"How wonderful!" she cried.', term: 3),
  _qi('intermediate','suffix',5,2,'phonics', 'Which sentence is correct?', ['"Where is the key?" he asked.','"Where is the key?" He asked.','Where is the key? he asked.','"Where is the key." he asked?'], '"Where is the key?" he asked.', term: 3),
  _qi('intermediate','suffix',5,2,'phonics', 'Which sentence is correct?', ['They screamed, "Help us!"','They screamed "Help us!"','They screamed, Help us!','They screamed, "Help us".'], 'They screamed, "Help us!"', term: 3),
  _qi('intermediate','suffix',5,2,'phonics', 'Which sentence needs a question mark?', ['Where did you put my book','That was amazing','Come here immediately','She is very clever'], 'Where did you put my book', term: 3),
  _qi('intermediate','suffix',5,2,'phonics', 'Which sentence needs an exclamation mark?', ['Watch out','Where are you','She reads every day','He is tall'], 'Watch out', term: 3),
  _qi('intermediate','suffix',5,2,'phonics', 'Which sentence is correct?', ['"I love reading," said Amara.','"I love reading" said Amara.','I love reading, said Amara.','"I love reading." Said Amara.'], '"I love reading," said Amara.', term: 3),
  _qi('intermediate','suffix',5,2,'phonics', 'Which sentence is correct?', ['"Let\'s go now," she suggested.','"Let\'s go now" she suggested.','Let\'s go now, she suggested.','"Let\'s go now." She suggested.'], '"Let\'s go now," she suggested.', term: 3),
  _qi('intermediate','suffix',5,2,'phonics', 'Which is correct punctuation?', ['"That\'s amazing!" he exclaimed.','"That\'s amazing" he exclaimed!','That\'s amazing! he exclaimed.','"That\'s amazing!". he exclaimed.'], '"That\'s amazing!" he exclaimed.', term: 3),
  _qi('intermediate','suffix',5,2,'phonics', 'Which sentence uses a question mark correctly?', ['"Can you help me?" she asked.','"Can you help me!" she asked.','"Can you help me." she asked?','"Can you help me," she asked?'], '"Can you help me?" she asked.', term: 3),
  _qi('intermediate','suffix',5,2,'phonics', 'Which sentence is punctuated correctly?', ['He whispered, "Be quiet."','He whispered "Be quiet."','He whispered, Be quiet.','He whispered, "Be quiet"'], 'He whispered, "Be quiet."', term: 3),

  // ══════════════════════════════════════════════════════════════════════════
  // T3 WEEK 6 — Reading: Fiction (alternative_spelling + syllable)
  // Focus: read a short story chapter; identify plot, character, setting
  // ══════════════════════════════════════════════════════════════════════════

  // Set 1
  _qi('intermediate','alternative_spelling',6,1,'phonics', 'Which word has long /a/ in: "The brave knight gained great fame"?', ['gained','brave','knight','great'], 'gained', term: 3),
  _qi('intermediate','syllable',6,1,'phonics', 'How many syllables in "adventure"?', ['3','2','4','1'], '3', term: 3),
  _qi('intermediate','alternative_spelling',6,1,'phonics', 'Which word has long /i/ in: "The bright knight rode through the night"?', ['bright','The','rode','through'], 'bright', term: 3),
  _qi('intermediate','syllable',6,1,'phonics', 'How many syllables in "character"?', ['3','2','4','1'], '3', term: 3),
  _qi('intermediate','alternative_spelling',6,1,'phonics', 'Which word has silent "gh" in: "The fight brought the village to a halt"?', ['brought','fight','village','halt'], 'brought', term: 3),
  _qi('intermediate','syllable',6,1,'phonics', 'How do you divide "tiger"?', ['ti-ger','tig-er','t-iger','tige-r'], 'ti-ger', term: 3),
  _qi('intermediate','alternative_spelling',6,1,'phonics', 'The "plot" of a story refers to ___?', ['what happens (events)','where it happens','who it is about','how it is written'], 'what happens (events)', term: 3),
  _qi('intermediate','syllable',6,1,'phonics', 'How many syllables in "important"?', ['3','2','4','1'], '3', term: 3),
  _qi('intermediate','alternative_spelling',6,1,'phonics', 'The "setting" of a story refers to ___?', ['where and when it happens','what happens','who it is about','how it ends'], 'where and when it happens', term: 3),
  _qi('intermediate','syllable',6,1,'phonics', 'How many syllables in "together"?', ['3','2','4','1'], '3', term: 3),

  // Set 2
  _qi('intermediate','alternative_spelling',6,2,'phonics', 'The "character" in a story is ___?', ['a person or creature in the story','where the story happens','what happens in the story','how the story ends'], 'a person or creature in the story', term: 3),
  _qi('intermediate','syllable',6,2,'phonics', 'How do you divide "cabin"?', ['cab-in','ca-bin','c-abin','cabi-n'], 'cab-in', term: 3),
  _qi('intermediate','alternative_spelling',6,2,'phonics', 'Which word has long /e/ in: "The chief believed the thief had fled"?', ['believed','chief','thief','fled'], 'believed', term: 3),
  _qi('intermediate','syllable',6,2,'phonics', 'How many syllables in "fantastic"?', ['3','2','4','1'], '3', term: 3),
  _qi('intermediate','alternative_spelling',6,2,'phonics', 'Which word has silent "kn" in: "The knight knew the way"?', ['knight','knew','way','The'], 'knight', term: 3),
  _qi('intermediate','syllable',6,2,'phonics', 'How many syllables in "beautiful"?', ['3','2','4','1'], '3', term: 3),
  _qi('intermediate','alternative_spelling',6,2,'phonics', 'Making a "prediction" in reading means ___?', ['guessing what will happen next','finding difficult words','counting syllables','identifying rhymes'], 'guessing what will happen next', term: 3),
  _qi('intermediate','syllable',6,2,'phonics', 'How do you divide "music"?', ['mu-sic','mus-ic','m-usic','musi-c'], 'mu-sic', term: 3),
  _qi('intermediate','alternative_spelling',6,2,'phonics', 'Which word has long /o/ in: "The old stone road led home"?', ['road','old','stone','led'], 'road', term: 3),
  _qi('intermediate','syllable',6,2,'phonics', 'How many syllables in "telescope"?', ['3','2','4','1'], '3', term: 3),

  // ══════════════════════════════════════════════════════════════════════════
  // T3 WEEK 7 — Writing: Narrative (prefix + suffix + alternative_spelling)
  // Focus: write a 2-paragraph story; use varied vocabulary including affixed words
  // ══════════════════════════════════════════════════════════════════════════

  // Set 1
  _qi('intermediate','prefix',7,1,'phonics', 'Which word is spelled correctly?', ['preview','prevew','preveew','preveiw'], 'preview', term: 3),
  _qi('intermediate','suffix',7,1,'phonics', 'Which word is spelled correctly?', ['happiness','happyness','hapiness','happinness'], 'happiness', term: 3),
  _qi('intermediate','alternative_spelling',7,1,'phonics', 'Which word is spelled correctly?', ['knight','night','knigt','nigte'], 'knight', term: 3),
  _qi('intermediate','prefix',7,1,'phonics', 'Which word is spelled correctly?', ['disappear','disapear','dissapear','disappear'], 'disappear', term: 3),
  _qi('intermediate','suffix',7,1,'phonics', 'Which word is spelled correctly?', ['carefully','carefuly','carfully','careful-ly'], 'carefully', term: 3),
  _qi('intermediate','alternative_spelling',7,1,'phonics', 'Which word is spelled correctly?', ['climb','clim','cliumb','climbe'], 'climb', term: 3),
  _qi('intermediate','prefix',7,1,'phonics', 'Which word is spelled correctly?', ['overwork','overwerk','overworck','ovwerwork'], 'overwork', term: 3),
  _qi('intermediate','suffix',7,1,'phonics', 'Which word is spelled correctly?', ['tension','tenstion','tenshun','tenscion'], 'tension', term: 3),
  _qi('intermediate','alternative_spelling',7,1,'phonics', 'Which word is spelled correctly?', ['write','rite','writ','wriet'], 'write', term: 3),
  _qi('intermediate','prefix',7,1,'phonics', 'Which word is spelled correctly?', ['submarine','submirine','submareene','submerine'], 'submarine', term: 3),

  // Set 2
  _qi('intermediate','suffix',7,2,'phonics', 'Which sentence is correct?', ['She moved quickly through the forest.','She moved quickely through the forest.','She moved quicklie through the forest.','She moved quick-ly through the forest.'], 'She moved quickly through the forest.', term: 3),
  _qi('intermediate','prefix',7,2,'phonics', 'Which sentence is correct?', ['He decided to overcome his fear.','He decided to overcom his fear.','He decided to overcum his fear.','He decided to oversome his fear.'], 'He decided to overcome his fear.', term: 3),
  _qi('intermediate','alternative_spelling',7,2,'phonics', 'Which sentence is correct?', ['The knight galloped into the night.','The night galloped into the knight.','The knite galloped into the night.','The knight galloped into the knigt.'], 'The knight galloped into the night.', term: 3),
  _qi('intermediate','suffix',7,2,'phonics', 'Which sentence is correct?', ['The darkness crept across the land.','The darknes crept across the land.','The darknness crept across the land.','The darknesse crept across the land.'], 'The darkness crept across the land.', term: 3),
  _qi('intermediate','prefix',7,2,'phonics', 'Which sentence is correct?', ['She felt unhappy about the result.','She felt unhappi about the result.','She felt unhapy about the result.','She felt unhappie about the result.'], 'She felt unhappy about the result.', term: 3),
  _qi('intermediate','alternative_spelling',7,2,'phonics', 'Which sentence is correct?', ['He wrote the answer on the board.','He rote the answer on the board.','He wrotte the answer on the board.','He wroote the answer on the board.'], 'He wrote the answer on the board.', term: 3),
  _qi('intermediate','suffix',7,2,'phonics', 'Which sentence is correct?', ['The hopeful child waited patiently.','The hopefull child waited patiently.','The hopful child waited patiently.','The hopefule child waited patiently.'], 'The hopeful child waited patiently.', term: 3),
  _qi('intermediate','prefix',7,2,'phonics', 'Which sentence is correct?', ['The discovery surprised everyone.','The discuvery surprised everyone.','The discoverry surprised everyone.','The discoverey surprised everyone.'], 'The discovery surprised everyone.', term: 3),
  _qi('intermediate','alternative_spelling',7,2,'phonics', 'Which sentence is correct?', ['The bright moonlight lit the path.','The brite moonlight lit the path.','The brigt moonlight lit the path.','The brighte moonlight lit the path.'], 'The bright moonlight lit the path.', term: 3),
  _qi('intermediate','suffix',7,2,'phonics', 'Which sentence is correct?', ['Their careless mistake cost them dearly.','Their carelless mistake cost them dearly.','Their careles mistake cost them dearly.','Their carelees mistake cost them dearly.'], 'Their careless mistake cost them dearly.', term: 3),

  // ══════════════════════════════════════════════════════════════════════════
  // T3 WEEK 8 — Poetry & Rhyme (rhyme + alliteration)
  // Focus: read and discuss a poem; identify rhyme scheme; write a 4-line poem
  // ══════════════════════════════════════════════════════════════════════════

  // Set 1
  _qi('intermediate','rhyme',8,1,'phonics', 'A rhyme scheme ABAB means ___?', ['lines 1&3 rhyme, lines 2&4 rhyme','lines 1&2 rhyme, lines 3&4 rhyme','all lines rhyme','no lines rhyme'], 'lines 1&3 rhyme, lines 2&4 rhyme', term: 3),
  _qi('intermediate','rhyme',8,1,'phonics', 'A rhyme scheme AABB means ___?', ['lines 1&2 rhyme, lines 3&4 rhyme','lines 1&3 rhyme, lines 2&4 rhyme','all lines rhyme','no lines rhyme'], 'lines 1&2 rhyme, lines 3&4 rhyme', term: 3),
  _qi('intermediate','rhyme',8,1,'phonics', 'Which pair of words rhymes?', ['bright / night','bright / bite','bright / right (both do!)','bright / fright (both do!)'], 'bright / night', term: 3),
  _qi('intermediate','alliteration',8,1,'phonics', 'Alliteration is ___?', ['repetition of the same starting sound','repetition of rhyming words','a type of syllable','a vowel digraph'], 'repetition of the same starting sound', term: 3),
  _qi('intermediate','alliteration',8,1,'phonics', '"Peter Piper picked a peck" — what sound is alliterated?', ['/p/','/i/','/k/','/e/'], '/p/', term: 3),
  _qi('intermediate','rhyme',8,1,'phonics', 'Which word rhymes with "light"?', ['night','lane','lake','loud'], 'night', term: 3),
  _qi('intermediate','alliteration',8,1,'phonics', '"The silver snake slid silently" — what sound is alliterated?', ['/s/','/n/','/i/','/l/'], '/s/', term: 3),
  _qi('intermediate','rhyme',8,1,'phonics', 'Which word rhymes with "dream"?', ['stream','strand','strong','struck'], 'stream', term: 3),
  _qi('intermediate','rhyme',8,1,'phonics', 'In an ABAB rhyme scheme, which lines rhyme with each other?', ['1st and 3rd','1st and 2nd','2nd and 4th','all of them'], '1st and 3rd', term: 3),
  _qi('intermediate','alliteration',8,1,'phonics', '"Big brown bears bounce boldly" — what sound is alliterated?', ['/b/','/r/','/n/','/l/'], '/b/', term: 3),

  // Set 2
  _qi('intermediate','rhyme',8,2,'phonics', 'Which word rhymes with "nation"?', ['station','stone','stance','stand'], 'station', term: 3),
  _qi('intermediate','alliteration',8,2,'phonics', '"Lovely lions leap lightly" — what sound is alliterated?', ['/l/','/n/','/p/','/t/'], '/l/', term: 3),
  _qi('intermediate','rhyme',8,2,'phonics', 'Which word rhymes with "bright"?', ['flight','flaw','floor','flute'], 'flight', term: 3),
  _qi('intermediate','alliteration',8,2,'phonics', 'Which phrase uses alliteration?', ['dripping dark dew','heavy rain falls','the big blue sky','run to the shops'], 'dripping dark dew', term: 3),
  _qi('intermediate','rhyme',8,2,'phonics', 'Which word rhymes with "care"?', ['share','chair','hair','all of these rhyme'], 'all of these rhyme', term: 3),
  _qi('intermediate','rhyme',8,2,'phonics', 'In AABB scheme: "The cat sat on the mat / The dog played in the fog" — does this fit?', ['yes','no','partially','only if read backwards'], 'yes', term: 3),
  _qi('intermediate','alliteration',8,2,'phonics', 'Which phrase uses alliteration?', ['wonderful wild winds','the dog ran far','she ate her lunch','he opened the door'], 'wonderful wild winds', term: 3),
  _qi('intermediate','rhyme',8,2,'phonics', 'Which word rhymes with "motion"?', ['ocean','motion (itself)','lotion','all of these'], 'ocean', term: 3),
  _qi('intermediate','rhyme',8,2,'phonics', 'Which word does NOT rhyme with "fly"?', ['flaw','high','sky','cry'], 'flaw', term: 3),
  _qi('intermediate','alliteration',8,2,'phonics', 'Which phrase does NOT use alliteration?', ['cold crisp cake','running red rats','blue bright birds','the happy dog'], 'the happy dog', term: 3),

  // ══════════════════════════════════════════════════════════════════════════
  // T3 WEEK 9 — Spelling Strategies Revision (alternative_spelling + homophone)
  // Focus: look-cover-write-check; mnemonics; compile year spelling list
  // ══════════════════════════════════════════════════════════════════════════

  // Set 1
  _qi('intermediate','alternative_spelling',9,1,'phonics', 'Which word is spelled correctly?', ['knowledge','knowlege','knoweldge','knowlidge'], 'knowledge', term: 3),
  _qi('intermediate','homophone',9,1,'phonics', 'Which fits: "She ___ the finish line first"?', ['passed','past','pased','passt'], 'passed', term: 3),
  _qi('intermediate','alternative_spelling',9,1,'phonics', 'Which word is spelled correctly?', ['necessary','necesary','neccessary','neccesary'], 'necessary', term: 3),
  _qi('intermediate','homophone',9,1,'phonics', 'Which fits: "___ going to arrive soon"?', ['They\'re','Their','There','Thare'], 'They\'re', term: 3),
  _qi('intermediate','alternative_spelling',9,1,'phonics', 'Which word is spelled correctly?', ['beautiful','beautifull','beutiful','beautifal'], 'beautiful', term: 3),
  _qi('intermediate','homophone',9,1,'phonics', 'Which fits: "___ coat is this?"', ['Whose','Who\'s','Whos','Whos\''], 'Whose', term: 3),
  _qi('intermediate','alternative_spelling',9,1,'phonics', 'Which word is spelled correctly?', ['receive','recieve','receeve','receve'], 'receive', term: 3),
  _qi('intermediate','homophone',9,1,'phonics', 'Which fits: "The cold can ___ your performance"?', ['affect','effect','affact','effact'], 'affect', term: 3),
  _qi('intermediate','alternative_spelling',9,1,'phonics', 'Which word is spelled correctly?', ['separate','seperate','separrate','sepparate'], 'separate', term: 3),
  _qi('intermediate','homophone',9,1,'phonics', 'Which fits: "We are not ___ to shout"?', ['allowed','aloud','allooud','alowud'], 'allowed', term: 3),

  // Set 2
  _qi('intermediate','alternative_spelling',9,2,'phonics', 'Which word is spelled correctly?', ['definitely','definately','definitly','definatly'], 'definitely', term: 3),
  _qi('intermediate','homophone',9,2,'phonics', 'Which fits: "___ bags are under the table"?', ['Their','There','They\'re','Thare'], 'Their', term: 3),
  _qi('intermediate','alternative_spelling',9,2,'phonics', 'Which word is spelled correctly?', ['environment','enviroment','environement','enviorment'], 'environment', term: 3),
  _qi('intermediate','homophone',9,2,'phonics', 'Which fits: "She sang ___ in the concert"?', ['aloud','allowed','allooud','alowud'], 'aloud', term: 3),
  _qi('intermediate','alternative_spelling',9,2,'phonics', 'Which word is spelled correctly?', ['height','hieght','heigth','hight'], 'height', term: 3),
  _qi('intermediate','homophone',9,2,'phonics', 'Which fits: "In the ___, life was much simpler"?', ['past','passed','pased','passt'], 'past', term: 3),
  _qi('intermediate','alternative_spelling',9,2,'phonics', 'Which word is spelled correctly?', ['government','goverment','governemnt','goverment'], 'government', term: 3),
  _qi('intermediate','homophone',9,2,'phonics', 'Which fits: "The ___ of the medication was positive"?', ['effect','affect','effact','affact'], 'effect', term: 3),
  _qi('intermediate','alternative_spelling',9,2,'phonics', 'Which word is spelled correctly?', ['disappear','disapear','dissapear','dissappear'], 'disappear', term: 3),
  _qi('intermediate','homophone',9,2,'phonics', 'Which fits: "___ did you say?"', ['Where','Wear','Were','Wher'], 'Where', term: 3),

  // ══════════════════════════════════════════════════════════════════════════
  // T3 WEEK 10 — Oral Presentation (syllable)
  // Focus: prepare and deliver a 1-minute talk; speak in complete sentences
  // ══════════════════════════════════════════════════════════════════════════

  // Set 1
  _qi('intermediate','syllable',10,1,'phonics', 'How many syllables in "presentation"?', ['4','3','5','2'], '4', term: 3),
  _qi('intermediate','syllable',10,1,'phonics', 'How do you divide "important"?', ['im-por-tant','imp-or-tant','im-port-ant','impor-t-ant'], 'im-por-tant', term: 3),
  _qi('intermediate','syllable',10,1,'phonics', 'How many syllables in "introduction"?', ['4','3','5','2'], '4', term: 3),
  _qi('intermediate','syllable',10,1,'phonics', 'How do you divide "telescope"?', ['tel-e-scope','tele-scope','te-le-scope','t-ele-scope'], 'tel-e-scope', term: 3),
  _qi('intermediate','syllable',10,1,'phonics', 'How many syllables in "communication"?', ['5','4','6','3'], '5', term: 3),
  _qi('intermediate','syllable',10,1,'phonics', 'How do you divide "adventure"?', ['ad-ven-ture','adv-en-ture','ad-ve-nture','adven-t-ure'], 'ad-ven-ture', term: 3),
  _qi('intermediate','syllable',10,1,'phonics', 'How many syllables in "vocabulary"?', ['5','4','6','3'], '5', term: 3),
  _qi('intermediate','syllable',10,1,'phonics', 'How do you divide "biology"?', ['bi-ol-o-gy','bio-lo-gy','bi-olo-gy','biol-o-gy'], 'bi-ol-o-gy', term: 3),
  _qi('intermediate','syllable',10,1,'phonics', 'How many syllables in "environment"?', ['4','3','5','2'], '4', term: 3),
  _qi('intermediate','syllable',10,1,'phonics', 'How many syllables in "understanding"?', ['4','3','5','2'], '4', term: 3),

  // Set 2
  _qi('intermediate','syllable',10,2,'phonics', 'How do you divide "tomorrow"?', ['to-mor-row','tom-or-row','to-morr-ow','tomor-r-ow'], 'to-mor-row', term: 3),
  _qi('intermediate','syllable',10,2,'phonics', 'How many syllables in "impossible"?', ['4','3','5','2'], '4', term: 3),
  _qi('intermediate','syllable',10,2,'phonics', 'How do you divide "beautiful"?', ['beau-ti-ful','bea-ut-iful','beaut-i-ful','beauti-f-ul'], 'beau-ti-ful', term: 3),
  _qi('intermediate','syllable',10,2,'phonics', 'How many syllables in "electricity"?', ['5','4','6','3'], '5', term: 3),
  _qi('intermediate','syllable',10,2,'phonics', 'How do you divide "together"?', ['to-geth-er','tog-eth-er','to-ge-ther','toge-th-er'], 'to-geth-er', term: 3),
  _qi('intermediate','syllable',10,2,'phonics', 'How many syllables in "photography"?', ['4','3','5','2'], '4', term: 3),
  _qi('intermediate','syllable',10,2,'phonics', 'How do you divide "dangerous"?', ['dan-ger-ous','danger-ous','dange-r-ous','d-an-gerous'], 'dan-ger-ous', term: 3),
  _qi('intermediate','syllable',10,2,'phonics', 'How many syllables in "conversation"?', ['4','3','5','2'], '4', term: 3),
  _qi('intermediate','syllable',10,2,'phonics', 'Which word has 4 syllables?', ['education','nation','station','action'], 'education', term: 3),
  _qi('intermediate','syllable',10,2,'phonics', 'Which word has 5 syllables?', ['communication','nation','station','education'], 'communication', term: 3),

  // ══════════════════════════════════════════════════════════════════════════
  // T3 WEEK 11 — Comprehension Strategies (alternative_spelling + prefix)
  // Focus: skim and scan; infer meaning; summarise a paragraph
  // ══════════════════════════════════════════════════════════════════════════

  // Set 1
  _qi('intermediate','alternative_spelling',11,1,'phonics', '"Skimming" a text means ___?', ['reading quickly for a general idea','reading every word carefully','looking for a specific detail','counting words'], 'reading quickly for a general idea', term: 3),
  _qi('intermediate','prefix',11,1,'phonics', '"Scanning" a text means ___?', ['searching quickly for a specific detail','reading every word carefully','getting a general idea','summarising the text'], 'searching quickly for a specific detail', term: 3),
  _qi('intermediate','alternative_spelling',11,1,'phonics', 'To "infer" means to ___?', ['work out meaning from clues','find a word in a dictionary','count syllables','identify rhymes'], 'work out meaning from clues', term: 3),
  _qi('intermediate','prefix',11,1,'phonics', 'Which word uses "mis-" in: "The misguided explorer got lost in the forest"?', ['misguided','explorer','forest','lost'], 'misguided', term: 3),
  _qi('intermediate','alternative_spelling',11,1,'phonics', 'Which word has silent "kn" in: "She knew the knight would arrive at dawn"?', ['knew','She','knight','arrive'], 'knew', term: 3),
  _qi('intermediate','prefix',11,1,'phonics', 'Which word uses "pre-" in: "The scientist predicted the outcome"?', ['predicted','scientist','outcome','The'], 'predicted', term: 3),
  _qi('intermediate','alternative_spelling',11,1,'phonics', 'Which word has silent "gh" in: "The drought brought suffering to the land"?', ['brought','drought','suffering','land'], 'brought', term: 3),
  _qi('intermediate','prefix',11,1,'phonics', 'Which word uses "over-" in: "The overcrowded city needed more schools"?', ['overcrowded','city','needed','schools'], 'overcrowded', term: 3),
  _qi('intermediate','alternative_spelling',11,1,'phonics', 'A summary should ___?', ['include only the key points','copy the whole text','be longer than the original','include every detail'], 'include only the key points', term: 3),
  _qi('intermediate','prefix',11,1,'phonics', 'Which word uses "dis-" in: "The discovery disproved the old theory"?', ['disproved','discovery','theory','old'], 'disproved', term: 3),

  // Set 2
  _qi('intermediate','prefix',11,2,'phonics', 'Which word uses "re-" in: "Scientists worked to restore the damaged reef"?', ['restore','Scientists','worked','damaged'], 'restore', term: 3),
  _qi('intermediate','alternative_spelling',11,2,'phonics', 'Which word has silent "mb" in: "They had to climb over the crumbling wall"?', ['climb','crumbling','wall','had'], 'climb', term: 3),
  _qi('intermediate','prefix',11,2,'phonics', 'Which word uses "sub-" in: "The submarine explored the underwater world"?', ['submarine','explored','underwater','world'], 'submarine', term: 3),
  _qi('intermediate','alternative_spelling',11,2,'phonics', 'Which word has silent "wr" in: "The wren wrapped itself in the reeds"?', ['wrapped','wren','reeds','itself'], 'wrapped', term: 3),
  _qi('intermediate','prefix',11,2,'phonics', 'Which word uses "un-" in: "The unexpected storm destroyed the crops"?', ['unexpected','storm','destroyed','crops'], 'unexpected', term: 3),
  _qi('intermediate','alternative_spelling',11,2,'phonics', 'Which word has long /a/ in: "The ancient veil of rain concealed the plain"?', ['veil','rain','ancient','plain'], 'veil', term: 3),
  _qi('intermediate','prefix',11,2,'phonics', 'What does "misguided" mean in context?', ['led in the wrong direction','guided very well','guided again','guided before'], 'led in the wrong direction', term: 3),
  _qi('intermediate','alternative_spelling',11,2,'phonics', 'What does "infer" mean?', ['draw conclusions from clues','state the obvious','copy the text','count words'], 'draw conclusions from clues', term: 3),
  _qi('intermediate','prefix',11,2,'phonics', 'What does "restore" mean?', ['bring back to original state','make worse','make new','destroy again'], 'bring back to original state', term: 3),
  _qi('intermediate','alternative_spelling',11,2,'phonics', 'Which word is spelled correctly?', ['receipt','reciept','receit','receept'], 'receipt', term: 3),

  // ══════════════════════════════════════════════════════════════════════════
  // T3 WEEK 12 — Year Consolidation
  // Focus: alternative_spelling, syllable, prefix, suffix, homophone
  // ══════════════════════════════════════════════════════════════════════════

  // Set 1
  _qi('intermediate','alternative_spelling',12,1,'phonics', 'Which word is spelled correctly?', ['knowledge','knowlege','knoweldge','knowlidge'], 'knowledge', term: 3),
  _qi('intermediate','syllable',12,1,'phonics', 'How many syllables in "communication"?', ['5','4','6','3'], '5', term: 3),
  _qi('intermediate','prefix',12,1,'phonics', 'What does "telescope" literally mean?', ['far see / view from distance','life writing','light image','write far'], 'far see / view from distance', term: 3),
  _qi('intermediate','suffix',12,1,'phonics', 'What does "hopeless" mean?', ['without hope','full of hope','state of hope','action of hope'], 'without hope', term: 3),
  _qi('intermediate','homophone',12,1,'phonics', 'Which fits: "___ going to be a great year"?', ['It\'s','Its','Its\'','It is\''], 'It\'s', term: 3),
  _qi('intermediate','alternative_spelling',12,1,'phonics', 'Which word has long /a/ spelled "eigh"?', ['eight','eat','east','each'], 'eight', term: 3),
  _qi('intermediate','syllable',12,1,'phonics', 'How do you divide "tiger"?', ['ti-ger','tig-er','t-iger','tige-r'], 'ti-ger', term: 3),
  _qi('intermediate','prefix',12,1,'phonics', 'What does "biology" mean?', ['study of life','study of light','study of distance','study of writing'], 'study of life', term: 3),
  _qi('intermediate','suffix',12,1,'phonics', 'What is "happy" + "-ness"?', ['happiness','happyness','hapiness','happinness'], 'happiness', term: 3),
  _qi('intermediate','homophone',12,1,'phonics', 'Which fits: "___ coat is that?"', ['Whose','Who\'s','Whos','Whos\''], 'Whose', term: 3),

  // Set 2
  _qi('intermediate','alternative_spelling',12,2,'phonics', 'What sound does "mb" make in "comb"?', ['just /m/ — b is silent','/mb/','just /b/','/ m/ + /b/'], 'just /m/ — b is silent', term: 3),
  _qi('intermediate','syllable',12,2,'phonics', 'How do you divide "adventure"?', ['ad-ven-ture','adv-en-ture','ad-ve-nture','adven-t-ure'], 'ad-ven-ture', term: 3),
  _qi('intermediate','prefix',12,2,'phonics', 'What does "misunderstand" mean?', ['understand wrongly','understand again','not understand','understand before'], 'understand wrongly', term: 3),
  _qi('intermediate','suffix',12,2,'phonics', 'What is "slow" + "-ly"?', ['slowly','slowely','slowlie','slow-ly'], 'slowly', term: 3),
  _qi('intermediate','homophone',12,2,'phonics', 'Which fits: "___ bag is on the table"?', ['Their','There','They\'re','Thare'], 'Their', term: 3),
  _qi('intermediate','alternative_spelling',12,2,'phonics', 'Which word is spelled correctly?', ['necessary','necesary','neccessary','neccesary'], 'necessary', term: 3),
  _qi('intermediate','syllable',12,2,'phonics', 'How many syllables in "environment"?', ['4','3','5','2'], '4', term: 3),
  _qi('intermediate','prefix',12,2,'phonics', 'What does "submarine" mean?', ['vessel under water','vessel too big','vessel wrongly made','vessel before time'], 'vessel under water', term: 3),
  _qi('intermediate','suffix',12,2,'phonics', 'What is "big" + "-gest"?', ['biggest','bigest','bigst','bigggest'], 'biggest', term: 3),
  _qi('intermediate','homophone',12,2,'phonics', 'Which fits: "The ___ of the medicine was immediate"?', ['effect','affect','effact','affact'], 'effect', term: 3),

  // ══════════════════════════════════════════════════════════════════════════
  // T3 WEEK 13 — End-of-Year Assessment
  // Focus: alternative_spelling, syllable, prefix, suffix, homophone
  // ══════════════════════════════════════════════════════════════════════════

  // Set 1
  _qi('intermediate','alternative_spelling',13,1,'phonics', 'What sound does "kn" make?', ['/n/','/kn/','/k/','/nw/'], '/n/', term: 3),
  _qi('intermediate','syllable',13,1,'phonics', 'How many syllables in "fantastic"?', ['3','2','4','1'], '3', term: 3),
  _qi('intermediate','prefix',13,1,'phonics', 'What does "bio-" mean?', ['life','far','light','write'], 'life', term: 3),
  _qi('intermediate','suffix',13,1,'phonics', 'What does "careless" mean?', ['without care','full of care','state of care','action of care'], 'without care', term: 3),
  _qi('intermediate','homophone',13,1,'phonics', 'Which fits: "___ going to be late"?', ['They\'re','Their','There','Thare'], 'They\'re', term: 3),
  _qi('intermediate','alternative_spelling',13,1,'phonics', 'Which word is spelled correctly?', ['beautiful','beautifull','beutiful','beautifal'], 'beautiful', term: 3),
  _qi('intermediate','syllable',13,1,'phonics', 'How do you divide "cabin"?', ['cab-in','ca-bin','c-abin','cabi-n'], 'cab-in', term: 3),
  _qi('intermediate','prefix',13,1,'phonics', 'What does "tele-" mean?', ['far / distant','life','light','write'], 'far / distant', term: 3),
  _qi('intermediate','suffix',13,1,'phonics', 'What is "happy" + "-ly"?', ['happily','happyly','hapily','happily'], 'happily', term: 3),
  _qi('intermediate','homophone',13,1,'phonics', 'Which fits: "She ___ the exam last week"?', ['passed','past','pased','passt'], 'passed', term: 3),

  // Set 2
  _qi('intermediate','alternative_spelling',13,2,'phonics', 'Which word has silent "gh"?', ['night','nit','nib','nil'], 'night', term: 3),
  _qi('intermediate','syllable',13,2,'phonics', 'How many syllables in "environment"?', ['4','3','5','2'], '4', term: 3),
  _qi('intermediate','prefix',13,2,'phonics', 'What does "photo-" mean?', ['light','life','far','write'], 'light', term: 3),
  _qi('intermediate','suffix',13,2,'phonics', 'What does "happiness" mean?', ['state of being happy','full of happy','without happy','action of happy'], 'state of being happy', term: 3),
  _qi('intermediate','homophone',13,2,'phonics', 'Which fits: "Noise can ___ concentration"?', ['affect','effect','affact','effact'], 'affect', term: 3),
  _qi('intermediate','alternative_spelling',13,2,'phonics', 'Which word is spelled correctly?', ['separate','seperate','separrate','sepparate'], 'separate', term: 3),
  _qi('intermediate','syllable',13,2,'phonics', 'How do you divide "tomorrow"?', ['to-mor-row','tom-or-row','to-morr-ow','tomor-r-ow'], 'to-mor-row', term: 3),
  _qi('intermediate','prefix',13,2,'phonics', 'What does "disappear" mean?', ['go out of sight','appear again','appear before','appear wrongly'], 'go out of sight', term: 3),
  _qi('intermediate','suffix',13,2,'phonics', 'What is "slow" + "-er"?', ['slower','slowest','slowly','slow'], 'slower', term: 3),
  _qi('intermediate','homophone',13,2,'phonics', 'Which fits: "___ books are left on the desk"?', ['Their','There','They\'re','Thare'], 'Their', term: 3),

];
import 'package:uuid/uuid.dart';
import '../../../core/models/question.dart';

// ignore_for_file: prefer_single_quotes
const _ue2 = Uuid();

Question _qe2(String level, String tag, int week, int set, String type,
    String q, List<String> opts, String ans) =>
    Question(
      id: _ue2.v4(), level: level, skillTag: tag,
      weekNumber: week, assessmentSet: set, questionType: type,
      termNumber: 2,
      questionText: q, options: opts, correctAnswer: ans,
    );

// ─────────────────────────────────────────────────────────────────────────────
// ELEMENTARY — TERM 2  (Nursery 3 – Primary 1)
// W1  : Review Term 1 Patterns                   → digraph, vowel_digraph, r_controlled
// W2  : Long Vowel: oo (short & long)            → vowel_digraph
// W3  : Long Vowel: oi, oy                       → vowel_digraph
// W4  : Long Vowel: ou, ow                       → vowel_digraph
// W5  : Split Digraph a_e                        → split_digraph
// W6  : Split Digraph i_e, o_e                   → split_digraph
// W7  : Split Digraph u_e, e_e                   → split_digraph
// W8  : High Frequency Words (primary set)       → cvc_word
// W9  : Reading for Meaning                      → digraph, split_digraph, vowel_digraph
// W10 : Plurals: -s, -es                         → suffix
// W11 : Adding -ing and -ed                      → suffix
// W12 : Fluency & Writing                        → split_digraph, vowel_digraph, suffix
// W13 : End-of-Term Assessment                   → split_digraph, vowel_digraph, suffix, r_controlled
// ─────────────────────────────────────────────────────────────────────────────

final List<Question> weekQuestionsElementaryT2 = [

  // ══════════════════════════════════════════════════════════════════════════
  // WEEK 1 — Review Term 1 Patterns (digraph + vowel_digraph + r_controlled)
  // Focus: read 25 words from Term 1 with automaticity; spell 10 from dictation
  // ══════════════════════════════════════════════════════════════════════════

  // Set 1
  _qe2('elementary','digraph',1,1,'phonics', 'Which word has the "sh" digraph?', ['ship','sip','sit','six'], 'ship'),
  _qe2('elementary','vowel_digraph',1,1,'phonics', 'Which word has the long /a/ sound?', ['rain','ran','rin','run'], 'rain'),
  _qe2('elementary','r_controlled',1,1,'phonics', 'Which word has the /ar/ sound?', ['farm','fan','fin','fun'], 'farm'),
  _qe2('elementary','digraph',1,1,'phonics', 'Which word has the "ch" digraph?', ['chip','sip','hip','tip'], 'chip'),
  _qe2('elementary','vowel_digraph',1,1,'phonics', 'Which word has the long /e/ sound?', ['feet','fat','fit','fog'], 'feet'),
  _qe2('elementary','r_controlled',1,1,'phonics', 'Which word has the /or/ sound?', ['corn','con','can','coin'], 'corn'),
  _qe2('elementary','digraph',1,1,'phonics', 'What sound does "ph" make?', ['/f/','/p/','/ph/','/v/'], '/f/'),
  _qe2('elementary','vowel_digraph',1,1,'phonics', 'Which word has the long /o/ sound?', ['boat','bot','bat','bit'], 'boat'),
  _qe2('elementary','r_controlled',1,1,'phonics', 'Which word has the /ur/ sound?', ['bird','bad','bid','bed'], 'bird'),
  _qe2('elementary','digraph',1,1,'phonics', 'Which word has the "ng" ending?', ['ring','rip','rid','rim'], 'ring'),

  // Set 2
  _qe2('elementary','vowel_digraph',1,2,'phonics', 'Which word uses "ay" for long /a/?', ['play','pal','pill','pull'], 'play'),
  _qe2('elementary','r_controlled',1,2,'phonics', 'Which word has the /ur/ sound spelled "er"?', ['fern','fan','fun','fin'], 'fern'),
  _qe2('elementary','digraph',1,2,'phonics', 'Which word starts with "wh"?', ['when','hen','ten','den'], 'when'),
  _qe2('elementary','vowel_digraph',1,2,'phonics', 'Which word uses "ee" for long /e/?', ['tree','try','trap','trip'], 'tree'),
  _qe2('elementary','r_controlled',1,2,'phonics', 'Which word has the /ar/ sound?', ['car','can','cap','cat'], 'car'),
  _qe2('elementary','digraph',1,2,'phonics', 'Which word starts with "th"?', ['that','bat','cat','rat'], 'that'),
  _qe2('elementary','vowel_digraph',1,2,'phonics', 'Which word uses "ai" for long /a/?', ['sail','sal','sill','sell'], 'sail'),
  _qe2('elementary','r_controlled',1,2,'phonics', 'Which word has the /ur/ sound spelled "ur"?', ['burn','barn','born','bran'], 'burn'),
  _qe2('elementary','digraph',1,2,'phonics', 'Which word ends with "nk"?', ['sink','sing','sill','silk'], 'sink'),
  _qe2('elementary','vowel_digraph',1,2,'phonics', 'Which word uses "oa" for long /o/?', ['road','rod','red','rid'], 'road'),

  // ══════════════════════════════════════════════════════════════════════════
  // WEEK 2 — Long Vowel: oo (short & long) (vowel_digraph)
  // Focus: oo = /oo/ (book) vs oo = /oo/ (moon); sort words; cook, look, moon, spoon
  // ══════════════════════════════════════════════════════════════════════════

  // Set 1
  _qe2('elementary','vowel_digraph',2,1,'phonics', 'Which word has the long "oo" sound (as in moon)?', ['moon','book','cook','look'], 'moon'),
  _qe2('elementary','vowel_digraph',2,1,'phonics', 'Which word has the short "oo" sound (as in book)?', ['book','moon','spoon','food'], 'book'),
  _qe2('elementary','vowel_digraph',2,1,'phonics', 'Which word rhymes with "moon"?', ['spoon','book','cook','look'], 'spoon'),
  _qe2('elementary','vowel_digraph',2,1,'phonics', 'Which word has the short /oo/ sound?', ['cook','cool','pool','fool'], 'cook'),
  _qe2('elementary','vowel_digraph',2,1,'phonics', 'Which word has the long /oo/ sound?', ['food','foot','wood','good'], 'food'),
  _qe2('elementary','vowel_digraph',2,1,'phonics', 'Which word rhymes with "book"?', ['look','moon','soon','loon'], 'look'),
  _qe2('elementary','vowel_digraph',2,1,'phonics', 'In which word does "oo" say /oo/ as in moon?', ['spoon','foot','wood','wool'], 'spoon'),
  _qe2('elementary','vowel_digraph',2,1,'phonics', 'In which word does "oo" say /oo/ as in book?', ['wood','moon','cool','pool'], 'wood'),
  _qe2('elementary','vowel_digraph',2,1,'phonics', 'Which word has the long /oo/ sound?', ['pool','pull','poll','pill'], 'pool'),
  _qe2('elementary','vowel_digraph',2,1,'phonics', 'Which word has the short /oo/ sound?', ['foot','food','fool','roof'], 'foot'),

  // Set 2
  _qe2('elementary','vowel_digraph',2,2,'phonics', 'Which pair both have the long /oo/ sound?', ['moon / spoon','moon / book','book / cook','look / wood'], 'moon / spoon'),
  _qe2('elementary','vowel_digraph',2,2,'phonics', 'Which pair both have the short /oo/ sound?', ['book / cook','book / moon','cook / food','spoon / wool'], 'book / cook'),
  _qe2('elementary','vowel_digraph',2,2,'phonics', 'Which word has the long /oo/ sound?', ['zoom','zoo','zoo','zoom'], 'zoom'),
  _qe2('elementary','vowel_digraph',2,2,'phonics', 'Which word has the short /oo/ sound?', ['good','goo','fool','cool'], 'good'),
  _qe2('elementary','vowel_digraph',2,2,'phonics', 'Which word has the long /oo/ sound?', ['bloom','blood','broad','brood'], 'bloom'),
  _qe2('elementary','vowel_digraph',2,2,'phonics', 'Which word has the short /oo/ sound?', ['hood','hoop','hoot','hook'], 'hood'),
  _qe2('elementary','vowel_digraph',2,2,'phonics', 'Which word rhymes with "spoon"?', ['soon','sun','son','sin'], 'soon'),
  _qe2('elementary','vowel_digraph',2,2,'phonics', 'Which word rhymes with "book"?', ['hook','hoe','hue','how'], 'hook'),
  _qe2('elementary','vowel_digraph',2,2,'phonics', 'Which word does NOT have the long /oo/ sound?', ['moon','spoon','food','foot'], 'foot'),
  _qe2('elementary','vowel_digraph',2,2,'phonics', 'Which word does NOT have the short /oo/ sound?', ['book','cook','look','cool'], 'cool'),

  // ══════════════════════════════════════════════════════════════════════════
  // WEEK 3 — Long Vowel: oi, oy (vowel_digraph)
  // Focus: oi and oy as /oy/ spellings; coin, boil, boy, toy
  // ══════════════════════════════════════════════════════════════════════════

  // Set 1
  _qe2('elementary','vowel_digraph',3,1,'phonics', 'What sound do "oi" make together?', ['/oy/','long /o/','/oi/','/i/'], '/oy/'),
  _qe2('elementary','vowel_digraph',3,1,'phonics', 'Which word uses "oi" for the /oy/ sound?', ['coin','con','can','cob'], 'coin'),
  _qe2('elementary','vowel_digraph',3,1,'phonics', 'Which word uses "oy" for the /oy/ sound?', ['boy','bot','bit','bad'], 'boy'),
  _qe2('elementary','vowel_digraph',3,1,'phonics', 'Which word has "oi"?', ['boil','bol','bill','bell'], 'boil'),
  _qe2('elementary','vowel_digraph',3,1,'phonics', 'Which word has "oy"?', ['toy','top','tip','tap'], 'toy'),
  _qe2('elementary','vowel_digraph',3,1,'phonics', 'Where does "oy" usually appear in a word?', ['at the end','at the beginning','in the middle','anywhere'], 'at the end'),
  _qe2('elementary','vowel_digraph',3,1,'phonics', 'Which word uses "oi"?', ['join','jon','jan','jun'], 'join'),
  _qe2('elementary','vowel_digraph',3,1,'phonics', 'Which word uses "oy"?', ['joy','jot','jet','jab'], 'joy'),
  _qe2('elementary','vowel_digraph',3,1,'phonics', 'Which word has the /oy/ sound?', ['oil','eel','owl','ail'], 'oil'),
  _qe2('elementary','vowel_digraph',3,1,'phonics', 'Which word does NOT have the /oy/ sound?', ['coin','boy','toy','can'], 'can'),

  // Set 2
  _qe2('elementary','vowel_digraph',3,2,'phonics', 'Which word uses "oi"?', ['soil','sol','sell','sill'], 'soil'),
  _qe2('elementary','vowel_digraph',3,2,'phonics', 'Which word uses "oy"?', ['enjoy','enter','envy','empty'], 'enjoy'),
  _qe2('elementary','vowel_digraph',3,2,'phonics', 'Which word has "oi"?', ['point','pint','punt','pant'], 'point'),
  _qe2('elementary','vowel_digraph',3,2,'phonics', 'Which word has "oy"?', ['royal','round','rough','route'], 'royal'),
  _qe2('elementary','vowel_digraph',3,2,'phonics', 'Which pair both use "oi"?', ['coin / boil','coin / boy','boil / toy','joy / oil'], 'coin / boil'),
  _qe2('elementary','vowel_digraph',3,2,'phonics', 'Which pair both use "oy"?', ['boy / toy','boy / coin','toy / oil','boil / joy'], 'boy / toy'),
  _qe2('elementary','vowel_digraph',3,2,'phonics', 'Which word uses "oi"?', ['voice','vase','vine','vote'], 'voice'),
  _qe2('elementary','vowel_digraph',3,2,'phonics', 'Which word uses "oy"?', ['destroy','detail','detain','detect'], 'destroy'),
  _qe2('elementary','vowel_digraph',3,2,'phonics', 'Which word has the /oy/ sound?', ['noise','nose','note','nine'], 'noise'),
  _qe2('elementary','vowel_digraph',3,2,'phonics', 'Which word does NOT have the /oy/ sound?', ['coin','joy','soil','coat'], 'coat'),

  // ══════════════════════════════════════════════════════════════════════════
  // WEEK 4 — Long Vowel: ou, ow (vowel_digraph)
  // Focus: ou and ow as /ow/ spellings; cloud, mouse, cow, town
  // ══════════════════════════════════════════════════════════════════════════

  // Set 1
  _qe2('elementary','vowel_digraph',4,1,'phonics', 'What sound do "ou" make in "cloud"?', ['/ow/','long /o/','/oo/','/u/'], '/ow/'),
  _qe2('elementary','vowel_digraph',4,1,'phonics', 'Which word uses "ou" for the /ow/ sound?', ['cloud','clod','clad','clue'], 'cloud'),
  _qe2('elementary','vowel_digraph',4,1,'phonics', 'Which word uses "ow" for the /ow/ sound?', ['cow','cob','cod','cop'], 'cow'),
  _qe2('elementary','vowel_digraph',4,1,'phonics', 'Which word has "ou"?', ['mouse','most','mast','mist'], 'mouse'),
  _qe2('elementary','vowel_digraph',4,1,'phonics', 'Which word has "ow" saying /ow/?', ['town','tone','tune','tame'], 'town'),
  _qe2('elementary','vowel_digraph',4,1,'phonics', 'In "snow", what does "ow" say?', ['long /o/','/ow/','/oo/','/u/'], 'long /o/'),
  _qe2('elementary','vowel_digraph',4,1,'phonics', 'In "crown", what does "ow" say?', ['/ow/','long /o/','/oo/','/u/'], '/ow/'),
  _qe2('elementary','vowel_digraph',4,1,'phonics', 'Which word uses "ou"?', ['shout','shot','shut','shed'], 'shout'),
  _qe2('elementary','vowel_digraph',4,1,'phonics', 'Which word uses "ow" to say /ow/?', ['down','done','dune','dale'], 'down'),
  _qe2('elementary','vowel_digraph',4,1,'phonics', 'Which word has the /ow/ sound?', ['house','hose','those','nose'], 'house'),

  // Set 2
  _qe2('elementary','vowel_digraph',4,2,'phonics', 'Which word uses "ou"?', ['found','fond','fund','fend'], 'found'),
  _qe2('elementary','vowel_digraph',4,2,'phonics', 'Which word uses "ow" for /ow/?', ['growl','grow','glow','groan'], 'growl'),
  _qe2('elementary','vowel_digraph',4,2,'phonics', 'Which word has "ou"?', ['sound','sand','send','sind'], 'sound'),
  _qe2('elementary','vowel_digraph',4,2,'phonics', 'Which pair both use "ou" for /ow/?', ['cloud / mouse','cloud / snow','mouse / cow','town / snow'], 'cloud / mouse'),
  _qe2('elementary','vowel_digraph',4,2,'phonics', 'Which pair — "ow" says /ow/ in both?', ['cow / town','cow / snow','town / grow','snow / blow'], 'cow / town'),
  _qe2('elementary','vowel_digraph',4,2,'phonics', 'Which word uses "ou"?', ['count','coat','cute','cane'], 'count'),
  _qe2('elementary','vowel_digraph',4,2,'phonics', 'Which word uses "ow" saying /ow/?', ['howl','hole','hale','heal'], 'howl'),
  _qe2('elementary','vowel_digraph',4,2,'phonics', 'Which word does NOT have the /ow/ sound?', ['cloud','cow','mouse','coat'], 'coat'),
  _qe2('elementary','vowel_digraph',4,2,'phonics', 'Which word uses "ou"?', ['out','oat','eat','apt'], 'out'),
  _qe2('elementary','vowel_digraph',4,2,'phonics', 'Which word uses "ow" for /ow/?', ['owl','old','oar','oak'], 'owl'),

  // ══════════════════════════════════════════════════════════════════════════
  // WEEK 5 — Split Digraph a_e (split_digraph)
  // Focus: magic e changes vowel sound; cake, name, late; compare pin/pine, cap/cape
  // ══════════════════════════════════════════════════════════════════════════

  // Set 1
  _qe2('elementary','split_digraph',5,1,'phonics', 'What does the silent "e" at the end of a word do?', ['makes the vowel say its name','makes the vowel short','is always sounded','does nothing'], 'makes the vowel say its name'),
  _qe2('elementary','split_digraph',5,1,'phonics', 'What does adding "e" to "can" make?', ['cane','cone','cune','cene'], 'cane'),
  _qe2('elementary','split_digraph',5,1,'phonics', 'Which word has the a_e pattern?', ['cake','cat','cart','call'], 'cake'),
  _qe2('elementary','split_digraph',5,1,'phonics', 'What vowel sound does "cake" have?', ['long /a/','short /a/','long /e/','/ar/'], 'long /a/'),
  _qe2('elementary','split_digraph',5,1,'phonics', 'Which word has the a_e pattern?', ['name','nap','nab','nag'], 'name'),
  _qe2('elementary','split_digraph',5,1,'phonics', 'What is the difference between "cap" and "cape"?', ['cape has long /a/, cap has short /a/','cape has short /a/, cap has long /a/','they sound the same','cap has a silent e'], 'cape has long /a/, cap has short /a/'),
  _qe2('elementary','split_digraph',5,1,'phonics', 'Which word has the a_e pattern?', ['late','lat','lad','lag'], 'late'),
  _qe2('elementary','split_digraph',5,1,'phonics', 'Which word uses a_e?', ['gate','got','gut','git'], 'gate'),
  _qe2('elementary','split_digraph',5,1,'phonics', 'Which word does NOT use a_e?', ['cake','name','late','cap'], 'cap'),
  _qe2('elementary','split_digraph',5,1,'phonics', 'Adding "e" to "pin" makes ___', ['pine','pane','pone','peen'], 'pine'),

  // Set 2
  _qe2('elementary','split_digraph',5,2,'phonics', 'Which word has the a_e pattern?', ['make','mak','mark','mack'], 'make'),
  _qe2('elementary','split_digraph',5,2,'phonics', 'Which word has the a_e pattern?', ['race','rack','rash','raft'], 'race'),
  _qe2('elementary','split_digraph',5,2,'phonics', 'What does adding "e" to "man" make?', ['mane','mine','mone','mune'], 'mane'),
  _qe2('elementary','split_digraph',5,2,'phonics', 'What does adding "e" to "hat" make?', ['hate','hite','hote','hute'], 'hate'),
  _qe2('elementary','split_digraph',5,2,'phonics', 'Which word has the long /a/ sound due to a_e?', ['wave','wag','wax','wad'], 'wave'),
  _qe2('elementary','split_digraph',5,2,'phonics', 'Which word uses a_e?', ['save','sap','sag','sad'], 'save'),
  _qe2('elementary','split_digraph',5,2,'phonics', 'Which word uses a_e?', ['brave','brad','bran','brat'], 'brave'),
  _qe2('elementary','split_digraph',5,2,'phonics', 'Which word does NOT use a_e?', ['gate','cake','name','gap'], 'gap'),
  _qe2('elementary','split_digraph',5,2,'phonics', 'What does adding "e" to "tap" make?', ['tape','tipe','tope','tupe'], 'tape'),
  _qe2('elementary','split_digraph',5,2,'phonics', 'What is the vowel sound in "crane"?', ['long /a/','short /a/','long /e/','/ar/'], 'long /a/'),

  // ══════════════════════════════════════════════════════════════════════════
  // WEEK 6 — Split Digraph i_e, o_e (split_digraph)
  // Focus: kite, bike, line; bone, home, note; write CVCe words from dictation
  // ══════════════════════════════════════════════════════════════════════════

  // Set 1
  _qe2('elementary','split_digraph',6,1,'phonics', 'Which word has the i_e pattern?', ['kite','kit','kid','kin'], 'kite'),
  _qe2('elementary','split_digraph',6,1,'phonics', 'Which word has the o_e pattern?', ['bone','bon','bob','bog'], 'bone'),
  _qe2('elementary','split_digraph',6,1,'phonics', 'What vowel sound does "kite" have?', ['long /i/','short /i/','long /a/','/ir/'], 'long /i/'),
  _qe2('elementary','split_digraph',6,1,'phonics', 'What vowel sound does "bone" have?', ['long /o/','short /o/','long /a/','/or/'], 'long /o/'),
  _qe2('elementary','split_digraph',6,1,'phonics', 'Which word has the i_e pattern?', ['bike','bik','bid','bit'], 'bike'),
  _qe2('elementary','split_digraph',6,1,'phonics', 'Which word has the o_e pattern?', ['home','hom','hot','hop'], 'home'),
  _qe2('elementary','split_digraph',6,1,'phonics', 'Which word uses i_e?', ['line','lin','lid','lip'], 'line'),
  _qe2('elementary','split_digraph',6,1,'phonics', 'Which word uses o_e?', ['note','not','nob','nod'], 'note'),
  _qe2('elementary','split_digraph',6,1,'phonics', 'What does adding "e" to "bit" make?', ['bite','bate','bote','bute'], 'bite'),
  _qe2('elementary','split_digraph',6,1,'phonics', 'What does adding "e" to "hop" make?', ['hope','hipe','hape','hupe'], 'hope'),

  // Set 2
  _qe2('elementary','split_digraph',6,2,'phonics', 'Which word uses i_e?', ['ride','rid','rig','rip'], 'ride'),
  _qe2('elementary','split_digraph',6,2,'phonics', 'Which word uses o_e?', ['role','rol','rob','rod'], 'role'),
  _qe2('elementary','split_digraph',6,2,'phonics', 'Which word uses i_e?', ['mine','min','mix','mid'], 'mine'),
  _qe2('elementary','split_digraph',6,2,'phonics', 'Which word uses o_e?', ['hole','hol','hot','hop'], 'hole'),
  _qe2('elementary','split_digraph',6,2,'phonics', 'Which word does NOT use i_e?', ['kite','bike','line','bit'], 'bit'),
  _qe2('elementary','split_digraph',6,2,'phonics', 'Which word does NOT use o_e?', ['bone','home','note','hop'], 'hop'),
  _qe2('elementary','split_digraph',6,2,'phonics', 'What does adding "e" to "rid" make?', ['ride','rade','rode','rude'], 'ride'),
  _qe2('elementary','split_digraph',6,2,'phonics', 'What does adding "e" to "nod" make?', ['node','nade','nide','nude'], 'node'),
  _qe2('elementary','split_digraph',6,2,'phonics', 'Which word has the long /i/ due to i_e?', ['smile','small','smell','spell'], 'smile'),
  _qe2('elementary','split_digraph',6,2,'phonics', 'Which word has the long /o/ due to o_e?', ['stone','ston','stop','stob'], 'stone'),

  // ══════════════════════════════════════════════════════════════════════════
  // WEEK 7 — Split Digraph u_e, e_e (split_digraph)
  // Focus: u_e and e_e words; all five magic-e patterns; decodable text
  // ══════════════════════════════════════════════════════════════════════════

  // Set 1
  _qe2('elementary','split_digraph',7,1,'phonics', 'Which word has the u_e pattern?', ['cube','cub','cut','cup'], 'cube'),
  _qe2('elementary','split_digraph',7,1,'phonics', 'Which word has the e_e pattern?', ['eve','ever','even','event'], 'eve'),
  _qe2('elementary','split_digraph',7,1,'phonics', 'What vowel sound does "cube" have?', ['long /u/','short /u/','long /o/','/ur/'], 'long /u/'),
  _qe2('elementary','split_digraph',7,1,'phonics', 'Which word uses u_e?', ['tune','tun','tug','tub'], 'tune'),
  _qe2('elementary','split_digraph',7,1,'phonics', 'Which word uses u_e?', ['mule','mul','mud','mug'], 'mule'),
  _qe2('elementary','split_digraph',7,1,'phonics', 'Which word uses e_e?', ['these','the','them','then'], 'these'),
  _qe2('elementary','split_digraph',7,1,'phonics', 'What does adding "e" to "tub" make?', ['tube','tabe','tibe','tobe'], 'tube'),
  _qe2('elementary','split_digraph',7,1,'phonics', 'Which of the five a_e, i_e, o_e, u_e, e_e patterns does "bone" use?', ['o_e','a_e','i_e','u_e'], 'o_e'),
  _qe2('elementary','split_digraph',7,1,'phonics', 'Which word uses u_e?', ['huge','hug','hub','hut'], 'huge'),
  _qe2('elementary','split_digraph',7,1,'phonics', 'Which word does NOT use a magic-e pattern?', ['cake','kite','bone','bit'], 'bit'),

  // Set 2
  _qe2('elementary','split_digraph',7,2,'phonics', 'Which word uses u_e?', ['rule','rug','run','rut'], 'rule'),
  _qe2('elementary','split_digraph',7,2,'phonics', 'Which word uses e_e?', ['theme','them','then','there'], 'theme'),
  _qe2('elementary','split_digraph',7,2,'phonics', 'Which of the five patterns does "cake" use?', ['a_e','i_e','o_e','u_e'], 'a_e'),
  _qe2('elementary','split_digraph',7,2,'phonics', 'Which of the five patterns does "kite" use?', ['i_e','a_e','o_e','u_e'], 'i_e'),
  _qe2('elementary','split_digraph',7,2,'phonics', 'Which of the five patterns does "tune" use?', ['u_e','a_e','i_e','o_e'], 'u_e'),
  _qe2('elementary','split_digraph',7,2,'phonics', 'Which word uses u_e?', ['June','jun','jug','jut'], 'June'),
  _qe2('elementary','split_digraph',7,2,'phonics', 'What does adding "e" to "cut" make?', ['cute','cate','cite','cote'], 'cute'),
  _qe2('elementary','split_digraph',7,2,'phonics', 'Which word uses a magic-e pattern?', ['flute','flu','flat','flip'], 'flute'),
  _qe2('elementary','split_digraph',7,2,'phonics', 'Which word has the long /u/ sound?', ['dune','dun','dug','dot'], 'dune'),
  _qe2('elementary','split_digraph',7,2,'phonics', 'Which word does NOT use a magic-e pattern?', ['tune','cube','mule','cup'], 'cup'),

  // ══════════════════════════════════════════════════════════════════════════
  // WEEK 8 — High Frequency Words (primary set) (cvc_word)
  // Focus: read and write 20 HFW fluently; use in sentences
  // ══════════════════════════════════════════════════════════════════════════

  // Set 1
  _qe2('elementary','cvc_word',8,1,'phonics', 'Which of these is a high-frequency word?', ['they','thay','thei','thi'], 'they'),
  _qe2('elementary','cvc_word',8,1,'phonics', 'Which word is spelled correctly?', ['said','sed','saed','siad'], 'said'),
  _qe2('elementary','cvc_word',8,1,'phonics', 'Which word is spelled correctly?', ['have','hav','haev','hve'], 'have'),
  _qe2('elementary','cvc_word',8,1,'phonics', 'Which word is spelled correctly?', ['were','wer','werre','wiere'], 'were'),
  _qe2('elementary','cvc_word',8,1,'phonics', 'Which word is spelled correctly?', ['come','com','coum','coom'], 'come'),
  _qe2('elementary','cvc_word',8,1,'phonics', 'Which word completes: "___ are you?"', ['Where','Wear','Ware','Were'], 'Where'),
  _qe2('elementary','cvc_word',8,1,'phonics', 'Which word is spelled correctly?', ['some','som','soum','soom'], 'some'),
  _qe2('elementary','cvc_word',8,1,'phonics', 'Which word is spelled correctly?', ['here','heer','hare','hire'], 'here'),
  _qe2('elementary','cvc_word',8,1,'phonics', 'Which word is spelled correctly?', ['there','theer','thar','thire'], 'there'),
  _qe2('elementary','cvc_word',8,1,'phonics', 'Which word is spelled correctly?', ['what','wut','wot','whet'], 'what'),

  // Set 2
  _qe2('elementary','cvc_word',8,2,'phonics', 'Which word is spelled correctly?', ['when','wen','whin','whan'], 'when'),
  _qe2('elementary','cvc_word',8,2,'phonics', 'Which word is spelled correctly?', ['could','culd','cood','coud'], 'could'),
  _qe2('elementary','cvc_word',8,2,'phonics', 'Which word is spelled correctly?', ['would','wuld','wood','woud'], 'would'),
  _qe2('elementary','cvc_word',8,2,'phonics', 'Which word is spelled correctly?', ['because','becaus','becos','becoz'], 'because'),
  _qe2('elementary','cvc_word',8,2,'phonics', 'Which word is spelled correctly?', ['their','thier','thear','ther'], 'their'),
  _qe2('elementary','cvc_word',8,2,'phonics', 'Which word is spelled correctly?', ['little','litle','littel','littl'], 'little'),
  _qe2('elementary','cvc_word',8,2,'phonics', 'Which word is spelled correctly?', ['people','peple','peopel','peeple'], 'people'),
  _qe2('elementary','cvc_word',8,2,'phonics', 'Which word is spelled correctly?', ['water','watter','watr','watar'], 'water'),
  _qe2('elementary','cvc_word',8,2,'phonics', 'Which word is spelled correctly?', ['every','evry','evre','everi'], 'every'),
  _qe2('elementary','cvc_word',8,2,'phonics', 'Which word is spelled correctly?', ['again','agian','agane','agein'], 'again'),

  // ══════════════════════════════════════════════════════════════════════════
  // WEEK 9 — Reading for Meaning (digraph + split_digraph + vowel_digraph)
  // Focus: read a short story; identify character, setting; answer 4 comprehension Qs
  // ══════════════════════════════════════════════════════════════════════════

  // Set 1
  _qe2('elementary','vowel_digraph',9,1,'phonics', 'Which word has a vowel digraph in: "The rain came down hard"?', ['rain','The','came','down'], 'rain'),
  _qe2('elementary','split_digraph',9,1,'phonics', 'Which word uses a magic-e pattern in: "She rode her bike to school"?', ['rode','She','her','to'], 'rode'),
  _qe2('elementary','digraph',9,1,'phonics', 'Which word has a digraph in: "The ship set sail at noon"?', ['ship','The','set','at'], 'ship'),
  _qe2('elementary','vowel_digraph',9,1,'phonics', 'What does "She could see the deep blue sea" tell us about the sea?', ['it is deep and blue','it is loud','it is green','it is small'], 'it is deep and blue'),
  _qe2('elementary','split_digraph',9,1,'phonics', 'Which word uses a_e in: "Jake made a cake for the party"?', ['Jake','made','party','for'], 'Jake'),
  _qe2('elementary','digraph',9,1,'phonics', 'Which word has "th" in: "The thick cloud hid the sun"?', ['thick','The','cloud','sun'], 'thick'),
  _qe2('elementary','vowel_digraph',9,1,'phonics', 'Which word has "ee" in: "We could see three big trees"?', ['three','We','could','big'], 'three'),
  _qe2('elementary','split_digraph',9,1,'phonics', 'Which word uses o_e in: "The mole dug a hole in the ground"?', ['mole','The','dug','in'], 'mole'),
  _qe2('elementary','digraph',9,1,'phonics', 'Who is the main character? "Tom and his dog went to the beach."', ['Tom','the dog','the beach','none'], 'Tom'),
  _qe2('elementary','vowel_digraph',9,1,'phonics', 'Where did they go? "Tom and his dog went to the beach."', ['the beach','school','the park','home'], 'the beach'),

  // Set 2
  _qe2('elementary','split_digraph',9,2,'phonics', 'Which word uses i_e in: "The kite flew high in the sky"?', ['kite','The','flew','sky'], 'kite'),
  _qe2('elementary','vowel_digraph',9,2,'phonics', 'Which word has "oa" in: "The toad leapt off the road"?', ['toad','The','leapt','off'], 'toad'),
  _qe2('elementary','digraph',9,2,'phonics', 'Which word has "wh" in: "Which hat does she like best?"', ['Which','hat','she','best'], 'Which'),
  _qe2('elementary','split_digraph',9,2,'phonics', 'Which word uses u_e in: "Sam played a tune on the flute"?', ['tune','Sam','played','on'], 'tune'),
  _qe2('elementary','vowel_digraph',9,2,'phonics', 'Which word has "oi" in: "The boy found a coin in the soil"?', ['coin','boy','The','found'], 'coin'),
  _qe2('elementary','digraph',9,2,'phonics', 'Which word has "ng" in: "The king rang the bell at dawn"?', ['king','The','rang','bell'], 'king'),
  _qe2('elementary','split_digraph',9,2,'phonics', 'What did Sam use? "Sam rode his bike down the lane."', ['his bike','a boat','a car','a kite'], 'his bike'),
  _qe2('elementary','vowel_digraph',9,2,'phonics', 'Which word has "ow" = /ow/ in: "The cow ran down the hill"?', ['cow','The','ran','hill'], 'cow'),
  _qe2('elementary','digraph',9,2,'phonics', 'What sound does "ch" make in "chase"?', ['/ch/','/k/','/sh/','/j/'], '/ch/'),
  _qe2('elementary','split_digraph',9,2,'phonics', 'What is the magic-e doing in "hope"?', ['making the o say long /o/','making the h silent','making the p double','it does nothing'], 'making the o say long /o/'),

  // ══════════════════════════════════════════════════════════════════════════
  // WEEK 10 — Plurals: -s, -es (suffix)
  // Focus: add -s and -es to make plurals; understand when to use -es
  // ══════════════════════════════════════════════════════════════════════════

  // Set 1
  _qe2('elementary','suffix',10,1,'phonics', 'What do we add to most words to make them plural?', ['-s','-es','-ed','-ing'], '-s'),
  _qe2('elementary','suffix',10,1,'phonics', 'What is the plural of "cat"?', ['cats','cates','caties','catses'], 'cats'),
  _qe2('elementary','suffix',10,1,'phonics', 'What is the plural of "box"?', ['boxes','boxs','boxies','boxess'], 'boxes'),
  _qe2('elementary','suffix',10,1,'phonics', 'When do we add "-es" instead of "-s"?', ['after s, x, sh, ch','always','never','after vowels only'], 'after s, x, sh, ch'),
  _qe2('elementary','suffix',10,1,'phonics', 'What is the plural of "dish"?', ['dishes','dishs','dishies','dishses'], 'dishes'),
  _qe2('elementary','suffix',10,1,'phonics', 'What is the plural of "bus"?', ['buses','buss','busies','busis'], 'buses'),
  _qe2('elementary','suffix',10,1,'phonics', 'What is the plural of "dog"?', ['dogs','doges','dogies','dogses'], 'dogs'),
  _qe2('elementary','suffix',10,1,'phonics', 'What is the plural of "watch"?', ['watches','watchs','watchies','watchses'], 'watches'),
  _qe2('elementary','suffix',10,1,'phonics', 'What is the plural of "book"?', ['books','bookes','bookies','bookses'], 'books'),
  _qe2('elementary','suffix',10,1,'phonics', 'What is the plural of "church"?', ['churches','churchs','churchies','churchses'], 'churches'),

  // Set 2
  _qe2('elementary','suffix',10,2,'phonics', 'What is the plural of "beach"?', ['beaches','beachs','beachies','beachses'], 'beaches'),
  _qe2('elementary','suffix',10,2,'phonics', 'What is the plural of "pen"?', ['pens','penes','penies','penses'], 'pens'),
  _qe2('elementary','suffix',10,2,'phonics', 'What is the plural of "fox"?', ['foxes','foxs','foxies','foxses'], 'foxes'),
  _qe2('elementary','suffix',10,2,'phonics', 'What is the plural of "hat"?', ['hats','hates','haties','hatses'], 'hats'),
  _qe2('elementary','suffix',10,2,'phonics', 'What is the plural of "glass"?', ['glasses','glasss','glassies','glassses'], 'glasses'),
  _qe2('elementary','suffix',10,2,'phonics', 'What is the plural of "wish"?', ['wishes','wishs','wishies','wishses'], 'wishes'),
  _qe2('elementary','suffix',10,2,'phonics', 'What is the plural of "tree"?', ['trees','treees','treeies','treeses'], 'trees'),
  _qe2('elementary','suffix',10,2,'phonics', 'What is the plural of "bench"?', ['benches','benchs','benchies','benchses'], 'benches'),
  _qe2('elementary','suffix',10,2,'phonics', 'Which word is a correct plural?', ['dresses','dresss','dressies','dressses'], 'dresses'),
  _qe2('elementary','suffix',10,2,'phonics', 'Which word is NOT a correct plural?', ['cats','boxes','buses','dishs'], 'dishs'),

  // ══════════════════════════════════════════════════════════════════════════
  // WEEK 11 — Adding -ing and -ed (suffix)
  // Focus: add -ing to verbs; add -ed for past tense; doubling rule
  // ══════════════════════════════════════════════════════════════════════════

  // Set 1
  _qe2('elementary','suffix',11,1,'phonics', 'What do we add to a verb to show it is happening now?', ['-ing','-ed','-s','-er'], '-ing'),
  _qe2('elementary','suffix',11,1,'phonics', 'What is "run" + "-ing"?', ['running','runing','runeing','running e'], 'running'),
  _qe2('elementary','suffix',11,1,'phonics', 'What is "jump" + "-ed"?', ['jumped','jumpped','jumpd','jumpied'], 'jumped'),
  _qe2('elementary','suffix',11,1,'phonics', 'For short vowel verbs (CVC), what do we do before adding -ing?', ['double the final consonant','add e','do nothing','drop the vowel'], 'double the final consonant'),
  _qe2('elementary','suffix',11,1,'phonics', 'What is "sit" + "-ing"?', ['sitting','siting','siteing','sittying'], 'sitting'),
  _qe2('elementary','suffix',11,1,'phonics', 'What is "walk" + "-ed"?', ['walked','walkked','walkd','walkied'], 'walked'),
  _qe2('elementary','suffix',11,1,'phonics', 'What is "hop" + "-ing"?', ['hopping','hoping','hopeing','hoppying'], 'hopping'),
  _qe2('elementary','suffix',11,1,'phonics', 'What is "play" + "-ed"?', ['played','plaied','plaid','playyed'], 'played'),
  _qe2('elementary','suffix',11,1,'phonics', 'What is "swim" + "-ing"?', ['swimming','swiming','swimeing','swimmying'], 'swimming'),
  _qe2('elementary','suffix',11,1,'phonics', 'What is "look" + "-ing"?', ['looking','lookking','lookeing','lookying'], 'looking'),

  // Set 2
  _qe2('elementary','suffix',11,2,'phonics', 'What is "beg" + "-ing"?', ['begging','beging','begeing','beggying'], 'begging'),
  _qe2('elementary','suffix',11,2,'phonics', 'What is "talk" + "-ed"?', ['talked','talkked','talkd','talkied'], 'talked'),
  _qe2('elementary','suffix',11,2,'phonics', 'What is "dig" + "-ing"?', ['digging','diging','digeing','diggying'], 'digging'),
  _qe2('elementary','suffix',11,2,'phonics', 'What is "rain" + "-ing"?', ['raining','rainning','raineing','rainying'], 'raining'),
  _qe2('elementary','suffix',11,2,'phonics', 'What is "clap" + "-ing"?', ['clapping','claping','clapeing','clappying'], 'clapping'),
  _qe2('elementary','suffix',11,2,'phonics', 'What is "paint" + "-ed"?', ['painted','paintted','paintd','paintied'], 'painted'),
  _qe2('elementary','suffix',11,2,'phonics', 'What is "stop" + "-ing"?', ['stopping','stoping','stopeing','stoppying'], 'stopping'),
  _qe2('elementary','suffix',11,2,'phonics', 'What is "help" + "-ed"?', ['helped','helppped','helpd','helpied'], 'helped'),
  _qe2('elementary','suffix',11,2,'phonics', 'Which is correct: "running" or "runing"?', ['running','runing','both are correct','neither is correct'], 'running'),
  _qe2('elementary','suffix',11,2,'phonics', 'Which is correct: "jumped" or "jumpped"?', ['jumped','jumpped','both are correct','neither is correct'], 'jumped'),

  // ══════════════════════════════════════════════════════════════════════════
  // WEEK 12 — Fluency & Writing (split_digraph + vowel_digraph + suffix)
  // Focus: read a page fluently; write a short paragraph; self-check phonics
  // ══════════════════════════════════════════════════════════════════════════

  // Set 1
  _qe2('elementary','split_digraph',12,1,'phonics', 'Which word is spelled correctly?', ['cake','caek','caik','caake'], 'cake'),
  _qe2('elementary','vowel_digraph',12,1,'phonics', 'Which word is spelled correctly?', ['rain','rayn','rane','rein'], 'rain'),
  _qe2('elementary','suffix',12,1,'phonics', 'Which word is spelled correctly?', ['running','runing','runeing','runneing'], 'running'),
  _qe2('elementary','split_digraph',12,1,'phonics', 'Which word is spelled correctly?', ['kite','kiet','kyte','kiite'], 'kite'),
  _qe2('elementary','vowel_digraph',12,1,'phonics', 'Which word is spelled correctly?', ['feet','feat','fete','feeet'], 'feet'),
  _qe2('elementary','suffix',12,1,'phonics', 'Which word is spelled correctly?', ['boxes','boxs','boxies','boxses'], 'boxes'),
  _qe2('elementary','split_digraph',12,1,'phonics', 'Which word is spelled correctly?', ['bone','boan','bown','bonne'], 'bone'),
  _qe2('elementary','vowel_digraph',12,1,'phonics', 'Which word is spelled correctly?', ['boat','bote','bowt','boet'], 'boat'),
  _qe2('elementary','suffix',12,1,'phonics', 'Which word is spelled correctly?', ['hopping','hoping','hopeing','hoppying'], 'hopping'),
  _qe2('elementary','split_digraph',12,1,'phonics', 'Which word is spelled correctly?', ['tune','toon','tuun','toone'], 'tune'),

  // Set 2
  _qe2('elementary','vowel_digraph',12,2,'phonics', 'Which word is spelled correctly?', ['play','plai','plaay','playe'], 'play'),
  _qe2('elementary','suffix',12,2,'phonics', 'Which word is spelled correctly?', ['dishes','dishs','dishies','dishses'], 'dishes'),
  _qe2('elementary','split_digraph',12,2,'phonics', 'Which word is spelled correctly?', ['cute','cuet','cuut','coote'], 'cute'),
  _qe2('elementary','vowel_digraph',12,2,'phonics', 'Which word is spelled correctly?', ['coin','coyn','coine','coien'], 'coin'),
  _qe2('elementary','suffix',12,2,'phonics', 'Which word is spelled correctly?', ['jumped','jumpped','jumpd','jumpied'], 'jumped'),
  _qe2('elementary','split_digraph',12,2,'phonics', 'Which sentence uses magic-e correctly?', ['I rode my bike.','I rodd my bike.','I rod my bike.','I ridde my bike.'], 'I rode my bike.'),
  _qe2('elementary','vowel_digraph',12,2,'phonics', 'Which sentence uses a vowel digraph word correctly?', ['The train ran on the tracks.','The trane ran on the tracks.','The trayn ran on the tracks.','The trein ran on the tracks.'], 'The train ran on the tracks.'),
  _qe2('elementary','suffix',12,2,'phonics', 'Which sentence uses a suffix correctly?', ['She is running fast.','She is runing fast.','She is runeing fast.','She is runneing fast.'], 'She is running fast.'),
  _qe2('elementary','split_digraph',12,2,'phonics', 'Which word is spelled correctly?', ['smile','smille','smiil','smyle'], 'smile'),
  _qe2('elementary','vowel_digraph',12,2,'phonics', 'Which word is spelled correctly?', ['cloud','clowud','cloud','clowd'], 'cloud'),

  // ══════════════════════════════════════════════════════════════════════════
  // WEEK 13 — End-of-Term Assessment
  // Focus: split_digraph, vowel_digraph, suffix, r_controlled
  // ══════════════════════════════════════════════════════════════════════════

  // Set 1
  _qe2('elementary','split_digraph',13,1,'phonics', 'Which word uses a magic-e pattern?', ['kite','kit','kid','kin'], 'kite'),
  _qe2('elementary','vowel_digraph',13,1,'phonics', 'Which word has the long /a/ vowel digraph?', ['rain','ran','rin','run'], 'rain'),
  _qe2('elementary','r_controlled',13,1,'phonics', 'Which word has the /ar/ sound?', ['car','can','cap','cat'], 'car'),
  _qe2('elementary','suffix',13,1,'phonics', 'What is the plural of "dish"?', ['dishes','dishs','dishies','dishses'], 'dishes'),
  _qe2('elementary','split_digraph',13,1,'phonics', 'What vowel sound does "bone" have?', ['long /o/','short /o/','long /a/','/or/'], 'long /o/'),
  _qe2('elementary','vowel_digraph',13,1,'phonics', 'Which word has the long /e/ vowel digraph?', ['feet','fat','fit','fog'], 'feet'),
  _qe2('elementary','r_controlled',13,1,'phonics', 'Which word has the /ur/ sound?', ['bird','bad','bid','bed'], 'bird'),
  _qe2('elementary','suffix',13,1,'phonics', 'What is "hop" + "-ing"?', ['hopping','hoping','hopeing','hoppying'], 'hopping'),
  _qe2('elementary','split_digraph',13,1,'phonics', 'Adding "e" to "tub" makes ___?', ['tube','tabe','tibe','tobe'], 'tube'),
  _qe2('elementary','vowel_digraph',13,1,'phonics', 'Which word has the /oy/ sound?', ['coin','can','cold','cord'], 'coin'),

  // Set 2
  _qe2('elementary','r_controlled',13,2,'phonics', 'Which three spellings all make the /ur/ sound?', ['er, ir, ur','ar, or, ur','er, ar, or','ir, ar, ee'], 'er, ir, ur'),
  _qe2('elementary','suffix',13,2,'phonics', 'What is "jump" + "-ed"?', ['jumped','jumpped','jumpd','jumpied'], 'jumped'),
  _qe2('elementary','split_digraph',13,2,'phonics', 'Which word uses i_e?', ['bike','bik','bid','bit'], 'bike'),
  _qe2('elementary','vowel_digraph',13,2,'phonics', 'Which word has the long /oo/ sound?', ['moon','book','cook','look'], 'moon'),
  _qe2('elementary','r_controlled',13,2,'phonics', 'Which word has the /or/ sound?', ['corn','con','can','coin'], 'corn'),
  _qe2('elementary','suffix',13,2,'phonics', 'What is "run" + "-ing"?', ['running','runing','runeing','runneing'], 'running'),
  _qe2('elementary','split_digraph',13,2,'phonics', 'Which word uses a_e?', ['cake','cat','cart','call'], 'cake'),
  _qe2('elementary','vowel_digraph',13,2,'phonics', 'Which word has the /ow/ sound?', ['cloud','clod','clad','clue'], 'cloud'),
  _qe2('elementary','r_controlled',13,2,'phonics', 'Which word has the /ur/ sound spelled "ur"?', ['burn','barn','born','bran'], 'burn'),
  _qe2('elementary','suffix',13,2,'phonics', 'What is the plural of "box"?', ['boxes','boxs','boxies','boxess'], 'boxes'),

];
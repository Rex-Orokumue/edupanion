import 'package:uuid/uuid.dart';
import '../../../core/models/question.dart';

// ignore_for_file: prefer_single_quotes
const _ue1 = Uuid();

Question _qe1(String level, String tag, int week, int set, String type,
    String q, List<String> opts, String ans) =>
    Question(
      id: _ue1.v4(), level: level, skillTag: tag,
      weekNumber: week, assessmentSet: set, questionType: type,
      termNumber: 1,
      questionText: q, options: opts, correctAnswer: ans,
    );

// ─────────────────────────────────────────────────────────────────────────────
// ELEMENTARY — TERM 1  (Nursery 3 – Primary 1)
// W1  : Review CVC & Initial Sounds              → cvc_word, letter_sound
// W2  : Digraphs: sh, ch, th                     → digraph
// W3  : Digraphs: wh, ph, ng, nk                 → digraph
// W4  : Consonant Clusters (initial)             → consonant_cluster
// W5  : Consonant Clusters (final)               → consonant_cluster, ccvc_cvcc
// W6  : Long Vowel: ai, ay                       → vowel_digraph
// W7  : Long Vowel: ee, ea                       → vowel_digraph
// W8  : Long Vowel: oa, ow                       → vowel_digraph
// W9  : R-Controlled: ar, or                     → r_controlled
// W10 : R-Controlled: er, ir, ur                 → r_controlled
// W11 : Reading Sentences                        → cvc_word, digraph, vowel_digraph
// W12 : Writing Sentences                        → cvc_word, digraph, vowel_digraph
// W13 : End-of-Term Assessment                   → digraph, vowel_digraph, r_controlled, consonant_cluster
// ─────────────────────────────────────────────────────────────────────────────

final List<Question> weekQuestionsElementaryT1 = [

  // ══════════════════════════════════════════════════════════════════════════
  // WEEK 1 — Review CVC & Initial Sounds (cvc_word + letter_sound)
  // Focus: read 20 CVC words fluently, identify all 26 letter sounds
  // ══════════════════════════════════════════════════════════════════════════

  // Set 1
  _qe1('elementary','cvc_word',1,1,'phonics', 'Which is a correctly spelled CVC word?', ['cat','caat','ct','catt'], 'cat'),
  _qe1('elementary','cvc_word',1,1,'phonics', 'Which is a correctly spelled CVC word?', ['dog','dogg','dg','doog'], 'dog'),
  _qe1('elementary','letter_sound',1,1,'phonics', 'What sound does the letter "j" make?', ['/j/','/ch/','/g/','/y/'], '/j/'),
  _qe1('elementary','cvc_word',1,1,'phonics', 'Which word has the short /a/ sound?', ['map','mop','cup','hop'], 'map'),
  _qe1('elementary','letter_sound',1,1,'phonics', 'What sound does the letter "v" make?', ['/v/','/f/','/b/','/w/'], '/v/'),
  _qe1('elementary','cvc_word',1,1,'phonics', 'Which word is a CVC word?', ['sun','stone','street','sting'], 'sun'),
  _qe1('elementary','letter_sound',1,1,'phonics', 'What sound does "qu" make?', ['/kw/','/k/','/w/','/q/'], '/kw/'),
  _qe1('elementary','cvc_word',1,1,'phonics', 'Which word has the short /i/ sound?', ['bit','bat','bot','but'], 'bit'),
  _qe1('elementary','cvc_word',1,1,'phonics', 'Which word is spelled correctly?', ['hen','hn','henn','haen'], 'hen'),
  _qe1('elementary','letter_sound',1,1,'phonics', 'What sound does the letter "z" make?', ['/z/','/s/','/zh/','/ts/'], '/z/'),

  // Set 2
  _qe1('elementary','cvc_word',1,2,'phonics', 'Which word has the short /o/ sound?', ['hop','hip','hap','hup'], 'hop'),
  _qe1('elementary','letter_sound',1,2,'phonics', 'What sound does "x" make in "fox"?', ['/ks/','/z/','/s/','/sh/'], '/ks/'),
  _qe1('elementary','cvc_word',1,2,'phonics', 'Which word has the short /u/ sound?', ['bug','bag','beg','bog'], 'bug'),
  _qe1('elementary','cvc_word',1,2,'phonics', 'Which is a CVC word?', ['pin','plan','print','plant'], 'pin'),
  _qe1('elementary','letter_sound',1,2,'phonics', 'What sound does "y" make in "yes"?', ['/y/','/i/','/e/','/j/'], '/y/'),
  _qe1('elementary','cvc_word',1,2,'phonics', 'Which word has the short /e/ sound?', ['red','rod','rid','rud'], 'red'),
  _qe1('elementary','cvc_word',1,2,'phonics', 'Which word is spelled correctly?', ['mug','mg','mugg','maeg'], 'mug'),
  _qe1('elementary','letter_sound',1,2,'phonics', 'What letter does "whistle" start with?', ['w','v','m','b'], 'w'),
  _qe1('elementary','cvc_word',1,2,'phonics', 'Which is a CVC word?', ['bed','bled','bred','shed'], 'bed'),
  _qe1('elementary','cvc_word',1,2,'phonics', 'Which word does NOT have a short vowel?', ['cat','sit','cake','top'], 'cake'),

  // ══════════════════════════════════════════════════════════════════════════
  // WEEK 2 — Digraphs: sh, ch, th (digraph)
  // Focus: produce and read sh, ch, th; distinguish voiced and unvoiced /th/
  // ══════════════════════════════════════════════════════════════════════════

  // Set 1
  _qe1('elementary','digraph',2,1,'phonics', 'Which word starts with the "sh" digraph?', ['shop','sop','hop','top'], 'shop'),
  _qe1('elementary','digraph',2,1,'phonics', 'Which word starts with the "ch" digraph?', ['chip','sip','hip','tip'], 'chip'),
  _qe1('elementary','digraph',2,1,'phonics', 'What sound do the letters "th" make in "the"?', ['/th/ (voiced)','/th/ (unvoiced)','/t/','/d/'], '/th/ (voiced)'),
  _qe1('elementary','digraph',2,1,'phonics', 'Which word ends with "sh"?', ['fish','fist','list','mist'], 'fish'),
  _qe1('elementary','digraph',2,1,'phonics', 'Which word ends with "ch"?', ['much','must','gust','just'], 'much'),
  _qe1('elementary','digraph',2,1,'phonics', 'Which word has the "th" sound?', ['thin','tin','bin','sin'], 'thin'),
  _qe1('elementary','digraph',2,1,'phonics', 'How many letters make the /sh/ sound?', ['2','1','3','4'], '2'),
  _qe1('elementary','digraph',2,1,'phonics', 'Which word starts with "th"?', ['that','bat','cat','rat'], 'that'),
  _qe1('elementary','digraph',2,1,'phonics', 'Which word starts with "sh"?', ['shed','bed','red','fed'], 'shed'),
  _qe1('elementary','digraph',2,1,'phonics', 'Which word starts with "ch"?', ['chin','bin','tin','win'], 'chin'),

  // Set 2
  _qe1('elementary','digraph',2,2,'phonics', 'What sound do "sh" make together?', ['/sh/','/s/+/h/','/ch/','/zh/'], '/sh/'),
  _qe1('elementary','digraph',2,2,'phonics', 'Which word ends with "th"?', ['bath','bat','ban','bad'], 'bath'),
  _qe1('elementary','digraph',2,2,'phonics', 'Which word contains the "ch" digraph?', ['lunch','lump','lung','lust'], 'lunch'),
  _qe1('elementary','digraph',2,2,'phonics', 'Which word does NOT have "sh"?', ['ship','shop','shed','chip'], 'chip'),
  _qe1('elementary','digraph',2,2,'phonics', 'Which word does NOT have "ch"?', ['chip','chop','chin','ship'], 'ship'),
  _qe1('elementary','digraph',2,2,'phonics', 'What two letters make the /ch/ sound?', ['ch','ck','cl','cr'], 'ch'),
  _qe1('elementary','digraph',2,2,'phonics', 'Which word has the unvoiced /th/ sound?', ['think','this','the','them'], 'think'),
  _qe1('elementary','digraph',2,2,'phonics', 'Which word has the voiced /th/ sound?', ['this','thick','thank','three'], 'this'),
  _qe1('elementary','digraph',2,2,'phonics', 'Which word ends with "sh"?', ['wish','wist','with','wick'], 'wish'),
  _qe1('elementary','digraph',2,2,'phonics', 'Which word ends with "ch"?', ['rich','rip','rig','rid'], 'rich'),

  // ══════════════════════════════════════════════════════════════════════════
  // WEEK 3 — Digraphs: wh, ph, ng, nk (digraph)
  // Focus: wh- words, ph = /f/, -ng and -nk endings
  // ══════════════════════════════════════════════════════════════════════════

  // Set 1
  _qe1('elementary','digraph',3,1,'phonics', 'What sound does "wh" make in "when"?', ['/w/','/wh/','/h/','/v/'], '/w/'),
  _qe1('elementary','digraph',3,1,'phonics', 'Which word starts with "wh"?', ['when','hen','ten','den'], 'when'),
  _qe1('elementary','digraph',3,1,'phonics', 'What sound does "ph" make in "phone"?', ['/f/','/p/','/ph/','/v/'], '/f/'),
  _qe1('elementary','digraph',3,1,'phonics', 'Which word has the "ph" digraph?', ['photo','patio','ratio','ratio'], 'photo'),
  _qe1('elementary','digraph',3,1,'phonics', 'Which word ends with "ng"?', ['ring','rind','rink','rift'], 'ring'),
  _qe1('elementary','digraph',3,1,'phonics', 'Which word ends with "nk"?', ['sink','sing','sill','silk'], 'sink'),
  _qe1('elementary','digraph',3,1,'phonics', 'Which word starts with "wh"?', ['what','hat','bat','cat'], 'what'),
  _qe1('elementary','digraph',3,1,'phonics', 'Which word has the /f/ sound spelled with "ph"?', ['phone','pond','pint','pink'], 'phone'),
  _qe1('elementary','digraph',3,1,'phonics', 'Which word ends with "ng"?', ['song','son','sob','sod'], 'song'),
  _qe1('elementary','digraph',3,1,'phonics', 'Which word ends with "nk"?', ['tank','tan','tab','tap'], 'tank'),

  // Set 2
  _qe1('elementary','digraph',3,2,'phonics', 'Which word starts with "wh"?', ['where','here','there','were'], 'where'),
  _qe1('elementary','digraph',3,2,'phonics', 'Which word starts with "wh"?', ['which','itch','rich','each'], 'which'),
  _qe1('elementary','digraph',3,2,'phonics', 'Which word has "ph" making the /f/ sound?', ['graph','great','green','greet'], 'graph'),
  _qe1('elementary','digraph',3,2,'phonics', 'Which word ends with "ng"?', ['long','lot','log','lock'], 'long'),
  _qe1('elementary','digraph',3,2,'phonics', 'Which word ends with "nk"?', ['pink','pin','pig','pit'], 'pink'),
  _qe1('elementary','digraph',3,2,'phonics', 'Which word ends with "ng"?', ['bang','ban','bat','bad'], 'bang'),
  _qe1('elementary','digraph',3,2,'phonics', 'Which word ends with "nk"?', ['link','lid','lip','lit'], 'link'),
  _qe1('elementary','digraph',3,2,'phonics', 'Which word does NOT start with "wh"?', ['what','when','where','wet'], 'wet'),
  _qe1('elementary','digraph',3,2,'phonics', 'Which two letters make the /ng/ sound?', ['ng','nk','gn','kn'], 'ng'),
  _qe1('elementary','digraph',3,2,'phonics', 'Which word has the "nk" sound?', ['trunk','trust','truss','truth'], 'trunk'),

  // ══════════════════════════════════════════════════════════════════════════
  // WEEK 4 — Consonant Clusters (initial) (consonant_cluster)
  // Focus: blend sl, br, cr, dr, fr; read CCVC words
  // ══════════════════════════════════════════════════════════════════════════

  // Set 1
  _qe1('elementary','consonant_cluster',4,1,'phonics', 'Which word starts with the "sl" cluster?', ['slip','sip','lip','tip'], 'slip'),
  _qe1('elementary','consonant_cluster',4,1,'phonics', 'Which word starts with the "br" cluster?', ['brim','rim','him','dim'], 'brim'),
  _qe1('elementary','consonant_cluster',4,1,'phonics', 'Which word starts with the "cr" cluster?', ['crab','cab','tab','jab'], 'crab'),
  _qe1('elementary','consonant_cluster',4,1,'phonics', 'Which word starts with the "dr" cluster?', ['drip','rip','dip','tip'], 'drip'),
  _qe1('elementary','consonant_cluster',4,1,'phonics', 'Which word starts with the "fr" cluster?', ['frog','fog','log','dog'], 'frog'),
  _qe1('elementary','consonant_cluster',4,1,'phonics', 'How many sounds are in "slip"?', ['4','3','2','5'], '4'),
  _qe1('elementary','consonant_cluster',4,1,'phonics', 'Which word starts with "sl"?', ['slam','lam','ham','jam'], 'slam'),
  _qe1('elementary','consonant_cluster',4,1,'phonics', 'Which word starts with "br"?', ['brad','rad','bad','lad'], 'brad'),
  _qe1('elementary','consonant_cluster',4,1,'phonics', 'Which word starts with "dr"?', ['drop','top','hop','mop'], 'drop'),
  _qe1('elementary','consonant_cluster',4,1,'phonics', 'Which word starts with "fr"?', ['free','see','bee','fee'], 'free'),

  // Set 2
  _qe1('elementary','consonant_cluster',4,2,'phonics', 'Which word starts with "cr"?', ['crop','cop','top','mop'], 'crop'),
  _qe1('elementary','consonant_cluster',4,2,'phonics', 'Which word does NOT start with a consonant cluster?', ['drip','frog','slip','top'], 'top'),
  _qe1('elementary','consonant_cluster',4,2,'phonics', 'Which word starts with "sl"?', ['sled','led','bed','red'], 'sled'),
  _qe1('elementary','consonant_cluster',4,2,'phonics', 'Which word starts with "br"?', ['brick','rick','tick','kick'], 'brick'),
  _qe1('elementary','consonant_cluster',4,2,'phonics', 'Which word starts with "fr"?', ['frill','rill','bill','fill'], 'frill'),
  _qe1('elementary','consonant_cluster',4,2,'phonics', 'Which two letters begin the word "crest"?', ['cr','ce','cl','cs'], 'cr'),
  _qe1('elementary','consonant_cluster',4,2,'phonics', 'Which word starts with "dr"?', ['drum','rum','gum','bum'], 'drum'),
  _qe1('elementary','consonant_cluster',4,2,'phonics', 'Which word starts with "cr"?', ['crisp','risp','wisp','lisp'], 'crisp'),
  _qe1('elementary','consonant_cluster',4,2,'phonics', 'Which word starts with "sl"?', ['slope','lope','rope','cope'], 'slope'),
  _qe1('elementary','consonant_cluster',4,2,'phonics', 'Which word starts with "br"?', ['brave','rave','cave','gave'], 'brave'),

  // ══════════════════════════════════════════════════════════════════════════
  // WEEK 5 — Consonant Clusters (final) (consonant_cluster + ccvc_cvcc)
  // Focus: read final clusters -nd, -nt, -st, -sk; read CVCC words
  // ══════════════════════════════════════════════════════════════════════════

  // Set 1
  _qe1('elementary','consonant_cluster',5,1,'phonics', 'Which word ends with the "-nd" cluster?', ['land','lan','lap','lad'], 'land'),
  _qe1('elementary','consonant_cluster',5,1,'phonics', 'Which word ends with the "-nt" cluster?', ['tent','ten','tell','test'], 'tent'),
  _qe1('elementary','consonant_cluster',5,1,'phonics', 'Which word ends with the "-st" cluster?', ['best','bet','bed','ben'], 'best'),
  _qe1('elementary','consonant_cluster',5,1,'phonics', 'Which word ends with the "-sk" cluster?', ['desk','den','dew','del'], 'desk'),
  _qe1('elementary','ccvc_cvcc',5,1,'phonics', 'Which is a CVCC word?', ['lamp','lap','la','laps'], 'lamp'),
  _qe1('elementary','consonant_cluster',5,1,'phonics', 'Which word ends with "-nd"?', ['hand','han','has','hat'], 'hand'),
  _qe1('elementary','consonant_cluster',5,1,'phonics', 'Which word ends with "-nt"?', ['mint','min','mid','mix'], 'mint'),
  _qe1('elementary','consonant_cluster',5,1,'phonics', 'Which word ends with "-st"?', ['fist','fit','fig','fin'], 'fist'),
  _qe1('elementary','ccvc_cvcc',5,1,'phonics', 'How many sounds in the word "band"?', ['4','3','2','5'], '4'),
  _qe1('elementary','consonant_cluster',5,1,'phonics', 'Which word ends with "-sk"?', ['tusk','tug','tub','tun'], 'tusk'),

  // Set 2
  _qe1('elementary','ccvc_cvcc',5,2,'phonics', 'Which is a CVCC word?', ['bend','be','bed','ben'], 'bend'),
  _qe1('elementary','consonant_cluster',5,2,'phonics', 'Which word ends with "-nd"?', ['wind','win','wid','wit'], 'wind'),
  _qe1('elementary','consonant_cluster',5,2,'phonics', 'Which word ends with "-nt"?', ['hunt','hun','hub','hug'], 'hunt'),
  _qe1('elementary','consonant_cluster',5,2,'phonics', 'Which word ends with "-st"?', ['dust','dug','dub','dun'], 'dust'),
  _qe1('elementary','ccvc_cvcc',5,2,'phonics', 'Which word is NOT a CVCC word?', ['belt','bolt','cat','rust'], 'cat'),
  _qe1('elementary','consonant_cluster',5,2,'phonics', 'Which word ends with "-nd"?', ['pond','pop','pot','pod'], 'pond'),
  _qe1('elementary','consonant_cluster',5,2,'phonics', 'Which word ends with "-st"?', ['list','lip','lid','lit'], 'list'),
  _qe1('elementary','consonant_cluster',5,2,'phonics', 'Which word ends with "-nt"?', ['dent','den','dew','del'], 'dent'),
  _qe1('elementary','ccvc_cvcc',5,2,'phonics', 'Which is a CVCC word?', ['melt','met','men','mel'], 'melt'),
  _qe1('elementary','consonant_cluster',5,2,'phonics', 'Which word ends with "-sk"?', ['risk','rip','rig','rid'], 'risk'),

  // ══════════════════════════════════════════════════════════════════════════
  // WEEK 6 — Long Vowel: ai, ay (vowel_digraph)
  // Focus: recognise ai and ay as long /a/ spellings; sort ai and ay words
  // ══════════════════════════════════════════════════════════════════════════

  // Set 1
  _qe1('elementary','vowel_digraph',6,1,'phonics', 'What sound do "ai" make together?', ['long /a/','short /a/','long /i/','/ai/'], 'long /a/'),
  _qe1('elementary','vowel_digraph',6,1,'phonics', 'Which word has the "ai" spelling for long /a/?', ['rain','ran','run','ruin'], 'rain'),
  _qe1('elementary','vowel_digraph',6,1,'phonics', 'Which word has the "ay" spelling for long /a/?', ['play','pal','pill','pull'], 'play'),
  _qe1('elementary','vowel_digraph',6,1,'phonics', 'Which word uses "ai" to spell long /a/?', ['train','tan','tin','ton'], 'train'),
  _qe1('elementary','vowel_digraph',6,1,'phonics', 'Which word uses "ay" to spell long /a/?', ['day','did','dig','dog'], 'day'),
  _qe1('elementary','vowel_digraph',6,1,'phonics', 'Which word has the long /a/ sound?', ['rain','ran','rin','run'], 'rain'),
  _qe1('elementary','vowel_digraph',6,1,'phonics', 'Where does "ay" usually appear in a word?', ['at the end','at the beginning','in the middle','anywhere'], 'at the end'),
  _qe1('elementary','vowel_digraph',6,1,'phonics', 'Which word uses "ai"?', ['sail','sal','sill','sell'], 'sail'),
  _qe1('elementary','vowel_digraph',6,1,'phonics', 'Which word uses "ay"?', ['stay','sat','sit','set'], 'stay'),
  _qe1('elementary','vowel_digraph',6,1,'phonics', 'Which word does NOT have the long /a/ sound?', ['rain','day','play','ran'], 'ran'),

  // Set 2
  _qe1('elementary','vowel_digraph',6,2,'phonics', 'Which word has "ai" making long /a/?', ['tail','till','toll','tall'], 'tail'),
  _qe1('elementary','vowel_digraph',6,2,'phonics', 'Which word has "ay" making long /a/?', ['tray','try','trip','trap'], 'tray'),
  _qe1('elementary','vowel_digraph',6,2,'phonics', 'Which word uses "ai"?', ['wait','wit','wet','wot'], 'wait'),
  _qe1('elementary','vowel_digraph',6,2,'phonics', 'Which word uses "ay"?', ['clay','clap','clip','clop'], 'clay'),
  _qe1('elementary','vowel_digraph',6,2,'phonics', 'Which word has the long /a/ sound?', ['paid','pad','pod','pud'], 'paid'),
  _qe1('elementary','vowel_digraph',6,2,'phonics', 'Which pair both use "ai"?', ['rain / tail','rain / play','day / tail','play / stay'], 'rain / tail'),
  _qe1('elementary','vowel_digraph',6,2,'phonics', 'Which pair both use "ay"?', ['play / stay','play / rain','stay / tail','rain / wait'], 'play / stay'),
  _qe1('elementary','vowel_digraph',6,2,'phonics', 'Which word uses "ai"?', ['chain','chin','chan','chun'], 'chain'),
  _qe1('elementary','vowel_digraph',6,2,'phonics', 'Which word uses "ay"?', ['spray','spry','spree','sprag'], 'spray'),
  _qe1('elementary','vowel_digraph',6,2,'phonics', 'Which word does NOT have the long /a/ sound?', ['sail','day','tray','sat'], 'sat'),

  // ══════════════════════════════════════════════════════════════════════════
  // WEEK 7 — Long Vowel: ee, ea (vowel_digraph)
  // Focus: recognise ee and ea as long /e/ spellings
  // ══════════════════════════════════════════════════════════════════════════

  // Set 1
  _qe1('elementary','vowel_digraph',7,1,'phonics', 'What sound do "ee" make together?', ['long /e/','short /e/','long /i/','/ee/'], 'long /e/'),
  _qe1('elementary','vowel_digraph',7,1,'phonics', 'Which word has the "ee" spelling for long /e/?', ['feet','fat','fit','fog'], 'feet'),
  _qe1('elementary','vowel_digraph',7,1,'phonics', 'Which word has the "ea" spelling for long /e/?', ['leaf','lad','lid','log'], 'leaf'),
  _qe1('elementary','vowel_digraph',7,1,'phonics', 'Which word uses "ee"?', ['meet','mat','mit','mot'], 'meet'),
  _qe1('elementary','vowel_digraph',7,1,'phonics', 'Which word uses "ea"?', ['beach','bach','bich','boch'], 'beach'),
  _qe1('elementary','vowel_digraph',7,1,'phonics', 'Which word has the long /e/ sound?', ['tree','tray','try','trap'], 'tree'),
  _qe1('elementary','vowel_digraph',7,1,'phonics', 'Which word uses "ee"?', ['seed','sad','sid','sod'], 'seed'),
  _qe1('elementary','vowel_digraph',7,1,'phonics', 'Which word uses "ea"?', ['seat','sat','sit','sot'], 'seat'),
  _qe1('elementary','vowel_digraph',7,1,'phonics', 'Which word does NOT have the long /e/ sound?', ['feet','leaf','meet','fed'], 'fed'),
  _qe1('elementary','vowel_digraph',7,1,'phonics', 'Which pair both use "ee"?', ['tree / feet','tree / leaf','feet / beach','meet / sea'], 'tree / feet'),

  // Set 2
  _qe1('elementary','vowel_digraph',7,2,'phonics', 'Which word uses "ea"?', ['read','red','rod','rid'], 'read'),
  _qe1('elementary','vowel_digraph',7,2,'phonics', 'Which word uses "ee"?', ['sleep','slap','slip','slop'], 'sleep'),
  _qe1('elementary','vowel_digraph',7,2,'phonics', 'Which word uses "ea"?', ['dream','dram','drum','drim'], 'dream'),
  _qe1('elementary','vowel_digraph',7,2,'phonics', 'Which word uses "ee"?', ['green','grin','gran','grun'], 'green'),
  _qe1('elementary','vowel_digraph',7,2,'phonics', 'Which word has the long /e/ sound?', ['heat','hat','hit','hot'], 'heat'),
  _qe1('elementary','vowel_digraph',7,2,'phonics', 'Which pair both use "ea"?', ['leaf / beach','leaf / feet','beach / tree','sea / tree'], 'leaf / beach'),
  _qe1('elementary','vowel_digraph',7,2,'phonics', 'Which word uses "ee"?', ['cheek','check','chuck','chick'], 'cheek'),
  _qe1('elementary','vowel_digraph',7,2,'phonics', 'Which word uses "ea"?', ['cream','cram','trim','drum'], 'cream'),
  _qe1('elementary','vowel_digraph',7,2,'phonics', 'Which word does NOT have the long /e/ sound?', ['deep','team','bee','bed'], 'bed'),
  _qe1('elementary','vowel_digraph',7,2,'phonics', 'Which word uses "ee"?', ['wheel','well','wall','will'], 'wheel'),

  // ══════════════════════════════════════════════════════════════════════════
  // WEEK 8 — Long Vowel: oa, ow (vowel_digraph)
  // Focus: recognise oa and ow as long /o/; distinguish ow = /o/ vs /ow/
  // ══════════════════════════════════════════════════════════════════════════

  // Set 1
  _qe1('elementary','vowel_digraph',8,1,'phonics', 'What sound does "oa" make?', ['long /o/','short /o/','long /a/','/oa/'], 'long /o/'),
  _qe1('elementary','vowel_digraph',8,1,'phonics', 'Which word uses "oa" for long /o/?', ['boat','bat','bit','bot'], 'boat'),
  _qe1('elementary','vowel_digraph',8,1,'phonics', 'Which word uses "ow" for long /o/?', ['snow','snot','snap','snag'], 'snow'),
  _qe1('elementary','vowel_digraph',8,1,'phonics', 'Which word uses "oa"?', ['coat','cat','cut','cot'], 'coat'),
  _qe1('elementary','vowel_digraph',8,1,'phonics', 'Which word uses "ow" to make long /o/?', ['grow','grip','grab','grim'], 'grow'),
  _qe1('elementary','vowel_digraph',8,1,'phonics', 'In which word does "ow" say /ow/ (not /o/)?', ['cow','low','row','show'], 'cow'),
  _qe1('elementary','vowel_digraph',8,1,'phonics', 'Which word uses "oa"?', ['road','rod','red','rid'], 'road'),
  _qe1('elementary','vowel_digraph',8,1,'phonics', 'In which word does "ow" say long /o/?', ['blow','bow','bow','brow'], 'blow'),
  _qe1('elementary','vowel_digraph',8,1,'phonics', 'Which word has the long /o/ sound?', ['toad','top','tip','tap'], 'toad'),
  _qe1('elementary','vowel_digraph',8,1,'phonics', 'Which word uses "oa"?', ['toast','tost','test','tust'], 'toast'),

  // Set 2
  _qe1('elementary','vowel_digraph',8,2,'phonics', 'Which word uses "ow" for long /o/?', ['flow','flaw','flew','flex'], 'flow'),
  _qe1('elementary','vowel_digraph',8,2,'phonics', 'Which word uses "oa"?', ['groan','gran','grin','grun'], 'groan'),
  _qe1('elementary','vowel_digraph',8,2,'phonics', 'In "crow", what sound does "ow" make?', ['long /o/','long /a/','long /e/','/ow/'], 'long /o/'),
  _qe1('elementary','vowel_digraph',8,2,'phonics', 'In "town", what sound does "ow" make?', ['/ow/','/o/','long /a/','long /e/'], '/ow/'),
  _qe1('elementary','vowel_digraph',8,2,'phonics', 'Which word uses "oa"?', ['float','flat','flit','flot'], 'float'),
  _qe1('elementary','vowel_digraph',8,2,'phonics', 'Which word uses "ow" to say long /o/?', ['throw','threw','three','thaw'], 'throw'),
  _qe1('elementary','vowel_digraph',8,2,'phonics', 'Which pair both use "oa"?', ['boat / coat','boat / snow','coat / grow','snow / flow'], 'boat / coat'),
  _qe1('elementary','vowel_digraph',8,2,'phonics', 'Which word does NOT have the long /o/ sound?', ['road','snow','grow','not'], 'not'),
  _qe1('elementary','vowel_digraph',8,2,'phonics', 'Which word uses "oa"?', ['soak','sock','sick','seek'], 'soak'),
  _qe1('elementary','vowel_digraph',8,2,'phonics', 'Which word uses "ow" to say /ow/ (not /o/)?', ['crowd','crow','cro','crowed'], 'crowd'),

  // ══════════════════════════════════════════════════════════════════════════
  // WEEK 9 — R-Controlled: ar, or (r_controlled)
  // Focus: produce /ar/ and /or/; read farm, car, corn, born
  // ══════════════════════════════════════════════════════════════════════════

  // Set 1
  _qe1('elementary','r_controlled',9,1,'phonics', 'What sound do "ar" make together?', ['/ar/','short /a/ + /r/','/or/','/air/'], '/ar/'),
  _qe1('elementary','r_controlled',9,1,'phonics', 'Which word has the "ar" sound?', ['farm','foam','fam','fame'], 'farm'),
  _qe1('elementary','r_controlled',9,1,'phonics', 'Which word has the "or" sound?', ['corn','con','can','coin'], 'corn'),
  _qe1('elementary','r_controlled',9,1,'phonics', 'Which word uses "ar"?', ['car','can','cap','cat'], 'car'),
  _qe1('elementary','r_controlled',9,1,'phonics', 'Which word uses "or"?', ['born','ban','bin','bon'], 'born'),
  _qe1('elementary','r_controlled',9,1,'phonics', 'Which word has the /ar/ sound?', ['star','stay','sting','step'], 'star'),
  _qe1('elementary','r_controlled',9,1,'phonics', 'Which word has the /or/ sound?', ['fort','fat','fit','fan'], 'fort'),
  _qe1('elementary','r_controlled',9,1,'phonics', 'Which word uses "ar"?', ['dark','dank','dank','dame'], 'dark'),
  _qe1('elementary','r_controlled',9,1,'phonics', 'Which word uses "or"?', ['horn','hon','hen','him'], 'horn'),
  _qe1('elementary','r_controlled',9,1,'phonics', 'Which word does NOT have the /ar/ sound?', ['car','farm','star','can'], 'can'),

  // Set 2
  _qe1('elementary','r_controlled',9,2,'phonics', 'Which word uses "ar"?', ['park','pack','pick','peck'], 'park'),
  _qe1('elementary','r_controlled',9,2,'phonics', 'Which word uses "or"?', ['port','pot','pat','pit'], 'port'),
  _qe1('elementary','r_controlled',9,2,'phonics', 'Which word has the /ar/ sound?', ['barn','ban','bin','bun'], 'barn'),
  _qe1('elementary','r_controlled',9,2,'phonics', 'Which word has the /or/ sound?', ['sort','sat','sit','set'], 'sort'),
  _qe1('elementary','r_controlled',9,2,'phonics', 'Which word uses "ar"?', ['cart','cat','cut','cot'], 'cart'),
  _qe1('elementary','r_controlled',9,2,'phonics', 'Which word uses "or"?', ['storm','stem','stam','stum'], 'storm'),
  _qe1('elementary','r_controlled',9,2,'phonics', 'Which pair both have the /ar/ sound?', ['car / star','car / corn','star / fort','born / park'], 'car / star'),
  _qe1('elementary','r_controlled',9,2,'phonics', 'Which pair both have the /or/ sound?', ['corn / born','corn / car','born / star','farm / barn'], 'corn / born'),
  _qe1('elementary','r_controlled',9,2,'phonics', 'Which word uses "ar"?', ['sharp','ship','shop','shap'], 'sharp'),
  _qe1('elementary','r_controlled',9,2,'phonics', 'Which word does NOT have the /or/ sound?', ['corn','fort','horn','can'], 'can'),

  // ══════════════════════════════════════════════════════════════════════════
  // WEEK 10 — R-Controlled: er, ir, ur (r_controlled)
  // Focus: understand er, ir, ur all say /ur/; sort by spelling pattern
  // ══════════════════════════════════════════════════════════════════════════

  // Set 1
  _qe1('elementary','r_controlled',10,1,'phonics', 'What sound do "er", "ir", and "ur" all make?', ['/ur/','/ar/','/or/','/air/'], '/ur/'),
  _qe1('elementary','r_controlled',10,1,'phonics', 'Which word uses "er" for the /ur/ sound?', ['her','hot','hit','hat'], 'her'),
  _qe1('elementary','r_controlled',10,1,'phonics', 'Which word uses "ir" for the /ur/ sound?', ['bird','bad','bid','bed'], 'bird'),
  _qe1('elementary','r_controlled',10,1,'phonics', 'Which word uses "ur" for the /ur/ sound?', ['fur','fat','fit','fog'], 'fur'),
  _qe1('elementary','r_controlled',10,1,'phonics', 'Which word has the /ur/ sound spelled with "er"?', ['fern','fan','fun','fin'], 'fern'),
  _qe1('elementary','r_controlled',10,1,'phonics', 'Which word has the /ur/ sound spelled with "ir"?', ['girl','gal','gill','gel'], 'girl'),
  _qe1('elementary','r_controlled',10,1,'phonics', 'Which word has the /ur/ sound spelled with "ur"?', ['burn','ban','bin','bun'], 'burn'),
  _qe1('elementary','r_controlled',10,1,'phonics', 'Which word uses "er"?', ['term','tap','tip','top'], 'term'),
  _qe1('elementary','r_controlled',10,1,'phonics', 'Which word uses "ir"?', ['stir','star','stem','step'], 'stir'),
  _qe1('elementary','r_controlled',10,1,'phonics', 'Which word uses "ur"?', ['hurt','hat','hit','hot'], 'hurt'),

  // Set 2
  _qe1('elementary','r_controlled',10,2,'phonics', 'Which word uses "er" for /ur/?', ['perk','park','pack','pick'], 'perk'),
  _qe1('elementary','r_controlled',10,2,'phonics', 'Which word uses "ir" for /ur/?', ['shirt','short','shoot','sheet'], 'shirt'),
  _qe1('elementary','r_controlled',10,2,'phonics', 'Which word uses "ur" for /ur/?', ['curl','call','cool','coal'], 'curl'),
  _qe1('elementary','r_controlled',10,2,'phonics', 'Which three spellings all make the /ur/ sound?', ['er, ir, ur','ar, or, ur','er, ar, or','ir, ar, ee'], 'er, ir, ur'),
  _qe1('elementary','r_controlled',10,2,'phonics', 'Which word uses "er"?', ['verb','vat','vet','vim'], 'verb'),
  _qe1('elementary','r_controlled',10,2,'phonics', 'Which word uses "ir"?', ['first','fast','fist','fest'], 'first'),
  _qe1('elementary','r_controlled',10,2,'phonics', 'Which word uses "ur"?', ['purse','parse','pause','phase'], 'purse'),
  _qe1('elementary','r_controlled',10,2,'phonics', 'Which word does NOT have the /ur/ sound?', ['bird','fern','burn','barn'], 'barn'),
  _qe1('elementary','r_controlled',10,2,'phonics', 'Which word uses "ir"?', ['skirt','skirt','start','sport'], 'skirt'),
  _qe1('elementary','r_controlled',10,2,'phonics', 'Which word uses "ur"?', ['church','charm','chart','cheap'], 'church'),

  // ══════════════════════════════════════════════════════════════════════════
  // WEEK 11 — Reading Sentences (cvc_word + digraph + vowel_digraph)
  // Focus: read 6-word sentences with taught patterns; answer who/what/where
  // ══════════════════════════════════════════════════════════════════════════

  // Set 1
  _qe1('elementary','cvc_word',11,1,'phonics', 'Which word completes: "The dog sat on the ___"?', ['mat','rain','feet','bird'], 'mat'),
  _qe1('elementary','digraph',11,1,'phonics', 'Which word completes: "She can ___ fast"?', ['run','run','ship','phone'], 'run'),
  _qe1('elementary','vowel_digraph',11,1,'phonics', 'Which word has the long /e/ sound in the sentence: "We eat at the beach"?', ['eat','we','at','the'], 'eat'),
  _qe1('elementary','cvc_word',11,1,'phonics', 'What is the dog doing? "The dog can run and hop."', ['running and hopping','eating','sleeping','reading'], 'running and hopping'),
  _qe1('elementary','digraph',11,1,'phonics', 'Which word in "The ship is on the sea" has a digraph?', ['ship','the','is','on'], 'ship'),
  _qe1('elementary','vowel_digraph',11,1,'phonics', 'Which word has "ai" in: "The rain fell on the train"?', ['rain','the','fell','on'], 'rain'),
  _qe1('elementary','cvc_word',11,1,'phonics', 'Where is the cat? "The cat sat in the box."', ['in the box','on the mat','up the tree','by the door'], 'in the box'),
  _qe1('elementary','digraph',11,1,'phonics', 'Which word has "ch" in: "The child has a chip"?', ['child','the','has','a'], 'child'),
  _qe1('elementary','vowel_digraph',11,1,'phonics', 'Which word has "ee" in: "I see three green trees"?', ['three','I','see','green'], 'three'),
  _qe1('elementary','cvc_word',11,1,'phonics', 'Which word in "Tom has a red hat" is a CVC word?', ['hat','Tom','has','red'], 'hat'),

  // Set 2
  _qe1('elementary','vowel_digraph',11,2,'phonics', 'Which word has "oa" in: "The toad sat on the road"?', ['toad','the','sat','on'], 'toad'),
  _qe1('elementary','r_controlled',11,2,'phonics', 'Which word has "ar" in: "The car is in the barn"?', ['car','the','is','in'], 'car'),
  _qe1('elementary','digraph',11,2,'phonics', 'Which word has "wh" in: "Where did the whale go"?', ['Where','did','the','go'], 'Where'),
  _qe1('elementary','cvc_word',11,2,'phonics', 'Who has the pen? "Ben has the big red pen."', ['Ben','the pen','red','big'], 'Ben'),
  _qe1('elementary','r_controlled',11,2,'phonics', 'Which word has "or" in: "The storm hit the corn farm"?', ['storm','the','hit','farm'], 'storm'),
  _qe1('elementary','vowel_digraph',11,2,'phonics', 'Which word has "ay" in: "Let us play in the bay today"?', ['play','Let','us','in'], 'play'),
  _qe1('elementary','digraph',11,2,'phonics', 'Which word has "th" in: "That bird sang all day"?', ['That','bird','sang','all'], 'That'),
  _qe1('elementary','r_controlled',11,2,'phonics', 'Which word has "er" in: "The fern grows near the river"?', ['fern','The','grows','near'], 'fern'),
  _qe1('elementary','cvc_word',11,2,'phonics', 'What did Jill get? "Jill got a big red bag."', ['a big red bag','a pen','a hat','a book'], 'a big red bag'),
  _qe1('elementary','vowel_digraph',11,2,'phonics', 'Which word has "ee" in: "The bee flew past the tree"?', ['bee','The','flew','past'], 'bee'),

  // ══════════════════════════════════════════════════════════════════════════
  // WEEK 12 — Writing Sentences (cvc_word + digraph + vowel_digraph)
  // Focus: write 3 sentences independently; capitals and full stops
  // ══════════════════════════════════════════════════════════════════════════

  // Set 1
  _qe1('elementary','cvc_word',12,1,'phonics', 'Which sentence is written correctly?', ['The cat sat on the mat.','the cat sat on the mat.','The cat sat on the mat','the Cat sat on the Mat.'], 'The cat sat on the mat.'),
  _qe1('elementary','digraph',12,1,'phonics', 'Which word is spelled correctly?', ['shop','shoop','shap','shhop'], 'shop'),
  _qe1('elementary','vowel_digraph',12,1,'phonics', 'Which word is spelled correctly?', ['rain','rayn','rane','rein'], 'rain'),
  _qe1('elementary','cvc_word',12,1,'phonics', 'A sentence must start with a ___?', ['capital letter','full stop','comma','small letter'], 'capital letter'),
  _qe1('elementary','digraph',12,1,'phonics', 'Which word is spelled correctly?', ['feet','feat','fete','feeet'], 'feet'),
  _qe1('elementary','vowel_digraph',12,1,'phonics', 'Which word is spelled correctly?', ['boat','bote','bowt','boet'], 'boat'),
  _qe1('elementary','cvc_word',12,1,'phonics', 'A sentence must end with a ___?', ['full stop','capital letter','comma','question mark (usually)'], 'full stop'),
  _qe1('elementary','digraph',12,1,'phonics', 'Which word is spelled correctly?', ['phone','fone','phon','phione'], 'phone'),
  _qe1('elementary','vowel_digraph',12,1,'phonics', 'Which word is spelled correctly?', ['trail','trayl','trale','trael'], 'trail'),
  _qe1('elementary','cvc_word',12,1,'phonics', 'Which sentence has a mistake?', ['the dog ran fast.','The dog ran fast.','A dog is big.','I can run.'], 'the dog ran fast.'),

  // Set 2
  _qe1('elementary','vowel_digraph',12,2,'phonics', 'Which word is spelled correctly?', ['sleep','sleap','slepe','sleepe'], 'sleep'),
  _qe1('elementary','r_controlled',12,2,'phonics', 'Which word is spelled correctly?', ['bird','berd','burd','byrd'], 'bird'),
  _qe1('elementary','digraph',12,2,'phonics', 'Which sentence uses a digraph word correctly?', ['The ship is big.','The shipp is big.','The shipe is big.','The shiip is big.'], 'The ship is big.'),
  _qe1('elementary','cvc_word',12,2,'phonics', 'Which is a complete sentence?', ['The red hen.','Ran fast.','The hen sat on the egg.','Big and fat.'], 'The hen sat on the egg.'),
  _qe1('elementary','r_controlled',12,2,'phonics', 'Which word is spelled correctly?', ['farm','ferm','furm','farrm'], 'farm'),
  _qe1('elementary','vowel_digraph',12,2,'phonics', 'Which word is spelled correctly?', ['play','plai','plaay','playe'], 'play'),
  _qe1('elementary','digraph',12,2,'phonics', 'Which word is spelled correctly?', ['think','thinck','thinnk','thinkk'], 'think'),
  _qe1('elementary','r_controlled',12,2,'phonics', 'Which word is spelled correctly?', ['corn','curn','corne','coorn'], 'corn'),
  _qe1('elementary','cvc_word',12,2,'phonics', 'Which sentence is written correctly?', ['I can see the sun.','i can see the sun.','I can see the Sun.','I can see the sun'], 'I can see the sun.'),
  _qe1('elementary','vowel_digraph',12,2,'phonics', 'Which word is spelled correctly?', ['road','rowd','roed','road'], 'road'),

  // ══════════════════════════════════════════════════════════════════════════
  // WEEK 13 — End-of-Term Assessment
  // Focus: digraph, vowel_digraph, r_controlled, consonant_cluster
  // ══════════════════════════════════════════════════════════════════════════

  // Set 1
  _qe1('elementary','digraph',13,1,'phonics', 'Which word has a digraph?', ['ship','sip','sit','six'], 'ship'),
  _qe1('elementary','vowel_digraph',13,1,'phonics', 'Which word has the long /a/ sound?', ['rain','ran','rin','run'], 'rain'),
  _qe1('elementary','r_controlled',13,1,'phonics', 'Which word has the /ar/ sound?', ['farm','fan','fin','fun'], 'farm'),
  _qe1('elementary','consonant_cluster',13,1,'phonics', 'Which word starts with a consonant cluster?', ['frog','fog','log','dog'], 'frog'),
  _qe1('elementary','vowel_digraph',13,1,'phonics', 'Which word has the long /e/ sound?', ['feet','fat','fit','fog'], 'feet'),
  _qe1('elementary','r_controlled',13,1,'phonics', 'Which word has the /ur/ sound?', ['bird','bad','bid','bed'], 'bird'),
  _qe1('elementary','digraph',13,1,'phonics', 'What sound does "ph" make?', ['/f/','/p/','/ph/','/v/'], '/f/'),
  _qe1('elementary','consonant_cluster',13,1,'phonics', 'Which word ends with a consonant cluster?', ['land','lan','lap','lad'], 'land'),
  _qe1('elementary','vowel_digraph',13,1,'phonics', 'Which word has the long /o/ sound?', ['boat','bot','bat','bit'], 'boat'),
  _qe1('elementary','r_controlled',13,1,'phonics', 'Which word has the /or/ sound?', ['corn','con','can','coin'], 'corn'),

  // Set 2
  _qe1('elementary','digraph',13,2,'phonics', 'Which word has the "ng" digraph?', ['ring','rip','rid','rim'], 'ring'),
  _qe1('elementary','consonant_cluster',13,2,'phonics', 'Which word starts with "br"?', ['brick','rick','tick','kick'], 'brick'),
  _qe1('elementary','vowel_digraph',13,2,'phonics', 'Which word uses "ay" for long /a/?', ['play','pal','pill','pull'], 'play'),
  _qe1('elementary','r_controlled',13,2,'phonics', 'Which word has the /ur/ sound spelled "ur"?', ['burn','barn','born','bran'], 'burn'),
  _qe1('elementary','digraph',13,2,'phonics', 'Which word starts with "wh"?', ['when','hen','ten','den'], 'when'),
  _qe1('elementary','consonant_cluster',13,2,'phonics', 'Which word ends with "-st"?', ['best','bet','bed','ben'], 'best'),
  _qe1('elementary','vowel_digraph',13,2,'phonics', 'Which word uses "ee" for long /e/?', ['tree','try','trap','trip'], 'tree'),
  _qe1('elementary','r_controlled',13,2,'phonics', 'Which word has the /ar/ sound?', ['car','can','cap','cat'], 'car'),
  _qe1('elementary','digraph',13,2,'phonics', 'Which word has the "ch" digraph?', ['chip','sip','hip','tip'], 'chip'),
  _qe1('elementary','consonant_cluster',13,2,'phonics', 'Which word starts with "sl"?', ['slip','sip','lip','tip'], 'slip'),

];
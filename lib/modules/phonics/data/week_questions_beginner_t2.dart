import 'package:uuid/uuid.dart';
import '../../../core/models/question.dart';

// ignore_for_file: prefer_single_quotes
const _u2 = Uuid();

Question _q2(String level, String tag, int week, int set, String type,
    String q, List<String> opts, String ans) =>
    Question(
      id: _u2.v4(), level: level, skillTag: tag,
      weekNumber: week, assessmentSet: set, questionType: type,
      termNumber: 2,
      questionText: q, options: opts, correctAnswer: ans,
    );

// ─────────────────────────────────────────────────────────────────────────────
// BEGINNER — TERM 2  (Nursery 1–2)
// W1  : Review Term 1 Sounds            → letter_sound
// W2  : New Sounds l, ll, ss            → letter_sound
// W3  : New Sounds j, v, w, x           → letter_sound
// W4  : New Sounds y, z, zz, qu         → letter_sound
// W5  : CVC Blending -at, -an           → cvc_word, oral_blending
// W6  : CVC Blending -it, -in           → cvc_word
// W7  : CVC Blending -og, -op           → cvc_word
// W8  : CVC Blending -ug, -un           → cvc_word
// W9  : Short Vowel Sort                → short_vowel
// W10 : Short Vowels Reading Sentences  → short_vowel, cvc_word
// W11 : Rhyme with CVC Words            → rhyme, cvc_word
// W12 : CVC Fluency & Writing           → cvc_word, short_vowel
// W13 : End-of-Term Assessment          → cvc_word, letter_sound, short_vowel
// ─────────────────────────────────────────────────────────────────────────────

final List<Question> weekQuestionsBeginnerT2 = [

  // WEEK 1 — Review Term 1 Sounds (letter_sound)
  _q2('beginner','letter_sound',1,1,'phonics', 'Which word starts with /s/?', ['sun','gun','fun','bun'], 'sun'),
  _q2('beginner','letter_sound',1,1,'phonics', 'Which word starts with /a/?', ['ant','bat','cup','dot'], 'ant'),
  _q2('beginner','letter_sound',1,1,'phonics', 'Which word starts with /t/?', ['top','hop','mop','cop'], 'top'),
  _q2('beginner','letter_sound',1,1,'phonics', 'Which word starts with /p/?', ['pin','bin','fin','tin'], 'pin'),
  _q2('beginner','letter_sound',1,1,'phonics', 'Which word starts with /n/?', ['net','bet','set','get'], 'net'),
  _q2('beginner','letter_sound',1,1,'phonics', 'Which word starts with /m/?', ['mug','bug','dug','hug'], 'mug'),
  _q2('beginner','letter_sound',1,1,'phonics', 'Which word starts with /d/?', ['dog','log','fog','hog'], 'dog'),
  _q2('beginner','letter_sound',1,1,'phonics', 'Which word starts with /g/?', ['got','lot','hot','not'], 'got'),
  _q2('beginner','letter_sound',1,1,'phonics', 'Which word starts with /o/?', ['on','in','an','un'], 'on'),
  _q2('beginner','letter_sound',1,1,'phonics', 'Which word starts with /k/?', ['kit','bit','hit','sit'], 'kit'),

  _q2('beginner','letter_sound',1,2,'phonics', 'Which word starts with /c/?', ['cat','bat','rat','hat'], 'cat'),
  _q2('beginner','letter_sound',1,2,'phonics', 'Which word starts with /e/?', ['egg','apple','oak','ink'], 'egg'),
  _q2('beginner','letter_sound',1,2,'phonics', 'Which word starts with /u/?', ['up','in','on','an'], 'up'),
  _q2('beginner','letter_sound',1,2,'phonics', 'Which word starts with /r/?', ['run','bun','fun','sun'], 'run'),
  _q2('beginner','letter_sound',1,2,'phonics', 'Which word starts with /h/?', ['hat','bat','cat','rat'], 'hat'),
  _q2('beginner','letter_sound',1,2,'phonics', 'Which word starts with /b/?', ['bat','cat','rat','hat'], 'bat'),
  _q2('beginner','letter_sound',1,2,'phonics', 'Which word starts with /f/?', ['fan','ban','can','man'], 'fan'),
  _q2('beginner','letter_sound',1,2,'phonics', 'What sound does "i" make in "ink"?', ['/i/','/e/','/a/','/o/'], '/i/'),
  _q2('beginner','letter_sound',1,2,'phonics', 'What letter does "sock" start with?', ['s','z','c','g'], 's'),
  _q2('beginner','letter_sound',1,2,'phonics', 'Which word does NOT start with /t/?', ['tap','tin','top','cup'], 'cup'),

  // WEEK 2 — New Sounds l, ll, ss (letter_sound)
  _q2('beginner','letter_sound',2,1,'phonics', 'Which word starts with /l/?', ['log','dog','fog','hog'], 'log'),
  _q2('beginner','letter_sound',2,1,'phonics', 'What sound does "l" make?', ['/l/','/r/','/n/','/w/'], '/l/'),
  _q2('beginner','letter_sound',2,1,'phonics', 'Which word starts with /l/?', ['lip','dip','sip','tip'], 'lip'),
  _q2('beginner','letter_sound',2,1,'phonics', 'What letter does "lamp" start with?', ['l','r','n','m'], 'l'),
  _q2('beginner','letter_sound',2,1,'phonics', 'Which word ends with "ll"?', ['bell','belt','help','self'], 'bell'),
  _q2('beginner','letter_sound',2,1,'phonics', 'Which word ends with "ll"?', ['ball','bolt','bend','bulk'], 'ball'),
  _q2('beginner','letter_sound',2,1,'phonics', 'Which word ends with "ss"?', ['miss','mist','mint','milk'], 'miss'),
  _q2('beginner','letter_sound',2,1,'phonics', 'Which word ends with "ss"?', ['hiss','hint','hill','his'], 'hiss'),
  _q2('beginner','letter_sound',2,1,'phonics', 'Which word starts with /l/?', ['lid','bid','did','rid'], 'lid'),
  _q2('beginner','letter_sound',2,1,'phonics', 'What letter does "lion" start with?', ['l','r','n','m'], 'l'),

  _q2('beginner','letter_sound',2,2,'phonics', 'Which word ends with "ll"?', ['fill','film','fist','fit'], 'fill'),
  _q2('beginner','letter_sound',2,2,'phonics', 'Which word ends with "ll"?', ['tell','tent','test','ten'], 'tell'),
  _q2('beginner','letter_sound',2,2,'phonics', 'Which word ends with "ss"?', ['moss','most','mop','mob'], 'moss'),
  _q2('beginner','letter_sound',2,2,'phonics', 'Which word ends with "ss"?', ['fuss','fun','fog','fan'], 'fuss'),
  _q2('beginner','letter_sound',2,2,'phonics', 'Which word starts with /l/?', ['lap','cap','map','nap'], 'lap'),
  _q2('beginner','letter_sound',2,2,'phonics', 'Which word starts with /l/?', ['lot','dot','hot','not'], 'lot'),
  _q2('beginner','letter_sound',2,2,'phonics', 'What sound do the letters "ll" make?', ['/l/','/ll/','/r/','/n/'], '/l/'),
  _q2('beginner','letter_sound',2,2,'phonics', 'What sound do the letters "ss" make?', ['/s/','/ss/','/z/','/sh/'], '/s/'),
  _q2('beginner','letter_sound',2,2,'phonics', 'Which word does NOT start with /l/?', ['log','lid','lap','bat'], 'bat'),
  _q2('beginner','letter_sound',2,2,'phonics', 'What letter does "lemon" start with?', ['l','r','n','m'], 'l'),

  // WEEK 3 — New Sounds j, v, w, x (letter_sound)
  _q2('beginner','letter_sound',3,1,'phonics', 'Which word starts with /j/?', ['jam','ham','yam','ram'], 'jam'),
  _q2('beginner','letter_sound',3,1,'phonics', 'What sound does "j" make?', ['/j/','/ch/','/g/','/y/'], '/j/'),
  _q2('beginner','letter_sound',3,1,'phonics', 'Which word starts with /v/?', ['van','ban','ran','tan'], 'van'),
  _q2('beginner','letter_sound',3,1,'phonics', 'What sound does "v" make?', ['/v/','/f/','/b/','/w/'], '/v/'),
  _q2('beginner','letter_sound',3,1,'phonics', 'Which word starts with /w/?', ['wet','bet','let','net'], 'wet'),
  _q2('beginner','letter_sound',3,1,'phonics', 'What sound does "w" make?', ['/w/','/v/','/m/','/r/'], '/w/'),
  _q2('beginner','letter_sound',3,1,'phonics', 'What sound does "x" make in "fox"?', ['/ks/','/z/','/s/','/sh/'], '/ks/'),
  _q2('beginner','letter_sound',3,1,'phonics', 'What letter does "jug" start with?', ['j','g','d','b'], 'j'),
  _q2('beginner','letter_sound',3,1,'phonics', 'What letter does "van" start with?', ['v','f','b','w'], 'v'),
  _q2('beginner','letter_sound',3,1,'phonics', 'What letter does "web" start with?', ['w','v','m','b'], 'w'),

  _q2('beginner','letter_sound',3,2,'phonics', 'Which word starts with /j/?', ['jet','set','net','get'], 'jet'),
  _q2('beginner','letter_sound',3,2,'phonics', 'Which word starts with /v/?', ['vet','pet','net','set'], 'vet'),
  _q2('beginner','letter_sound',3,2,'phonics', 'Which word starts with /w/?', ['win','bin','tin','pin'], 'win'),
  _q2('beginner','letter_sound',3,2,'phonics', 'Which word has the /ks/ sound?', ['fox','fog','for','fob'], 'fox'),
  _q2('beginner','letter_sound',3,2,'phonics', 'What letter does "violin" start with?', ['v','f','b','p'], 'v'),
  _q2('beginner','letter_sound',3,2,'phonics', 'What letter does "window" start with?', ['w','v','m','n'], 'w'),
  _q2('beginner','letter_sound',3,2,'phonics', 'Which word ends with the /ks/ sound?', ['box','bot','bog','bob'], 'box'),
  _q2('beginner','letter_sound',3,2,'phonics', 'Which word starts with /j/?', ['jot','hot','lot','dot'], 'jot'),
  _q2('beginner','letter_sound',3,2,'phonics', 'Which word does NOT start with /w/?', ['win','wet','wig','bat'], 'bat'),
  _q2('beginner','letter_sound',3,2,'phonics', 'Which word does NOT start with /v/?', ['van','vet','vim','man'], 'man'),

  // WEEK 4 — New Sounds y, z, zz, qu (letter_sound)
  _q2('beginner','letter_sound',4,1,'phonics', 'Which word starts with /y/?', ['yes','less','mess','bless'], 'yes'),
  _q2('beginner','letter_sound',4,1,'phonics', 'What sound does "y" make in "yes"?', ['/y/','/j/','/i/','/e/'], '/y/'),
  _q2('beginner','letter_sound',4,1,'phonics', 'Which word starts with /z/?', ['zip','tip','rip','sip'], 'zip'),
  _q2('beginner','letter_sound',4,1,'phonics', 'What sound does "z" make?', ['/z/','/s/','/x/','/zh/'], '/z/'),
  _q2('beginner','letter_sound',4,1,'phonics', 'Which word ends with "zz"?', ['buzz','bus','bud','bug'], 'buzz'),
  _q2('beginner','letter_sound',4,1,'phonics', 'Which word starts with "qu"?', ['queen','keen','seen','teen'], 'queen'),
  _q2('beginner','letter_sound',4,1,'phonics', 'What two letters make the /kw/ sound?', ['qu','kw','cw','qw'], 'qu'),
  _q2('beginner','letter_sound',4,1,'phonics', 'What letter does "yam" start with?', ['y','j','g','w'], 'y'),
  _q2('beginner','letter_sound',4,1,'phonics', 'What letter does "zero" start with?', ['z','s','v','x'], 'z'),
  _q2('beginner','letter_sound',4,1,'phonics', 'Which word ends with "zz"?', ['fizz','fish','fist','fit'], 'fizz'),

  _q2('beginner','letter_sound',4,2,'phonics', 'Which word starts with /y/?', ['yak','jak','pak','bak'], 'yak'),
  _q2('beginner','letter_sound',4,2,'phonics', 'Which word starts with /z/?', ['zap','cap','lap','tap'], 'zap'),
  _q2('beginner','letter_sound',4,2,'phonics', 'Which word starts with "qu"?', ['quiz','whiz','his','is'], 'quiz'),
  _q2('beginner','letter_sound',4,2,'phonics', 'What sound does "qu" make?', ['/kw/','/k/','/w/','/qu/'], '/kw/'),
  _q2('beginner','letter_sound',4,2,'phonics', 'Which word ends with "zz"?', ['jazz','jam','jab','jag'], 'jazz'),
  _q2('beginner','letter_sound',4,2,'phonics', 'Which word starts with /z/?', ['zig','big','dig','fig'], 'zig'),
  _q2('beginner','letter_sound',4,2,'phonics', 'Which word starts with /y/?', ['yell','bell','fell','sell'], 'yell'),
  _q2('beginner','letter_sound',4,2,'phonics', 'What letter does "queen" start with?', ['q','k','w','c'], 'q'),
  _q2('beginner','letter_sound',4,2,'phonics', 'Which word does NOT start with /z/?', ['zip','zap','zig','bat'], 'bat'),
  _q2('beginner','letter_sound',4,2,'phonics', 'Which word does NOT start with /y/?', ['yak','yes','yell','man'], 'man'),

  // WEEK 5 — CVC Blending: -at, -an (cvc_word + oral_blending)
  _q2('beginner','cvc_word',5,1,'phonics', 'Which word is in the -at family?', ['cat','cut','cot','cap'], 'cat'),
  _q2('beginner','cvc_word',5,1,'phonics', 'Which word is in the -at family?', ['mat','met','mit','mot'], 'mat'),
  _q2('beginner','cvc_word',5,1,'phonics', 'Which word is in the -at family?', ['hat','hit','hot','hut'], 'hat'),
  _q2('beginner','cvc_word',5,1,'phonics', 'Which word is in the -an family?', ['can','con','cun','cin'], 'can'),
  _q2('beginner','cvc_word',5,1,'phonics', 'Which word is in the -an family?', ['man','men','min','mon'], 'man'),
  _q2('beginner','cvc_word',5,1,'phonics', 'Which word is in the -an family?', ['fan','fen','fin','fun'], 'fan'),
  _q2('beginner','oral_blending',5,1,'phonics', 'What word does /c/ /a/ /t/ make?', ['cat','cut','cot','cap'], 'cat'),
  _q2('beginner','oral_blending',5,1,'phonics', 'What word does /m/ /a/ /n/ make?', ['man','men','mon','mun'], 'man'),
  _q2('beginner','cvc_word',5,1,'phonics', 'Which word rhymes with "cat" and ends in -at?', ['bat','bit','bot','but'], 'bat'),
  _q2('beginner','cvc_word',5,1,'phonics', 'Which word rhymes with "can" and ends in -an?', ['pan','pin','pon','pun'], 'pan'),

  _q2('beginner','cvc_word',5,2,'phonics', 'Which word is in the -at family?', ['rat','rot','rut','rit'], 'rat'),
  _q2('beginner','cvc_word',5,2,'phonics', 'Which word is in the -at family?', ['sat','sit','sot','sut'], 'sat'),
  _q2('beginner','cvc_word',5,2,'phonics', 'Which word is in the -an family?', ['ran','run','rin','ron'], 'ran'),
  _q2('beginner','cvc_word',5,2,'phonics', 'Which word is in the -an family?', ['tan','tin','ton','tun'], 'tan'),
  _q2('beginner','oral_blending',5,2,'phonics', 'What word does /h/ /a/ /t/ make?', ['hat','hit','hot','hut'], 'hat'),
  _q2('beginner','oral_blending',5,2,'phonics', 'What word does /f/ /a/ /n/ make?', ['fan','fin','fun','fen'], 'fan'),
  _q2('beginner','cvc_word',5,2,'phonics', 'Which word does NOT belong in the -at family?', ['cat','mat','hat','man'], 'man'),
  _q2('beginner','cvc_word',5,2,'phonics', 'Which word does NOT belong in the -an family?', ['can','man','fan','cat'], 'cat'),
  _q2('beginner','oral_blending',5,2,'phonics', 'What word does /r/ /a/ /t/ make?', ['rat','rot','rut','rit'], 'rat'),
  _q2('beginner','oral_blending',5,2,'phonics', 'What word does /t/ /a/ /n/ make?', ['tan','tin','ton','tun'], 'tan'),

  // WEEK 6 — CVC Blending: -it, -in (cvc_word)
  _q2('beginner','cvc_word',6,1,'phonics', 'Which word is in the -it family?', ['sit','sat','set','sot'], 'sit'),
  _q2('beginner','cvc_word',6,1,'phonics', 'Which word is in the -it family?', ['bit','bat','bet','bot'], 'bit'),
  _q2('beginner','cvc_word',6,1,'phonics', 'Which word is in the -it family?', ['hit','hat','het','hot'], 'hit'),
  _q2('beginner','cvc_word',6,1,'phonics', 'Which word is in the -in family?', ['bin','ban','ben','bon'], 'bin'),
  _q2('beginner','cvc_word',6,1,'phonics', 'Which word is in the -in family?', ['tin','tan','ten','ton'], 'tin'),
  _q2('beginner','cvc_word',6,1,'phonics', 'Which word is in the -in family?', ['win','wan','wen','won'], 'win'),
  _q2('beginner','cvc_word',6,1,'phonics', 'What vowel sound is in "sit"?', ['short /i/','short /a/','short /e/','short /o/'], 'short /i/'),
  _q2('beginner','cvc_word',6,1,'phonics', 'Which word rhymes with "sit"?', ['kit','kat','ket','kot'], 'kit'),
  _q2('beginner','cvc_word',6,1,'phonics', 'Which word rhymes with "bin"?', ['pin','pan','pen','pon'], 'pin'),
  _q2('beginner','cvc_word',6,1,'phonics', 'Which word does NOT belong in the -it family?', ['sit','bit','hit','bat'], 'bat'),

  _q2('beginner','cvc_word',6,2,'phonics', 'Which word is in the -it family?', ['fit','fat','fet','fot'], 'fit'),
  _q2('beginner','cvc_word',6,2,'phonics', 'Which word is in the -it family?', ['pit','pat','pet','pot'], 'pit'),
  _q2('beginner','cvc_word',6,2,'phonics', 'Which word is in the -in family?', ['fin','fan','fen','fun'], 'fin'),
  _q2('beginner','cvc_word',6,2,'phonics', 'Which word is in the -in family?', ['din','dan','den','don'], 'din'),
  _q2('beginner','cvc_word',6,2,'phonics', 'What vowel sound is in "bin"?', ['short /i/','short /a/','short /e/','short /o/'], 'short /i/'),
  _q2('beginner','cvc_word',6,2,'phonics', 'Which word does NOT belong in the -in family?', ['bin','tin','win','bat'], 'bat'),
  _q2('beginner','cvc_word',6,2,'phonics', 'Which word is in the -it family?', ['wit','wat','wet','wot'], 'wit'),
  _q2('beginner','cvc_word',6,2,'phonics', 'Which word is in the -in family?', ['kin','kan','ken','kon'], 'kin'),
  _q2('beginner','cvc_word',6,2,'phonics', 'Which word rhymes with "bit"?', ['kit','kat','ket','kot'], 'kit'),
  _q2('beginner','cvc_word',6,2,'phonics', 'Which word rhymes with "win"?', ['pin','pan','pen','pon'], 'pin'),

  // WEEK 7 — CVC Blending: -og, -op (cvc_word)
  _q2('beginner','cvc_word',7,1,'phonics', 'Which word is in the -og family?', ['dog','dig','dug','dag'], 'dog'),
  _q2('beginner','cvc_word',7,1,'phonics', 'Which word is in the -og family?', ['log','leg','lug','lag'], 'log'),
  _q2('beginner','cvc_word',7,1,'phonics', 'Which word is in the -og family?', ['fog','fig','fug','fag'], 'fog'),
  _q2('beginner','cvc_word',7,1,'phonics', 'Which word is in the -op family?', ['top','tip','tap','tup'], 'top'),
  _q2('beginner','cvc_word',7,1,'phonics', 'Which word is in the -op family?', ['hop','hip','hap','hup'], 'hop'),
  _q2('beginner','cvc_word',7,1,'phonics', 'Which word is in the -op family?', ['mop','map','mip','mup'], 'mop'),
  _q2('beginner','cvc_word',7,1,'phonics', 'What vowel sound is in "dog"?', ['short /o/','short /a/','short /e/','short /u/'], 'short /o/'),
  _q2('beginner','cvc_word',7,1,'phonics', 'Which word rhymes with "dog"?', ['hog','hig','hug','hag'], 'hog'),
  _q2('beginner','cvc_word',7,1,'phonics', 'Which word rhymes with "top"?', ['cop','cap','cup','cep'], 'cop'),
  _q2('beginner','cvc_word',7,1,'phonics', 'Which word does NOT belong in the -og family?', ['dog','log','fog','dig'], 'dig'),

  _q2('beginner','cvc_word',7,2,'phonics', 'Which word is in the -og family?', ['bog','bag','beg','bug'], 'bog'),
  _q2('beginner','cvc_word',7,2,'phonics', 'Which word is in the -og family?', ['jog','jag','jeg','jug'], 'jog'),
  _q2('beginner','cvc_word',7,2,'phonics', 'Which word is in the -op family?', ['pop','pip','pap','pup'], 'pop'),
  _q2('beginner','cvc_word',7,2,'phonics', 'Which word is in the -op family?', ['bop','bip','bap','bup'], 'bop'),
  _q2('beginner','cvc_word',7,2,'phonics', 'What vowel sound is in "hop"?', ['short /o/','short /i/','short /a/','short /u/'], 'short /o/'),
  _q2('beginner','cvc_word',7,2,'phonics', 'Which word does NOT belong in the -op family?', ['top','hop','mop','dig'], 'dig'),
  _q2('beginner','cvc_word',7,2,'phonics', 'Change the first letter of "dog" to "l". New word?', ['log','leg','lag','lug'], 'log'),
  _q2('beginner','cvc_word',7,2,'phonics', 'Change the first letter of "top" to "h". New word?', ['hop','hip','hap','hup'], 'hop'),
  _q2('beginner','cvc_word',7,2,'phonics', 'Which word rhymes with "mop"?', ['cop','cap','cup','cep'], 'cop'),
  _q2('beginner','cvc_word',7,2,'phonics', 'Which word rhymes with "log"?', ['hog','hig','hug','hag'], 'hog'),

  // WEEK 8 — CVC Blending: -ug, -un (cvc_word)
  _q2('beginner','cvc_word',8,1,'phonics', 'Which word is in the -ug family?', ['bug','bag','beg','bog'], 'bug'),
  _q2('beginner','cvc_word',8,1,'phonics', 'Which word is in the -ug family?', ['mug','mag','meg','mog'], 'mug'),
  _q2('beginner','cvc_word',8,1,'phonics', 'Which word is in the -ug family?', ['hug','hag','heg','hog'], 'hug'),
  _q2('beginner','cvc_word',8,1,'phonics', 'Which word is in the -un family?', ['run','ran','ren','ron'], 'run'),
  _q2('beginner','cvc_word',8,1,'phonics', 'Which word is in the -un family?', ['sun','san','sen','son'], 'sun'),
  _q2('beginner','cvc_word',8,1,'phonics', 'Which word is in the -un family?', ['fun','fan','fen','fon'], 'fun'),
  _q2('beginner','cvc_word',8,1,'phonics', 'What vowel sound is in "bug"?', ['short /u/','short /a/','short /e/','short /o/'], 'short /u/'),
  _q2('beginner','cvc_word',8,1,'phonics', 'Which word rhymes with "bug"?', ['dug','dag','deg','dog'], 'dug'),
  _q2('beginner','cvc_word',8,1,'phonics', 'Which word rhymes with "run"?', ['gun','gan','gen','gon'], 'gun'),
  _q2('beginner','cvc_word',8,1,'phonics', 'Which word does NOT belong in the -ug family?', ['bug','mug','hug','bag'], 'bag'),

  _q2('beginner','cvc_word',8,2,'phonics', 'Which word is in the -ug family?', ['jug','jag','jeg','jog'], 'jug'),
  _q2('beginner','cvc_word',8,2,'phonics', 'Which word is in the -ug family?', ['tug','tag','teg','tog'], 'tug'),
  _q2('beginner','cvc_word',8,2,'phonics', 'Which word is in the -un family?', ['bun','ban','ben','bon'], 'bun'),
  _q2('beginner','cvc_word',8,2,'phonics', 'Which word is in the -un family?', ['nun','nan','nen','non'], 'nun'),
  _q2('beginner','cvc_word',8,2,'phonics', 'What vowel sound is in "sun"?', ['short /u/','short /a/','short /e/','short /o/'], 'short /u/'),
  _q2('beginner','cvc_word',8,2,'phonics', 'Which word does NOT belong in the -un family?', ['run','sun','fun','bag'], 'bag'),
  _q2('beginner','cvc_word',8,2,'phonics', 'Change the first letter of "bug" to "m". New word?', ['mug','mag','meg','mog'], 'mug'),
  _q2('beginner','cvc_word',8,2,'phonics', 'Change the first letter of "run" to "s". New word?', ['sun','san','sen','son'], 'sun'),
  _q2('beginner','cvc_word',8,2,'phonics', 'Which word rhymes with "mug"?', ['jug','jag','jeg','jog'], 'jug'),
  _q2('beginner','cvc_word',8,2,'phonics', 'Which word rhymes with "fun"?', ['bun','ban','ben','bon'], 'bun'),

  // WEEK 9 — Short Vowel Sort (short_vowel)
  _q2('beginner','short_vowel',9,1,'phonics', 'Which word has short /a/?', ['cat','cut','cot','kit'], 'cat'),
  _q2('beginner','short_vowel',9,1,'phonics', 'Which word has short /e/?', ['bed','bad','bid','bud'], 'bed'),
  _q2('beginner','short_vowel',9,1,'phonics', 'Which word has short /i/?', ['sit','sat','set','sot'], 'sit'),
  _q2('beginner','short_vowel',9,1,'phonics', 'Which word has short /o/?', ['hop','hip','hap','hup'], 'hop'),
  _q2('beginner','short_vowel',9,1,'phonics', 'Which word has short /u/?', ['bug','bag','beg','bog'], 'bug'),
  _q2('beginner','short_vowel',9,1,'phonics', 'What vowel sound is in "man"?', ['short /a/','short /e/','short /i/','short /o/'], 'short /a/'),
  _q2('beginner','short_vowel',9,1,'phonics', 'What vowel sound is in "hen"?', ['short /e/','short /a/','short /i/','short /o/'], 'short /e/'),
  _q2('beginner','short_vowel',9,1,'phonics', 'What vowel sound is in "pin"?', ['short /i/','short /a/','short /e/','short /o/'], 'short /i/'),
  _q2('beginner','short_vowel',9,1,'phonics', 'What vowel sound is in "dog"?', ['short /o/','short /a/','short /e/','short /u/'], 'short /o/'),
  _q2('beginner','short_vowel',9,1,'phonics', 'What vowel sound is in "sun"?', ['short /u/','short /a/','short /e/','short /o/'], 'short /u/'),

  _q2('beginner','short_vowel',9,2,'phonics', 'Which word has short /a/?', ['fan','fin','fun','fen'], 'fan'),
  _q2('beginner','short_vowel',9,2,'phonics', 'Which word has short /e/?', ['red','rod','rid','rud'], 'red'),
  _q2('beginner','short_vowel',9,2,'phonics', 'Which word has short /i/?', ['bit','bat','bot','but'], 'bit'),
  _q2('beginner','short_vowel',9,2,'phonics', 'Which word has short /o/?', ['mop','map','mip','mup'], 'mop'),
  _q2('beginner','short_vowel',9,2,'phonics', 'Which word has short /u/?', ['run','ran','rin','ron'], 'run'),
  _q2('beginner','short_vowel',9,2,'phonics', 'Which word does NOT have short /a/?', ['cat','fan','man','bin'], 'bin'),
  _q2('beginner','short_vowel',9,2,'phonics', 'Which word does NOT have short /i/?', ['sit','bit','hit','hot'], 'hot'),
  _q2('beginner','short_vowel',9,2,'phonics', 'Which word does NOT have short /o/?', ['hop','dog','top','sun'], 'sun'),
  _q2('beginner','short_vowel',9,2,'phonics', 'Which word does NOT have short /u/?', ['bug','mug','hug','bat'], 'bat'),
  _q2('beginner','short_vowel',9,2,'phonics', 'Which word does NOT have short /e/?', ['bed','red','hen','hot'], 'hot'),

  // WEEK 10 — Short Vowels: Reading Sentences (short_vowel + cvc_word)
  _q2('beginner','short_vowel',10,1,'phonics', 'Which word has short /a/ in "The cat sat"?', ['cat','the','sat','in'], 'cat'),
  _q2('beginner','cvc_word',10,1,'phonics', 'Which word completes: "The dog sat on the ___"?', ['mat','met','mit','mot'], 'mat'),
  _q2('beginner','short_vowel',10,1,'phonics', 'What vowel sound is in "sit" in "I sit here"?', ['short /i/','short /a/','short /e/','short /o/'], 'short /i/'),
  _q2('beginner','cvc_word',10,1,'phonics', 'Which word completes: "The hen is in the ___"?', ['pen','pan','pin','pun'], 'pen'),
  _q2('beginner','short_vowel',10,1,'phonics', 'Which word has short /o/ in "The dog ran"?', ['dog','the','ran','and'], 'dog'),
  _q2('beginner','cvc_word',10,1,'phonics', 'Which word completes: "The bug is on a ___"?', ['log','lag','leg','lug'], 'log'),
  _q2('beginner','short_vowel',10,1,'phonics', 'What vowel sound is in "run" in "I can run"?', ['short /u/','short /a/','short /e/','short /o/'], 'short /u/'),
  _q2('beginner','cvc_word',10,1,'phonics', 'Which word completes: "I see a red ___"?', ['hat','hit','hot','hut'], 'hat'),
  _q2('beginner','short_vowel',10,1,'phonics', 'Which word has short /e/ in "The hen has eggs"?', ['hen','the','has','and'], 'hen'),
  _q2('beginner','cvc_word',10,1,'phonics', 'Which word completes: "The man has a big ___"?', ['bag','beg','bog','bug'], 'bag'),

  _q2('beginner','cvc_word',10,2,'phonics', 'Which word completes: "I can see the ___"?', ['sun','sin','son','sen'], 'sun'),
  _q2('beginner','short_vowel',10,2,'phonics', 'Which word has short /a/ in "I pat the cat"?', ['pat','cat','the','and'], 'pat'),
  _q2('beginner','cvc_word',10,2,'phonics', 'Which word completes: "Put it in the ___"?', ['bin','ban','ben','bon'], 'bin'),
  _q2('beginner','short_vowel',10,2,'phonics', 'What vowel sound is in "hop" in "The frog can hop"?', ['short /o/','short /a/','short /i/','short /u/'], 'short /o/'),
  _q2('beginner','cvc_word',10,2,'phonics', 'Which word completes: "The pig is fat and ___"?', ['big','bag','beg','bug'], 'big'),
  _q2('beginner','short_vowel',10,2,'phonics', 'Which word has short /u/ in "The pup runs"?', ['pup','the','runs','and'], 'pup'),
  _q2('beginner','cvc_word',10,2,'phonics', 'Which word completes: "I hit the ___"?', ['top','tap','tip','tup'], 'top'),
  _q2('beginner','short_vowel',10,2,'phonics', 'Which word has short /i/ in "He has a big wig"?', ['big','wig','has','and'], 'big'),
  _q2('beginner','cvc_word',10,2,'phonics', 'Which word completes: "She has a red ___"?', ['pen','pan','pin','pun'], 'pen'),
  _q2('beginner','cvc_word',10,2,'phonics', 'Which word completes: "The cat is on the ___"?', ['bed','bad','bid','bud'], 'bed'),

  // WEEK 11 — Rhyme with CVC Words (rhyme + cvc_word)
  _q2('beginner','rhyme',11,1,'phonics', 'Which CVC word rhymes with "cat"?', ['bat','bot','but','bet'], 'bat'),
  _q2('beginner','cvc_word',11,1,'phonics', 'Which is a CVC word?', ['cat','cart','cats','chat'], 'cat'),
  _q2('beginner','rhyme',11,1,'phonics', 'Which CVC word rhymes with "bin"?', ['tin','ton','tan','ten'], 'tin'),
  _q2('beginner','cvc_word',11,1,'phonics', 'Which is a CVC word?', ['hop','shop','chop','drop'], 'hop'),
  _q2('beginner','rhyme',11,1,'phonics', 'Which CVC word rhymes with "bug"?', ['mug','mag','meg','mog'], 'mug'),
  _q2('beginner','cvc_word',11,1,'phonics', 'Which is a CVC word?', ['sun','stun','spun','shun'], 'sun'),
  _q2('beginner','rhyme',11,1,'phonics', 'Which two CVC words rhyme?', ['dog / log','dog / dig','log / leg','dig / dug'], 'dog / log'),
  _q2('beginner','rhyme',11,1,'phonics', 'Which CVC word rhymes with "man"?', ['fan','fin','fun','fen'], 'fan'),
  _q2('beginner','cvc_word',11,1,'phonics', 'Which is a CVC word?', ['bed','bled','bred','shed'], 'bed'),
  _q2('beginner','rhyme',11,1,'phonics', 'Which CVC word rhymes with "hop"?', ['top','tap','tip','tup'], 'top'),

  _q2('beginner','rhyme',11,2,'phonics', 'Which CVC word rhymes with "sit"?', ['bit','bat','bot','but'], 'bit'),
  _q2('beginner','cvc_word',11,2,'phonics', 'Which is a CVC word?', ['run','runt','runs','rune'], 'run'),
  _q2('beginner','rhyme',11,2,'phonics', 'Which CVC word rhymes with "red"?', ['bed','bad','bid','bud'], 'bed'),
  _q2('beginner','cvc_word',11,2,'phonics', 'Which is a CVC word?', ['mat','mast','maps','math'], 'mat'),
  _q2('beginner','rhyme',11,2,'phonics', 'Which two CVC words rhyme?', ['run / sun','run / man','sun / bin','man / men'], 'run / sun'),
  _q2('beginner','rhyme',11,2,'phonics', 'Which CVC word rhymes with "hit"?', ['kit','kat','kot','kut'], 'kit'),
  _q2('beginner','cvc_word',11,2,'phonics', 'Which is a CVC word?', ['fin','fins','find','fine'], 'fin'),
  _q2('beginner','rhyme',11,2,'phonics', 'Which CVC word rhymes with "fog"?', ['log','lag','leg','lug'], 'log'),
  _q2('beginner','cvc_word',11,2,'phonics', 'Which is a CVC word?', ['hat','hate','hats','bath'], 'hat'),
  _q2('beginner','rhyme',11,2,'phonics', 'Which two CVC words rhyme?', ['pin / tin','pin / pat','tin / tan','pat / pet'], 'pin / tin'),

  // WEEK 12 — CVC Fluency & Writing (cvc_word + short_vowel)
  _q2('beginner','cvc_word',12,1,'phonics', 'Which word is spelled correctly?', ['cat','kat','cet','cit'], 'cat'),
  _q2('beginner','cvc_word',12,1,'phonics', 'Which word is spelled correctly?', ['dog','dg','doge','doog'], 'dog'),
  _q2('beginner','cvc_word',12,1,'phonics', 'Which word is spelled correctly?', ['sun','sn','sunn','son'], 'sun'),
  _q2('beginner','short_vowel',12,1,'phonics', 'What is the middle sound in "sit"?', ['/i/','/a/','/e/','/o/'], '/i/'),
  _q2('beginner','short_vowel',12,1,'phonics', 'What is the middle sound in "hop"?', ['/o/','/a/','/i/','/u/'], '/o/'),
  _q2('beginner','cvc_word',12,1,'phonics', 'Which word is spelled correctly?', ['hen','hn','henn','haen'], 'hen'),
  _q2('beginner','cvc_word',12,1,'phonics', 'Which word is spelled correctly?', ['run','rn','runn','ron'], 'run'),
  _q2('beginner','short_vowel',12,1,'phonics', 'What is the middle sound in "fan"?', ['/a/','/e/','/i/','/o/'], '/a/'),
  _q2('beginner','cvc_word',12,1,'phonics', 'Which word is spelled correctly?', ['pin','pn','pinn','paen'], 'pin'),
  _q2('beginner','short_vowel',12,1,'phonics', 'What is the middle sound in "bug"?', ['/u/','/a/','/e/','/o/'], '/u/'),

  _q2('beginner','cvc_word',12,2,'phonics', 'Which word is spelled correctly?', ['mat','mt','matt','maet'], 'mat'),
  _q2('beginner','cvc_word',12,2,'phonics', 'Which word is spelled correctly?', ['bit','bt','bitt','baet'], 'bit'),
  _q2('beginner','short_vowel',12,2,'phonics', 'What is the middle sound in "bed"?', ['/e/','/a/','/i/','/o/'], '/e/'),
  _q2('beginner','cvc_word',12,2,'phonics', 'Which word is spelled correctly?', ['log','lg','logg','laeg'], 'log'),
  _q2('beginner','cvc_word',12,2,'phonics', 'Which word is spelled correctly?', ['mug','mg','mugg','maeg'], 'mug'),
  _q2('beginner','short_vowel',12,2,'phonics', 'What is the middle sound in "top"?', ['/o/','/a/','/i/','/u/'], '/o/'),
  _q2('beginner','cvc_word',12,2,'phonics', 'Which word is spelled correctly?', ['man','mn','mann','maen'], 'man'),
  _q2('beginner','short_vowel',12,2,'phonics', 'What is the middle sound in "red"?', ['/e/','/a/','/i/','/o/'], '/e/'),
  _q2('beginner','cvc_word',12,2,'phonics', 'Which word is spelled correctly?', ['jug','jg','jugg','jaeg'], 'jug'),
  _q2('beginner','short_vowel',12,2,'phonics', 'What is the middle sound in "can"?', ['/a/','/e/','/i/','/o/'], '/a/'),

  // WEEK 13 — End-of-Term Assessment (cvc_word + letter_sound + short_vowel)
  _q2('beginner','cvc_word',13,1,'phonics', 'Which is a CVC word?', ['cat','chat','cats','cart'], 'cat'),
  _q2('beginner','letter_sound',13,1,'phonics', 'What sound does "l" make?', ['/l/','/r/','/n/','/w/'], '/l/'),
  _q2('beginner','short_vowel',13,1,'phonics', 'Which word has short /a/?', ['man','men','min','mon'], 'man'),
  _q2('beginner','cvc_word',13,1,'phonics', 'Which word is in the -og family?', ['dog','dig','dug','dag'], 'dog'),
  _q2('beginner','letter_sound',13,1,'phonics', 'What sound does "j" make?', ['/j/','/ch/','/g/','/y/'], '/j/'),
  _q2('beginner','short_vowel',13,1,'phonics', 'Which word has short /i/?', ['sit','sat','set','sot'], 'sit'),
  _q2('beginner','cvc_word',13,1,'phonics', 'Which word is in the -un family?', ['run','ran','ren','ron'], 'run'),
  _q2('beginner','letter_sound',13,1,'phonics', 'What sound does "z" make?', ['/z/','/s/','/x/','/zh/'], '/z/'),
  _q2('beginner','short_vowel',13,1,'phonics', 'Which word has short /u/?', ['bug','bag','beg','bog'], 'bug'),
  _q2('beginner','cvc_word',13,1,'phonics', 'Which word is in the -at family?', ['hat','hit','hot','hut'], 'hat'),

  _q2('beginner','letter_sound',13,2,'phonics', 'What sound does "v" make?', ['/v/','/f/','/b/','/w/'], '/v/'),
  _q2('beginner','cvc_word',13,2,'phonics', 'Which word is in the -in family?', ['bin','ban','ben','bon'], 'bin'),
  _q2('beginner','short_vowel',13,2,'phonics', 'Which word has short /o/?', ['hop','hip','hap','hup'], 'hop'),
  _q2('beginner','letter_sound',13,2,'phonics', 'What sound does "y" make in "yes"?', ['/y/','/j/','/i/','/e/'], '/y/'),
  _q2('beginner','cvc_word',13,2,'phonics', 'Which word is in the -ug family?', ['mug','mag','meg','mog'], 'mug'),
  _q2('beginner','short_vowel',13,2,'phonics', 'Which word has short /e/?', ['bed','bad','bid','bud'], 'bed'),
  _q2('beginner','letter_sound',13,2,'phonics', 'What two letters make /kw/?', ['qu','kw','cw','qw'], 'qu'),
  _q2('beginner','cvc_word',13,2,'phonics', 'Which word is in the -op family?', ['top','tap','tip','tup'], 'top'),
  _q2('beginner','short_vowel',13,2,'phonics', 'What vowel sound is in "sun"?', ['short /u/','short /a/','short /e/','short /o/'], 'short /u/'),
  _q2('beginner','cvc_word',13,2,'phonics', 'Which word is spelled correctly?', ['fan','fn','fann','faen'], 'fan'),

];
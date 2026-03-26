import 'package:uuid/uuid.dart';
import '../../../core/models/question.dart';

// ignore_for_file: prefer_single_quotes
const _u3 = Uuid();

Question _q3(String level, String tag, int week, int set, String type,
    String q, List<String> opts, String ans) =>
    Question(
      id: _u3.v4(), level: level, skillTag: tag,
      weekNumber: week, assessmentSet: set, questionType: type,
      termNumber: 3,
      questionText: q, options: opts, correctAnswer: ans,
    );

// ─────────────────────────────────────────────────────────────────────────────
// BEGINNER — TERM 3  (Nursery 1–2)
// W1  : Review CVC Words                         → cvc_word, short_vowel
// W2  : Digraphs sh, ch                          → digraph
// W3  : Digraphs th, ng                          → digraph
// W4  : High-Frequency Words set 1 (I,a,the,to,no,go) → cvc_word
// W5  : High-Frequency Words set 2 (is,it,in,on,at,and) → cvc_word
// W6  : Oral Segmenting                          → oral_blending
// W7  : Reading Simple Sentences                 → cvc_word, digraph
// W8  : Writing Simple Sentences                 → cvc_word
// W9  : Consonant Clusters st, cl, fl            → consonant_cluster
// W10 : Consonant Clusters bl, gr, tr            → consonant_cluster
// W11 : Review & Fluency                         → cvc_word, digraph, consonant_cluster
// W12 : Year Review                              → letter_sound, cvc_word, short_vowel, digraph
// W13 : End-of-Year Assessment                   → cvc_word, short_vowel, digraph, letter_sound
// ─────────────────────────────────────────────────────────────────────────────

final List<Question> weekQuestionsBeginnerT3 = [

  // WEEK 1 — Review CVC Words (cvc_word + short_vowel)
  _q3('beginner','cvc_word',1,1,'phonics', 'Which is a CVC word?', ['cat','chat','cats','cart'], 'cat'),
  _q3('beginner','cvc_word',1,1,'phonics', 'Which is a CVC word?', ['dog','dogs','sdog','ddog'], 'dog'),
  _q3('beginner','short_vowel',1,1,'phonics', 'What is the middle sound in "sit"?', ['/i/','/a/','/e/','/o/'], '/i/'),
  _q3('beginner','cvc_word',1,1,'phonics', 'Which is a CVC word?', ['run','runs','rune','runt'], 'run'),
  _q3('beginner','short_vowel',1,1,'phonics', 'Which word has short /a/?', ['cat','cut','cot','kit'], 'cat'),
  _q3('beginner','cvc_word',1,1,'phonics', 'Which word is spelled correctly?', ['hen','hn','henn','haen'], 'hen'),
  _q3('beginner','short_vowel',1,1,'phonics', 'Which word has short /o/?', ['hop','hip','hap','hup'], 'hop'),
  _q3('beginner','cvc_word',1,1,'phonics', 'Which word is a CVC word?', ['bed','bled','bred','shed'], 'bed'),
  _q3('beginner','short_vowel',1,1,'phonics', 'Which word has short /u/?', ['bug','bag','beg','bog'], 'bug'),
  _q3('beginner','cvc_word',1,1,'phonics', 'Which word is spelled correctly?', ['pin','pn','pinn','paen'], 'pin'),

  _q3('beginner','cvc_word',1,2,'phonics', 'Which is a CVC word?', ['hat','hate','hats','bath'], 'hat'),
  _q3('beginner','short_vowel',1,2,'phonics', 'What is the middle sound in "bed"?', ['/e/','/a/','/i/','/o/'], '/e/'),
  _q3('beginner','cvc_word',1,2,'phonics', 'Which is a CVC word?', ['fan','fans','fane','fang'], 'fan'),
  _q3('beginner','short_vowel',1,2,'phonics', 'Which word has short /i/?', ['bit','bat','bot','but'], 'bit'),
  _q3('beginner','cvc_word',1,2,'phonics', 'Which word is spelled correctly?', ['mug','mg','mugg','maeg'], 'mug'),
  _q3('beginner','short_vowel',1,2,'phonics', 'Which word has short /e/?', ['red','rod','rid','rud'], 'red'),
  _q3('beginner','cvc_word',1,2,'phonics', 'Which is a CVC word?', ['log','logs','long','blog'], 'log'),
  _q3('beginner','short_vowel',1,2,'phonics', 'What is the middle sound in "top"?', ['/o/','/a/','/i/','/u/'], '/o/'),
  _q3('beginner','cvc_word',1,2,'phonics', 'Which word is spelled correctly?', ['sun','sn','sunn','son'], 'sun'),
  _q3('beginner','short_vowel',1,2,'phonics', 'What is the middle sound in "man"?', ['/a/','/e/','/i/','/o/'], '/a/'),

  // WEEK 2 — Digraphs sh, ch (digraph)
  _q3('beginner','digraph',2,1,'phonics', 'What sound do "sh" make together?', ['/sh/','/s/+/h/','/ch/','/zh/'], '/sh/'),
  _q3('beginner','digraph',2,1,'phonics', 'Which word starts with "sh"?', ['ship','sip','hip','tip'], 'ship'),
  _q3('beginner','digraph',2,1,'phonics', 'What sound do "ch" make together?', ['/ch/','/c/+/h/','/sh/','/th/'], '/ch/'),
  _q3('beginner','digraph',2,1,'phonics', 'Which word starts with "ch"?', ['chip','sip','hip','tip'], 'chip'),
  _q3('beginner','digraph',2,1,'phonics', 'Which word starts with "sh"?', ['shop','sop','hop','top'], 'shop'),
  _q3('beginner','digraph',2,1,'phonics', 'Which word starts with "ch"?', ['chop','cop','hop','top'], 'chop'),
  _q3('beginner','digraph',2,1,'phonics', 'How many letters make the /sh/ sound?', ['2','1','3','4'], '2'),
  _q3('beginner','digraph',2,1,'phonics', 'How many letters make the /ch/ sound?', ['2','1','3','4'], '2'),
  _q3('beginner','digraph',2,1,'phonics', 'Which word has the "sh" sound?', ['fish','fist','list','mist'], 'fish'),
  _q3('beginner','digraph',2,1,'phonics', 'Which word has the "ch" sound?', ['much','must','gust','just'], 'much'),

  _q3('beginner','digraph',2,2,'phonics', 'Which word starts with "sh"?', ['shed','bed','red','fed'], 'shed'),
  _q3('beginner','digraph',2,2,'phonics', 'Which word starts with "ch"?', ['chin','bin','tin','win'], 'chin'),
  _q3('beginner','digraph',2,2,'phonics', 'Which word ends with "sh"?', ['dish','disk','dip','dim'], 'dish'),
  _q3('beginner','digraph',2,2,'phonics', 'Which word ends with "ch"?', ['rich','rip','rig','rid'], 'rich'),
  _q3('beginner','digraph',2,2,'phonics', 'Which word has the "sh" sound?', ['wish','wist','with','wick'], 'wish'),
  _q3('beginner','digraph',2,2,'phonics', 'Which word has the "ch" sound?', ['chat','cat','bat','rat'], 'chat'),
  _q3('beginner','digraph',2,2,'phonics', 'What two letters make the /sh/ sound?', ['sh','sc','sk','sl'], 'sh'),
  _q3('beginner','digraph',2,2,'phonics', 'What two letters make the /ch/ sound?', ['ch','ck','cl','cr'], 'ch'),
  _q3('beginner','digraph',2,2,'phonics', 'Which word does NOT have "sh"?', ['ship','shop','shed','chip'], 'chip'),
  _q3('beginner','digraph',2,2,'phonics', 'Which word does NOT have "ch"?', ['chip','chop','chin','ship'], 'ship'),

  // WEEK 3 — Digraphs th, ng (digraph)
  _q3('beginner','digraph',3,1,'phonics', 'What sound do "th" make in "the"?', ['/th/','/t/+/h/','/d/','/f/'], '/th/'),
  _q3('beginner','digraph',3,1,'phonics', 'Which word starts with "th"?', ['the','be','he','we'], 'the'),
  _q3('beginner','digraph',3,1,'phonics', 'Which word starts with "th"?', ['this','is','his','bit'], 'this'),
  _q3('beginner','digraph',3,1,'phonics', 'What sound do "ng" make at the end of a word?', ['/ng/','/n/+/g/','/nk/','/n/'], '/ng/'),
  _q3('beginner','digraph',3,1,'phonics', 'Which word ends with "ng"?', ['ring','rink','rin','rim'], 'ring'),
  _q3('beginner','digraph',3,1,'phonics', 'Which word ends with "ng"?', ['sing','sink','sin','sip'], 'sing'),
  _q3('beginner','digraph',3,1,'phonics', 'How many letters make the /th/ sound?', ['2','1','3','4'], '2'),
  _q3('beginner','digraph',3,1,'phonics', 'How many letters make the /ng/ sound?', ['2','1','3','4'], '2'),
  _q3('beginner','digraph',3,1,'phonics', 'Which word has the "th" sound?', ['that','bat','cat','rat'], 'that'),
  _q3('beginner','digraph',3,1,'phonics', 'Which word has the "ng" sound?', ['long','lot','log','lop'], 'long'),

  _q3('beginner','digraph',3,2,'phonics', 'Which word starts with "th"?', ['thin','tin','bin','fin'], 'thin'),
  _q3('beginner','digraph',3,2,'phonics', 'Which word ends with "ng"?', ['song','son','sop','sob'], 'song'),
  _q3('beginner','digraph',3,2,'phonics', 'Which word ends with "ng"?', ['king','kin','kid','kit'], 'king'),
  _q3('beginner','digraph',3,2,'phonics', 'Which word has the "th" sound?', ['them','hem','gem','met'], 'them'),
  _q3('beginner','digraph',3,2,'phonics', 'Which word has the "ng" sound?', ['hang','ham','hat','has'], 'hang'),
  _q3('beginner','digraph',3,2,'phonics', 'What two letters make the /th/ sound?', ['th','ch','sh','wh'], 'th'),
  _q3('beginner','digraph',3,2,'phonics', 'What two letters make the /ng/ sound?', ['ng','nk','mn','gn'], 'ng'),
  _q3('beginner','digraph',3,2,'phonics', 'Which word does NOT have "th"?', ['the','this','that','chip'], 'chip'),
  _q3('beginner','digraph',3,2,'phonics', 'Which word does NOT end with "ng"?', ['ring','sing','king','rink'], 'rink'),
  _q3('beginner','digraph',3,2,'phonics', 'Which word ends with "ng"?', ['bang','ban','bad','bat'], 'bang'),

  // WEEK 4 — High-Frequency Words set 1: I, a, the, to, no, go (cvc_word)
  _q3('beginner','cvc_word',4,1,'phonics', 'Which is a high-frequency word?', ['the','thp','teh','hte'], 'the'),
  _q3('beginner','cvc_word',4,1,'phonics', 'Which word means the opposite of "yes"?', ['no','go','to','so'], 'no'),
  _q3('beginner','cvc_word',4,1,'phonics', 'Which word means "move away"?', ['go','no','to','so'], 'go'),
  _q3('beginner','cvc_word',4,1,'phonics', 'Which high-frequency word do you use to talk about yourself?', ['I','a','to','no'], 'I'),
  _q3('beginner','cvc_word',4,1,'phonics', 'Which word is used before a noun like "I see ___ cat"?', ['a','I','to','no'], 'a'),
  _q3('beginner','cvc_word',4,1,'phonics', 'Which word completes: "I want ___ go home"?', ['to','no','go','a'], 'to'),
  _q3('beginner','cvc_word',4,1,'phonics', 'How many letters is in "the"?', ['3','2','1','4'], '3'),
  _q3('beginner','cvc_word',4,1,'phonics', 'Which of these is NOT one of the high-frequency words taught?', ['big','the','no','go'], 'big'),
  _q3('beginner','cvc_word',4,1,'phonics', 'Which word completes: "___ cat sat"?', ['The','The','A','No'], 'The'),
  _q3('beginner','cvc_word',4,1,'phonics', 'Which word completes: "I say ___ to that"?', ['no','go','to','I'], 'no'),

  _q3('beginner','cvc_word',4,2,'phonics', 'Which word is spelled correctly?', ['the','teh','hte','tha'], 'the'),
  _q3('beginner','cvc_word',4,2,'phonics', 'Which word is spelled correctly?', ['go','og','goo','ggo'], 'go'),
  _q3('beginner','cvc_word',4,2,'phonics', 'Which word is spelled correctly?', ['no','on','noo','nn'], 'no'),
  _q3('beginner','cvc_word',4,2,'phonics', 'Which word is spelled correctly?', ['to','ot','too','tt'], 'to'),
  _q3('beginner','cvc_word',4,2,'phonics', 'Which word completes: "Let us ___ to the park"?', ['go','no','to','a'], 'go'),
  _q3('beginner','cvc_word',4,2,'phonics', 'Which word completes: "___ like to read"?', ['I','a','no','to'], 'I'),
  _q3('beginner','cvc_word',4,2,'phonics', 'Which word completes: "I see ___ bird"?', ['a','the','to','no'], 'a'),
  _q3('beginner','cvc_word',4,2,'phonics', 'Which of these is a high-frequency word?', ['no','bat','cat','hat'], 'no'),
  _q3('beginner','cvc_word',4,2,'phonics', 'Which of these is a high-frequency word?', ['go','dog','log','fog'], 'go'),
  _q3('beginner','cvc_word',4,2,'phonics', 'Which word completes: "We want ___ sing"?', ['to','no','go','a'], 'to'),

  // WEEK 5 — High-Frequency Words set 2: is, it, in, on, at, and (cvc_word)
  _q3('beginner','cvc_word',5,1,'phonics', 'Which word means "inside"?', ['in','on','at','is'], 'in'),
  _q3('beginner','cvc_word',5,1,'phonics', 'Which word means "on top of"?', ['on','in','at','is'], 'on'),
  _q3('beginner','cvc_word',5,1,'phonics', 'Which word is used to join two things: "cats ___ dogs"?', ['and','is','it','at'], 'and'),
  _q3('beginner','cvc_word',5,1,'phonics', 'Which word completes: "The cat ___ big"?', ['is','in','on','at'], 'is'),
  _q3('beginner','cvc_word',5,1,'phonics', 'Which word completes: "I am ___ home"?', ['at','in','on','is'], 'at'),
  _q3('beginner','cvc_word',5,1,'phonics', 'Which word completes: "Put ___ in the box"?', ['it','in','on','at'], 'it'),
  _q3('beginner','cvc_word',5,1,'phonics', 'Which of these is NOT a high-frequency word from set 2?', ['big','is','it','in'], 'big'),
  _q3('beginner','cvc_word',5,1,'phonics', 'Which word completes: "The dog is ___ the mat"?', ['on','and','is','it'], 'on'),
  _q3('beginner','cvc_word',5,1,'phonics', 'Which word completes: "The cup is ___ the table"?', ['on','in','at','is'], 'on'),
  _q3('beginner','cvc_word',5,1,'phonics', 'Which word completes: "I see a cat ___ a dog"?', ['and','is','it','in'], 'and'),

  _q3('beginner','cvc_word',5,2,'phonics', 'Which word is spelled correctly?', ['is','si','iss','iis'], 'is'),
  _q3('beginner','cvc_word',5,2,'phonics', 'Which word is spelled correctly?', ['it','ti','itt','iit'], 'it'),
  _q3('beginner','cvc_word',5,2,'phonics', 'Which word is spelled correctly?', ['in','ni','inn','iin'], 'in'),
  _q3('beginner','cvc_word',5,2,'phonics', 'Which word is spelled correctly?', ['on','no','onn','oon'], 'on'),
  _q3('beginner','cvc_word',5,2,'phonics', 'Which word is spelled correctly?', ['at','ta','att','aat'], 'at'),
  _q3('beginner','cvc_word',5,2,'phonics', 'Which word is spelled correctly?', ['and','adn','nda','dna'], 'and'),
  _q3('beginner','cvc_word',5,2,'phonics', 'Which word completes: "The bird is ___ the tree"?', ['in','on','at','is'], 'in'),
  _q3('beginner','cvc_word',5,2,'phonics', 'Which word completes: "She ___ happy"?', ['is','in','on','at'], 'is'),
  _q3('beginner','cvc_word',5,2,'phonics', 'Which of these is a high-frequency word from set 2?', ['at','cat','bat','hat'], 'at'),
  _q3('beginner','cvc_word',5,2,'phonics', 'Which word completes: "I can read ___ write"?', ['and','is','it','in'], 'and'),

  // WEEK 6 — Oral Segmenting (oral_blending)
  _q3('beginner','oral_blending',6,1,'phonics', 'How many sounds are in "cat"?', ['3','2','4','1'], '3'),
  _q3('beginner','oral_blending',6,1,'phonics', 'How many sounds are in "go"?', ['2','3','1','4'], '2'),
  _q3('beginner','oral_blending',6,1,'phonics', 'How many sounds are in "ship"?', ['3','4','2','1'], '3'),
  _q3('beginner','oral_blending',6,1,'phonics', 'How many sounds are in "sun"?', ['3','2','4','1'], '3'),
  _q3('beginner','oral_blending',6,1,'phonics', 'How many syllables are in "rabbit"?', ['2','1','3','4'], '2'),
  _q3('beginner','oral_blending',6,1,'phonics', 'What are the sounds in "dog"?', ['/d/ /o/ /g/','/d/ /og/','/do/ /g/','d-o-g'], '/d/ /o/ /g/'),
  _q3('beginner','oral_blending',6,1,'phonics', 'How many sounds are in "chip"?', ['3','4','2','1'], '3'),
  _q3('beginner','oral_blending',6,1,'phonics', 'How many syllables are in "mango"?', ['2','1','3','4'], '2'),
  _q3('beginner','oral_blending',6,1,'phonics', 'What are the sounds in "hen"?', ['/h/ /e/ /n/','/h/ /en/','/he/ /n/','h-e-n'], '/h/ /e/ /n/'),
  _q3('beginner','oral_blending',6,1,'phonics', 'How many sounds are in "the"?', ['2','3','1','4'], '2'),

  _q3('beginner','oral_blending',6,2,'phonics', 'How many sounds are in "mat"?', ['3','2','4','1'], '3'),
  _q3('beginner','oral_blending',6,2,'phonics', 'How many sounds are in "shop"?', ['3','4','2','1'], '3'),
  _q3('beginner','oral_blending',6,2,'phonics', 'How many syllables are in "tiger"?', ['2','1','3','4'], '2'),
  _q3('beginner','oral_blending',6,2,'phonics', 'What are the sounds in "bit"?', ['/b/ /i/ /t/','/b/ /it/','/bi/ /t/','b-i-t'], '/b/ /i/ /t/'),
  _q3('beginner','oral_blending',6,2,'phonics', 'How many sounds are in "ring"?', ['3','4','2','1'], '3'),
  _q3('beginner','oral_blending',6,2,'phonics', 'How many syllables are in "basket"?', ['2','1','3','4'], '2'),
  _q3('beginner','oral_blending',6,2,'phonics', 'How many sounds are in "in"?', ['2','3','1','4'], '2'),
  _q3('beginner','oral_blending',6,2,'phonics', 'What are the sounds in "run"?', ['/r/ /u/ /n/','/r/ /un/','/ru/ /n/','r-u-n'], '/r/ /u/ /n/'),
  _q3('beginner','oral_blending',6,2,'phonics', 'How many sounds are in "thin"?', ['3','4','2','1'], '3'),
  _q3('beginner','oral_blending',6,2,'phonics', 'How many syllables are in "apple"?', ['2','1','3','4'], '2'),

  // WEEK 7 — Reading Simple Sentences (cvc_word + digraph)
  _q3('beginner','cvc_word',7,1,'phonics', 'Which word completes: "The cat sat on the ___"?', ['mat','met','mit','mot'], 'mat'),
  _q3('beginner','digraph',7,1,'phonics', 'Which word has the "sh" sound?', ['ship','sip','hip','tip'], 'ship'),
  _q3('beginner','cvc_word',7,1,'phonics', 'Which word completes: "I can see the ___"?', ['dog','dig','dug','dag'], 'dog'),
  _q3('beginner','digraph',7,1,'phonics', 'Which word has the "ch" sound?', ['chip','sip','hip','tip'], 'chip'),
  _q3('beginner','cvc_word',7,1,'phonics', 'Which word completes: "The hen is in the ___"?', ['pen','pan','pin','pun'], 'pen'),
  _q3('beginner','digraph',7,1,'phonics', 'Which word has the "th" sound?', ['the','be','he','we'], 'the'),
  _q3('beginner','cvc_word',7,1,'phonics', 'Which word completes: "The bug sat on a ___"?', ['log','lag','lug','leg'], 'log'),
  _q3('beginner','digraph',7,1,'phonics', 'Which word has the "ng" sound?', ['ring','rip','rid','rim'], 'ring'),
  _q3('beginner','cvc_word',7,1,'phonics', 'Which word completes: "She has a red ___"?', ['hat','hit','hot','hut'], 'hat'),
  _q3('beginner','digraph',7,1,'phonics', 'Which word has the "sh" sound?', ['fish','fist','fit','fig'], 'fish'),

  _q3('beginner','digraph',7,2,'phonics', 'Which word has the "ch" sound?', ['much','mug','mud','mum'], 'much'),
  _q3('beginner','cvc_word',7,2,'phonics', 'Which word completes: "The dog runs to the ___"?', ['man','men','min','mon'], 'man'),
  _q3('beginner','digraph',7,2,'phonics', 'Which word starts with "sh"?', ['shop','sop','hop','top'], 'shop'),
  _q3('beginner','cvc_word',7,2,'phonics', 'Which word completes: "I put it in a ___"?', ['bag','beg','bog','bug'], 'bag'),
  _q3('beginner','digraph',7,2,'phonics', 'Which word starts with "ch"?', ['chop','cop','hop','top'], 'chop'),
  _q3('beginner','cvc_word',7,2,'phonics', 'Which word completes: "The sun is in the ___"?', ['sky','say','see','sue'], 'sky'),
  _q3('beginner','digraph',7,2,'phonics', 'Which word ends with "ng"?', ['sing','sin','sip','sit'], 'sing'),
  _q3('beginner','cvc_word',7,2,'phonics', 'Which word completes: "The pig is fat and ___"?', ['big','bag','beg','bug'], 'big'),
  _q3('beginner','digraph',7,2,'phonics', 'Which word starts with "th"?', ['this','is','his','bit'], 'this'),
  _q3('beginner','cvc_word',7,2,'phonics', 'Which word completes: "We run on the ___"?', ['mat','met','mit','mot'], 'mat'),

  // WEEK 8 — Writing Simple Sentences (cvc_word)
  _q3('beginner','cvc_word',8,1,'phonics', 'Which word is spelled correctly?', ['cat','kat','cet','cit'], 'cat'),
  _q3('beginner','cvc_word',8,1,'phonics', 'Which word is spelled correctly?', ['dog','dg','doge','doog'], 'dog'),
  _q3('beginner','cvc_word',8,1,'phonics', 'What should go at the START of a sentence?', ['Capital letter','Full stop','Comma','Space'], 'Capital letter'),
  _q3('beginner','cvc_word',8,1,'phonics', 'What should go at the END of a sentence?', ['Full stop','Capital letter','Comma','Space'], 'Full stop'),
  _q3('beginner','cvc_word',8,1,'phonics', 'Which word is spelled correctly?', ['sun','sn','sunn','son'], 'sun'),
  _q3('beginner','cvc_word',8,1,'phonics', 'Which word is spelled correctly?', ['run','rn','runn','ron'], 'run'),
  _q3('beginner','cvc_word',8,1,'phonics', 'Which sentence is written correctly?', ['The cat sat.','the cat sat.','The Cat sat','the Cat sat'], 'The cat sat.'),
  _q3('beginner','cvc_word',8,1,'phonics', 'Which word is spelled correctly?', ['big','bg','bigg','baeg'], 'big'),
  _q3('beginner','cvc_word',8,1,'phonics', 'Which word is spelled correctly?', ['hen','hn','henn','haen'], 'hen'),
  _q3('beginner','cvc_word',8,1,'phonics', 'Which sentence is written correctly?', ['I can run.','i can run.','I Can Run.','i Can run'], 'I can run.'),

  _q3('beginner','cvc_word',8,2,'phonics', 'Which word is spelled correctly?', ['mat','mt','matt','maet'], 'mat'),
  _q3('beginner','cvc_word',8,2,'phonics', 'What should go between words in a sentence?', ['A space','A comma','Nothing','A dot'], 'A space'),
  _q3('beginner','cvc_word',8,2,'phonics', 'Which word is spelled correctly?', ['bit','bt','bitt','baet'], 'bit'),
  _q3('beginner','cvc_word',8,2,'phonics', 'Which sentence is written correctly?', ['The dog ran.','the dog ran.','The Dog ran','the dog Ran'], 'The dog ran.'),
  _q3('beginner','cvc_word',8,2,'phonics', 'Which word is spelled correctly?', ['fan','fn','fann','faen'], 'fan'),
  _q3('beginner','cvc_word',8,2,'phonics', 'Which word is spelled correctly?', ['log','lg','logg','laeg'], 'log'),
  _q3('beginner','cvc_word',8,2,'phonics', 'Which sentence is written correctly?', ['She has a hat.','she has a hat.','She Has A Hat.','She has a hat'], 'She has a hat.'),
  _q3('beginner','cvc_word',8,2,'phonics', 'Which word is spelled correctly?', ['pin','pn','pinn','paen'], 'pin'),
  _q3('beginner','cvc_word',8,2,'phonics', 'Which word is spelled correctly?', ['mug','mg','mugg','maeg'], 'mug'),
  _q3('beginner','cvc_word',8,2,'phonics', 'Which sentence is written correctly?', ['I see a dog.','i see a dog.','I See A Dog.','I see A dog'], 'I see a dog.'),

  // WEEK 9 — Consonant Clusters: st, cl, fl (consonant_cluster)
  _q3('beginner','consonant_cluster',9,1,'phonics', 'What two letters start "stop"?', ['st','sp','sk','sl'], 'st'),
  _q3('beginner','consonant_cluster',9,1,'phonics', 'Which word starts with "st"?', ['stop','top','hop','cop'], 'stop'),
  _q3('beginner','consonant_cluster',9,1,'phonics', 'What two letters start "clip"?', ['cl','cr','gl','gr'], 'cl'),
  _q3('beginner','consonant_cluster',9,1,'phonics', 'Which word starts with "cl"?', ['clip','sip','hip','tip'], 'clip'),
  _q3('beginner','consonant_cluster',9,1,'phonics', 'What two letters start "flag"?', ['fl','bl','gl','sl'], 'fl'),
  _q3('beginner','consonant_cluster',9,1,'phonics', 'Which word starts with "fl"?', ['flag','lag','bag','tag'], 'flag'),
  _q3('beginner','consonant_cluster',9,1,'phonics', 'How many letters are in the cluster "st"?', ['2','1','3','4'], '2'),
  _q3('beginner','consonant_cluster',9,1,'phonics', 'Which word starts with "st"?', ['stem','hem','gem','met'], 'stem'),
  _q3('beginner','consonant_cluster',9,1,'phonics', 'Which word starts with "cl"?', ['clap','lap','cap','map'], 'clap'),
  _q3('beginner','consonant_cluster',9,1,'phonics', 'Which word starts with "fl"?', ['flat','lat','bat','cat'], 'flat'),

  _q3('beginner','consonant_cluster',9,2,'phonics', 'Which word starts with "st"?', ['step','pep','rep','hep'], 'step'),
  _q3('beginner','consonant_cluster',9,2,'phonics', 'Which word starts with "cl"?', ['clam','lam','ham','jam'], 'clam'),
  _q3('beginner','consonant_cluster',9,2,'phonics', 'Which word starts with "fl"?', ['flip','lip','dip','sip'], 'flip'),
  _q3('beginner','consonant_cluster',9,2,'phonics', 'Which word does NOT start with a cluster?', ['stop','top','clip','flag'], 'top'),
  _q3('beginner','consonant_cluster',9,2,'phonics', 'What is the cluster in "clan"?', ['cl','cr','gl','gr'], 'cl'),
  _q3('beginner','consonant_cluster',9,2,'phonics', 'What is the cluster in "flan"?', ['fl','bl','gl','sl'], 'fl'),
  _q3('beginner','consonant_cluster',9,2,'phonics', 'What is the cluster in "stick"?', ['st','sp','sk','sl'], 'st'),
  _q3('beginner','consonant_cluster',9,2,'phonics', 'Which word starts with "fl"?', ['flog','log','dog','hog'], 'flog'),
  _q3('beginner','consonant_cluster',9,2,'phonics', 'Which word starts with "cl"?', ['clop','lop','hop','top'], 'clop'),
  _q3('beginner','consonant_cluster',9,2,'phonics', 'Which word starts with "st"?', ['stub','tub','hub','rub'], 'stub'),

  // WEEK 10 — Consonant Clusters: bl, gr, tr (consonant_cluster)
  _q3('beginner','consonant_cluster',10,1,'phonics', 'What two letters start "blog"?', ['bl','br','fl','gl'], 'bl'),
  _q3('beginner','consonant_cluster',10,1,'phonics', 'Which word starts with "bl"?', ['blog','log','dog','hog'], 'blog'),
  _q3('beginner','consonant_cluster',10,1,'phonics', 'What two letters start "grab"?', ['gr','cr','gl','br'], 'gr'),
  _q3('beginner','consonant_cluster',10,1,'phonics', 'Which word starts with "gr"?', ['grab','lab','cab','tab'], 'grab'),
  _q3('beginner','consonant_cluster',10,1,'phonics', 'What two letters start "trip"?', ['tr','dr','cr','br'], 'tr'),
  _q3('beginner','consonant_cluster',10,1,'phonics', 'Which word starts with "tr"?', ['trip','rip','dip','sip'], 'trip'),
  _q3('beginner','consonant_cluster',10,1,'phonics', 'Which word starts with "bl"?', ['black','lack','rack','back'], 'black'),
  _q3('beginner','consonant_cluster',10,1,'phonics', 'Which word starts with "gr"?', ['grin','rin','bin','tin'], 'grin'),
  _q3('beginner','consonant_cluster',10,1,'phonics', 'Which word starts with "tr"?', ['trot','rot','dot','hot'], 'trot'),
  _q3('beginner','consonant_cluster',10,1,'phonics', 'Which word does NOT start with a cluster?', ['blog','grab','trip','hop'], 'hop'),

  _q3('beginner','consonant_cluster',10,2,'phonics', 'Which word starts with "bl"?', ['blot','lot','dot','hot'], 'blot'),
  _q3('beginner','consonant_cluster',10,2,'phonics', 'Which word starts with "gr"?', ['grip','rip','dip','sip'], 'grip'),
  _q3('beginner','consonant_cluster',10,2,'phonics', 'Which word starts with "tr"?', ['trim','rim','him','dim'], 'trim'),
  _q3('beginner','consonant_cluster',10,2,'phonics', 'What is the cluster in "blab"?', ['bl','br','fl','gl'], 'bl'),
  _q3('beginner','consonant_cluster',10,2,'phonics', 'What is the cluster in "grit"?', ['gr','cr','gl','br'], 'gr'),
  _q3('beginner','consonant_cluster',10,2,'phonics', 'What is the cluster in "trap"?', ['tr','dr','cr','br'], 'tr'),
  _q3('beginner','consonant_cluster',10,2,'phonics', 'Which word starts with "bl"?', ['bled','led','red','fed'], 'bled'),
  _q3('beginner','consonant_cluster',10,2,'phonics', 'Which word starts with "gr"?', ['grog','log','fog','hog'], 'grog'),
  _q3('beginner','consonant_cluster',10,2,'phonics', 'Which word starts with "tr"?', ['tram','ram','ham','jam'], 'tram'),
  _q3('beginner','consonant_cluster',10,2,'phonics', 'Which word does NOT start with a cluster?', ['blog','grip','trim','cat'], 'cat'),

  // WEEK 11 — Review & Fluency (cvc_word + digraph + consonant_cluster)
  _q3('beginner','cvc_word',11,1,'phonics', 'Which is a CVC word?', ['cat','chat','flat','that'], 'cat'),
  _q3('beginner','digraph',11,1,'phonics', 'Which word has the "sh" digraph?', ['ship','stop','clip','grip'], 'ship'),
  _q3('beginner','consonant_cluster',11,1,'phonics', 'Which word starts with a consonant cluster?', ['stop','top','hop','mop'], 'stop'),
  _q3('beginner','digraph',11,1,'phonics', 'Which word has the "ch" digraph?', ['chip','clip','grip','drip'], 'chip'),
  _q3('beginner','consonant_cluster',11,1,'phonics', 'Which word starts with a consonant cluster?', ['flag','lag','bag','tag'], 'flag'),
  _q3('beginner','cvc_word',11,1,'phonics', 'Which is a CVC word?', ['bed','bled','bred','shed'], 'bed'),
  _q3('beginner','digraph',11,1,'phonics', 'Which word has the "th" digraph?', ['that','flat','slat','spat'], 'that'),
  _q3('beginner','consonant_cluster',11,1,'phonics', 'Which word starts with a consonant cluster?', ['blog','log','dog','hog'], 'blog'),
  _q3('beginner','digraph',11,1,'phonics', 'Which word ends with the "ng" digraph?', ['ring','rip','rid','rim'], 'ring'),
  _q3('beginner','cvc_word',11,1,'phonics', 'Which is a CVC word?', ['run','runt','runs','rune'], 'run'),

  _q3('beginner','consonant_cluster',11,2,'phonics', 'Which word starts with a consonant cluster?', ['trip','rip','dip','sip'], 'trip'),
  _q3('beginner','cvc_word',11,2,'phonics', 'Which is a CVC word?', ['hat','hate','hats','bath'], 'hat'),
  _q3('beginner','digraph',11,2,'phonics', 'Which word has the "sh" digraph?', ['fish','fist','fit','fig'], 'fish'),
  _q3('beginner','consonant_cluster',11,2,'phonics', 'Which word starts with a consonant cluster?', ['grab','lab','cab','tab'], 'grab'),
  _q3('beginner','cvc_word',11,2,'phonics', 'Which is a CVC word?', ['fan','fans','fane','fang'], 'fan'),
  _q3('beginner','digraph',11,2,'phonics', 'Which word ends with "ch"?', ['rich','rip','rig','rid'], 'rich'),
  _q3('beginner','consonant_cluster',11,2,'phonics', 'What is the cluster in "clap"?', ['cl','cr','gl','gr'], 'cl'),
  _q3('beginner','digraph',11,2,'phonics', 'Which word ends with "ng"?', ['sing','sin','sip','sit'], 'sing'),
  _q3('beginner','cvc_word',11,2,'phonics', 'Which is a CVC word?', ['log','logs','long','blog'], 'log'),
  _q3('beginner','consonant_cluster',11,2,'phonics', 'What is the cluster in "grin"?', ['gr','cr','gl','br'], 'gr'),

  // WEEK 12 — Year Review (letter_sound + cvc_word + short_vowel + digraph)
  _q3('beginner','letter_sound',12,1,'phonics', 'What sound does "s" make?', ['/s/','/z/','/sh/','/t/'], '/s/'),
  _q3('beginner','cvc_word',12,1,'phonics', 'Which is a CVC word?', ['cat','chat','cats','cart'], 'cat'),
  _q3('beginner','short_vowel',12,1,'phonics', 'Which word has short /a/?', ['fan','fin','fun','fen'], 'fan'),
  _q3('beginner','digraph',12,1,'phonics', 'What sound do "sh" make?', ['/sh/','/s/+/h/','/ch/','/zh/'], '/sh/'),
  _q3('beginner','letter_sound',12,1,'phonics', 'What sound does "m" make?', ['/m/','/n/','/b/','/p/'], '/m/'),
  _q3('beginner','short_vowel',12,1,'phonics', 'Which word has short /i/?', ['bit','bat','bot','but'], 'bit'),
  _q3('beginner','digraph',12,1,'phonics', 'What sound do "ch" make?', ['/ch/','/c/+/h/','/sh/','/th/'], '/ch/'),
  _q3('beginner','cvc_word',12,1,'phonics', 'Which is a CVC word?', ['bed','bled','bred','shed'], 'bed'),
  _q3('beginner','short_vowel',12,1,'phonics', 'Which word has short /o/?', ['hop','hip','hap','hup'], 'hop'),
  _q3('beginner','letter_sound',12,1,'phonics', 'What sound does "b" make?', ['/b/','/d/','/p/','/g/'], '/b/'),

  _q3('beginner','digraph',12,2,'phonics', 'What sound do "th" make?', ['/th/','/t/+/h/','/d/','/f/'], '/th/'),
  _q3('beginner','short_vowel',12,2,'phonics', 'Which word has short /u/?', ['bug','bag','beg','bog'], 'bug'),
  _q3('beginner','letter_sound',12,2,'phonics', 'What sound does "f" make?', ['/f/','/v/','/th/','/s/'], '/f/'),
  _q3('beginner','cvc_word',12,2,'phonics', 'Which is a CVC word?', ['run','runt','runs','rune'], 'run'),
  _q3('beginner','digraph',12,2,'phonics', 'What sound do "ng" make?', ['/ng/','/n/+/g/','/nk/','/n/'], '/ng/'),
  _q3('beginner','short_vowel',12,2,'phonics', 'Which word has short /e/?', ['red','rod','rid','rud'], 'red'),
  _q3('beginner','letter_sound',12,2,'phonics', 'What sound does "h" make?', ['/h/','/ch/','/sh/','/wh/'], '/h/'),
  _q3('beginner','cvc_word',12,2,'phonics', 'Which is a CVC word?', ['dog','dogs','dong','blog'], 'dog'),
  _q3('beginner','short_vowel',12,2,'phonics', 'What is the middle sound in "sit"?', ['/i/','/a/','/e/','/o/'], '/i/'),
  _q3('beginner','letter_sound',12,2,'phonics', 'What sound does "p" make?', ['/p/','/b/','/f/','/d/'], '/p/'),

  // WEEK 13 — End-of-Year Assessment (cvc_word + short_vowel + digraph + letter_sound)
  _q3('beginner','cvc_word',13,1,'phonics', 'Which is a CVC word?', ['hat','hate','hats','bath'], 'hat'),
  _q3('beginner','short_vowel',13,1,'phonics', 'Which word has short /a/?', ['cat','cut','cot','kit'], 'cat'),
  _q3('beginner','digraph',13,1,'phonics', 'Which word has the "sh" sound?', ['ship','sip','hip','tip'], 'ship'),
  _q3('beginner','letter_sound',13,1,'phonics', 'What sound does "l" make?', ['/l/','/r/','/n/','/w/'], '/l/'),
  _q3('beginner','cvc_word',13,1,'phonics', 'Which is a CVC word?', ['bed','bled','bred','shed'], 'bed'),
  _q3('beginner','short_vowel',13,1,'phonics', 'Which word has short /i/?', ['sit','sat','set','sot'], 'sit'),
  _q3('beginner','digraph',13,1,'phonics', 'Which word has the "ch" sound?', ['chip','sip','hip','tip'], 'chip'),
  _q3('beginner','letter_sound',13,1,'phonics', 'What sound does "g" make in "got"?', ['/g/','/j/','/k/','/d/'], '/g/'),
  _q3('beginner','consonant_cluster',13,1,'phonics', 'Which word starts with a cluster?', ['stop','top','hop','mop'], 'stop'),
  _q3('beginner','short_vowel',13,1,'phonics', 'Which word has short /u/?', ['bug','bag','beg','bog'], 'bug'),

  _q3('beginner','short_vowel',13,2,'phonics', 'Which word has short /o/?', ['hop','hip','hap','hup'], 'hop'),
  _q3('beginner','digraph',13,2,'phonics', 'Which word has the "th" sound?', ['that','flat','slat','spat'], 'that'),
  _q3('beginner','cvc_word',13,2,'phonics', 'Which is a CVC word?', ['run','runt','runs','rune'], 'run'),
  _q3('beginner','letter_sound',13,2,'phonics', 'What sound does "v" make?', ['/v/','/f/','/b/','/w/'], '/v/'),
  _q3('beginner','short_vowel',13,2,'phonics', 'Which word has short /e/?', ['red','rod','rid','rud'], 'red'),
  _q3('beginner','digraph',13,2,'phonics', 'Which word ends with "ng"?', ['ring','rip','rid','rim'], 'ring'),
  _q3('beginner','consonant_cluster',13,2,'phonics', 'Which word starts with a cluster?', ['flag','lag','bag','tag'], 'flag'),
  _q3('beginner','letter_sound',13,2,'phonics', 'What sound does "z" make?', ['/z/','/s/','/x/','/zh/'], '/z/'),
  _q3('beginner','cvc_word',13,2,'phonics', 'Which word is spelled correctly?', ['dog','dg','doge','doog'], 'dog'),
  _q3('beginner','short_vowel',13,2,'phonics', 'What is the middle sound in "fan"?', ['/a/','/e/','/i/','/o/'], '/a/'),

];
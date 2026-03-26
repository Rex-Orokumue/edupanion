import 'package:uuid/uuid.dart';
import '../../../core/models/question.dart';

// ignore_for_file: prefer_single_quotes
const _u = Uuid();

Question _q(String level, String tag, int week, int set, String type,
    String q, List<String> opts, String ans, {int term = 1}) =>
    Question(
      id: _u.v4(), level: level, skillTag: tag,
      weekNumber: week, assessmentSet: set, questionType: type,
      termNumber: term,
      questionText: q, options: opts, correctAnswer: ans,
    );

// ─────────────────────────────────────────────────────────────────────────────
// BEGINNER — TERM 1  (Nursery 1–2)
// W1  : Listening & Environmental Sounds  → rhyme
// W2  : Body Sounds & Clapping            → rhyme, alliteration
// W3  : Nursery Rhymes                    → rhyme
// W4  : Oral Blending Intro               → oral_blending
// W5  : Initial Sounds s, a, t            → letter_sound
// W6  : Initial Sounds p, i, n            → letter_sound
// W7  : Initial Sounds m, d, g            → letter_sound
// W8  : Initial Sounds o, c, k            → letter_sound
// W9  : Initial Sounds e, u, r            → letter_sound
// W10 : Initial Sounds h, b, f            → letter_sound
// W11 : Rhyme & Alliteration Play         → rhyme, alliteration
// W12 : Oral Blending & Review            → oral_blending, letter_sound
// W13 : End-of-Term                       → rhyme, letter_sound, oral_blending
// ─────────────────────────────────────────────────────────────────────────────

final List<Question> weekQuestionsBeginnerT1 = [

  // ══════════════════════════════════════════════════════════════════════════
  // WEEK 1 — Listening & Environmental Sounds (rhyme)
  // Focus: identify sounds, enjoy nursery rhymes, clap rhythms
  // ══════════════════════════════════════════════════════════════════════════

  // Set 1
  _q('beginner','rhyme',1,1,'phonics', 'Which word rhymes with "cat"?', ['bat','dog','cup','sun'], 'bat'),
  _q('beginner','rhyme',1,1,'phonics', 'Which word rhymes with "hen"?', ['ten','map','cup','hot'], 'ten'),
  _q('beginner','rhyme',1,1,'phonics', 'Which word rhymes with "bed"?', ['red','bat','fog','pin'], 'red'),
  _q('beginner','rhyme',1,1,'phonics', 'Which word rhymes with "hop"?', ['top','hat','leg','fin'], 'top'),
  _q('beginner','rhyme',1,1,'phonics', 'Which word rhymes with "sun"?', ['run','map','lid','fog'], 'run'),
  _q('beginner','rhyme',1,1,'phonics', 'Which two words sound the same at the end?', ['cat / bat','cat / cup','pin / pot','sun / top'], 'cat / bat'),
  _q('beginner','rhyme',1,1,'phonics', 'Which word does NOT rhyme with "man"?', ['fan','tan','can','mop'], 'mop'),
  _q('beginner','rhyme',1,1,'phonics', 'Which word rhymes with "big"?', ['pig','pan','bed','top'], 'pig'),
  _q('beginner','rhyme',1,1,'phonics', 'Which word rhymes with "lip"?', ['dip','log','bat','sun'], 'dip'),
  _q('beginner','rhyme',1,1,'phonics', 'Which word rhymes with "back"?', ['sack','bell','pin','fog'], 'sack'),

  // Set 2
  _q('beginner','rhyme',1,2,'phonics', 'Which word rhymes with "pin"?', ['bin','top','cup','leg'], 'bin'),
  _q('beginner','rhyme',1,2,'phonics', 'Which word rhymes with "hot"?', ['pot','fan','bug','sip'], 'pot'),
  _q('beginner','rhyme',1,2,'phonics', 'Which word rhymes with "mud"?', ['bud','hat','wig','fox'], 'bud'),
  _q('beginner','rhyme',1,2,'phonics', 'Which word rhymes with "bag"?', ['tag','hop','nut','web'], 'tag'),
  _q('beginner','rhyme',1,2,'phonics', 'Which word rhymes with "fog"?', ['log','bat','hen','sip'], 'log'),
  _q('beginner','rhyme',1,2,'phonics', 'Which two words sound the same at the end?', ['win / tin','hot / hat','cup / cap','leg / log'], 'win / tin'),
  _q('beginner','rhyme',1,2,'phonics', 'Which word does NOT rhyme with "pet"?', ['wet','set','net','pot'], 'pot'),
  _q('beginner','rhyme',1,2,'phonics', 'Which word rhymes with "cup"?', ['pup','bat','hen','fog'], 'pup'),
  _q('beginner','rhyme',1,2,'phonics', 'Which word rhymes with "wig"?', ['dig','hop','fan','cub'], 'dig'),
  _q('beginner','rhyme',1,2,'phonics', 'Which word rhymes with "mop"?', ['cop','mat','hen','wig'], 'cop'),

  // ══════════════════════════════════════════════════════════════════════════
  // WEEK 2 — Body Sounds & Clapping (rhyme + alliteration)
  // Focus: sound patterns, clapping rhythms, noticing rhyme and same starting sounds
  // ══════════════════════════════════════════════════════════════════════════

  // Set 1
  _q('beginner','rhyme',2,1,'phonics', 'Which word rhymes with "clap"?', ['tap','dog','cup','sun'], 'tap'),
  _q('beginner','alliteration',2,1,'phonics', 'Which two words start with the same sound?', ['big ball','red dog','fat hen','cold sun'], 'big ball'),
  _q('beginner','rhyme',2,1,'phonics', 'Which word rhymes with "stomp"?', ['romp','hat','leg','fin'], 'romp'),
  _q('beginner','alliteration',2,1,'phonics', 'What sound do "sun" and "sock" both start with?', ['/s/','/t/','/b/','/m/'], '/s/'),
  _q('beginner','rhyme',2,1,'phonics', 'Which word rhymes with "tap"?', ['map','mop','tip','top'], 'map'),
  _q('beginner','alliteration',2,1,'phonics', 'Which pair starts with the same sound?', ['cat / car','hat / bat','log / dog','sun / pan'], 'cat / car'),
  _q('beginner','rhyme',2,1,'phonics', 'Which word rhymes with "beat"?', ['feet','bat','cup','hot'], 'feet'),
  _q('beginner','alliteration',2,1,'phonics', 'What sound do "moon" and "map" both start with?', ['/m/','/n/','/b/','/f/'], '/m/'),
  _q('beginner','rhyme',2,1,'phonics', 'Which word rhymes with "ring"?', ['sing','bat','cup','hot'], 'sing'),
  _q('beginner','alliteration',2,1,'phonics', '"Bella bakes bread." What sound is repeated?', ['/b/','/r/','/d/','/k/'], '/b/'),

  // Set 2
  _q('beginner','alliteration',2,2,'phonics', 'What sound do "dog" and "door" both start with?', ['/d/','/t/','/g/','/b/'], '/d/'),
  _q('beginner','rhyme',2,2,'phonics', 'Which word rhymes with "jump"?', ['bump','bat','cup','hot'], 'bump'),
  _q('beginner','alliteration',2,2,'phonics', 'Which pair starts with the same sound?', ['fan / five','bat / cat','hen / ten','mop / top'], 'fan / five'),
  _q('beginner','rhyme',2,2,'phonics', 'Which word rhymes with "clap"?', ['snap','mop','tip','top'], 'snap'),
  _q('beginner','alliteration',2,2,'phonics', '"Sally sits still." What sound is repeated?', ['/s/','/t/','/l/','/n/'], '/s/'),
  _q('beginner','rhyme',2,2,'phonics', 'Which word rhymes with "drum"?', ['hum','bat','cup','hot'], 'hum'),
  _q('beginner','alliteration',2,2,'phonics', 'Which two words start with the same sound?', ['kite / king','cup / pup','bed / red','fox / box'], 'kite / king'),
  _q('beginner','rhyme',2,2,'phonics', 'Which word rhymes with "bang"?', ['sang','hat','cup','hot'], 'sang'),
  _q('beginner','alliteration',2,2,'phonics', 'What sound do "nest" and "net" both start with?', ['/n/','/m/','/b/','/s/'], '/n/'),
  _q('beginner','rhyme',2,2,'phonics', 'Which word rhymes with "pat"?', ['mat','mop','tip','bog'], 'mat'),

  // ══════════════════════════════════════════════════════════════════════════
  // WEEK 3 — Nursery Rhymes (rhyme)
  // Focus: join in rhymes, identify rhyming pairs, fill missing rhyming word
  // ══════════════════════════════════════════════════════════════════════════

  // Set 1
  _q('beginner','rhyme',3,1,'phonics', '"Jack and Jill went up the ___." Which word rhymes with "Jill"?', ['hill','hat','cup','sun'], 'hill'),
  _q('beginner','rhyme',3,1,'phonics', '"Twinkle twinkle little ___." Which word rhymes with "star"?', ['far','bat','cup','hot'], 'far'),
  _q('beginner','rhyme',3,1,'phonics', 'Which word completes the rhyme: "Rain rain go away, come again another ___"?', ['day','bat','cup','hot'], 'day'),
  _q('beginner','rhyme',3,1,'phonics', '"Humpty Dumpty sat on a ___." Which word rhymes with "wall"?', ['fall','bat','cup','hot'], 'fall'),
  _q('beginner','rhyme',3,1,'phonics', 'Which word rhymes with "Jill" and "hill"?', ['fill','bat','cup','hot'], 'fill'),
  _q('beginner','rhyme',3,1,'phonics', 'Which two words rhyme?', ['star / far','star / bat','cup / hot','leg / log'], 'star / far'),
  _q('beginner','rhyme',3,1,'phonics', 'Which word rhymes with "day"?', ['play','bat','cup','hot'], 'play'),
  _q('beginner','rhyme',3,1,'phonics', 'Which word does NOT rhyme with "wall"?', ['fall','tall','call','pin'], 'pin'),
  _q('beginner','rhyme',3,1,'phonics', '"Baa baa black sheep, have you any ___?" Which word rhymes with "sheep"?', ['wool','deep','bat','cup'], 'deep'),
  _q('beginner','rhyme',3,1,'phonics', 'Which word rhymes with "king"?', ['sing','bat','cup','hot'], 'sing'),

  // Set 2
  _q('beginner','rhyme',3,2,'phonics', '"Old MacDonald had a ___." Which word rhymes with "farm"?', ['harm','bat','cup','hot'], 'harm'),
  _q('beginner','rhyme',3,2,'phonics', 'Which word completes: "Mary had a little lamb, its fleece was white as ___"?', ['snow','bat','cup','hot'], 'snow'),
  _q('beginner','rhyme',3,2,'phonics', 'Which word rhymes with "snow"?', ['glow','bat','cup','hot'], 'glow'),
  _q('beginner','rhyme',3,2,'phonics', 'Which two words rhyme?', ['cake / lake','cake / bat','cup / hot','leg / log'], 'cake / lake'),
  _q('beginner','rhyme',3,2,'phonics', 'Which word rhymes with "night"?', ['light','bat','cup','hot'], 'light'),
  _q('beginner','rhyme',3,2,'phonics', 'Which word does NOT rhyme with "cat"?', ['bat','hat','sat','cup'], 'cup'),
  _q('beginner','rhyme',3,2,'phonics', '"Hickory dickory dock, the mouse ran up the ___." Rhymes with "dock"?', ['clock','bat','cup','hot'], 'clock'),
  _q('beginner','rhyme',3,2,'phonics', 'Which word rhymes with "clock"?', ['knock','bat','cup','hot'], 'knock'),
  _q('beginner','rhyme',3,2,'phonics', 'Which two words rhyme?', ['ring / sing','ring / bat','cup / hot','leg / log'], 'ring / sing'),
  _q('beginner','rhyme',3,2,'phonics', 'Which word rhymes with "house"?', ['mouse','bat','cup','hot'], 'mouse'),

  // ══════════════════════════════════════════════════════════════════════════
  // WEEK 4 — Oral Blending Intro (oral_blending)
  // Focus: blend 2–3 phoneme words orally, "robot talk" with 2-sound words
  // ══════════════════════════════════════════════════════════════════════════

  // Set 1
  _q('beginner','oral_blending',4,1,'phonics', 'What word does /m/ /e/ make?', ['me','my','am','ma'], 'me'),
  _q('beginner','oral_blending',4,1,'phonics', 'What word does /n/ /o/ make?', ['no','on','an','in'], 'no'),
  _q('beginner','oral_blending',4,1,'phonics', 'What word does /g/ /o/ make?', ['go','got','dog','fog'], 'go'),
  _q('beginner','oral_blending',4,1,'phonics', 'What word does /u/ /p/ make?', ['up','cup','pup','sup'], 'up'),
  _q('beginner','oral_blending',4,1,'phonics', 'What word does /i/ /n/ make?', ['in','on','an','un'], 'in'),
  _q('beginner','oral_blending',4,1,'phonics', 'What word does /d/ /o/ /g/ make?', ['dog','dig','dug','dot'], 'dog'),
  _q('beginner','oral_blending',4,1,'phonics', 'What word does /s/ /u/ /n/ make?', ['sun','son','sin','sat'], 'sun'),
  _q('beginner','oral_blending',4,1,'phonics', 'What word does /c/ /a/ /t/ make?', ['cat','cut','cot','cap'], 'cat'),
  _q('beginner','oral_blending',4,1,'phonics', 'What word does /h/ /e/ /n/ make?', ['hen','hot','hit','him'], 'hen'),
  _q('beginner','oral_blending',4,1,'phonics', 'What word does /b/ /u/ /s/ make?', ['bus','bad','bib','bog'], 'bus'),

  // Set 2
  _q('beginner','oral_blending',4,2,'phonics', 'What word does /a/ /t/ make?', ['at','it','on','an'], 'at'),
  _q('beginner','oral_blending',4,2,'phonics', 'What word does /o/ /n/ make?', ['on','in','an','un'], 'on'),
  _q('beginner','oral_blending',4,2,'phonics', 'What word does /i/ /t/ make?', ['it','at','on','an'], 'it'),
  _q('beginner','oral_blending',4,2,'phonics', 'What word does /a/ /n/ make?', ['an','in','on','un'], 'an'),
  _q('beginner','oral_blending',4,2,'phonics', 'What word does /b/ /e/ /d/ make?', ['bed','bad','bid','bud'], 'bed'),
  _q('beginner','oral_blending',4,2,'phonics', 'What word does /m/ /a/ /p/ make?', ['map','mop','mat','mud'], 'map'),
  _q('beginner','oral_blending',4,2,'phonics', 'What word does /t/ /o/ /p/ make?', ['top','tap','tip','tub'], 'top'),
  _q('beginner','oral_blending',4,2,'phonics', 'What word does /r/ /e/ /d/ make?', ['red','rod','rid','rub'], 'red'),
  _q('beginner','oral_blending',4,2,'phonics', 'What word does /l/ /e/ /g/ make?', ['leg','log','lag','lip'], 'leg'),
  _q('beginner','oral_blending',4,2,'phonics', 'What word does /p/ /i/ /g/ make?', ['pig','peg','pug','pat'], 'pig'),

  // ══════════════════════════════════════════════════════════════════════════
  // WEEK 5 — Initial Sounds s, a, t (letter_sound)
  // Focus: recognise/produce /s/, /a/, /t/ — identify objects, trace letters
  // ══════════════════════════════════════════════════════════════════════════

  // Set 1
  _q('beginner','letter_sound',5,1,'phonics', 'Which word starts with /s/?', ['sun','gun','fun','bun'], 'sun'),
  _q('beginner','letter_sound',5,1,'phonics', 'Which word starts with /a/?', ['ant','bat','cup','dog'], 'ant'),
  _q('beginner','letter_sound',5,1,'phonics', 'Which word starts with /t/?', ['top','hop','pop','mop'], 'top'),
  _q('beginner','letter_sound',5,1,'phonics', 'What sound does "s" make?', ['/s/','/z/','/sh/','/t/'], '/s/'),
  _q('beginner','letter_sound',5,1,'phonics', 'What sound does "a" make in "ant"?', ['/a/','/e/','/o/','/u/'], '/a/'),
  _q('beginner','letter_sound',5,1,'phonics', 'What sound does "t" make?', ['/t/','/d/','/ch/','/s/'], '/t/'),
  _q('beginner','letter_sound',5,1,'phonics', 'Which word starts with /s/?', ['sit','bit','hit','kit'], 'sit'),
  _q('beginner','letter_sound',5,1,'phonics', 'Which word starts with /a/?', ['arm','big','cup','dig'], 'arm'),
  _q('beginner','letter_sound',5,1,'phonics', 'Which word starts with /t/?', ['tin','bin','fin','pin'], 'tin'),
  _q('beginner','letter_sound',5,1,'phonics', 'What letter does "tap" start with?', ['t','d','b','p'], 't'),

  // Set 2
  _q('beginner','letter_sound',5,2,'phonics', 'Which word starts with /s/?', ['sad','bad','dad','mad'], 'sad'),
  _q('beginner','letter_sound',5,2,'phonics', 'Which word starts with /a/?', ['apple','mango','pear','lime'], 'apple'),
  _q('beginner','letter_sound',5,2,'phonics', 'Which word starts with /t/?', ['tap','cap','lap','map'], 'tap'),
  _q('beginner','letter_sound',5,2,'phonics', 'What letter does "sun" start with?', ['s','z','c','g'], 's'),
  _q('beginner','letter_sound',5,2,'phonics', 'What letter does "ant" start with?', ['a','e','i','o'], 'a'),
  _q('beginner','letter_sound',5,2,'phonics', 'What letter does "top" start with?', ['t','d','p','b'], 't'),
  _q('beginner','letter_sound',5,2,'phonics', 'Which word starts with /s/?', ['sock','rock','dock','lock'], 'sock'),
  _q('beginner','letter_sound',5,2,'phonics', 'Which word starts with /t/?', ['tent','bent','dent','rent'], 'tent'),
  _q('beginner','letter_sound',5,2,'phonics', 'Which word does NOT start with /s/?', ['sat','sip','sun','bat'], 'bat'),
  _q('beginner','letter_sound',5,2,'phonics', 'Which word does NOT start with /t/?', ['tap','tin','top','cup'], 'cup'),

  // ══════════════════════════════════════════════════════════════════════════
  // WEEK 6 — Initial Sounds p, i, n (letter_sound)
  // Focus: /p/, /i/, /n/ — sort pictures, trace and copy
  // ══════════════════════════════════════════════════════════════════════════

  // Set 1
  _q('beginner','letter_sound',6,1,'phonics', 'Which word starts with /p/?', ['pen','hen','ten','den'], 'pen'),
  _q('beginner','letter_sound',6,1,'phonics', 'Which word starts with /i/?', ['ink','ant','egg','oak'], 'ink'),
  _q('beginner','letter_sound',6,1,'phonics', 'Which word starts with /n/?', ['net','bet','set','get'], 'net'),
  _q('beginner','letter_sound',6,1,'phonics', 'What sound does "p" make?', ['/p/','/b/','/f/','/d/'], '/p/'),
  _q('beginner','letter_sound',6,1,'phonics', 'What sound does "i" make in "ink"?', ['/i/','/e/','/a/','/o/'], '/i/'),
  _q('beginner','letter_sound',6,1,'phonics', 'What sound does "n" make?', ['/n/','/m/','/ng/','/l/'], '/n/'),
  _q('beginner','letter_sound',6,1,'phonics', 'Which word starts with /p/?', ['pot','got','lot','hot'], 'pot'),
  _q('beginner','letter_sound',6,1,'phonics', 'Which word starts with /n/?', ['nap','cap','lap','tap'], 'nap'),
  _q('beginner','letter_sound',6,1,'phonics', 'What letter does "pin" start with?', ['p','b','d','q'], 'p'),
  _q('beginner','letter_sound',6,1,'phonics', 'What letter does "nose" start with?', ['n','m','b','d'], 'n'),

  // Set 2
  _q('beginner','letter_sound',6,2,'phonics', 'Which word starts with /p/?', ['pig','big','dig','wig'], 'pig'),
  _q('beginner','letter_sound',6,2,'phonics', 'Which word starts with /i/?', ['itch','etch','arch','each'], 'itch'),
  _q('beginner','letter_sound',6,2,'phonics', 'Which word starts with /n/?', ['nod','rod','cod','pod'], 'nod'),
  _q('beginner','letter_sound',6,2,'phonics', 'What letter does "peg" start with?', ['p','b','d','g'], 'p'),
  _q('beginner','letter_sound',6,2,'phonics', 'What letter does "ink" start with?', ['i','e','a','o'], 'i'),
  _q('beginner','letter_sound',6,2,'phonics', 'What letter does "nut" start with?', ['n','m','b','p'], 'n'),
  _q('beginner','letter_sound',6,2,'phonics', 'Which word starts with /p/?', ['pug','bug','mug','jug'], 'pug'),
  _q('beginner','letter_sound',6,2,'phonics', 'Which word starts with /n/?', ['nut','but','cut','gut'], 'nut'),
  _q('beginner','letter_sound',6,2,'phonics', 'Which word does NOT start with /p/?', ['pat','pin','pot','bag'], 'bag'),
  _q('beginner','letter_sound',6,2,'phonics', 'Which word does NOT start with /n/?', ['nap','net','nod','mop'], 'mop'),

  // ══════════════════════════════════════════════════════════════════════════
  // WEEK 7 — Initial Sounds m, d, g (letter_sound)
  // Focus: /m/, /d/, /g/ — match letters to pictures, form letters
  // ══════════════════════════════════════════════════════════════════════════

  // Set 1
  _q('beginner','letter_sound',7,1,'phonics', 'Which word starts with /m/?', ['man','ban','fan','ran'], 'man'),
  _q('beginner','letter_sound',7,1,'phonics', 'Which word starts with /d/?', ['dog','log','fog','hog'], 'dog'),
  _q('beginner','letter_sound',7,1,'phonics', 'Which word starts with /g/?', ['gap','tap','map','cap'], 'gap'),
  _q('beginner','letter_sound',7,1,'phonics', 'What sound does "m" make?', ['/m/','/n/','/b/','/p/'], '/m/'),
  _q('beginner','letter_sound',7,1,'phonics', 'What sound does "d" make?', ['/d/','/t/','/b/','/g/'], '/d/'),
  _q('beginner','letter_sound',7,1,'phonics', 'What sound does "g" make in "got"?', ['/g/','/j/','/k/','/d/'], '/g/'),
  _q('beginner','letter_sound',7,1,'phonics', 'Which word starts with /m/?', ['mug','bug','dug','hug'], 'mug'),
  _q('beginner','letter_sound',7,1,'phonics', 'Which word starts with /d/?', ['den','ten','hen','pen'], 'den'),
  _q('beginner','letter_sound',7,1,'phonics', 'What letter does "moon" start with?', ['m','n','b','p'], 'm'),
  _q('beginner','letter_sound',7,1,'phonics', 'What letter does "dog" start with?', ['d','b','g','p'], 'd'),

  // Set 2
  _q('beginner','letter_sound',7,2,'phonics', 'Which word starts with /m/?', ['mat','bat','cat','fat'], 'mat'),
  _q('beginner','letter_sound',7,2,'phonics', 'Which word starts with /d/?', ['dig','big','fig','wig'], 'dig'),
  _q('beginner','letter_sound',7,2,'phonics', 'Which word starts with /g/?', ['got','bot','lot','dot'], 'got'),
  _q('beginner','letter_sound',7,2,'phonics', 'What letter does "mango" start with?', ['m','n','b','p'], 'm'),
  _q('beginner','letter_sound',7,2,'phonics', 'What letter does "duck" start with?', ['d','b','g','p'], 'd'),
  _q('beginner','letter_sound',7,2,'phonics', 'What letter does "goat" start with?', ['g','c','j','d'], 'g'),
  _q('beginner','letter_sound',7,2,'phonics', 'Which word starts with /g/?', ['girl','bird','curl','world'], 'girl'),
  _q('beginner','letter_sound',7,2,'phonics', 'Which word does NOT start with /m/?', ['man','mat','mug','bat'], 'bat'),
  _q('beginner','letter_sound',7,2,'phonics', 'Which word does NOT start with /d/?', ['dog','dig','dot','nap'], 'nap'),
  _q('beginner','letter_sound',7,2,'phonics', 'Which word does NOT start with /g/?', ['gap','got','gun','top'], 'top'),

  // ══════════════════════════════════════════════════════════════════════════
  // WEEK 8 — Initial Sounds o, c, k (letter_sound)
  // Focus: /o/, /c/, /k/ — begin reading single letters aloud
  // ══════════════════════════════════════════════════════════════════════════

  // Set 1
  _q('beginner','letter_sound',8,1,'phonics', 'Which word starts with /o/?', ['on','in','an','un'], 'on'),
  _q('beginner','letter_sound',8,1,'phonics', 'Which word starts with /c/?', ['cat','bat','rat','hat'], 'cat'),
  _q('beginner','letter_sound',8,1,'phonics', 'Which word starts with /k/?', ['king','ring','sing','ding'], 'king'),
  _q('beginner','letter_sound',8,1,'phonics', 'What sound does "o" make in "on"?', ['/o/','/a/','/e/','/u/'], '/o/'),
  _q('beginner','letter_sound',8,1,'phonics', 'What sound does "c" make in "cup"?', ['/k/','/s/','/ch/','/g/'], '/k/'),
  _q('beginner','letter_sound',8,1,'phonics', 'What sound does "k" make?', ['/k/','/g/','/j/','/s/'], '/k/'),
  _q('beginner','letter_sound',8,1,'phonics', 'Which word starts with /c/?', ['cup','pup','sup','tup'], 'cup'),
  _q('beginner','letter_sound',8,1,'phonics', 'Which word starts with /k/?', ['kit','bit','hit','sit'], 'kit'),
  _q('beginner','letter_sound',8,1,'phonics', 'What letter does "orange" start with?', ['o','a','e','u'], 'o'),
  _q('beginner','letter_sound',8,1,'phonics', 'What letter does "kite" start with?', ['k','c','g','j'], 'k'),

  // Set 2
  _q('beginner','letter_sound',8,2,'phonics', 'Which word starts with /o/?', ['odd','add','and','end'], 'odd'),
  _q('beginner','letter_sound',8,2,'phonics', 'Which word starts with /c/?', ['can','ban','fan','man'], 'can'),
  _q('beginner','letter_sound',8,2,'phonics', 'Which word starts with /k/?', ['kid','bid','did','rid'], 'kid'),
  _q('beginner','letter_sound',8,2,'phonics', 'What letter does "cow" start with?', ['c','k','s','g'], 'c'),
  _q('beginner','letter_sound',8,2,'phonics', 'What letter does "key" start with?', ['k','c','g','j'], 'k'),
  _q('beginner','letter_sound',8,2,'phonics', 'What letter does "ox" start with?', ['o','a','e','u'], 'o'),
  _q('beginner','letter_sound',8,2,'phonics', 'Which word does NOT start with /c/?', ['cat','cup','can','top'], 'top'),
  _q('beginner','letter_sound',8,2,'phonics', 'Which word does NOT start with /k/?', ['kit','key','king','man'], 'man'),
  _q('beginner','letter_sound',8,2,'phonics', 'Which word starts with /c/?', ['cot','got','lot','hot'], 'cot'),
  _q('beginner','letter_sound',8,2,'phonics', 'Which word starts with /k/?', ['keep','deep','seep','reep'], 'keep'),

  // ══════════════════════════════════════════════════════════════════════════
  // WEEK 9 — Initial Sounds e, u, r (letter_sound)
  // Focus: /e/, /u/, /r/ — identify initial sounds, match letter to object
  // ══════════════════════════════════════════════════════════════════════════

  // Set 1
  _q('beginner','letter_sound',9,1,'phonics', 'Which word starts with /e/?', ['egg','apple','ink','oak'], 'egg'),
  _q('beginner','letter_sound',9,1,'phonics', 'Which word starts with /u/?', ['up','in','on','an'], 'up'),
  _q('beginner','letter_sound',9,1,'phonics', 'Which word starts with /r/?', ['run','bun','fun','sun'], 'run'),
  _q('beginner','letter_sound',9,1,'phonics', 'What sound does "e" make in "egg"?', ['/e/','/a/','/i/','/o/'], '/e/'),
  _q('beginner','letter_sound',9,1,'phonics', 'What sound does "u" make in "up"?', ['/u/','/o/','/a/','/i/'], '/u/'),
  _q('beginner','letter_sound',9,1,'phonics', 'What sound does "r" make?', ['/r/','/l/','/w/','/n/'], '/r/'),
  _q('beginner','letter_sound',9,1,'phonics', 'Which word starts with /e/?', ['end','and','old','ink'], 'end'),
  _q('beginner','letter_sound',9,1,'phonics', 'Which word starts with /u/?', ['urn','born','corn','horn'], 'urn'),
  _q('beginner','letter_sound',9,1,'phonics', 'What letter does "elephant" start with?', ['e','a','i','o'], 'e'),
  _q('beginner','letter_sound',9,1,'phonics', 'What letter does "rabbit" start with?', ['r','l','n','m'], 'r'),

  // Set 2
  _q('beginner','letter_sound',9,2,'phonics', 'Which word starts with /e/?', ['elf','bat','cup','dog'], 'elf'),
  _q('beginner','letter_sound',9,2,'phonics', 'Which word starts with /u/?', ['under','over','inner','outer'], 'under'),
  _q('beginner','letter_sound',9,2,'phonics', 'Which word starts with /r/?', ['rat','bat','cat','fat'], 'rat'),
  _q('beginner','letter_sound',9,2,'phonics', 'What letter does "umbrella" start with?', ['u','a','e','o'], 'u'),
  _q('beginner','letter_sound',9,2,'phonics', 'What letter does "rope" start with?', ['r','l','n','m'], 'r'),
  _q('beginner','letter_sound',9,2,'phonics', 'What letter does "ear" start with?', ['e','a','i','o'], 'e'),
  _q('beginner','letter_sound',9,2,'phonics', 'Which word does NOT start with /r/?', ['run','rat','rip','sun'], 'sun'),
  _q('beginner','letter_sound',9,2,'phonics', 'Which word does NOT start with /e/?', ['egg','end','elf','bat'], 'bat'),
  _q('beginner','letter_sound',9,2,'phonics', 'Which word starts with /r/?', ['rip','dip','sip','tip'], 'rip'),
  _q('beginner','letter_sound',9,2,'phonics', 'Which word starts with /u/?', ['ugly','eagle','icy','open'], 'ugly'),

  // ══════════════════════════════════════════════════════════════════════════
  // WEEK 10 — Initial Sounds h, b, f (letter_sound)
  // Focus: /h/, /b/, /f/ — initial sound sorting game, trace letters
  // ══════════════════════════════════════════════════════════════════════════

  // Set 1
  _q('beginner','letter_sound',10,1,'phonics', 'Which word starts with /h/?', ['hat','bat','cat','rat'], 'hat'),
  _q('beginner','letter_sound',10,1,'phonics', 'Which word starts with /b/?', ['bat','cat','rat','hat'], 'bat'),
  _q('beginner','letter_sound',10,1,'phonics', 'Which word starts with /f/?', ['fish','dish','wish','swish'], 'fish'),
  _q('beginner','letter_sound',10,1,'phonics', 'What sound does "h" make?', ['/h/','/ch/','/sh/','/wh/'], '/h/'),
  _q('beginner','letter_sound',10,1,'phonics', 'What sound does "b" make?', ['/b/','/d/','/p/','/g/'], '/b/'),
  _q('beginner','letter_sound',10,1,'phonics', 'What sound does "f" make?', ['/f/','/v/','/th/','/s/'], '/f/'),
  _q('beginner','letter_sound',10,1,'phonics', 'Which word starts with /h/?', ['hop','mop','top','cop'], 'hop'),
  _q('beginner','letter_sound',10,1,'phonics', 'Which word starts with /b/?', ['bus','cup','dig','egg'], 'bus'),
  _q('beginner','letter_sound',10,1,'phonics', 'What letter does "hen" start with?', ['h','b','f','n'], 'h'),
  _q('beginner','letter_sound',10,1,'phonics', 'What letter does "frog" start with?', ['f','b','d','p'], 'f'),

  // Set 2
  _q('beginner','letter_sound',10,2,'phonics', 'Which word starts with /h/?', ['him','dim','Kim','rim'], 'him'),
  _q('beginner','letter_sound',10,2,'phonics', 'Which word starts with /b/?', ['big','dig','fig','wig'], 'big'),
  _q('beginner','letter_sound',10,2,'phonics', 'Which word starts with /f/?', ['fan','ban','can','man'], 'fan'),
  _q('beginner','letter_sound',10,2,'phonics', 'What letter does "ball" start with?', ['b','d','p','g'], 'b'),
  _q('beginner','letter_sound',10,2,'phonics', 'What letter does "house" start with?', ['h','b','f','n'], 'h'),
  _q('beginner','letter_sound',10,2,'phonics', 'What letter does "fox" start with?', ['f','v','b','p'], 'f'),
  _q('beginner','letter_sound',10,2,'phonics', 'Which word does NOT start with /b/?', ['bat','bin','bug','cup'], 'cup'),
  _q('beginner','letter_sound',10,2,'phonics', 'Which word does NOT start with /f/?', ['fan','fat','fog','bat'], 'bat'),
  _q('beginner','letter_sound',10,2,'phonics', 'Which word starts with /h/?', ['hot','not','lot','dot'], 'hot'),
  _q('beginner','letter_sound',10,2,'phonics', 'Which word starts with /b/?', ['bed','red','led','fed'], 'bed'),

  // ══════════════════════════════════════════════════════════════════════════
  // WEEK 11 — Rhyme & Alliteration Play (rhyme + alliteration)
  // Focus: generate rhymes, identify alliterative pairs, tongue twisters
  // ══════════════════════════════════════════════════════════════════════════

  // Set 1
  _q('beginner','rhyme',11,1,'phonics', 'Which word rhymes with "cat"?', ['bat','dog','cup','sun'], 'bat'),
  _q('beginner','alliteration',11,1,'phonics', 'Which pair starts with the same sound?', ['dog / door','fan / fish','bed / bug','pen / pot'], 'fan / fish'),
  _q('beginner','rhyme',11,1,'phonics', 'Which word rhymes with "big"?', ['pig','pan','bed','top'], 'pig'),
  _q('beginner','alliteration',11,1,'phonics', '"Tiny tigers talk." What sound is repeated?', ['/t/','/s/','/b/','/k/'], '/t/'),
  _q('beginner','rhyme',11,1,'phonics', 'Which word rhymes with "sun"?', ['run','map','lid','fog'], 'run'),
  _q('beginner','alliteration',11,1,'phonics', 'What sound do "log" and "lamp" both start with?', ['/l/','/r/','/n/','/s/'], '/l/'),
  _q('beginner','rhyme',11,1,'phonics', 'Which word does NOT rhyme with "hop"?', ['top','mop','cop','bat'], 'bat'),
  _q('beginner','alliteration',11,1,'phonics', '"Green grapes grow." What sound is repeated?', ['/g/','/r/','/n/','/p/'], '/g/'),
  _q('beginner','rhyme',11,1,'phonics', 'Which two words rhyme?', ['ring / sing','ring / bat','cup / hot','leg / log'], 'ring / sing'),
  _q('beginner','alliteration',11,1,'phonics', 'Which two words start with the same sound?', ['hen / hat','top / mop','sun / bin','leg / dog'], 'hen / hat'),

  // Set 2
  _q('beginner','alliteration',11,2,'phonics', '"Peter Piper picked peppers." What sound is repeated?', ['/p/','/t/','/k/','/s/'], '/p/'),
  _q('beginner','rhyme',11,2,'phonics', 'Which word rhymes with "bed"?', ['red','bat','cup','hot'], 'red'),
  _q('beginner','alliteration',11,2,'phonics', 'Which pair starts with the same sound?', ['well / wind','bag / dog','hot / pot','fat / bat'], 'well / wind'),
  _q('beginner','rhyme',11,2,'phonics', 'Which word rhymes with "fog"?', ['log','bat','hen','sip'], 'log'),
  _q('beginner','alliteration',11,2,'phonics', 'What sound do "top" and "ten" both start with?', ['/t/','/s/','/d/','/p/'], '/t/'),
  _q('beginner','rhyme',11,2,'phonics', 'Which word rhymes with "cup"?', ['pup','bat','hen','fog'], 'pup'),
  _q('beginner','alliteration',11,2,'phonics', '"Sally sells seashells." What sound is repeated?', ['/s/','/sh/','/l/','/n/'], '/s/'),
  _q('beginner','rhyme',11,2,'phonics', 'Which two words rhyme?', ['cat / bat','cat / cut','bat / bit','sat / set'], 'cat / bat'),
  _q('beginner','alliteration',11,2,'phonics', 'Which pair does NOT alliterate?', ['dog / door','cat / car','sun / sock','bat / dog'], 'bat / dog'),
  _q('beginner','rhyme',11,2,'phonics', 'Which word does NOT rhyme with "hen"?', ['ten','pen','den','bat'], 'bat'),

  // ══════════════════════════════════════════════════════════════════════════
  // WEEK 12 — Oral Blending & Review (oral_blending + letter_sound)
  // Focus: blend 2–3 phoneme words, review all 12 initial sounds taught
  // ══════════════════════════════════════════════════════════════════════════

  // Set 1
  _q('beginner','oral_blending',12,1,'phonics', 'What word does /s/ /a/ /t/ make?', ['sat','set','sit','sot'], 'sat'),
  _q('beginner','letter_sound',12,1,'phonics', 'What sound does "s" make?', ['/s/','/z/','/sh/','/t/'], '/s/'),
  _q('beginner','oral_blending',12,1,'phonics', 'What word does /p/ /i/ /n/ make?', ['pin','pan','pun','pen'], 'pin'),
  _q('beginner','letter_sound',12,1,'phonics', 'What sound does "p" make?', ['/p/','/b/','/f/','/d/'], '/p/'),
  _q('beginner','oral_blending',12,1,'phonics', 'What word does /m/ /u/ /g/ make?', ['mug','mag','meg','mog'], 'mug'),
  _q('beginner','letter_sound',12,1,'phonics', 'What sound does "m" make?', ['/m/','/n/','/b/','/p/'], '/m/'),
  _q('beginner','oral_blending',12,1,'phonics', 'What word does /d/ /o/ /t/ make?', ['dot','dat','dit','dut'], 'dot'),
  _q('beginner','letter_sound',12,1,'phonics', 'What sound does "d" make?', ['/d/','/t/','/b/','/g/'], '/d/'),
  _q('beginner','oral_blending',12,1,'phonics', 'What word does /g/ /e/ /t/ make?', ['get','got','gut','git'], 'get'),
  _q('beginner','letter_sound',12,1,'phonics', 'What letter does "goat" start with?', ['g','c','j','d'], 'g'),

  // Set 2
  _q('beginner','oral_blending',12,2,'phonics', 'What word does /o/ /n/ make?', ['on','in','an','un'], 'on'),
  _q('beginner','letter_sound',12,2,'phonics', 'What sound does "o" make in "on"?', ['/o/','/a/','/e/','/u/'], '/o/'),
  _q('beginner','oral_blending',12,2,'phonics', 'What word does /c/ /u/ /p/ make?', ['cup','cap','cop','cut'], 'cup'),
  _q('beginner','letter_sound',12,2,'phonics', 'What sound does "c" make in "cup"?', ['/k/','/s/','/ch/','/g/'], '/k/'),
  _q('beginner','oral_blending',12,2,'phonics', 'What word does /k/ /i/ /d/ make?', ['kid','cod','cud','cad'], 'kid'),
  _q('beginner','letter_sound',12,2,'phonics', 'What sound does "k" make?', ['/k/','/g/','/j/','/s/'], '/k/'),
  _q('beginner','oral_blending',12,2,'phonics', 'What word does /e/ /g/ /g/ make?', ['egg','age','ebb','eve'], 'egg'),
  _q('beginner','letter_sound',12,2,'phonics', 'What sound does "e" make in "egg"?', ['/e/','/a/','/i/','/o/'], '/e/'),
  _q('beginner','oral_blending',12,2,'phonics', 'What word does /r/ /u/ /n/ make?', ['run','ran','rin','ron'], 'run'),
  _q('beginner','letter_sound',12,2,'phonics', 'What letter does "rabbit" start with?', ['r','l','n','m'], 'r'),

  // ══════════════════════════════════════════════════════════════════════════
  // WEEK 13 — End-of-Term (rhyme + letter_sound + oral_blending)
  // Focus: oral phonics assessment, nursery rhyme performance, teacher review
  // ══════════════════════════════════════════════════════════════════════════

  // Set 1
  _q('beginner','rhyme',13,1,'phonics', 'Which word rhymes with "cat"?', ['bat','dog','cup','sun'], 'bat'),
  _q('beginner','letter_sound',13,1,'phonics', 'What sound does "s" make?', ['/s/','/z/','/sh/','/t/'], '/s/'),
  _q('beginner','oral_blending',13,1,'phonics', 'What word does /d/ /o/ /g/ make?', ['dog','dig','dug','dot'], 'dog'),
  _q('beginner','letter_sound',13,1,'phonics', 'Which word starts with /p/?', ['pen','hen','ten','den'], 'pen'),
  _q('beginner','rhyme',13,1,'phonics', 'Which two words rhyme?', ['ring / sing','ring / bat','cup / hot','leg / log'], 'ring / sing'),
  _q('beginner','letter_sound',13,1,'phonics', 'What sound does "m" make?', ['/m/','/n/','/b/','/p/'], '/m/'),
  _q('beginner','oral_blending',13,1,'phonics', 'What word does /s/ /u/ /n/ make?', ['sun','son','sin','sat'], 'sun'),
  _q('beginner','alliteration',13,1,'phonics', 'Which pair starts with the same sound?', ['sun / sock','sun / bun','sock / rock','bun / run'], 'sun / sock'),
  _q('beginner','letter_sound',13,1,'phonics', 'Which word starts with /h/?', ['hat','bat','cat','rat'], 'hat'),
  _q('beginner','oral_blending',13,1,'phonics', 'What word does /c/ /a/ /t/ make?', ['cat','cut','cot','cap'], 'cat'),

  // Set 2
  _q('beginner','rhyme',13,2,'phonics', 'Which word rhymes with "hen"?', ['ten','tin','ton','tan'], 'ten'),
  _q('beginner','letter_sound',13,2,'phonics', 'What sound does "b" make?', ['/b/','/d/','/p/','/g/'], '/b/'),
  _q('beginner','oral_blending',13,2,'phonics', 'What word does /m/ /a/ /p/ make?', ['map','mop','mat','mud'], 'map'),
  _q('beginner','letter_sound',13,2,'phonics', 'Which word starts with /f/?', ['fish','dish','wish','swish'], 'fish'),
  _q('beginner','rhyme',13,2,'phonics', 'Which word does NOT rhyme with "hop"?', ['top','mop','cop','bat'], 'bat'),
  _q('beginner','letter_sound',13,2,'phonics', 'What sound does "g" make in "got"?', ['/g/','/j/','/k/','/d/'], '/g/'),
  _q('beginner','oral_blending',13,2,'phonics', 'What word does /h/ /o/ /t/ make?', ['hot','hat','hit','hut'], 'hot'),
  _q('beginner','alliteration',13,2,'phonics', 'What sound do "dog" and "door" both start with?', ['/d/','/b/','/g/','/t/'], '/d/'),
  _q('beginner','letter_sound',13,2,'phonics', 'What letter does "kite" start with?', ['k','c','g','j'], 'k'),
  _q('beginner','oral_blending',13,2,'phonics', 'What word does /r/ /e/ /d/ make?', ['red','rod','rid','rub'], 'red'),

];
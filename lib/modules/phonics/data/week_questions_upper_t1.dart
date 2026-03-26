import 'package:uuid/uuid.dart';
import '../../../core/models/question.dart';

// ignore_for_file: prefer_single_quotes
const _uu = Uuid();

Question _qu(String level, String tag, int week, int set, String type,
    String q, List<String> opts, String ans, {required int term}) =>
    Question(
      id: _uu.v4(), level: level, skillTag: tag,
      weekNumber: week, assessmentSet: set, questionType: type,
      termNumber: term,
      questionText: q, options: opts, correctAnswer: ans,
    );

// ─────────────────────────────────────────────────────────────────────────────
// UPPER — Primary 4–5  (Term 1)
//
// W1  : Morphology: Base Words & Affixes         → prefix, suffix
// W2  : Latin Roots: port, rupt, dict            → prefix, suffix
// W3  : Latin Roots: vis, aud, scrib             → prefix, suffix
// W4  : Greek Roots: graph, phon, scope          → prefix, suffix
// W5  : Multi-Syllable Decoding                  → syllable
// W6  : Spelling: Doubling & Drop-e Rules        → suffix
// W7  : Spelling: -ible vs -able                 → suffix
// W8  : Spelling: -tion vs -sion vs -cion        → suffix
// W9  : Homophones & Confused Words              → homophone
// W10 : Reading: Extended Fiction                → syllable, alternative_spelling
// W11 : Writing: Structured Essay Intro          → prefix, suffix
// W12 : Grammar: Verb Tenses                     → suffix
// W13 : End-of-Term Assessment                   → mixed
//
// Each week: 3 sets × 10 questions = 30 questions
// Question types used: vocabulary, grammar, comprehension
// NOTE: questionType 'comprehension' is NOT read by TTS service.
// ─────────────────────────────────────────────────────────────────────────────

final List<Question> weekQuestionsUpperT1 = [

  // ══════════════════════════════════════════════════════════════════════════
  // WEEK 1 — Morphology: Base Words & Affixes (prefix + suffix)
  // Focus: analyse words by morpheme, identify base + prefix + suffix,
  //        infer meaning from morphemic analysis
  // ══════════════════════════════════════════════════════════════════════════

  // Set 1 — vocabulary
  _qu('upper','prefix',1,1,'vocabulary', 'What is the base word in "uncomfortable"?', ['comfort','uncomfortable','un','able'], 'comfort', term: 1),
  _qu('upper','suffix',1,1,'vocabulary', 'What does the suffix "-ful" mean in "hopeful"?', ['full of','without','again','before'], 'full of', term: 1),
  _qu('upper','prefix',1,1,'vocabulary', 'What does the prefix "mis-" mean in "misread"?', ['wrongly','again','not','before'], 'wrongly', term: 1),
  _qu('upper','suffix',1,1,'vocabulary', 'Which word contains both a prefix and a suffix?', ['uncomfortable','comfort','run','blue'], 'uncomfortable', term: 1),
  _qu('upper','prefix',1,1,'grammar', 'How many morphemes are in the word "rethinking"?', ['3','2','4','1'], '3', term: 1),
  _qu('upper','suffix',1,1,'grammar', 'Which suffix changes a verb into a noun? (e.g. teach → teacher)', ['-er','-ly','-ful','-less'], '-er', term: 1),
  _qu('upper','prefix',1,1,'vocabulary', 'What does "preview" mean?', ['to view before','to view again','to view wrongly','to view without'], 'to view before', term: 1),
  _qu('upper','suffix',1,1,'vocabulary', 'What does "powerless" mean?', ['without power','full of power','too much power','power again'], 'without power', term: 1),
  _qu('upper','prefix',1,1,'grammar', 'Identify the prefix in "impossible".', ['im-','possible','im-pos-','ible'], 'im-', term: 1),
  _qu('upper','suffix',1,1,'grammar', 'Which word uses the suffix "-ness" correctly?', ['sadness','sadly','unsad','saden'], 'sadness', term: 1),

  // Set 2 — vocabulary + grammar
  _qu('upper','prefix',1,2,'vocabulary', 'What does the prefix "over-" mean in "overwork"?', ['too much','not enough','again','before'], 'too much', term: 1),
  _qu('upper','suffix',1,2,'vocabulary', 'What does "careless" mean?', ['without care','full of care','to care again','care before'], 'without care', term: 1),
  _qu('upper','prefix',1,2,'grammar', 'Which word has the prefix "sub-"?', ['submarine','marine','combine','arine'], 'submarine', term: 1),
  _qu('upper','suffix',1,2,'grammar', 'Which suffix makes an adjective from the noun "beauty"?', ['-iful','-ness','-er','-ly'], '-iful', term: 1),
  _qu('upper','prefix',1,2,'vocabulary', 'What does "disagree" mean?', ['to not agree','to agree again','to agree fully','to agree before'], 'to not agree', term: 1),
  _qu('upper','suffix',1,2,'vocabulary', 'What is the meaning of "quickly"?', ['in a quick manner','without quickness','very quick thing','quick again'], 'in a quick manner', term: 1),
  _qu('upper','prefix',1,2,'grammar', 'How many morphemes are in "unhelpful"?', ['3','2','1','4'], '3', term: 1),
  _qu('upper','suffix',1,2,'grammar', 'Which word is built from the base word "act"?', ['reaction','racket','actor','Both reaction and actor'], 'Both reaction and actor', term: 1),
  _qu('upper','prefix',1,2,'vocabulary', 'What does "rewrite" mean?', ['to write again','to write wrongly','to write before','to not write'], 'to write again', term: 1),
  _qu('upper','suffix',1,2,'vocabulary', '"Nation" is the base word. Which word adds a prefix to reverse the idea?', ['denationalise','nationally','national','nationalism'], 'denationalise', term: 1),

  // Set 3 — grammar + vocabulary
  _qu('upper','prefix',1,3,'grammar', 'Which sentence uses a prefix correctly?', ['She will redo her homework.','She will dodo her homework.','She will todo her homework.','She will bedo her homework.'], 'She will redo her homework.', term: 1),
  _qu('upper','suffix',1,3,'grammar', 'Which word correctly adds "-ing" to "run"?', ['running','runing','runeing','runs'], 'running', term: 1),
  _qu('upper','prefix',1,3,'vocabulary', 'What does "international" mean?', ['between nations','one nation','before nations','without nations'], 'between nations', term: 1),
  _qu('upper','suffix',1,3,'vocabulary', 'Which suffix means "the state of being"?', ['-ness','-er','-ful','-re'], '-ness', term: 1),
  _qu('upper','prefix',1,3,'grammar', 'The prefix "bi-" means two. What does "bicycle" literally mean?', ['two wheels','two seats','two gears','two chains'], 'two wheels', term: 1),
  _qu('upper','suffix',1,3,'vocabulary', 'What does "teacher" mean based on its morphemes?', ['one who teaches','to teach again','teaching thing','full of teaching'], 'one who teaches', term: 1),
  _qu('upper','prefix',1,3,'grammar', 'Identify the base word in "transportation".', ['transport','trans','ation','porta'], 'transport', term: 1),
  _qu('upper','suffix',1,3,'vocabulary', 'Which word means "able to be washed"?', ['washable','washer','washing','unwash'], 'washable', term: 1),
  _qu('upper','prefix',1,3,'grammar', 'Which pair shows a base word and its prefixed form?', ['cover / discover','runner / running','play / plays','heat / heater'], 'cover / discover', term: 1),
  _qu('upper','suffix',1,3,'vocabulary', 'What does "fearless" mean?', ['without fear','full of fear','fearing again','to fear before'], 'without fear', term: 1),

  // ══════════════════════════════════════════════════════════════════════════
  // WEEK 2 — Latin Roots: port, rupt, dict (prefix + suffix)
  // Focus: port=carry, rupt=break, dict=say; decode and build words
  // Sets 1 & 2: vocabulary/grammar  |  Set 3: comprehension passage
  // ══════════════════════════════════════════════════════════════════════════

  // Set 1 — vocabulary
  _qu('upper','prefix',2,1,'vocabulary', 'The root "port" means carry. What does "transport" mean?', ['to carry across','to break across','to say across','to push across'], 'to carry across', term: 1),
  _qu('upper','prefix',2,1,'vocabulary', 'The root "rupt" means break. What does "disrupt" mean?', ['to break apart','to carry apart','to say apart','to fix apart'], 'to break apart', term: 1),
  _qu('upper','prefix',2,1,'vocabulary', 'The root "dict" means say. What does "predict" mean?', ['to say before','to say again','to say against','to say without'], 'to say before', term: 1),
  _qu('upper','prefix',2,1,'vocabulary', 'Which word uses the root "port"?', ['export','expect','explain','express'], 'export', term: 1),
  _qu('upper','prefix',2,1,'vocabulary', 'Which word uses the root "rupt"?', ['erupt','erode','errand','error'], 'erupt', term: 1),
  _qu('upper','prefix',2,1,'vocabulary', 'Which word uses the root "dict"?', ['dictate','distant','differ','digest'], 'dictate', term: 1),
  _qu('upper','prefix',2,1,'grammar', 'What does "import" mean? (port = carry, im- = into)', ['to carry into','to carry out','to carry again','to carry under'], 'to carry into', term: 1),
  _qu('upper','prefix',2,1,'vocabulary', 'What does "corrupt" mean? (rupt = break, cor- = completely)', ['completely broken','carry completely','say completely','build completely'], 'completely broken', term: 1),
  _qu('upper','prefix',2,1,'vocabulary', 'What does "contradict" mean? (dict = say, contra- = against)', ['to say against','to carry against','to break against','to build against'], 'to say against', term: 1),
  _qu('upper','prefix',2,1,'grammar', 'Build a word using "port" that means "to carry out of a country".', ['export','import','transport','report'], 'export', term: 1),

  // Set 2 — vocabulary + grammar
  _qu('upper','prefix',2,2,'vocabulary', 'What does "portable" mean?', ['able to be carried','likely to break','able to speak','ready to build'], 'able to be carried', term: 1),
  _qu('upper','prefix',2,2,'vocabulary', 'What does "interrupt" mean? (rupt = break, inter- = between)', ['to break between','to carry between','to say between','to stop between'], 'to break between', term: 1),
  _qu('upper','prefix',2,2,'vocabulary', 'What does "verdict" mean? (dict = say, ver- = truth)', ['a true saying / judgment','a true carrying','a true breaking','a true building'], 'a true saying / judgment', term: 1),
  _qu('upper','prefix',2,2,'grammar', 'Which sentence uses "disrupt" correctly?', ['The noise disrupted the lesson.','The noise disported the lesson.','The noise disproved the lesson.','The noise dispelled the lesson.'], 'The noise disrupted the lesson.', term: 1),
  _qu('upper','prefix',2,2,'grammar', 'Which sentence uses "predict" correctly?', ['Scientists predict rain tomorrow.','Scientists portend rain tomorrow.','Scientists rupture rain tomorrow.','Scientists dictum rain tomorrow.'], 'Scientists predict rain tomorrow.', term: 1),
  _qu('upper','prefix',2,2,'vocabulary', 'The word "reporter" — which root is in it?', ['port','rupt','dict','ject'], 'port', term: 1),
  _qu('upper','prefix',2,2,'vocabulary', 'The word "dictionary" — which root is in it?', ['dict','port','rupt','struct'], 'dict', term: 1),
  _qu('upper','prefix',2,2,'vocabulary', 'What does "abrupt" mean?', ['suddenly breaking off','carrying away','saying loudly','building quickly'], 'suddenly breaking off', term: 1),
  _qu('upper','prefix',2,2,'grammar', 'Choose the correct word: "The volcano began to ___ without warning."', ['erupt','export','dictate','transport'], 'erupt', term: 1),
  _qu('upper','prefix',2,2,'grammar', 'Choose the correct word: "She used a ___ to look up new words."', ['dictionary','portfolio','rupture','contradict'], 'dictionary', term: 1),

  // Set 3 — comprehension (NOT read by TTS)
  _qu('upper','prefix',2,3,'comprehension',
      'PASSAGE: Emeka\'s father works at a busy seaport. Every day, large ships arrive to import goods like rice, sugar, and fabric into Nigeria. Other ships export local products such as palm oil and cocoa to foreign countries. Emeka finds it fascinating that the word "port" comes from the Latin root meaning "to carry" — it also appears in words like "transport", "portable", and "report". His teacher once told him that learning roots helps you predict the meaning of unfamiliar words without a dictionary.\n\nQ: What does the word "import" mean in this passage?',
      ['to carry goods into a country','to carry goods out of a country','to predict new goods','to report on goods'],
      'to carry goods into a country', term: 1),
  _qu('upper','prefix',2,3,'comprehension',
      'Refer to the passage above (Emeka at the seaport).\n\nQ: Which Latin root connects the words "export", "transport", and "portable"?',
      ['port (to carry)','rupt (to break)','dict (to say)','ject (to throw)'],
      'port (to carry)', term: 1),
  _qu('upper','prefix',2,3,'comprehension',
      'Refer to the passage above (Emeka at the seaport).\n\nQ: According to the passage, why is learning roots useful?',
      ['It helps you predict meanings of new words.','It helps you carry goods at a port.','It helps you write dictionary entries.','It helps you transport products abroad.'],
      'It helps you predict meanings of new words.', term: 1),
  _qu('upper','prefix',2,3,'comprehension',
      'Refer to the passage above (Emeka at the seaport).\n\nQ: What does "export" mean based on the root "port"?',
      ['to carry out of a country','to carry into a country','to carry again','to carry under'],
      'to carry out of a country', term: 1),
  _qu('upper','prefix',2,3,'comprehension',
      'Refer to the passage above (Emeka at the seaport).\n\nQ: Which word from the passage means "able to be carried"?',
      ['portable','transport','dictionary','predict'],
      'portable', term: 1),
  _qu('upper','prefix',2,3,'vocabulary', 'Which word shares the same root as "rupture"?', ['interrupt','important','dictate','portable'], 'interrupt', term: 1),
  _qu('upper','prefix',2,3,'vocabulary', 'What does "portfolio" mean? (port = carry, folio = leaf/page)', ['a case for carrying papers','a type of dictionary','a broken container','a saying or quote'], 'a case for carrying papers', term: 1),
  _qu('upper','prefix',2,3,'grammar', 'Fill in the blank: "The dam burst and water ___ through the walls."', ['ruptured','transported','dictated','exported'], 'ruptured', term: 1),
  _qu('upper','prefix',2,3,'vocabulary', 'Which word means "to say the meaning of something out loud"?', ['dictate','rupture','import','portable'], 'dictate', term: 1),
  _qu('upper','prefix',2,3,'grammar', 'Which word correctly completes the sentence: "Please ___ the heavy bags to the car."', ['transport','disrupt','contradict','erupt'], 'transport', term: 1),

  // ══════════════════════════════════════════════════════════════════════════
  // WEEK 3 — Latin Roots: vis, aud, scrib (prefix + suffix)
  // Focus: vis=see, aud=hear, scrib=write; academic sentences
  // ══════════════════════════════════════════════════════════════════════════

  // Set 1 — vocabulary
  _qu('upper','prefix',3,1,'vocabulary', 'The root "vis" means see. What does "visible" mean?', ['able to be seen','able to be heard','able to be written','able to be felt'], 'able to be seen', term: 1),
  _qu('upper','prefix',3,1,'vocabulary', 'The root "aud" means hear. What does "audible" mean?', ['able to be heard','able to be seen','able to be read','able to be touched'], 'able to be heard', term: 1),
  _qu('upper','prefix',3,1,'vocabulary', 'The root "scrib" means write. What does "describe" mean?', ['to write about / explain','to hear about','to see clearly','to build up'], 'to write about / explain', term: 1),
  _qu('upper','prefix',3,1,'vocabulary', 'What does "invisible" mean? (vis = see, in- = not)', ['not able to be seen','not able to be heard','not able to be read','not able to be felt'], 'not able to be seen', term: 1),
  _qu('upper','prefix',3,1,'vocabulary', 'What does "auditorium" mean? (aud = hear)', ['a place for hearing/watching performances','a place for writing','a place for seeing only','a place for building'], 'a place for hearing/watching performances', term: 1),
  _qu('upper','prefix',3,1,'vocabulary', 'What does "prescribe" mean? (scrib = write, pre- = before)', ['to write instructions before','to hear instructions','to see instructions','to carry instructions'], 'to write instructions before', term: 1),
  _qu('upper','prefix',3,1,'grammar', 'Which word contains the root "vis"?', ['vision','audition','inscription','rupture'], 'vision', term: 1),
  _qu('upper','prefix',3,1,'grammar', 'Which word contains the root "aud"?', ['audience','vision','scribble','portable'], 'audience', term: 1),
  _qu('upper','prefix',3,1,'grammar', 'Which word contains the root "scrib/script"?', ['manuscript','audience','visible','erupt'], 'manuscript', term: 1),
  _qu('upper','prefix',3,1,'vocabulary', 'What does "supervise" mean? (vis = see, super- = over)', ['to oversee / watch over','to hear over','to write over','to carry over'], 'to oversee / watch over', term: 1),

  // Set 2 — vocabulary + grammar
  _qu('upper','prefix',3,2,'vocabulary', 'What does "visual" mean?', ['relating to sight','relating to sound','relating to writing','relating to touch'], 'relating to sight', term: 1),
  _qu('upper','prefix',3,2,'vocabulary', 'What does "audio" mean?', ['relating to sound','relating to sight','relating to writing','relating to movement'], 'relating to sound', term: 1),
  _qu('upper','prefix',3,2,'vocabulary', 'What does "inscription" mean?', ['words written on a surface','words spoken aloud','something seen clearly','a loud sound'], 'words written on a surface', term: 1),
  _qu('upper','prefix',3,2,'grammar', 'Choose the correct word: "The sign was ___ from the road."', ['visible','audible','scribbled','ruptured'], 'visible', term: 1),
  _qu('upper','prefix',3,2,'grammar', 'Choose the correct word: "The music was not ___ from outside."', ['audible','visible','portable','inscribed'], 'audible', term: 1),
  _qu('upper','prefix',3,2,'grammar', 'Choose the correct word: "The doctor will ___ a medicine for you."', ['prescribe','supervise','audition','envision'], 'prescribe', term: 1),
  _qu('upper','prefix',3,2,'vocabulary', 'What does "subscribe" mean? (scrib = write, sub- = under/to)', ['to sign up / write one\'s name for something','to write under something','to hear something under','to see something under'], 'to sign up / write one\'s name for something', term: 1),
  _qu('upper','prefix',3,2,'vocabulary', 'What does "revise" mean? (vis = see, re- = again)', ['to look at again and improve','to hear again','to write again','to carry again'], 'to look at again and improve', term: 1),
  _qu('upper','prefix',3,2,'grammar', 'Build a word using "aud" that names a person who attends a performance.', ['audience','auditor','audition','All of the above'], 'audience', term: 1),
  _qu('upper','prefix',3,2,'vocabulary', 'What does "scribble" mean?', ['to write carelessly','to see clearly','to hear faintly','to carry papers'], 'to write carelessly', term: 1),

  // Set 3 — comprehension (NOT read by TTS)
  _qu('upper','prefix',3,3,'comprehension',
      'PASSAGE: The school hall was filled with an excited audience. On stage, the drama teacher supervised the final rehearsal before the big performance. A large screen displayed a visual timeline of events in the play. The script — handwritten by the students — had been revised three times. Each actor had memorised their lines so well that every word was clearly audible even at the back of the hall. One inscription on the programme read: "The pen is mightier than the sword."\n\nQ: What does "supervised" mean in this passage?',
      ['watched over carefully','wrote instructions for','heard the performance','carried the equipment'],
      'watched over carefully', term: 1),
  _qu('upper','prefix',3,3,'comprehension',
      'Refer to the passage above (school drama performance).\n\nQ: What does "audible" mean as used in the passage?',
      ['able to be heard clearly','able to be seen clearly','able to be written neatly','able to be carried easily'],
      'able to be heard clearly', term: 1),
  _qu('upper','prefix',3,3,'comprehension',
      'Refer to the passage above (school drama performance).\n\nQ: The script had been "revised three times." Which root in "revised" means to see?',
      ['vis','re','ed','scri'],
      'vis', term: 1),
  _qu('upper','prefix',3,3,'comprehension',
      'Refer to the passage above (school drama performance).\n\nQ: What does "inscription" mean as used in the passage?',
      ['words written on a surface','words spoken aloud','a picture displayed on screen','a sound heard clearly'],
      'words written on a surface', term: 1),
  _qu('upper','prefix',3,3,'comprehension',
      'Refer to the passage above (school drama performance).\n\nQ: What does "visual timeline" most likely mean?',
      ['a timeline you can see displayed as a picture','a timeline you can hear','a timeline written in the script','a timeline carried on stage'],
      'a timeline you can see displayed as a picture', term: 1),
  _qu('upper','prefix',3,3,'vocabulary', 'What does "envision" mean?', ['to imagine or picture something','to hear something','to write something','to carry something'], 'to imagine or picture something', term: 1),
  _qu('upper','prefix',3,3,'vocabulary', 'What does "transcript" mean? (script = written)', ['a written copy of spoken words','a picture of something seen','a recording of something heard','a report carried away'], 'a written copy of spoken words', term: 1),
  _qu('upper','prefix',3,3,'grammar', 'Which word correctly completes the sentence: "The teacher will ___ the students during the exam."', ['supervise','subscribe','audition','inscribe'], 'supervise', term: 1),
  _qu('upper','prefix',3,3,'vocabulary', 'What does "audiovisual" mean?', ['involving both sound and sight','involving writing and sight','involving carrying and hearing','involving speaking and writing'], 'involving both sound and sight', term: 1),
  _qu('upper','prefix',3,3,'grammar', 'Which sentence uses "describe" correctly?', ['Please describe what you saw.','Please describe what you heard loudly.','Please describe your carry.','Please describe the rupture silently.'], 'Please describe what you saw.', term: 1),

  // ══════════════════════════════════════════════════════════════════════════
  // WEEK 4 — Greek Roots: graph, phon, scope (prefix + suffix)
  // Focus: graph=write, phon=sound, scope=see/examine
  // ══════════════════════════════════════════════════════════════════════════

  // Set 1 — vocabulary
  _qu('upper','prefix',4,1,'vocabulary', 'The root "graph" means write. What does "photograph" mean?', ['an image written by light','a sound written down','a view of something far','a spoken description'], 'an image written by light', term: 1),
  _qu('upper','prefix',4,1,'vocabulary', 'The root "phon" means sound. What does "phonics" relate to?', ['the sounds of language','the writing of language','the study of plants','the view of stars'], 'the sounds of language', term: 1),
  _qu('upper','prefix',4,1,'vocabulary', 'The root "scope" means to see or examine. What does "telescope" mean?', ['an instrument for seeing far','an instrument for hearing','an instrument for writing','an instrument for carrying'], 'an instrument for seeing far', term: 1),
  _qu('upper','prefix',4,1,'vocabulary', 'What does "autograph" mean? (auto = self, graph = write)', ['one\'s own signature','a photo of oneself','a sound recording','a view of the self'], 'one\'s own signature', term: 1),
  _qu('upper','prefix',4,1,'vocabulary', 'What does "microphone" mean? (micro = small, phon = sound)', ['a device to amplify small sounds','a device to take small pictures','a device to see small things','a device to write small words'], 'a device to amplify small sounds', term: 1),
  _qu('upper','prefix',4,1,'vocabulary', 'What does "microscope" mean? (micro = small, scope = see)', ['an instrument for viewing tiny things','an instrument for hearing tiny sounds','an instrument for writing tiny words','an instrument for carrying small objects'], 'an instrument for viewing tiny things', term: 1),
  _qu('upper','prefix',4,1,'grammar', 'Which word contains the root "graph"?', ['biography','biology','biopsy','biome'], 'biography', term: 1),
  _qu('upper','prefix',4,1,'grammar', 'Which word contains the root "phon"?', ['symphony','sympathy','symbiosis','symbolic'], 'symphony', term: 1),
  _qu('upper','prefix',4,1,'grammar', 'Which word contains the root "scope"?', ['periscope','perimeter','permit','persist'], 'periscope', term: 1),
  _qu('upper','prefix',4,1,'vocabulary', 'What does "geography" mean? (geo = earth, graph = write)', ['the study/writing about the earth','the study of living things','the study of distant things','the study of sounds'], 'the study/writing about the earth', term: 1),

  // Set 2 — vocabulary + grammar
  _qu('upper','prefix',4,2,'vocabulary', 'What does "biography" mean? (bio = life, graph = write)', ['a written account of someone\'s life','a spoken account of someone\'s life','a picture of someone\'s life','a study of someone\'s sounds'], 'a written account of someone\'s life', term: 1),
  _qu('upper','prefix',4,2,'vocabulary', 'What does "telephone" mean? (tele = far, phon = sound)', ['a device for sending sound over distance','a device for seeing far','a device for writing at a distance','a device for carrying messages'], 'a device for sending sound over distance', term: 1),
  _qu('upper','prefix',4,2,'vocabulary', 'What does "horoscope" mean? (horo = time/hour, scope = see)', ['a chart that claims to predict one\'s future','a device to see distant stars','a record of historical events','a type of written history'], 'a chart that claims to predict one\'s future', term: 1),
  _qu('upper','prefix',4,2,'grammar', 'Choose the correct word: "The scientist used a ___ to observe bacteria."', ['microscope','microphone','telegraph','phonics'], 'microscope', term: 1),
  _qu('upper','prefix',4,2,'grammar', 'Choose the correct word: "The singer spoke into the ___ to be heard."', ['microphone','microscope','photograph','telescope'], 'microphone', term: 1),
  _qu('upper','prefix',4,2,'grammar', 'Choose the correct word: "The astronomer looked through his ___ at the moon."', ['telescope','microphone','autograph','geography'], 'telescope', term: 1),
  _qu('upper','prefix',4,2,'vocabulary', 'What does "phonograph" mean? (phon = sound, graph = write)', ['an early device for recording and playing sound','a device for writing musical notes','a device for viewing music','a device for carrying sound'], 'an early device for recording and playing sound', term: 1),
  _qu('upper','prefix',4,2,'vocabulary', 'What does "graphic" mean?', ['relating to visual images or written work','relating to sounds','relating to examination','relating to carrying'], 'relating to visual images or written work', term: 1),
  _qu('upper','prefix',4,2,'grammar', 'How many Greek roots are in the word "photograph"?', ['2','1','3','0'], '2', term: 1),
  _qu('upper','prefix',4,2,'vocabulary', 'What does "stethoscope" mean? (stetho = chest, scope = examine)', ['an instrument for examining the chest / heart sounds','an instrument for writing chest notes','an instrument for photographing the chest','an instrument for carrying medical tools'], 'an instrument for examining the chest / heart sounds', term: 1),

  // Set 3 — comprehension (NOT read by TTS)
  _qu('upper','prefix',4,3,'comprehension',
      'PASSAGE: Nkechi was fascinated by science. In her biology class, she peered through a microscope to examine a thin slice of leaf. She could see tiny cells in remarkable detail. Later, during a geography lesson, her teacher showed photographs taken from a satellite telescope orbiting the Earth. "These images show how human activity has changed our planet," the teacher explained. After school, Nkechi picked up the microphone at the talent show and sang her favourite symphony. Her voice filled the hall.\n\nQ: Which instrument did Nkechi use to examine the leaf cells?',
      ['microscope','telescope','microphone','phonograph'],
      'microscope', term: 1),
  _qu('upper','prefix',4,3,'comprehension',
      'Refer to the passage above (Nkechi in science and geography).\n\nQ: What does "photographs" tell us about the images, based on the root "graph"?',
      ['They are images captured by light (written by light).','They are images that make sounds.','They are images seen through a telescope only.','They are written reports about the Earth.'],
      'They are images captured by light (written by light).', term: 1),
  _qu('upper','prefix',4,3,'comprehension',
      'Refer to the passage above (Nkechi in science and geography).\n\nQ: What is the purpose of a "microphone" based on the roots "micro" and "phon"?',
      ['To make small sounds louder','To see microscopic things','To write small notes','To carry sounds far'],
      'To make small sounds louder', term: 1),
  _qu('upper','prefix',4,3,'comprehension',
      'Refer to the passage above (Nkechi in science and geography).\n\nQ: What subject used the "telescope" in the passage?',
      ['Geography','Biology','Music','History'],
      'Geography', term: 1),
  _qu('upper','prefix',4,3,'comprehension',
      'Refer to the passage above (Nkechi in science and geography).\n\nQ: What does the teacher say the satellite images show?',
      ['How human activity has changed the planet','How bacteria live under a microscope','How sound travels through a microphone','How to write a biography'],
      'How human activity has changed the planet', term: 1),
  _qu('upper','prefix',4,3,'vocabulary', 'What does "paragraph" mean? (para = beside/section, graph = write)', ['a section of written text','a device for hearing','a tool for seeing','a way of carrying text'], 'a section of written text', term: 1),
  _qu('upper','prefix',4,3,'vocabulary', 'What does "saxophone" have to do with the root "phon"?', ['"phone" means sound — a saxophone produces sound','It has nothing to do with sound','It means to write music','It is used to see music'], '"phone" means sound — a saxophone produces sound', term: 1),
  _qu('upper','prefix',4,3,'grammar', 'Which sentence uses "geography" correctly?', ['We studied the geography of West Africa.','We photographed the geography of West Africa.','We phonics the geography of West Africa.','We scoped the geography of West Africa.'], 'We studied the geography of West Africa.', term: 1),
  _qu('upper','prefix',4,3,'vocabulary', 'What does "kaleidoscope" most likely involve, based on the root "scope"?', ['viewing colourful patterns','hearing musical sounds','writing colourful descriptions','carrying coloured objects'], 'viewing colourful patterns', term: 1),
  _qu('upper','prefix',4,3,'grammar', 'Which word is built from BOTH the roots "phon" and "graph"?', ['phonograph','biography','telescope','microscope'], 'phonograph', term: 1),

  // ══════════════════════════════════════════════════════════════════════════
  // WEEK 5 — Multi-Syllable Decoding (syllable)
  // Focus: decode 4-syllable words by chunking, stress patterns, fluency
  // ══════════════════════════════════════════════════════════════════════════

  // Set 1 — vocabulary + grammar
  _qu('upper','syllable',5,1,'vocabulary', 'How many syllables are in the word "independent"?', ['4','3','5','2'], '4', term: 1),
  _qu('upper','syllable',5,1,'vocabulary', 'How many syllables are in "electricity"?', ['5','4','3','6'], '5', term: 1),
  _qu('upper','syllable',5,1,'grammar', 'Where is the stress in "conversation"?', ['con-ver-SA-tion','CON-ver-sa-tion','con-VER-sa-tion','con-ver-sa-TION'], 'con-ver-SA-tion', term: 1),
  _qu('upper','syllable',5,1,'grammar', 'Divide "independent" into syllables correctly.', ['in-de-pen-dent','ind-ep-end-ent','i-nd-ep-end','inde-pen-dent'], 'in-de-pen-dent', term: 1),
  _qu('upper','syllable',5,1,'vocabulary', 'How many syllables are in "responsible"?', ['4','3','5','2'], '4', term: 1),
  _qu('upper','syllable',5,1,'grammar', 'Divide "electricity" correctly.', ['e-lec-tri-ci-ty','elec-tri-city','e-lec-trici-ty','elec-trict-ity'], 'e-lec-tri-ci-ty', term: 1),
  _qu('upper','syllable',5,1,'vocabulary', 'How many syllables are in "communication"?', ['5','4','6','3'], '5', term: 1),
  _qu('upper','syllable',5,1,'grammar', 'Which word has stress on the SECOND syllable?', ['beau-TI-ful','IM-por-tant','IN-de-pend-ent','COM-mu-ni-cate'], 'beau-TI-ful', term: 1),
  _qu('upper','syllable',5,1,'vocabulary', 'Divide "understanding" into syllables.', ['un-der-stand-ing','under-stand-ing','und-er-stan-ding','u-n-d-e-r-s-t-a-n-d-i-n-g'], 'un-der-stand-ing', term: 1),
  _qu('upper','syllable',5,1,'grammar', 'How many syllables does "approximately" have?', ['5','4','6','3'], '5', term: 1),

  // Set 2 — vocabulary + grammar
  _qu('upper','syllable',5,2,'vocabulary', 'How many syllables are in "celebration"?', ['4','3','5','2'], '4', term: 1),
  _qu('upper','syllable',5,2,'grammar', 'Divide "celebration" correctly.', ['cel-e-bra-tion','celeb-ra-tion','ce-le-bra-tion','cele-bration'], 'cel-e-bra-tion', term: 1),
  _qu('upper','syllable',5,2,'vocabulary', 'How many syllables are in "organisation"?', ['5','4','6','3'], '5', term: 1),
  _qu('upper','syllable',5,2,'grammar', 'Which syllable carries the stress in "examination"?', ['ex-am-i-NA-tion','EX-am-i-na-tion','ex-AM-i-na-tion','ex-am-I-na-tion'], 'ex-am-i-NA-tion', term: 1),
  _qu('upper','syllable',5,2,'vocabulary', 'Which word has exactly 3 syllables?', ['important','communication','independent','electricity'], 'important', term: 1),
  _qu('upper','syllable',5,2,'grammar', 'Divide "individual" into syllables.', ['in-di-vid-u-al','indiv-id-ual','in-divid-ual','indi-vidu-al'], 'in-di-vid-u-al', term: 1),
  _qu('upper','syllable',5,2,'vocabulary', 'How many syllables in "disadvantage"?', ['4','3','5','6'], '4', term: 1),
  _qu('upper','syllable',5,2,'grammar', 'Which part of "education" carries the main stress?', ['ed-u-CA-tion','ED-u-ca-tion','ed-U-ca-tion','ed-u-ca-TION'], 'ed-u-CA-tion', term: 1),
  _qu('upper','syllable',5,2,'vocabulary', 'How many syllables are in "environment"?', ['4','3','5','2'], '4', term: 1),
  _qu('upper','syllable',5,2,'grammar', 'Divide "environment" into syllables.', ['en-vi-ron-ment','envi-ron-ment','en-viron-ment','environ-ment'], 'en-vi-ron-ment', term: 1),

  // Set 3 — comprehension (NOT read by TTS)
  _qu('upper','syllable',5,3,'comprehension',
      'PASSAGE: At the science exhibition, students presented their investigations. Taiwo\'s project was about the relationship between communication and technology. He explained that electricity powers almost every communication device we use today. The audience listened carefully as he described how understanding electromagnetic waves helps scientists improve our environment. His teacher was impressed by his confident pronunciation of difficult multi-syllable words like "electromagnetic", "approximately", and "organisation".\n\nQ: How many syllables are in the word "communication"?',
      ['5','4','6','3'],
      '5', term: 1),
  _qu('upper','syllable',5,3,'comprehension',
      'Refer to the passage above (science exhibition).\n\nQ: Which word in the passage has exactly 4 syllables?',
      ['environment','communication','electromagnetic','approximately'],
      'environment', term: 1),
  _qu('upper','syllable',5,3,'comprehension',
      'Refer to the passage above (science exhibition).\n\nQ: What is Taiwo\'s project about?',
      ['The relationship between communication and technology','The study of electromagnetic waves only','How to pronounce difficult words','The importance of a science exhibition'],
      'The relationship between communication and technology', term: 1),
  _qu('upper','syllable',5,3,'comprehension',
      'Refer to the passage above (science exhibition).\n\nQ: Divide the word "electricity" into syllables.',
      ['e-lec-tri-ci-ty','elec-trici-ty','e-lec-tricity','elec-tric-ity'],
      'e-lec-tri-ci-ty', term: 1),
  _qu('upper','syllable',5,3,'comprehension',
      'Refer to the passage above (science exhibition).\n\nQ: Why was the teacher impressed by Taiwo?',
      ['He pronounced difficult multi-syllable words confidently.','He used electricity to power his display.','He was the only student to present.','He wrote about the environment perfectly.'],
      'He pronounced difficult multi-syllable words confidently.', term: 1),
  _qu('upper','syllable',5,3,'vocabulary', 'How many syllables are in "electromagnetic"?', ['5','4','6','7'], '5', term: 1),
  _qu('upper','syllable',5,3,'grammar', 'Divide "approximately" into syllables.', ['ap-prox-i-mate-ly','ap-proxi-mate-ly','approx-im-ate-ly','ap-prox-imate-ly'], 'ap-prox-i-mate-ly', term: 1),
  _qu('upper','syllable',5,3,'vocabulary', 'Which word has exactly 4 syllables?', ['organisation','independently','individual','communication'], 'independently', term: 1),
  _qu('upper','syllable',5,3,'grammar', 'Which syllable is stressed in "independent"?', ['in-de-PEN-dent','IN-de-pen-dent','in-DE-pen-dent','in-de-pen-DENT'], 'in-de-PEN-dent', term: 1),
  _qu('upper','syllable',5,3,'vocabulary', 'How many syllables are in "extraordinary"?', ['5','4','6','3'], '5', term: 1),

  // ══════════════════════════════════════════════════════════════════════════
  // WEEK 6 — Spelling: Doubling & Drop-e Rules (suffix)
  // Focus: apply doubling rule for VCC words, drop-e before vowel suffixes
  // ══════════════════════════════════════════════════════════════════════════

  // Set 1 — grammar/spelling
  _qu('upper','suffix',6,1,'grammar', 'Which spelling is correct when adding "-ing" to "run"?', ['running','runing','runeing','runns'], 'running', term: 1),
  _qu('upper','suffix',6,1,'grammar', 'Which spelling is correct when adding "-ed" to "stop"?', ['stopped','stoped','stopeed','stopp'], 'stopped', term: 1),
  _qu('upper','suffix',6,1,'grammar', 'Which spelling is correct when adding "-ing" to "make"?', ['making','makeing','makking','makiing'], 'making', term: 1),
  _qu('upper','suffix',6,1,'grammar', 'When do you double the final consonant before adding a vowel suffix?', ['When the word has one short vowel before one final consonant','When the word ends in a silent e','When the word ends in two consonants','When the word has a long vowel'], 'When the word has one short vowel before one final consonant', term: 1),
  _qu('upper','suffix',6,1,'grammar', 'Which spelling is correct when adding "-er" to "big"?', ['bigger','biger','bigeer','biggeer'], 'bigger', term: 1),
  _qu('upper','suffix',6,1,'grammar', 'Which spelling is correct when adding "-ed" to "hope"?', ['hoped','hopeed','hopped','hopd'], 'hoped', term: 1),
  _qu('upper','suffix',6,1,'grammar', 'When do you drop the final "e" before a suffix?', ['When the suffix starts with a vowel','When the suffix starts with a consonant','Always drop e','Never drop e'], 'When the suffix starts with a vowel', term: 1),
  _qu('upper','suffix',6,1,'grammar', 'Which is correct: adding "-ness" to "late"?', ['lateness','latness','lateeness','lat-ness'], 'lateness', term: 1),
  _qu('upper','suffix',6,1,'grammar', 'Which is correct: adding "-ing" to "sit"?', ['sitting','siting','siteing','sitts'], 'sitting', term: 1),
  _qu('upper','suffix',6,1,'grammar', 'Which is correct: adding "-able" to "love"?', ['lovable','loveable','lovvable','lovveable'], 'lovable', term: 1),

  // Set 2 — grammar/spelling
  _qu('upper','suffix',6,2,'grammar', 'Which is correct: adding "-ing" to "write"?', ['writing','writeing','writting','writes'], 'writing', term: 1),
  _qu('upper','suffix',6,2,'grammar', 'Which is correct: adding "-ed" to "plan"?', ['planned','planed','planeed','planne'], 'planned', term: 1),
  _qu('upper','suffix',6,2,'grammar', 'Which is correct: adding "-er" to "thin"?', ['thinner','thiner','thinnner','thineer'], 'thinner', term: 1),
  _qu('upper','suffix',6,2,'grammar', 'Which is correct: adding "-ful" to "care"?', ['careful','carful','careeful','carefull'], 'careful', term: 1),
  _qu('upper','suffix',6,2,'grammar', 'Which sentence contains a correctly spelled word?', ['She was running fast.','She was runing fast.','She was runeing fast.','She was runns fast.'], 'She was running fast.', term: 1),
  _qu('upper','suffix',6,2,'grammar', 'Which sentence contains a correctly spelled word?', ['He hoped for good news.','He hopeed for good news.','He hopped for good news (wrong context).','He hopd for good news.'], 'He hoped for good news.', term: 1),
  _qu('upper','suffix',6,2,'grammar', 'Which word follows the drop-e rule correctly?', ['baking','bakeing','bakkeing','bakking'], 'baking', term: 1),
  _qu('upper','suffix',6,2,'grammar', 'Which word correctly doubles before "-ing"?', ['swimming','swiming','swimeing','swimms'], 'swimming', term: 1),
  _qu('upper','suffix',6,2,'grammar', 'Add "-ed" to "tap". What is the correct spelling?', ['tapped','taped','tapeed','tapd'], 'tapped', term: 1),
  _qu('upper','suffix',6,2,'grammar', 'Add "-ing" to "come". What is the correct spelling?', ['coming','comeing','comming','comiing'], 'coming', term: 1),

  // Set 3 — comprehension (NOT read by TTS)
  _qu('upper','suffix',6,3,'comprehension',
      'PASSAGE: Spelling in English can be tricky because of rules that change when suffixes are added. The "doubling rule" states: if a word ends in a single vowel followed by a single consonant, double the consonant before adding a vowel suffix. For example, "run" becomes "running" and "stop" becomes "stopped". The "drop-e rule" states: if a word ends in a silent e, drop the e before adding a suffix that starts with a vowel. For example, "make" becomes "making" and "love" becomes "lovable". However, when adding a consonant suffix like "-ness", keep the e — as in "lateness".\n\nQ: According to the passage, what happens to "stop" when "-ed" is added?',
      ['The p is doubled: stopped','The e is dropped: stoped','Nothing changes: stoped','A new vowel is added: stooped'],
      'The p is doubled: stopped', term: 1),
  _qu('upper','suffix',6,3,'comprehension',
      'Refer to the passage above (spelling rules).\n\nQ: According to the drop-e rule, what is "love" + "-able"?',
      ['lovable','loveable','lovvable','lovaable'],
      'lovable', term: 1),
  _qu('upper','suffix',6,3,'comprehension',
      'Refer to the passage above (spelling rules).\n\nQ: Why does "lateness" keep the e even though it adds a suffix?',
      ['Because "-ness" starts with a consonant, not a vowel','Because "late" has two consonants','Because the doubling rule applies','Because "late" ends in a vowel digraph'],
      'Because "-ness" starts with a consonant, not a vowel', term: 1),
  _qu('upper','suffix',6,3,'comprehension',
      'Refer to the passage above (spelling rules).\n\nQ: When does the doubling rule apply?',
      ['When a word ends in a single vowel + single consonant before a vowel suffix','When a word ends in a silent e','When a word ends in two consonants','When a word has a long vowel sound'],
      'When a word ends in a single vowel + single consonant before a vowel suffix', term: 1),
  _qu('upper','suffix',6,3,'comprehension',
      'Refer to the passage above (spelling rules).\n\nQ: What is "make" + "-ing" according to the drop-e rule?',
      ['making','makeing','makking','makiing'],
      'making', term: 1),
  _qu('upper','suffix',6,3,'grammar', 'Which is the correct spelling of "swim" + "-er"?', ['swimmer','swimer','swimeer','swimm-er'], 'swimmer', term: 1),
  _qu('upper','suffix',6,3,'grammar', 'Which is the correct spelling of "shine" + "-ing"?', ['shining','shineing','shinning','shinees'], 'shining', term: 1),
  _qu('upper','suffix',6,3,'grammar', 'Which is the correct spelling of "flat" + "-est"?', ['flattest','flatest','flattest','flatt-est'], 'flattest', term: 1),
  _qu('upper','suffix',6,3,'grammar', 'Which is the correct spelling of "use" + "-ful"?', ['useful','usful','useeful','use-ful'], 'useful', term: 1),
  _qu('upper','suffix',6,3,'grammar', 'Which is the correct spelling of "begin" + "-ing"?', ['beginning','begining','begineing','beginns'], 'beginning', term: 1),

  // ══════════════════════════════════════════════════════════════════════════
  // WEEK 7 — Spelling: -ible vs -able (suffix)
  // Focus: when to use -ible vs -able; reading and spelling complex words
  // ══════════════════════════════════════════════════════════════════════════

  // Set 1 — grammar/spelling + vocabulary
  _qu('upper','suffix',7,1,'grammar', 'Which is the correct spelling?', ['possible','possable','possuble','possiple'], 'possible', term: 1),
  _qu('upper','suffix',7,1,'grammar', 'Which is the correct spelling?', ['comfortable','comfortible','comfortuble','comfortaple'], 'comfortable', term: 1),
  _qu('upper','suffix',7,1,'grammar', 'Which is the correct spelling?', ['visible','visable','visuble','visiple'], 'visible', term: 1),
  _qu('upper','suffix',7,1,'grammar', 'Which is the correct spelling?', ['capable','capible','capuble','capiple'], 'capable', term: 1),
  _qu('upper','suffix',7,1,'vocabulary', 'What does "flexible" mean?', ['able to bend easily','not able to bend','always breaking','stiff and hard'], 'able to bend easily', term: 1),
  _qu('upper','suffix',7,1,'vocabulary', 'What does "reliable" mean?', ['able to be trusted or depended on','not able to be seen','easy to break','difficult to carry'], 'able to be trusted or depended on', term: 1),
  _qu('upper','suffix',7,1,'grammar', 'Which suffix completes the word "sens___" (able to perceive)?', ['ible','able','uble','iple'], 'ible', term: 1),
  _qu('upper','suffix',7,1,'grammar', 'Which suffix completes the word "accept___"?', ['able','ible','uble','iple'], 'able', term: 1),
  _qu('upper','suffix',7,1,'vocabulary', 'What does "adorable" mean?', ['very cute or loveable','not able to be liked','full of sadness','without beauty'], 'very cute or loveable', term: 1),
  _qu('upper','suffix',7,1,'vocabulary', 'What does "horrible" mean?', ['very unpleasant or dreadful','very pleasant','able to be done','full of hope'], 'very unpleasant or dreadful', term: 1),

  // Set 2 — grammar/spelling
  _qu('upper','suffix',7,2,'grammar', 'Which is spelled correctly?', ['terrible','terrable','terruble','terriple'], 'terrible', term: 1),
  _qu('upper','suffix',7,2,'grammar', 'Which is spelled correctly?', ['valuable','valuible','valuuble','valuiple'], 'valuable', term: 1),
  _qu('upper','suffix',7,2,'grammar', 'Which is spelled correctly?', ['responsible','responsable','responsuble','responsiple'], 'responsible', term: 1),
  _qu('upper','suffix',7,2,'grammar', 'Which is spelled correctly?', ['washable','washible','washuble','washiple'], 'washable', term: 1),
  _qu('upper','suffix',7,2,'grammar', 'Which sentence is spelled correctly?', ['The task is manageable.','The task is manageible.','The task is managuble.','The task is manageple.'], 'The task is manageable.', term: 1),
  _qu('upper','suffix',7,2,'grammar', 'Which sentence is spelled correctly?', ['The broken glass is not repairable.','The broken glass is not repairble.','The broken glass is not repairuble.','The broken glass is not repairiple.'], 'The broken glass is not repairable.', term: 1),
  _qu('upper','suffix',7,2,'vocabulary', 'What does "incredible" mean?', ['very hard to believe','very believable','easy to see','possible to carry'], 'very hard to believe', term: 1),
  _qu('upper','suffix',7,2,'vocabulary', 'What does "portable" mean?', ['able to be carried','not able to be seen','easy to break','very believable'], 'able to be carried', term: 1),
  _qu('upper','suffix',7,2,'grammar', 'A general rule: if you remove the suffix and a complete word remains, use ___?', ['-able','-ible','either','-uble'], '-able', term: 1),
  _qu('upper','suffix',7,2,'grammar', 'Which of these words ends in "-ible"?', ['audible','capable','adorable','reliable'], 'audible', term: 1),

  // Set 3 — comprehension (NOT read by TTS)
  _qu('upper','suffix',7,3,'comprehension',
      'PASSAGE: Knowing when to use "-ible" or "-able" is a common spelling challenge. A useful guideline is: if you can remove the suffix and a recognisable English word remains, use "-able" (e.g. "comfort" → "comfortable"). If no recognisable base word remains, "-ible" is more likely correct (e.g. "vis" is not a standalone English word, so we write "visible"). Exceptions exist — "sense" gives us "sensible" rather than "sensable". The best approach is to learn frequent words in each group and look up unfamiliar ones in a dictionary.\n\nQ: According to the passage, when is "-able" more likely the correct suffix?',
      ['When removing the suffix leaves a recognisable English word','When removing the suffix leaves no English word','When the word comes from Latin','When the word ends in a silent e'],
      'When removing the suffix leaves a recognisable English word', term: 1),
  _qu('upper','suffix',7,3,'comprehension',
      'Refer to the passage above (-ible vs -able).\n\nQ: Why is "visible" spelled with "-ible" rather than "-able"?',
      ['Because "vis" is not a standalone English word','Because "vis" ends in a consonant','Because "-able" is only for nouns','Because the drop-e rule applies'],
      'Because "vis" is not a standalone English word', term: 1),
  _qu('upper','suffix',7,3,'comprehension',
      'Refer to the passage above (-ible vs -able).\n\nQ: What exception does the passage mention?',
      ['sense → sensible (not sensable)','love → lovable (not lovible)','comfort → comfortable (not comfortible)','wash → washable (not washible)'],
      'sense → sensible (not sensable)', term: 1),
  _qu('upper','suffix',7,3,'comprehension',
      'Refer to the passage above (-ible vs -able).\n\nQ: What does the passage recommend as the best approach to learning these words?',
      ['Learn frequent words in each group and use a dictionary for unfamiliar ones','Always use -able','Always use -ible','Memorise only the exceptions'],
      'Learn frequent words in each group and use a dictionary for unfamiliar ones', term: 1),
  _qu('upper','suffix',7,3,'comprehension',
      'Refer to the passage above (-ible vs -able).\n\nQ: Apply the guideline: "remark" is a real English word. What is the correct spelling with a suffix meaning "worth noticing"?',
      ['remarkable','remarkible','remarkuble','remarkaple'],
      'remarkable', term: 1),
  _qu('upper','suffix',7,3,'grammar', 'Which is spelled correctly?', ['digestible','digestable','digestuble','digestiple'], 'digestible', term: 1),
  _qu('upper','suffix',7,3,'grammar', 'Which is spelled correctly?', ['fashionable','fashionible','fashionuble','fashioniple'], 'fashionable', term: 1),
  _qu('upper','suffix',7,3,'vocabulary', 'What does "eligible" mean?', ['qualified or allowed to do something','not able to be read','full of energy','easy to carry'], 'qualified or allowed to do something', term: 1),
  _qu('upper','suffix',7,3,'vocabulary', 'What does "inevitable" mean?', ['certain to happen, unavoidable','possible to avoid','very comfortable','easy to manage'], 'certain to happen, unavoidable', term: 1),
  _qu('upper','suffix',7,3,'grammar', 'Which word ends in "-ible"?', ['permissible','acceptable','lovable','drinkable'], 'permissible', term: 1),

  // ══════════════════════════════════════════════════════════════════════════
  // WEEK 8 — Spelling: -tion vs -sion vs -cion (suffix)
  // Focus: distinguish patterns, read and spell; nation, tension, suspicion
  // ══════════════════════════════════════════════════════════════════════════

  // Set 1 — grammar/spelling
  _qu('upper','suffix',8,1,'grammar', 'Which is spelled correctly?', ['nation','nasion','nacion','nascion'], 'nation', term: 1),
  _qu('upper','suffix',8,1,'grammar', 'Which is spelled correctly?', ['tension','tention','tencion','tenshun'], 'tension', term: 1),
  _qu('upper','suffix',8,1,'grammar', 'Which is spelled correctly?', ['suspicion','suspision','suspiscion','suspicion'], 'suspicion', term: 1),
  _qu('upper','suffix',8,1,'grammar', 'Which suffix follows a verb ending in "-ss" to make a noun? (e.g. discuss → ?)', ['discussion','-tion after -ss','-cion after -ss','compression'], 'discussion', term: 1),
  _qu('upper','suffix',8,1,'vocabulary', 'What does "tension" mean?', ['a state of mental strain or stretched feeling','a type of nation','a feeling of suspicion','a loud sound'], 'a state of mental strain or stretched feeling', term: 1),
  _qu('upper','suffix',8,1,'vocabulary', 'What does "suspicion" mean?', ['a feeling that something is wrong without proof','a state of relaxation','a type of vision','a national event'], 'a feeling that something is wrong without proof', term: 1),
  _qu('upper','suffix',8,1,'grammar', 'Add the correct ending to "invent" to make a noun.', ['invention','invension','invencion','inventson'], 'invention', term: 1),
  _qu('upper','suffix',8,1,'grammar', 'Add the correct ending to "expand" to make a noun.', ['expansion','expantion','expancion','expandsion'], 'expansion', term: 1),
  _qu('upper','suffix',8,1,'grammar', 'Which suffix completes "coer___" (the act of forcing)?', ['cion','tion','sion','shun'], 'cion', term: 1),
  _qu('upper','suffix',8,1,'vocabulary', 'What does "action" mean?', ['the process of doing something','a state of suspicion','a type of tension','a national event'], 'the process of doing something', term: 1),

  // Set 2 — grammar/spelling + vocabulary
  _qu('upper','suffix',8,2,'grammar', 'Which is spelled correctly?', ['permission','permition','permicion','permishun'], 'permission', term: 1),
  _qu('upper','suffix',8,2,'grammar', 'Which is spelled correctly?', ['station','stasion','stacion','stascion'], 'station', term: 1),
  _qu('upper','suffix',8,2,'grammar', 'Which is spelled correctly?', ['mansion','mantion','mancion','mansshun'], 'mansion', term: 1),
  _qu('upper','suffix',8,2,'vocabulary', 'What does "permission" mean?', ['official allowance to do something','a feeling of tension','a state of suspicion','an act of invention'], 'official allowance to do something', term: 1),
  _qu('upper','suffix',8,2,'vocabulary', 'What does "expression" mean?', ['the act of showing thoughts or feelings','a state of suspicion','a type of nation','a loud sound'], 'the act of showing thoughts or feelings', term: 1),
  _qu('upper','suffix',8,2,'grammar', 'Which sentence is spelled correctly?', ['She received permission to leave.','She received permition to leave.','She received permicion to leave.','She received permishun to leave.'], 'She received permission to leave.', term: 1),
  _qu('upper','suffix',8,2,'grammar', 'Which word ends in "-cion"?', ['suspicion','nation','tension','permission'], 'suspicion', term: 1),
  _qu('upper','suffix',8,2,'grammar', 'Add the correct ending to "confuse" to make a noun.', ['confusion','confution','confucion','confushun'], 'confusion', term: 1),
  _qu('upper','suffix',8,2,'vocabulary', 'What does "pollution" mean?', ['contamination of the environment','a state of tension','a type of vision','an act of permission'], 'contamination of the environment', term: 1),
  _qu('upper','suffix',8,2,'grammar', 'Which ending is correct: "collect___"?', ['tion','sion','cion','shon'], 'tion', term: 1),

  // Set 3 — comprehension (NOT read by TTS)
  _qu('upper','suffix',8,3,'comprehension',
      'PASSAGE: Many English nouns end in "-tion", "-sion", or "-cion" — all pronounced as "shun". The most common ending is "-tion", used with most base verbs (e.g. "act" → "action", "invent" → "invention"). The "-sion" ending typically follows a root ending in "-d" or "-s" (e.g. "expand" → "expansion", "discuss" → "discussion"). The rare "-cion" appears in only a few words like "suspicion" and "coercion". Spelling these endings correctly requires both knowing the rules and memorising the common exceptions.\n\nQ: According to the passage, which ending is most commonly used?',
      ['-tion','-sion','-cion','-shun'],
      '-tion', term: 1),
  _qu('upper','suffix',8,3,'comprehension',
      'Refer to the passage above (-tion/-sion/-cion).\n\nQ: According to the passage, "expand" becomes "expansion". Which ending was used?',
      ['-sion','-tion','-cion','-shun'],
      '-sion', term: 1),
  _qu('upper','suffix',8,3,'comprehension',
      'Refer to the passage above (-tion/-sion/-cion).\n\nQ: Which ending does the passage say follows roots ending in "-d" or "-s"?',
      ['-sion','-tion','-cion','-shun'],
      '-sion', term: 1),
  _qu('upper','suffix',8,3,'comprehension',
      'Refer to the passage above (-tion/-sion/-cion).\n\nQ: How many of all three endings are pronounced?',
      ['The same — all pronounced "shun"','Differently — each has its own sound','Only -tion is pronounced','Only -sion is pronounced'],
      'The same — all pronounced "shun"', term: 1),
  _qu('upper','suffix',8,3,'comprehension',
      'Refer to the passage above (-tion/-sion/-cion).\n\nQ: According to the passage, which words end in "-cion"?',
      ['suspicion and coercion','action and nation','tension and mansion','permission and expansion'],
      'suspicion and coercion', term: 1),
  _qu('upper','suffix',8,3,'grammar', 'Add the correct ending to "televise" to make a noun.', ['television','televition','televicion','televishun'], 'television', term: 1),
  _qu('upper','suffix',8,3,'grammar', 'Which word ends in "-tion"?', ['celebration','confusion','mansion','suspicion'], 'celebration', term: 1),
  _qu('upper','suffix',8,3,'vocabulary', 'What does "celebration" mean?', ['the act of marking a happy occasion','a state of tension','a type of suspicious activity','a form of pollution'], 'the act of marking a happy occasion', term: 1),
  _qu('upper','suffix',8,3,'grammar', 'Add the correct ending to "impress" to make a noun.', ['impression','impretion','imprecion','impresshun'], 'impression', term: 1),
  _qu('upper','suffix',8,3,'vocabulary', 'What does "comprehension" mean?', ['the ability to understand something','a state of tension','a feeling of suspicion','an act of expansion'], 'the ability to understand something', term: 1),

  // ══════════════════════════════════════════════════════════════════════════
  // WEEK 9 — Homophones & Confused Words (homophone)
  // Focus: principal/principle, stationery/stationary; editing; dictionary use
  // ══════════════════════════════════════════════════════════════════════════

  // Set 1 — vocabulary + grammar
  _qu('upper','homophone',9,1,'vocabulary', 'Which sentence uses "principal" correctly?', ['The principal of the school gave a speech.','The principal reason is honesty.','The principal idea is fairness.','The principal rule applies to everyone.'], 'The principal of the school gave a speech.', term: 1),
  _qu('upper','homophone',9,1,'vocabulary', 'Which sentence uses "principle" correctly?', ['She acted on the principle of fairness.','The principle gave a speech today.','The principle of the school is strict.','The principle delivered the awards.'], 'She acted on the principle of fairness.', term: 1),
  _qu('upper','homophone',9,1,'vocabulary', 'Which sentence uses "stationery" correctly?', ['She bought pens and paper from the stationery shop.','The stationery car blocked the road.','The stationery bike did not move.','The stationery object stayed in place.'], 'She bought pens and paper from the stationery shop.', term: 1),
  _qu('upper','homophone',9,1,'vocabulary', 'Which sentence uses "stationary" correctly?', ['The stationary vehicle caused a traffic jam.','She bought stationery from the stationary shop.','The stationary shop sells pens.','The stationary letter was beautifully written.'], 'The stationary vehicle caused a traffic jam.', term: 1),
  _qu('upper','homophone',9,1,'grammar', 'Choose the correct word: "The ___ reason for her success was hard work."', ['principal','principle','stationery','stationary'], 'principal', term: 1),
  _qu('upper','homophone',9,1,'grammar', 'Choose the correct word: "Honesty is a key ___ in our school."', ['principle','principal','stationery','stationary'], 'principle', term: 1),
  _qu('upper','homophone',9,1,'vocabulary', '"Affect" is usually a verb. Which sentence uses it correctly?', ['The cold weather affected his health.','The side affect was a headache.','What is the affect of pollution?','The effect affected the crowd.'], 'The cold weather affected his health.', term: 1),
  _qu('upper','homophone',9,1,'vocabulary', '"Effect" is usually a noun. Which sentence uses it correctly?', ['The effect of exercise is improved health.','Exercise will effect your health.','He tried to effect change through study.','The effect affected everyone.'], 'The effect of exercise is improved health.', term: 1),
  _qu('upper','homophone',9,1,'grammar', 'Choose the correct word: "What ___ will this law have on businesses?"', ['effect','affect','stationery','principle'], 'effect', term: 1),
  _qu('upper','homophone',9,1,'grammar', 'Choose the correct word: "Loud noise can ___ concentration."', ['affect','effect','principle','stationary'], 'affect', term: 1),

  // Set 2 — vocabulary + grammar
  _qu('upper','homophone',9,2,'vocabulary', 'What is the difference between "complement" and "compliment"?', ['complement = completes; compliment = praise','compliment = completes; complement = praise','they mean the same thing','complement is a verb; compliment is always a noun'], 'complement = completes; compliment = praise', term: 1),
  _qu('upper','homophone',9,2,'grammar', 'Choose the correct word: "She gave him a ___ on his new haircut."', ['compliment','complement','stationery','principle'], 'compliment', term: 1),
  _qu('upper','homophone',9,2,'grammar', 'Choose the correct word: "The red shoes ___ her outfit perfectly."', ['complement','compliment','affect','principal'], 'complement', term: 1),
  _qu('upper','homophone',9,2,'vocabulary', 'What is the difference between "council" and "counsel"?', ['council = a group of people; counsel = advice or a lawyer','counsel = a group of people; council = advice','they mean the same thing','council is always a verb'], 'council = a group of people; counsel = advice or a lawyer', term: 1),
  _qu('upper','homophone',9,2,'grammar', 'Choose the correct word: "The student ___ helped with the school event."', ['council','counsel','principal','stationery'], 'council', term: 1),
  _qu('upper','homophone',9,2,'grammar', 'Choose the correct word: "He sought legal ___ before signing the contract."', ['counsel','council','principle','effect'], 'counsel', term: 1),
  _qu('upper','homophone',9,2,'vocabulary', 'What is the difference between "desert" and "dessert"?', ['desert = dry land / to abandon; dessert = sweet food after a meal','dessert = dry land; desert = sweet food','they are the same word','desert is always a noun'], 'desert = dry land / to abandon; dessert = sweet food after a meal', term: 1),
  _qu('upper','homophone',9,2,'grammar', 'Choose the correct word: "We ate ice cream for ___."', ['dessert','desert','affect','counsel'], 'dessert', term: 1),
  _qu('upper','homophone',9,2,'grammar', 'Choose the correct word: "The Sahara is a vast ___."', ['desert','dessert','counsel','stationary'], 'desert', term: 1),
  _qu('upper','homophone',9,2,'vocabulary', 'The word "there" refers to a place. Which sentence uses it correctly?', ['Put the book over there.','Their going to the market.','They\'re book is on the table.','There going home now.'], 'Put the book over there.', term: 1),

  // Set 3 — comprehension (NOT read by TTS)
  _qu('upper','homophone',9,3,'comprehension',
      'PASSAGE: Confused words are pairs or groups of words that sound similar or identical but have different meanings and sometimes different spellings. They are among the most common sources of error in writing. For example, "principal" (meaning the head of a school or main/most important) and "principle" (meaning a rule or belief) are frequently confused. Similarly, "affect" (usually a verb meaning to influence) and "effect" (usually a noun meaning a result) trip up many writers. Using a dictionary or remembering a short mnemonic is one of the best ways to master these pairs.\n\nQ: According to the passage, what is a "confused word"?',
      ['A word that sounds like another but has a different meaning','A word that is always misspelled','A word that cannot be defined','A word with more than five syllables'],
      'A word that sounds like another but has a different meaning', term: 1),
  _qu('upper','homophone',9,3,'comprehension',
      'Refer to the passage above (confused words).\n\nQ: According to the passage, what does "principal" mean?',
      ['The head of a school, or main/most important','A rule or belief','The result of an action','The act of influencing'],
      'The head of a school, or main/most important', term: 1),
  _qu('upper','homophone',9,3,'comprehension',
      'Refer to the passage above (confused words).\n\nQ: What part of speech is "affect" usually?',
      ['A verb','A noun','An adjective','An adverb'],
      'A verb', term: 1),
  _qu('upper','homophone',9,3,'comprehension',
      'Refer to the passage above (confused words).\n\nQ: What does the passage recommend to master confused word pairs?',
      ['Use a dictionary or remember a mnemonic','Avoid using both words','Only learn one word in each pair','Guess from context every time'],
      'Use a dictionary or remember a mnemonic', term: 1),
  _qu('upper','homophone',9,3,'comprehension',
      'Refer to the passage above (confused words).\n\nQ: Which pair is given as an example of confused words in the passage?',
      ['affect / effect','desert / dessert','there / their','council / counsel'],
      'affect / effect', term: 1),
  _qu('upper','homophone',9,3,'grammar', 'Choose the correct word: "The ___ signed the letter on behalf of the school."', ['principal','principle','counsel','effect'], 'principal', term: 1),
  _qu('upper','homophone',9,3,'grammar', 'Choose the correct word: "Never ___ a friend in their time of need."', ['desert','dessert','affect','counsel'], 'desert', term: 1),
  _qu('upper','homophone',9,3,'vocabulary', 'Which sentence contains a homophone error?', ['Their going to the shop.','She put the book over there.','They\'re happy about the results.','She bought new stationery.'], 'Their going to the shop.', term: 1),
  _qu('upper','homophone',9,3,'grammar', 'Choose the correct word: "Regular exercise has a positive ___ on health."', ['effect','affect','complement','principle'], 'effect', term: 1),
  _qu('upper','homophone',9,3,'vocabulary', 'Which word means "advice given by a professional"?', ['counsel','council','principal','complement'], 'counsel', term: 1),

  // ══════════════════════════════════════════════════════════════════════════
  // WEEK 10 — Reading: Extended Fiction (syllable + alternative_spelling)
  // Focus: read 2 pages of a chapter book, theme, author's purpose, evidence
  // Heavy comprehension sets + vocabulary from context
  // ══════════════════════════════════════════════════════════════════════════

  // Set 1 — comprehension (NOT read by TTS)
  _qu('upper','alternative_spelling',10,1,'comprehension',
      'PASSAGE: Chapter 1 — The Old Library\nAmara had lived in the neighbourhood her whole life, but she had never once stepped inside the old library on Fern Street. From the outside, it looked abandoned — its windows grey with dust, paint peeling like sunburned skin. One afternoon, curious and a little bored, she pushed the heavy door open. Inside, the air smelled of aged paper and wood polish. Rows of shelves towered above her, each one crammed with books whose spines displayed titles she had never heard of. A thin, silver-haired librarian appeared from behind a shelf. "We don\'t get many visitors," the woman said with a quiet smile, "but the ones who find us always needed to."\n\nQ: Where does this chapter take place?',
      ['Inside an old library on Fern Street','In Amara\'s school classroom','At a book fair in the town centre','In a busy market near Amara\'s home'],
      'Inside an old library on Fern Street', term: 1),
  _qu('upper','alternative_spelling',10,1,'comprehension',
      'Refer to the passage above (The Old Library).\n\nQ: What does the description "paint peeling like sunburned skin" tell us about the library?',
      ['It is old and not well maintained','It is very clean and bright','It was recently painted','It has a welcoming appearance'],
      'It is old and not well maintained', term: 1),
  _qu('upper','alternative_spelling',10,1,'comprehension',
      'Refer to the passage above (The Old Library).\n\nQ: What does Amara feel before entering the library?',
      ['Curious and a little bored','Frightened and angry','Excited and confident','Sad and lonely'],
      'Curious and a little bored', term: 1),
  _qu('upper','alternative_spelling',10,1,'comprehension',
      'Refer to the passage above (The Old Library).\n\nQ: What does the librarian mean when she says "the ones who find us always needed to"?',
      ['People who discover the library are somehow meant to find it','The library is hidden and hard to find','Only invited visitors may enter','The library is always full'],
      'People who discover the library are somehow meant to find it', term: 1),
  _qu('upper','alternative_spelling',10,1,'comprehension',
      'Refer to the passage above (The Old Library).\n\nQ: What is the most likely theme of this chapter?',
      ['Discovery and the magic of books','Fear of old buildings','The dangers of being curious','Loneliness and loss'],
      'Discovery and the magic of books', term: 1),
  _qu('upper','alternative_spelling',10,1,'comprehension',
      'Refer to the passage above (The Old Library).\n\nQ: What literary device is used in "paint peeling like sunburned skin"?',
      ['Simile','Metaphor','Alliteration','Personification'],
      'Simile', term: 1),
  _qu('upper','alternative_spelling',10,1,'vocabulary', 'What does "abandoned" mean as used in the passage?', ['no longer in use or cared for','recently renovated','very crowded','carefully decorated'], 'no longer in use or cared for', term: 1),
  _qu('upper','alternative_spelling',10,1,'vocabulary', 'What does "crammed" mean as used in the passage?', ['packed tightly and fully','arranged neatly','completely empty','partially filled'], 'packed tightly and fully', term: 1),
  _qu('upper','alternative_spelling',10,1,'vocabulary', 'What does "displayed" mean as used in the passage?', ['showed or presented visibly','hid away carefully','carried from place to place','described in words'], 'showed or presented visibly', term: 1),
  _qu('upper','alternative_spelling',10,1,'vocabulary', 'What does the phrase "aged paper" suggest about the books?', ['The books are very old','The books were recently printed','The books are damaged by fire','The books smell of fresh ink'], 'The books are very old', term: 1),

  // Set 2 — comprehension (NOT read by TTS)
  _qu('upper','alternative_spelling',10,2,'comprehension',
      'PASSAGE: Chapter 2 — The First Book\nAmara ran her fingers along the spines until one book seemed to call to her — a slim, dark-blue volume with no title on its cover. The librarian, watching from a distance, gave a small nod. Amara sat at an old wooden table and opened the book. The first line read: "Every story is a door. You just have to decide whether to walk through." She read on, forgetting entirely that she had planned to be home in time for supper. When she finally looked up, the windows had gone dark. She gasped — two hours had vanished.\n\nQ: How does Amara choose the book?',
      ['She picks the one that seems to call out to her','The librarian recommends it','It falls from the shelf','She recognises the title'],
      'She picks the one that seems to call out to her', term: 1),
  _qu('upper','alternative_spelling',10,2,'comprehension',
      'Refer to the passage above (The First Book).\n\nQ: What does the first line of the book mean: "Every story is a door. You just have to decide whether to walk through."?',
      ['Stories are invitations to experience new worlds — you choose to engage with them','Books are physically dangerous','Libraries have many doors','You must ask permission before reading'],
      'Stories are invitations to experience new worlds — you choose to engage with them', term: 1),
  _qu('upper','alternative_spelling',10,2,'comprehension',
      'Refer to the passage above (The First Book).\n\nQ: How does the author show that Amara was deeply absorbed in reading?',
      ['She forgot about supper and didn\'t notice two hours pass','She fell asleep at the table','She asked the librarian for another book','She took notes as she read'],
      'She forgot about supper and didn\'t notice two hours pass', term: 1),
  _qu('upper','alternative_spelling',10,2,'comprehension',
      'Refer to the passage above (The First Book).\n\nQ: What literary device is "Every story is a door"?',
      ['Metaphor','Simile','Alliteration','Onomatopoeia'],
      'Metaphor', term: 1),
  _qu('upper','alternative_spelling',10,2,'comprehension',
      'Refer to the passage above (The First Book).\n\nQ: What is the author\'s purpose in this chapter?',
      ['To show the power of reading to transport and absorb us','To warn readers about old buildings','To describe the history of libraries','To teach grammar rules through fiction'],
      'To show the power of reading to transport and absorb us', term: 1),
  _qu('upper','alternative_spelling',10,2,'comprehension',
      'Refer to the passage above (The First Book).\n\nQ: What does "two hours had vanished" suggest?',
      ['Time had passed very quickly because she was absorbed in reading','The clock on the wall stopped working','The librarian had left early','The library had no windows'],
      'Time had passed very quickly because she was absorbed in reading', term: 1),
  _qu('upper','alternative_spelling',10,2,'vocabulary', 'What does "volume" mean as used in the passage?', ['a book','a sound level','a measurement','a chapter'], 'a book', term: 1),
  _qu('upper','alternative_spelling',10,2,'vocabulary', 'What does "entirely" mean?', ['completely, without any exception','partly, to some extent','occasionally','with great care'], 'completely, without any exception', term: 1),
  _qu('upper','alternative_spelling',10,2,'vocabulary', 'What does "vanished" mean?', ['disappeared completely','moved slowly','became louder','turned bright'], 'disappeared completely', term: 1),
  _qu('upper','alternative_spelling',10,2,'vocabulary', 'What does "slim" mean as used in the passage?', ['thin','broken','heavy','missing'], 'thin', term: 1),

  // Set 3 — comprehension (NOT read by TTS)
  _qu('upper','alternative_spelling',10,3,'comprehension',
      'PASSAGE: Chapter 3 — A Different World\nThe next morning, Amara arrived at school unable to stop thinking about the book. In English class, her teacher, Mr Adebayo, asked the class to describe a character they admired from a book. Amara spoke confidently — for the first time that term — about the protagonist of the blue book: a young girl who travelled across countries alone to find her missing brother. Her classmates listened, fascinated. Mr Adebayo smiled. "You see," he told the class, "the best stories do not just entertain — they give us courage and expand our world."\n\nQ: What assignment did Mr Adebayo give in English class?',
      ['Describe a character they admired from a book','Write a summary of a chapter they had read','Draw the setting of a favourite story','Create their own story character'],
      'Describe a character they admired from a book', term: 1),
  _qu('upper','alternative_spelling',10,3,'comprehension',
      'Refer to the passage above (A Different World).\n\nQ: How is Amara\'s behaviour in class different from usual?',
      ['She spoke confidently for the first time that term','She refused to answer the question','She was distracted and silent','She argued with her teacher'],
      'She spoke confidently for the first time that term', term: 1),
  _qu('upper','alternative_spelling',10,3,'comprehension',
      'Refer to the passage above (A Different World).\n\nQ: What is the theme of the story Amara describes?',
      ['A young girl\'s brave journey to find her missing brother','A class trip to an old library','A teacher\'s advice about reading','A student\'s first day at school'],
      'A young girl\'s brave journey to find her missing brother', term: 1),
  _qu('upper','alternative_spelling',10,3,'comprehension',
      'Refer to the passage above (A Different World).\n\nQ: What does Mr Adebayo mean by "they give us courage and expand our world"?',
      ['Stories can inspire us and broaden our understanding of life','Stories teach us grammar and spelling','Stories are only for entertainment','Stories help us remember facts'],
      'Stories can inspire us and broaden our understanding of life', term: 1),
  _qu('upper','alternative_spelling',10,3,'comprehension',
      'Refer to the passage above (A Different World).\n\nQ: What does "protagonist" mean?',
      ['The main character of a story','The villain of a story','The author of a book','The setting of a story'],
      'The main character of a story', term: 1),
  _qu('upper','alternative_spelling',10,3,'vocabulary', 'What does "fascinated" mean?', ['very interested and captivated','bored and uninterested','angry and upset','confused and lost'], 'very interested and captivated', term: 1),
  _qu('upper','alternative_spelling',10,3,'vocabulary', 'What does "confidently" mean?', ['with certainty and self-assurance','with great sadness','without preparation','with fear and doubt'], 'with certainty and self-assurance', term: 1),
  _qu('upper','alternative_spelling',10,3,'vocabulary', 'What does "entertain" mean?', ['to provide enjoyment or amusement','to teach grammar rules','to write a story','to expand one\'s world'], 'to provide enjoyment or amusement', term: 1),
  _qu('upper','alternative_spelling',10,3,'comprehension',
      'Across all three chapters (The Old Library, The First Book, A Different World), what is the overall message of the story?',
      ['Reading can change and empower a person','Libraries are dangerous places','Books are only for school assignments','Only brave people enjoy reading'],
      'Reading can change and empower a person', term: 1),
  _qu('upper','alternative_spelling',10,3,'vocabulary', 'What does "expand" mean as used in Mr Adebayo\'s quote?', ['to make larger or broader','to make smaller','to divide into parts','to close or shut'], 'to make larger or broader', term: 1),

  // ══════════════════════════════════════════════════════════════════════════
  // WEEK 11 — Writing: Structured Essay Intro (prefix + suffix)
  // Focus: introductory paragraph with topic sentence, transition words,
  //        vocabulary from roots studied
  // ══════════════════════════════════════════════════════════════════════════

  // Set 1 — grammar + vocabulary
  _qu('upper','prefix',11,1,'grammar', 'Which sentence is the best topic sentence for an essay about the importance of reading?', ['Reading is important and many people do it.','Reading is a powerful habit that shapes both the mind and the character of a person.','This essay will talk about reading.','I like reading books very much.'], 'Reading is a powerful habit that shapes both the mind and the character of a person.', term: 1),
  _qu('upper','prefix',11,1,'grammar', 'Which transition word best introduces a second supporting point?', ['Furthermore','In conclusion','However','Although'], 'Furthermore', term: 1),
  _qu('upper','prefix',11,1,'grammar', 'Which transition word best signals a contrast?', ['However','Moreover','Therefore','In addition'], 'However', term: 1),
  _qu('upper','prefix',11,1,'grammar', 'Which sentence best introduces an essay about environmental pollution?', ['Pollution is bad and must be stopped.','Environmental pollution has become one of the most pressing challenges facing communities across the world today.','This essay is about pollution.','In my opinion pollution is bad.'], 'Environmental pollution has become one of the most pressing challenges facing communities across the world today.', term: 1),
  _qu('upper','prefix',11,1,'vocabulary', 'Which word from the roots you have studied means "affecting many nations"?', ['international','telegraph','auditorium','inscription'], 'international', term: 1),
  _qu('upper','prefix',11,1,'vocabulary', 'Which word means "to say what will happen before it does"?', ['predict','transport','disrupt','scribble'], 'predict', term: 1),
  _qu('upper','prefix',11,1,'grammar', 'Which of these best shows formal academic vocabulary in an essay?', ['The evidence suggests a significant correlation between education and progress.','The stuff shows education and progress are linked.','I think education and progress go together.','Education and progress are both very important things.'], 'The evidence suggests a significant correlation between education and progress.', term: 1),
  _qu('upper','prefix',11,1,'grammar', 'Which is the correct use of a transition word?', ['In conclusion, exercise improves health. Moreover, it reduces stress.','Moreover, this is the last point.','In conclusion, firstly, exercise is good.','Furthermore, in conclusion exercise helps.'], 'In conclusion, exercise improves health. Moreover, it reduces stress.', term: 1),
  _qu('upper','prefix',11,1,'vocabulary', 'Which word is most formal and appropriate in an essay?', ['significant','big','super','really important'], 'significant', term: 1),
  _qu('upper','prefix',11,1,'vocabulary', 'Which word means "clearly seen or noticeable"?', ['visible','audible','portable','inscribed'], 'visible', term: 1),

  // Set 2 — grammar + vocabulary
  _qu('upper','prefix',11,2,'grammar', 'What is the purpose of a topic sentence in an essay?', ['It introduces the main idea of a paragraph','It concludes the essay','It provides examples','It lists vocabulary words'], 'It introduces the main idea of a paragraph', term: 1),
  _qu('upper','prefix',11,2,'grammar', 'Which is the best concluding sentence for a paragraph about teamwork?', ['In summary, teamwork enables individuals to achieve goals that would be impossible alone.','Teamwork is nice and people like it.','So yeah teamwork is good.','Also teamwork matters a lot.'], 'In summary, teamwork enables individuals to achieve goals that would be impossible alone.', term: 1),
  _qu('upper','prefix',11,2,'grammar', 'Which transition word best introduces a conclusion?', ['In conclusion','Furthermore','However','On the other hand'], 'In conclusion', term: 1),
  _qu('upper','prefix',11,2,'grammar', 'Which sentence adds information correctly using a transition word?', ['In addition, regular exercise improves mental health.','In addition but exercise is bad.','In addition if exercise is done regularly.','In addition exercise does good things.'], 'In addition, regular exercise improves mental health.', term: 1),
  _qu('upper','suffix',11,2,'vocabulary', 'Which of these words is a noun made from the verb "organise"?', ['organisation','organisful','organiless','organised'], 'organisation', term: 1),
  _qu('upper','suffix',11,2,'vocabulary', 'Which word means "relating to sight or images"?', ['visual','auditory','descriptive','mobile'], 'visual', term: 1),
  _qu('upper','prefix',11,2,'grammar', 'Which sentence correctly uses "therefore"?', ['She studied hard; therefore, she passed the exam.','She studied hard. Therefore but she passed.','She studied hard. Therefore because she passed.','Therefore she studied and passed.'], 'She studied hard; therefore, she passed the exam.', term: 1),
  _qu('upper','prefix',11,2,'vocabulary', 'Which word is the most precise replacement for "good" in an essay?', ['beneficial','nice','okay','pretty good'], 'beneficial', term: 1),
  _qu('upper','prefix',11,2,'vocabulary', 'Which word from roots you have studied means "a written account of someone\'s life"?', ['biography','geography','phonics','auditorium'], 'biography', term: 1),
  _qu('upper','prefix',11,2,'grammar', 'Which sentence correctly introduces evidence?', ['Evidence suggests that access to education reduces poverty significantly.','Evidence says poverty is reduced.','Evidence is about poverty and education.','Evidence means poverty can reduce.'], 'Evidence suggests that access to education reduces poverty significantly.', term: 1),

  // Set 3 — comprehension (NOT read by TTS)
  _qu('upper','prefix',11,3,'comprehension',
      'PASSAGE: A well-written essay introduction does three things. First, it hooks the reader with an interesting opening — a surprising fact, a question, or a bold statement. Second, it provides brief background information to give the reader context. Third, it ends with a clear thesis statement — a sentence that tells the reader the main argument of the essay. Transition words such as "furthermore", "however", and "in contrast" then guide the reader through the body paragraphs by showing how ideas connect. Without a clear structure, even good ideas can fail to persuade a reader.\n\nQ: According to the passage, what are the THREE things a good introduction does?',
      ['Hooks the reader, provides context, and states the main argument','Hooks the reader, lists examples, and concludes the essay','Provides definitions, transitions, and conclusions','Starts with a title, body, and summary'],
      'Hooks the reader, provides context, and states the main argument', term: 1),
  _qu('upper','prefix',11,3,'comprehension',
      'Refer to the passage above (essay writing).\n\nQ: What is a thesis statement?',
      ['A sentence that states the main argument of the essay','A sentence that introduces vocabulary','The final sentence of the essay','A transition word or phrase'],
      'A sentence that states the main argument of the essay', term: 1),
  _qu('upper','prefix',11,3,'comprehension',
      'Refer to the passage above (essay writing).\n\nQ: According to the passage, what do transition words do?',
      ['They show how ideas connect between paragraphs','They replace topic sentences','They conclude the essay','They provide vocabulary lists'],
      'They show how ideas connect between paragraphs', term: 1),
  _qu('upper','prefix',11,3,'comprehension',
      'Refer to the passage above (essay writing).\n\nQ: The passage says "Without a clear structure, even good ideas can fail to persuade a reader." What does this mean?',
      ['Structure is as important as content in essay writing','Good ideas are always enough, even without structure','Readers do not care about structure','Only the introduction matters in an essay'],
      'Structure is as important as content in essay writing', term: 1),
  _qu('upper','prefix',11,3,'comprehension',
      'Refer to the passage above (essay writing).\n\nQ: Which hook does the passage suggest as an option?',
      ['A surprising fact, a question, or a bold statement','A vocabulary list','A conclusion sentence','A list of transition words'],
      'A surprising fact, a question, or a bold statement', term: 1),
  _qu('upper','prefix',11,3,'grammar', 'Which transition word shows a contrast?', ['In contrast','Furthermore','Therefore','In addition'], 'In contrast', term: 1),
  _qu('upper','prefix',11,3,'grammar', 'Which transition word adds supporting information?', ['Moreover','However','In conclusion','In contrast'], 'Moreover', term: 1),
  _qu('upper','prefix',11,3,'vocabulary', 'What does "thesis" mean in academic writing?', ['the main argument or claim of an essay','a list of examples','the final paragraph','a type of transition word'], 'the main argument or claim of an essay', term: 1),
  _qu('upper','prefix',11,3,'vocabulary', 'What does "persuade" mean?', ['to convince someone to believe or do something','to write a description','to provide background information','to list vocabulary'], 'to convince someone to believe or do something', term: 1),
  _qu('upper','prefix',11,3,'grammar', 'Which is the best thesis statement for an essay arguing that technology helps education?', ['Technology has revolutionised education by giving students access to unlimited information and interactive learning tools.','Technology is a computer and the internet.','I think technology is good for students.','Technology helps education in many ways.'], 'Technology has revolutionised education by giving students access to unlimited information and interactive learning tools.', term: 1),

  // ══════════════════════════════════════════════════════════════════════════
  // WEEK 12 — Grammar: Verb Tenses (suffix)
  // Focus: simple, past, future tenses; convert sentences; apply in own writing
  // ══════════════════════════════════════════════════════════════════════════

  // Set 1 — grammar
  _qu('upper','suffix',12,1,'grammar', 'Which sentence is in the simple present tense?', ['She reads every morning.','She read every morning.','She will read every morning.','She has read every morning.'], 'She reads every morning.', term: 1),
  _qu('upper','suffix',12,1,'grammar', 'Which sentence is in the simple past tense?', ['He finished his homework yesterday.','He finishes his homework every day.','He will finish his homework tomorrow.','He is finishing his homework now.'], 'He finished his homework yesterday.', term: 1),
  _qu('upper','suffix',12,1,'grammar', 'Which sentence is in the simple future tense?', ['They will travel to Abuja next week.','They travel to Abuja every year.','They travelled to Abuja last week.','They are travelling to Abuja.'], 'They will travel to Abuja next week.', term: 1),
  _qu('upper','suffix',12,1,'grammar', 'Change to past tense: "The teacher explains the lesson clearly."', ['The teacher explained the lesson clearly.','The teacher will explain the lesson clearly.','The teacher is explaining the lesson clearly.','The teacher has explain the lesson clearly.'], 'The teacher explained the lesson clearly.', term: 1),
  _qu('upper','suffix',12,1,'grammar', 'Change to future tense: "We play football in the park."', ['We will play football in the park.','We played football in the park.','We are playing football in the park.','We have played football in the park.'], 'We will play football in the park.', term: 1),
  _qu('upper','suffix',12,1,'grammar', 'Which word is an irregular past tense verb?', ['went','walked','talked','played'], 'went', term: 1),
  _qu('upper','suffix',12,1,'grammar', 'What is the past tense of "write"?', ['wrote','writed','written','writeed'], 'wrote', term: 1),
  _qu('upper','suffix',12,1,'grammar', 'What is the past tense of "run"?', ['ran','runned','runs','run'], 'ran', term: 1),
  _qu('upper','suffix',12,1,'grammar', 'What is the past tense of "eat"?', ['ate','eated','eaten','eat'], 'ate', term: 1),
  _qu('upper','suffix',12,1,'grammar', 'Which sentence uses the correct tense for a future event?', ['She will present her project tomorrow.','She presented her project tomorrow.','She presents her project tomorrow (ambiguous but correct as scheduled).','"Will present" is most correct for a definite future plan.'], '"Will present" is most correct for a definite future plan.', term: 1),

  // Set 2 — grammar
  _qu('upper','suffix',12,2,'grammar', 'Which sentence is in the present continuous tense?', ['He is studying for his exams.','He studies every night.','He studied all week.','He will study tomorrow.'], 'He is studying for his exams.', term: 1),
  _qu('upper','suffix',12,2,'grammar', 'Which sentence is in the past perfect tense?', ['She had left before the rain started.','She left when it rained.','She will leave before the rain.','She is leaving now.'], 'She had left before the rain started.', term: 1),
  _qu('upper','suffix',12,2,'grammar', 'Identify the tense: "By next year, we will have completed the project."', ['Future perfect','Simple future','Present perfect','Past perfect'], 'Future perfect', term: 1),
  _qu('upper','suffix',12,2,'grammar', 'Which sentence correctly uses past perfect?', ['By the time he arrived, she had already eaten.','By the time he arrives, she already ate.','By the time he arrived, she has eaten.','By the time he arrived, she eats.'], 'By the time he arrived, she had already eaten.', term: 1),
  _qu('upper','suffix',12,2,'grammar', 'Change to past tense: "They see a rainbow after the rain."', ['They saw a rainbow after the rain.','They will see a rainbow after the rain.','They are seeing a rainbow after the rain.','They have seen a rainbow after the rain.'], 'They saw a rainbow after the rain.', term: 1),
  _qu('upper','suffix',12,2,'grammar', 'What is the past tense of "teach"?', ['taught','teached','teachted','taughted'], 'taught', term: 1),
  _qu('upper','suffix',12,2,'grammar', 'What is the past tense of "buy"?', ['bought','buyed','buied','buought'], 'bought', term: 1),
  _qu('upper','suffix',12,2,'grammar', 'Which sentence contains a tense error?', ['Yesterday, she go to the market.','Yesterday, she went to the market.','She went to the market yesterday.','She will go to the market tomorrow.'], 'Yesterday, she go to the market.', term: 1),
  _qu('upper','suffix',12,2,'grammar', 'Which sentence correctly uses the present perfect?', ['She has lived here for five years.','She lived here for five years (still does).','She is live here for five years.','She live here five years.'], 'She has lived here for five years.', term: 1),
  _qu('upper','suffix',12,2,'grammar', 'Which is the correct form: "Last Monday, he ___ his best time."', ['ran','run','will run','is running'], 'ran', term: 1),

  // Set 3 — comprehension (NOT read by TTS)
  _qu('upper','suffix',12,3,'comprehension',
      'PASSAGE: English verbs change form to show when an action takes place. In the simple present, we describe habits or general truths (e.g. "The sun rises in the east"). In the simple past, we describe completed actions (e.g. "She finished the race"). In the future, we use "will" or "going to" to describe what has not yet happened (e.g. "He will compete next year"). The present perfect ("has/have + past participle") connects a past action to the present (e.g. "She has won three medals"). The past perfect ("had + past participle") shows that one past action happened before another (e.g. "He had eaten before they arrived").\n\nQ: According to the passage, when do we use the present perfect tense?',
      ['To connect a past action to the present','To describe habits','To describe the future','To show one past event before another'],
      'To connect a past action to the present', term: 1),
  _qu('upper','suffix',12,3,'comprehension',
      'Refer to the passage above (verb tenses).\n\nQ: What is the structure of the past perfect tense?',
      ['"had" + past participle','is/are + -ing','will + base verb','has/have + past participle'],
      '"had" + past participle', term: 1),
  _qu('upper','suffix',12,3,'comprehension',
      'Refer to the passage above (verb tenses).\n\nQ: The sentence "The sun rises in the east" is an example of which tense?',
      ['Simple present','Simple past','Future','Present perfect'],
      'Simple present', term: 1),
  _qu('upper','suffix',12,3,'comprehension',
      'Refer to the passage above (verb tenses).\n\nQ: Which example from the passage uses the past perfect?',
      ['"He had eaten before they arrived"','"She finished the race"','"The sun rises in the east"','"He will compete next year"'],
      '"He had eaten before they arrived"', term: 1),
  _qu('upper','suffix',12,3,'comprehension',
      'Refer to the passage above (verb tenses).\n\nQ: What does the future tense use to describe events that have not yet happened?',
      ['"will" or "going to"','"had" + past participle','is/are + -ing','has/have + past participle'],
      '"will" or "going to"', term: 1),
  _qu('upper','suffix',12,3,'grammar', 'Identify the tense: "They have been waiting for an hour."', ['Present perfect continuous','Simple past','Future perfect','Past perfect'], 'Present perfect continuous', term: 1),
  _qu('upper','suffix',12,3,'grammar', 'Which sentence correctly uses future tense?', ['She will deliver the report by Friday.','She delivers the report by Friday.','She delivered the report by Friday.','She has deliver the report by Friday.'], 'She will deliver the report by Friday.', term: 1),
  _qu('upper','suffix',12,3,'grammar', 'What is the past participle of "go"?', ['gone','went','goed','going'], 'gone', term: 1),
  _qu('upper','suffix',12,3,'grammar', 'Which sentence contains a tense error?', ['Before she arrived, he has already left.','Before she arrived, he had already left.','He had already left before she arrived.','She arrived after he had left.'], 'Before she arrived, he has already left.', term: 1),
  _qu('upper','suffix',12,3,'grammar', 'Change to present perfect: "She wins the competition."', ['She has won the competition.','She had won the competition.','She will win the competition.','She winning the competition.'], 'She has won the competition.', term: 1),

  // ══════════════════════════════════════════════════════════════════════════
  // WEEK 13 — End-of-Term Assessment (mixed: prefix, suffix, syllable, homophone)
  // Focus: comprehensive mixed assessment covering all Term 1 topics
  // ══════════════════════════════════════════════════════════════════════════

  // Set 1 — mixed vocabulary + grammar
  _qu('upper','prefix',13,1,'vocabulary', 'The root "port" means carry. What does "export" mean?', ['to carry goods out of a country','to carry goods into a country','to break goods apart','to write about goods'], 'to carry goods out of a country', term: 1),
  _qu('upper','suffix',13,1,'grammar', 'Which word correctly adds "-ing" to "swim"?', ['swimming','swiming','swimeing','swimms'], 'swimming', term: 1),
  _qu('upper','prefix',13,1,'vocabulary', 'The root "dict" means say. What does "predict" mean?', ['to say before / forecast','to say again','to carry before','to write before'], 'to say before / forecast', term: 1),
  _qu('upper','syllable',13,1,'grammar', 'How many syllables are in "communication"?', ['5','4','6','3'], '5', term: 1),
  _qu('upper','homophone',13,1,'vocabulary', 'Which sentence uses "principle" correctly?', ['She acted on the principle of fairness.','The principle of the school gave an assembly.','The principle was late today.','The principle delivered the prizes.'], 'She acted on the principle of fairness.', term: 1),
  _qu('upper','suffix',13,1,'grammar', 'Which is the correct spelling of "sense" + "-ible"?', ['sensible','sensable','sensuble','sensiple'], 'sensible', term: 1),
  _qu('upper','prefix',13,1,'vocabulary', 'The root "vis" means see. What does "invisible" mean?', ['not able to be seen','able to see clearly','seen very well','seen again'], 'not able to be seen', term: 1),
  _qu('upper','suffix',13,1,'grammar', 'Identify the correct past tense of "teach".', ['taught','teached','teachted','taughted'], 'taught', term: 1),
  _qu('upper','prefix',13,1,'vocabulary', 'The root "graph" means write. What does "biography" mean?', ['a written account of someone\'s life','a device for hearing','an instrument for seeing far','a way to carry information'], 'a written account of someone\'s life', term: 1),
  _qu('upper','suffix',13,1,'grammar', 'Which is the correct spelling of "nation" + suffix that means "to make national"?', ['nationalise','nationalise','nationible','nationful'], 'nationalise', term: 1),

  // Set 2 — mixed grammar + vocabulary
  _qu('upper','suffix',13,2,'grammar', 'Which is the correct spelling of "hope" + "-ing"?', ['hoping','hopeing','hopping','hoppeing'], 'hoping', term: 1),
  _qu('upper','prefix',13,2,'vocabulary', 'The root "rupt" means break. What does "interrupt" mean?', ['to break between, to stop temporarily','to carry between','to say between','to build between'], 'to break between, to stop temporarily', term: 1),
  _qu('upper','syllable',13,2,'grammar', 'Divide "independence" into syllables.', ['in-de-pen-dence','inde-pend-ence','ind-ep-endence','in-depend-ence'], 'in-de-pen-dence', term: 1),
  _qu('upper','homophone',13,2,'vocabulary', 'Which sentence uses "affect" correctly?', ['The rain affected the game.','The rain effected the game.','The side affect was tiredness.','What is the affect on the result?'], 'The rain affected the game.', term: 1),
  _qu('upper','suffix',13,2,'grammar', 'Which sentence is in the past perfect tense?', ['She had finished her work before noon.','She finished her work before noon.','She finishes her work before noon.','She will finish her work before noon.'], 'She had finished her work before noon.', term: 1),
  _qu('upper','prefix',13,2,'vocabulary', 'What does "subscribe" mean?', ['to sign up for something','to carry information','to see something below','to hear something below'], 'to sign up for something', term: 1),
  _qu('upper','suffix',13,2,'grammar', 'Which is spelled correctly?', ['responsible','responsable','responsuble','responsiple'], 'responsible', term: 1),
  _qu('upper','homophone',13,2,'vocabulary', 'What is the difference between "stationery" and "stationary"?', ['stationery = writing materials; stationary = not moving','stationary = writing materials; stationery = not moving','they are the same word','stationery is a verb'], 'stationery = writing materials; stationary = not moving', term: 1),
  _qu('upper','prefix',13,2,'vocabulary', 'The root "aud" means hear. What does "auditorium" mean?', ['a large hall for performances','a device for recording sound','an instrument for seeing far','a written document'], 'a large hall for performances', term: 1),
  _qu('upper','suffix',13,2,'grammar', 'Which transition word signals a conclusion?', ['In conclusion','Furthermore','However','In addition'], 'In conclusion', term: 1),

  // Set 3 — comprehension (NOT read by TTS) — cumulative end-of-term passage
  _qu('upper','prefix',13,3,'comprehension',
      'PASSAGE: The end-of-term examination at Greenfield Academy tested the students on everything they had studied that term. The questions covered Latin and Greek roots, spelling rules, grammar, vocabulary, and comprehension. Adaeze, who had been diligent all term, felt confident. She had revised her notes on roots like "port", "vis", and "graph", practised the doubling and drop-e spelling rules, and memorised pairs of confused words such as "principal/principle" and "affect/effect". When the exam paper was distributed, she read each question carefully before answering — a habit her teacher always said was worth more than rushing.\n\nQ: What topics did the end-of-term exam cover?',
      ['Latin and Greek roots, spelling rules, grammar, vocabulary, and comprehension','Only grammar and spelling','Only comprehension and vocabulary','Only Latin roots'],
      'Latin and Greek roots, spelling rules, grammar, vocabulary, and comprehension', term: 1),
  _qu('upper','prefix',13,3,'comprehension',
      'Refer to the passage above (end-of-term exam).\n\nQ: Which roots does Adaeze revise?',
      ['"port", "vis", and "graph"','"rupt", "aud", and "scope"','only "dict" and "phon"','only "scrib" and "graph"'],
      '"port", "vis", and "graph"', term: 1),
  _qu('upper','prefix',13,3,'comprehension',
      'Refer to the passage above (end-of-term exam).\n\nQ: What confused word pairs does Adaeze memorise?',
      ['"principal/principle" and "affect/effect"','"desert/dessert" and "counsel/council"','"complement/compliment" only','"stationery/stationary" only'],
      '"principal/principle" and "affect/effect"', term: 1),
  _qu('upper','prefix',13,3,'comprehension',
      'Refer to the passage above (end-of-term exam).\n\nQ: What habit does Adaeze\'s teacher always recommend?',
      ['Reading each question carefully before answering','Rushing through the exam to finish first','Writing answers without reading the question','Skipping the hard questions first'],
      'Reading each question carefully before answering', term: 1),
  _qu('upper','prefix',13,3,'comprehension',
      'Refer to the passage above (end-of-term exam).\n\nQ: What does "diligent" mean?',
      ['hardworking and careful','lazy and careless','fast and impatient','nervous and afraid'],
      'hardworking and careful', term: 1),
  _qu('upper','prefix',13,3,'vocabulary', 'What does "distributed" mean?', ['given out to each person','collected from students','written on the board','read aloud by the teacher'], 'given out to each person', term: 1),
  _qu('upper','prefix',13,3,'grammar', 'Which is the correct spelling of the noun from "expand"?', ['expansion','expantion','expancion','expandsion'], 'expansion', term: 1),
  _qu('upper','suffix',13,3,'grammar', 'Which is the correct past tense of "see"?', ['saw','seed','seen','sawed'], 'saw', term: 1),
  _qu('upper','prefix',13,3,'vocabulary', 'What does "confident" mean?', ['feeling sure of oneself','feeling nervous and unsure','feeling very tired','feeling very angry'], 'feeling sure of oneself', term: 1),
  _qu('upper','suffix',13,3,'grammar', 'Which suffix correctly changes "act" into a noun meaning "a person who acts"?', ['-or (actor)','-ful','-less','-ing'], '-or (actor)', term: 1),

];
import 'package:uuid/uuid.dart';
import '../../../core/models/question.dart';

// ignore_for_file: prefer_single_quotes
const _uuSec2 = Uuid();

Question _quSec2(String level, String tag, int week, int set, String type,
    String q, List<String> opts, String ans, {required int term}) =>
    Question(
      id: _uuSec2.v4(), level: level, skillTag: tag,
      weekNumber: week, assessmentSet: set, questionType: type,
      termNumber: term,
      questionText: q, options: opts, correctAnswer: ans,
    );

// ─────────────────────────────────────────────────────────────────────────────
// SECONDARY — JSS 1–3  (Term 2)
//
// W1  : Review Academic Vocabulary               → prefix, suffix
// W2  : Etymology: Word Origins                  → prefix, suffix
// W3  : Spelling: -ei vs -ie                     → alternative_spelling
// W4  : Register & Tone in Writing               → prefix, suffix
// ─────────────────────────────────────────────────────────────────────────────

final List<Question> weekQuestionsSecondaryT2 = [

  // ══════════════════════════════════════════════════════════════════════════
  // WEEK 1 — Review Academic Vocabulary
  // Tags: prefix, suffix
  // ══════════════════════════════════════════════════════════════════════════

  // Set 1 — vocabulary review
  _quSec2('secondary','prefix',1,1,'vocabulary', 'Review: What does the Latin root "vis" or "vid" mean in "visible" and "video"?', ['to see','to hear','to write','to build'], 'to see', term: 2),
  _quSec2('secondary','prefix',1,1,'vocabulary', 'Review: What does the root "aud" mean in "auditory"?', ['to hear','to carry','to pull','to say'], 'to hear', term: 2),
  _quSec2('secondary','prefix',1,1,'vocabulary', 'Review: The word "predict" uses the prefix "pre-" and the root "dict". What does "dict" mean?', ['to say or speak','to look','to throw','to measure'], 'to say or speak', term: 2),
  _quSec2('secondary','prefix',1,1,'vocabulary', 'Review: What does "transport" mean based on its roots?', ['to carry across','to build over','to throw under','to write together'], 'to carry across', term: 2),
  _quSec2('secondary','prefix',1,1,'vocabulary', 'Review: What does the root "struct" mean in "infrastructure"?', ['to build','to break','to feel','to measure'], 'to build', term: 2),
  _quSec2('secondary','prefix',1,1,'vocabulary', 'Review: What does the Greek root "chron" mean in "chronological"?', ['time','earth','life','sound'], 'time', term: 2),
  _quSec2('secondary','prefix',1,1,'vocabulary', 'Review: What does the root "bio" mean in "biography"?', ['life','light','heat','water'], 'life', term: 2),
  _quSec2('secondary','suffix',1,1,'grammar', 'Review: Which suffix is commonly used to turn a verb into a noun, as in "instruct" to "instruction"?', ['-ion','-ly','-ous','-ify'], '-ion', term: 2),
  _quSec2('secondary','suffix',1,1,'grammar', 'Review: Which suffix means "the study of"?', ['-logy','-phobia','-ment','-ance'], '-logy', term: 2),
  _quSec2('secondary','prefix',1,1,'grammar', 'Review: What does the prefix "inter-" mean in "international"?', ['between or among','above or over','not or opposite','many'], 'between or among', term: 2),

  // Set 2 — vocabulary review
  _quSec2('secondary','prefix',1,2,'vocabulary', 'Review: What does the prefix "trans-" mean in "transform"?', ['across, beyond, or through','under or below','before or in front','again'], 'across, beyond, or through', term: 2),
  _quSec2('secondary','prefix',1,2,'vocabulary', 'Review: The root "rupt" means to break. What does "interrupt" mean?', ['to break into a conversation or event','to build a bridge','to carry something heavy','to see clearly'], 'to break into a conversation or event', term: 2),
  _quSec2('secondary','prefix',1,2,'vocabulary', 'Review: What does the prefix "micro-" mean in "microscope"?', ['small','large','self','distant'], 'small', term: 2),
  _quSec2('secondary','prefix',1,2,'vocabulary', 'Review: What does the root "geo" mean in "geology"?', ['earth','water','light','people'], 'earth', term: 2),
  _quSec2('secondary','prefix',1,2,'vocabulary', 'Review: What does the root "therm" mean in "thermometer"?', ['heat','measure','sound','time'], 'heat', term: 2),
  _quSec2('secondary','prefix',1,2,'vocabulary', 'Review: What does the root "auto" mean in "autobiography"?', ['self','life','write','many'], 'self', term: 2),
  _quSec2('secondary','suffix',1,2,'grammar', 'Review: Which suffix turns the noun "danger" into an adjective?', ['-ous (dangerous)','-ly (dangerly)','-ment (dangerment)','-tion (dangertion)'], '-ous (dangerous)', term: 2),
  _quSec2('secondary','suffix',1,2,'grammar', 'Review: Which suffix is used to form an adverb from an adjective (e.g., quick to ___)?', ['-ly','-ness','-ful','-less'], '-ly', term: 2),
  _quSec2('secondary','prefix',1,2,'vocabulary', 'Review: The prefix "super-" in "supernatural" means:', ['above, beyond, or over','under or below','against','together'], 'above, beyond, or over', term: 2),
  _quSec2('secondary','prefix',1,2,'vocabulary', 'Review: The root "scrib" or "script" means:', ['to write','to hear','to speak','to pull'], 'to write', term: 2),

  // Set 3 — comprehension (NOT read by TTS)
  _quSec2('secondary','prefix',1,3,'comprehension',
      'PASSAGE: The biology laboratory was filled with advanced equipment. Dr. Sani stood at the front, demonstrating how to use the new interactive microscopes. "These devices will transform how we study microscopic organisms," he explained. "You can capture a video of the cells and instantly transmit the visual data to your tablets." The students watched in awe as the invisible became visible. Dr. Sani handed out a manual detailing the procedures. "Read the instructions carefully," he advised. "A superficial understanding will only lead to destructive mistakes during your experiments."\n\nQ: What subject is Dr. Sani teaching?',
      ['Biology','Geography','History','Literature'],
      'Biology', term: 2),
  _quSec2('secondary','prefix',1,3,'comprehension',
      'Refer to the passage above.\n\nQ: What equipment was Dr. Sani demonstrating?',
      ['Interactive microscopes','Telescopes','Barometers','Thermometers'],
      'Interactive microscopes', term: 2),
  _quSec2('secondary','prefix',1,3,'comprehension',
      'Refer to the passage above.\n\nQ: What can the students do with the visual data?',
      ['Transmit it instantly to their tablets','Erase it completely','Print it in a book','Broadcast it on television'],
      'Transmit it instantly to their tablets', term: 2),
  _quSec2('secondary','prefix',1,3,'comprehension',
      'Refer to the passage above.\n\nQ: What did Dr. Sani hand out to the students?',
      ['A manual detailing the procedures','A test paper','A new tablet','A microscopic organism'],
      'A manual detailing the procedures', term: 2),
  _quSec2('secondary','prefix',1,3,'comprehension',
      'Refer to the passage above.\n\nQ: What did he say a superficial understanding would lead to?',
      ['Destructive mistakes','Excellent grades','A perfect experiment','A quick graduation'],
      'Destructive mistakes', term: 2),
  _quSec2('secondary','prefix',1,3,'vocabulary', 'What does "transform" mean in the passage?', ['to make a thorough or dramatic change','to carry across the room','to break apart','to see clearly'], 'to make a thorough or dramatic change', term: 2),
  _quSec2('secondary','suffix',1,3,'grammar', 'Identify the suffix in the word "instructions".', ['-ions','in-','struct','-tion'], '-tion', term: 2),
  _quSec2('secondary','prefix',1,3,'vocabulary', 'What does "transmit" mean?', ['to send across or pass on','to pull back','to write down','to build together'], 'to send across or pass on', term: 2),
  _quSec2('secondary','prefix',1,3,'vocabulary', 'What does "superficial" mean in the context of understanding?', ['lacking depth; only understanding the surface level','extremely deep and thorough','very intelligent','completely wrong'], 'lacking depth; only understanding the surface level', term: 2),
  _quSec2('secondary','prefix',1,3,'grammar', 'Which word from the passage uses a prefix meaning "between or among" and a suffix indicating an adjective?', ['interactive','microscopic','superficial','destructive'], 'interactive', term: 2),

  // ══════════════════════════════════════════════════════════════════════════
  // WEEK 2 — Etymology: Word Origins
  // Tags: prefix, suffix
  // ══════════════════════════════════════════════════════════════════════════

  // Set 1 — etymology
  _quSec2('secondary','prefix',2,1,'vocabulary', 'What does "etymology" mean?', ['The study of the origin of words and the way in which their meanings have changed throughout history','The study of insects','The study of grammar rules','The study of spelling mistakes'], 'The study of the origin of words and the way in which their meanings have changed throughout history', term: 2),
  _quSec2('secondary','prefix',2,1,'vocabulary', 'Many English words related to science and medicine have origins in which ancient language?', ['Greek','French','German','Spanish'], 'Greek', term: 2),
  _quSec2('secondary','prefix',2,1,'vocabulary', 'Many English words related to law, government, and religion have origins in which ancient language?', ['Latin','Greek','Russian','Arabic'], 'Latin', term: 2),
  _quSec2('secondary','prefix',2,1,'vocabulary', 'The word "television" is a hybrid word. "Tele-" is Greek for far. What is the Latin origin of "-vision"?', ['videre (to see)','vocare (to call)','audire (to hear)','scribere (to write)'], 'videre (to see)', term: 2),
  _quSec2('secondary','prefix',2,1,'vocabulary', 'The word "democracy" comes from the Greek "demos" (people) and "kratos". What does "kratos" mean?', ['power or rule','land or earth','time','sound'], 'power or rule', term: 2),
  _quSec2('secondary','prefix',2,1,'vocabulary', 'The word "aquarium" comes from the Latin "aqua" (water) and the suffix "-arium". What does "-arium" mean?', ['a place associated with','a fear of','the study of','to measure'], 'a place associated with', term: 2),
  _quSec2('secondary','prefix',2,1,'vocabulary', 'The word "manufacture" originally meant "to make by hand". Which Latin root means "hand"?', ['manu','fact','ped','aud'], 'manu', term: 2),
  _quSec2('secondary','prefix',2,1,'vocabulary', 'The word "carnivore" comes from Latin "caro" (flesh/meat) and "vorare". What does "vorare" mean?', ['to swallow or devour','to build','to run','to sleep'], 'to swallow or devour', term: 2),
  _quSec2('secondary','prefix',2,1,'vocabulary', 'The word "photograph" comes from Greek "photo" (light) and "graph". What does "graph" mean?', ['to write or draw','to speak','to measure','to fear'], 'to write or draw', term: 2),
  _quSec2('secondary','prefix',2,1,'vocabulary', 'Knowing word origins helps you do what?', ['Understand unfamiliar words by breaking down their roots','Memorise whole dictionaries','Speak Latin fluently','Avoid using punctuation'], 'Understand unfamiliar words by breaking down their roots', term: 2),

  // Set 2 — etymology
  _quSec2('secondary','prefix',2,2,'vocabulary', 'The word "astronaut" comes from Greek "astron" (star) and "nautes". What does "nautes" mean?', ['sailor (star sailor)','flyer','traveler','builder'], 'sailor (star sailor)', term: 2),
  _quSec2('secondary','prefix',2,2,'vocabulary', 'The word "bicycle" comes from Latin "bi-" (two) and Greek "kyklos". What does "kyklos" mean?', ['circle or wheel','pedal','metal','fast'], 'circle or wheel', term: 2),
  _quSec2('secondary','prefix',2,2,'vocabulary', 'The word "library" comes from the Latin word "liber". What does "liber" mean?', ['book','quiet','reading','wood'], 'book', term: 2),
  _quSec2('secondary','prefix',2,2,'vocabulary', 'The word "century" comes from the Latin word "centum". What does "centum" mean?', ['one hundred','one thousand','ten','fifty'], 'one hundred', term: 2),
  _quSec2('secondary','prefix',2,2,'vocabulary', 'The word "dictionary" comes from the Latin "dictionarium", based on "dictare". What does "dictare" mean?', ['to say or dictate','to read aloud','to bind pages','to spell correctly'], 'to say or dictate', term: 2),
  _quSec2('secondary','prefix',2,2,'vocabulary', 'The word "auditorium" is a place to do what? (Based on the Latin "audire")', ['to hear or listen','to look or see','to eat food','to exercise'], 'to hear or listen', term: 2),
  _quSec2('secondary','prefix',2,2,'vocabulary', 'The word "phobia" comes from the Greek "phobos". What does "phobos" mean?', ['fear','love','anger','sadness'], 'fear', term: 2),
  _quSec2('secondary','prefix',2,2,'vocabulary', 'The word "subway" combines the Latin prefix "sub-" and the English word way. What does "sub-" mean?', ['under or below','over or above','between','through'], 'under or below', term: 2),
  _quSec2('secondary','prefix',2,2,'vocabulary', 'The word "predict" means to say what will happen. What does the prefix "pre-" mean?', ['before','after','again','not'], 'before', term: 2),
  _quSec2('secondary','suffix',2,2,'grammar', 'Which suffix, coming from Latin "-abilitas", means "the quality of being able to"?', ['-ability','-ment','-tion','-ous'], '-ability', term: 2),

  // Set 3 — comprehension (NOT read by TTS)
  _quSec2('secondary','prefix',2,3,'comprehension',
      'PASSAGE: Ms. Nwachukwu loved teaching her English class about etymology. "When you understand the origin of a word," she explained, "it unlocks a whole family of vocabulary." She wrote the word "mortality" on the board. "This comes from the Latin root \'mort\', meaning death. Once you know that, words like \'immortal\', \'mortician\', and \'mortuary\' suddenly make sense." She then challenged the class to find words derived from the Greek root \'chron\', meaning time. Hands shot up as students excitedly listed words like \'chronological\', \'chronicle\', and \'synchronize\'.\n\nQ: What did Ms. Nwachukwu love teaching her English class about?',
      ['Etymology','Poetry','Grammar rules','How to write a letter'],
      'Etymology', term: 2),
  _quSec2('secondary','prefix',2,3,'comprehension',
      'Refer to the passage above.\n\nQ: According to the teacher, what happens when you understand the origin of a word?',
      ['It unlocks a whole family of vocabulary','You never have to read a dictionary again','You will spell perfectly','You can speak ancient Greek'],
      'It unlocks a whole family of vocabulary', term: 2),
  _quSec2('secondary','prefix',2,3,'comprehension',
      'Refer to the passage above.\n\nQ: What Latin root did she use as her first example?',
      ['mort (meaning death)','chron (meaning time)','bio (meaning life)','aud (meaning hear)'],
      'mort (meaning death)', term: 2),
  _quSec2('secondary','prefix',2,3,'comprehension',
      'Refer to the passage above.\n\nQ: What Greek root did she challenge the class with?',
      ['chron (meaning time)','mort (meaning death)','geo (meaning earth)','graph (meaning write)'],
      'chron (meaning time)', term: 2),
  _quSec2('secondary','prefix',2,3,'comprehension',
      'Refer to the passage above.\n\nQ: Which of these words did the students list?',
      ['chronological, chronicle, and synchronize','immortal, mortician, and mortuary','biology, geology, and geography','telescope, microscope, and stethoscope'],
      'chronological, chronicle, and synchronize', term: 2),
  _quSec2('secondary','prefix',2,3,'vocabulary', 'Based on the root "mort", what does "immortal" mean? (im- = not)', ['living forever; never dying','dead','a person who prepares bodies','a place for dead bodies'], 'living forever; never dying', term: 2),
  _quSec2('secondary','prefix',2,3,'vocabulary', 'What is a "chronicle"?', ['a factual written account of important or historical events in the order of their occurrence (time)','a device for measuring time','a fear of running out of time','a person who studies time'], 'a factual written account of important or historical events in the order of their occurrence (time)', term: 2),
  _quSec2('secondary','prefix',2,3,'vocabulary', 'What does "synchronize" mean? (syn = together, chron = time)', ['to cause to occur or operate at the same time or rate','to travel back in time','to pause time','to write a history book'], 'to cause to occur or operate at the same time or rate', term: 2),
  _quSec2('secondary','prefix',2,3,'vocabulary', 'What does "mortuary" mean?', ['a room or building in which dead bodies are kept','a fear of death','a medical doctor','a type of clock'], 'a room or building in which dead bodies are kept', term: 2),
  _quSec2('secondary','suffix',2,3,'grammar', 'Identify the suffix in "chronological" that makes it an adjective.', ['-al','-chron','-logy','-ic'], '-al', term: 2), // strictly it's -ical or -al.

  // ══════════════════════════════════════════════════════════════════════════
  // WEEK 3 — Spelling: -ei vs -ie
  // Tags: alternative_spelling
  // ══════════════════════════════════════════════════════════════════════════

  // Set 1 — spelling
  _quSec2('secondary','alternative_spelling',3,1,'grammar', 'Complete the rule: "i before e, except after ___"', ['c','s','t','d'], 'c', term: 2),
  _quSec2('secondary','alternative_spelling',3,1,'grammar', 'Which is the correct spelling? (Rule: i before e)', ['believe','beleive','belive','beleeve'], 'believe', term: 2),
  _quSec2('secondary','alternative_spelling',3,1,'grammar', 'Which is the correct spelling? (Rule: except after c)', ['receive','recieve','receeve','recive'], 'receive', term: 2),
  _quSec2('secondary','alternative_spelling',3,1,'grammar', 'Which is the correct spelling? (Rule: i before e)', ['piece','peice','peece','pis'], 'piece', term: 2),
  _quSec2('secondary','alternative_spelling',3,1,'grammar', 'Which is the correct spelling? (Rule: except after c)', ['ceiling','cieling','seiling','ceeling'], 'ceiling', term: 2),
  _quSec2('secondary','alternative_spelling',3,1,'grammar', 'Which is the correct spelling? (Rule: i before e)', ['brief','breif','breef','brif'], 'brief', term: 2),
  _quSec2('secondary','alternative_spelling',3,1,'grammar', 'Which is the correct spelling? (Rule: except after c)', ['receipt','reciept','receit','receept'], 'receipt', term: 2),
  _quSec2('secondary','alternative_spelling',3,1,'grammar', 'Which is the correct spelling? (Rule: i before e)', ['chief','cheif','cheef','chif'], 'chief', term: 2),
  _quSec2('secondary','alternative_spelling',3,1,'grammar', 'Which is the correct spelling? (Rule: except after c)', ['deceive','decieve','deceeve','deseive'], 'deceive', term: 2),
  _quSec2('secondary','alternative_spelling',3,1,'grammar', 'Which is the correct spelling? (Rule: i before e)', ['field','feild','feeld','fild'], 'field', term: 2),

  // Set 2 — exceptions
  _quSec2('secondary','alternative_spelling',3,2,'grammar', 'Some words break the rule. Which is the correct spelling of the exception meaning "strange"?', ['weird','wierd','weard','weerd'], 'weird', term: 2),
  _quSec2('secondary','alternative_spelling',3,2,'grammar', 'Which is the correct spelling of the exception meaning "to take hold of suddenly"?', ['seize','sieze','seeze','ceize'], 'seize', term: 2),
  _quSec2('secondary','alternative_spelling',3,2,'grammar', 'Which is the correct spelling of the exception found in meat and beans?', ['protein','protien','proteen','protean'], 'protein', term: 2),
  _quSec2('secondary','alternative_spelling',3,2,'grammar', 'The rule also says: "or when sounding like A, as in neighbor and ___." What is the correct spelling?', ['weigh','wiegh','way','waigh'], 'weigh', term: 2),
  _quSec2('secondary','alternative_spelling',3,2,'grammar', 'Which is the correct spelling for the number 8?', ['eight','ieght','ate','eyght'], 'eight', term: 2),
  _quSec2('secondary','alternative_spelling',3,2,'grammar', 'Which is the correct spelling of the exception meaning "a person living next door"?', ['neighbor (or neighbour)','nieghbor','neigbor','naybor'], 'neighbor (or neighbour)', term: 2),
  _quSec2('secondary','alternative_spelling',3,2,'grammar', 'Which is the correct spelling for "from another country"?', ['foreign','foriegn','forein','forign'], 'foreign', term: 2),
  _quSec2('secondary','alternative_spelling',3,2,'grammar', 'Which is the correct spelling for "free time"?', ['leisure','liesure','lezure','leesure'], 'leisure', term: 2),
  _quSec2('secondary','alternative_spelling',3,2,'grammar', 'Which is the correct spelling for "how tall someone is"?', ['height','hieght','hight','hite'], 'height', term: 2),
  _quSec2('secondary','alternative_spelling',3,2,'grammar', 'Which is the correct spelling?', ['either','iether','ether','eether'], 'either', term: 2),

  // Set 3 — comprehension (NOT read by TTS)
  _quSec2('secondary','alternative_spelling',3,3,'comprehension',
      'PASSAGE: The detective refused to believe the suspect\'s story. She knew he was trying to deceive her. He claimed he had lost the receipt for the expensive piece of jewelry, but she noticed a weird bulge in his coat pocket. Suddenly, the detective leaped forward to seize the hidden item. It was a heavy silver necklace! "You thought you could get away with this," she said calmly, staring up at the ceiling. "But your story lacked any real weight. You are officially under arrest."\n\nQ: What did the detective refuse to do?',
      ['Believe the suspect\'s story','Arrest the suspect','Look at the ceiling','Leap forward'],
      'Believe the suspect\'s story', term: 2),
  _quSec2('secondary','alternative_spelling',3,3,'comprehension',
      'Refer to the passage above.\n\nQ: What did the detective know the suspect was trying to do?',
      ['Deceive her','Help her','Give her a receipt','Show her a necklace'],
      'Deceive her', term: 2),
  _quSec2('secondary','alternative_spelling',3,3,'comprehension',
      'Refer to the passage above.\n\nQ: What did the suspect claim he had lost?',
      ['The receipt for the expensive piece of jewelry','His coat','His money','His memory'],
      'The receipt for the expensive piece of jewelry', term: 2),
  _quSec2('secondary','alternative_spelling',3,3,'comprehension',
      'Refer to the passage above.\n\nQ: What did the detective notice in his coat pocket?',
      ['A weird bulge','A missing button','A hole','A silver coin'],
      'A weird bulge', term: 2),
  _quSec2('secondary','alternative_spelling',3,3,'comprehension',
      'Refer to the passage above.\n\nQ: What did the detective do to the hidden item?',
      ['She leaped forward to seize it','She ignored it','She asked him to hand it over','She set it on fire'],
      'She leaped forward to seize it', term: 2),
  _quSec2('secondary','alternative_spelling',3,3,'grammar', 'Which word from the passage follows the rule "except after c"?', ['deceive','believe','piece','weird'], 'deceive', term: 2),
  _quSec2('secondary','alternative_spelling',3,3,'grammar', 'Which word from the passage follows the basic "i before e" rule?', ['believe','receipt','ceiling','seize'], 'believe', term: 2),
  _quSec2('secondary','alternative_spelling',3,3,'grammar', 'Which word from the passage is an exception to the "i before e" rule (it does not have a "c" but uses "ei")?', ['weird','piece','believe','deceive'], 'weird', term: 2),
  _quSec2('secondary','alternative_spelling',3,3,'grammar', 'Which word from the passage uses "ei" because it sounds like "A"?', ['weight','seize','receipt','ceiling'], 'weight', term: 2),
  _quSec2('secondary','alternative_spelling',3,3,'grammar', 'Identify the correctly spelled word from the passage meaning "a written acknowledgment of having received a specified amount of money".', ['receipt','reciept','receit','receept'], 'receipt', term: 2),

  // ══════════════════════════════════════════════════════════════════════════
  // WEEK 4 — Register & Tone in Writing
  // Tags: prefix, suffix
  // ══════════════════════════════════════════════════════════════════════════

  // Set 1 — register & tone
  _quSec2('secondary','suffix',4,1,'vocabulary', 'What does "register" mean in writing?', ['The level of formality (formal, neutral, or informal) used in a piece of writing','A book where teachers take attendance','The volume of your voice','The font used on a computer'], 'The level of formality (formal, neutral, or informal) used in a piece of writing', term: 2),
  _quSec2('secondary','suffix',4,1,'vocabulary', 'What does "tone" mean in writing?', ['The author\'s attitude toward the subject or the audience (e.g., serious, humorous, angry)','The pitch of a musical instrument','The color of the paper','The length of the essay'], 'The author\'s attitude toward the subject or the audience (e.g., serious, humorous, angry)', term: 2),
  _quSec2('secondary','prefix',4,1,'grammar', 'Which of these is appropriate for a formal register?', ['Using complex vocabulary and complete sentences','Using slang words like "cool" and "awesome"','Using lots of exclamation marks!!!','Using text abbreviations like "LOL"'], 'Using complex vocabulary and complete sentences', term: 2),
  _quSec2('secondary','suffix',4,1,'grammar', 'In formal writing, what should you generally avoid?', ['Contractions (e.g., don\'t, can\'t)','Paragraphs','Punctuation marks','Capital letters'], 'Contractions (e.g., don\'t, can\'t)', term: 2),
  _quSec2('secondary','prefix',4,1,'grammar', 'Which sentence is written in a formal register?', ['I would like to apologize for the inconvenience.','My bad, sorry about the mess.','Oops, I messed up!','Sorry \'bout that.'], 'I would like to apologize for the inconvenience.', term: 2),
  _quSec2('secondary','suffix',4,1,'grammar', 'Which sentence is written in an informal register?', ['Hit me up later, bro.','Please contact me at your earliest convenience.','I look forward to hearing from you.','I await your correspondence.'], 'Hit me up later, bro.', term: 2),
  _quSec2('secondary','prefix',4,1,'vocabulary', 'What kind of tone is this? "It is absolutely crucial that we address climate change immediately to save our planet."', ['Urgent and serious','Humorous and funny','Sarcastic','Bored and indifferent'], 'Urgent and serious', term: 2),
  _quSec2('secondary','suffix',4,1,'vocabulary', 'What kind of tone is this? "Oh great, another flat tire. Just what I needed today."', ['Sarcastic or annoyed','Joyful','Formal and polite','Academic'], 'Sarcastic or annoyed', term: 2),
  _quSec2('secondary','prefix',4,1,'grammar', 'If you are writing a letter of application to a bank manager, what register should you use?', ['Formal','Informal','Slang','Poetic'], 'Formal', term: 2),
  _quSec2('secondary','suffix',4,1,'grammar', 'If you are texting your best friend about a movie, what register will you likely use?', ['Informal','Formal','Academic','Legal'], 'Informal', term: 2),

  // Set 2 — vocabulary replacement
  _quSec2('secondary','prefix',4,2,'vocabulary', 'Which is a formal replacement for the informal word "buy"?', ['purchase','grab','get','score'], 'purchase', term: 2),
  _quSec2('secondary','suffix',4,2,'vocabulary', 'Which is a formal replacement for the informal phrase "give out"?', ['distribute','hand out','pass around','chuck'], 'distribute', term: 2),
  _quSec2('secondary','prefix',4,2,'vocabulary', 'Which is a formal replacement for the informal phrase "look into"?', ['investigate','check out','spy on','snoop'], 'investigate', term: 2),
  _quSec2('secondary','suffix',4,2,'vocabulary', 'Which is a formal replacement for the informal word "start"?', ['commence','kick off','get going','begin (though commence is more formal)'], 'commence', term: 2),
  _quSec2('secondary','prefix',4,2,'vocabulary', 'Which is a formal replacement for the informal phrase "think about"?', ['consider','mull over','ponder on','guess'], 'consider', term: 2),
  _quSec2('secondary','suffix',4,2,'vocabulary', 'Which is a formal replacement for the informal phrase "point out"?', ['indicate','show','tell','hint'], 'indicate', term: 2),
  _quSec2('secondary','prefix',4,2,'grammar', 'Rewrite formally: "I got your letter."', ['I received your correspondence.','I grabbed your mail.','Got the letter, thanks.','Your letter is here.'], 'I received your correspondence.', term: 2),
  _quSec2('secondary','suffix',4,2,'grammar', 'Rewrite formally: "We are looking for a new boss."', ['We are seeking a new manager.','We want a new boss.','We are hunting for a boss.','We need a manager.'], 'We are seeking a new manager.', term: 2),
  _quSec2('secondary','prefix',4,2,'grammar', 'Rewrite formally: "The rules say you can\'t smoke here."', ['The regulations prohibit smoking in this area.','No smoking allowed.','You are not allowed to smoke.','Don\'t smoke here.'], 'The regulations prohibit smoking in this area.', term: 2),
  _quSec2('secondary','suffix',4,2,'grammar', 'Rewrite formally: "Can you help me with this?"', ['Could you please assist me with this matter?','Help me out, please?','Give me a hand?','I need help.'], 'Could you please assist me with this matter?', term: 2),

  // Set 3 — comprehension (NOT read by TTS)
  _quSec2('secondary','prefix',4,3,'comprehension',
      'PASSAGE: Read the two emails below.\nEmail A: "Hey Sir, sorry I missed class yesterday. I was super sick and couldn\'t drag myself out of bed. Can I get the homework so I don\'t fall behind? Thanks!"\n\nEmail B: "Dear Mr. Adebayo, Please accept my apologies for my absence from class yesterday. I was unwell and unable to attend. Could you please provide the assignment details so that I may catch up on the missed coursework? Thank you for your understanding. Sincerely, Zainab."\n\nQ: Who is the intended audience for both emails?',
      ['A teacher (Mr. Adebayo)','A best friend','A doctor','A parent'],
      'A teacher (Mr. Adebayo)', term: 2),
  _quSec2('secondary','suffix',4,3,'comprehension',
      'Refer to the passage above.\n\nQ: What is the register of Email A?',
      ['Informal','Formal','Academic','Poetic'],
      'Informal', term: 2),
  _quSec2('secondary','prefix',4,3,'comprehension',
      'Refer to the passage above.\n\nQ: What is the register of Email B?',
      ['Formal','Informal','Slang','Aggressive'],
      'Formal', term: 2),
  _quSec2('secondary','suffix',4,3,'comprehension',
      'Refer to the passage above.\n\nQ: Which email is more appropriate for a student writing to a teacher?',
      ['Email B','Email A','Neither','Both are equally good'],
      'Email B', term: 2),
  _quSec2('secondary','prefix',4,3,'comprehension',
      'Refer to the passage above.\n\nQ: In Email B, what formal word does Zainab use instead of "super sick"?',
      ['unwell','absent','missed','unable'],
      'unwell', term: 2),
  _quSec2('secondary','suffix',4,3,'vocabulary', 'What is the formal equivalent of "drag myself out of bed" used in Email B?', ['unable to attend','catch up','missed coursework','accept my apologies'], 'unable to attend', term: 2),
  _quSec2('secondary','prefix',4,3,'vocabulary', 'What is the formal equivalent of "get the homework" used in Email B?', ['provide the assignment details','accept my apologies','missed coursework','thank you'], 'provide the assignment details', term: 2),
  _quSec2('secondary','suffix',4,3,'grammar', 'Identify a contraction used in the informal Email A.', ['couldn\'t','missed','homework','thanks'], 'couldn\'t', term: 2),
  _quSec2('secondary','prefix',4,3,'grammar', 'Which of these is a formal sign-off used in Email B?', ['Sincerely,','Thanks!','Catch you later,','Bye,'], 'Sincerely,', term: 2),
  _quSec2('secondary','suffix',4,3,'vocabulary', 'What is the overall tone of Email B?', ['Polite and respectful','Sarcastic and rude','Humorous and playful','Angry and demanding'], 'Polite and respectful', term: 2),

// ══════════════════════════════════════════════════════════════════════════
  // WEEK 5 — Figurative Language
  // Tags: alliteration
  // ══════════════════════════════════════════════════════════════════════════

  // Set 1 — figurative language
  _quSec2('secondary','alliteration',5,1,'vocabulary', 'Which figure of speech compares two things using "like" or "as"?', ['Simile','Metaphor','Personification','Alliteration'], 'Simile', term: 2),
  _quSec2('secondary','alliteration',5,1,'vocabulary', 'Which figure of speech states that one thing IS another thing?', ['Metaphor','Simile','Alliteration','Hyperbole'], 'Metaphor', term: 2),
  _quSec2('secondary','alliteration',5,1,'vocabulary', 'What is personification?', ['Giving human qualities to non-human things or ideas','Repeating the first letter of words','Comparing two things with "like"','Exaggerating for effect'], 'Giving human qualities to non-human things or ideas', term: 2),
  _quSec2('secondary','alliteration',5,1,'vocabulary', 'What is alliteration?', ['The occurrence of the same letter or sound at the beginning of adjacent or closely connected words','Words that sound like the noise they make','A comparison without using "like"','Giving animals human names'], 'The occurrence of the same letter or sound at the beginning of adjacent or closely connected words', term: 2),
  _quSec2('secondary','alliteration',5,1,'grammar', 'Identify the device: "The stars danced playfully in the moonlit sky."', ['Personification','Simile','Metaphor','Alliteration'], 'Personification', term: 2),
  _quSec2('secondary','alliteration',5,1,'grammar', 'Identify the device: "He is a shining star in our class."', ['Metaphor','Simile','Personification','Alliteration'], 'Metaphor', term: 2),
  _quSec2('secondary','alliteration',5,1,'grammar', 'Identify the device: "She sells seashells by the seashore."', ['Alliteration','Metaphor','Simile','Personification'], 'Alliteration', term: 2),
  _quSec2('secondary','alliteration',5,1,'grammar', 'Identify the device: "The water was as cold as ice."', ['Simile','Metaphor','Personification','Alliteration'], 'Simile', term: 2),
  _quSec2('secondary','alliteration',5,1,'grammar', 'Which is an example of a metaphor?', ['Time is money.','As fast as lightning.','The wind whispered.','Peter piped a tune.'], 'Time is money.', term: 2),
  _quSec2('secondary','alliteration',5,1,'grammar', 'Which is an example of alliteration?', ['Wild winds whirled violently.','The sun is a golden coin.','The dog is like a wolf.','The car coughed loudly.'], 'Wild winds whirled violently.', term: 2),

  // Set 2 — figurative language
  _quSec2('secondary','alliteration',5,2,'grammar', 'Identify the device: "The angry storm pounded the tin roof."', ['Personification','Simile','Metaphor','Alliteration'], 'Personification', term: 2),
  _quSec2('secondary','alliteration',5,2,'grammar', 'Identify the device: "His heart was a block of ice."', ['Metaphor','Simile','Personification','Alliteration'], 'Metaphor', term: 2),
  _quSec2('secondary','alliteration',5,2,'grammar', 'Identify the device: "My brother eats like a pig."', ['Simile','Metaphor','Personification','Alliteration'], 'Simile', term: 2),
  _quSec2('secondary','alliteration',5,2,'grammar', 'Identify the device: "Betty bought butter but the butter was bitter."', ['Alliteration','Personification','Simile','Metaphor'], 'Alliteration', term: 2),
  _quSec2('secondary','alliteration',5,2,'grammar', 'What effect does personification often have in a story?', ['It helps the reader relate to non-human things by giving them familiar human feelings','It makes the text sound like a poem','It makes the story completely factual','It confuses the reader on purpose'], 'It helps the reader relate to non-human things by giving them familiar human feelings', term: 2),
  _quSec2('secondary','alliteration',5,2,'grammar', 'Which is an example of a simile?', ['Her voice was like velvet.','Her voice was velvet.','The velvet voice sang.','Velvet voices vibrate.'], 'Her voice was like velvet.', term: 2),
  _quSec2('secondary','alliteration',5,2,'grammar', 'Which is an example of personification?', ['The fire swallowed the entire forest.','The fire was very hot.','The fire was like a monster.','Fierce fires flamed.'], 'The fire swallowed the entire forest.', term: 2),
  _quSec2('secondary','alliteration',5,2,'grammar', 'Identify the alliteration: "The sneaky snake slithered slowly."', ['The repeated /s/ sound','The comparison of the snake','The human quality of being sneaky','The rhyme at the end'], 'The repeated /s/ sound', term: 2),
  _quSec2('secondary','alliteration',5,2,'vocabulary', 'Why do writers use figurative language?', ['To create vivid images, express emotions, and make writing more engaging','To hide the true meaning of the text','To make the text as literal and boring as possible','To write a news report'], 'To create vivid images, express emotions, and make writing more engaging', term: 2),
  _quSec2('secondary','alliteration',5,2,'grammar', 'Identify the device: "The classroom was an oven."', ['Metaphor','Simile','Personification','Alliteration'], 'Metaphor', term: 2),

  // Set 3 — comprehension (NOT read by TTS)
  _quSec2('secondary','alliteration',5,3,'comprehension',
      'PASSAGE: The old, abandoned house sat on the hill like a lonely ghost. As we approached, the wind whispered secrets through the broken windows. The front door groaned in protest when I pushed it open. Inside, it was a dark cave of shadows and dust. Creepy, crawling critters scurried across the floorboards. My friend\'s face was as pale as a sheet. "Let\'s get out of here," she stammered, her voice shaking. I agreed; the house was a monster waiting to trap us.\n\nQ: What literary device is used in the phrase "sat on the hill like a lonely ghost"?',
      ['Simile','Metaphor','Personification','Alliteration'],
      'Simile', term: 2),
  _quSec2('secondary','alliteration',5,3,'comprehension',
      'Refer to the passage above.\n\nQ: What literary device is used in the phrase "the wind whispered secrets"?',
      ['Personification','Simile','Metaphor','Alliteration'],
      'Personification', term: 2),
  _quSec2('secondary','alliteration',5,3,'comprehension',
      'Refer to the passage above.\n\nQ: What literary device is used in "Creepy, crawling critters"?',
      ['Alliteration','Metaphor','Simile','Personification'],
      'Alliteration', term: 2),
  _quSec2('secondary','alliteration',5,3,'comprehension',
      'Refer to the passage above.\n\nQ: What literary device is used in the phrase "it was a dark cave of shadows"?',
      ['Metaphor','Simile','Personification','Alliteration'],
      'Metaphor', term: 2),
  _quSec2('secondary','alliteration',5,3,'comprehension',
      'Refer to the passage above.\n\nQ: What does the door do when pushed open, and what device is this?',
      ['It "groaned in protest" (Personification)','It "was as pale as a sheet" (Simile)','It "sat like a ghost" (Simile)','It was a "monster" (Metaphor)'],
      'It "groaned in protest" (Personification)', term: 2),
  _quSec2('secondary','alliteration',5,3,'grammar', 'Which phrase from the passage is another simile?', ['as pale as a sheet','waiting to trap us','voice shaking','abandoned house'], 'as pale as a sheet', term: 2),
  _quSec2('secondary','alliteration',5,3,'grammar', 'Identify the metaphor at the end of the passage.', ['the house was a monster','let\'s get out of here','voice shaking','sat on the hill'], 'the house was a monster', term: 2),
  _quSec2('secondary','alliteration',5,3,'vocabulary', 'What does "abandoned" mean?', ['having been deserted or left behind','newly built','full of people','painted brightly'], 'having been deserted or left behind', term: 2),
  _quSec2('secondary','alliteration',5,3,'vocabulary', 'What does "stammered" mean?', ['spoke with sudden involuntary pauses, often from fear or shock','shouted very loudly','sang a song','ran away quickly'], 'spoke with sudden involuntary pauses, often from fear or shock', term: 2),
  _quSec2('secondary','alliteration',5,3,'grammar', 'Which letter sound creates the alliteration in "Creepy, crawling critters"?', ['The hard /c/ sound','The /r/ sound','The /t/ sound','The /p/ sound'], 'The hard /c/ sound', term: 2),

  // ══════════════════════════════════════════════════════════════════════════
  // WEEK 6 — Reading: Newspaper/Media Text
  // Tags: alternative_spelling, syllable
  // ══════════════════════════════════════════════════════════════════════════

  // Set 1 — media texts
  _quSec2('secondary','syllable',6,1,'vocabulary', 'What is a "headline" in a newspaper?', ['The title of a news article, usually printed in large letters','The name of the newspaper','The author\'s name','A small picture at the bottom'], 'The title of a news article, usually printed in large letters', term: 2),
  _quSec2('secondary','syllable',6,1,'grammar', 'How many syllables are in the word "newspaper"?', ['3','2','4','1'], '3', term: 2),
  _quSec2('secondary','alternative_spelling',6,1,'vocabulary', 'What is a "byline"?', ['A line in a newspaper naming the writer of an article','A line showing the date','A quote from a witness','The final sentence of the story'], 'A line in a newspaper naming the writer of an article', term: 2),
  _quSec2('secondary','syllable',6,1,'grammar', 'How many syllables are in the word "article"?', ['3','2','4','5'], '3', term: 2),
  _quSec2('secondary','alternative_spelling',6,1,'vocabulary', 'What is "bias" in a news article?', ['Prejudice in favor of or against one thing, person, or group; not being objective','A completely factual statement','The date the article was published','A picture of the event'], 'Prejudice in favor of or against one thing, person, or group; not being objective', term: 2),
  _quSec2('secondary','alternative_spelling',6,1,'vocabulary', 'What does it mean if a journalist is "objective"?', ['They report the facts without letting personal feelings or opinions influence them','They only tell one side of the story','They make up the facts','They write very short articles'], 'They report the facts without letting personal feelings or opinions influence them', term: 2),
  _quSec2('secondary','syllable',6,1,'grammar', 'How many syllables are in the word "objective"?', ['3','4','2','5'], '3', term: 2),
  _quSec2('secondary','alternative_spelling',6,1,'vocabulary', 'What is a "caption"?', ['A brief explanation appended to an article, illustration, or photograph','The main title of the newspaper','The author\'s signature','A hidden message'], 'A brief explanation appended to an article, illustration, or photograph', term: 2),
  _quSec2('secondary','alternative_spelling',6,1,'vocabulary', 'What is a "broadsheet"?', ['A newspaper with a large format, typically considered more serious than a tabloid','A small, gossip-filled newspaper','A digital-only news website','A comic book'], 'A newspaper with a large format, typically considered more serious than a tabloid', term: 2),
  _quSec2('secondary','alternative_spelling',6,1,'vocabulary', 'What is a "tabloid"?', ['A newspaper with compact pages, often featuring sensationalist stories and lots of pictures','A highly academic journal','A blank piece of paper','A dictionary'], 'A newspaper with compact pages, often featuring sensationalist stories and lots of pictures', term: 2),

  // Set 2 — media texts
  _quSec2('secondary','alternative_spelling',6,2,'vocabulary', 'What does "sensationalism" mean in media?', ['The use of exciting or shocking stories or language at the expense of accuracy, in order to provoke public interest','Writing only the boring facts','Checking all facts perfectly before publishing','Publishing only black and white photos'], 'The use of exciting or shocking stories or language at the expense of accuracy, in order to provoke public interest', term: 2),
  _quSec2('secondary','syllable',6,2,'grammar', 'How many syllables are in the word "sensationalism"?', ['6','5','7','4'], '6', term: 2),
  _quSec2('secondary','alternative_spelling',6,2,'vocabulary', 'What is an "editorial"?', ['An article giving the newspaper\'s or editor\'s opinion on a topical issue','A list of sports scores','A weather report','A picture of a celebrity'], 'An article giving the newspaper\'s or editor\'s opinion on a topical issue', term: 2),
  _quSec2('secondary','syllable',6,2,'grammar', 'How many syllables are in the word "editorial"?', ['5','4','3','6'], '5', term: 2),
  _quSec2('secondary','alternative_spelling',6,2,'vocabulary', 'What is the "lead paragraph" (or lede)?', ['The opening paragraph of an article, summarizing the most important facts (Who, What, Where, When, Why)','The very last paragraph','The author\'s biography','The list of sources'], 'The opening paragraph of an article, summarizing the most important facts (Who, What, Where, When, Why)', term: 2),
  _quSec2('secondary','alternative_spelling',6,2,'grammar', 'Identify the biased word in this sentence: "The courageous protesters demanded change from the stubborn mayor."', ['courageous and stubborn','protesters and mayor','demanded and change','The and from'], 'courageous and stubborn', term: 2),
  _quSec2('secondary','alternative_spelling',6,2,'grammar', 'Which sentence is more objective?', ['The mayor refused to listen to the angry mob.','The mayor declined to meet with the group of fifty protesters.','The terrible mayor hid from the brave citizens.','The brilliant mayor outsmarted the foolish crowd.'], 'The mayor declined to meet with the group of fifty protesters.', term: 2),
  _quSec2('secondary','syllable',6,2,'grammar', 'How many syllables are in the word "journalist"?', ['3','2','4','1'], '3', term: 2),
  _quSec2('secondary','alternative_spelling',6,2,'vocabulary', 'What does it mean to "verify" facts?', ['To make sure or demonstrate that something is true, accurate, or justified','To make something up','To print something immediately','To delete an article'], 'To make sure or demonstrate that something is true, accurate, or justified', term: 2),
  _quSec2('secondary','alternative_spelling',6,2,'grammar', 'Which is the correct spelling?', ['column','colum','collumn','coloumn'], 'column', term: 2),

  // Set 3 — comprehension (NOT read by TTS)
  _quSec2('secondary','syllable',6,3,'comprehension',
      'PASSAGE: LOCAL HERO SAVES CAT FROM BLAZING INFERNO\nBy Amina Yusuf\nYesterday afternoon, a disastrous fire broke out at an apartment building on Broad Street. While firefighters worked tirelessly to control the flames, a brave local teenager, David, rushed into the smoke-filled lobby. He emerged minutes later clutching a terrified orange cat. "I couldn\'t just stand there while the poor thing cried," David stated. However, Fire Chief Okafor issued a stern warning: "While we are glad the cat is safe, citizens must never enter a burning building. Leave rescues to the professionals."\n\nQ: What is the headline of this article?',
      ['LOCAL HERO SAVES CAT FROM BLAZING INFERNO','By Amina Yusuf','Yesterday afternoon...','Fire Chief Okafor issued a stern warning'],
      'LOCAL HERO SAVES CAT FROM BLAZING INFERNO', term: 2),
  _quSec2('secondary','alternative_spelling',6,3,'comprehension',
      'Refer to the passage above.\n\nQ: Who is the journalist (byline)?',
      ['Amina Yusuf','David','Fire Chief Okafor','The local hero'],
      'Amina Yusuf', term: 2),
  _quSec2('secondary','syllable',6,3,'comprehension',
      'Refer to the passage above.\n\nQ: What did David do?',
      ['He rushed into the smoke-filled lobby to save a cat','He started the fire','He called the firefighters','He ran away from the building'],
      'He rushed into the smoke-filled lobby to save a cat', term: 2),
  _quSec2('secondary','alternative_spelling',6,3,'comprehension',
      'Refer to the passage above.\n\nQ: What warning did Fire Chief Okafor give?',
      ['Citizens must never enter a burning building','Citizens should always save cats','Firefighters need more help','The apartment building is unsafe'],
      'Citizens must never enter a burning building', term: 2),
  _quSec2('secondary','syllable',6,3,'comprehension',
      'Refer to the passage above.\n\nQ: Which word in the headline adds a touch of sensationalism by exaggerating the fire?',
      ['INFERNO','LOCAL','HERO','CAT'],
      'INFERNO', term: 2),
  _quSec2('secondary','alternative_spelling',6,3,'vocabulary', 'What does "disastrous" mean?', ['causing great damage','very small','happening at night','easily controlled'], 'causing great damage', term: 2),
  _quSec2('secondary','alternative_spelling',6,3,'grammar', 'Which is the correct spelling of the word meaning "a large and destructive fire", used in the text?', ['inferno','enfurno','inpherno','infirno'], 'inferno', term: 2),
  _quSec2('secondary','syllable',6,3,'grammar', 'How many syllables are in the word "apartment"?', ['3','2','4','1'], '3', term: 2),
  _quSec2('secondary','alternative_spelling',6,3,'grammar', 'Identify the correctly spelled word from the passage meaning "people who live in a particular town or city".', ['citizens','sitizens','citizans','citicens'], 'citizens', term: 2),
  _quSec2('secondary','syllable',6,3,'grammar', 'How many syllables are in the word "professionals"?', ['4','5','3','6'], '4', term: 2),

  // ══════════════════════════════════════════════════════════════════════════
  // WEEK 7 — Writing: Formal Letter
  // Tags: suffix, prefix
  // ══════════════════════════════════════════════════════════════════════════

  // Set 1 — letter structure
  _quSec2('secondary','suffix',7,1,'grammar', 'In a formal letter, where does the sender\'s address go?', ['Top right corner','Top left corner','Bottom right corner','It is not included'], 'Top right corner', term: 2),
  _quSec2('secondary','prefix',7,1,'grammar', 'In a formal letter, where does the recipient\'s name/title and address go?', ['On the left side, below the date','Top right corner','Bottom left corner','In the middle of the page'], 'On the left side, below the date', term: 2),
  _quSec2('secondary','suffix',7,1,'grammar', 'Where should the date be written in a formal letter?', ['Below the sender\'s address (or on the right side)','At the very bottom of the letter','Inside the main paragraph','It is not required'], 'Below the sender\'s address (or on the right side)', term: 2),
  _quSec2('secondary','prefix',7,1,'vocabulary', 'What is the "salutation" of a letter?', ['The greeting (e.g., Dear Sir/Madam)','The main body of the letter','The signature','The address'], 'The greeting (e.g., Dear Sir/Madam)', term: 2),
  _quSec2('secondary','suffix',7,1,'grammar', 'If you do not know the name of the person you are writing to, how should you start a formal letter?', ['Dear Sir/Madam,','Hi there,','To whom it concerns,','Hello friend,'], 'Dear Sir/Madam,', term: 2),
  _quSec2('secondary','prefix',7,1,'grammar', 'If you start a formal letter with "Dear Sir/Madam,", how must you sign off?', ['Yours faithfully,','Yours sincerely,','Best wishes,','Cheers,'], 'Yours faithfully,', term: 2),
  _quSec2('secondary','suffix',7,1,'grammar', 'If you start a formal letter with the person\'s name (e.g., "Dear Mr. Bello,"), how must you sign off?', ['Yours sincerely,','Yours faithfully,','With love,','See you later,'], 'Yours sincerely,', term: 2),
  _quSec2('secondary','prefix',7,1,'grammar', 'What comes immediately below your sign-off (e.g., Yours faithfully) in a formal letter?', ['Your signature, followed by your printed full name','Your home address','The date','A postscript (P.S.)'], 'Your signature, followed by your printed full name', term: 2),
  _quSec2('secondary','suffix',7,1,'vocabulary', 'What is the purpose of the "subject line" in a formal letter?', ['To briefly state the main topic or purpose of the letter before the main body','To write the date','To say goodbye','To list your hobbies'], 'To briefly state the main topic or purpose of the letter before the main body', term: 2),
  _quSec2('secondary','prefix',7,1,'grammar', 'Which tone is appropriate for a formal letter of complaint?', ['Polite, firm, and objective','Angry, abusive, and emotional','Funny and sarcastic','Casual and friendly'], 'Polite, firm, and objective', term: 2),

  // Set 2 — letter vocabulary
  _quSec2('secondary','suffix',7,2,'vocabulary', 'What does it mean to write a letter of "application"?', ['A letter written to apply for a job, school, or position','A letter written to complain about a product','A letter inviting someone to a party','A letter to your grandmother'], 'A letter written to apply for a job, school, or position', term: 2),
  _quSec2('secondary','prefix',7,2,'grammar', 'Which opening sentence is best for a job application letter?', ['I am writing to apply for the position of...','I want the job of...','Give me the job of...','Just thought I\'d ask about the job of...'], 'I am writing to apply for the position of...', term: 2),
  _quSec2('secondary','suffix',7,2,'grammar', 'Which phrase is best for ending a formal letter requesting an interview?', ['I look forward to hearing from you soon.','Call me whenever.','Hope to see you.','Let me know if I got it.'], 'I look forward to hearing from you soon.', term: 2),
  _quSec2('secondary','prefix',7,2,'vocabulary', 'What does "enclosure" mean at the bottom of a formal letter?', ['It indicates that other documents (like a CV) are included in the envelope','It means the letter is finished','It is a type of address','It means the envelope is sealed'], 'It indicates that other documents (like a CV) are included in the envelope', term: 2),
  _quSec2('secondary','suffix',7,2,'grammar', 'Which of these is a suitable sentence for a letter of complaint?', ['I am writing to express my dissatisfaction with...','I am so angry about...','Your company is the worst because...','I hate your product which...'], 'I am writing to express my dissatisfaction with...', term: 2),
  _quSec2('secondary','prefix',7,2,'grammar', 'Which word uses the prefix "dis-" to mean "lack of satisfaction"?', ['dissatisfaction','unsatisfaction','missatisfaction','resatisfaction'], 'dissatisfaction', term: 2),
  _quSec2('secondary','suffix',7,2,'grammar', 'Which word uses the suffix "-ment" to turn the verb "require" into a noun?', ['requirement','requiretion','requirely','requireous'], 'requirement', term: 2),
  _quSec2('secondary','prefix',7,2,'grammar', 'Rewrite formally: "Send me the money back."',['I would like to request a full refund.','Give me my refund.','I want my cash back.','Refund me now.'], 'I would like to request a full refund.', term: 2),
  _quSec2('secondary','suffix',7,2,'grammar', 'Rewrite formally: "I am good at teamwork."',['I possess strong collaborative skills.','I like working with people.','Teamwork is my thing.','I am a team player.'], 'I possess strong collaborative skills.', term: 2),
  _quSec2('secondary','prefix',7,2,'grammar', 'Which word correctly uses a prefix to mean "to write again"?', ['rewrite','unwrite','miswrite','diswrite'], 'rewrite', term: 2),

  // Set 3 — comprehension (NOT read by TTS)
  _quSec2('secondary','suffix',7,3,'comprehension',
      'PASSAGE: \n14 Broad Street,\nLagos, Nigeria.\n15th May 2026.\n\nThe Manager,\nZenith Tech Solutions,\nIkeja, Lagos.\n\nDear Sir/Madam,\n\nAPPLICATION FOR THE ROLE OF JUNIOR DEVELOPER\n\nI am writing to formally apply for the position of Junior Developer, as advertised in the Daily Times. I recently graduated with a diploma in Computer Science and possess a strong foundation in programming. I am highly motivated and eager to contribute to your esteemed company. Please find my CV enclosed for your consideration. I look forward to the opportunity of an interview.\n\nYours faithfully,\n[Signature]\nNgozi Okoro\n\nQ: Who is the sender of this letter?',
      ['Ngozi Okoro','The Manager','Zenith Tech Solutions','Daily Times'],
      'Ngozi Okoro', term: 2),
  _quSec2('secondary','prefix',7,3,'comprehension',
      'Refer to the passage above.\n\nQ: Who is the recipient of this letter?',
      ['The Manager of Zenith Tech Solutions','Ngozi Okoro','A Junior Developer','The Daily Times editor'],
      'The Manager of Zenith Tech Solutions', term: 2),
  _quSec2('secondary','suffix',7,3,'comprehension',
      'Refer to the passage above.\n\nQ: Why did Ngozi write the letter?',
      ['To apply for the role of Junior Developer','To complain about a product','To invite the manager to a party','To ask for a refund'],
      'To apply for the role of Junior Developer', term: 2),
  _quSec2('secondary','prefix',7,3,'comprehension',
      'Refer to the passage above.\n\nQ: What document did Ngozi include with the letter?',
      ['Her CV','A photograph','A newspaper clipping','A diploma certificate'],
      'Her CV', term: 2),
  _quSec2('secondary','suffix',7,3,'comprehension',
      'Refer to the passage above.\n\nQ: Why did Ngozi sign off with "Yours faithfully"?',
      ['Because she started the letter with "Dear Sir/Madam"','Because she is a faithful person','Because it is a job application','Because she knows the manager\'s name'],
      'Because she started the letter with "Dear Sir/Madam"', term: 2),
  _quSec2('secondary','prefix',7,3,'vocabulary', 'What does "esteemed" mean in the phrase "esteemed company"?', ['held in great respect; admired','newly opened','very large','tech-focused'], 'held in great respect; admired', term: 2),
  _quSec2('secondary','suffix',7,3,'grammar', 'Which word uses the suffix "-ation" to form a noun from the verb "consider"?', ['consideration','application','foundation','motivated'], 'consideration', term: 2),
  _quSec2('secondary','prefix',7,3,'grammar', 'Identify the word with the prefix "en-" meaning "inside" or "included".', ['enclosed','esteemed','interview','advertised'], 'enclosed', term: 2),
  _quSec2('secondary','suffix',7,3,'vocabulary', 'What does "possess" mean in the passage?', ['to have or own','to borrow','to learn','to teach'], 'to have or own', term: 2),
  _quSec2('secondary','prefix',7,3,'grammar', 'What is the function of the line "APPLICATION FOR THE ROLE OF JUNIOR DEVELOPER"?', ['It is the subject line, summarizing the purpose of the letter','It is the address of the company','It is the salutation','It is a demand for a job'], 'It is the subject line, summarizing the purpose of the letter', term: 2),

  // ══════════════════════════════════════════════════════════════════════════
  // WEEK 8 — Writing: Speech
  // Tags: alliteration, prefix
  // ══════════════════════════════════════════════════════════════════════════

  // Set 1 — speech techniques
  _quSec2('secondary','alliteration',8,1,'vocabulary', 'When writing a speech, what is "direct address"?', ['Speaking directly to the audience using pronouns like "you" and "we"','Giving the audience your home address','Shouting at the audience','Looking straight ahead without moving'], 'Speaking directly to the audience using pronouns like "you" and "we"', term: 2),
  _quSec2('secondary','prefix',8,1,'vocabulary', 'What is a "rhetorical question"?', ['A question asked to make a point or make the audience think, rather than to get an answer','A question asked by the audience to the speaker','A question that has no correct answer','A very difficult mathematical question'], 'A question asked to make a point or make the audience think, rather than to get an answer', term: 2),
  _quSec2('secondary','alliteration',8,1,'grammar', 'Which of these is a rhetorical question?', ['How much longer must we wait for justice?','What time is it?','Where is the bathroom?','Can you hear me at the back?'], 'How much longer must we wait for justice?', term: 2),
  _quSec2('secondary','prefix',8,1,'vocabulary', 'What is the "rule of three" (or tricolon) in speech writing?', ['Grouping words, phrases, or ideas in threes to make them more memorable','Speaking for exactly three minutes','Having three people give the speech','Writing three drafts of the speech'], 'Grouping words, phrases, or ideas in threes to make them more memorable', term: 2),
  _quSec2('secondary','alliteration',8,1,'grammar', 'Which sentence uses the rule of three?', ['We must be brave, we must be bold, and we must be united.','We must be brave and bold.','We must be very brave today.','I have three points to make.'], 'We must be brave, we must be bold, and we must be united.', term: 2),
  _quSec2('secondary','prefix',8,1,'vocabulary', 'What is "repetition" in a speech?', ['Repeating a word or phrase for emphasis and impact','Saying the wrong word by accident','Stammering when nervous','Reading the same line twice because you lost your place'], 'Repeating a word or phrase for emphasis and impact', term: 2),
  _quSec2('secondary','alliteration',8,1,'grammar', 'Identify the repetition: "I have a dream... I have a dream today."', ['The phrase "I have a dream" is repeated','The word "today" is used','The speech is very long','There is an ellipsis (...)'], 'The phrase "I have a dream" is repeated', term: 2),
  _quSec2('secondary','prefix',8,1,'vocabulary', 'Why do speakers use emotive language?', ['To evoke a strong emotional reaction from the audience','To make the speech completely factual','To confuse the audience','To sound highly academic and boring'], 'To evoke a strong emotional reaction from the audience', term: 2),
  _quSec2('secondary','alliteration',8,1,'grammar', 'Which phrase uses emotive language?', ['Innocent children are suffering in devastating poverty.','The poverty rate is 15%.','Some people have less money.','Children live in poverty.'], 'Innocent children are suffering in devastating poverty.', term: 2),
  _quSec2('secondary','prefix',8,1,'vocabulary', 'What is an "anecdote"?', ['A short, interesting story about a real incident or person used to illustrate a point','A type of medicine','A long, boring list of statistics','A lie told in a speech'], 'A short, interesting story about a real incident or person used to illustrate a point', term: 2),

  // Set 2 — speech techniques
  _quSec2('secondary','alliteration',8,2,'grammar', 'Which is an example of alliteration in a speech?', ['We need bold, brave action today!','We need quick action now.','We need to be brave.','Action is needed.'], 'We need bold, brave action today!', term: 2),
  _quSec2('secondary','prefix',8,2,'vocabulary', 'How should a good speech begin?', ['With a strong hook, such as a surprising fact, quote, or rhetorical question','By stating your name and age','By coughing into the microphone','With the conclusion'], 'With a strong hook, such as a surprising fact, quote, or rhetorical question', term: 2),
  _quSec2('secondary','alliteration',8,2,'grammar', 'Which of these is a strong hook for a speech about the environment?', ['Did you know that by 2050, there will be more plastic in the ocean than fish?','Hello, my speech is about the environment.','I am here to talk about plastic.','Trees are good.'], 'Did you know that by 2050, there will be more plastic in the ocean than fish?', term: 2),
  _quSec2('secondary','prefix',8,2,'grammar', 'Which prefix word is often used in speeches to mean "to build again"?', ['rebuild','unbuild','misbuild','disbuild'], 'rebuild', term: 2),
  _quSec2('secondary','alliteration',8,2,'vocabulary', 'What is "contrast" in a speech?', ['Placing two opposite ideas near each other to highlight their differences (e.g., light vs dark)','Speaking loudly then softly','Wearing contrasting colors on stage','Agreeing with everything'], 'Placing two opposite ideas near each other to highlight their differences (e.g., light vs dark)', term: 2),
  _quSec2('secondary','prefix',8,2,'grammar', 'Which of these shows contrast?', ['We were promised peace, but we were given war.','We want peace and happiness.','War is bad.','Peace is good.'], 'We were promised peace, but we were given war.', term: 2),
  _quSec2('secondary','alliteration',8,2,'grammar', 'Identify the rhetorical device: "Blood, sweat, and tears."', ['Rule of three (Tricolon)','Rhetorical question','Direct address','Anecdote'], 'Rule of three (Tricolon)', term: 2),
  _quSec2('secondary','prefix',8,2,'grammar', 'Identify the rhetorical device: "My fellow students, together we can change this school!"', ['Direct address (and inclusive pronouns)','Repetition','Contrast','Anecdote'], 'Direct address (and inclusive pronouns)', term: 2),
  _quSec2('secondary','alliteration',8,2,'vocabulary', 'What is a "call to action" at the end of a speech?', ['A clear instruction telling the audience what they should do next','A phone call made on stage','A loud shout','A list of references'], 'A clear instruction telling the audience what they should do next', term: 2),
  _quSec2('secondary','prefix',8,2,'grammar', 'Which of these is a call to action?', ['Therefore, I urge you to vote for me tomorrow!','In conclusion, that is what happened.','Thank you for listening.','I hope you enjoyed my speech.'], 'Therefore, I urge you to vote for me tomorrow!', term: 2),

  // Set 3 — comprehension (NOT read by TTS)
  _quSec2('secondary','alliteration',8,3,'comprehension',
      'PASSAGE: "My fellow students, have you ever looked at our school yard and felt ashamed? We walk past mountains of messy garbage every single day. We ignore the wrappers, we ignore the bottles, and we ignore the plastic bags. This is our home away from home. Are we going to let it become a landfill? I remember last week, a young Primary 1 boy tripped over a pile of trash and cut his knee. That shouldn\'t happen here. We must be clean, we must be careful, and we must be proud. Join me this Saturday for a school clean-up. Let\'s restore our school\'s dignity!"\n\nQ: Who is the speaker addressing in this speech?',
      ['Fellow students','Teachers','The principal','Parents'],
      'Fellow students', term: 2),
  _quSec2('secondary','prefix',8,3,'comprehension',
      'Refer to the passage above.\n\nQ: What is the first sentence ("have you ever looked... felt ashamed?") an example of?',
      ['A rhetorical question','An anecdote','A call to action','A metaphor'],
      'A rhetorical question', term: 2),
  _quSec2('secondary','alliteration',8,3,'comprehension',
      'Refer to the passage above.\n\nQ: "We ignore the wrappers, we ignore the bottles, and we ignore the plastic bags." What two rhetorical devices are used here?',
      ['Repetition and the rule of three','Metaphor and simile','Personification and alliteration','Anecdote and contrast'],
      'Repetition and the rule of three', term: 2),
  _quSec2('secondary','prefix',8,3,'comprehension',
      'Refer to the passage above.\n\nQ: The story about the Primary 1 boy who tripped and cut his knee is an example of what?',
      ['An anecdote','A rhetorical question','A metaphor','A call to action'],
      'An anecdote', term: 2),
  _quSec2('secondary','alliteration',8,3,'comprehension',
      'Refer to the passage above.\n\nQ: "Join me this Saturday for a school clean-up" is an example of what?',
      ['A call to action','A rhetorical question','An anecdote','The rule of three'],
      'A call to action', term: 2),
  _quSec2('secondary','alliteration',8,3,'grammar', 'Identify the alliteration used to describe the garbage in the second sentence.', ['mountains of messy','single day','walk past','plastic bags'], 'mountains of messy', term: 2),
  _quSec2('secondary','prefix',8,3,'grammar', 'Which word in the passage uses the prefix "re-" meaning "bring back to a previous condition"?', ['restore','remember','repetition','rhetorical'], 'restore', term: 2),
  _quSec2('secondary','alliteration',8,3,'vocabulary', 'What does "ashamed" mean?', ['feeling guilt or embarrassment','feeling happy and proud','feeling angry and violent','feeling confused'], 'feeling guilt or embarrassment', term: 2),
  _quSec2('secondary','prefix',8,3,'vocabulary', 'What is a "landfill"?', ['a place to dispose of refuse and other waste material by burying it','a beautiful park','a type of school building','a plastic bag'], 'a place to dispose of refuse and other waste material by burying it', term: 2),
  _quSec2('secondary','alliteration',8,3,'grammar', 'Identify the use of inclusive pronouns in the passage.', ['We, our, us','I, me, my','They, them, their','He, she, it'], 'We, our, us', term: 2),

  // ══════════════════════════════════════════════════════════════════════════
  // WEEK 9 — Advanced Homophones
  // Tags: homophone
  // ══════════════════════════════════════════════════════════════════════════

  // Set 1 — homophones
  _quSec2('secondary','homophone',9,1,'grammar', 'Which word fits best: "The artist painted a beautiful landscape on the ___."?', ['canvas','canvass','canvis','canvess'], 'canvas', term: 2),
  _quSec2('secondary','homophone',9,1,'grammar', 'Which word fits best: "We need volunteers to ___ the neighborhood for votes."?', ['canvass','canvas','canvis','canvess'], 'canvass', term: 2),
  _quSec2('secondary','homophone',9,1,'grammar', 'Which word fits best: "My little sister was ___ in 2015."?', ['born','borne','bourn','bone'], 'born', term: 2),
  _quSec2('secondary','homophone',9,1,'grammar', 'Which word fits best: "The cost of the damage must be ___ by the insurance company."?', ['borne','born','bourn','bone'], 'borne', term: 2),
  _quSec2('secondary','homophone',9,1,'grammar', 'In British/Nigerian English, which word fits best: "You must renew your driving ___."?', ['licence (noun)','license (verb)','lisence','lysence'], 'licence (noun)', term: 2),
  _quSec2('secondary','homophone',9,1,'grammar', 'In British/Nigerian English, which word fits best: "The factory is ___ to produce chemicals."?', ['licensed (verb)','licenced','lisenced','lysensed'], 'licensed (verb)', term: 2),
  _quSec2('secondary','homophone',9,1,'grammar', 'Which word fits best: "The car crashed into a ___ vehicle." (meaning not moving)', ['stationary','stationery','stationry','stationari'], 'stationary', term: 2),
  _quSec2('secondary','homophone',9,1,'grammar', 'Which word fits best: "I bought some new pens and paper at the ___ shop."?', ['stationery','stationary','stationry','stationari'], 'stationery', term: 2),
  _quSec2('secondary','homophone',9,1,'grammar', 'Which word fits best: "The school ___ gave a strict warning at assembly."?', ['principal','principle','princepal','princeple'], 'principal', term: 2),
  _quSec2('secondary','homophone',9,1,'grammar', 'Which word fits best: "Honesty is a fundamental ___ of a good society."?', ['principle','principal','princepal','princeple'], 'principle', term: 2),

  // Set 2 — homophones
  _quSec2('secondary','homophone',9,2,'grammar', 'Which word fits best: "She offered a nice ___ on my new haircut."?', ['compliment','complement','complimant','complemant'], 'compliment', term: 2),
  _quSec2('secondary','homophone',9,2,'grammar', 'Which word fits best: "The spicy sauce is a perfect ___ to the grilled fish." (meaning it completes it)', ['complement','compliment','complimant','complemant'], 'complement', term: 2),
  _quSec2('secondary','homophone',9,2,'grammar', 'Which word fits best: "The camels walked across the hot, dry ___."?', ['desert','dessert','dezert','desart'], 'desert', term: 2),
  _quSec2('secondary','homophone',9,2,'grammar', 'Which word fits best: "We had chocolate cake for ___."?', ['dessert','desert','dezert','desart'], 'dessert', term: 2),
  _quSec2('secondary','homophone',9,2,'grammar', 'Which word fits best: "He walked ___ the door."?', ['through','threw','thorough','though'], 'through', term: 2),
  _quSec2('secondary','homophone',9,2,'grammar', 'Which word fits best: "She ___ the ball over the fence."?', ['threw','through','thorough','though'], 'threw', term: 2),
  _quSec2('secondary','homophone',9,2,'grammar', 'Which word fits best: "The dog wagged ___ tail."?', ['its','it\'s','its\'','it'], 'its', term: 2),
  _quSec2('secondary','homophone',9,2,'grammar', 'Which word fits best: "___ raining heavily outside."?', ['It\'s','Its','Its\'','It'], 'It\'s', term: 2),
  _quSec2('secondary','homophone',9,2,'grammar', 'Which word fits best: "They bought ___ textbooks yesterday."?', ['their','there','they\'re','there\'s'], 'their', term: 2),
  _quSec2('secondary','homophone',9,2,'grammar', 'Which word fits best: "___ going to the cinema tonight."?', ['They\'re','Their','There','Their\'re'], 'They\'re', term: 2),

  // Set 3 — comprehension (NOT read by TTS)
  _quSec2('secondary','homophone',9,3,'comprehension',
      'PASSAGE: The principal of the school decided to introduce a new principle to encourage art. He announced that the school would supply canvas and paints for all students. To raise funds, students were asked to canvass the local neighborhood for donations. "It\'s a wonderful idea," said the art teacher. "Its success depends on everyone\'s participation." After a week of hard work, the students had collected enough money. To celebrate, they had a party with a massive cake for dessert, making sure they didn\'t desert their posts until the classroom was completely clean.\n\nQ: Who decided to introduce the new idea?',
      ['The principal','The principle','The art teacher','The students'],
      'The principal', term: 2),
  _quSec2('secondary','homophone',9,3,'comprehension',
      'Refer to the passage above.\n\nQ: What did the school supply for the students?',
      ['canvas and paints','canvass and paints','stationary','stationery'],
      'canvas and paints', term: 2),
  _quSec2('secondary','homophone',9,3,'comprehension',
      'Refer to the passage above.\n\nQ: What were the students asked to do in the neighborhood?',
      ['canvass for donations','canvas for donations','desert the area','dessert the area'],
      'canvass for donations', term: 2),
  _quSec2('secondary','homophone',9,3,'comprehension',
      'Refer to the passage above.\n\nQ: What did they have to celebrate?',
      ['a massive cake for dessert','a massive cake for desert','a trip to the desert','a new canvas'],
      'a massive cake for dessert', term: 2),
  _quSec2('secondary','homophone',9,3,'comprehension',
      'Refer to the passage above.\n\nQ: What did the students make sure not to do until the room was clean?',
      ['desert their posts','dessert their posts','eat their dessert','paint on the canvas'],
      'desert their posts', term: 2),
  _quSec2('secondary','homophone',9,3,'vocabulary', 'What does "principle" (spelled with -ple) mean in the passage?', ['a fundamental truth, rule, or belief','the head of a school','a type of fabric','a sweet food'], 'a fundamental truth, rule, or belief', term: 2),
  _quSec2('secondary','homophone',9,3,'grammar', 'In the sentence "It\'s a wonderful idea", what does "It\'s" stand for?', ['It is','Its','It has (sometimes, but here It is)','It was'], 'It is', term: 2),
  _quSec2('secondary','homophone',9,3,'grammar', 'In the phrase "Its success depends...", why is there no apostrophe in "Its"?', ['Because it is a possessive pronoun showing ownership','Because it means "it is"','Because it is a plural noun','Because it is a typo'], 'Because it is a possessive pronoun showing ownership', term: 2),
  _quSec2('secondary','homophone',9,3,'vocabulary', 'What does "canvass" (with double ss) mean?', ['to solicit votes, opinions, or donations from people','a strong, coarse unbleached cloth','to paint a picture','to run away'], 'to solicit votes, opinions, or donations from people', term: 2),
  _quSec2('secondary','homophone',9,3,'vocabulary', 'What does "desert" (verb, pronounced de-ZERT) mean in the last sentence?', ['to abandon or leave somewhere in a disloyal way','a dry, barren area of land','the sweet course eaten at the end of a meal','to paint on a canvas'], 'to abandon or leave somewhere in a disloyal way', term: 2),

  // ══════════════════════════════════════════════════════════════════════════
  // WEEK 10 — Grammar: Relative Clauses
  // Tags: suffix
  // ══════════════════════════════════════════════════════════════════════════

  // Set 1 — relative clauses
  _quSec2('secondary','suffix',10,1,'grammar', 'What does a relative clause do?', ['It gives more information about a noun in the sentence','It joins two verbs together','It starts a question','It acts as an exclamation'], 'It gives more information about a noun in the sentence', term: 2),
  _quSec2('secondary','suffix',10,1,'grammar', 'Which of these is a relative pronoun?', ['who','because','and','quickly'], 'who', term: 2),
  _quSec2('secondary','suffix',10,1,'grammar', 'Which relative pronoun is used to refer to people?', ['who (or whom/whose)','which','where','what'], 'who (or whom/whose)', term: 2),
  _quSec2('secondary','suffix',10,1,'grammar', 'Which relative pronoun is used to refer to things or animals?', ['which (or that)','who','whom','whose'], 'which (or that)', term: 2),
  _quSec2('secondary','suffix',10,1,'grammar', 'Which relative pronoun is used to show possession (ownership)?', ['whose','who','which','that'], 'whose', term: 2),
  _quSec2('secondary','suffix',10,1,'grammar', 'Choose the correct pronoun: "The girl ___ won the race is my sister."', ['who','which','whose','where'], 'who', term: 2),
  _quSec2('secondary','suffix',10,1,'grammar', 'Choose the correct pronoun: "The book ___ I read yesterday was excellent."', ['which (or that)','who','whose','whom'], 'which (or that)', term: 2),
  _quSec2('secondary','suffix',10,1,'grammar', 'Choose the correct pronoun: "That is the man ___ car was stolen."', ['whose','who','which','that'], 'whose', term: 2),
  _quSec2('secondary','suffix',10,1,'grammar', 'What is a "defining" (or restrictive) relative clause?', ['It gives essential information needed to identify the noun; no commas are used','It gives extra, non-essential information; commas are used','It asks a direct question','It is a sentence without a verb'], 'It gives essential information needed to identify the noun; no commas are used', term: 2),
  _quSec2('secondary','suffix',10,1,'grammar', 'Identify the relative clause: "The dog that barked all night belongs to my neighbor."', ['that barked all night','The dog','belongs to my neighbor','The dog that'], 'that barked all night', term: 2),

  // Set 2 — defining vs non-defining
  _quSec2('secondary','suffix',10,2,'grammar', 'What is a "non-defining" (or non-restrictive) relative clause?', ['It gives extra, non-essential information about a known noun; it is separated by commas','It gives essential information needed to identify the noun','It starts with a subordinating conjunction','It cannot contain a verb'], 'It gives extra, non-essential information about a known noun; it is separated by commas', term: 2),
  _quSec2('secondary','suffix',10,2,'grammar', 'Which sentence uses a non-defining relative clause correctly?', ['My mother, who is a doctor, works at the hospital.','My mother who is a doctor works at the hospital.','My mother, who is a doctor works at the hospital.','My mother who is a doctor, works at the hospital.'], 'My mother, who is a doctor, works at the hospital.', term: 2),
  _quSec2('secondary','suffix',10,2,'grammar', 'Which sentence uses a defining relative clause?', ['The students who passed the exam were very happy.','Paris, which is the capital of France, is beautiful.','Mr. John, whose car is red, is my teacher.','The sun, which is a star, gives us light.'], 'The students who passed the exam were very happy.', term: 2),
  _quSec2('secondary','suffix',10,2,'grammar', 'In a non-defining relative clause, which relative pronoun can NEVER be used?', ['that (e.g., you cannot say "Paris, that is beautiful,...")','which','who','whose'], 'that (e.g., you cannot say "Paris, that is beautiful,...")', term: 2),
  _quSec2('secondary','suffix',10,2,'grammar', 'Choose the correct punctuation: "Lagos ___ is a huge city ___ is very busy."', [', which is a huge city ,','which is a huge city',', which is a huge city','which is a huge city ,'], ', which is a huge city ,', term: 2),
  _quSec2('secondary','suffix',10,2,'grammar', 'Combine using a relative clause: "The boy is my brother. He is wearing a blue shirt."', ['The boy who is wearing a blue shirt is my brother.','The boy is my brother who is wearing a blue shirt.','The boy which is wearing a blue shirt is my brother.','The boy whose shirt is blue is my brother wearing.'], 'The boy who is wearing a blue shirt is my brother.', term: 2),
  _quSec2('secondary','suffix',10,2,'grammar', 'Combine using a relative clause: "I found the keys. I lost them yesterday."', ['I found the keys which I lost yesterday.','I found the keys who I lost yesterday.','I found the keys whose I lost yesterday.','I found the keys I lost them yesterday which.'], 'I found the keys which I lost yesterday.', term: 2),
  _quSec2('secondary','suffix',10,2,'vocabulary', 'What does the word "clause" mean in grammar?', ['A group of words containing a subject and a verb','A single word','A punctuation mark','A spelling rule'], 'A group of words containing a subject and a verb', term: 2),
  _quSec2('secondary','suffix',10,2,'grammar', 'Identify the error: "The woman which lives next door is a teacher."', ['"which" should be "who"','There should be a comma after woman','The verb "lives" is wrong','There is no error'], '"which" should be "who"', term: 2),
  _quSec2('secondary','suffix',10,2,'grammar', 'Identify the relative pronoun in this sentence: "The town where I was born is very small."', ['where','The','born','small'], 'where', term: 2),

  // Set 3 — comprehension (NOT read by TTS)
  _quSec2('secondary','suffix',10,3,'comprehension',
      'PASSAGE: Dr. Ojo, who is a famous historian, visited our school yesterday. She gave a fascinating lecture about the artifacts which were recently discovered in the northern region. The students who attended the lecture were amazed by the pictures she showed. One specific artifact, whose origin is still a mystery, looked like an ancient crown. The museum where the items are currently kept is planning a massive exhibition next month. Dr. Ojo promised to return with more details soon.\n\nQ: Who visited the school yesterday?',
      ['Dr. Ojo','A famous scientist','The students','The museum director'],
      'Dr. Ojo', term: 2),
  _quSec2('secondary','suffix',10,3,'comprehension',
      'Refer to the passage above.\n\nQ: What is the non-defining relative clause in the first sentence?',
      ['who is a famous historian','visited our school yesterday','Dr. Ojo','visited our school'],
      'who is a famous historian', term: 2),
  _quSec2('secondary','suffix',10,3,'comprehension',
      'Refer to the passage above.\n\nQ: What were the students amazed by?',
      ['The pictures she showed','The museum','The northern region','The crown'],
      'The pictures she showed', term: 2),
  _quSec2('secondary','suffix',10,3,'comprehension',
      'Refer to the passage above.\n\nQ: What is the relative clause that gives essential information about the students?',
      ['who attended the lecture','were amazed by the pictures','who is a famous historian','whose origin is still a mystery'],
      'who attended the lecture', term: 2),
  _quSec2('secondary','suffix',10,3,'comprehension',
      'Refer to the passage above.\n\nQ: What relative pronoun is used to show that the origin belongs to the artifact?',
      ['whose','who','which','where'],
      'whose', term: 2),
  _quSec2('secondary','suffix',10,3,'grammar', 'In the phrase "the artifacts which were recently discovered", what does "which" refer to?', ['the artifacts','Dr. Ojo','the lecture','the northern region'], 'the artifacts', term: 2),
  _quSec2('secondary','suffix',10,3,'grammar', 'Why is "who is a famous historian" surrounded by commas?', ['Because it is a non-defining clause giving extra information about a specific person (Dr. Ojo)','Because it is a defining clause','Because it is a question','Because it is a mistake'], 'Because it is a non-defining clause giving extra information about a specific person (Dr. Ojo)', term: 2),
  _quSec2('secondary','suffix',10,3,'grammar', 'Why is "who attended the lecture" NOT surrounded by commas?', ['Because it is a defining clause; it tells us exactly WHICH students were amazed','Because it is a non-defining clause','Because it is at the start of the sentence','Because "who" never takes commas'], 'Because it is a defining clause; it tells us exactly WHICH students were amazed', term: 2),
  _quSec2('secondary','suffix',10,3,'vocabulary', 'What is an "exhibition"?', ['A public display of works of art or items of interest','A type of ancient crown','A lecture given by a historian','A hiding place for artifacts'], 'A public display of works of art or items of interest', term: 2),
  _quSec2('secondary','suffix',10,3,'grammar', 'Which relative pronoun refers to a place in the sentence: "The museum where the items are currently kept..."?', ['where','which','who','whose'], 'where', term: 2),

// ══════════════════════════════════════════════════════════════════════════
  // WEEK 11 — Vocabulary: Subject-Specific (Science)
  // Tags: prefix, suffix
  // ══════════════════════════════════════════════════════════════════════════

  // Set 1 — science vocabulary
  _quSec2('secondary','prefix',11,1,'vocabulary', 'What does the prefix "exo-" mean in the word "exoskeleton"?', ['outside or external','inside or internal','water','heat'], 'outside or external', term: 2),
  _quSec2('secondary','prefix',11,1,'vocabulary', 'What does the prefix "endo-" mean in the word "endothermic"?', ['inside or internal','outside or external','light','cold'], 'inside or internal', term: 2),
  _quSec2('secondary','suffix',11,1,'grammar', 'Which suffix changes the noun "science" into an adjective?', ['-ific (scientific)','-ly (sciencely)','-ment (sciencement)','-ous (scienceous)'], '-ific (scientific)', term: 2),
  _quSec2('secondary','prefix',11,1,'vocabulary', 'What does the prefix "photo-" mean in "photosynthesis"?', ['light','water','earth','life'], 'light', term: 2),
  _quSec2('secondary','suffix',11,1,'vocabulary', 'What does the suffix "-ology" mean in "biology"?', ['the study of','a fear of','a disease of','a machine that measures'], 'the study of', term: 2),
  _quSec2('secondary','prefix',11,1,'vocabulary', 'If "therm" means heat, what does a "thermodynamic" process involve?', ['heat and energy movement','light and sound','water and earth','plants and animals'], 'heat and energy movement', term: 2),
  _quSec2('secondary','prefix',11,1,'vocabulary', 'What does the prefix "micro-" mean in "microorganism"?', ['extremely small','very large','dead','fast'], 'extremely small', term: 2),
  _quSec2('secondary','suffix',11,1,'grammar', 'Which suffix turns the verb "evaporate" into a noun?', ['-ion (evaporation)','-ment (evaporatement)','-ly (evaporately)','-ance (evaporatance)'], '-ion (evaporation)', term: 2),
  _quSec2('secondary','prefix',11,1,'vocabulary', 'What is an "ecosystem"? (eco = environment)', ['a biological community of interacting organisms and their physical environment','a machine used to measure weather','a type of spaceship','a chemical reaction'], 'a biological community of interacting organisms and their physical environment', term: 2),
  _quSec2('secondary','suffix',11,1,'vocabulary', 'What does "cellular" mean? (cell + -ular)', ['relating to or consisting of living cells','made of plastic','found in outer space','a type of rock'], 'relating to or consisting of living cells', term: 2),

  // Set 2 — science vocabulary
  _quSec2('secondary','prefix',11,2,'vocabulary', 'What is a "hypothesis"? (hypo = under/below, thesis = proposition)', ['a proposed explanation made on the basis of limited evidence as a starting point for further investigation','a proven scientific fact','a type of microscope','a chemical element'], 'a proposed explanation made on the basis of limited evidence as a starting point for further investigation', term: 2),
  _quSec2('secondary','suffix',11,2,'grammar', 'Which word correctly uses a suffix to mean "able to be observed"?', ['observable','observible','observment','observely'], 'observable', term: 2),
  _quSec2('secondary','prefix',11,2,'vocabulary', 'The prefix "kilo-" means 1,000. What is a "kilogram"?', ['one thousand grams','one hundred grams','one million grams','one gram'], 'one thousand grams', term: 2),
  _quSec2('secondary','prefix',11,2,'vocabulary', 'The prefix "milli-" means one-thousandth. What is a "millimeter"?', ['one-thousandth of a meter','one thousand meters','one million meters','one meter'], 'one-thousandth of a meter', term: 2),
  _quSec2('secondary','suffix',11,2,'grammar', 'Identify the noun suffix in the word "experiment".', ['-ment','ex-','peri-','-ent'], '-ment', term: 2),
  _quSec2('secondary','prefix',11,2,'vocabulary', 'What does "antibiotic" mean? (anti = against, bio = life)', ['a medicine that destroys or slows down the growth of bacteria (living organisms)','a medicine that cures viruses','a type of healthy food','a machine that pumps blood'], 'a medicine that destroys or slows down the growth of bacteria (living organisms)', term: 2),
  _quSec2('secondary','suffix',11,2,'vocabulary', 'What does the word "genetic" mean? (gen + -etic)', ['relating to genes or heredity','relating to gravity','relating to weather patterns','relating to ocean currents'], 'relating to genes or heredity', term: 2),
  _quSec2('secondary','prefix',11,2,'vocabulary', 'What does the prefix "hydro-" mean in "hydrochloric acid"?', ['water (or hydrogen)','heat','earth','light'], 'water (or hydrogen)', term: 2),
  _quSec2('secondary','suffix',11,2,'grammar', 'Which suffix changes the noun "molecule" into an adjective?', ['-ar (molecular)','-ly (moleculely)','-ous (moleculous)','-ic (moleculic)'], '-ar (molecular)', term: 2),
  _quSec2('secondary','prefix',11,2,'grammar', 'Which word uses a prefix to mean "to act together" in chemistry?', ['react','unact','misact','disact'], 'react', term: 2),

  // Set 3 — comprehension (NOT read by TTS)
  _quSec2('secondary','prefix',11,3,'comprehension',
      'PASSAGE: In the school science laboratory, Mr. Idris introduced his students to the wonders of cellular biology. "Today, we will test a hypothesis about photosynthesis," he announced. He placed a green aquatic plant in a beaker of water and positioned a bright lamp next to it. "Photosynthesis requires light energy," he explained. Soon, microscopic bubbles began to appear on the plant\'s leaves. "Look closely," Mr. Idris said. "Those bubbles are oxygen being released. This observable reaction proves that our hypothesis was correct: the plant is actively converting light into energy."\n\nQ: What subject is Mr. Idris teaching?',
      ['Cellular biology','Physics','Chemistry','Mathematics'],
      'Cellular biology', term: 2),
  _quSec2('secondary','prefix',11,3,'comprehension',
      'Refer to the passage above.\n\nQ: What did the class test a hypothesis about?',
      ['Photosynthesis','Gravity','Chemical bonds','Exoskeletons'],
      'Photosynthesis', term: 2),
  _quSec2('secondary','prefix',11,3,'comprehension',
      'Refer to the passage above.\n\nQ: What did Mr. Idris place in the beaker of water?',
      ['A green aquatic plant','A microscopic animal','A chemical powder','A thermometer'],
      'A green aquatic plant', term: 2),
  _quSec2('secondary','prefix',11,3,'comprehension',
      'Refer to the passage above.\n\nQ: What appeared on the plant\'s leaves?',
      ['Microscopic bubbles','Small bugs','A bright light','A dark shadow'],
      'Microscopic bubbles', term: 2),
  _quSec2('secondary','suffix',11,3,'comprehension',
      'Refer to the passage above.\n\nQ: What did the observable reaction prove?',
      ['That the hypothesis was correct and the plant is converting light into energy','That the plant was dying','That the lamp was broken','That the water was boiling'],
      'That the hypothesis was correct and the plant is converting light into energy', term: 2),
  _quSec2('secondary','prefix',11,3,'vocabulary', 'Based on its prefix (photo = light), what is "photosynthesis"?', ['The process by which green plants use sunlight to synthesize nutrients','A chemical that kills bacteria','A device used to measure heat','A type of underwater camera'], 'The process by which green plants use sunlight to synthesize nutrients', term: 2),
  _quSec2('secondary','prefix',11,3,'vocabulary', 'What does "microscopic" mean in the passage?', ['So small as to be visible only with a microscope','Very large','Floating on the surface','Hot and boiling'], 'So small as to be visible only with a microscope', term: 2),
  _quSec2('secondary','suffix',11,3,'grammar', 'Identify the adjective from the passage that means "able to be noticed or perceived".', ['observable','cellular','microscopic','actively'], 'observable', term: 2),
  _quSec2('secondary','prefix',11,3,'vocabulary', 'What is a "hypothesis" as used by Mr. Idris?', ['An educated guess or proposed explanation that is tested by an experiment','A proven scientific law','A type of plant','A piece of lab equipment'], 'An educated guess or proposed explanation that is tested by an experiment', term: 2),
  _quSec2('secondary','suffix',11,3,'grammar', 'What suffix is added to "active" to make the adverb "actively"?', ['-ly','-ive','-tion','-ment'], '-ly', term: 2),

  // ══════════════════════════════════════════════════════════════════════════
  // WEEK 12 — Oral: Structured Academic Discussion
  // Tags: syllable
  // ══════════════════════════════════════════════════════════════════════════

  // Set 1 — discussion terminology
  _quSec2('secondary','syllable',12,1,'vocabulary', 'What is a "structured academic discussion"?', ['A formal conversation where participants use evidence to debate or explore a topic','A casual chat with friends at lunch','A speech given by one person','An argument where people shout at each other'], 'A formal conversation where participants use evidence to debate or explore a topic', term: 2),
  _quSec2('secondary','syllable',12,1,'grammar', 'How many syllables are in the word "discussion"?', ['3','2','4','1'], '3', term: 2),
  _quSec2('secondary','syllable',12,1,'vocabulary', 'What does it mean to "clarify" a point?', ['To make a statement less confused and more clearly comprehensible','To change the subject completely','To disagree strongly','To stop talking'], 'To make a statement less confused and more clearly comprehensible', term: 2),
  _quSec2('secondary','syllable',12,1,'grammar', 'How many syllables are in the word "clarify"?', ['3','4','2','5'], '3', term: 2),
  _quSec2('secondary','syllable',12,1,'vocabulary', 'In a discussion, what is "evidence"?', ['Facts, statistics, or quotes used to support an argument','A wild guess','A personal insult','A change in tone of voice'], 'Facts, statistics, or quotes used to support an argument', term: 2),
  _quSec2('secondary','syllable',12,1,'grammar', 'How many syllables are in the word "evidence"?', ['3','2','4','5'], '3', term: 2),
  _quSec2('secondary','syllable',12,1,'vocabulary', 'What does it mean to "counter" an argument?', ['To speak or act in opposition to it; to offer an opposing view','To agree with it completely','To repeat it loudly','To write it down'], 'To speak or act in opposition to it; to offer an opposing view', term: 2),
  _quSec2('secondary','syllable',12,1,'grammar', 'How many syllables are in the word "perspective"?', ['3','2','4','1'], '3', term: 2),
  _quSec2('secondary','syllable',12,1,'vocabulary', 'Which phrase is best for politely disagreeing in an academic discussion?', ['"I see your point, however, the evidence suggests..."','"You are completely wrong."','"That makes no sense."','"Be quiet and listen to me."'], '"I see your point, however, the evidence suggests..."', term: 2),
  _quSec2('secondary','syllable',12,1,'grammar', 'Which phrase is best for asking for clarification?', ['"Could you elaborate on what you mean by that?"','"Why did you say that?"','"I don\'t get it."','"Stop talking."'], '"Could you elaborate on what you mean by that?"', term: 2),

  // Set 2 — discussion language
  _quSec2('secondary','syllable',12,2,'vocabulary', 'What does "elaborate" mean in a discussion context?', ['To add more detail concerning what has already been said','To say something much faster','To change the topic','To disagree with the speaker'], 'To add more detail concerning what has already been said', term: 2),
  _quSec2('secondary','syllable',12,2,'grammar', 'How many syllables are in the word "elaborate" (verb)?', ['4','3','5','2'], '4', term: 2), // e-lab-o-rate
  _quSec2('secondary','syllable',12,2,'vocabulary', 'What is a "consensus"?', ['A general agreement among the members of a given group','A fierce argument','A set of rules for speaking','A type of dictionary'], 'A general agreement among the members of a given group', term: 2),
  _quSec2('secondary','syllable',12,2,'grammar', 'How many syllables are in the word "consensus"?', ['3','2','4','1'], '3', term: 2),
  _quSec2('secondary','syllable',12,2,'vocabulary', 'What does "synthesise" mean during a discussion?', ['To combine a number of different ideas into a coherent whole','To break an argument apart','To shout over someone else','To refuse to listen'], 'To combine a number of different ideas into a coherent whole', term: 2),
  _quSec2('secondary','syllable',12,2,'grammar', 'How many syllables are in the word "synthesise"?', ['3','4','2','5'], '3', term: 2), // syn-the-sise
  _quSec2('secondary','syllable',12,2,'grammar', 'Which discourse marker is used to introduce an additional point?', ['"Furthermore,..."','"Consequently,..."','"However,..."','"In conclusion,..."'], '"Furthermore,..."', term: 2),
  _quSec2('secondary','syllable',12,2,'grammar', 'How many syllables are in the word "furthermore"?', ['3','2','4','1'], '3', term: 2),
  _quSec2('secondary','syllable',12,2,'grammar', 'Which discourse marker is used to summarise?', ['"To sum up,..."','"Firstly,..."','"In contrast,..."','"For example,..."'], '"To sum up,..."', term: 2),
  _quSec2('secondary','syllable',12,2,'vocabulary', 'Why is active listening important in an academic discussion?', ['It allows you to understand the speaker\'s points so you can respond intelligently','It gives you time to plan what you want for lunch','It is actually not important','It helps you interrupt faster'], 'It allows you to understand the speaker\'s points so you can respond intelligently', term: 2),

  // Set 3 — comprehension (NOT read by TTS)
  _quSec2('secondary','syllable',12,3,'comprehension',
      'PASSAGE: The JSS 2 classroom buzzed with energy during their structured academic discussion. The topic was whether school uniforms should be mandatory. Chike spoke first, providing clear evidence that uniforms reduce peer pressure. "While I understand your perspective, Chike," replied Fatima, "some studies suggest uniforms suppress individual expression." The teacher smiled, pleased with Fatima\'s respectful counter-argument. "Could you elaborate on that, Fatima?" the teacher asked. Fatima then synthesised several points from a recent article she had read, ultimately helping the class reach a balanced consensus by the end of the lesson.\n\nQ: What was the topic of the structured academic discussion?',
      ['Whether school uniforms should be mandatory','Whether mobile phones should be allowed in school','Whether homework is necessary','Whether the school day should be longer'],
      'Whether school uniforms should be mandatory', term: 2),
  _quSec2('secondary','syllable',12,3,'comprehension',
      'Refer to the passage above.\n\nQ: What evidence did Chike provide?',
      ['That uniforms reduce peer pressure','That uniforms are too expensive','That uniforms are uncomfortable','That uniforms improve grades'],
      'That uniforms reduce peer pressure', term: 2),
  _quSec2('secondary','syllable',12,3,'comprehension',
      'Refer to the passage above.\n\nQ: How did Fatima respectfully counter Chike\'s argument?',
      ['She acknowledged his perspective, then stated uniforms suppress individual expression','She told him his evidence was completely wrong','She interrupted him while he was speaking','She refused to look at him'],
      'She acknowledged his perspective, then stated uniforms suppress individual expression', term: 2),
  _quSec2('secondary','syllable',12,3,'comprehension',
      'Refer to the passage above.\n\nQ: What did the teacher ask Fatima to do?',
      ['Elaborate on her point','Sit down and be quiet','Apologise to Chike','Write an essay'],
      'Elaborate on her point', term: 2),
  _quSec2('secondary','syllable',12,3,'comprehension',
      'Refer to the passage above.\n\nQ: What did the class reach by the end of the lesson?',
      ['A balanced consensus','An angry disagreement','A state of confusion','A final exam'],
      'A balanced consensus', term: 2),
  _quSec2('secondary','syllable',12,3,'vocabulary', 'What does "mandatory" mean?', ['required by law or rules; compulsory','optional and by choice','very expensive','colorful and bright'], 'required by law or rules; compulsory', term: 2),
  _quSec2('secondary','syllable',12,3,'grammar', 'How many syllables are in the word "perspective"?', ['3','2','4','5'], '3', term: 2),
  _quSec2('secondary','syllable',12,3,'vocabulary', 'What does "suppress" mean in Fatima\'s argument?', ['to forcefully prevent the development, action, or expression of something','to encourage and grow','to wear proudly','to buy cheaply'], 'to forcefully prevent the development, action, or expression of something', term: 2),
  _quSec2('secondary','syllable',12,3,'grammar', 'How many syllables are in the word "synthesised"?', ['3','4','2','5'], '3', term: 2),
  _quSec2('secondary','syllable',12,3,'vocabulary', 'What does "consensus" mean in the last sentence?', ['a general agreement among everyone in the group','a fierce debate','a written test','a type of uniform'], 'a general agreement among everyone in the group', term: 2),

  // ══════════════════════════════════════════════════════════════════════════
  // WEEK 13 — End-of-Term Assessment
  // Tags: prefix, suffix, alternative_spelling, homophone
  // ══════════════════════════════════════════════════════════════════════════

  // Set 1 — assessment mix
  _quSec2('secondary','alternative_spelling',13,1,'grammar', 'Which is the correct spelling? (Exception to the rule)', ['weird','wierd','weard','weerd'], 'weird', term: 2),
  _quSec2('secondary','prefix',13,1,'vocabulary', 'What does the prefix "micro-" mean?', ['extremely small','very large','self','against'], 'extremely small', term: 2),
  _quSec2('secondary','suffix',13,1,'grammar', 'Which is a defining relative clause? (No commas needed)', ['The book that I am reading is fascinating.','My brother, who is very tall, plays basketball.','Lagos, which is very busy, is a huge city.','Mr. Bello, whose car is red, is a teacher.'], 'The book that I am reading is fascinating.', term: 2),
  _quSec2('secondary','homophone',13,1,'grammar', 'Which word fits best: "I will ___ your apology."?', ['accept','except','affect','effect'], 'accept', term: 2),
  _quSec2('secondary','alternative_spelling',13,1,'vocabulary', 'What is the "tone" of a text?', ['The author\'s attitude toward the subject','The main argument of an essay','The place where the story happens','A type of punctuation'], 'The author\'s attitude toward the subject', term: 2),
  _quSec2('secondary','prefix',13,1,'vocabulary', 'What is "alliteration"?', ['The repetition of the same starting sound in a group of words','Giving human traits to objects','A comparison using like or as','A type of formal letter'], 'The repetition of the same starting sound in a group of words', term: 2),
  _quSec2('secondary','suffix',13,1,'grammar', 'Which word correctly uses the suffix "-ise" to mean "to bring up to date"?', ['modernise','modernify','modernate','moderning'], 'modernise', term: 2),
  _quSec2('secondary','homophone',13,1,'grammar', 'Which word fits best: "The painter bought a new blank ___."?', ['canvas','canvass','canvis','canvess'], 'canvas', term: 2),
  _quSec2('secondary','prefix',13,1,'grammar', 'In an essay, what does a "topic sentence" do?', ['It states the main idea of the paragraph','It hooks the reader in the introduction','It summarises the entire essay','It lists the references'], 'It states the main idea of the paragraph', term: 2),
  _quSec2('secondary','alternative_spelling',13,1,'vocabulary', 'What does a journalist do when they are being "objective"?', ['They report facts without letting personal feelings influence them','They write sensational headlines to get clicks','They only write opinions','They invent facts'], 'They report facts without letting personal feelings influence them', term: 2),

  // Set 2 — assessment mix
  _quSec2('secondary','alternative_spelling',13,2,'grammar', 'Which is the correct spelling? (Rule: i before e)', ['believe','beleive','belive','beleeve'], 'believe', term: 2),
  _quSec2('secondary','prefix',13,2,'vocabulary', 'What does the root "bio" mean?', ['life','earth','time','sound'], 'life', term: 2),
  _quSec2('secondary','suffix',13,2,'grammar', 'Which suffix turns the verb "construct" into a noun?', ['-ion','-ment','-ly','-ous'], '-ion', term: 2),
  _quSec2('secondary','homophone',13,2,'grammar', 'Which word fits best: "She ate the ___ pizza."?', ['whole','hole','whool','holl'], 'whole', term: 2),
  _quSec2('secondary','alternative_spelling',13,2,'vocabulary', 'What is a "metaphor"?', ['A figure of speech stating that one thing IS another thing','A comparison using "like" or "as"','The rhythm of a poem','A repetition of sounds'], 'A figure of speech stating that one thing IS another thing', term: 2),
  _quSec2('secondary','prefix',13,2,'vocabulary', 'What is a "rhetorical question"?', ['A question asked to make a point, not to get an answer','A question with a simple "yes" or "no" answer','A question asked in a science lab','A question that is impossible to read'], 'A question asked to make a point, not to get an answer', term: 2),
  _quSec2('secondary','suffix',13,2,'grammar', 'Which word correctly adds a suffix to "apology"?', ['apologise (or apologize)','apologify','apologate','apologment'], 'apologise (or apologize)', term: 2),
  _quSec2('secondary','homophone',13,2,'grammar', 'Which word fits best: "We had ice cream for ___."?', ['dessert','desert','dezert','desart'], 'dessert', term: 2),
  _quSec2('secondary','prefix',13,2,'vocabulary', 'What does the prefix "trans-" mean in "transform"?', ['across, beyond, or through','under or below','before','again'], 'across, beyond, or through', term: 2),
  _quSec2('secondary','alternative_spelling',13,2,'grammar', 'Which sentence uses a non-defining relative clause correctly?', ['My father, who is fifty years old, loves to read.','My father who is fifty years old loves to read.','My father who is fifty years old, loves to read.','My father, who is fifty years old loves to read.'], 'My father, who is fifty years old, loves to read.', term: 2),

  // Set 3 — comprehension (NOT read by TTS)
  _quSec2('secondary','alternative_spelling',13,3,'comprehension',
      'PASSAGE: The end-of-term examinations finally concluded, lifting a heavy weight from the students\' shoulders. In the English paper, they had encountered a challenging mix of questions. They had to identify whether a sentence was active or passive, apply the \'i before e\' spelling rule to words like \'deceit\', and distinguish between tricky homophones. The final section required them to write a formal letter applying for a scholarship. Most students felt they had performed well. Their teacher, Mr. Bello, had thoroughly prepared them by teaching the origins of complex vocabulary, which made decoding the difficult words much easier.\n\nQ: What lifted a heavy weight from the students\' shoulders?',
      ['The conclusion of the end-of-term examinations','A heavy backpack','Mr. Bello telling a joke','Winning a football match'],
      'The conclusion of the end-of-term examinations', term: 2),
  _quSec2('secondary','prefix',13,3,'comprehension',
      'Refer to the passage above.\n\nQ: What grammar concept did they have to identify in the exam?',
      ['Whether a sentence was active or passive','How to write a poem','How to use an exclamation mark','The syllables in a word'],
      'Whether a sentence was active or passive', term: 2),
  _quSec2('secondary','alternative_spelling',13,3,'comprehension',
      'Refer to the passage above.\n\nQ: What spelling rule did they have to apply to words like "deceit"?',
      ['The \'i before e\' rule','The doubling rule','The drop-e rule','The silent letter rule'],
      'The \'i before e\' rule', term: 2),
  _quSec2('secondary','suffix',13,3,'comprehension',
      'Refer to the passage above.\n\nQ: What were they required to write in the final section?',
      ['A formal letter applying for a scholarship','An informal text message','A short story about a monster','A newspaper headline'],
      'A formal letter applying for a scholarship', term: 2),
  _quSec2('secondary','prefix',13,3,'comprehension',
      'Refer to the passage above.\n\nQ: Why was decoding difficult words easier for the students?',
      ['Because Mr. Bello had taught them the origins of complex vocabulary','Because they used a dictionary during the test','Because they guessed all the answers','Because the words were very short'],
      'Because Mr. Bello had taught them the origins of complex vocabulary', term: 2),
  _quSec2('secondary','alternative_spelling',13,3,'vocabulary', 'What does "concluded" mean in the first sentence?', ['came to an end; finished','started','became very difficult','was cancelled'], 'came to an end; finished', term: 2),
  _quSec2('secondary','homophone',13,3,'grammar', 'Which homophone for "weight" means "to stay in one place in anticipation"?', ['wait','wate','weigh','wight'], 'wait', term: 2),
  _quSec2('secondary','prefix',13,3,'vocabulary', 'What does the word "origins" refer to when discussing vocabulary?', ['where the words come from (their etymology/roots)','the letters of the alphabet','the punctuation marks used','the length of the words'], 'where the words come from (their etymology/roots)', term: 2),
  _quSec2('secondary','alternative_spelling',13,3,'grammar', 'Which is the correct spelling of the exception word meaning "strange"?', ['weird','wierd','weard','weerd'], 'weird', term: 2),
  _quSec2('secondary','suffix',13,3,'grammar', 'Identify the verb in the passage that ends in "-ing" and means "translating or understanding the meaning of".', ['decoding','applying','teaching','lifting'], 'decoding', term: 2),

];
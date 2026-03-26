import 'package:uuid/uuid.dart';
import '../../../core/models/question.dart';

// ignore_for_file: prefer_single_quotes
const _uuSec3 = Uuid();

Question _quSec3(String level, String tag, int week, int set, String type,
    String q, List<String> opts, String ans, {required int term}) =>
    Question(
      id: _uuSec3.v4(), level: level, skillTag: tag,
      weekNumber: week, assessmentSet: set, questionType: type,
      termNumber: term,
      questionText: q, options: opts, correctAnswer: ans,
    );

// ─────────────────────────────────────────────────────────────────────────────
// SECONDARY — JSS 1–3  (Term 3)
//
// W1  : Comprehensive Spelling Review            → alternative_spelling, prefix, suffix
// W2  : Advanced Morphology                      → prefix, suffix
// W3  : Critical Reading                         → alternative_spelling, syllable
// W4  : Exam Writing Skills                      → prefix, suffix
// W5  : Vocab: Subject-Specific (Social Studies) → prefix, suffix
// W6  : Writing: Discursive Essay                → prefix, suffix, alternative_spelling
// ─────────────────────────────────────────────────────────────────────────────

final List<Question> weekQuestionsSecondaryT3 = [

  // ══════════════════════════════════════════════════════════════════════════
  // WEEK 1 — Comprehensive Spelling Review
  // Tags: alternative_spelling, prefix, suffix
  // ══════════════════════════════════════════════════════════════════════════

  // Set 1 — spelling + vocabulary
  _quSec3('secondary','alternative_spelling',1,1,'grammar', 'Which is the correct spelling? (Hint: i before e)', ['believe','beleive','belive','beleeve'], 'believe', term: 3),
  _quSec3('secondary','alternative_spelling',1,1,'grammar', 'Which is the correct spelling? (Hint: except after c)', ['receive','recieve','receeve','recive'], 'receive', term: 3),
  _quSec3('secondary','alternative_spelling',1,1,'grammar', 'Which is the correct spelling of the exception meaning "strange"?', ['weird','wierd','weard','weerd'], 'weird', term: 3),
  _quSec3('secondary','alternative_spelling',1,1,'grammar', 'Which is the correct spelling? (Hint: 2 c\'s, 2 m\'s)', ['accommodation','acommodation','accomodation','acomodation'], 'accommodation', term: 3),
  _quSec3('secondary','alternative_spelling',1,1,'grammar', 'Which is the correct spelling? (Hint: 1 c, 2 s\'s)', ['necessary','necesary','necessery','neccessary'], 'necessary', term: 3),
  _quSec3('secondary','prefix',1,1,'grammar', 'Which is the correct spelling? (Hint: prefix dis- + appoint)', ['disappoint','dissapoint','disapoint','dissappoint'], 'disappoint', term: 3),
  _quSec3('secondary','suffix',1,1,'grammar', 'Which is the correct spelling? (Hint: 2 c\'s, 2 s\'s)', ['successful','succesful','sucessful','sucesful'], 'successful', term: 3),
  _quSec3('secondary','alternative_spelling',1,1,'grammar', 'Which word is spelled correctly?', ['definitely','definately','definitly','definetly'], 'definitely', term: 3),
  _quSec3('secondary','alternative_spelling',1,1,'grammar', 'Which is the correct spelling?', ['separate','seperate','separat','separete'], 'separate', term: 3),
  _quSec3('secondary','alternative_spelling',1,1,'grammar', 'Which is the correct spelling?', ['environment','enviroment','envirnoment','enviorment'], 'environment', term: 3),

  // Set 2 — spelling + vocabulary
  _quSec3('secondary','alternative_spelling',1,2,'grammar', 'Which is the correct spelling? (Hint: 2 r\'s, 2 s\'s)', ['embarrass','embarass','embaras','embarrasss'], 'embarrass', term: 3),
  _quSec3('secondary','alternative_spelling',1,2,'grammar', 'Which is the correct spelling? (Hint: 2 c\'s, 1 s)', ['occasion','occassion','ocasion','ocassion'], 'occasion', term: 3),
  _quSec3('secondary','alternative_spelling',1,2,'grammar', 'Which is the correct spelling?', ['restaurant','restarant','restaraunt','restuarant'], 'restaurant', term: 3),
  _quSec3('secondary','prefix',1,2,'grammar', 'Which is the correct spelling? (Hint: prefix inter- + rupt)', ['interrupt','interupt','intterrupt','intterupt'], 'interrupt', term: 3),
  _quSec3('secondary','alternative_spelling',1,2,'grammar', 'Which is the correct spelling? (Hint: 2 m\'s, 2 t\'s, 2 e\'s)', ['committee','comittee','commitee','comite'], 'committee', term: 3),
  _quSec3('secondary','alternative_spelling',1,2,'grammar', 'Which is the correct spelling?', ['privilege','privelege','priviledge','privelige'], 'privilege', term: 3),
  _quSec3('secondary','alternative_spelling',1,2,'grammar', 'Which is the correct spelling?', ['rhythm','rythm','rhythym','rythem'], 'rhythm', term: 3),
  _quSec3('secondary','suffix',1,2,'grammar', 'Which word correctly adds "-ly" to "immediate"?', ['immediately','immediatly','immediatley','imediately'], 'immediately', term: 3),
  _quSec3('secondary','alternative_spelling',1,2,'grammar', 'Which is the correct spelling for "how tall someone is"?', ['height','hieght','hight','hite'], 'height', term: 3),
  _quSec3('secondary','alternative_spelling',1,2,'grammar', 'Which is the correct spelling for a place to read books?', ['library','libary','librery','libray'], 'library', term: 3),

  // Set 3 — comprehension (NOT read by TTS)
  _quSec3('secondary','alternative_spelling',1,3,'comprehension',
      'PASSAGE: As the JSS 3 students prepared for their final exams, Mr. Abiodun wrote a list of the most frequently misspelled words on the board. "You cannot afford to lose marks on simple errors," he warned. "Words like \'accommodation\' and \'necessary\' appear in almost every essay. Remember your rules: \'i before e except after c\', which applies to \'receive\', but watch out for weird exceptions." He advised them to read widely, noting that seeing words in their natural environment is the best way to memorise their spelling.\n\nQ: What were the JSS 3 students preparing for?',
      ['Their final exams','A spelling bee','A sports competition','A school play'],
      'Their final exams', term: 3),
  _quSec3('secondary','alternative_spelling',1,3,'comprehension',
      'Refer to the passage above.\n\nQ: What did Mr. Abiodun write on the board?',
      ['A list of the most frequently misspelled words','A math equation','A map of Nigeria','A poem'],
      'A list of the most frequently misspelled words', term: 3),
  _quSec3('secondary','alternative_spelling',1,3,'comprehension',
      'Refer to the passage above.\n\nQ: What rule applies to the word "receive"?',
      ['i before e except after c','Double the consonant','Drop the e','Add -es'],
      'i before e except after c', term: 3),
  _quSec3('secondary','alternative_spelling',1,3,'comprehension',
      'Refer to the passage above.\n\nQ: What is the best way to memorise spelling according to Mr. Abiodun?',
      ['Reading widely and seeing words in their natural environment','Writing them a hundred times','Guessing the spelling','Using a calculator'],
      'Reading widely and seeing words in their natural environment', term: 3),
  _quSec3('secondary','alternative_spelling',1,3,'comprehension',
      'Refer to the passage above.\n\nQ: Which word is mentioned as an exception to the "i before e" rule?',
      ['weird','receive','necessary','accommodation'],
      'weird', term: 3),
  _quSec3('secondary','alternative_spelling',1,3,'vocabulary', 'What does "frequently" mean?', ['often or regularly','rarely','never','once a year'], 'often or regularly', term: 3),
  _quSec3('secondary','alternative_spelling',1,3,'grammar', 'Identify the correct spelling of the word meaning "a place to live or stay" used in the passage.', ['accommodation','acommodation','accomodation','acomodation'], 'accommodation', term: 3),
  _quSec3('secondary','alternative_spelling',1,3,'grammar', 'Identify the correct spelling of the word meaning "needed to be done" used in the passage.', ['necessary','necesary','neccessary','necessery'], 'necessary', term: 3),
  _quSec3('secondary','suffix',1,3,'grammar', 'Which word in the passage uses the suffix "-ly" to form an adverb meaning "broadly or extensively"?', ['widely','frequently','natural','simply'], 'widely', term: 3),
  _quSec3('secondary','prefix',1,3,'grammar', 'Which word in the passage uses a prefix meaning "badly" or "wrongly"?', ['misspelled','prepared','environment','exceptions'], 'misspelled', term: 3),

  // ══════════════════════════════════════════════════════════════════════════
  // WEEK 2 — Advanced Morphology
  // Tags: prefix, suffix
  // ══════════════════════════════════════════════════════════════════════════

  // Set 1 — complex morphology
  _quSec3('secondary','prefix',2,1,'vocabulary', 'What is "morphology"?', ['The study of the forms of words and their parts (morphemes)','The study of bugs','The study of the ocean','The study of sound'], 'The study of the forms of words and their parts (morphemes)', term: 3),
  _quSec3('secondary','suffix',2,1,'grammar', 'A word with 3+ morphemes is "unbelievable". What is the base word?', ['believe','un-','-able','unbelieve'], 'believe', term: 3),
  _quSec3('secondary','prefix',2,1,'vocabulary', 'Break down "unimaginable". What does it mean?', ['not able to be imagined','able to be imagined','imagined again','imagined poorly'], 'not able to be imagined', term: 3),
  _quSec3('secondary','prefix',2,1,'vocabulary', 'Break down "misrepresentation". What does the prefix "mis-" mean?', ['wrongly or badly','again','before','after'], 'wrongly or badly', term: 3),
  _quSec3('secondary','suffix',2,1,'vocabulary', 'In "misrepresentation", what does the suffix "-ation" do?', ['Turns the verb (represent) into a noun','Turns the noun into an adjective','Makes the word plural','Means "not"'], 'Turns the verb (represent) into a noun', term: 3),
  _quSec3('secondary','prefix',2,1,'grammar', 'Identify the prefixes and suffixes in "disrespectfully".', ['prefix: dis-, suffixes: -ful, -ly (base: respect)','prefix: disre-, suffix: -fully','prefix: dis-, suffix: -fully','no prefix, suffix: -fully'], 'prefix: dis-, suffixes: -ful, -ly (base: respect)', term: 3),
  _quSec3('secondary','prefix',2,1,'vocabulary', 'What does "disrespectfully" mean?', ['in a way that shows a lack of respect','in a way that shows a lot of respect','respecting someone again','respecting someone before'], 'in a way that shows a lack of respect', term: 3),
  _quSec3('secondary','prefix',2,1,'vocabulary', 'Break down "reconstruction". What does it mean?', ['the action or process of building something again','building something for the first time','tearing something down','looking at a building'], 'the action or process of building something again', term: 3),
  _quSec3('secondary','suffix',2,1,'grammar', 'What is the base word of "reconstruction"?', ['construct','re-','-ion','reconstruct'], 'construct', term: 3),
  _quSec3('secondary','prefix',2,1,'vocabulary', 'What does "overpopulation" mean?', ['the condition of having too many people (over = too much)','the condition of having very few people','a city with no people','moving to a new city'], 'the condition of having too many people (over = too much)', term: 3),

  // Set 2 — complex morphology
  _quSec3('secondary','prefix',2,2,'vocabulary', 'Break down "unpredictable". What does it mean?', ['not able to be foreseen or known beforehand','able to be seen easily','predicting something again','something written down'], 'not able to be foreseen or known beforehand', term: 3),
  _quSec3('secondary','suffix',2,2,'grammar', 'What is the base word of "unpredictable"?', ['predict','un-','-able','unpredict'], 'predict', term: 3),
  _quSec3('secondary','prefix',2,2,'vocabulary', 'Break down "internationalisation". What is the base word?', ['nation','inter-','-al','-ise'], 'nation', term: 3),
  _quSec3('secondary','prefix',2,2,'vocabulary', 'What does "inter-" mean in "international"?', ['between or among','inside','against','many'], 'between or among', term: 3),
  _quSec3('secondary','suffix',2,2,'vocabulary', 'What does the suffix "-isation" (or "-ization") usually mean?', ['the process of making or becoming something','a fear of something','the study of something','a machine used to measure'], 'the process of making or becoming something', term: 3),
  _quSec3('secondary','prefix',2,2,'vocabulary', 'Break down "irreplaceable". What does the prefix "ir-" mean here?', ['not (not able to be replaced)','again','before','under'], 'not (not able to be replaced)', term: 3),
  _quSec3('secondary','prefix',2,2,'vocabulary', 'What does "underestimate" mean?', ['to estimate something to be smaller or less important than it actually is','to estimate perfectly','to build under a house','to write below a line'], 'to estimate something to be smaller or less important than it actually is', term: 3),
  _quSec3('secondary','prefix',2,2,'vocabulary', 'What does "disproportionate" mean? (dis = not, proportion + ate)', ['too large or too small in comparison with something else','perfectly equal','very heavy','very light'], 'too large or too small in comparison with something else', term: 3),
  _quSec3('secondary','suffix',2,2,'grammar', 'Which word contains 4 morphemes? (Hint: un- + success + -ful + -ly)', ['unsuccessfully','success','successful','unsuccessful'], 'unsuccessfully', term: 3),
  _quSec3('secondary','prefix',2,2,'grammar', 'Identify the base word in "incomprehensible".', ['comprehend (or comprehen-)','in-','-ible','incomprehen-'], 'comprehend (or comprehen-)', term: 3),

  // Set 3 — comprehension (NOT read by TTS)
  _quSec3('secondary','prefix',2,3,'comprehension',
      'PASSAGE: The consequences of the misrepresentation of facts in the media can be unimaginable. When a journalist publishes an article with disproportionate focus on sensational details, the public is often misled. This can lead to the uncontrollable spread of panic. Experts emphasize that the reconstruction of trust between the media and the public is a difficult process. Therefore, it is absolutely essential that reporters verify their sources to ensure they do not disseminate incomprehensible or false information.\n\nQ: What can have unimaginable consequences according to the passage?',
      ['The misrepresentation of facts in the media','Reading a newspaper','Trusting an expert','Spreading panic on purpose'],
      'The misrepresentation of facts in the media', term: 3),
  _quSec3('secondary','prefix',2,3,'comprehension',
      'Refer to the passage above.\n\nQ: What happens when a journalist focuses disproportionately on sensational details?',
      ['The public is often misled','The public is happy','The journalist gets an award','Trust is reconstructed'],
      'The public is often misled', term: 3),
  _quSec3('secondary','prefix',2,3,'comprehension',
      'Refer to the passage above.\n\nQ: What can being misled lead to?',
      ['The uncontrollable spread of panic','A difficult process','False information','A reduction in newspapers'],
      'The uncontrollable spread of panic', term: 3),
  _quSec3('secondary','prefix',2,3,'comprehension',
      'Refer to the passage above.\n\nQ: What do experts say is a difficult process?',
      ['The reconstruction of trust between the media and the public','Publishing an article','Verifying sources','Spreading panic'],
      'The reconstruction of trust between the media and the public', term: 3),
  _quSec3('secondary','prefix',2,3,'comprehension',
      'Refer to the passage above.\n\nQ: What is absolutely essential for reporters to do?',
      ['Verify their sources','Misrepresent facts','Focus on sensational details','Disseminate incomprehensible information'],
      'Verify their sources', term: 3),
  _quSec3('secondary','prefix',2,3,'vocabulary', 'Break down "misrepresentation". What does the prefix "mis-" mean?', ['wrongly or badly','again','not','before'], 'wrongly or badly', term: 3),
  _quSec3('secondary','prefix',2,3,'vocabulary', 'What does "unimaginable" mean?', ['impossible to imagine or comprehend','very easy to guess','a type of picture','very creative'], 'impossible to imagine or comprehend', term: 3),
  _quSec3('secondary','suffix',2,3,'grammar', 'What is the base word of "uncontrollable"?', ['control','un-','-able','uncontrol'], 'control', term: 3),
  _quSec3('secondary','prefix',2,3,'vocabulary', 'What does "reconstruction" mean in the phrase "reconstruction of trust"?', ['the process of building or establishing something again','destroying something completely','writing a newspaper','telling a lie'], 'the process of building or establishing something again', term: 3),
  _quSec3('secondary','prefix',2,3,'vocabulary', 'What does "incomprehensible" mean?', ['not able to be understood','very easy to read','a type of book','a long newspaper'], 'not able to be understood', term: 3),

  // ══════════════════════════════════════════════════════════════════════════
  // WEEK 3 — Critical Reading
  // Tags: alternative_spelling, syllable
  // ══════════════════════════════════════════════════════════════════════════

  // Set 1 — critical reading concepts
  _quSec3('secondary','syllable',3,1,'vocabulary', 'What does it mean to "evaluate" an author\'s argument?', ['To judge the value, strength, and validity of the argument','To just read the words aloud','To count the number of paragraphs','To agree with the author completely'], 'To judge the value, strength, and validity of the argument', term: 3),
  _quSec3('secondary','syllable',3,1,'grammar', 'How many syllables are in the word "evaluate"?', ['4','3','5','2'], '4', term: 3), // e-val-u-ate
  _quSec3('secondary','alternative_spelling',3,1,'vocabulary', 'What is "evidence" in an argument?', ['Facts, statistics, or expert quotes used to support a claim','A personal insult','A wild guess','A transition word'], 'Facts, statistics, or expert quotes used to support a claim', term: 3),
  _quSec3('secondary','syllable',3,1,'grammar', 'How many syllables are in the word "evidence"?', ['3','2','4','5'], '3', term: 3),
  _quSec3('secondary','alternative_spelling',3,1,'vocabulary', 'What is an "assumption"?', ['A thing that is accepted as true or as certain to happen, without proof','A proven scientific fact','A quote from a book','A type of dictionary'], 'A thing that is accepted as true or as certain to happen, without proof', term: 3),
  _quSec3('secondary','syllable',3,1,'grammar', 'How many syllables are in the word "assumption"?', ['3','4','2','5'], '3', term: 3),
  _quSec3('secondary','alternative_spelling',3,1,'vocabulary', 'What is a "logical fallacy"?', ['An error in reasoning that makes an argument invalid or weak','A perfectly structured sentence','A type of rhyme scheme','A very strong piece of evidence'], 'An error in reasoning that makes an argument invalid or weak', term: 3),
  _quSec3('secondary','syllable',3,1,'grammar', 'How many syllables are in the word "fallacy"?', ['3','2','4','1'], '3', term: 3),
  _quSec3('secondary','alternative_spelling',3,1,'vocabulary', 'What is the "ad hominem" fallacy?', ['Attacking the person making the argument rather than the argument itself','Exaggerating the problem','Saying everyone else is doing it','Using a celebrity to sell a product'], 'Attacking the person making the argument rather than the argument itself', term: 3),
  _quSec3('secondary','alternative_spelling',3,1,'vocabulary', 'What is the "bandwagon" fallacy?', ['Claiming something is true or right simply because many people believe it','Attacking a person','Making a threat','Using a fake statistic'], 'Claiming something is true or right simply because many people believe it', term: 3),

  // Set 2 — critical reading concepts
  _quSec3('secondary','alternative_spelling',3,2,'grammar', 'Which of these is an example of an assumption?', ['"Everyone loves chocolate, so we should serve it at the party." (Assumes everyone loves chocolate)','The temperature is 30 degrees.','Water boils at 100 degrees Celsius.','The book has 200 pages.'], '"Everyone loves chocolate, so we should serve it at the party." (Assumes everyone loves chocolate)', term: 3),
  _quSec3('secondary','alternative_spelling',3,2,'grammar', 'Which of these is an ad hominem attack?', ['"You can\'t trust John\'s plan to fix the roads because he dresses badly."','"John\'s plan will cost too much money."','"John\'s plan has been proven to fail."','"John\'s plan does not include bridge repair."'], '"You can\'t trust John\'s plan to fix the roads because he dresses badly."', term: 3),
  _quSec3('secondary','alternative_spelling',3,2,'grammar', 'Which of these is a bandwagon fallacy?', ['"Millions of people drink this soda, so it must be the healthiest choice!"','"This soda contains 40 grams of sugar."','"The doctor said to drink less soda."','"Soda is a carbonated beverage."'], '"Millions of people drink this soda, so it must be the healthiest choice!"', term: 3),
  _quSec3('secondary','syllable',3,2,'vocabulary', 'What does it mean to be "objective"?', ['Not influenced by personal feelings or opinions in considering facts','Extremely emotional and angry','Making assumptions without proof','Lying on purpose'], 'Not influenced by personal feelings or opinions in considering facts', term: 3),
  _quSec3('secondary','syllable',3,2,'grammar', 'How many syllables are in the word "objective"?', ['3','4','2','5'], '3', term: 3),
  _quSec3('secondary','alternative_spelling',3,2,'vocabulary', 'What does "subjective" mean?', ['Based on or influenced by personal feelings, tastes, or opinions','Completely factual','Based on scientific research','A type of math problem'], 'Based on or influenced by personal feelings, tastes, or opinions', term: 3),
  _quSec3('secondary','syllable',3,2,'grammar', 'How many syllables are in the word "subjective"?', ['3','2','4','1'], '3', term: 3),
  _quSec3('secondary','alternative_spelling',3,2,'vocabulary', 'What is "bias"?', ['Prejudice in favor of or against one thing, person, or group compared with another','A completely fair argument','A strong piece of evidence','A grammar rule'], 'Prejudice in favor of or against one thing, person, or group compared with another', term: 3),
  _quSec3('secondary','alternative_spelling',3,2,'grammar', 'If an article says "The lazy, greedy politicians ruined the city," what is the author showing?', ['Bias and subjective opinion','Objective facts','A mathematical proof','A scientific hypothesis'], 'Bias and subjective opinion', term: 3),
  _quSec3('secondary','alternative_spelling',3,2,'vocabulary', 'Why is critical reading important?', ['It helps you identify fake news, weak arguments, and hidden biases','It helps you read faster','It helps you spell better','It is only used in college'], 'It helps you identify fake news, weak arguments, and hidden biases', term: 3),

  // Set 3 — comprehension (NOT read by TTS)
  _quSec3('secondary','alternative_spelling',3,3,'comprehension',
      'PASSAGE: "The government should ban all video games immediately," wrote the anonymous blogger. "It is a known fact that anyone who plays video games becomes a violent criminal. Just last week, a teenager who plays games was caught stealing. Furthermore, if we don\'t ban video games, our society will collapse into complete chaos. Don\'t listen to Dr. Smith\'s study that claims games are harmless; Dr. Smith is just a boring old man who doesn\'t know how to have fun. Everyone is signing the petition to ban them, so you should too!"\n\nQ: What is the main argument of the blogger?',
      ['The government should ban all video games immediately','Video games are fun','Dr. Smith is a great scientist','Teenagers should play more games'],
      'The government should ban all video games immediately', term: 3),
  _quSec3('secondary','alternative_spelling',3,3,'comprehension',
      'Refer to the passage above.\n\nQ: The statement "anyone who plays video games becomes a violent criminal" is an example of what?',
      ['A massive assumption and generalization','A proven scientific fact','A metaphor','A rhetorical question'],
      'A massive assumption and generalization', term: 3),
  _quSec3('secondary','alternative_spelling',3,3,'comprehension',
      'Refer to the passage above.\n\nQ: "Dr. Smith is just a boring old man" is an example of which logical fallacy?',
      ['Ad hominem (attacking the person instead of the study)','Bandwagon','Rule of three','Personification'],
      'Ad hominem (attacking the person instead of the study)', term: 3),
  _quSec3('secondary','alternative_spelling',3,3,'comprehension',
      'Refer to the passage above.\n\nQ: "Everyone is signing the petition... so you should too!" is an example of which logical fallacy?',
      ['Bandwagon fallacy','Ad hominem','Simile','Metaphor'],
      'Bandwagon fallacy', term: 3),
  _quSec3('secondary','syllable',3,3,'comprehension',
      'Refer to the passage above.\n\nQ: How would you evaluate the blogger\'s argument?',
      ['It is weak, highly subjective, and full of logical fallacies','It is strong, objective, and well-researched','It uses excellent scientific evidence','It is a perfect academic essay'],
      'It is weak, highly subjective, and full of logical fallacies', term: 3),
  _quSec3('secondary','alternative_spelling',3,3,'vocabulary', 'What does "anonymous" mean?', ['not identified by name; of unknown name','very famous','highly educated','boring and old'], 'not identified by name; of unknown name', term: 3),
  _quSec3('secondary','syllable',3,3,'grammar', 'How many syllables are in the word "immediately"?', ['5','4','6','3'], '5', term: 3),
  _quSec3('secondary','alternative_spelling',3,3,'vocabulary', 'What does "chaos" mean?', ['complete disorder and confusion','peace and quiet','a type of video game','a petition'], 'complete disorder and confusion', term: 3),
  _quSec3('secondary','syllable',3,3,'grammar', 'How many syllables are in the word "petition"?', ['3','2','4','1'], '3', term: 3),
  _quSec3('secondary','alternative_spelling',3,3,'vocabulary', 'What does "harmless" mean? (harm + -less)', ['not able or likely to cause harm','causing a lot of damage','very dangerous','violent'], 'not able or likely to cause harm', term: 3),

  // ══════════════════════════════════════════════════════════════════════════
  // WEEK 4 — Exam Writing Skills
  // Tags: prefix, suffix
  // ══════════════════════════════════════════════════════════════════════════

  // Set 1 — writing skills
  _quSec3('secondary','suffix',4,1,'vocabulary', 'When planning an essay in an exam, what does the P.E.E. paragraph structure stand for?', ['Point, Evidence, Explain','Paragraph, Essay, End','Place, Event, Emotion','Point, Example, Erase'], 'Point, Evidence, Explain', term: 3),
  _quSec3('secondary','prefix',4,1,'grammar', 'In a P.E.E. paragraph, what does the "Point" do?', ['It acts as the topic sentence, stating the main idea of the paragraph','It gives a quote from a book','It ends the essay','It provides a counter-argument'], 'It acts as the topic sentence, stating the main idea of the paragraph', term: 3),
  _quSec3('secondary','suffix',4,1,'grammar', 'In a P.E.E. paragraph, what does the "Evidence" do?', ['It provides facts, quotes, or examples to support the point','It introduces the topic','It summarizes the whole essay','It asks a rhetorical question'], 'It provides facts, quotes, or examples to support the point', term: 3),
  _quSec3('secondary','prefix',4,1,'grammar', 'In a P.E.E. paragraph, what does the "Explain" section do?', ['It explains how the evidence proves the point and links back to the essay question','It gives a new piece of evidence','It is just the author\'s signature','It repeats the point exactly'], 'It explains how the evidence proves the point and links back to the essay question', term: 3),
  _quSec3('secondary','suffix',4,1,'vocabulary', 'What is a "prompt" in an exam?', ['The question or statement that tells you what to write about','A type of pencil','The clock in the exam hall','The teacher\'s answer key'], 'The question or statement that tells you what to write about', term: 3),
  _quSec3('secondary','prefix',4,1,'vocabulary', 'What does it mean to "brainstorm"?', ['To produce an idea or way of solving a problem by holding a spontaneous group or individual discussion/thought session','To write the final copy of an essay','To fall asleep during a test','To check for spelling mistakes'], 'To produce an idea or way of solving a problem by holding a spontaneous group or individual discussion/thought session', term: 3),
  _quSec3('secondary','suffix',4,1,'grammar', 'Why is it important to spend 5 minutes planning before writing an exam essay?', ['It gives you a clear structure and prevents you from going off-topic','It wastes time so you write less','It makes your handwriting neater','It allows you to memorize the dictionary'], 'It gives you a clear structure and prevents you from going off-topic', term: 3),
  _quSec3('secondary','prefix',4,1,'grammar', 'What does it mean if you go "off-topic"?', ['You are writing about something completely different from the exam prompt','You are writing perfectly','You are writing too fast','You are writing on the back of the page'], 'You are writing about something completely different from the exam prompt', term: 3),
  _quSec3('secondary','suffix',4,1,'vocabulary', 'What is "time management" in an exam?', ['Dividing your time wisely so you can complete all sections of the paper','Looking at the clock every ten seconds','Writing as fast as possible without thinking','Leaving early'], 'Dividing your time wisely so you can complete all sections of the paper', term: 3),
  _quSec3('secondary','prefix',4,1,'grammar', 'What should you do in the final 5 minutes of a writing exam?', ['Proofread your work to correct spelling, grammar, and punctuation mistakes','Start a brand new essay','Draw a picture','Go to sleep'], 'Proofread your work to correct spelling, grammar, and punctuation mistakes', term: 3),

  // Set 2 — writing skills + prefix/suffix
  _quSec3('secondary','prefix',4,2,'vocabulary', 'If an exam prompt asks you to "compare", what must you do?', ['Point out the similarities between two or more things','Point out only the differences','Tell a funny story','Write a poem'], 'Point out the similarities between two or more things', term: 3),
  _quSec3('secondary','suffix',4,2,'vocabulary', 'If an exam prompt asks you to "contrast", what must you do?', ['Point out the differences between two or more things','Point out the similarities','Draw a picture','Summarize the ending'], 'Point out the differences between two or more things', term: 3),
  _quSec3('secondary','prefix',4,2,'vocabulary', 'If an exam prompt asks you to "evaluate", what must you do?', ['Judge the value or condition of something in a careful and thoughtful way','Just list facts without an opinion','Write a letter to a friend','Make up a fictional story'], 'Judge the value or condition of something in a careful and thoughtful way', term: 3),
  _quSec3('secondary','suffix',4,2,'grammar', 'Which suffix turns "evaluate" into a noun?', ['-ion (evaluation)','-ment (evaluatement)','-ly (evaluately)','-ance (evaluatance)'], '-ion (evaluation)', term: 3),
  _quSec3('secondary','prefix',4,2,'grammar', 'Which prefix means "to read again", often done to check for errors?', ['re- (reread)','un- (unread)','mis- (misread)','dis- (disread)'], 're- (reread)', term: 3),
  _quSec3('secondary','suffix',4,2,'grammar', 'Which word correctly adds a suffix to "argue"?', ['argument','arguement','argumant','argement'], 'argument', term: 3),
  _quSec3('secondary','prefix',4,2,'grammar', 'If you "misinterpret" the exam prompt, what have you done?', ['You have understood it wrongly or badly','You have understood it perfectly','You have read it aloud','You have answered it correctly'], 'You have understood it wrongly or badly', term: 3),
  _quSec3('secondary','suffix',4,2,'vocabulary', 'What is a "conclusion"?', ['The final paragraph of an essay that brings the argument to a close','The opening sentence','A piece of evidence','A transition word'], 'The final paragraph of an essay that brings the argument to a close', term: 3),
  _quSec3('secondary','prefix',4,2,'grammar', 'Which discourse marker is good for introducing a contrasting point?', ['However','Furthermore','Therefore','In conclusion'], 'However', term: 3),
  _quSec3('secondary','suffix',4,2,'grammar', 'Which word uses the suffix "-able" to mean "can be predicted"?', ['predictable','predicable','predictible','prediction'], 'predictable', term: 3),

  // Set 3 — comprehension (NOT read by TTS)
  _quSec3('secondary','suffix',4,3,'comprehension',
      'PASSAGE: Time management is the secret to success in any written examination. When the invigilator says "begin", do not immediately start writing your essay. First, spend a few minutes analysing the prompt. Are you asked to compare, contrast, or evaluate? Next, brainstorm your ideas and outline your paragraphs using the P.E.E. structure. Once you have a clear plan, commence writing. Keep an eye on the clock to ensure you leave at least five minutes at the end for proofreading. A final review can help you catch careless spelling errors or missing punctuation that could negatively affect your grade.\n\nQ: What is the "secret to success" in a written examination according to the passage?',
      ['Time management','Writing very fast','Using a special pen','Asking the invigilator for answers'],
      'Time management', term: 3),
  _quSec3('secondary','prefix',4,3,'comprehension',
      'Refer to the passage above.\n\nQ: What should you do first when the invigilator says "begin"?',
      ['Spend a few minutes analysing the prompt','Immediately start writing your essay','Go to sleep','Hand in your paper'],
      'Spend a few minutes analysing the prompt', term: 3),
  _quSec3('secondary','suffix',4,3,'comprehension',
      'Refer to the passage above.\n\nQ: What structure should you use to outline your paragraphs?',
      ['The P.E.E. structure','The A.B.C. structure','The random structure','The poetry structure'],
      'The P.E.E. structure', term: 3),
  _quSec3('secondary','prefix',4,3,'comprehension',
      'Refer to the passage above.\n\nQ: Why should you keep an eye on the clock?',
      ['To ensure you leave at least five minutes at the end for proofreading','To know when lunch is','To see if the clock is broken','To count the seconds'],
      'To ensure you leave at least five minutes at the end for proofreading', term: 3),
  _quSec3('secondary','suffix',4,3,'comprehension',
      'Refer to the passage above.\n\nQ: What can a final review help you catch?',
      ['Careless spelling errors or missing punctuation','The main character of a story','A cold','A difficult math equation'],
      'Careless spelling errors or missing punctuation', term: 3),
  _quSec3('secondary','prefix',4,3,'vocabulary', 'What does "invigilator" mean?', ['A person who supervises students during an examination','A type of calculator','A school principal','A student taking a test'], 'A person who supervises students during an examination', term: 3),
  _quSec3('secondary','suffix',4,3,'vocabulary', 'What does "commence" mean?', ['to begin or start','to finish','to stop immediately','to talk loudly'], 'to begin or start', term: 3),
  _quSec3('secondary','prefix',4,3,'vocabulary', 'What does "analysing" (or analyzing) mean?', ['examining methodically and in detail','guessing quickly','ignoring completely','writing a summary'], 'examining methodically and in detail', term: 3),
  _quSec3('secondary','suffix',4,3,'grammar', 'Identify the adverb in the phrase "negatively affect".', ['negatively','affect','grade','could'], 'negatively', term: 3),
  _quSec3('secondary','prefix',4,3,'vocabulary', 'What does "proofreading" mean?', ['reading a text in order to detect and correct any errors','reading a book for fun','proving a math theorem','reading aloud to a class'], 'reading a text in order to detect and correct any errors', term: 3),

  // ══════════════════════════════════════════════════════════════════════════
  // WEEK 5 — Vocabulary: Subject-Specific (Social Studies)
  // Tags: prefix, suffix
  // ══════════════════════════════════════════════════════════════════════════

  // Set 1 — social studies vocabulary
  _quSec3('secondary','prefix',5,1,'vocabulary', 'The word "democracy" comes from Greek (demo = people, cracy = rule). What does it mean?', ['A system of government by the whole population, typically through elected representatives','A government ruled by a king or queen','A government ruled by the military','A society with no rules'], 'A system of government by the whole population, typically through elected representatives', term: 3),
  _quSec3('secondary','suffix',5,1,'vocabulary', 'What is a "constitution"?', ['A body of fundamental principles or established precedents according to which a state is governed','A type of large building','A dictionary of historical terms','A speech given by a mayor'], 'A body of fundamental principles or established precedents according to which a state is governed', term: 3),
  _quSec3('secondary','suffix',5,1,'grammar', 'Which suffix turns the verb "constitute" into the noun "constitution"?', ['-ion','-ment','-ly','-ance'], '-ion', term: 3),
  _quSec3('secondary','suffix',5,1,'vocabulary', 'What is "legislation"?', ['Laws, considered collectively; the process of making or enacting laws','The study of ancient artifacts','A map of the country','A group of judges'], 'Laws, considered collectively; the process of making or enacting laws', term: 3),
  _quSec3('secondary','prefix',5,1,'vocabulary', 'What does "monarchy" mean? (mono = one, archy = rule)', ['A form of government with a monarch (king or queen) at the head','A government ruled by the people','A government with no leader','A rule by a group of rich people'], 'A form of government with a monarch (king or queen) at the head', term: 3),
  _quSec3('secondary','prefix',5,1,'vocabulary', 'What is an "economy"?', ['The wealth and resources of a country or region, especially in terms of the production and consumption of goods','The study of rocks','A system of voting','A type of environmental protection'], 'The wealth and resources of a country or region, especially in terms of the production and consumption of goods', term: 3),
  _quSec3('secondary','suffix',5,1,'vocabulary', 'What does "citizenship" mean?', ['The position or status of being a citizen of a particular country','A ship owned by the city','A type of document for travel','The study of cities'], 'The position or status of being a citizen of a particular country', term: 3),
  _quSec3('secondary','prefix',5,1,'vocabulary', 'What does "international" mean?', ['Existing, occurring, or carried on between two or more nations','Inside a single nation','A fear of nations','A person who loves their nation'], 'Existing, occurring, or carried on between two or more nations', term: 3),
  _quSec3('secondary','suffix',5,1,'vocabulary', 'What is "culture"?', ['The customs, arts, social institutions, and achievements of a particular nation, people, or other social group','The physical geography of a place','The money used in a country','A type of government law'], 'The customs, arts, social institutions, and achievements of a particular nation, people, or other social group', term: 3),
  _quSec3('secondary','prefix',5,1,'vocabulary', 'What does "geography" mean? (geo = earth, graph = write/draw)', ['The study of the physical features of the earth and its atmosphere, and of human activity','The study of old coins','The study of the human mind','The study of the stars'], 'The study of the physical features of the earth and its atmosphere, and of human activity', term: 3),

  // Set 2 — social studies vocabulary
  _quSec3('secondary','suffix',5,2,'vocabulary', 'What is an "election"?', ['A formal and organized choice by vote of a person for a political office or other position','A type of legal document','A physical map of a country','A government building'], 'A formal and organized choice by vote of a person for a political office or other position', term: 3),
  _quSec3('secondary','prefix',5,2,'vocabulary', 'What does "bipartisan" mean? (bi = two)', ['Involving the agreement or cooperation of two political parties that usually oppose each other','Having only one political party','A ruler with total power','A citizen of two countries'], 'Involving the agreement or cooperation of two political parties that usually oppose each other', term: 3),
  _quSec3('secondary','suffix',5,2,'vocabulary', 'What does "judiciary" refer to?', ['The judicial authorities of a country; judges collectively','The process of making laws','The military forces','The people who print money'], 'The judicial authorities of a country; judges collectively', term: 3),
  _quSec3('secondary','prefix',5,2,'vocabulary', 'What is an "export"? (ex = out, port = carry)', ['A commodity, article, or service sold abroad (sent out of the country)','A good brought into a country','A type of tax','A river port'], 'A commodity, article, or service sold abroad (sent out of the country)', term: 3),
  _quSec3('secondary','prefix',5,2,'vocabulary', 'What is an "import"? (im/in = in, port = carry)', ['A commodity, article, or service brought in from abroad for sale','A good sent out of the country','A person who makes laws','A type of culture'], 'A commodity, article, or service brought in from abroad for sale', term: 3),
  _quSec3('secondary','suffix',5,2,'grammar', 'Which suffix turns the verb "govern" into a noun meaning the group of people who rule a state?', ['-ment (government)','-ion (governion)','-ance (governance)','-ly (governly)'], '-ment (government)', term: 3),
  _quSec3('secondary','prefix',5,2,'vocabulary', 'What is "infrastructure"? (infra = below/under, struct = build)', ['The basic physical and organizational structures (e.g., buildings, roads, power supplies) needed for a society to function','The rules written in a constitution','The culture of an ancient society','A type of social class'], 'The basic physical and organizational structures (e.g., buildings, roads, power supplies) needed for a society to function', term: 3),
  _quSec3('secondary','suffix',5,2,'vocabulary', 'What does "migration" mean?', ['Movement of people from one place to another with the intentions of settling, permanently or temporarily','A type of holiday','A voting process','A change in the economy'], 'Movement of people from one place to another with the intentions of settling, permanently or temporarily', term: 3),
  _quSec3('secondary','prefix',5,2,'grammar', 'Identify the prefix in "demographics" (demo = people).', ['demo-','-graphics','dem-','-ics'], 'demo-', term: 3),
  _quSec3('secondary','suffix',5,2,'grammar', 'Which suffix makes "culture" into an adjective?', ['-al (cultural)','-ous (culturous)','-ly (culturely)','-ment (culturement)'], '-al (cultural)', term: 3),

  // Set 3 — comprehension (NOT read by TTS)
  _quSec3('secondary','prefix',5,3,'comprehension',
      'PASSAGE: A strong democracy relies on more than just free and fair elections. It requires a robust constitution that protects the rights of its citizens. The government is divided into branches to prevent any single group from gaining too much power. For instance, the legislature handles the legislation, debating and passing new laws. Meanwhile, the judiciary ensures that these laws are fair and applied correctly. Beyond politics, a stable country also needs a healthy economy. This involves maintaining good international trade by balancing exports and imports, and investing heavily in public infrastructure like roads and hospitals.\n\nQ: According to the passage, what does a strong democracy rely on besides free and fair elections?',
      ['A robust constitution that protects the rights of its citizens','A powerful military force','A wealthy monarch','Strict immigration laws'],
      'A robust constitution that protects the rights of its citizens', term: 3),
  _quSec3('secondary','prefix',5,3,'comprehension',
      'Refer to the passage above.\n\nQ: Why is the government divided into branches?',
      ['To prevent any single group from gaining too much power','To make elections more expensive','To slow down the economy','Because the constitution is too long'],
      'To prevent any single group from gaining too much power', term: 3),
  _quSec3('secondary','suffix',5,3,'comprehension',
      'Refer to the passage above.\n\nQ: What does the legislature do?',
      ['Handles legislation, debating and passing new laws','Ensures laws are fair and applied correctly','Builds public infrastructure','Balances exports and imports'],
      'Handles legislation, debating and passing new laws', term: 3),
  _quSec3('secondary','suffix',5,3,'comprehension',
      'Refer to the passage above.\n\nQ: What does the judiciary do?',
      ['Ensures that laws are fair and applied correctly','Debates and passes new laws','Builds roads and hospitals','Votes in elections'],
      'Ensures that laws are fair and applied correctly', term: 3),
  _quSec3('secondary','prefix',5,3,'comprehension',
      'Refer to the passage above.\n\nQ: What does maintaining good international trade involve?',
      ['Balancing exports and imports','Stopping all migration','Ignoring the constitution','Refusing to build infrastructure'],
      'Balancing exports and imports', term: 3),
  _quSec3('secondary','suffix',5,3,'vocabulary', 'What does "robust" mean?', ['strong and healthy; vigorous','weak and fragile','very old and ancient','written in Latin'], 'strong and healthy; vigorous', term: 3),
  _quSec3('secondary','prefix',5,3,'grammar', 'Which prefix is used in "international" to mean "between"?', ['inter-','in-','nat-','intra-'], 'inter-', term: 3),
  _quSec3('secondary','prefix',5,3,'vocabulary', 'What are "exports"?', ['Goods sent out of a country to be sold','Goods brought into a country','Laws passed by the legislature','Rights protected by the constitution'], 'Goods sent out of a country to be sold', term: 3),
  _quSec3('secondary','prefix',5,3,'vocabulary', 'What is "infrastructure" as mentioned in the passage?', ['Public facilities like roads and hospitals','The documents used in voting','The judges in a court','The money used in an economy'], 'Public facilities like roads and hospitals', term: 3),
  _quSec3('secondary','suffix',5,3,'grammar', 'Identify the noun suffix in "legislation".', ['-tion','-legis','-late','-ion'], '-tion', term: 3), // technically -ion or -tion

  // ══════════════════════════════════════════════════════════════════════════
  // WEEK 6 — Writing: Discursive Essay
  // Tags: prefix, suffix, alternative_spelling
  // ══════════════════════════════════════════════════════════════════════════

  // Set 1 — discursive essay structure & language
  _quSec3('secondary','suffix',6,1,'vocabulary', 'What is a "discursive essay"?', ['An essay that presents a balanced discussion of a topic, exploring different perspectives before reaching a conclusion','An essay that tells a fictional story about characters','A poem that rhymes','An essay that only angrily argues one side without acknowledging the other'], 'An essay that presents a balanced discussion of a topic, exploring different perspectives before reaching a conclusion', term: 3),
  _quSec3('secondary','prefix',6,1,'grammar', 'What is "hedging" language in academic writing?', ['Words (like may, might, could, often) used to soften a claim so it isn\'t an absolute statement','Words used to make a sentence sound angry','Using all capital letters','Using gardening metaphors'], 'Words (like may, might, could, often) used to soften a claim so it isn\'t an absolute statement', term: 3),
  _quSec3('secondary','alternative_spelling',6,1,'grammar', 'Which of these sentences uses "hedging"?', ['This might suggest that social media can have negative effects.','Social media is always terrible.','Everyone hates social media.','Social media destroyed the world.'], 'This might suggest that social media can have negative effects.', term: 3),
  _quSec3('secondary','suffix',6,1,'grammar', 'Which discourse marker is excellent for introducing a different perspective in a discursive essay?', ['On the other hand,...','Therefore,...','Firstly,...','In conclusion,...'], 'On the other hand,...', term: 3),
  _quSec3('secondary','prefix',6,1,'grammar', 'Which of these is NOT an absolute statement?', ['It is possible that climate change will affect agriculture.','Climate change will absolutely destroy all agriculture tomorrow.','All farmers hate climate change.','Everyone knows this is true.'], 'It is possible that climate change will affect agriculture.', term: 3),
  _quSec3('secondary','suffix',6,1,'grammar', 'What should the conclusion of a discursive essay do?', ['Summarize the balanced points discussed and state the writer\'s final reasoned opinion','Introduce a brand new point','End abruptly without an opinion','Only agree with the first paragraph'], 'Summarize the balanced points discussed and state the writer\'s final reasoned opinion', term: 3),
  _quSec3('secondary','alternative_spelling',6,1,'vocabulary', 'What does it mean to be "objective" in the body paragraphs of a discursive essay?', ['To present both sides fairly without personal bias','To yell at the reader','To only use subjective opinions','To make up statistics'], 'To present both sides fairly without personal bias', term: 3),
  _quSec3('secondary','prefix',6,1,'vocabulary', 'What is a "perspective"?', ['A particular attitude toward or way of regarding something; a point of view','A type of magnifying glass','A grammar rule','A transition word'], 'A particular attitude toward or way of regarding something; a point of view', term: 3),
  _quSec3('secondary','suffix',6,1,'grammar', 'Which word correctly uses a suffix to mean "able to be discussed"?', ['discussable','discussible','discussement','discussly'], 'discussable', term: 3), // debatable is more common, but discussable is correct morphological formation.
  _quSec3('secondary','alternative_spelling',6,1,'grammar', 'Identify the correctly spelled word often used in discursive essays to mean "a disagreement or argument".', ['controversy','controversey','controvercy','contriversy'], 'controversy', term: 3),

  // Set 2 — more on discursive writing
  _quSec3('secondary','prefix',6,2,'grammar', 'Which phrase is good for introducing the view of others?', ['It is often argued that...','I think that...','Me and my friends say...','Obviously,...'], 'It is often argued that...', term: 3),
  _quSec3('secondary','suffix',6,2,'vocabulary', 'What does "balanced" mean in a discursive essay?', ['Giving fair and equal attention to different sides of an argument','Only writing about one thing','Writing exactly 500 words','Using very short sentences'], 'Giving fair and equal attention to different sides of an argument', term: 3),
  _quSec3('secondary','alternative_spelling',6,2,'grammar', 'Which word is spelled correctly?', ['argument','arguement','argumant','arguamant'], 'argument', term: 3),
  _quSec3('secondary','prefix',6,2,'grammar', 'Which modal verb is a common hedging word?', ['could','must','will','always'], 'could', term: 3),
  _quSec3('secondary','suffix',6,2,'grammar', 'Which transition word shows similarity or agreement between points?', ['Similarly','However','Conversely','Although'], 'Similarly', term: 3),
  _quSec3('secondary','alternative_spelling',6,2,'vocabulary', 'What does "controversial" mean?', ['giving rise or likely to give rise to public disagreement','very calm and peaceful','easy to understand','boring'], 'giving rise or likely to give rise to public disagreement', term: 3),
  _quSec3('secondary','prefix',6,2,'vocabulary', 'What does "discursive" mean?', ['digressing from subject to subject; or relating to discourse/argument','moving very fast','written in a diary','a type of poetry'], 'digressing from subject to subject; or relating to discourse/argument', term: 3),
  _quSec3('secondary','suffix',6,2,'grammar', 'Which of these is a good topic sentence for a body paragraph exploring a negative aspect?', ['One significant drawback of this technology is...','Technology is awesome.','I don\'t like technology.','The conclusion is that it is bad.'], 'One significant drawback of this technology is...', term: 3),
  _quSec3('secondary','alternative_spelling',6,2,'grammar', 'Identify the correct spelling of the word meaning "to strongly suggest the truth of something".', ['imply','implie','impley','inply'], 'imply', term: 3),
  _quSec3('secondary','prefix',6,2,'grammar', 'Which prefix added to "advantage" makes it mean a negative point?', ['dis- (disadvantage)','un- (unadvantage)','mis- (misadvantage)','in- (inadvantage)'], 'dis- (disadvantage)', term: 3),

  // Set 3 — comprehension (NOT read by TTS)
  _quSec3('secondary','prefix',6,3,'comprehension',
      'PASSAGE: The topic of homework remains highly controversial. Some educators argue that regular assignments are essential because they reinforce classroom learning and teach students time management. They point to studies suggesting that students who complete homework tend to achieve higher test scores. On the other hand, a growing number of parents and psychologists propose that excessive homework may cause unnecessary stress and burn-out. They argue that children also need time for unstructured play and family activities. Ultimately, while some homework is beneficial, it seems that a balanced approach is required to protect students\' well-being.\n\nQ: Why is the topic of homework considered controversial according to the passage?',
      ['Because there are strong arguments both for and against it','Because it is a new invention','Because everyone hates it','Because it is illegal'],
      'Because there are strong arguments both for and against it', term: 3),
  _quSec3('secondary','suffix',6,3,'comprehension',
      'Refer to the passage above.\n\nQ: What is one reason some educators support homework?',
      ['It reinforces classroom learning and teaches time management','It makes students tired','It gives teachers something to do','It stops children from playing'],
      'It reinforces classroom learning and teaches time management', term: 3),
  _quSec3('secondary','alternative_spelling',6,3,'comprehension',
      'Refer to the passage above.\n\nQ: What discourse marker is used to introduce the opposing view?',
      ['On the other hand','Ultimately','Because','They point to'],
      'On the other hand', term: 3),
  _quSec3('secondary','prefix',6,3,'comprehension',
      'Refer to the passage above.\n\nQ: What do some parents and psychologists propose excessive homework may cause?',
      ['Unnecessary stress and burn-out','Better grades','More family activities','Unstructured play'],
      'Unnecessary stress and burn-out', term: 3),
  _quSec3('secondary','suffix',6,3,'comprehension',
      'Refer to the passage above.\n\nQ: What is the conclusion (the final reasoned opinion) of the passage?',
      ['A balanced approach is required to protect students\' well-being','Homework should be completely banned','Students should do 5 hours of homework a night','Only parents should do homework'],
      'A balanced approach is required to protect students\' well-being', term: 3),
  _quSec3('secondary','prefix',6,3,'grammar', 'Identify the "hedging" word used in the sentence "excessive homework may cause unnecessary stress".', ['may','cause','excessive','unnecessary'], 'may', term: 3),
  _quSec3('secondary','alternative_spelling',6,3,'vocabulary', 'What does "reinforce" mean?', ['to strengthen or support (an idea or feeling)','to forget entirely','to write down','to break apart'], 'to strengthen or support (an idea or feeling)', term: 3),
  _quSec3('secondary','suffix',6,3,'vocabulary', 'What does "beneficial" mean?', ['favorable or advantageous; resulting in good','causing harm','very boring','expensive'], 'favorable or advantageous; resulting in good', term: 3),
  _quSec3('secondary','prefix',6,3,'grammar', 'Identify the word with the prefix "un-" meaning "not".', ['unnecessary','unstructured','both unnecessary and unstructured','ultimately'], 'both unnecessary and unstructured', term: 3),
  _quSec3('secondary','alternative_spelling',6,3,'grammar', 'Which is the correct spelling of the word meaning "the state of being comfortable, healthy, or happy"?', ['well-being','wellbeing (both are acceptable, but hyphen is very common)','welbeing','well-beeing'], 'well-being', term: 3),

// ══════════════════════════════════════════════════════════════════════════
  // WEEK 7 — Literature: Analysing Theme
  // Tags: alliteration, rhyme
  // ══════════════════════════════════════════════════════════════════════════

  // Set 1 — theme and literary devices
  _quSec3('secondary','rhyme',7,1,'vocabulary', 'What is the "theme" of a literary text?', ['The central, underlying message or big idea the author is exploring','The name of the main character','The physical setting of the story','The rhyming words at the end'], 'The central, underlying message or big idea the author is exploring', term: 3),
  _quSec3('secondary','alliteration',7,1,'vocabulary', 'Which of these is a common literary theme?', ['The corrupting power of greed','A red bicycle','New York City in 1999','The protagonist'], 'The corrupting power of greed', term: 3),
  _quSec3('secondary','rhyme',7,1,'grammar', 'Which literary device involves words that have the same ending sound?', ['Rhyme','Alliteration','Personification','Metaphor'], 'Rhyme', term: 3),
  _quSec3('secondary','alliteration',7,1,'grammar', 'Identify the alliteration: "The silent snake slithered stealthily."', ['The repeated /s/ sound at the beginning of words','The comparison of the snake','The silent nature of the snake','The rhythm of the sentence'], 'The repeated /s/ sound at the beginning of words', term: 3),
  _quSec3('secondary','rhyme',7,1,'vocabulary', 'How do you find the theme of a text?', ['By analysing the characters\' actions, the conflict, and how it is resolved','By reading only the first letter of every paragraph','By counting the number of pages','By looking at the author\'s picture'], 'By analysing the characters\' actions, the conflict, and how it is resolved', term: 3),
  _quSec3('secondary','alliteration',7,1,'grammar', 'If a text is about a poor boy who shares his last meal and is later rewarded, what is a likely theme?', ['Generosity and kindness are ultimately rewarded','Being poor is fun','Food is delicious','Never share your food'], 'Generosity and kindness are ultimately rewarded', term: 3),
  _quSec3('secondary','rhyme',7,1,'grammar', 'Which pair of words rhymes?', ['theme and scheme','theme and time','theme and poem','theme and story'], 'theme and scheme', term: 3),
  _quSec3('secondary','alliteration',7,1,'vocabulary', 'What is "textual evidence"?', ['Specific quotes or details from the text used to prove a point about the theme','The author\'s biography','A review of the book','A summary of the plot'], 'Specific quotes or details from the text used to prove a point about the theme', term: 3),
  _quSec3('secondary','rhyme',7,1,'grammar', 'What is a "stanza" in poetry?', ['A grouped set of lines, like a paragraph in prose','A rhyming pair of words','The title of the poem','The underlying theme'], 'A grouped set of lines, like a paragraph in prose', term: 3),
  _quSec3('secondary','alliteration',7,1,'grammar', 'Which is an example of alliteration?', ['Fierce fires flamed furiously.','The fire was very hot.','Fires burn everything.','The bright fire glowed.'], 'Fierce fires flamed furiously.', term: 3),

  // Set 2 — theme and literary devices
  _quSec3('secondary','rhyme',7,2,'vocabulary', 'If the main character sacrifices their life to save their family, what is a likely theme?', ['Love and sacrifice','The danger of running fast','How to build a house','Being angry'], 'Love and sacrifice', term: 3),
  _quSec3('secondary','alliteration',7,2,'grammar', 'Identify the alliteration: "Peter Piper picked a peck of pickled peppers."', ['The repetition of the /p/ sound','The rhyme between Peter and pepper','The theme of the story','The use of adjectives'], 'The repetition of the /p/ sound', term: 3),
  _quSec3('secondary','rhyme',7,2,'grammar', 'Which word rhymes with "light"?', ['bright','late','lit','dark'], 'bright', term: 3),
  _quSec3('secondary','alliteration',7,2,'vocabulary', 'Why might an author use alliteration?', ['To create rhythm, mood, or emphasize certain words','To make the text impossible to read','To hide the main theme','To prove a scientific fact'], 'To create rhythm, mood, or emphasize certain words', term: 3),
  _quSec3('secondary','rhyme',7,2,'vocabulary', 'What does "universal theme" mean?', ['A theme that is relevant to people of all cultures and time periods','A theme about outer space','A theme only understood by one person','A theme that changes every day'], 'A theme that is relevant to people of all cultures and time periods', term: 3),
  _quSec3('secondary','alliteration',7,2,'grammar', 'Is the theme usually stated directly in the text (e.g., "The theme is...")?', ['No, it is usually implied and must be inferred by the reader','Yes, always in the first sentence','Yes, in the title','Yes, in the index'], 'No, it is usually implied and must be inferred by the reader', term: 3),
  _quSec3('secondary','rhyme',7,2,'grammar', 'What is the rhyme scheme if lines 1 and 2 rhyme (A), and lines 3 and 4 rhyme (B)?', ['AABB','ABAB','ABCA','ABCD'], 'AABB', term: 3),
  _quSec3('secondary','alliteration',7,2,'grammar', 'Identify the device: "Wild winds whirled." ', ['Alliteration','Metaphor','Simile','Rhyme'], 'Alliteration', term: 3),
  _quSec3('secondary','rhyme',7,2,'vocabulary', 'What is a "couplet"?', ['Two consecutive lines of poetry that rhyme','A poem with no rhyme','A four-line stanza','A type of metaphor'], 'Two consecutive lines of poetry that rhyme', term: 3),
  _quSec3('secondary','alliteration',7,2,'grammar', 'Which of these words alliterates with "brave"?', ['bear','cave','strong','hero'], 'bear', term: 3),

  // Set 3 — comprehension (NOT read by TTS)
  _quSec3('secondary','rhyme',7,3,'comprehension',
      'PASSAGE: \nThe golden sun began to sink,\nAnd painted skies a purple-pink.\nThe weary worker walked away,\nTo rest and end the difficult day.\nHe had no gold, he had no car,\nBut watched the bright and shining star.\nHe knew his family loved him true,\nAnd that was worth the whole sky blue.\n\nQ: What is the rhyme scheme of this poem?',
      ['AABB','ABAB','ABCA','ABCD'],
      'AABB', term: 3),
  _quSec3('secondary','alliteration',7,3,'comprehension',
      'Refer to the poem above.\n\nQ: Which line contains clear alliteration?',
      ['The weary worker walked away','The golden sun began to sink','He had no gold, he had no car','And that was worth the whole sky blue'],
      'The weary worker walked away', term: 3),
  _quSec3('secondary','rhyme',7,3,'comprehension',
      'Refer to the poem above.\n\nQ: What is a likely theme of this poem?',
      ['Love and family are more valuable than material wealth','Working hard makes you rich','Looking at the sky is boring','The sun is always golden'],
      'Love and family are more valuable than material wealth', term: 3),
  _quSec3('secondary','rhyme',7,3,'comprehension',
      'Refer to the poem above.\n\nQ: What does the worker lack?',
      ['Gold and a car','A family','A place to sleep','A shining star'],
      'Gold and a car', term: 3),
  _quSec3('secondary','alliteration',7,3,'comprehension',
      'Refer to the poem above.\n\nQ: What does the worker have that makes him feel wealthy?',
      ['A family that loves him true','A bag of gold','A new car','A purple-pink sky'],
      'A family that loves him true', term: 3),
  _quSec3('secondary','rhyme',7,3,'vocabulary', 'What does "weary" mean?', ['feeling or showing extreme tiredness','feeling very energetic','feeling angry','feeling hungry'], 'feeling or showing extreme tiredness', term: 3),
  _quSec3('secondary','alliteration',7,3,'grammar', 'Identify the sound being repeated in "weary worker walked away".', ['The /w/ sound','The /a/ sound','The /r/ sound','The /k/ sound'], 'The /w/ sound', term: 3),
  _quSec3('secondary','rhyme',7,3,'grammar', 'Which word rhymes with "sink" in the poem?', ['pink','day','away','car'], 'pink', term: 3),
  _quSec3('secondary','alliteration',7,3,'vocabulary', 'What does "material wealth" mean in the context of the theme?', ['Money and possessions (like gold and cars)','Family and friends','Stars in the sky','The color of the sunset'], 'Money and possessions (like gold and cars)', term: 3),
  _quSec3('secondary','rhyme',7,3,'grammar', 'Which word rhymes with "true" in the poem?', ['blue','star','car','day'], 'blue', term: 3),

  // ══════════════════════════════════════════════════════════════════════════
  // WEEK 8 — Reading: Summary Skills
  // Tags: syllable, alternative_spelling
  // ══════════════════════════════════════════════════════════════════════════

  // Set 1 — summary skills
  _quSec3('secondary','syllable',8,1,'vocabulary', 'What does it mean to "summarise" a text?', ['To give a brief statement of the main points without the minor details','To copy the text exactly word-for-word','To write an entirely new story','To read the text out loud'], 'To give a brief statement of the main points without the minor details', term: 3),
  _quSec3('secondary','syllable',8,1,'grammar', 'How many syllables are in the word "summarise"?', ['3','2','4','5'], '3', term: 3),
  _quSec3('secondary','alternative_spelling',8,1,'vocabulary', 'What is "paraphrasing"?', ['Expressing the meaning of a text using your own words','Translating a text into a foreign language','Reading very quickly','Adding extra details to a story'], 'Expressing the meaning of a text using your own words', term: 3),
  _quSec3('secondary','syllable',8,1,'grammar', 'How many syllables are in the word "paraphrase"?', ['3','4','2','5'], '3', term: 3), // pa-ra-phrase
  _quSec3('secondary','alternative_spelling',8,1,'grammar', 'When writing a summary, should you include your own personal opinion?', ['No, a summary should only contain the author\'s main points','Yes, always','Yes, if you disagree with the author','Only in the first sentence'], 'No, a summary should only contain the author\'s main points', term: 3),
  _quSec3('secondary','syllable',8,1,'vocabulary', 'What are "key points"?', ['The most important ideas that the author is trying to convey','The funny jokes in the text','The author\'s biography','The punctuation marks'], 'The most important ideas that the author is trying to convey', term: 3),
  _quSec3('secondary','alternative_spelling',8,1,'grammar', 'Which is the correct spelling of the word meaning "having great importance or consequence"?', ['significant','significint','signifacant','segnificant'], 'significant', term: 3),
  _quSec3('secondary','syllable',8,1,'grammar', 'How many syllables are in "significant"?', ['4','3','5','2'], '4', term: 3),
  _quSec3('secondary','alternative_spelling',8,1,'vocabulary', 'What does "concise" mean?', ['Giving a lot of information clearly and in a few words; brief but comprehensive','Very long and boring','Full of mistakes','Written in large letters'], 'Giving a lot of information clearly and in a few words; brief but comprehensive', term: 3),
  _quSec3('secondary','alternative_spelling',8,1,'grammar', 'Which word is spelled correctly?', ['unnecessary','unecessary','unneccessary','unnesessary'], 'unnecessary', term: 3),

  // Set 2 — summary skills
  _quSec3('secondary','alternative_spelling',8,2,'grammar', 'When summarising, you should remove "extraneous" details. What does "extraneous" mean?', ['Irrelevant or unrelated to the subject being dealt with','Very important','Factual and true','Written down'], 'Irrelevant or unrelated to the subject being dealt with', term: 3),
  _quSec3('secondary','syllable',8,2,'grammar', 'How many syllables are in "extraneous"?', ['4','3','5','2'], '4', term: 3), // ex-tra-ne-ous
  _quSec3('secondary','alternative_spelling',8,2,'vocabulary', 'What is the "main idea" of a paragraph?', ['The central thought or message of the paragraph','A small example given to prove a point','The final period at the end','The title'], 'The central thought or message of the paragraph', term: 3),
  _quSec3('secondary','syllable',8,2,'vocabulary', 'What is "plagiarism"?', ['Taking someone else\'s work or ideas and passing them off as one\'s own (copying)','Writing a very good summary','Paraphrasing correctly','Reading a book twice'], 'Taking someone else\'s work or ideas and passing them off as one\'s own (copying)', term: 3),
  _quSec3('secondary','syllable',8,2,'grammar', 'How many syllables are in the word "plagiarism"?', ['4','3','5','2'], '4', term: 3), // pla-gia-rism
  _quSec3('secondary','alternative_spelling',8,2,'grammar', 'To avoid plagiarism in a summary, you must:', ['Paraphrase the text using your own words','Copy it exactly','Change only one word','Write it in a different color'], 'Paraphrase the text using your own words', term: 3),
  _quSec3('secondary','alternative_spelling',8,2,'grammar', 'Which is the correct spelling?', ['comprehension','comprehenshion','comprehention','comprihension'], 'comprehension', term: 3),
  _quSec3('secondary','syllable',8,2,'grammar', 'How many syllables are in "comprehension"?', ['4','3','5','2'], '4', term: 3),
  _quSec3('secondary','alternative_spelling',8,2,'vocabulary', 'What does it mean to "omit" something?', ['To leave it out or exclude it','To include it','To write it down','To read it loudly'], 'To leave it out or exclude it', term: 3),
  _quSec3('secondary','alternative_spelling',8,2,'grammar', 'Which transition word is useful when summarising a sequence of events?', ['Subsequently','However','Therefore','In contrast'], 'Subsequently', term: 3),

  // Set 3 — comprehension (NOT read by TTS)
  _quSec3('secondary','alternative_spelling',8,3,'comprehension',
      'PASSAGE: Deforestation is a critical environmental issue that involves the clearing of forests on a massive scale. This process is primarily driven by the agricultural industry, which cuts down trees to create space for crops and livestock. Another major cause is logging operations, which harvest timber for paper and wood products. The consequences of deforestation are severe. It destroys the natural habitats of millions of species, leading to a loss of biodiversity. Furthermore, trees play a vital role in absorbing carbon dioxide; therefore, cutting them down accelerates climate change. To combat this, massive reforestation efforts are urgently required.\n\nQ: What is the main idea of this passage?',
      ['Deforestation is a severe issue driven by agriculture and logging that harms biodiversity and accelerates climate change','Trees are used to make paper','Livestock need a lot of space','Reforestation is a new idea'],
      'Deforestation is a severe issue driven by agriculture and logging that harms biodiversity and accelerates climate change', term: 3),
  _quSec3('secondary','alternative_spelling',8,3,'comprehension',
      'Refer to the passage above.\n\nQ: According to the text, what is the primary driver of deforestation?',
      ['The agricultural industry','Climate change','Loss of biodiversity','Reforestation'],
      'The agricultural industry', term: 3),
  _quSec3('secondary','syllable',8,3,'comprehension',
      'Refer to the passage above.\n\nQ: What happens when the natural habitats of millions of species are destroyed?',
      ['It leads to a loss of biodiversity','It creates more space for crops','It stops climate change','It increases the number of trees'],
      'It leads to a loss of biodiversity', term: 3),
  _quSec3('secondary','alternative_spelling',8,3,'comprehension',
      'Refer to the passage above.\n\nQ: Why does cutting down trees accelerate climate change?',
      ['Because trees absorb carbon dioxide','Because trees produce paper','Because trees are tall','Because logging operations are loud'],
      'Because trees absorb carbon dioxide', term: 3),
  _quSec3('secondary','syllable',8,3,'comprehension',
      'Refer to the passage above.\n\nQ: What is required to combat deforestation?',
      ['Massive reforestation efforts','More logging operations','More agricultural space','Fewer species'],
      'Massive reforestation efforts', term: 3),
  _quSec3('secondary','alternative_spelling',8,3,'vocabulary', 'What does "biodiversity" mean?', ['the variety of plant and animal life in the world or in a particular habitat','the process of cutting down trees','a type of farming','a specific type of tree'], 'the variety of plant and animal life in the world or in a particular habitat', term: 3),
  _quSec3('secondary','syllable',8,3,'grammar', 'How many syllables are in the word "deforestation"?', ['5','4','6','3'], '5', term: 3), // de-for-es-ta-tion
  _quSec3('secondary','alternative_spelling',8,3,'vocabulary', 'If you had to paraphrase "primarily driven by the agricultural industry", which option is best?', ['Mostly caused by farming','Driven by cars','A result of climate change','Always stopping the timber industry'], 'Mostly caused by farming', term: 3),
  _quSec3('secondary','syllable',8,3,'grammar', 'How many syllables are in the word "agricultural"?', ['5','4','6','3'], '5', term: 3), // ag-ri-cul-tur-al
  _quSec3('secondary','alternative_spelling',8,3,'grammar', 'Which word is the correct spelling of the plural of "species"?', ['species (it is the same singular and plural)','specie','specieses','specees'], 'species (it is the same singular and plural)', term: 3),

  // ══════════════════════════════════════════════════════════════════════════
  // WEEK 9 — Mock Examination Practice
  // Tags: prefix, suffix, alternative_spelling, homophone
  // ══════════════════════════════════════════════════════════════════════════

  // Set 1 — mock exam mix
  _quSec3('secondary','prefix',9,1,'grammar', 'Which sentence uses a prefix correctly to mean "not expected"?', ['The outcome of the match was completely unexpected.','The outcome was inexpected.','The outcome was misexpected.','The outcome was disexpected.'], 'The outcome of the match was completely unexpected.', term: 3),
  _quSec3('secondary','suffix',9,1,'grammar', 'Identify the passive sentence.', ['The new bridge was designed by a famous architect.','A famous architect designed the new bridge.','The bridge is very long.','The architect will design a bridge.'], 'The new bridge was designed by a famous architect.', term: 3),
  _quSec3('secondary','alternative_spelling',9,1,'grammar', 'Which is the correct spelling?', ['guarantee','garantee','guarentee','garentee'], 'guarantee', term: 3),
  _quSec3('secondary','homophone',9,1,'grammar', 'Which homophone fits best: "The loud noise did not ___ her concentration."?', ['affect','effect','except','accept'], 'affect', term: 3),
  _quSec3('secondary','prefix',9,1,'vocabulary', 'What does the root "dict" mean in "contradict"?', ['to say or speak','to write','to build','to carry'], 'to say or speak', term: 3),
  _quSec3('secondary','suffix',9,1,'grammar', 'Which relative pronoun is best: "The man ___ car was stolen reported it to the police."?', ['whose','who','which','that'], 'whose', term: 3),
  _quSec3('secondary','alternative_spelling',9,1,'grammar', 'Which sentence is a reported speech version of "I am tired," she said.', ['She said that she was tired.','She said that I am tired.','She says she is tired.','She said, "She is tired."'], 'She said that she was tired.', term: 3),
  _quSec3('secondary','homophone',9,1,'grammar', 'Which homophone fits best: "He threw the ball ___ the window."?', ['through','threw','thorough','though'], 'through', term: 3),
  _quSec3('secondary','prefix',9,1,'vocabulary', 'What does the prefix "inter-" mean in "intervene"?', ['between or among','above','against','self'], 'between or among', term: 3),
  _quSec3('secondary','suffix',9,1,'grammar', 'Which suffix makes "child" into an adjective meaning "acting silly like a child"?', ['-ish (childish)','-ly (childly)','-ous (childous)','-ment (childment)'], '-ish (childish)', term: 3),

  // Set 2 — mock exam mix
  _quSec3('secondary','alternative_spelling',9,2,'grammar', 'Which is the correct spelling? (Exception to i before e)', ['protein','protien','proteen','protean'], 'protein', term: 3),
  _quSec3('secondary','prefix',9,2,'vocabulary', 'What does "biology" mean? (bio = life)', ['The study of living organisms','The study of rocks','The study of stars','The study of sound'], 'The study of living organisms', term: 3),
  _quSec3('secondary','suffix',9,2,'grammar', 'Identify the non-defining relative clause: "Abuja, which is the capital of Nigeria, is a beautiful city."', ['which is the capital of Nigeria','Abuja is a beautiful city','Abuja, which is','is a beautiful city'], 'which is the capital of Nigeria', term: 3),
  _quSec3('secondary','homophone',9,2,'grammar', 'Which homophone fits best: "It is a matter of ___."?', ['principle','principal','princepal','princeple'], 'principle', term: 3),
  _quSec3('secondary','alternative_spelling',9,2,'vocabulary', 'Which literary device is this: "The wind whispered through the trees"?', ['Personification','Simile','Metaphor','Alliteration'], 'Personification', term: 3),
  _quSec3('secondary','prefix',9,2,'vocabulary', 'What does the prefix "trans-" mean in "transport"?', ['across or moving from one place to another','building under','saying before','looking closely'], 'across or moving from one place to another', term: 3),
  _quSec3('secondary','suffix',9,2,'grammar', 'Which word correctly uses the suffix "-ate" to mean "to show or prove"?', ['demonstrate','demonstrify','demonstrise','demonstriment'], 'demonstrate', term: 3),
  _quSec3('secondary','homophone',9,2,'grammar', 'Which homophone fits best: "The school ___ gave a speech."?', ['principal','principle','princepal','princeple'], 'principal', term: 3),
  _quSec3('secondary','alternative_spelling',9,2,'grammar', 'Which is the correct spelling?', ['millennium','millenium','milennium','milenium'], 'millennium', term: 3),
  _quSec3('secondary','prefix',9,2,'grammar', 'Which word uses a prefix to mean "to write incorrectly"?', ['miswrite','unwrite','diswrite','rewrite'], 'miswrite', term: 3),

  // Set 3 — comprehension (NOT read by TTS)
  _quSec3('secondary','alternative_spelling',9,3,'comprehension',
      'PASSAGE: The mock examination hall was dead silent. Every student knew that a strong performance here would guarantee their readiness for the real test. Mr. Davies walked through the aisles, observing the students as they evaluated the complex essay prompt. Some students looked confident, their pens moving swiftly across the paper. Others, however, seemed to misinterpret the question entirely, writing off-topic paragraphs that lacked proper evidence. Mr. Davies hoped they would remember to proofread their work before the time was up. A careless mistake with homophones or punctuation could easily alter their final grade.\n\nQ: What would a strong performance in the mock examination guarantee?',
      ['Their readiness for the real test','A day off from school','A prize from Mr. Davies','An automatic pass'],
      'Their readiness for the real test', term: 3),
  _quSec3('secondary','prefix',9,3,'comprehension',
      'Refer to the passage above.\n\nQ: What were the students doing with the complex essay prompt?',
      ['Evaluating it','Ignoring it','Copying it','Throwing it away'],
      'Evaluating it', term: 3),
  _quSec3('secondary','prefix',9,3,'comprehension',
      'Refer to the passage above.\n\nQ: What problem did some of the less confident students have?',
      ['They seemed to misinterpret the question entirely','They wrote too fast','They asked too many questions','They broke their pens'],
      'They seemed to misinterpret the question entirely', term: 3),
  _quSec3('secondary','suffix',9,3,'comprehension',
      'Refer to the passage above.\n\nQ: What did their off-topic paragraphs lack?',
      ['Proper evidence','A conclusion','Capital letters','A title'],
      'Proper evidence', term: 3),
  _quSec3('secondary','homophone',9,3,'comprehension',
      'Refer to the passage above.\n\nQ: What did Mr. Davies hope they would remember to do?',
      ['Proofread their work before the time was up','Go to sleep','Hand in their papers early','Talk to their friends'],
      'Proofread their work before the time was up', term: 3),
  _quSec3('secondary','alternative_spelling',9,3,'grammar', 'Which is the correct spelling of the word from the passage meaning "promise or assure"?', ['guarantee','garantee','guarentee','garentee'], 'guarantee', term: 3),
  _quSec3('secondary','prefix',9,3,'vocabulary', 'What does "misinterpret" mean?', ['to understand something incorrectly','to translate into another language','to write a perfect essay','to read very quickly'], 'to understand something incorrectly', term: 3),
  _quSec3('secondary','suffix',9,3,'grammar', 'Identify the adverb in the phrase "moving swiftly".', ['swiftly','moving','across','paper'], 'swiftly', term: 3),
  _quSec3('secondary','homophone',9,3,'grammar', 'Which homophone fits in the blank? "A careless mistake could ___ their grade." (meaning change)', ['alter','altar','allter','aulter'], 'alter', term: 3),
  _quSec3('secondary','prefix',9,3,'vocabulary', 'What does it mean to be "off-topic"?', ['not relevant to the subject being discussed','perfectly answering the question','writing too much','spelling words wrong'], 'not relevant to the subject being discussed', term: 3),

  // ══════════════════════════════════════════════════════════════════════════
  // WEEK 10 — Oral: Formal Presentation
  // Tags: syllable
  // ══════════════════════════════════════════════════════════════════════════

  // Set 1 — presentation skills
  _quSec3('secondary','syllable',10,1,'vocabulary', 'What is a "formal presentation"?', ['A structured talk given to an audience, often using visual aids and formal language','A casual conversation with friends','Writing an essay','Singing a song'], 'A structured talk given to an audience, often using visual aids and formal language', term: 3),
  _quSec3('secondary','syllable',10,1,'grammar', 'How many syllables are in the word "presentation"?', ['4','3','5','2'], '4', term: 3), // pres-en-ta-tion
  _quSec3('secondary','syllable',10,1,'vocabulary', 'What are "visual aids"?', ['Items of a visual manner, such as slides or charts, used to supplement a presentation','Glasses worn by the speaker','The clothes the speaker wears','Notes held by the speaker'], 'Items of a visual manner, such as slides or charts, used to supplement a presentation', term: 3),
  _quSec3('secondary','syllable',10,1,'grammar', 'How many syllables are in the word "visual"?', ['3','2','4','1'], '3', term: 3),
  _quSec3('secondary','syllable',10,1,'vocabulary', 'What does "eye contact" mean during a presentation?', ['Looking directly at the people in your audience to keep them engaged','Staring at your shoes','Looking only at the teacher','Closing your eyes'], 'Looking directly at the people in your audience to keep them engaged', term: 3),
  _quSec3('secondary','syllable',10,1,'vocabulary', 'What does it mean to "project" your voice?', ['To speak clearly and loudly enough so everyone in the room can hear','To whisper softly','To shout in anger','To use a microphone'], 'To speak clearly and loudly enough so everyone in the room can hear', term: 3),
  _quSec3('secondary','syllable',10,1,'grammar', 'How many syllables are in the word "audience"?', ['3','4','2','5'], '3', term: 3), // au-di-ence
  _quSec3('secondary','syllable',10,1,'vocabulary', 'What is the "Q&A session"?', ['The time at the end where the audience asks questions and the speaker answers','A quick quiz given to the audience','The introduction of the speech','The visual aids'], 'The time at the end where the audience asks questions and the speaker answers', term: 3),
  _quSec3('secondary','syllable',10,1,'grammar', 'Which phrase is best to start a presentation?', ['"Good morning everyone, today I will be presenting on..."','"Here is my project."','"Let\'s get this over with."','"My name is..." (without greeting)'], '"Good morning everyone, today I will be presenting on..."', term: 3),
  _quSec3('secondary','syllable',10,1,'grammar', 'Which phrase is best to transition to a new slide?', ['"Moving on to my next point..."','"Look here."','"Next."','"Read this."'], '"Moving on to my next point..."', term: 3),

  // Set 2 — presentation skills
  _quSec3('secondary','syllable',10,2,'vocabulary', 'What does "posture" refer to in a presentation?', ['The way you stand or carry yourself; you should stand tall and look confident','The speed at which you speak','The volume of your voice','The font on your slides'], 'The way you stand or carry yourself; you should stand tall and look confident', term: 3),
  _quSec3('secondary','syllable',10,2,'grammar', 'How many syllables are in the word "posture"?', ['2','3','1','4'], '2', term: 3),
  _quSec3('secondary','syllable',10,2,'vocabulary', 'What does it mean to "articulate" your words?', ['To pronounce them clearly and distinctly','To mumble them','To speak very fast','To forget what to say'], 'To pronounce them clearly and distinctly', term: 3),
  _quSec3('secondary','syllable',10,2,'grammar', 'How many syllables are in the word "articulate"?', ['4','5','3','6'], '4', term: 3), // ar-tic-u-late
  _quSec3('secondary','syllable',10,2,'vocabulary', 'Why should you avoid reading directly from your notes or slides the whole time?', ['It makes you lose eye contact with the audience and sounds robotic','It makes the presentation too fast','It hurts your eyes','You will forget the words'], 'It makes you lose eye contact with the audience and sounds robotic', term: 3),
  _quSec3('secondary','syllable',10,2,'grammar', 'Which phrase is best when you don\'t know the answer during a Q&A?', ['"That\'s a great question, but I don\'t have the data right now. I will look into it."','"I don\'t know."','"Why are you asking me that?"','"That\'s a stupid question."'], '"That\'s a great question, but I don\'t have the data right now. I will look into it."', term: 3),
  _quSec3('secondary','syllable',10,2,'vocabulary', 'What is "pacing"?', ['The speed at which you speak; it shouldn\'t be too fast or too slow','Walking back and forth aggressively','The volume of your voice','The number of slides'], 'The speed at which you speak; it shouldn\'t be too fast or too slow', term: 3),
  _quSec3('secondary','syllable',10,2,'grammar', 'How many syllables are in the word "confidence"?', ['3','2','4','1'], '3', term: 3),
  _quSec3('secondary','syllable',10,2,'grammar', 'Which of these is a good conclusion phrase?', ['"To summarise, the main takeaways are..."','"I\'m done now."','"That\'s it."','"Any questions?" (without a summary)'], '"To summarise, the main takeaways are..."', term: 3),
  _quSec3('secondary','syllable',10,2,'vocabulary', 'What does "engaging" mean?', ['Charming and keeping the audience\'s attention and interest','Boring the audience to sleep','Shouting loudly','Reading from a script'], 'Charming and keeping the audience\'s attention and interest', term: 3),

  // Set 3 — comprehension (NOT read by TTS)
  _quSec3('secondary','syllable',10,3,'comprehension',
      'PASSAGE: Aisha adjusted her posture, stood tall, and faced the class. It was her turn to deliver the formal presentation on renewable energy. She had carefully designed her visual aids so that the slides were not cluttered with too much text. Instead of reading directly from the screen, she articulated her points clearly and maintained strong eye contact. Her pacing was perfect—neither too rushed nor too slow. During the Q&A session, Tobi asked a challenging question about the cost of solar panels. Aisha smiled and replied, "That is an excellent question. While the initial cost is high, the long-term savings are significant." The teacher applauded her confidence.\n\nQ: What was the topic of Aisha\'s presentation?',
      ['Renewable energy','Solar panels','How to make visual aids','The history of the school'],
      'Renewable energy', term: 3),
  _quSec3('secondary','syllable',10,3,'comprehension',
      'Refer to the passage above.\n\nQ: How did Aisha design her visual aids?',
      ['So that the slides were not cluttered with too much text','With tiny pictures','With bright, blinding colors','With only one word per slide'],
      'So that the slides were not cluttered with too much text', term: 3),
  _quSec3('secondary','syllable',10,3,'comprehension',
      'Refer to the passage above.\n\nQ: What did Aisha avoid doing during the presentation?',
      ['Reading directly from the screen','Making eye contact','Standing tall','Answering questions'],
      'Reading directly from the screen', term: 3),
  _quSec3('secondary','syllable',10,3,'comprehension',
      'Refer to the passage above.\n\nQ: How is Aisha\'s pacing described?',
      ['Perfect—neither too rushed nor too slow','Very fast','Very slow and boring','Stammering and nervous'],
      'Perfect—neither too rushed nor too slow', term: 3),
  _quSec3('secondary','syllable',10,3,'comprehension',
      'Refer to the passage above.\n\nQ: How did Aisha handle Tobi\'s challenging question?',
      ['She smiled, complimented the question, and gave a clear answer','She panicked and cried','She ignored him completely','She told him to look at the slides'],
      'She smiled, complimented the question, and gave a clear answer', term: 3),
  _quSec3('secondary','syllable',10,3,'vocabulary', 'What does "articulated" mean?', ['pronounced words clearly and distinctly','spoke very quietly','wrote something down','drew a picture'], 'pronounced words clearly and distinctly', term: 3),
  _quSec3('secondary','syllable',10,3,'grammar', 'How many syllables are in the word "renewable"?', ['4','3','5','2'], '4', term: 3), // re-new-a-ble
  _quSec3('secondary','syllable',10,3,'vocabulary', 'What does "cluttered" mean?', ['crowded with too many things in a messy way','neat and tidy','bright and shining','empty'], 'crowded with too many things in a messy way', term: 3),
  _quSec3('secondary','syllable',10,3,'grammar', 'How many syllables are in the word "significant"?', ['4','3','5','2'], '4', term: 3),
  _quSec3('secondary','syllable',10,3,'vocabulary', 'What is "confidence"?', ['a feeling of self-assurance arising from an appreciation of one\'s own abilities','a feeling of deep fear','a type of visual aid','a challenging question'], 'a feeling of self-assurance arising from an appreciation of one\'s own abilities', term: 3),

  // ══════════════════════════════════════════════════════════════════════════
  // WEEK 11 — Final Exam Preparation
  // Tags: prefix, suffix, alternative_spelling, homophone, syllable
  // ══════════════════════════════════════════════════════════════════════════

  // Set 1 — mixed exam prep
  _quSec3('secondary','prefix',11,1,'vocabulary', 'What does "biography" mean? (bio = life, graph = write)', ['An account of someone\'s life written by someone else','A story written about oneself','The study of living things','The study of writing'], 'An account of someone\'s life written by someone else', term: 3),
  _quSec3('secondary','suffix',11,1,'grammar', 'Which sentence uses the passive voice?', ['The novel was read by all the students.','All the students read the novel.','The students are reading the novel.','The novel is a great book.'], 'The novel was read by all the students.', term: 3),
  _quSec3('secondary','alternative_spelling',11,1,'grammar', 'Which is the correct spelling?', ['knowledge','nowledge','knowlege','nolledge'], 'knowledge', term: 3),
  _quSec3('secondary','homophone',11,1,'grammar', 'Which homophone fits best: "I will ___ your invitation to the party."?', ['accept','except','affect','effect'], 'accept', term: 3),
  _quSec3('secondary','syllable',11,1,'grammar', 'How many syllables are in "environment"?', ['4','3','5','2'], '4', term: 3),
  _quSec3('secondary','prefix',11,1,'grammar', 'Which transition word means "as a result"?', ['Consequently','However','Furthermore','Similarly'], 'Consequently', term: 3),
  _quSec3('secondary','suffix',11,1,'grammar', 'Which word correctly adds a suffix to "comfort"?', ['comfortable','comfortible','comfortingable','comfortious'], 'comfortable', term: 3),
  _quSec3('secondary','alternative_spelling',11,1,'vocabulary', 'What is "alliteration"?', ['Repetition of the same starting sound in adjacent words','A comparison using like or as','Giving human traits to objects','A rhyming pair'], 'Repetition of the same starting sound in adjacent words', term: 3),
  _quSec3('secondary','homophone',11,1,'grammar', 'Which homophone fits best: "She read the poem ___ to the class."?', ['aloud','allowed','a loud','alloud'], 'aloud', term: 3),
  _quSec3('secondary','syllable',11,1,'grammar', 'How many syllables are in "dictionary"?', ['4','3','5','2'], '4', term: 3),

  // Set 2 — mixed exam prep
  _quSec3('secondary','prefix',11,2,'vocabulary', 'What does "predict" mean? (pre = before, dict = say)', ['To say or estimate that a specified thing will happen in the future','To look backward at the past','To carry something heavy','To build something new'], 'To say or estimate that a specified thing will happen in the future', term: 3),
  _quSec3('secondary','suffix',11,2,'grammar', 'Change to reported speech: "I am hungry," he said.', ['He said that he was hungry.','He said that I am hungry.','He says he is hungry.','He said, "He was hungry."'], 'He said that he was hungry.', term: 3),
  _quSec3('secondary','alternative_spelling',11,2,'grammar', 'Which is the correct spelling of the exception word meaning "to grab"?', ['seize','sieze','seeze','ceize'], 'seize', term: 3),
  _quSec3('secondary','homophone',11,2,'grammar', 'Which homophone fits best: "I need a piece of ___ to write a letter."?', ['stationery','stationary','stationari','stationry'], 'stationery', term: 3),
  _quSec3('secondary','syllable',11,2,'grammar', 'How many syllables are in "literature"?', ['4','3','5','2'], '4', term: 3), // lit-er-a-ture
  _quSec3('secondary','prefix',11,2,'grammar', 'Identify the non-defining relative clause: "My aunt, who lives in Kano, sent me a gift."', ['who lives in Kano','My aunt sent me a gift','My aunt, who lives','sent me a gift'], 'who lives in Kano', term: 3),
  _quSec3('secondary','suffix',11,2,'grammar', 'What does the P.E.E. acronym stand for in essay writing?', ['Point, Evidence, Explain','Point, Example, Erase','Paragraph, Essay, End','Place, Event, Emotion'], 'Point, Evidence, Explain', term: 3),
  _quSec3('secondary','alternative_spelling',11,2,'vocabulary', 'What is a "simile"?', ['A figure of speech involving the comparison of one thing with another using "like" or "as"','Stating one thing IS another','Repeating consonant sounds','Giving objects human traits'], 'A figure of speech involving the comparison of one thing with another using "like" or "as"', term: 3),
  _quSec3('secondary','homophone',11,2,'grammar', 'Which homophone fits best: "The recipe requires a ___ chicken."?', ['whole','hole','whool','holl'], 'whole', term: 3),
  _quSec3('secondary','syllable',11,2,'vocabulary', 'What does "objective" mean in journalism?', ['Reporting facts without personal bias','Writing sensational headlines','Making up evidence','Attacking a person'], 'Reporting facts without personal bias', term: 3),

  // Set 3 — comprehension (NOT read by TTS)
  _quSec3('secondary','alternative_spelling',11,3,'comprehension',
      'PASSAGE: Final exam preparation requires discipline and a structured routine. Cramming the night before is an ineffective strategy that often leads to panic. Instead, students should allocate specific times for different subjects. For the English paper, you must review your spelling rules, especially the tricky "i before e" exceptions. Additionally, practising past papers helps you master the P.E.E. paragraph structure for essays. Remember to take short breaks to keep your mind sharp. A well-rested brain is far more capable of recalling complex vocabulary than an exhausted one.\n\nQ: What does final exam preparation require according to the passage?',
      ['Discipline and a structured routine','Cramming the night before','Panic','Skipping breaks'],
      'Discipline and a structured routine', term: 3),
  _quSec3('secondary','prefix',11,3,'comprehension',
      'Refer to the passage above.\n\nQ: Why is cramming the night before a bad idea?',
      ['It is an ineffective strategy that often leads to panic','It makes you sleep too much','It is too easy','It makes you too confident'],
      'It is an ineffective strategy that often leads to panic', term: 3),
  _quSec3('secondary','suffix',11,3,'comprehension',
      'Refer to the passage above.\n\nQ: What should students do instead of cramming?',
      ['Allocate specific times for different subjects','Stop studying entirely','Only study English','Memorise the dictionary'],
      'Allocate specific times for different subjects', term: 3),
  _quSec3('secondary','alternative_spelling',11,3,'comprehension',
      'Refer to the passage above.\n\nQ: Why should you practice past papers for the English exam?',
      ['It helps you master the P.E.E. paragraph structure for essays','It helps you learn math','It gives you the exact questions for the real exam','It improves your handwriting'],
      'It helps you master the P.E.E. paragraph structure for essays', term: 3),
  _quSec3('secondary','homophone',11,3,'comprehension',
      'Refer to the passage above.\n\nQ: Why should you take short breaks?',
      ['To keep your mind sharp','To watch television','To forget what you learned','To eat a massive meal'],
      'To keep your mind sharp', term: 3),
  _quSec3('secondary','alternative_spelling',11,3,'vocabulary', 'What does "cramming" mean?', ['studying intensively over a short period of time just before an exam','reading a book slowly for fun','sleeping for eight hours','writing an essay'], 'studying intensively over a short period of time just before an exam', term: 3),
  _quSec3('secondary','prefix',11,3,'grammar', 'Identify the prefix in the word "ineffective".', ['in-','-ive','effect','-fect'], 'in-', term: 3),
  _quSec3('secondary','syllable',11,3,'grammar', 'How many syllables are in the word "preparation"?', ['4','5','3','6'], '4', term: 3), // prep-a-ra-tion
  _quSec3('secondary','suffix',11,3,'grammar', 'What suffix is added to "exhaust" to make an adjective meaning "very tired"?', ['-ed (exhausted)','-ing (exhausting)','-tion (exhaustion)','-ly (exhaustly)'], '-ed (exhausted)', term: 3),
  _quSec3('secondary','homophone',11,3,'grammar', 'Which homophone fits in the blank? "You should ___ specific times for subjects." (meaning to assign or set aside)', ['allocate','alocate','allokate','allot'], 'allocate', term: 3), // allocate is not a homophone puzzle here, just vocab. Let's fix to a real homophone.
  // Replacement for the above question to strictly fit homophone tag:
  _quSec3('secondary','homophone',11,3,'grammar', 'Which word fits best: "Taking a break will ___ your ability to recall facts."?', ['affect','effect','except','accept'], 'affect', term: 3),

  // ══════════════════════════════════════════════════════════════════════════
  // WEEK 12 — Celebration & Reflection
  // Tags: rhyme, alliteration
  // ══════════════════════════════════════════════════════════════════════════

  // Set 1 — poetic reflection
  _quSec3('secondary','rhyme',12,1,'vocabulary', 'What is "rhythm" in poetry?', ['The beat and pace of a poem, created by the pattern of stressed and unstressed syllables','The words that rhyme at the end of a line','The main character of the poem','The title of the poem'], 'The beat and pace of a poem, created by the pattern of stressed and unstressed syllables', term: 3),
  _quSec3('secondary','alliteration',12,1,'grammar', 'Identify the literary device: "The silent scholars studied successfully."', ['Alliteration','Rhyme','Metaphor','Simile'], 'Alliteration', term: 3),
  _quSec3('secondary','rhyme',12,1,'grammar', 'What is the rhyme scheme of a limerick (a humorous five-line poem)?', ['AABBA','ABAB','AABB','ABCDE'], 'AABBA', term: 3),
  _quSec3('secondary','alliteration',12,1,'vocabulary', 'What does "personification" do in poetry?', ['Gives human qualities to non-human things','Compares two things with "like"','Repeats the first letter of words','Rhymes every line'], 'Gives human qualities to non-human things', term: 3),
  _quSec3('secondary','rhyme',12,1,'grammar', 'Which word rhymes with "year"?', ['cheer','late','time','past'], 'cheer', term: 3),
  _quSec3('secondary','alliteration',12,1,'grammar', 'Which is an example of alliteration?', ['Proud pupils passed perfectly.','The students were very proud.','Passing exams is great.','We are happy today.'], 'Proud pupils passed perfectly.', term: 3),
  _quSec3('secondary','rhyme',12,1,'vocabulary', 'What is a "stanza"?', ['A group of lines forming the basic recurring metrical unit in a poem','The rhythm of the words','The author\'s name','A type of rhyme'], 'A group of lines forming the basic recurring metrical unit in a poem', term: 3),
  _quSec3('secondary','alliteration',12,1,'grammar', 'Identify the device: "Her smile was a ray of sunshine."', ['Metaphor','Simile','Alliteration','Personification'], 'Metaphor', term: 3),
  _quSec3('secondary','rhyme',12,1,'vocabulary', 'What is "free verse" poetry?', ['Poetry that does not rhyme or have a regular meter','Poetry that only has two lines','Poetry that costs no money','Poetry written by a group'], 'Poetry that does not rhyme or have a regular meter', term: 3),
  _quSec3('secondary','alliteration',12,1,'grammar', 'Identify the device: "As brave as a lion."', ['Simile','Metaphor','Alliteration','Personification'], 'Simile', term: 3),

  // Set 2 — poetic reflection
  _quSec3('secondary','rhyme',12,2,'grammar', 'If line 1 ends with "cat", line 2 with "bat", line 3 with "dog", and line 4 with "log", what is the rhyme scheme?', ['AABB','ABAB','ABCA','ABCD'], 'AABB', term: 3),
  _quSec3('secondary','alliteration',12,2,'grammar', 'Which sentence uses alliteration to describe a celebration?', ['Fantastic friends feasted on food.','We ate a lot of food.','The party was very fun.','Everyone was happy.'], 'Fantastic friends feasted on food.', term: 3),
  _quSec3('secondary','rhyme',12,2,'vocabulary', 'What is an "internal rhyme"?', ['A rhyme involving a word in the middle of a line and another at the end of the line or in the middle of the next','A rhyme between two different poems','A rhyme that doesn\'t actually rhyme','A poem with no rhythm'], 'A rhyme involving a word in the middle of a line and another at the end of the line or in the middle of the next', term: 3),
  _quSec3('secondary','alliteration',12,2,'grammar', 'Identify the device: "The classroom groaned under the weight of the students\' bags."', ['Personification','Alliteration','Simile','Rhyme'], 'Personification', term: 3),
  _quSec3('secondary','rhyme',12,2,'grammar', 'Which word rhymes with "grow"?', ['know','green','fast','plant'], 'know', term: 3),
  _quSec3('secondary','alliteration',12,2,'vocabulary', 'What is "imagery"?', ['Visually descriptive language that paints a picture in the reader\'s mind','The beat of the poem','The rhyming pattern','A true story'], 'Visually descriptive language that paints a picture in the reader\'s mind', term: 3),
  _quSec3('secondary','rhyme',12,2,'vocabulary', 'What is a "couplet"?', ['Two successive rhyming lines in a verse','A four-line stanza','A poem about a couple','A type of rhythm'], 'Two successive rhyming lines in a verse', term: 3),
  _quSec3('secondary','alliteration',12,2,'grammar', 'Identify the alliteration: "The bright, beautiful balloons bounced." ', ['The repeated /b/ sound','The comparison of balloons','The rhyming of bright and beautiful','The personification of bounced'], 'The repeated /b/ sound', term: 3),
  _quSec3('secondary','rhyme',12,2,'grammar', 'What does the "tone" of a poem refer to?', ['The poet\'s attitude toward the poem\'s speaker, reader, and subject matter','The volume at which it should be read','The number of stanzas','The date it was written'], 'The poet\'s attitude toward the poem\'s speaker, reader, and subject matter', term: 3),
  _quSec3('secondary','alliteration',12,2,'grammar', 'Which is an example of a metaphor?', ['Education is a key that unlocks many doors.','Education is like a key.','Education equals going to school.','Educated elephants eat eagerly.'], 'Education is a key that unlocks many doors.', term: 3),

  // Set 3 — comprehension (NOT read by TTS)
  _quSec3('secondary','rhyme',12,3,'comprehension',
      'POEM: \nThe final bell has rung at last,\nThe stressful days are in the past.\nWe gather here to celebrate,\nAnd wipe the worries from our slate.\n\nWe faced the trials, we climbed the hill,\nWith stubborn strength and iron will.\nThe teachers guided, firm and fair,\nAnd showed us that they truly care.\n\nSo let us laugh and let us cheer,\nWe have survived another year!\n\nQ: What is the rhyme scheme of the first stanza?',
      ['AABB','ABAB','ABCA','ABCD'],
      'AABB', term: 3),
  _quSec3('secondary','alliteration',12,3,'comprehension',
      'Refer to the poem above.\n\nQ: Which line contains alliteration?',
      ['With stubborn strength and iron will','The final bell has rung at last','We gather here to celebrate','So let us laugh and let us cheer'],
      'With stubborn strength and iron will', term: 3),
  _quSec3('secondary','rhyme',12,3,'comprehension',
      'Refer to the poem above.\n\nQ: What does the phrase "wipe the worries from our slate" mean?',
      ['To forget about the stress and start fresh','To literally clean a chalkboard','To write down our problems','To study for another test'],
      'To forget about the stress and start fresh', term: 3),
  _quSec3('secondary','alliteration',12,3,'comprehension',
      'Refer to the poem above.\n\nQ: What metaphor is used to describe the challenges the students faced?',
      ['we climbed the hill','the stressful days','wipe the worries','let us laugh'],
      'we climbed the hill', term: 3),
  _quSec3('secondary','rhyme',12,3,'comprehension',
      'Refer to the poem above.\n\nQ: What is the overall tone of the poem?',
      ['Joyful and celebratory','Sad and depressing','Angry and bitter','Scary and tense'],
      'Joyful and celebratory', term: 3),
  _quSec3('secondary','rhyme',12,3,'vocabulary', 'What does "survived" mean in the context of the poem?', ['managed to keep going and succeed despite difficulties','almost died','ran away','failed completely'], 'managed to keep going and succeed despite difficulties', term: 3),
  _quSec3('secondary','alliteration',12,3,'grammar', 'Identify the alliteration in the line: "The teachers guided, firm and fair".', ['firm and fair','teachers guided','guided firm','The teachers'], 'firm and fair', term: 3),
  _quSec3('secondary','rhyme',12,3,'grammar', 'Which word rhymes with "past" in the first stanza?', ['last','bell','celebrate','slate'], 'last', term: 3),
  _quSec3('secondary','alliteration',12,3,'vocabulary', 'What does "iron will" mean?', ['extremely strong determination','a piece of metal','a legal document','a weak mind'], 'extremely strong determination', term: 3),
  _quSec3('secondary','rhyme',12,3,'grammar', 'Which word rhymes with "cheer" in the final stanza?', ['year','care','fair','hill'], 'year', term: 3),

  // ══════════════════════════════════════════════════════════════════════════
  // WEEK 13 — End-of-Year Assessment
  // Tags: prefix, suffix, alternative_spelling, homophone, syllable
  // ══════════════════════════════════════════════════════════════════════════

  // Set 1 — final assessment mix
  _quSec3('secondary','alternative_spelling',13,1,'grammar', 'Which is the correct spelling? (Hint: 2 c\'s, 2 m\'s)', ['accommodation','acommodation','accomodation','acomodation'], 'accommodation', term: 3),
  _quSec3('secondary','prefix',13,1,'vocabulary', 'What does the prefix "micro-" mean in "microscope"?', ['small','large','heat','water'], 'small', term: 3),
  _quSec3('secondary','suffix',13,1,'grammar', 'Which is a defining relative clause? (No commas needed)', ['The book that I borrowed from you is excellent.','My brother, who is a doctor, is very smart.','Abuja, which is the capital, is beautiful.','Mr. John, whose car is red, is my neighbor.'], 'The book that I borrowed from you is excellent.', term: 3),
  _quSec3('secondary','homophone',13,1,'grammar', 'Which homophone fits best: "I need to buy some ___ for my printer."?', ['stationery','stationary','stationari','stationry'], 'stationery', term: 3),
  _quSec3('secondary','syllable',13,1,'grammar', 'How many syllables are in "comprehension"?', ['4','3','5','2'], '4', term: 3),
  _quSec3('secondary','alternative_spelling',13,1,'grammar', 'Which is the correct spelling of the exception word meaning "strange"?', ['weird','wierd','weard','weerd'], 'weird', term: 3),
  _quSec3('secondary','prefix',13,1,'vocabulary', 'What does the root "bio" mean in "biology"?', ['life','earth','time','sound'], 'life', term: 3),
  _quSec3('secondary','suffix',13,1,'grammar', 'Change to active voice: "The goal was scored by the striker."', ['The striker scored the goal.','The striker is scoring the goal.','The goal scored the striker.','The striker was scoring the goal.'], 'The striker scored the goal.', term: 3),
  _quSec3('secondary','homophone',13,1,'grammar', 'Which homophone fits best: "The new principal is a man of strict ___."?', ['principle','principal','princepal','princeple'], 'principle', term: 3),
  _quSec3('secondary','syllable',13,1,'vocabulary', 'What is "plagiarism"?', ['Copying someone else\'s work and pretending it is yours','Reading a book very fast','Summarising a text perfectly','Writing a poem'], 'Copying someone else\'s work and pretending it is yours', term: 3),

  // Set 2 — final assessment mix
  _quSec3('secondary','alternative_spelling',13,2,'grammar', 'Which is the correct spelling?', ['separate','seperate','separat','separete'], 'separate', term: 3),
  _quSec3('secondary','prefix',13,2,'vocabulary', 'What does the prefix "inter-" mean in "international"?', ['between or among','above or over','inside','against'], 'between or among', term: 3),
  _quSec3('secondary','suffix',13,2,'grammar', 'Which suffix turns the verb "inform" into a noun?', ['-ation (information)','-ment (informment)','-ly (informly)','-ous (informous)'], '-ation (information)', term: 3),
  _quSec3('secondary','homophone',13,2,'grammar', 'Which homophone fits best: "We walked ___ the dark forest."?', ['through','threw','thorough','though'], 'through', term: 3),
  _quSec3('secondary','syllable',13,2,'grammar', 'How many syllables are in "international"?', ['5','4','6','3'], '5', term: 3),
  _quSec3('secondary','alternative_spelling',13,2,'vocabulary', 'What is a "metaphor"?', ['A figure of speech stating that one thing IS another','A comparison using like or as','Repetition of sounds','A type of rhyme'], 'A figure of speech stating that one thing IS another', term: 3),
  _quSec3('secondary','prefix',13,2,'grammar', 'Which word uses a prefix to mean "to write again"?', ['rewrite','unwrite','miswrite','diswrite'], 'rewrite', term: 3),
  _quSec3('secondary','suffix',13,2,'grammar', 'What does the P.E.E. acronym stand for in essay writing?', ['Point, Evidence, Explain','Point, Example, Erase','Paragraph, Essay, End','Place, Event, Emotion'], 'Point, Evidence, Explain', term: 3),
  _quSec3('secondary','homophone',13,2,'grammar', 'Which homophone fits best: "The harsh chemicals will ___ the environment."?', ['affect','effect','except','accept'], 'affect', term: 3),
  _quSec3('secondary','syllable',13,2,'vocabulary', 'What is a "discursive essay"?', ['An essay that presents a balanced discussion of a topic, exploring different perspectives','A fictional story','A poem about nature','An angry letter of complaint'], 'An essay that presents a balanced discussion of a topic, exploring different perspectives', term: 3),

  // Set 3 — comprehension (NOT read by TTS)
  _quSec3('secondary','alternative_spelling',13,3,'comprehension',
      'PASSAGE: As the academic year concluded, the Secondary students sat for their final English examination. The paper tested everything they had learned over the three terms. Section A required them to read a complex passage and answer inferential questions, ensuring they didn\'t fall for any logical fallacies. Section B challenged their grammar, asking them to identify relative clauses and correct tricky homophones like \'affect\' and \'effect\'. Finally, Section C asked them to write a discursive essay evaluating the impact of modern technology. Despite the challenging questions, most students felt confident; their diligent preparation and mastery of advanced morphology had given them the tools to succeed.\n\nQ: What did Section A of the examination require students to do?',
      ['Read a complex passage and answer inferential questions','Write a poem','Draw a picture','Sing a song'],
      'Read a complex passage and answer inferential questions', term: 3),
  _quSec3('secondary','prefix',13,3,'comprehension',
      'Refer to the passage above.\n\nQ: What grammar skills were tested in Section B?',
      ['Identifying relative clauses and correcting tricky homophones','Writing a narrative story','Counting syllables','Using a dictionary'],
      'Identifying relative clauses and correcting tricky homophones', term: 3),
  _quSec3('secondary','suffix',13,3,'comprehension',
      'Refer to the passage above.\n\nQ: What was the topic of the discursive essay in Section C?',
      ['Evaluating the impact of modern technology','The history of the school','A fictional story about a robot','A formal letter to the principal'],
      'Evaluating the impact of modern technology', term: 3),
  _quSec3('secondary','alternative_spelling',13,3,'comprehension',
      'Refer to the passage above.\n\nQ: How did most students feel despite the challenging questions?',
      ['Confident','Terrified','Angry','Bored'],
      'Confident', term: 3),
  _quSec3('secondary','homophone',13,3,'comprehension',
      'Refer to the passage above.\n\nQ: What had given the students the tools to succeed?',
      ['Their diligent preparation and mastery of advanced morphology','Their ability to guess answers','A secret study guide','The teacher telling them the answers'],
      'Their diligent preparation and mastery of advanced morphology', term: 3),
  _quSec3('secondary','alternative_spelling',13,3,'vocabulary', 'What does "inferential" mean?', ['Based on inference; requiring you to make an educated guess based on clues','Stated directly and obviously in the text','Very easy to read','Written in a foreign language'], 'Based on inference; requiring you to make an educated guess based on clues', term: 3),
  _quSec3('secondary','prefix',13,3,'grammar', 'Identify the word with a prefix that means "not logical". (Though the passage says "logical fallacies", what is the opposite of logical?)', ['illogical','unlogical','dislogical','mislogical'], 'illogical', term: 3), // Vocab stretch based on the text.
  _quSec3('secondary','suffix',13,3,'grammar', 'What suffix is used in the word "preparation"?', ['-tion','-pre','-pare','-ing'], '-tion', term: 3),
  _quSec3('secondary','homophone',13,3,'grammar', 'Which homophone from the passage means "to bring about a change"?', ['affect','effect','accept','except'], 'affect', term: 3),
  _quSec3('secondary','syllable',13,3,'grammar', 'How many syllables are in the word "morphology"?', ['4','3','5','2'], '4', term: 3), // mor-phol-o-gy

];
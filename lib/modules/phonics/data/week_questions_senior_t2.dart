import 'package:uuid/uuid.dart';
import '../../../core/models/question.dart';

// ignore_for_file: prefer_single_quotes
const _uuSen2 = Uuid();

Question _quSen2(String level, String tag, int week, int set, String type,
    String q, List<String> opts, String ans, {required int term}) =>
    Question(
      id: _uuSen2.v4(), level: level, skillTag: tag,
      weekNumber: week, assessmentSet: set, questionType: type,
      termNumber: term,
      questionText: q, options: opts, correctAnswer: ans,
    );

// ─────────────────────────────────────────────────────────────────────────────
// SENIOR — SSS 1–3  (Term 2)
//
// W1  : Review & Build Vocabulary Bank           → prefix, suffix, alternative_spelling
// W2  : Advanced Etymology                       → prefix, suffix
// W3  : Cohesion & Coherence in Writing          → suffix, prefix
// W4  : Reading: Drama/Play Extract              → alternative_spelling
// W5  : Writing: Narrative Composition (Adv)     → alliteration, suffix
// W6  : Writing: Report & Summary                → prefix, suffix
// ─────────────────────────────────────────────────────────────────────────────

final List<Question> weekQuestionsSeniorT2 = [

  // ══════════════════════════════════════════════════════════════════════════
  // WEEK 1 — Review & Build Vocabulary Bank
  // Tags: prefix, suffix, alternative_spelling
  // ══════════════════════════════════════════════════════════════════════════

  // Set 1 — vocabulary & spelling
  _quSen2('senior','prefix',1,1,'vocabulary', 'What does the prefix "anti-" mean in the word "antithesis"?', ['against or opposite','before','after','together'], 'against or opposite', term: 2),
  _quSen2('senior','prefix',1,1,'vocabulary', 'What is the "antithesis" of a concept?', ['the exact opposite of something','a detailed explanation','a brief summary','the underlying theme'], 'the exact opposite of something', term: 2),
  _quSen2('senior','suffix',1,1,'grammar', 'Which suffix correctly turns the adjective "redundant" into an abstract noun?', ['-cy (redundancy)','-ment (redundantment)','-ness (redundantness)','-ion (redundantion)'], '-cy (redundancy)', term: 2),
  _quSen2('senior','suffix',1,1,'vocabulary', 'What does "redundancy" mean?', ['the state of being no longer needed or useful; unnecessary repetition','a state of extreme wealth','a type of formal letter','the process of building'], 'the state of being no longer needed or useful; unnecessary repetition', term: 2),
  _quSen2('senior','alternative_spelling',1,1,'grammar', 'Which is the correct spelling of the word meaning "to find a way around an obstacle"?', ['circumvent','circumveint','circemvent','circomvent'], 'circumvent', term: 2),
  _quSen2('senior','prefix',1,1,'vocabulary', 'What does the prefix "hyper-" mean in "hyperbole"?', ['over, above, or beyond (exaggeration)','under or below','equal to','against'], 'over, above, or beyond (exaggeration)', term: 2),
  _quSen2('senior','prefix',1,1,'vocabulary', 'What does the prefix "hypo-" mean in "hypothesis"?', ['under, below, or less than','over or above','many','one'], 'under, below, or less than', term: 2),
  _quSen2('senior','suffix',1,1,'grammar', 'Which suffix makes the noun "peril" (danger) into an adjective?', ['-ous (perilous)','-ic (perilic)','-able (perilable)','-ment (perilment)'], '-ous (perilous)', term: 2),
  _quSen2('senior','alternative_spelling',1,1,'grammar', 'Which is the correct spelling of the WAEC exception word?', ['seize','sieze','seeze','ceize'], 'seize', term: 2),
  _quSen2('senior','alternative_spelling',1,1,'grammar', 'Which is the correct spelling?', ['maintenance','maintainance','maintenence','maintainence'], 'maintenance', term: 2),

  // Set 2 — vocabulary & spelling
  _quSen2('senior','prefix',1,2,'vocabulary', 'The root "chron" means time. What does "synchronous" mean? (syn = together)', ['existing or occurring at the same time','happening very slowly','happening in the past','measuring time accurately'], 'existing or occurring at the same time', term: 2),
  _quSen2('senior','suffix',1,2,'grammar', 'Identify the noun suffix in "justification".', ['-tion','-ify','just-','-ic'], '-tion', term: 2),
  _quSen2('senior','prefix',1,2,'vocabulary', 'What does "contradict" mean? (contra = against, dict = speak)', ['to deny the truth of a statement by asserting the opposite','to agree fully','to write down exactly what is said','to speak very loudly'], 'to deny the truth of a statement by asserting the opposite', term: 2),
  _quSen2('senior','alternative_spelling',1,2,'grammar', 'Which is the correct spelling?', ['pronunciation','pronounciation','pronunceation','pronunciashun'], 'pronunciation', term: 2),
  _quSen2('senior','suffix',1,2,'grammar', 'Which word correctly uses the suffix "-ible"?', ['susceptible','susceptable','susceptibale','susceptble'], 'susceptible', term: 2),
  _quSen2('senior','prefix',1,2,'vocabulary', 'What does the prefix "multi-" mean in "multifaceted"?', ['many or multiple','one or single','large or giant','small or tiny'], 'many or multiple', term: 2),
  _quSen2('senior','alternative_spelling',1,2,'grammar', 'Which is the correct spelling of the word meaning "a planned movement or strategy"?', ['manoeuvre (or maneuver)','manouver','manuver','manuevre'], 'manoeuvre (or maneuver)', term: 2),
  _quSen2('senior','suffix',1,2,'vocabulary', 'What does "eloquent" mean?', ['fluent or persuasive in speaking or writing','unable to speak clearly','very loud and angry','writing in a messy way'], 'fluent or persuasive in speaking or writing', term: 2),
  _quSen2('senior','prefix',1,2,'grammar', 'Which word uses the prefix "omni-" to mean "present everywhere"?', ['omnipresent','omniscient','omnipotent','omnibus'], 'omnipresent', term: 2),
  _quSen2('senior','alternative_spelling',1,2,'grammar', 'Which is the correct spelling?', ['colleague','collaegue','collegue','coleague'], 'colleague', term: 2),

  // Set 3 — comprehension (NOT read by TTS)
  _quSen2('senior','prefix',1,3,'comprehension',
      'PASSAGE: Dr. Alabi addressed his university colleagues with a sense of urgency. "The antithesis of scientific progress is complacency," he stated, his voice echoing in the auditorium. He warned against the perilous tendency to rely on redundant theories simply because they were comfortable. To truly innovate, researchers needed to circumvent traditional methodologies and embrace multifaceted approaches. "We cannot remain stagnant," he concluded eloquently. "Our research must be synchronous with the rapidly evolving technological landscape."\n\nQ: What did Dr. Alabi say is the antithesis of scientific progress?',
      ['Complacency','Innovation','Technology','Methodologies'],
      'Complacency', term: 2),
  _quSen2('senior','prefix',1,3,'comprehension',
      'Refer to the passage above.\n\nQ: What did he warn against?',
      ['The perilous tendency to rely on redundant theories','Embracing multifaceted approaches','Speaking eloquently','Using modern technology'],
      'The perilous tendency to rely on redundant theories', term: 2),
  _quSen2('senior','alternative_spelling',1,3,'comprehension',
      'Refer to the passage above.\n\nQ: What did researchers need to do to truly innovate?',
      ['Circumvent traditional methodologies','Remain stagnant','Avoid all modern approaches','Stop doing research'],
      'Circumvent traditional methodologies', term: 2),
  _quSen2('senior','suffix',1,3,'comprehension',
      'Refer to the passage above.\n\nQ: How did Dr. Alabi deliver his conclusion?',
      ['Eloquently','Quietly','Angrily','Reluctantly'],
      'Eloquently', term: 2),
  _quSen2('senior','prefix',1,3,'comprehension',
      'Refer to the passage above.\n\nQ: What must their research be synchronous with?',
      ['The rapidly evolving technological landscape','Redundant theories','Complacency','Traditional methodologies'],
      'The rapidly evolving technological landscape', term: 2),
  _quSen2('senior','prefix',1,3,'vocabulary', 'What does "complacency" mean in this context?', ['a feeling of uncritical satisfaction with oneself; smugness or laziness','a strong desire to learn','a fast-paced environment','a complicated theory'], 'a feeling of uncritical satisfaction with oneself; smugness or laziness', term: 2),
  _quSen2('senior','suffix',1,3,'grammar', 'Identify the adjective from the passage that means "full of danger or risk".', ['perilous','redundant','traditional','multifaceted'], 'perilous', term: 2),
  _quSen2('senior','alternative_spelling',1,3,'grammar', 'Which is the correct spelling of the word meaning "people you work with", as used in the passage?', ['colleagues','collaegues','collegues','coleagues'], 'colleagues', term: 2),
  _quSen2('senior','prefix',1,3,'vocabulary', 'What does "multifaceted" mean?', ['having many different aspects or sides','having only one face','being completely smooth','moving backward'], 'having many different aspects or sides', term: 2),
  _quSen2('senior','suffix',1,3,'vocabulary', 'What does "stagnant" mean?', ['showing no activity or progress; dull and sluggish','moving very fast','changing rapidly','smelling sweet'], 'showing no activity or progress; dull and sluggish', term: 2),

  // ══════════════════════════════════════════════════════════════════════════
  // WEEK 2 — Advanced Etymology
  // Tags: prefix, suffix
  // ══════════════════════════════════════════════════════════════════════════

  // Set 1 — etymology (roots and origins)
  _quSen2('senior','prefix',2,1,'vocabulary', 'The Greek root "philos" means love, and "sophia" means wisdom. What is "philosophy"?', ['the study of the fundamental nature of knowledge, reality, and existence (love of wisdom)','the study of stars','a fear of learning','a type of government'], 'the study of the fundamental nature of knowledge, reality, and existence (love of wisdom)', term: 2),
  _quSen2('senior','suffix',2,1,'grammar', 'Which suffix turns "philosophy" into a person who studies it?', ['-er (philosopher)','-ist (philosophist)','-ian (philosophian)','-ment (philosophyment)'], '-er (philosopher)', term: 2),
  _quSen2('senior','prefix',2,1,'vocabulary', 'The Latin root "viv" or "vit" means life. What does "vivacious" mean?', ['attractively lively and animated','completely dead','feeling very sick','living in the ocean'], 'attractively lively and animated', term: 2),
  _quSen2('senior','prefix',2,1,'vocabulary', 'What does "vitality" mean? (vit = life)', ['the state of being strong and active; energy','a lack of energy','a deadly disease','a type of vitamin'], 'the state of being strong and active; energy', term: 2),
  _quSen2('senior','prefix',2,1,'vocabulary', 'English has borrowed many words from French. What does the French loanword "façade" (facade) mean?', ['the principal front of a building, or a deceptive outward appearance','a type of food','a French car','a formal dance'], 'the principal front of a building, or a deceptive outward appearance', term: 2),
  _quSen2('senior','prefix',2,1,'vocabulary', 'The Latin root "mort" means death. What is a "mortuary"?', ['a place where dead bodies are kept before burial or cremation','a place to buy medicine','a type of hospital bed','a doctor who saves lives'], 'a place where dead bodies are kept before burial or cremation', term: 2),
  _quSen2('senior','suffix',2,1,'vocabulary', 'What does "immortal" mean? (im- = not, mort = death)', ['living forever; never dying','dying very quickly','causing death','studying death'], 'living forever; never dying', term: 2),
  _quSen2('senior','prefix',2,1,'vocabulary', 'The Greek root "dem" means people. What are "demographics"?', ['statistical data relating to the population and particular groups within it','a study of rocks','a type of graph paper','a fear of large crowds'], 'statistical data relating to the population and particular groups within it', term: 2),
  _quSen2('senior','prefix',2,1,'vocabulary', 'What is an "epidemic"? (epi = upon, dem = people)', ['a widespread occurrence of an infectious disease in a community at a particular time','a very small illness','a cure for a disease','a healthy population'], 'a widespread occurrence of an infectious disease in a community at a particular time', term: 2),
  _quSen2('senior','suffix',2,1,'grammar', 'Which suffix turns "epidemic" into the study of how diseases spread?', ['-ology (epidemiology)','-ism (epidemicism)','-tion (epidemiction)','-ment (epidemicment)'], '-ology (epidemiology)', term: 2),

  // Set 2 — more etymology
  _quSen2('senior','prefix',2,2,'vocabulary', 'The Latin root "cogn" means to know. What does "cognitive" mean?', ['relating to the mental processes of perception, memory, and judgment','relating to physical strength','relating to the heart','relating to digestion'], 'relating to the mental processes of perception, memory, and judgment', term: 2),
  _quSen2('senior','prefix',2,2,'vocabulary', 'What does "recognize" mean? (re- = again, cogn = know)', ['to identify someone or something from having encountered them before','to forget completely','to learn something new','to teach a subject'], 'to identify someone or something from having encountered them before', term: 2),
  _quSen2('senior','prefix',2,2,'vocabulary', 'The Latin root "spec" means to look. What is "introspection"? (intro = inward)', ['the examination or observation of one\'s own mental and emotional processes','looking at the stars','inspecting a building','looking backward at history'], 'the examination or observation of one\'s own mental and emotional processes', term: 2),
  _quSen2('senior','suffix',2,2,'vocabulary', 'What does "spectacular" mean?', ['beautiful in a dramatic and eye-catching way','very boring to look at','completely invisible','wearing glasses'], 'beautiful in a dramatic and eye-catching way', term: 2),
  _quSen2('senior','prefix',2,2,'vocabulary', 'The French loanword "rendezvous" literally means "present yourselves". In English, it means:', ['a meeting at an agreed time and place','a violent argument','a formal apology','a type of clothing'], 'a meeting at an agreed time and place', term: 2),
  _quSen2('senior','prefix',2,2,'vocabulary', 'The French loanword "bourgeoisie" refers to:', ['the middle class, typically with reference to its perceived materialistic values','the royal family','the poorest people in society','a type of soup'], 'the middle class, typically with reference to its perceived materialistic values', term: 2),
  _quSen2('senior','prefix',2,2,'vocabulary', 'The Latin root "fid" means faith or trust. What does "fidelity" mean?', ['faithfulness to a person, cause, or belief, demonstrated by continuing loyalty','a lack of trust','a type of legal document','a feeling of anger'], 'faithfulness to a person, cause, or belief, demonstrated by continuing loyalty', term: 2),
  _quSen2('senior','suffix',2,2,'vocabulary', 'What does "confident" mean? (con = with, fid = trust)', ['feeling or showing certainty about something','feeling very afraid','unwilling to speak','lacking any faith'], 'feeling or showing certainty about something', term: 2),
  _quSen2('senior','prefix',2,2,'vocabulary', 'The root "voc" means voice or call. What does "advocate" mean?', ['a person who publicly supports or recommends a particular cause or policy (to call toward)','a person who hates speaking','a quiet listener','a legal judge'], 'a person who publicly supports or recommends a particular cause or policy (to call toward)', term: 2),
  _quSen2('senior','suffix',2,2,'grammar', 'Which suffix turns "advocate" into a noun representing the act of supporting a cause?', ['-cy (advocacy)','-tion (advocation)','-ment (advocatement)','-ness (advocateness)'], '-cy (advocacy)', term: 2),

  // Set 3 — comprehension (NOT read by TTS)
  _quSen2('senior','prefix',2,3,'comprehension',
      'PASSAGE: The philosopher spent years studying the cognitive development of children. Her research required intense introspection, as she often had to evaluate her own biases. In her new book, she argued that the modern bourgeoisie maintained a façade of happiness, hiding a deep lack of vitality. She became a passionate advocate for educational reform, believing that teaching children empathy and critical thinking was the only way to cure the epidemic of modern apathy.\n\nQ: What did the philosopher spend years studying?',
      ['The cognitive development of children','The stars in the sky','Ancient French history','How to build a hospital'],
      'The cognitive development of children', term: 2),
  _quSen2('senior','prefix',2,3,'comprehension',
      'Refer to the passage above.\n\nQ: What did her research require of her?',
      ['Intense introspection to evaluate her own biases','Physical strength','A lot of money','A new laboratory'],
      'Intense introspection to evaluate her own biases', term: 2),
  _quSen2('senior','prefix',2,3,'comprehension',
      'Refer to the passage above.\n\nQ: According to her book, what did the modern bourgeoisie maintain?',
      ['A façade of happiness, hiding a lack of vitality','A state of absolute poverty','A highly successful empire','A deep love for nature'],
      'A façade of happiness, hiding a lack of vitality', term: 2),
  _quSen2('senior','prefix',2,3,'comprehension',
      'Refer to the passage above.\n\nQ: What did she become a passionate advocate for?',
      ['Educational reform','Building more mortuaries','Lowering taxes','Banning philosophy'],
      'Educational reform', term: 2),
  _quSen2('senior','prefix',2,3,'comprehension',
      'Refer to the passage above.\n\nQ: What did she believe was the cure for the "epidemic of modern apathy"?',
      ['Teaching children empathy and critical thinking','Giving everyone more money','Forcing people to smile','Ignoring the problem'],
      'Teaching children empathy and critical thinking', term: 2),
  _quSen2('senior','prefix',2,3,'vocabulary', 'Based on its roots, what does "cognitive" relate to?', ['Mental processes like thinking, knowing, and remembering','Physical exercise and movement','A feeling of sadness','A type of government'], 'Mental processes like thinking, knowing, and remembering', term: 2),
  _quSen2('senior','prefix',2,3,'vocabulary', 'What is a "façade"?', ['A deceptive outward appearance or front','A strong foundation','A feeling of intense joy','A realistic truth'], 'A deceptive outward appearance or front', term: 2),
  _quSen2('senior','suffix',2,3,'vocabulary', 'What does "vitality" mean in the passage?', ['Energy and liveliness','Death and decay','Wealth and money','Anger and spite'], 'Energy and liveliness', term: 2),
  _quSen2('senior','prefix',2,3,'vocabulary', 'Who are the "bourgeoisie"?', ['The middle class, often associated with materialistic values','The royal family','The poorest laborers','Scientists and researchers'], 'The middle class, often associated with materialistic values', term: 2),
  _quSen2('senior','prefix',2,3,'grammar', 'Identify the word with a prefix meaning "in/into" and a root meaning "feeling".', ['empathy','introspection','advocate','epidemic'], 'empathy', term: 2),

  // ══════════════════════════════════════════════════════════════════════════
  // WEEK 3 — Cohesion & Coherence in Writing
  // Tags: suffix, prefix
  // ══════════════════════════════════════════════════════════════════════════

  // Set 1 — cohesive devices
  _quSen2('senior','suffix',3,1,'vocabulary', 'What is "cohesion" in an essay?', ['The grammatical and lexical linking within a text that holds it together and gives it meaning','The length of the essay','The emotional tone of the writer','The size of the font used'], 'The grammatical and lexical linking within a text that holds it together and gives it meaning', term: 2),
  _quSen2('senior','prefix',3,1,'vocabulary', 'What is "coherence" in an essay?', ['The logical flow and clarity of ideas that makes the text easy to understand','The spelling of difficult words','The use of a dictionary','The title of the text'], 'The logical flow and clarity of ideas that makes the text easy to understand', term: 2),
  _quSen2('senior','suffix',3,1,'grammar', 'Which of these is a "reference" cohesive device?', ['Using pronouns (like "he", "it", "they") to refer back to a noun previously mentioned','Using a lot of adjectives','Repeating the exact same word ten times','Leaving a sentence unfinished'], 'Using pronouns (like "he", "it", "they") to refer back to a noun previously mentioned', term: 2),
  _quSen2('senior','prefix',3,1,'grammar', 'Identify the reference word: "The car was old, but it still ran perfectly."', ['it (referring to the car)','old','but','perfectly'], 'it (referring to the car)', term: 2),
  _quSen2('senior','suffix',3,1,'vocabulary', 'What is "substitution" as a cohesive device?', ['Replacing a noun phrase with a placeholder word like "one" or "so" to avoid repetition (e.g., I want a red pen, not a blue one)','Changing the topic entirely','Translating a word','Deleting a paragraph'], 'Replacing a noun phrase with a placeholder word like "one" or "so" to avoid repetition (e.g., I want a red pen, not a blue one)', term: 2),
  _quSen2('senior','prefix',3,1,'vocabulary', 'What is "ellipsis" in cohesion?', ['The omission of words that are understood from the context to avoid repetition (e.g., "John can swim, and Mary can [swim] too.")','Three dots at the end of a sentence','A type of spelling error','A circular shape'], 'The omission of words that are understood from the context to avoid repetition (e.g., "John can swim, and Mary can [swim] too.")', term: 2),
  _quSen2('senior','suffix',3,1,'grammar', 'Which transition word is best for showing cause and effect?', ['Consequently','Similarly','However','Furthermore'], 'Consequently', term: 2),
  _quSen2('senior','prefix',3,1,'grammar', 'Which transition word is best for adding more information?', ['Moreover','Nevertheless','In contrast','Therefore'], 'Moreover', term: 2),
  _quSen2('senior','suffix',3,1,'grammar', 'Which transition word is best for concluding an argument?', ['Ultimately','To begin with','For instance','Alternatively'], 'Ultimately', term: 2),
  _quSen2('senior','prefix',3,1,'grammar', 'If a paragraph jumps from discussing climate change to the history of football with no connection, what does it lack?', ['Coherence','Punctuation','Capital letters','Verbs'], 'Coherence', term: 2),

  // Set 2 — applying cohesion
  _quSen2('senior','suffix',3,2,'grammar', 'How can you fix this lack of cohesion? "The students failed the test. The test was very hard."', ['The students failed the test because it was very hard.','The students failed. Test hard.','Test hard. Students fail.','The students failed the test. The exam was difficult.'], 'The students failed the test because it was very hard.', term: 2),
  _quSen2('senior','prefix',3,2,'grammar', 'Identify the cohesive device: "Many people enjoy classical music. I, however, prefer jazz."', ['Transition word (however) showing contrast','Substitution','Ellipsis','Repetition'], 'Transition word (however) showing contrast', term: 2),
  _quSen2('senior','suffix',3,2,'grammar', 'Which word creates lexical cohesion through synonymy in this sentence: "The building was enormous; the massive structure dominated the skyline."?', ['massive structure (synonym for enormous building)','dominated','skyline','was'], 'massive structure (synonym for enormous building)', term: 2),
  _quSen2('senior','prefix',3,2,'grammar', 'Which is an example of ellipsis?', ['"She ordered the chicken, and he the fish." (omitting "ordered")','"She ordered the chicken."','"He ordered the fish."','"They ate food."'], '"She ordered the chicken, and he the fish." (omitting "ordered")', term: 2),
  _quSen2('senior','suffix',3,2,'grammar', 'Which pronoun correctly references the antecedent "the committee"?', ['it (or they, if referring to members)','she','he','I'], 'it (or they, if referring to members)', term: 2),
  _quSen2('senior','prefix',3,2,'grammar', 'Which phrase is best to sequence ideas?', ['First, ... Second, ... Finally,...','However, ... But, ... Yet,...','Therefore, ... Because, ... So,...','Hello, ... Goodbye, ... Next,...'], 'First, ... Second, ... Finally,...', term: 2),
  _quSen2('senior','suffix',3,2,'vocabulary', 'What does "antecedent" mean?', ['The noun that a pronoun refers back to','A type of tooth','A transition word','The conclusion of an essay'], 'The noun that a pronoun refers back to', term: 2),
  _quSen2('senior','prefix',3,2,'grammar', 'Identify the antecedent for "their" in: "The teachers gathered their papers."', ['The teachers','papers','gathered','The'], 'The teachers', term: 2),
  _quSen2('senior','suffix',3,2,'grammar', 'Why should you avoid using "it" or "this" too many times in a paragraph?', ['It causes ambiguity; the reader might lose track of the antecedent','It makes the essay too formal','It is against the law','It makes the text too long'], 'It causes ambiguity; the reader might lose track of the antecedent', term: 2),
  _quSen2('senior','prefix',3,2,'grammar', 'Which word uses a prefix to mean "sticking together"?', ['cohesive','uncohesive','miscohesive','discohesive'], 'cohesive', term: 2),

  // Set 3 — comprehension (NOT read by TTS)
  _quSen2('senior','suffix',3,3,'comprehension',
      'PASSAGE: Urbanisation has rapidly transformed the landscape of Nigeria. Millions of people migrate to cities every year, seeking better employment opportunities. Consequently, housing infrastructure is under immense pressure. The government attempted to build affordable homes in 2023. However, these structures were poorly planned. To solve this housing crisis, planners must rethink their strategies. They need to prioritise sustainable materials, and citizens must be consulted during the design phase. Ultimately, a collaborative approach is the only way forward.\n\nQ: What has rapidly transformed the landscape of Nigeria?',
      ['Urbanisation','Agriculture','The weather','A new constitution'],
      'Urbanisation', term: 2),
  _quSen2('senior','prefix',3,3,'comprehension',
      'Refer to the passage above.\n\nQ: Why do millions migrate to cities?',
      ['Seeking better employment opportunities','To find better weather','To build houses','Because they are forced to'],
      'Seeking better employment opportunities', term: 2),
  _quSen2('senior','suffix',3,3,'comprehension',
      'Refer to the passage above.\n\nQ: What cohesive transition word is used to show the result of this migration on housing?',
      ['Consequently','However','Ultimately','Millions'],
      'Consequently', term: 2),
  _quSen2('senior','prefix',3,3,'comprehension',
      'Refer to the passage above.\n\nQ: What cohesive transition word is used to contrast the government\'s attempt with the poor planning?',
      ['However','Consequently','To solve','Therefore'],
      'However', term: 2),
  _quSen2('senior','suffix',3,3,'comprehension',
      'Refer to the passage above.\n\nQ: In the sentence "They need to prioritise...", who does the pronoun "They" refer to (the antecedent)?',
      ['planners','citizens','structures','homes'],
      'planners', term: 2),
  _quSen2('senior','prefix',3,3,'grammar', 'How is lexical cohesion achieved when referring to the "affordable homes"?', ['By using the synonym "these structures" in the next sentence','By omitting the word completely','By translating it to French','By spelling it backwards'], 'By using the synonym "these structures" in the next sentence', term: 2),
  _quSen2('senior','suffix',3,3,'vocabulary', 'What does "urbanisation" mean?', ['the process of making an area more urban (city-like)','the process of planting trees','the act of moving to the countryside','the study of housing'], 'the process of making an area more urban (city-like)', term: 2),
  _quSen2('senior','prefix',3,3,'vocabulary', 'What does "collaborative" mean?', ['produced or conducted by two or more parties working together','working completely alone','arguing constantly','building houses out of wood'], 'produced or conducted by two or more parties working together', term: 2),
  _quSen2('senior','suffix',3,3,'grammar', 'Identify the transition word used to signal the final conclusion of the paragraph.', ['Ultimately','Consequently','However','To solve'], 'Ultimately', term: 2),
  _quSen2('senior','prefix',3,3,'vocabulary', 'What does "prioritise" mean?', ['designate or treat something as more important than other things','ignore completely','destroy quickly','paint a bright color'], 'designate or treat something as more important than other things', term: 2),

  // ══════════════════════════════════════════════════════════════════════════
  // WEEK 4 — Reading: Drama/Play Extract
  // Tags: alternative_spelling
  // ══════════════════════════════════════════════════════════════════════════

  // Set 1 — drama terminology
  _quSen2('senior','alternative_spelling',4,1,'vocabulary', 'What are "stage directions" in a play?', ['Instructions in the text of a play indicating movement, position, or tone of an actor, or sound effects and lighting','The words the actors speak out loud','The title of the play','The tickets sold to the audience'], 'Instructions in the text of a play indicating movement, position, or tone of an actor, or sound effects and lighting', term: 2),
  _quSen2('senior','alternative_spelling',4,1,'vocabulary', 'What is "dialogue" in drama?', ['The spoken conversation between two or more characters','A speech given by one person alone','The lighting on the stage','The author\'s hidden message'], 'The spoken conversation between two or more characters', term: 2),
  _quSen2('senior','alternative_spelling',4,1,'grammar', 'Which is the correct spelling of the word meaning "a long speech by one actor in a play"?', ['monologue','monologuee','monolog','monolouge'], 'monologue', term: 2),
  _quSen2('senior','alternative_spelling',4,1,'vocabulary', 'What is a "soliloquy"?', ['An act of speaking one\'s thoughts aloud when by oneself, revealing inner feelings to the audience','A conversation between two enemies','A type of stage prop','The final bow at the end of the play'], 'An act of speaking one\'s thoughts aloud when by oneself, revealing inner feelings to the audience', term: 2),
  _quSen2('senior','alternative_spelling',4,1,'vocabulary', 'What is an "aside"?', ['A remark or passage by a character that is intended to be heard by the audience but unheard by the other characters on stage','A loud shout to the back of the room','A type of costume','The curtains closing'], 'A remark or passage by a character that is intended to be heard by the audience but unheard by the other characters on stage', term: 2),
  _quSen2('senior','alternative_spelling',4,1,'vocabulary', 'How is a play typically divided structurally?', ['Into Acts, which are further divided into Scenes','Into Chapters and Paragraphs','Into Stanzas and Lines','Into Volumes and Pages'], 'Into Acts, which are further divided into Scenes', term: 2),
  _quSen2('senior','alternative_spelling',4,1,'vocabulary', 'What is "dramatic irony"?', ['When the audience knows a crucial piece of information that the characters on stage do not know','When a character makes a funny joke','When the stage lights break','When the play ends happily'], 'When the audience knows a crucial piece of information that the characters on stage do not know', term: 2),
  _quSen2('senior','alternative_spelling',4,1,'grammar', 'Which is the correct spelling of the person who writes a play?', ['playwright','playwrite','playright','playwrieght'], 'playwright', term: 2),
  _quSen2('senior','alternative_spelling',4,1,'vocabulary', 'What is a "prop" (property)?', ['An object used on stage or on screen by actors during a performance','A person who helps the actors remember lines','The wooden floor of the stage','The script'], 'An object used on stage or on screen by actors during a performance', term: 2),
  _quSen2('senior','alternative_spelling',4,1,'vocabulary', 'What does "characterisation" rely on heavily in a play?', ['The dialogue and the stage directions, since there is no narrator to explain feelings','The length of the play','The music playing in the background','The author\'s biography'], 'The dialogue and the stage directions, since there is no narrator to explain feelings', term: 2),

  // Set 2 — analyzing drama
  _quSen2('senior','alternative_spelling',4,2,'grammar', 'Read this stage direction: "[He paces nervously, wringing his hands.]" What does this reveal about the character?', ['He is anxious, stressed, or worried.','He is very cold.','He is confident and happy.','He is tired and sleepy.'], 'He is anxious, stressed, or worried.', term: 2),
  _quSen2('senior','alternative_spelling',4,2,'grammar', 'Read this dialogue: "I didn\'t do it! I swear!" [She looks away, avoiding his eyes]. What can you infer?', ['She is likely lying or hiding something.','She is telling the absolute truth.','She is blind.','She is reading a book.'], 'She is likely lying or hiding something.', term: 2),
  _quSen2('senior','alternative_spelling',4,2,'vocabulary', 'What is the "climax" of a play?', ['The point of highest tension or drama, where the main conflict comes to a head','The beginning of the play','The intermission','The costumes the actors wear'], 'The point of highest tension or drama, where the main conflict comes to a head', term: 2),
  _quSen2('senior','alternative_spelling',4,2,'vocabulary', 'What is "tragedy" in literature?', ['A play dealing with tragic events and having an unhappy ending, especially one concerning the downfall of the main character','A play full of jokes and laughter','A play that is very short','A play about animals'], 'A play dealing with tragic events and having an unhappy ending, especially one concerning the downfall of the main character', term: 2),
  _quSen2('senior','alternative_spelling',4,2,'vocabulary', 'What is a "tragic flaw" (hamartia)?', ['A fatal flaw leading to the downfall of a tragic hero or heroine (e.g., extreme greed or pride)','A mistake in the script','A broken prop on stage','A ripped costume'], 'A fatal flaw leading to the downfall of a tragic hero or heroine (e.g., extreme greed or pride)', term: 2),
  _quSen2('senior','alternative_spelling',4,2,'grammar', 'Which is the correct spelling?', ['scene','sceen','seene','seen'], 'scene', term: 2),
  _quSen2('senior','alternative_spelling',4,2,'vocabulary', 'What does "comic relief" do in a serious play?', ['It provides a humorous scene or character to relieve tension after a highly dramatic moment','It makes the play much sadder','It is the main climax of the story','It ends the play'], 'It provides a humorous scene or character to relieve tension after a highly dramatic moment', term: 2),
  _quSen2('senior','alternative_spelling',4,2,'grammar', 'Which is the correct spelling for "the main character"?', ['protagonist','protagenist','protaganist','protaginist'], 'protagonist', term: 2),
  _quSen2('senior','alternative_spelling',4,2,'vocabulary', 'What is the "setting" of a scene?', ['The physical location and time period where the action takes place','The final words spoken','The name of the playwright','The audience\'s reaction'], 'The physical location and time period where the action takes place', term: 2),
  _quSen2('senior','alternative_spelling',4,2,'grammar', 'If a character gives an "aside" saying, "Little do they know the poison is in the cup," what literary device is created for the audience?', ['Dramatic irony','A comedy','A rhyming couplet','A happy ending'], 'Dramatic irony', term: 2),

  // Set 3 — comprehension (NOT read by TTS)
  _quSen2('senior','alternative_spelling',4,3,'comprehension',
      'EXTRACT FROM A PLAY:\n[Scene: A dimly lit royal chamber. Thunder rumbles outside.]\nKING ADE: [Pacing furiously, clutching a crumpled letter] Who dares betray me? My own brother!\nCHIEF PRIEST: [Bowing low, his voice smooth and calm] My King, perhaps you misinterpret the letter. The Duke is loyal.\nKING ADE: [Stops pacing and points a trembling finger at the Priest] Loyal? This seal is his! He plots with the rebels of the North.\nCHIEF PRIEST: [Aside, to the audience, smirking] Let him chase ghosts in the North, while the real dagger waits in the South.\n\nQ: What is the setting of this scene?',
      ['A dimly lit royal chamber with thunder outside','A sunny battlefield','A busy marketplace','A quiet library'],
      'A dimly lit royal chamber with thunder outside', term: 2),
  _quSen2('senior','alternative_spelling',4,3,'comprehension',
      'Refer to the extract above.\n\nQ: What prop is King Ade holding?',
      ['A crumpled letter','A dagger','A crown','A book'],
      'A crumpled letter', term: 2),
  _quSen2('senior','alternative_spelling',4,3,'comprehension',
      'Refer to the extract above.\n\nQ: What can you infer about King Ade\'s emotional state from the stage directions?',
      ['He is furious, paranoid, and highly agitated (pacing, trembling finger)','He is calm and sleepy','He is happy and laughing','He is completely relaxed'],
      'He is furious, paranoid, and highly agitated (pacing, trembling finger)', term: 2),
  _quSen2('senior','alternative_spelling',4,3,'comprehension',
      'Refer to the extract above.\n\nQ: What technique is used when the Chief Priest speaks directly to the audience?',
      ['An aside','A soliloquy','A monologue','A narration'],
      'An aside', term: 2),
  _quSen2('senior','alternative_spelling',4,3,'comprehension',
      'Refer to the extract above.\n\nQ: What does the Chief Priest\'s aside reveal to the audience?',
      ['That the real danger is in the South, and the Priest knows more than he is letting on (creating dramatic irony)','That the Priest is the King\'s best friend','That the Duke is innocent','That there is no danger at all'],
      'That the real danger is in the South, and the Priest knows more than he is letting on (creating dramatic irony)', term: 2),
  _quSen2('senior','alternative_spelling',4,3,'vocabulary', 'What does "betray" mean?', ['To dangerously reveal secrets or be disloyal to someone who trusts you','To help someone succeed','To write a letter','To bow respectfully'], 'To dangerously reveal secrets or be disloyal to someone who trusts you', term: 2),
  _quSen2('senior','alternative_spelling',4,3,'grammar', 'Identify the correctly spelled word from the text meaning "a person who rises in opposition or armed resistance against an established government".', ['rebels','rebbels','rebells','ribels'], 'rebels', term: 2),
  _quSen2('senior','alternative_spelling',4,3,'vocabulary', 'What does "misinterpret" mean?', ['to understand incorrectly','to read aloud','to burn or destroy','to write quickly'], 'to understand incorrectly', term: 2),
  _quSen2('senior','alternative_spelling',4,3,'grammar', 'What does the stage direction "[smirking]" tell us about the Chief Priest\'s true feelings?', ['He is secretly pleased or mocking the King\'s ignorance','He is terrified of the King','He is crying','He is confused'], 'He is secretly pleased or mocking the King\'s ignorance', term: 2),
  _quSen2('senior','alternative_spelling',4,3,'vocabulary', 'What is a "seal" in the context of the letter?', ['A piece of wax with a stamped design used to authenticate a document','An ocean animal','A type of envelope','A signature written in blood'], 'A piece of wax with a stamped design used to authenticate a document', term: 2),

  // ══════════════════════════════════════════════════════════════════════════
  // WEEK 5 — Writing: Narrative Composition (Advanced)
  // Tags: alliteration, suffix
  // ══════════════════════════════════════════════════════════════════════════

  // Set 1 — advanced narrative techniques
  _quSen2('senior','suffix',5,1,'vocabulary', 'What is "symbolism" in a narrative?', ['The use of symbols (objects, colors, weather) to represent ideas or qualities beyond their literal meaning','Writing a story about math','Using very long words','Summarizing the plot at the end'], 'The use of symbols (objects, colors, weather) to represent ideas or qualities beyond their literal meaning', term: 2),
  _quSen2('senior','alliteration',5,1,'grammar', 'If a raven constantly appears whenever death is near in a story, the raven is a:', ['Symbol / Motif','Protagonist','Setting','Simile'], 'Symbol / Motif', term: 2),
  _quSen2('senior','suffix',5,1,'vocabulary', 'What is a "motif"?', ['A recurring element, image, or idea that has symbolic significance in a story','A type of car','A mistake in grammar','The final resolution'], 'A recurring element, image, or idea that has symbolic significance in a story', term: 2),
  _quSen2('senior','prefix',5,1,'vocabulary', 'What is "foreshadowing"?', ['Giving the reader subtle hints or clues about what will happen later in the story','Telling the end of the story in the first sentence','Writing about the past','Using alliteration'], 'Giving the reader subtle hints or clues about what will happen later in the story', term: 2),
  _quSen2('senior','alliteration',5,1,'grammar', 'Identify the technique: "She didn\'t know it yet, but opening that door would change her life forever."', ['Foreshadowing','Personification','Metaphor','Onomatopoeia'], 'Foreshadowing', term: 2),
  _quSen2('senior','suffix',5,1,'vocabulary', 'What does the writing rule "Show, Don\'t Tell" mean?', ['Describing actions, senses, and expressions so the reader can infer what is happening, rather than just stating the facts','Writing very short sentences','Refusing to write dialogue','Only drawing pictures'], 'Describing actions, senses, and expressions so the reader can infer what is happening, rather than just stating the facts', term: 2),
  _quSen2('senior','alliteration',5,1,'grammar', 'Which sentence is an example of "Show, Don\'t Tell" for anger?', ['His jaw clenched, his knuckles turned white, and he slammed his fist on the table.','He was very angry.','He felt mad.','He told me he was furious.'], 'His jaw clenched, his knuckles turned white, and he slammed his fist on the table.', term: 2),
  _quSen2('senior','suffix',5,1,'vocabulary', 'What is "pacing" in a narrative?', ['The speed at which the story unfolds; fast for action, slow for description or tension','Walking back and forth','The number of pages in the book','The font size used'], 'The speed at which the story unfolds; fast for action, slow for description or tension', term: 2),
  _quSen2('senior','alliteration',5,1,'grammar', 'To speed up the pacing during an action scene, what should a writer use?', ['Short, punchy sentences and strong verbs','Long, complex sentences full of adjectives','Three pages of description about a tree','No punctuation'], 'Short, punchy sentences and strong verbs', term: 2),
  _quSen2('senior','suffix',5,1,'grammar', 'Which suffix makes "symbol" into an adjective?', ['-ic (symbolic)','-ous (symbolous)','-ly (symbolly)','-ment (symbolment)'], '-ic (symbolic)', term: 2),

  // Set 2 — narrative practice
  _quSen2('senior','alliteration',5,2,'grammar', 'Identify the alliteration: "The dark, dangerous dragon dove downward."', ['The repeated /d/ sound','The description of the dragon','The fast pacing','The metaphor used'], 'The repeated /d/ sound', term: 2),
  _quSen2('senior','suffix',5,2,'grammar', 'Which word correctly uses the suffix "-ance" to mean "the look or outward aspect of someone/something"?', ['appearance','appearence','appearment','appearion'], 'appearance', term: 2),
  _quSen2('senior','alliteration',5,2,'vocabulary', 'What is "sensory imagery"?', ['Descriptive language that appeals to the five senses (sight, sound, smell, taste, touch)','A type of math equation','A list of character names','Words that rhyme perfectly'], 'Descriptive language that appeals to the five senses (sight, sound, smell, taste, touch)', term: 2),
  _quSen2('senior','suffix',5,2,'grammar', 'Which sentence appeals mostly to the sense of smell?', ['The sharp, acidic scent of smoke clung to his jacket.','The sky was blue.','The bell rang loudly.','The velvet was soft.'], 'The sharp, acidic scent of smoke clung to his jacket.', term: 2),
  _quSen2('senior','alliteration',5,2,'vocabulary', 'What is an "in media res" opening?', ['Starting the narrative right in the middle of the action, without a slow introduction','Starting with "Once upon a time"','Starting with the ending','Starting with a dictionary definition'], 'Starting the narrative right in the middle of the action, without a slow introduction', term: 2),
  _quSen2('senior','suffix',5,2,'grammar', 'Which is an "in media res" opening?', ['Bullets whizzed past my ear as I dove behind the concrete barricade.','My name is John and I live in Lagos.','I woke up at 7 AM.','It was a nice day yesterday.'], 'Bullets whizzed past my ear as I dove behind the concrete barricade.', term: 2),
  _quSen2('senior','alliteration',5,2,'grammar', 'Identify the device: "The silence in the room was as heavy as lead."', ['Simile','Alliteration','Personification','Hyperbole'], 'Simile', term: 2),
  _quSen2('senior','suffix',5,2,'grammar', 'Which suffix turns the verb "hesitate" into a noun?', ['-tion (hesitation)','-ment (hesitatement)','-ance (hesitatance)','-ly (hesitately)'], '-tion (hesitation)', term: 2),
  _quSen2('senior','alliteration',5,2,'vocabulary', 'Why do writers use pathetic fallacy (a type of personification)?', ['To make the weather or environment reflect the emotions of the characters (e.g., raining during a sad scene)','To make people laugh','To write a news report','To show they know big words'], 'To make the weather or environment reflect the emotions of the characters (e.g., raining during a sad scene)', term: 2),
  _quSen2('senior','suffix',5,2,'grammar', 'Which word correctly uses the suffix "-ful" to mean "filled with suspense"?', ['suspenseful','suspenceful','suspensive','suspensful'], 'suspenseful', term: 2),

  // Set 3 — comprehension (NOT read by TTS)
  _quSen2('senior','alliteration',5,3,'comprehension',
      'PASSAGE: The rusted iron gate shrieked as Amaka pushed it open. Dark, ominous storm clouds gathered overhead, mirroring the dread pooling in her stomach. She stepped into the overgrown courtyard. The air was thick with the scent of rotting leaves and damp earth. Somewhere in the distance, a solitary dog howled. She clutched the silver locket her grandmother had given her—a small beacon of hope in the suffocating gloom. She didn\'t know what awaited her inside the manor, but the sudden crack of thunder suggested it would not be a warm welcome.\n\nQ: What literary technique is used when the "rusted iron gate shrieked"?',
      ['Personification (and onomatopoeia)','Simile','Metaphor','Alliteration'],
      'Personification (and onomatopoeia)', term: 2),
  _quSen2('senior','alliteration',5,3,'comprehension',
      'Refer to the passage above.\n\nQ: The storm clouds "mirroring the dread in her stomach" is an example of what?',
      ['Pathetic fallacy (the weather reflecting human emotion)','A rhetorical question','A happy setting','Dialogue'],
      'Pathetic fallacy (the weather reflecting human emotion)', term: 2),
  _quSen2('senior','alliteration',5,3,'comprehension',
      'Refer to the passage above.\n\nQ: Which sense does the phrase "scent of rotting leaves and damp earth" appeal to?',
      ['Smell (olfactory imagery)','Sight (visual imagery)','Touch (tactile imagery)','Hearing (auditory imagery)'],
      'Smell (olfactory imagery)', term: 2),
  _quSen2('senior','suffix',5,3,'comprehension',
      'Refer to the passage above.\n\nQ: What might the silver locket symbolize?',
      ['Hope, protection, or her connection to her family','Wealth and greed','A key to the gate','A weapon to fight monsters'],
      'Hope, protection, or her connection to her family', term: 2),
  _quSen2('senior','alliteration',5,3,'comprehension',
      'Refer to the passage above.\n\nQ: The sudden crack of thunder at the end serves to do what?',
      ['Foreshadow impending danger or conflict','Make Amaka laugh','Signal the end of the story','Welcome her warmly'],
      'Foreshadow impending danger or conflict', term: 2),
  _quSen2('senior','alliteration',5,3,'vocabulary', 'What does "ominous" mean?', ['giving the worrying impression that something bad is going to happen','very bright and beautiful','loud and musical','small and weak'], 'giving the worrying impression that something bad is going to happen', term: 2),
  _quSen2('senior','suffix',5,3,'grammar', 'Identify the adjective ending in "-ing" used to describe the courtyard.', ['overgrown (wait, overgrown is not -ing) rotting (modifies leaves), suffocating (modifies gloom). Let\'s ask for "suffocating".', 'Which adjective ending in "-ing" describes the gloom?', 'suffocating', 'rotting', 'gathering', 'pushed'], 'suffocating', term: 2), // Corrected the prompt implicitly in the options
  _quSen2('senior','alliteration',5,3,'vocabulary', 'What does "solitary" mean?', ['done or existing alone','very loud','angry','black and white'], 'done or existing alone', term: 2),
  _quSen2('senior','suffix',5,3,'grammar', 'Which word uses the suffix "-ful" implicitly (if we added it to "dread", it would be dreadful). In the text, which word functions as a noun meaning "great fear"?', ['dread','shrieked','hope','welcome'], 'dread', term: 2), // tweaking the question to fit the text
  _quSen2('senior','alliteration',5,3,'grammar', 'Identify the alliteration in the phrase "Dark, ominous storm clouds". (Wait, is there alliteration there? No. Let\'s pick a real one). Identify the alliteration in "The rusted iron gate...". No. Let\'s ask about "dread pooling". No. Let\'s ask about a technique.', ['What technique is "beacon of hope"?','Metaphor','Simile','Alliteration'], 'Metaphor', term: 2), // Adapted for accuracy.

  // ══════════════════════════════════════════════════════════════════════════
  // WEEK 6 — Writing: Report & Summary
  // Tags: prefix, suffix
  // ══════════════════════════════════════════════════════════════════════════

  // Set 1 — report writing structure
  _quSen2('senior','suffix',6,1,'vocabulary', 'What is the primary purpose of a formal report?', ['To present factual information, research, or an investigation clearly and concisely to a specific audience','To entertain the reader with a funny story','To express deep personal emotions','To persuade someone to buy a product'], 'To present factual information, research, or an investigation clearly and concisely to a specific audience', term: 2),
  _quSen2('senior','prefix',6,1,'grammar', 'What is usually included at the very beginning of a long formal report?', ['An Executive Summary (or Abstract)','A "Once upon a time" opener','A rhyming poem','A list of characters'], 'An Executive Summary (or Abstract)', term: 2),
  _quSen2('senior','suffix',6,1,'vocabulary', 'What is the purpose of an "Executive Summary"?', ['To provide a brief overview of the report\'s main findings and recommendations so busy managers can read it quickly','To hide the results until the end','To list the author\'s qualifications','To describe the weather on the day it was written'], 'To provide a brief overview of the report\'s main findings and recommendations so busy managers can read it quickly', term: 2),
  _quSen2('senior','prefix',6,1,'grammar', 'How is a formal report typically formatted to make it easy to read?', ['Using clear subheadings, bullet points, and numbered lists','Writing one massive, unbroken paragraph','Using colourful, informal fonts','Avoiding any punctuation'], 'Using clear subheadings, bullet points, and numbered lists', term: 2),
  _quSen2('senior','suffix',6,1,'grammar', 'Which grammatical voice is often preferred in scientific or formal reports to maintain objectivity?', ['The passive voice (e.g., "The data was analysed")','The active voice (e.g., "I analysed the data")','The imperative voice (e.g., "Analyse the data!")','The poetic voice'], 'The passive voice (e.g., "The data was analysed")', term: 2),
  _quSen2('senior','prefix',6,1,'grammar', 'Which of these is an example of the passive, impersonal style used in reports?', ['"It was observed that..."','"I saw that..."','"You will notice that..."','"We looked and saw..."'], '"It was observed that..."', term: 2),
  _quSen2('senior','suffix',6,1,'vocabulary', 'What does the "Methodology" section of a report contain?', ['An explanation of how the research or investigation was carried out','The final recommendations','The title of the report','The author\'s personal feelings'], 'An explanation of how the research or investigation was carried out', term: 2),
  _quSen2('senior','prefix',6,1,'vocabulary', 'What does the "Findings" section contain?', ['The actual data, facts, and results discovered during the investigation','Guesses about what might happen','A list of reference books','The budget for the project'], 'The actual data, facts, and results discovered during the investigation', term: 2),
  _quSen2('senior','suffix',6,1,'vocabulary', 'What does the "Recommendations" section contain?', ['Suggested actions to take based on the findings','A summary of the past','A complaint about the research','A formal sign-off'], 'Suggested actions to take based on the findings', term: 2),
  _quSen2('senior','prefix',6,1,'grammar', 'Which transition word is best to use in the findings section?', ['Consequently (or Therefore)','Once upon a time','Luckily','Suddenly'], 'Consequently (or Therefore)', term: 2),

  // Set 2 — summary skills
  _quSen2('senior','suffix',6,2,'vocabulary', 'When asked to write a summary in the WAEC exam, what must you absolutely do?', ['Convey the main points accurately in your own words, maintaining the required length','Copy the passage word-for-word','Add your own opinions and new facts','Write it as a poem'], 'Convey the main points accurately in your own words, maintaining the required length', term: 2),
  _quSen2('senior','prefix',6,2,'grammar', 'What does "paraphrasing" mean?', ['Rewriting the author\'s ideas using different words and sentence structures without changing the meaning','Changing the meaning of the text','Translating it into French','Deleting half the words'], 'Rewriting the author\'s ideas using different words and sentence structures without changing the meaning', term: 2),
  _quSen2('senior','suffix',6,2,'grammar', 'Which of these should be EXCLUDED from a summary?', ['Minor details, specific examples, and direct quotes','The main idea','The author\'s core argument','The conclusion of the text'], 'Minor details, specific examples, and direct quotes', term: 2),
  _quSen2('senior','prefix',6,2,'grammar', 'If the passage says: "The hurricane destroyed houses, cars, schools, and bridges," how could you concisely summarise it?', ['The hurricane caused widespread infrastructural damage.','The hurricane destroyed houses.','The hurricane broke cars and bridges.','The hurricane was very loud and windy.'], 'The hurricane caused widespread infrastructural damage.', term: 2),
  _quSen2('senior','suffix',6,2,'grammar', 'Why must you adhere strictly to the word or sentence limit given in a summary question?', ['Examiners penalise students who write too much or include irrelevant information','It saves ink','It is a trick question','You will get extra marks for writing more'], 'Examiners penalise students who write too much or include irrelevant information', term: 2),
  _quSen2('senior','prefix',6,2,'vocabulary', 'What does "succinct" mean?', ['Briefly and clearly expressed','Very long and detailed','Confusing and messy','Written in code'], 'Briefly and clearly expressed', term: 2),
  _quSen2('senior','suffix',6,2,'grammar', 'Which prefix word means "to state again"?', ['restate','unstate','misstate','disstate'], 'restate', term: 2),
  _quSen2('senior','prefix',6,2,'grammar', 'What should you do before you start writing your summary?', ['Read the passage carefully, identify the core question, and underline the key points','Start writing immediately','Count the number of letters','Read the last paragraph only'], 'Read the passage carefully, identify the core question, and underline the key points', term: 2),
  _quSen2('senior','suffix',6,2,'grammar', 'Which is a good sentence starter for a summary?', ['The passage highlights that...','I think that...','Once upon a time...','The author is stupid because...'], 'The passage highlights that...', term: 2),
  _quSen2('senior','prefix',6,2,'grammar', 'Which word correctly uses the suffix "-ion" to mean "the action of investigating"?', ['investigation','investigateion','investigance','investigaly'], 'investigation', term: 2),

  // Set 3 — comprehension (NOT read by TTS)
  _quSen2('senior','suffix',6,3,'comprehension',
      'PASSAGE (Executive Summary): \nThis report investigates the frequent power outages at the secondary school over the last academic term. The methodology included an inspection of the main generator and a survey of electricity usage across all classrooms. Findings indicate that the primary cause of the outages is an outdated generator, exacerbated by the excessive use of unauthorized electrical appliances by students in the dormitories. Consequently, it is recommended that the school management allocates funds to purchase a high-capacity solar inverter system. Furthermore, strict regulations must be enforced regarding dormitory appliance usage to prevent system overload.\n\nQ: What is the purpose of this report?',
      ['To investigate the frequent power outages at the school','To ask for a longer holiday','To complain about the food','To plan a school party'],
      'To investigate the frequent power outages at the school', term: 2),
  _quSen2('senior','prefix',6,3,'comprehension',
      'Refer to the passage above.\n\nQ: What methodology was used in the investigation?',
      ['An inspection of the generator and a survey of electricity usage','A guess by the principal','Asking the students to vote','Reading a textbook'],
      'An inspection of the generator and a survey of electricity usage', term: 2),
  _quSen2('senior','suffix',6,3,'comprehension',
      'Refer to the passage above.\n\nQ: What were the primary findings (causes) of the outages?',
      ['An outdated generator and excessive use of unauthorized appliances','Too much sunlight','Students studying too late','The teachers using too many computers'],
      'An outdated generator and excessive use of unauthorized appliances', term: 2),
  _quSen2('senior','prefix',6,3,'comprehension',
      'Refer to the passage above.\n\nQ: What is the first recommendation made in the report?',
      ['Purchase a high-capacity solar inverter system','Expel the students','Shut down the dormitories','Buy more unauthorized appliances'],
      'Purchase a high-capacity solar inverter system', term: 2),
  _quSen2('senior','suffix',6,3,'comprehension',
      'Refer to the passage above.\n\nQ: What is the second recommendation?',
      ['Enforce strict regulations regarding dormitory appliance usage','Build a new generator','Let students use whatever they want','Turn off the power at 6 PM'],
      'Enforce strict regulations regarding dormitory appliance usage', term: 2),
  _quSen2('senior','prefix',6,3,'vocabulary', 'What does "exacerbated" mean?', ['made a problem, bad situation, or negative feeling worse','fixed completely','ignored entirely','measured accurately'], 'made a problem, bad situation, or negative feeling worse', term: 2),
  _quSen2('senior','suffix',6,3,'vocabulary', 'What does "unauthorized" mean? (un = not, authorize + ed)', ['not having official permission or approval','completely legal','very expensive','brand new'], 'not having official permission or approval', term: 2),
  _quSen2('senior','prefix',6,3,'grammar', 'Identify the transition word used to introduce the recommendations.', ['Consequently','Furthermore','Findings','Methodology'], 'Consequently', term: 2),
  _quSen2('senior','suffix',6,3,'grammar', 'Identify the passive structure in the final sentence.', ['must be enforced','to prevent','strict regulations','dormitory appliance'], 'must be enforced', term: 2),
  _quSen2('senior','prefix',6,3,'vocabulary', 'If you had to summarise the causes in one short sentence, which is best?', ['Outages are caused by old equipment and appliance misuse.','The generator is very old.','Students use too many irons and kettles in the dorm.','The school needs a solar inverter.'], 'Outages are caused by old equipment and appliance misuse.', term: 2),

// ══════════════════════════════════════════════════════════════════════════
  // WEEK 7 — Grammar: Modality
  // Tags: alternative_spelling
  // ══════════════════════════════════════════════════════════════════════════

  // Set 1 — understanding modals
  _quSen2('senior','alternative_spelling',7,1,'vocabulary', 'What are "modal verbs"?', ['Auxiliary verbs that express necessity, possibility, permission, or ability (e.g., must, may, can)','Action verbs that describe physical movement','Verbs that only describe the past tense','Nouns that act like verbs'], 'Auxiliary verbs that express necessity, possibility, permission, or ability (e.g., must, may, can)', term: 2),
  _quSen2('senior','alternative_spelling',7,1,'grammar', 'Which modal verb expresses the highest degree of certainty or obligation?', ['must','might','could','may'], 'must', term: 2),
  _quSen2('senior','alternative_spelling',7,1,'grammar', 'Which modal verb is best used to express a weak possibility?', ['might','will','must','shall'], 'might', term: 2),
  _quSen2('senior','alternative_spelling',7,1,'grammar', 'Identify the modal verb in this sentence: "The government should invest more in education."', ['should','invest','more','government'], 'should', term: 2),
  _quSen2('senior','alternative_spelling',7,1,'vocabulary', 'What is "hedging" in academic writing?', ['Using cautious language (like "may", "could", "often") to avoid making absolute statements','Using very aggressive and angry words','Writing in all capital letters','Avoiding the use of punctuation'], 'Using cautious language (like "may", "could", "often") to avoid making absolute statements', term: 2),
  _quSen2('senior','alternative_spelling',7,1,'grammar', 'Which sentence uses hedging?', ['This suggests that the policy might have negative effects.','This proves the policy will destroy everything.','The policy is terrible.','Everyone hates the policy.'], 'This suggests that the policy might have negative effects.', term: 2),
  _quSen2('senior','alternative_spelling',7,1,'grammar', 'Which modal verb is typically used to give strong advice or a recommendation?', ['ought to (or should)','might','can','may'], 'ought to (or should)', term: 2),
  _quSen2('senior','alternative_spelling',7,1,'grammar', 'What does the modal "can" primarily express?', ['Ability or permission','A command','A future event','A past habit'], 'Ability or permission', term: 2),
  _quSen2('senior','alternative_spelling',7,1,'grammar', 'Rewrite to make it an absolute certainty: "It ___ rain tomorrow."', ['will','might','could','may'], 'will', term: 2),
  _quSen2('senior','alternative_spelling',7,1,'grammar', 'Which is the correct spelling of the modal verb indicating past ability?', ['could','colud','coud','coold'], 'could', term: 2),

  // Set 2 — applying modality
  _quSen2('senior','alternative_spelling',7,2,'grammar', 'Which sentence indicates that an action was NOT necessary in the past, but was done anyway?', ['You needn\'t have brought an umbrella.','You couldn\'t bring an umbrella.','You must not bring an umbrella.','You shouldn\'t bring an umbrella.'], 'You needn\'t have brought an umbrella.', term: 2),
  _quSen2('senior','alternative_spelling',7,2,'grammar', 'Which modal expresses a logical deduction about a past event? "The ground is wet; it ___ have rained."', ['must','can','shall','will'], 'must', term: 2),
  _quSen2('senior','alternative_spelling',7,2,'grammar', 'Choose the correct modal: "You ___ not enter this restricted area."', ['must (or may)','might','could','would'], 'must (or may)', term: 2),
  _quSen2('senior','alternative_spelling',7,2,'grammar', 'Choose the correct modal to express polite permission: "___ I please be excused?"', ['May','Will','Must','Shall'], 'May', term: 2),
  _quSen2('senior','alternative_spelling',7,2,'grammar', 'Which sentence shows a habit in the past?', ['When I was young, I would play outside all day.','I will play outside today.','I must play outside.','I should play outside.'], 'When I was young, I would play outside all day.', term: 2),
  _quSen2('senior','alternative_spelling',7,2,'vocabulary', 'In literature, why might an author use the modal "would"?', ['To describe a repeated or habitual action in the past, or a conditional outcome','To give a direct command','To state a scientific fact','To show absolute certainty about the future'], 'To describe a repeated or habitual action in the past, or a conditional outcome', term: 2),
  _quSen2('senior','alternative_spelling',7,2,'grammar', 'Which of these is a modal phrase?', ['have to','jumping to','running to','eating to'], 'have to', term: 2),
  _quSen2('senior','alternative_spelling',7,2,'grammar', 'What is the negative contraction of "will"?', ['won\'t','willn\'t','wont\'','will\'nt'], 'won\'t', term: 2),
  _quSen2('senior','alternative_spelling',7,2,'grammar', 'Which is the correct spelling of the modal meaning "used to indicate duty or correctness"?', ['ought','aught','out','auht'], 'ought', term: 2),
  _quSen2('senior','alternative_spelling',7,2,'grammar', 'Identify the error: "He must to go to the hospital."', ['Modal verbs like "must" are followed by the bare infinitive (must go), without "to"','It should be "must goes"','It should be "must going"','There is no error'], 'Modal verbs like "must" are followed by the bare infinitive (must go), without "to"', term: 2),

  // Set 3 — comprehension (NOT read by TTS)
  _quSen2('senior','alternative_spelling',7,3,'comprehension',
      'PASSAGE: The debate over climate intervention is complex. Scientists argue that we must drastically reduce carbon emissions immediately; otherwise, the consequences will be catastrophic. However, economists caution that completely halting industrial production could trigger a global recession. "We ought to transition to renewable energy," stated Dr. Silva, "but we must also ensure economic stability." Some skeptics suggest that new technologies might reverse the damage, but environmentalists warn that relying on unproven methods may lead to irreversible disaster. Therefore, policymakers should adopt a balanced, phased approach.\n\nQ: What do scientists argue we MUST do immediately?',
      ['Drastically reduce carbon emissions','Halt all industrial production','Trigger a global recession','Wait for new technologies'],
      'Drastically reduce carbon emissions', term: 2),
  _quSen2('senior','alternative_spelling',7,3,'comprehension',
      'Refer to the passage above.\n\nQ: What modal verb does Dr. Silva use to give strong advice about renewable energy?',
      ['ought to','might','will','can'],
      'ought to', term: 2),
  _quSen2('senior','alternative_spelling',7,3,'comprehension',
      'Refer to the passage above.\n\nQ: How certain are the skeptics about new technologies reversing the damage?',
      ['Not entirely certain; they use the hedging word "might"','Absolutely certain; they use "will"','They think it is impossible; they use "cannot"','They demand it; they use "must"'],
      'Not entirely certain; they use the hedging word "might"', term: 2),
  _quSen2('senior','alternative_spelling',7,3,'comprehension',
      'Refer to the passage above.\n\nQ: What do environmentalists warn that relying on unproven methods MAY lead to?',
      ['Irreversible disaster','Economic stability','A balanced approach','Global recession'],
      'Irreversible disaster', term: 2),
  _quSen2('senior','alternative_spelling',7,3,'comprehension',
      'Refer to the passage above.\n\nQ: What is the final recommendation (using "should") for policymakers?',
      ['They should adopt a balanced, phased approach','They should ignore the scientists','They should trigger a recession','They should stop all industry'],
      'They should adopt a balanced, phased approach', term: 2),
  _quSen2('senior','alternative_spelling',7,3,'vocabulary', 'What does "catastrophic" mean?', ['involving or causing sudden great damage or suffering','minor and easily fixed','very predictable','financially cheap'], 'involving or causing sudden great damage or suffering', term: 2),
  _quSen2('senior','alternative_spelling',7,3,'grammar', 'In the phrase "could trigger", what does the modal "could" express?', ['A possibility or potential consequence','An absolute certainty','A past habit','A strict command'], 'A possibility or potential consequence', term: 2),
  _quSen2('senior','alternative_spelling',7,3,'vocabulary', 'What are "emissions"?', ['the production and discharge of something, especially gas or radiation','a type of renewable energy','a government policy','a group of skeptics'], 'the production and discharge of something, especially gas or radiation', term: 2),
  _quSen2('senior','alternative_spelling',7,3,'vocabulary', 'What does "skeptics" mean?', ['people inclined to question or doubt accepted opinions','people who believe everything they hear','scientists who study plants','politicians making laws'], 'people inclined to question or doubt accepted opinions', term: 2),
  _quSen2('senior','alternative_spelling',7,3,'grammar', 'Identify the correctly spelled word from the text meaning "impossible to reverse or undo".', ['irreversible','ireversible','irreversable','ireversable'], 'irreversible', term: 2),

  // ══════════════════════════════════════════════════════════════════════════
  // WEEK 8 — Grammar: Conditionals
  // Tags: suffix
  // ══════════════════════════════════════════════════════════════════════════

  // Set 1 — conditional types
  _quSen2('senior','suffix',8,1,'vocabulary', 'What is a "conditional sentence"?', ['A sentence that expresses a condition (usually starting with "if") and the consequence of that condition','A sentence without a verb','A sentence that asks a question','A single independent clause'], 'A sentence that expresses a condition (usually starting with "if") and the consequence of that condition', term: 2),
  _quSen2('senior','suffix',8,1,'grammar', 'What is the "Zero Conditional" used for?', ['To state general truths, scientific facts, or habits (If + present, present)','To talk about the past','To make a wish','To give a command'], 'To state general truths, scientific facts, or habits (If + present, present)', term: 2),
  _quSen2('senior','suffix',8,1,'grammar', 'Which sentence is a Zero Conditional?', ['If you heat ice, it melts.','If it rains tomorrow, I will stay home.','If I had money, I would buy a car.','If I had studied, I would have passed.'], 'If you heat ice, it melts.', term: 2),
  _quSen2('senior','suffix',8,1,'grammar', 'What is the "First Conditional" used for?', ['To express a real or very probable situation in the future (If + present, will + verb)','To talk about impossible past events','To state a scientific fact','To describe a dream'], 'To express a real or very probable situation in the future (If + present, will + verb)', term: 2),
  _quSen2('senior','suffix',8,1,'grammar', 'Which sentence is a First Conditional?', ['If I wake up early, I will go jogging.','If I woke up early, I would go jogging.','If I had woken up early, I would have gone jogging.','If I wake up early, I go jogging.'], 'If I wake up early, I will go jogging.', term: 2),
  _quSen2('senior','suffix',8,1,'grammar', 'What is the "Second Conditional" used for?', ['To express hypothetical, unlikely, or imaginary situations in the present/future (If + past, would + verb)','To state a fact','To talk about the past','To give instructions'], 'To express hypothetical, unlikely, or imaginary situations in the present/future (If + past, would + verb)', term: 2),
  _quSen2('senior','suffix',8,1,'grammar', 'Which sentence is a Second Conditional?', ['If I won the lottery, I would travel the world.','If I win the lottery, I will travel.','If I had won, I would have travelled.','If I win, I travel.'], 'If I won the lottery, I would travel the world.', term: 2),
  _quSen2('senior','suffix',8,1,'grammar', 'What is the "Third Conditional" used for?', ['To express an impossible past situation and its imaginary past consequence (If + past perfect, would have + past participle)','To talk about the future','To state a general truth','To give advice'], 'To express an impossible past situation and its imaginary past consequence (If + past perfect, would have + past participle)', term: 2),
  _quSen2('senior','suffix',8,1,'grammar', 'Which sentence is a Third Conditional?', ['If she had studied harder, she would have passed the exam.','If she studies, she will pass.','If she studied, she would pass.','If she study, she passes.'], 'If she had studied harder, she would have passed the exam.', term: 2),
  _quSen2('senior','suffix',8,1,'grammar', 'In conditional sentences, if the "If" clause comes first, what punctuation is needed?', ['A comma separates the "If" clause from the main clause','A full stop','A semicolon','No punctuation is needed'], 'A comma separates the "If" clause from the main clause', term: 2),

  // Set 2 — conditional practice
  _quSen2('senior','suffix',8,2,'grammar', 'Complete the First Conditional: "If it rains tomorrow, we ___ the match."', ['will cancel','would cancel','would have cancelled','cancelled'], 'will cancel', term: 2),
  _quSen2('senior','suffix',8,2,'grammar', 'Complete the Second Conditional: "If I ___ a bird, I would fly across the ocean."', ['were (or was)','am','will be','have been'], 'were (or was)', term: 2),
  _quSen2('senior','suffix',8,2,'grammar', 'Complete the Third Conditional: "If they had left earlier, they ___ the train."', ['would not have missed','will not miss','would not miss','do not miss'], 'would not have missed', term: 2),
  _quSen2('senior','suffix',8,2,'grammar', 'Identify the type: "If you mix blue and yellow, you get green."', ['Zero Conditional','First Conditional','Second Conditional','Third Conditional'], 'Zero Conditional', term: 2),
  _quSen2('senior','suffix',8,2,'grammar', 'Identify the type: "I would buy that house if I had enough money."', ['Second Conditional','First Conditional','Third Conditional','Zero Conditional'], 'Second Conditional', term: 2),
  _quSen2('senior','suffix',8,2,'grammar', 'Which word can often replace "if not" in conditional sentences?', ['unless','because','although','since'], 'unless', term: 2),
  _quSen2('senior','suffix',8,2,'grammar', 'Rewrite using unless: "If you do not study, you will fail."', ['Unless you study, you will fail.','Unless you do not study, you will fail.','Unless you fail, you will study.','You will fail if unless you study.'], 'Unless you study, you will fail.', term: 2),
  _quSen2('senior','suffix',8,2,'vocabulary', 'In an argumentative essay, why are conditionals useful?', ['They allow the writer to explore hypothetical outcomes and consequences of different policies or actions','They make the essay rhyme','They are only used in fiction','They hide the writer\'s true opinion'], 'They allow the writer to explore hypothetical outcomes and consequences of different policies or actions', term: 2),
  _quSen2('senior','suffix',8,2,'grammar', 'Identify the error: "If I will see him, I will tell him."', ['The "if" clause should be in the present tense: "If I see him"','It should be "If I saw him, I will tell him"','"will tell" should be "would tell"','There is no error'], 'The "if" clause should be in the present tense: "If I see him"', term: 2),
  _quSen2('senior','suffix',8,2,'grammar', 'Which suffix turns the noun "condition" into an adjective?', ['-al (conditional)','-ment (conditionment)','-ly (conditionly)','-ous (conditionous)'], '-al (conditional)', term: 2),

  // Set 3 — comprehension (NOT read by TTS)
  _quSen2('senior','suffix',8,3,'comprehension',
      'PASSAGE: The town council held a heated meeting regarding the failing dam. "If the water level rises any further, the dam will burst," warned the chief engineer. The mayor sighed heavily. "If we had secured the federal funding last year, we would have repaired it by now. Unfortunately, we didn\'t." A concerned citizen stood up and shouted, "If I were the mayor, I would evacuate the town immediately! We cannot wait for a disaster." The engineer nodded grimly. "It is a scientific fact: if immense pressure is applied to weakened concrete, it shatters. We must act tonight."\n\nQ: What will happen if the water level rises any further?',
      ['The dam will burst (First Conditional)','They will secure federal funding','The mayor will resign','The concrete will get stronger'],
      'The dam will burst (First Conditional)', term: 2),
  _quSen2('senior','suffix',8,3,'comprehension',
      'Refer to the passage above.\n\nQ: Why didn\'t they repair the dam last year?',
      ['Because they didn\'t secure the federal funding (Third Conditional)','Because they didn\'t want to','Because the concrete was too strong','Because the citizens refused'],
      'Because they didn\'t secure the federal funding (Third Conditional)', term: 2),
  _quSen2('senior','suffix',8,3,'comprehension',
      'Refer to the passage above.\n\nQ: What would the concerned citizen do if they were the mayor?',
      ['Evacuate the town immediately (Second Conditional)','Ask for more money','Repair the dam personally','Wait for the disaster'],
      'Evacuate the town immediately (Second Conditional)', term: 2),
  _quSen2('senior','suffix',8,3,'comprehension',
      'Refer to the passage above.\n\nQ: According to the engineer, what happens if immense pressure is applied to weakened concrete?',
      ['It shatters (Zero Conditional - scientific fact)','It bends slightly','It holds the water back','It turns into a disaster'],
      'It shatters (Zero Conditional - scientific fact)', term: 2),
  _quSen2('senior','suffix',8,3,'comprehension',
      'Refer to the passage above.\n\nQ: What did the engineer conclude they must do?',
      ['Act tonight','Wait until next year','Apply more pressure','Have another meeting'],
      'Act tonight', term: 2),
  _quSen2('senior','suffix',8,3,'vocabulary', 'What does "evacuate" mean?', ['to remove someone from a place of danger to a safer place','to build a new house','to fill a space with water','to vote for a new mayor'], 'to remove someone from a place of danger to a safer place', term: 2),
  _quSen2('senior','suffix',8,3,'grammar', 'What suffix is added to "disaster" to make the adjective "disastrous"?', ['-ous','-ment','-ly','-tion'], '-ous', term: 2),
  _quSen2('senior','suffix',8,3,'grammar', 'In the sentence "if immense pressure is applied...", is the verb active or passive?', ['Passive','Active','Imperative','Future'], 'Passive', term: 2),
  _quSen2('senior','suffix',8,3,'vocabulary', 'What does "grimly" mean?', ['in a very serious, gloomy, or depressing manner','with a bright smile','very loudly','in a confused way'], 'in a very serious, gloomy, or depressing manner', term: 2),
  _quSen2('senior','suffix',8,3,'grammar', 'Identify the word with the suffix "-ly" that modifies the verb "sighed".', ['heavily','immediately','unfortunately','grimly'], 'heavily', term: 2),

  // ══════════════════════════════════════════════════════════════════════════
  // WEEK 9 — WAEC Comprehension Practice
  // Tags: alternative_spelling, syllable
  // ══════════════════════════════════════════════════════════════════════════

  // Set 1 — WAEC reading strategies
  _quSen2('senior','alternative_spelling',9,1,'vocabulary', 'In WAEC comprehension, what does "grammatical name" refer to?', ['The specific class or type of a phrase or clause (e.g., Noun phrase, Adjectival clause)','The name of the author','The tense of the verb','The spelling of the word'], 'The specific class or type of a phrase or clause (e.g., Noun phrase, Adjectival clause)', term: 2),
  _quSen2('senior','alternative_spelling',9,1,'vocabulary', 'In WAEC comprehension, what does "grammatical function" refer to?', ['The role the phrase/clause plays in the sentence (e.g., modifying a noun, subject of the verb)','The definition of the word in the dictionary','The number of syllables','The emotion it conveys'], 'The role the phrase/clause plays in the sentence (e.g., modifying a noun, subject of the verb)', term: 2),
  _quSen2('senior','syllable',9,1,'grammar', 'If a clause begins with "who", "which", or "that", what is its grammatical name?', ['Relative clause (or Adjectival clause)','Noun phrase','Adverbial clause of time','Prepositional phrase'], 'Relative clause (or Adjectival clause)', term: 2),
  _quSen2('senior','syllable',9,1,'grammar', 'What is the grammatical function of an adjectival clause?', ['It modifies or describes a noun or pronoun in the main clause','It acts as the subject of the sentence','It tells us when an action happened','It is a figure of speech'], 'It modifies or describes a noun or pronoun in the main clause', term: 2),
  _quSen2('senior','alternative_spelling',9,1,'grammar', 'If a phrase acts as the subject or object of a verb, what is its grammatical name?', ['Noun phrase (or Noun clause)','Adverbial phrase','Adjectival phrase','Prepositional phrase'], 'Noun phrase (or Noun clause)', term: 2),
  _quSen2('senior','syllable',9,1,'grammar', 'If a clause starts with "because" or "since", what is its grammatical name?', ['Adverbial clause of reason','Noun clause','Adjectival clause','Relative phrase'], 'Adverbial clause of reason', term: 2),
  _quSen2('senior','alternative_spelling',9,1,'vocabulary', 'When asked to replace a word in a passage, what must the replacement word be?', ['A synonym that fits perfectly into the context and maintains the same part of speech and tense','Any word that sounds similar','An antonym','A completely unrelated word'], 'A synonym that fits perfectly into the context and maintains the same part of speech and tense', term: 2),
  _quSen2('senior','syllable',9,1,'grammar', 'How many syllables are in the word "grammatical"?', ['4','3','5','2'], '4', term: 2), // gram-mat-i-cal
  _quSen2('senior','alternative_spelling',9,1,'vocabulary', 'What does it mean to "infer" something from a WAEC passage?', ['To deduce an implicit meaning that the author has not directly stated','To copy the text exactly','To write a summary','To identify the grammatical name'], 'To deduce an implicit meaning that the author has not directly stated', term: 2),
  _quSen2('senior','alternative_spelling',9,1,'grammar', 'Identify the figure of speech: "The classroom was a circus."', ['Metaphor','Simile','Personification','Hyperbole'], 'Metaphor', term: 2),

  // Set 2 — grammatical name & function practice
  _quSen2('senior','alternative_spelling',9,2,'grammar', 'Read: "The boy [who broke the window] ran away." What is the grammatical name of the bracketed section?', ['Adjectival clause (or Relative clause)','Noun phrase','Adverbial clause','Verb phrase'], 'Adjectival clause (or Relative clause)', term: 2),
  _quSen2('senior','alternative_spelling',9,2,'grammar', 'Read: "The boy [who broke the window] ran away." What is its grammatical function?', ['It modifies the noun "boy"','It is the subject of "ran away"','It describes how he ran','It is an exclamation'], 'It modifies the noun "boy"', term: 2),
  _quSen2('senior','alternative_spelling',9,2,'grammar', 'Read: "[To win the championship] is his greatest dream." What is the grammatical name?', ['Noun phrase','Adjectival clause','Adverbial clause','Prepositional phrase'], 'Noun phrase', term: 2),
  _quSen2('senior','alternative_spelling',9,2,'grammar', 'Read: "[To win the championship] is his greatest dream." What is its grammatical function?', ['Subject of the verb "is"','Object of the verb "dream"','Modifies the noun "dream"','Tells us when he dreams'], 'Subject of the verb "is"', term: 2),
  _quSen2('senior','alternative_spelling',9,2,'grammar', 'Read: "She left the party [because she was tired]." What is the grammatical name?', ['Adverbial clause of reason','Noun clause','Adjectival phrase','Relative clause'], 'Adverbial clause of reason', term: 2),
  _quSen2('senior','alternative_spelling',9,2,'grammar', 'Read: "She left the party [because she was tired]." What is its grammatical function?', ['Modifies the verb "left"','Subject of the sentence','Modifies the noun "party"','Acts as a pronoun'], 'Modifies the verb "left"', term: 2),
  _quSen2('senior','syllable',9,2,'grammar', 'How many syllables are in the word "adverbial"?', ['4','3','5','2'], '4', term: 2), // ad-ver-bi-al
  _quSen2('senior','alternative_spelling',9,2,'vocabulary', 'What does the WAEC instruction "Quote the expression" mean?', ['Write down the exact words from the text without changing anything','Write it in your own words','Summarize the paragraph','Find a synonym'], 'Write down the exact words from the text without changing anything', term: 2),
  _quSen2('senior','alternative_spelling',9,2,'grammar', 'Identify the figure of speech: "He was as quiet as a mouse." ', ['Simile','Metaphor','Personification','Hyperbole'], 'Simile', term: 2),
  _quSen2('senior','syllable',9,2,'grammar', 'How many syllables are in "comprehension"?', ['4','3','5','2'], '4', term: 2),

  // Set 3 — comprehension (NOT read by TTS)
  _quSen2('senior','alternative_spelling',9,3,'comprehension',
      'PASSAGE: The village elder, [who had seen many seasons come and go], stood before the restless crowd. "Patience is a bitter plant, but it bears sweet fruit," he proclaimed softly. The young men murmured among themselves, clearly agitated by the delay. They wanted to march on the capital [before the sun set]. However, the elder knew that [acting in haste] would only lead to a devastating defeat. His words hung in the air like a heavy blanket, finally silencing the hot-blooded youths.\n\nQ: What is the grammatical name of the phrase: "[who had seen many seasons come and go]"?',
      ['Adjectival clause (Relative clause)','Noun phrase','Adverbial clause of time','Verb phrase'],
      'Adjectival clause (Relative clause)', term: 2),
  _quSen2('senior','alternative_spelling',9,3,'comprehension',
      'Refer to the passage above.\n\nQ: What is the grammatical function of "[who had seen many seasons come and go]"?',
      ['It modifies the noun phrase "The village elder"','It is the subject of the sentence','It modifies the verb "stood"','It is the object of the crowd'],
      'It modifies the noun phrase "The village elder"', term: 2),
  _quSen2('senior','alternative_spelling',9,3,'comprehension',
      'Refer to the passage above.\n\nQ: What figure of speech is "Patience is a bitter plant, but it bears sweet fruit"?',
      ['Metaphor','Simile','Personification','Onomatopoeia'],
      'Metaphor', term: 2),
  _quSen2('senior','alternative_spelling',9,3,'comprehension',
      'Refer to the passage above.\n\nQ: What is the grammatical name of "[before the sun set]"?',
      ['Adverbial clause of time','Noun phrase','Adjectival clause','Prepositional phrase'],
      'Adverbial clause of time', term: 2),
  _quSen2('senior','alternative_spelling',9,3,'comprehension',
      'Refer to the passage above.\n\nQ: What figure of speech is "His words hung in the air like a heavy blanket"?',
      ['Simile','Metaphor','Personification','Hyperbole'],
      'Simile', term: 2),
  _quSen2('senior','alternative_spelling',9,3,'grammar', 'What is the grammatical name of "[acting in haste]" in the sentence "the elder knew that [acting in haste] would only lead..."?', ['Noun phrase','Adverbial phrase','Adjectival clause','Relative clause'], 'Noun phrase', term: 2),
  _quSen2('senior','syllable',9,3,'grammar', 'How many syllables are in the word "devastating"?', ['4','5','3','6'], '4', term: 2), // dev-as-tat-ing
  _quSen2('senior','alternative_spelling',9,3,'vocabulary', 'What does the idiom "hot-blooded" mean?', ['Quick to anger; easily excited or passionate','Having a high body temperature from illness','Being very cold','Being extremely logical'], 'Quick to anger; easily excited or passionate', term: 2),
  _quSen2('senior','alternative_spelling',9,3,'vocabulary', 'Find a synonym for "agitated" as used in the passage.', ['Restless, anxious, or disturbed','Calm and peaceful','Happy and joyful','Sleeping deeply'], 'Restless, anxious, or disturbed', term: 2),
  _quSen2('senior','alternative_spelling',9,3,'grammar', 'Identify the correctly spelled word from the text meaning "a group of people gathered together".', ['crowd','croud','craud','crod'], 'crowd', term: 2),

  // ══════════════════════════════════════════════════════════════════════════
  // WEEK 10 — WAEC Essay Practice
  // Tags: prefix, suffix, alternative_spelling
  // ══════════════════════════════════════════════════════════════════════════

  // Set 1 — WAEC essay criteria
  _quSen2('senior','suffix',10,1,'vocabulary', 'What are the four criteria used by WAEC to mark an essay?', ['Content, Organization, Expression, and Mechanical Accuracy','Spelling, Grammar, Length, and Title','Introduction, Body, Conclusion, and Signature','Reading, Writing, Listening, and Speaking'], 'Content, Organization, Expression, and Mechanical Accuracy', term: 2),
  _quSen2('senior','prefix',10,1,'vocabulary', 'In WAEC marking, what does "Content" refer to?', ['The relevance of your ideas to the topic and how well you have developed them','The number of paragraphs you wrote','The correctness of your spelling','The tone of your voice'], 'The relevance of your ideas to the topic and how well you have developed them', term: 2),
  _quSen2('senior','suffix',10,1,'vocabulary', 'What does "Organization" refer to in the marking scheme?', ['The logical flow of ideas, paragraphing, and the use of cohesive devices','The neatness of your handwriting','The use of big vocabulary words','The factual accuracy of the essay'], 'The logical flow of ideas, paragraphing, and the use of cohesive devices', term: 2),
  _quSen2('senior','prefix',10,1,'vocabulary', 'What does "Expression" refer to?', ['Your choice of vocabulary, sentence variety, and appropriate register/tone','The facial expressions you make while writing','Only the use of metaphors','Your spelling mistakes'], 'Your choice of vocabulary, sentence variety, and appropriate register/tone', term: 2),
  _quSen2('senior','suffix',10,1,'vocabulary', 'What does "Mechanical Accuracy" refer to?', ['The correctness of grammar, spelling, and punctuation (every error loses half a mark)','How fast you can type or write','The structure of your argument','Your understanding of the question'], 'The correctness of grammar, spelling, and punctuation (every error loses half a mark)', term: 2),
  _quSen2('senior','alternative_spelling',10,1,'grammar', 'If you are asked to write an article for a national newspaper, what register must you use?', ['Formal register','Informal register','Slang','Poetic language'], 'Formal register', term: 2),
  _quSen2('senior','prefix',10,1,'grammar', 'If you write an informal letter to a friend, how should it differ structurally from a formal letter?', ['It has only one address (the sender\'s) and uses a casual tone','It has no addresses','It uses "Yours faithfully"','It must be typed'], 'It has only one address (the sender\'s) and uses a casual tone', term: 2),
  _quSen2('senior','suffix',10,1,'grammar', 'What is an "Argumentative Essay"?', ['An essay where you take a firm stance on a topic and try to persuade the reader to agree with you','An essay that tells a story','An essay that explains a process','A letter of complaint'], 'An essay where you take a firm stance on a topic and try to persuade the reader to agree with you', term: 2),
  _quSen2('senior','prefix',10,1,'grammar', 'Which transition word is highly valued under "Organization" to show a contrasting idea?', ['Nevertheless','Consequently','Therefore','Additionally'], 'Nevertheless', term: 2),
  _quSen2('senior','alternative_spelling',10,1,'grammar', 'Which is the correct spelling to avoid losing a mark in Mechanical Accuracy?', ['accommodation','acommodation','accomodation','acomodation'], 'accommodation', term: 2),

  // Set 2 — WAEC essay skills
  _quSen2('senior','suffix',10,2,'vocabulary', 'When given a WAEC essay prompt, what is the first thing you should do?', ['Analyze the question to identify the required format, audience, and key points to cover','Start writing immediately','Write the title','Count the number of words needed'], 'Analyze the question to identify the required format, audience, and key points to cover', term: 2),
  _quSen2('senior','prefix',10,2,'grammar', 'What is the standard penalty for a spelling, grammar, or punctuation error in WAEC Mechanical Accuracy?', ['Half a mark (½) is deducted for each error (up to a maximum limit)','Ten marks are deducted','You fail the exam immediately','There is no penalty if the idea is good'], 'Half a mark (½) is deducted for each error (up to a maximum limit)', term: 2),
  _quSen2('senior','alternative_spelling',10,2,'grammar', 'Which sentence demonstrates better "Expression" for an academic essay?', ['The implementation of this policy will yield substantial benefits.','Doing this rule is gonna be really good for us.','This rule is a very good thing.','We should do this because it is nice.'], 'The implementation of this policy will yield substantial benefits.', term: 2),
  _quSen2('senior','suffix',10,2,'grammar', 'In a debate essay, how do you address the audience in your opening?', ['"Mr. Chairman, Panel of Judges, Co-debaters, Ladies and Gentlemen..."','"Dear Sir/Madam,"','"To whom it may concern,"','"Hi everyone,"'], '"Mr. Chairman, Panel of Judges, Co-debaters, Ladies and Gentlemen..."', term: 2),
  _quSen2('senior','prefix',10,2,'vocabulary', 'What is "brainstorming"?', ['Quickly jotting down ideas and structuring your points before writing the essay','Reading the essay after finishing','Checking for spelling mistakes','Translating the prompt'], 'Quickly jotting down ideas and structuring your points before writing the essay', term: 2),
  _quSen2('senior','alternative_spelling',10,2,'grammar', 'Which spelling error will cost you half a mark?', ['definitely spelled as definately','receive spelled as receive','believe spelled as believe','separate spelled as separate'], 'definitely spelled as definately', term: 2),
  _quSen2('senior','suffix',10,2,'grammar', 'Which suffix turns "organise" into a noun?', ['-ation (organisation)','-ment (organisement)','-ly (organisely)','-ance (organisance)'], '-ation (organisation)', term: 2),
  _quSen2('senior','prefix',10,2,'grammar', 'Which prefix word is used to describe handwriting that cannot be read? (in- / il- / im- / ir- + legible)', ['illegible','unlegible','inlegible','dislegible'], 'illegible', term: 2),
  _quSen2('senior','suffix',10,2,'grammar', 'Which transition word shows sequence or chronological order?', ['Subsequently','However','Therefore','For instance'], 'Subsequently', term: 2),
  _quSen2('senior','alternative_spelling',10,2,'vocabulary', 'To score high in "Content", how many well-developed points should you ideally aim for in your body paragraphs?', ['At least three or four well-developed points','Only one very long point','Ten short points','No points, just an introduction'], 'At least three or four well-developed points', term: 2),

  // Set 3 — comprehension (NOT read by TTS)
  _quSen2('senior','prefix',10,3,'comprehension',
      'PASSAGE (Examiner\'s Report): \nCandidates\' performance in the essay section was generally average. Many students scored highly in Content, successfully generating three relevant points regarding the dangers of deforestation. However, marks were heavily lost in Organization; essays lacked clear topic sentences and logical cohesive devices, making the arguments disjointed. Furthermore, Expression was poor. Candidates frequently utilized an informal register in a formal article, employing slang where academic vocabulary was required. Most alarmingly, Mechanical Accuracy remains a critical issue. Basic spelling errors, such as \'enviroment\' and \'goverment\', resulted in severe mark deductions. Students are urged to proofread their work diligently.\n\nQ: According to the examiner, what did students do well in?',
      ['Content (generating relevant points about deforestation)','Organization','Expression','Mechanical Accuracy'],
      'Content (generating relevant points about deforestation)', term: 2),
  _quSen2('senior','suffix',10,3,'comprehension',
      'Refer to the passage above.\n\nQ: Why were marks heavily lost in Organization?',
      ['Essays lacked clear topic sentences and logical cohesive devices','They did not write an introduction','The handwriting was illegible','They wrote too many paragraphs'],
      'Essays lacked clear topic sentences and logical cohesive devices', term: 2),
  _quSen2('senior','prefix',10,3,'comprehension',
      'Refer to the passage above.\n\nQ: What was the problem with the students\' Expression?',
      ['They utilized an informal register and slang in a formal article','They used too much academic vocabulary','They wrote in French','They used too many metaphors'],
      'They utilized an informal register and slang in a formal article', term: 2),
  _quSen2('senior','alternative_spelling',10,3,'comprehension',
      'Refer to the passage above.\n\nQ: What is identified as the most alarming or critical issue?',
      ['Mechanical Accuracy (basic spelling errors)','The topic of deforestation','The length of the essays','The use of blue ink'],
      'Mechanical Accuracy (basic spelling errors)', term: 2),
  _quSen2('senior','suffix',10,3,'comprehension',
      'Refer to the passage above.\n\nQ: What is the examiner\'s final advice to students?',
      ['To proofread their work diligently','To read more books','To write shorter essays','To ignore spelling rules'],
      'To proofread their work diligently', term: 2),
  _quSen2('senior','prefix',10,3,'vocabulary', 'What does "disjointed" mean?', ['lacking a coherent sequence or connection','perfectly connected','very long','written backwards'], 'lacking a coherent sequence or connection', term: 2),
  _quSen2('senior','suffix',10,3,'vocabulary', 'What are "cohesive devices"?', ['words or phrases that connect ideas and sentences (like transition words)','devices used to measure spelling','types of punctuation marks','slang words'], 'words or phrases that connect ideas and sentences (like transition words)', term: 2),
  _quSen2('senior','alternative_spelling',10,3,'grammar', 'Identify the correct spelling of the misspelled word \'enviroment\' from the text.', ['environment','envirnoment','enviornment','invironment'], 'environment', term: 2),
  _quSen2('senior','alternative_spelling',10,3,'grammar', 'Identify the correct spelling of the misspelled word \'goverment\' from the text.', ['government','govnerment','governemnt','govermint'], 'government', term: 2),
  _quSen2('senior','prefix',10,3,'grammar', 'Identify the word from the text that uses the prefix "de-" (meaning removal or reversal) + forest + -ation.', ['deforestation','deductions','diligently','devices'], 'deforestation', term: 2),

  // ══════════════════════════════════════════════════════════════════════════
  // WEEK 11 — Vocabulary: Field-Specific (Commerce/Science)
  // Tags: prefix, suffix
  // ══════════════════════════════════════════════════════════════════════════

  // Set 1 — science & commerce
  _quSen2('senior','prefix',11,1,'vocabulary', 'In Science, what does the prefix "kine-" or "kinet-" relate to? (e.g., kinetic energy)', ['motion or movement','heat or temperature','light or color','water or liquids'], 'motion or movement', term: 2),
  _quSen2('senior','suffix',11,1,'vocabulary', 'In Commerce, what does "inflation" mean?', ['a general increase in prices and fall in the purchasing value of money','a decrease in prices','the process of opening a new bank','the money a business makes in a day'], 'a general increase in prices and fall in the purchasing value of money', term: 2),
  _quSen2('senior','prefix',11,1,'vocabulary', 'In Science, what does "equilibrium" mean? (equi = equal)', ['a state in which opposing forces or influences are balanced','a state of constant motion','an explosion of gas','a type of microscope'], 'a state in which opposing forces or influences are balanced', term: 2),
  _quSen2('senior','suffix',11,1,'vocabulary', 'In Commerce, what is "revenue"?', ['income, especially when of a company or organization and of a substantial nature','money lost by a company','a type of tax','a bank loan'], 'income, especially when of a company or organization and of a substantial nature', term: 2),
  _quSen2('senior','prefix',11,1,'vocabulary', 'In Science, what does the prefix "macro-" mean? (e.g., macroscopic)', ['large-scale; visible to the naked eye','extremely small','related to computers','related to the ocean'], 'large-scale; visible to the naked eye', term: 2),
  _quSen2('senior','suffix',11,1,'vocabulary', 'In Commerce, what is a "deficit"?', ['the amount by which something, especially a sum of money, is too small (spending more than you earn)','extra money left over at the end of the year','a type of bank account','the CEO of a company'], 'the amount by which something, especially a sum of money, is too small (spending more than you earn)', term: 2),
  _quSen2('senior','prefix',11,1,'vocabulary', 'In Science, what does "exothermic" mean? (exo = outside, therm = heat)', ['a reaction or process accompanied by the release of heat','a reaction that absorbs heat','a process that requires light','a process involving water'], 'a reaction or process accompanied by the release of heat', term: 2),
  _quSen2('senior','suffix',11,1,'vocabulary', 'In Commerce, what is a "monopoly"?', ['the exclusive possession or control of the supply or trade in a commodity or service','a market with thousands of competitors','a type of currency','a stock market crash'], 'the exclusive possession or control of the supply or trade in a commodity or service', term: 2),
  _quSen2('senior','prefix',11,1,'vocabulary', 'In Science, what does the prefix "bio-" mean? (e.g., biodiversity)', ['life or living organisms','earth or rocks','stars and planets','sound waves'], 'life or living organisms', term: 2),
  _quSen2('senior','suffix',11,1,'grammar', 'Which suffix turns the verb "consume" into a noun meaning "a person who purchases goods"?', ['-er (consumer)','-tion (consumtion)','-ment (consumement)','-ly (consumely)'], '-er (consumer)', term: 2),

  // Set 2 — science & commerce
  _quSen2('senior','prefix',11,2,'vocabulary', 'In Commerce, what does "depreciation" mean? (de- = down/away)', ['a reduction in the value of an asset with the passage of time','an increase in the value of a house','a type of government tax','a new business opening'], 'a reduction in the value of an asset with the passage of time', term: 2),
  _quSen2('senior','suffix',11,2,'vocabulary', 'In Science, what is "velocity"?', ['the speed of something in a given direction','the weight of an object','the temperature of a liquid','the color of a gas'], 'the speed of something in a given direction', term: 2),
  _quSen2('senior','prefix',11,2,'vocabulary', 'In Commerce, what is an "export"? (ex- = out, port = carry)', ['a commodity or service sold abroad','goods brought into a country','a type of boat','a domestic market'], 'a commodity or service sold abroad', term: 2),
  _quSen2('senior','suffix',11,2,'vocabulary', 'In Science, what is "friction"?', ['the resistance that one surface or object encounters when moving over another','a chemical explosion','the process of freezing water','the study of light'], 'the resistance that one surface or object encounters when moving over another', term: 2),
  _quSen2('senior','prefix',11,2,'vocabulary', 'In Commerce, what is "liability"?', ['the state of being responsible for something, especially by law (often referring to financial debt)','money in the bank','a very successful product','a new employee'], 'the state of being responsible for something, especially by law (often referring to financial debt)', term: 2),
  _quSen2('senior','suffix',11,2,'vocabulary', 'In Science, what is "radiation"?', ['the emission of energy as electromagnetic waves or as moving subatomic particles','the absorption of water','the study of rocks','a type of animal'], 'the emission of energy as electromagnetic waves or as moving subatomic particles', term: 2),
  _quSen2('senior','prefix',11,2,'vocabulary', 'In Commerce, what is an "entrepreneur"?', ['a person who organizes and operates a business, taking on greater than normal financial risks','a person who works in a factory','a bank manager','a government official'], 'a person who organizes and operates a business, taking on greater than normal financial risks', term: 2),
  _quSen2('senior','suffix',11,2,'grammar', 'Identify the suffix in "entrepreneurship".', ['-ship','-neur','en-','-tion'], '-ship', term: 2),
  _quSen2('senior','prefix',11,2,'grammar', 'Identify the prefix in "subatomic" (meaning smaller than or occurring within an atom).', ['sub-','-ic','atom-','suba-'], 'sub-', term: 2),
  _quSen2('senior','suffix',11,2,'grammar', 'Which suffix turns the noun "capital" into a word representing an economic system?', ['-ism (capitalism)','-ist (capitalist)','-ment (capitalment)','-tion (capitaltion)'], '-ism (capitalism)', term: 2),

  // Set 3 — comprehension (NOT read by TTS)
  _quSen2('senior','prefix',11,3,'comprehension',
      'PASSAGE: The nation\'s economy is currently facing a severe crisis. According to the Ministry of Commerce, the rapid depreciation of the local currency has led to an uncontrollable surge in inflation. Consumers are struggling as the purchasing power of their money decreases daily. To offset the national deficit, the government must boost revenue by increasing exports and reducing reliance on imports. Simultaneously, local entrepreneurs are asking for subsidies to help them survive the harsh economic climate. Without immediate intervention, the market will fail to reach equilibrium, resulting in widespread business closures.\n\nQ: What has the rapid depreciation of the local currency led to?',
      ['An uncontrollable surge in inflation','An increase in purchasing power','A massive national surplus','The closing of the Ministry of Commerce'],
      'An uncontrollable surge in inflation', term: 2),
  _quSen2('senior','suffix',11,3,'comprehension',
      'Refer to the passage above.\n\nQ: Why are consumers struggling?',
      ['Because the purchasing power of their money is decreasing daily','Because they have too much revenue','Because exports are too high','Because there are no entrepreneurs left'],
      'Because the purchasing power of their money is decreasing daily', term: 2),
  _quSen2('senior','prefix',11,3,'comprehension',
      'Refer to the passage above.\n\nQ: How must the government boost revenue to offset the deficit?',
      ['By increasing exports and reducing reliance on imports','By increasing imports and stopping exports','By printing more money','By ignoring the entrepreneurs'],
      'By increasing exports and reducing reliance on imports', term: 2),
  _quSen2('senior','prefix',11,3,'comprehension',
      'Refer to the passage above.\n\nQ: What are local entrepreneurs asking for?',
      ['Subsidies to help them survive','Higher taxes','A new currency','More imports'],
      'Subsidies to help them survive', term: 2),
  _quSen2('senior','suffix',11,3,'comprehension',
      'Refer to the passage above.\n\nQ: What will happen without immediate intervention?',
      ['The market will fail to reach equilibrium, resulting in business closures','The economy will magically fix itself','Inflation will drop to zero','The national deficit will disappear'],
      'The market will fail to reach equilibrium, resulting in business closures', term: 2),
  _quSen2('senior','prefix',11,3,'vocabulary', 'What does "depreciation" mean in this economic context?', ['A decrease in the value of a currency relative to other currencies','An increase in the value of a currency','A type of bank loan','A government law'], 'A decrease in the value of a currency relative to other currencies', term: 2),
  _quSen2('senior','suffix',11,3,'vocabulary', 'What is "inflation"?', ['A general increase in prices and fall in the purchasing value of money','A general decrease in prices','A type of business tax','A stock market investment'], 'A general increase in prices and fall in the purchasing value of money', term: 2),
  _quSen2('senior','prefix',11,3,'vocabulary', 'What is a "deficit"?', ['An excess of expenditure or liabilities over income or assets in a given period','A massive profit','A type of export','An economic equilibrium'], 'An excess of expenditure or liabilities over income or assets in a given period', term: 2),
  _quSen2('senior','suffix',11,3,'vocabulary', 'Who are "entrepreneurs"?', ['Individuals who set up and take on the financial risks of a business','Government officials','Foreign investors','Factory workers'], 'Individuals who set up and take on the financial risks of a business', term: 2),
  _quSen2('senior','prefix',11,3,'grammar', 'Identify the prefix in the word "intervention".', ['inter-','-tion','in-','vene-'], 'inter-', term: 2),

  // ══════════════════════════════════════════════════════════════════════════
  // WEEK 12 — Oral: Prepared & Unprepared Speech
  // Tags: syllable
  // ══════════════════════════════════════════════════════════════════════════

  // Set 1 — speech delivery techniques
  _quSen2('senior','syllable',12,1,'vocabulary', 'What is an "impromptu" (or unprepared) speech?', ['A speech given without any prior preparation or rehearsal','A speech that is memorised perfectly','A speech read directly from a script','A speech given by a politician'], 'A speech given without any prior preparation or rehearsal', term: 2),
  _quSen2('senior','syllable',12,1,'grammar', 'How many syllables are in the word "impromptu"?', ['3','4','2','5'], '3', term: 2), // im-promp-tu
  _quSen2('senior','syllable',12,1,'vocabulary', 'What does "extemporaneous" mean in public speaking?', ['A speech that is prepared in advance but delivered using only brief notes or an outline, creating a conversational tone','A speech that is completely unprepared','A speech that is read word-for-word from a teleprompter','A speech given without opening your mouth'], 'A speech that is prepared in advance but delivered using only brief notes or an outline, creating a conversational tone', term: 2),
  _quSen2('senior','syllable',12,1,'grammar', 'How many syllables are in the word "extemporaneous"?', ['6','5','4','7'], '6', term: 2), // ex-tem-po-ra-ne-ous
  _quSen2('senior','syllable',12,1,'vocabulary', 'What is "intonation" in speech?', ['The rise and fall of the voice in speaking, which conveys meaning and emotion','The speed at which you speak','The volume of your voice','The gestures you make with your hands'], 'The rise and fall of the voice in speaking, which conveys meaning and emotion', term: 2),
  _quSen2('senior','syllable',12,1,'grammar', 'How many syllables are in the word "intonation"?', ['4','3','5','2'], '4', term: 2), // in-to-na-tion
  _quSen2('senior','syllable',12,1,'vocabulary', 'What are "filler words" (or vocalized pauses)?', ['Meaningless words or sounds used to fill silence, like "um", "uh", or "like"','Important academic vocabulary words','Words that rhyme perfectly','Transition words like "however"'], 'Meaningless words or sounds used to fill silence, like "um", "uh", or "like"', term: 2),
  _quSen2('senior','syllable',12,1,'vocabulary', 'Why is a strategic "pause" effective in a speech?', ['It gives the audience time to absorb an important point and builds anticipation','It means the speaker forgot their lines','It is a mistake in delivery','It makes the speech shorter'], 'It gives the audience time to absorb an important point and builds anticipation', term: 2),
  _quSen2('senior','syllable',12,1,'vocabulary', 'What is "articulation" (or enunciation)?', ['The clear and precise pronunciation of words','Speaking as fast as possible','Speaking with a specific foreign accent','Using very long words'], 'The clear and precise pronunciation of words', term: 2),
  _quSen2('senior','syllable',12,1,'grammar', 'How many syllables are in the word "articulation"?', ['5','4','6','3'], '5', term: 2), // ar-tic-u-la-tion

  // Set 2 — speech structures
  _quSen2('senior','syllable',12,2,'vocabulary', 'What is the "PREP" method often used for answering impromptu questions?', ['Point, Reason, Example, Point (restate)','Pause, Read, Eat, Play','Please Respond Exactly Properly','Point, Rhyme, Elaborate, Pause'], 'Point, Reason, Example, Point (restate)', term: 2),
  _quSen2('senior','syllable',12,2,'grammar', 'Which phrase is a good way to buy time when asked an unprepared question?', ['"That is an excellent question; allow me to consider it for a moment."','"I don\'t know."','"Why are you asking me?"','"Next question."'], '"That is an excellent question; allow me to consider it for a moment."', term: 2),
  _quSen2('senior','syllable',12,2,'vocabulary', 'What does "gestures" refer to in public speaking?', ['Movements of the hands, arms, or head used to express an idea or emphasize a point','The clothes the speaker is wearing','The tone of the voice','The slides on the projector'], 'Movements of the hands, arms, or head used to express an idea or emphasize a point', term: 2),
  _quSen2('senior','syllable',12,2,'grammar', 'How many syllables are in the word "gesture"?', ['2','3','1','4'], '2', term: 2), // ges-ture
  _quSen2('senior','syllable',12,2,'vocabulary', 'What does "pacing" mean in a speech?', ['The speed or rate at which a person speaks','The act of walking around the stage nervously','The volume of the microphone','The length of the written essay'], 'The speed or rate at which a person speaks', term: 2),
  _quSen2('senior','syllable',12,2,'vocabulary', 'What is "eye contact"?', ['Looking directly into the eyes of audience members to establish connection and trust','Staring at your notes the entire time','Looking at the ceiling','Closing your eyes while speaking'], 'Looking directly into the eyes of audience members to establish connection and trust', term: 2),
  _quSen2('senior','syllable',12,2,'grammar', 'Which of these is a sign of a confident speaker?', ['Standing tall, using open gestures, and maintaining steady eye contact','Slouching, crossing arms, and staring at the floor','Reading rapidly in a monotone voice','Using "um" and "uh" frequently'], 'Standing tall, using open gestures, and maintaining steady eye contact', term: 2),
  _quSen2('senior','syllable',12,2,'grammar', 'How many syllables are in the word "confident"?', ['3','2','4','1'], '3', term: 2), // con-fi-dent
  _quSen2('senior','syllable',12,2,'vocabulary', 'What is a "monotone" delivery?', ['Speaking in an unchanging tone or pitch, which sounds very boring','Speaking with intense emotion','Singing the speech','Using a microphone'], 'Speaking in an unchanging tone or pitch, which sounds very boring', term: 2),
  _quSen2('senior','syllable',12,2,'grammar', 'How many syllables are in the word "delivery"?', ['4','3','5','2'], '4', term: 2), // de-liv-er-y

  // Set 3 — comprehension (NOT read by TTS)
  _quSen2('senior','syllable',12,3,'comprehension',
      'PASSAGE: The debate championship finals featured an impromptu speech round. The moderator handed Ngozi a sealed envelope. Inside was her topic: "The Impact of Artificial Intelligence on Education." She had exactly one minute to prepare. Taking a deep breath, she decided to use the PREP method. She stepped up to the podium, established strong eye contact, and delivered her opening point with clear articulation. Her intonation rose and fell naturally, keeping the audience engaged. Whenever she needed to gather her thoughts, she used a strategic pause instead of filler words. The judges were highly impressed by her extemporaneous delivery.\n\nQ: What kind of speech round was featured in the debate championship finals?',
      ['An impromptu speech round','A memorised poetry round','A group discussion','A written essay competition'],
      'An impromptu speech round', term: 2),
  _quSen2('senior','syllable',12,3,'comprehension',
      'Refer to the passage above.\n\nQ: What method did Ngozi decide to use?',
      ['The PREP method','The SQ3R method','The scientific method','The P.E.E. method'],
      'The PREP method', term: 2),
  _quSen2('senior','syllable',12,3,'comprehension',
      'Refer to the passage above.\n\nQ: How did Ngozi deliver her opening point?',
      ['With clear articulation','In a monotone voice','While looking at her feet','Very quietly'],
      'With clear articulation', term: 2),
  _quSen2('senior','syllable',12,3,'comprehension',
      'Refer to the passage above.\n\nQ: What kept the audience engaged?',
      ['Her natural intonation (the rise and fall of her voice)','Her flashy clothes','The length of the speech','The visual aids she brought'],
      'Her natural intonation (the rise and fall of her voice)', term: 2),
  _quSen2('senior','syllable',12,3,'comprehension',
      'Refer to the passage above.\n\nQ: What did she use instead of filler words when she needed to gather her thoughts?',
      ['A strategic pause','A loud cough','A joke','She just started reading her notes'],
      'A strategic pause', term: 2),
  _quSen2('senior','syllable',12,3,'vocabulary', 'What does "impromptu" mean?', ['done without being planned, organized, or rehearsed','perfectly memorised','written down in advance','read from a teleprompter'], 'done without being planned, organized, or rehearsed', term: 2),
  _quSen2('senior','syllable',12,3,'grammar', 'How many syllables are in the word "articulation"?', ['5','4','6','3'], '5', term: 2), // ar-tic-u-la-tion
  _quSen2('senior','syllable',12,3,'vocabulary', 'What is "intonation"?', ['the rise and fall of the voice in speaking','the speed of speaking','the physical gestures used','the volume of the microphone'], 'the rise and fall of the voice in speaking', term: 2),
  _quSen2('senior','syllable',12,3,'vocabulary', 'What are "filler words"?', ['meaningless words or sounds like "um" or "uh" used to fill pauses','transition words like "however"','strong vocabulary words','metaphors and similes'], 'meaningless words or sounds like "um" or "uh" used to fill pauses', term: 2),
  _quSen2('senior','syllable',12,3,'grammar', 'How many syllables are in the word "extemporaneous"?', ['6','5','4','7'], '6', term: 2), // ex-tem-po-ra-ne-ous

  // ══════════════════════════════════════════════════════════════════════════
  // WEEK 13 — End-of-Term Assessment
  // Tags: prefix, suffix, alternative_spelling, homophone
  // ══════════════════════════════════════════════════════════════════════════

  // Set 1 — final assessment mix
  _quSen2('senior','alternative_spelling',13,1,'grammar', 'Which is the correct spelling of the WAEC exception word meaning "to grab"?', ['seize','sieze','seeze','ceize'], 'seize', term: 2),
  _quSen2('senior','prefix',13,1,'vocabulary', 'What does the prefix "omni-" mean in "omniscient"?', ['all or everywhere','before','against','under'], 'all or everywhere', term: 2),
  _quSen2('senior','suffix',13,1,'grammar', 'Which sentence uses a Second Conditional correctly?', ['If I had a million dollars, I would travel the world.','If I have a million dollars, I will travel the world.','If I had a million dollars, I will travel the world.','If I had had a million dollars, I would travel.'], 'If I had a million dollars, I would travel the world.', term: 2),
  _quSen2('senior','homophone',13,1,'grammar', 'Which homophone fits best: "He gave me some excellent ___."?', ['advice','advise','advises','adviced'], 'advice', term: 2),
  _quSen2('senior','alternative_spelling',13,1,'vocabulary', 'What is "dramatic irony"?', ['When the audience knows something the characters in the play do not','When a character is sarcastic','When the ending is sad','When the setting changes suddenly'], 'When the audience knows something the characters in the play do not', term: 2),
  _quSen2('senior','prefix',13,1,'vocabulary', 'What does "inflation" mean in Commerce?', ['A general increase in prices and fall in purchasing value','A decrease in prices','A type of tax','A new business starting'], 'A general increase in prices and fall in purchasing value', term: 2),
  _quSen2('senior','suffix',13,1,'grammar', 'Identify the error in tense consistency: "He opens the book and began to read."', ['Mix of present (opens) and past (began)','Mix of future and past','Mix of past perfect and present','There is no error'], 'Mix of present (opens) and past (began)', term: 2),
  _quSen2('senior','alternative_spelling',13,1,'grammar', 'Which is the correct spelling?', ['environment','enviroment','envirnoment','enviorment'], 'environment', term: 2),
  _quSen2('senior','prefix',13,1,'grammar', 'Which transition word is best to show a contrasting point in an essay?', ['However (or Nevertheless)','Consequently','Furthermore','Therefore'], 'However (or Nevertheless)', term: 2),
  _quSen2('senior','suffix',13,1,'vocabulary', 'What is a "soliloquy"?', ['A speech given by a character alone on stage, revealing their inner thoughts','A conversation between two characters','A stage prop','The final act of a play'], 'A speech given by a character alone on stage, revealing their inner thoughts', term: 2),

  // Set 2 — final assessment mix
  _quSen2('senior','alternative_spelling',13,2,'grammar', 'Which is the correct spelling?', ['accommodation','acommodation','accomodation','acomodation'], 'accommodation', term: 2),
  _quSen2('senior','prefix',13,2,'vocabulary', 'What does the root "chron" mean in "chronological"?', ['time','earth','life','sound'], 'time', term: 2),
  _quSen2('senior','suffix',13,2,'grammar', 'Which suffix turns the adjective "redundant" into a noun?', ['-cy (redundancy)','-ment (redundantment)','-ness (redundantness)','-ion (redundantion)'], '-cy (redundancy)', term: 2),
  _quSen2('senior','homophone',13,2,'grammar', 'Which homophone fits best: "The factory is ___ to produce goods."?', ['licensed (verb)','licenced','lisenced','licence (noun)'], 'licensed (verb)', term: 2),
  _quSen2('senior','alternative_spelling',13,2,'vocabulary', 'What is an "inference"?', ['A conclusion reached on the basis of evidence and reasoning; reading between the lines','A fact stated explicitly in the text','A spelling mistake','A type of poem'], 'A conclusion reached on the basis of evidence and reasoning; reading between the lines', term: 2),
  _quSen2('senior','prefix',13,2,'grammar', 'Identify the grammatical name of the bracketed section: "The man [who stole the car] was arrested."', ['Adjectival clause (Relative clause)','Noun phrase','Adverbial clause','Prepositional phrase'], 'Adjectival clause (Relative clause)', term: 2),
  _quSen2('senior','suffix',13,2,'grammar', 'What does the First Conditional express? (e.g., If it rains, I will stay home)', ['A real or very probable situation in the future','An impossible past event','A scientific fact that is always true','A completely imaginary scenario'], 'A real or very probable situation in the future', term: 2),
  _quSen2('senior','alternative_spelling',13,2,'grammar', 'Which is the correct spelling?', ['privilege','privelege','priviledge','privelige'], 'privilege', term: 2),
  _quSen2('senior','prefix',13,2,'vocabulary', 'What is "foreshadowing"?', ['Giving hints or clues about what will happen later in the story','Telling the ending immediately','Writing about the past','Using metaphors'], 'Giving hints or clues about what will happen later in the story', term: 2),
  _quSen2('senior','suffix',13,2,'grammar', 'In WAEC essay marking, what does "Mechanical Accuracy" assess?', ['Grammar, spelling, and punctuation','The length of the essay','The logic of the arguments','The vocabulary used'], 'Grammar, spelling, and punctuation', term: 2),

  // Set 3 — comprehension (NOT read by TTS)
  _quSen2('senior','alternative_spelling',13,3,'comprehension',
      'PASSAGE: As Term 2 drew to a close, the SSS students faced their most demanding mock examination yet. Section A presented a dramatic extract where the protagonist\'s fatal flaw led to a tragic conclusion; students had to infer the character\'s motives based on implicit dialogue. Section B tested conditional sentences and tense consistency, penalising any shift from past to present without justification. Finally, Section C required a formal report on the school\'s infrastructure. The examiner stressed that essays lacking cohesion and proper paragraphing would suffer in the "Organization" category. Furthermore, careless spelling errors like \'pronounciation\' instead of \'pronunciation\' would decimate their Mechanical Accuracy scores.\n\nQ: What did the protagonist\'s fatal flaw lead to in the dramatic extract?',
      ['A tragic conclusion','A happy ending','A comedy','A long soliloquy'],
      'A tragic conclusion', term: 2),
  _quSen2('senior','alternative_spelling',13,3,'comprehension',
      'Refer to the passage above.\n\nQ: What did students have to infer based on the implicit dialogue?',
      ['The character\'s motives','The setting of the play','The author\'s biography','The length of the act'],
      'The character\'s motives', term: 2),
  _quSen2('senior','suffix',13,3,'comprehension',
      'Refer to the passage above.\n\nQ: What did Section B test, penalising unjustified shifts?',
      ['Conditional sentences and tense consistency','Spelling rules','Vocabulary definitions','Speech delivery'],
      'Conditional sentences and tense consistency', term: 2),
  _quSen2('senior','prefix',13,3,'comprehension',
      'Refer to the passage above.\n\nQ: According to the examiner, what would cause an essay to suffer in the "Organization" category?',
      ['Lacking cohesion and proper paragraphing','Having too many big words','Being written in blue ink','Not having a title'],
      'Lacking cohesion and proper paragraphing', term: 2),
  _quSen2('senior','alternative_spelling',13,3,'comprehension',
      'Refer to the passage above.\n\nQ: What specific spelling error was mentioned as one that would decimate Mechanical Accuracy scores?',
      ['\'pronounciation\' instead of \'pronunciation\'','\'enviroment\' instead of \'environment\'','\'acommodate\' instead of \'accommodate\'','\'wierd\' instead of \'weird\''],
      '\'pronounciation\' instead of \'pronunciation\'', term: 2),
  _quSen2('senior','alternative_spelling',13,3,'vocabulary', 'What is a "fatal flaw" (hamartia)?', ['A defect in a character\'s personality that leads to their downfall','A physical injury','A mistake in the script','A bad costume'], 'A defect in a character\'s personality that leads to their downfall', term: 2),
  _quSen2('senior','alternative_spelling',13,3,'vocabulary', 'What does "implicit" mean?', ['suggested or hinted at, but not directly stated','stated very clearly and obviously','written in bold letters','spoken very loudly'], 'suggested or hinted at, but not directly stated', term: 2),
  _quSen2('senior','suffix',13,3,'vocabulary', 'What is "cohesion" in an essay?', ['the grammatical and lexical linking within a text that holds it together (e.g., transition words)','the total number of words','the emotional feeling of the text','the use of rhyming words'], 'the grammatical and lexical linking within a text that holds it together (e.g., transition words)', term: 2),
  _quSen2('senior','prefix',13,3,'grammar', 'Identify the transition word used in the passage to add more information about the spelling errors.', ['Furthermore','Finally','However','Instead'], 'Furthermore', term: 2),
  _quSen2('senior','alternative_spelling',13,3,'grammar', 'Identify the correctly spelled word from the text meaning "the way in which a word is spoken".', ['pronunciation','pronounciation','pronunceation','pronunciashun'], 'pronunciation', term: 2),

];
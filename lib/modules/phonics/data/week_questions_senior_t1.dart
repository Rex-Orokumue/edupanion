import 'package:uuid/uuid.dart';
import '../../../core/models/question.dart';

// ignore_for_file: prefer_single_quotes
const _uuSen1 = Uuid();

Question _quSen1(String level, String tag, int week, int set, String type,
    String q, List<String> opts, String ans, {required int term}) =>
    Question(
      id: _uuSen1.v4(), level: level, skillTag: tag,
      weekNumber: week, assessmentSet: set, questionType: type,
      termNumber: term,
      questionText: q, options: opts, correctAnswer: ans,
    );

// ─────────────────────────────────────────────────────────────────────────────
// SENIOR — SSS 1–3  (Term 1)
//
// W1  : Advanced Academic Vocabulary             → prefix, suffix
// W2  : Sophisticated Morphology                 → prefix, suffix
// W3  : Spelling: Common Examination Errors      → alternative_spelling
// W4  : Reading: Literary Prose                  → alternative_spelling, syllable
// W5  : Reading: Poetry Analysis                 → rhyme, alliteration
// W6  : Writing: Expository Essay                → prefix, suffix
// ─────────────────────────────────────────────────────────────────────────────

final List<Question> weekQuestionsSeniorT1 = [

  // ══════════════════════════════════════════════════════════════════════════
  // WEEK 1 — Advanced Academic Vocabulary
  // Tags: prefix, suffix
  // ══════════════════════════════════════════════════════════════════════════

  // Set 1 — vocabulary + grammar
  _quSen1('senior','prefix',1,1,'vocabulary', 'The prefix "omni-" means all or every. What does "omnipresent" mean?', ['widely or constantly encountered; present everywhere at the same time','present only in one location','never present','hidden from view'], 'widely or constantly encountered; present everywhere at the same time', term: 1),
  _quSen1('senior','prefix',1,1,'vocabulary', 'What does "omniscient" mean? (omni = all, sci = know)', ['knowing everything','having limited knowledge','eating everything','being all-powerful'], 'knowing everything', term: 1),
  _quSen1('senior','prefix',1,1,'vocabulary', 'The prefix "circum-" means around. What does "circumvent" mean?', ['to find a way around an obstacle or rule','to build a circle','to travel straight through','to surrender entirely'], 'to find a way around an obstacle or rule', term: 1),
  _quSen1('senior','prefix',1,1,'vocabulary', 'The prefix "bene-" means good or well. What is a "beneficiary"?', ['a person who derives advantage or good from something, especially a trust or will','a person who gives money away','a person who commits a crime','a person who tells the truth'], 'a person who derives advantage or good from something, especially a trust or will', term: 1),
  _quSen1('senior','suffix',1,1,'grammar', 'Which suffix turns "benefit" into an adjective meaning "resulting in good"?', ['-cial (beneficial)','-ment (benefitment)','-ly (benefitly)','-ous (benefitous)'], '-cial (beneficial)', term: 1),
  _quSen1('senior','prefix',1,1,'vocabulary', 'The prefix "mal-" means bad or evil. What does "malevolent" mean?', ['having or showing a wish to do evil to others','wishing good fortune upon someone','being extremely tired','being very clumsy'], 'having or showing a wish to do evil to others', term: 1),
  _quSen1('senior','prefix',1,1,'vocabulary', 'The prefix "pseudo-" means false or fake. What is a "pseudonym"?', ['a fictitious name, especially one used by an author','a true story','a fake scientific fact','a type of disease'], 'a fictitious name, especially one used by an author', term: 1),
  _quSen1('senior','suffix',1,1,'vocabulary', 'The suffix "-cracy" means rule or government. What is an "autocracy"? (auto = self)', ['a system of government by one person with absolute power','a government ruled by the people','a government ruled by the wealthy','a government with no laws'], 'a system of government by one person with absolute power', term: 1),
  _quSen1('senior','suffix',1,1,'grammar', 'Which suffix changes the noun "autocracy" into an adjective describing the ruler?', ['-ic (autocratic)','-ous (autocracous)','-ly (autocrately)','-ment (autocracyment)'], '-ic (autocratic)', term: 1),
  _quSen1('senior','prefix',1,1,'vocabulary', 'The prefix "mono-" means one. What does "monotonous" mean?', ['dull, tedious, and repetitious; lacking in variety and interest (one tone)','highly exciting and varied','involving many colors','happening once a year'], 'dull, tedious, and repetitious; lacking in variety and interest (one tone)', term: 1),

  // Set 2 — vocabulary + grammar
  _quSen1('senior','prefix',1,2,'vocabulary', 'The prefix "poly-" means many. What does "polyglot" mean?', ['knowing or using several languages','having many wives','a shape with many sides','believing in many gods'], 'knowing or using several languages', term: 1),
  _quSen1('senior','prefix',1,2,'vocabulary', 'The prefix "equi-" means equal. What does "equilibrium" mean?', ['a state in which opposing forces or influences are perfectly balanced','a state of complete chaos','a mathematical error','an unequal division of power'], 'a state in which opposing forces or influences are perfectly balanced', term: 1),
  _quSen1('senior','prefix',1,2,'vocabulary', 'The prefix "ambi-" means both. What does "ambiguous" mean?', ['open to more than one interpretation; having a double meaning','perfectly clear and obvious','using both hands equally well','unable to make a decision'], 'open to more than one interpretation; having a double meaning', term: 1),
  _quSen1('senior','suffix',1,2,'grammar', 'Which suffix is added to "ambiguous" to form a noun?', ['-ity (ambiguity)','-ment (ambiguousment)','-ness (ambiguousness)','-tion (ambiguoustion)'], '-ity (ambiguity)', term: 1),
  _quSen1('senior','prefix',1,2,'vocabulary', 'The root "chron" means time. What does "anachronism" mean? (ana = backward/against)', ['a thing belonging to a period other than that in which it exists, especially something old-fashioned','a very accurate clock','a fear of running out of time','a chronological list of events'], 'a thing belonging to a period other than that in which it exists, especially something old-fashioned', term: 1),
  _quSen1('senior','prefix',1,2,'vocabulary', 'The root "path" means feeling. What is "apathy"? (a- = without)', ['lack of interest, enthusiasm, or concern','a feeling of intense joy','a deep sympathy for others','a pathway through a forest'], 'lack of interest, enthusiasm, or concern', term: 1),
  _quSen1('senior','prefix',1,2,'vocabulary', 'What does "empathy" mean? (em- = in/into)', ['the ability to understand and share the feelings of another','a total lack of emotion','a hatred of other people','a medical disease'], 'the ability to understand and share the feelings of another', term: 1),
  _quSen1('senior','suffix',1,2,'grammar', 'Which suffix changes "empathy" into an adjective?', ['-etic (empathetic)','-ous (empathous)','-ic (empathic)','-ly (empathyly)'], '-etic (empathetic)', term: 1),
  _quSen1('senior','prefix',1,2,'vocabulary', 'The root "luc" or "lum" means light. What does "elucidate" mean? (e- = out)', ['to make something clear; to explain (shed light upon)','to make something dark and confusing','to turn off a lightbulb','to become very lightweight'], 'to make something clear; to explain (shed light upon)', term: 1),
  _quSen1('senior','prefix',1,2,'vocabulary', 'What does "lucid" mean?', ['expressed clearly; easy to understand','confusing and ambiguous','very heavy','dark and shadowy'], 'expressed clearly; easy to understand', term: 1),

  // Set 3 — comprehension (NOT read by TTS)
  _quSen1('senior','prefix',1,3,'comprehension',
      'PASSAGE: The novel\'s protagonist was presented as a near-omniscient figure, capable of anticipating the malevolent schemes of the autocracy that ruled the dystopian city. To circumvent the strict surveillance laws, she adopted a pseudonym and published pamphlets that elucidated the corrupt practices of the government. However, her writings were sometimes deliberately ambiguous, serving as a test to separate true allies from potential spies. Her ultimate goal was to shatter the widespread apathy of the citizens and inspire a rebellion.\n\nQ: How is the protagonist described in relation to her knowledge?',
      ['As a near-omniscient figure','As completely ignorant','As an uneducated citizen','As a polyglot'],
      'As a near-omniscient figure', term: 1),
  _quSen1('senior','prefix',1,3,'comprehension',
      'Refer to the passage above.\n\nQ: What kind of schemes did the autocracy have?',
      ['Malevolent schemes','Beneficial schemes','Ambiguous schemes','Lucid schemes'],
      'Malevolent schemes', term: 1),
  _quSen1('senior','prefix',1,3,'comprehension',
      'Refer to the passage above.\n\nQ: Why did she adopt a pseudonym?',
      ['To circumvent the strict surveillance laws','To become famous','Because she forgot her real name','To show off her vocabulary'],
      'To circumvent the strict surveillance laws', term: 1),
  _quSen1('senior','prefix',1,3,'comprehension',
      'Refer to the passage above.\n\nQ: Why were her writings sometimes ambiguous?',
      ['To serve as a test to separate true allies from potential spies','Because she did not know how to write clearly','Because she wanted to confuse herself','To make the pamphlets longer'],
      'To serve as a test to separate true allies from potential spies', term: 1),
  _quSen1('senior','suffix',1,3,'comprehension',
      'Refer to the passage above.\n\nQ: What was her ultimate goal?',
      ['To shatter the widespread apathy of the citizens and inspire a rebellion','To become the new autocratic leader','To leave the dystopian city forever','To publish a best-selling novel'],
      'To shatter the widespread apathy of the citizens and inspire a rebellion', term: 1),
  _quSen1('senior','prefix',1,3,'vocabulary', 'What does "elucidated" mean in the context of the pamphlets?', ['Made clear and explained','Hidden away','Made completely secret','Written in a foreign language'], 'Made clear and explained', term: 1),
  _quSen1('senior','suffix',1,3,'grammar', 'Identify the noun in the passage that ends in the suffix "-cy" meaning rule or government.', ['autocracy','apathy','dystopian','surveillance'], 'autocracy', term: 1),
  _quSen1('senior','prefix',1,3,'vocabulary', 'What is a "pseudonym"?', ['A fictitious or fake name','A type of surveillance camera','A secret weapon','A written pamphlet'], 'A fictitious or fake name', term: 1),
  _quSen1('senior','prefix',1,3,'vocabulary', 'What does "apathy" mean?', ['Lack of interest, enthusiasm, or concern','A strong feeling of anger','A state of panic','A feeling of empathy'], 'Lack of interest, enthusiasm, or concern', term: 1),
  _quSen1('senior','prefix',1,3,'grammar', 'Which word uses the prefix "circum-"?', ['circumvent','omniscient','malevolent','pseudonym'], 'circumvent', term: 1),

  // ══════════════════════════════════════════════════════════════════════════
  // WEEK 2 — Sophisticated Morphology
  // Tags: prefix, suffix
  // ══════════════════════════════════════════════════════════════════════════

  // Set 1 — words with 4+ morphemes
  _quSen1('senior','prefix',2,1,'vocabulary', 'What are "morphemes"?', ['The smallest meaningful units of language (roots, prefixes, suffixes)','The individual letters in a word','The punctuation marks in a sentence','The syllables clapped in a word'], 'The smallest meaningful units of language (roots, prefixes, suffixes)', term: 1),
  _quSen1('senior','suffix',2,1,'grammar', 'How many morphemes are in "unhappiness"?', ['3 (un- + happy + -ness)','2','4','1'], '3 (un- + happy + -ness)', term: 1),
  _quSen1('senior','prefix',2,1,'grammar', 'Identify the base word in "incomprehensible".', ['comprehend (or comprehen-)','in-','-ible','incomprehen'], 'comprehend (or comprehen-)', term: 1),
  _quSen1('senior','suffix',2,1,'grammar', 'Identify the morphemes in "disproportionately".', ['dis- + proportion + -ate + -ly','dispro- + portion + -ately','dis- + pro- + portion + -ly','disproportion + -ately'], 'dis- + proportion + -ate + -ly', term: 1),
  _quSen1('senior','prefix',2,1,'vocabulary', 'What does "incomprehensible" mean?', ['not able to be understood; not intelligible','very easy to read','having many parts','lacking any meaning'], 'not able to be understood; not intelligible', term: 1),
  _quSen1('senior','suffix',2,1,'grammar', 'What is the base word of "unfathomable"?', ['fathom','un-','-able','unfathom'], 'fathom', term: 1),
  _quSen1('senior','prefix',2,1,'vocabulary', 'What does "unfathomable" mean?', ['incapable of being fully explored or understood','able to be measured perfectly','a very deep ocean','something that is easy to guess'], 'incapable of being fully explored or understood', term: 1),
  _quSen1('senior','suffix',2,1,'grammar', 'Identify the morphemes in "irresponsibility".', ['ir- + response + -ible + -ity (or ir- + respons + -ibil + -ity)','irre- + sponsibility','ir- + responsibil + -ity','ir- + respond + -ability'], 'ir- + response + -ible + -ity (or ir- + respons + -ibil + -ity)', term: 1), // Exact morphemic breakdown can vary by linguistic model, but A shows the 4 parts.
  _quSen1('senior','prefix',2,1,'vocabulary', 'What does the prefix "ir-" mean in "irresponsibility"?', ['not (not responsible)','again','before','too much'], 'not (not responsible)', term: 1),
  _quSen1('senior','suffix',2,1,'grammar', 'What is the suffix that turns the adjective "irresponsible" into the noun "irresponsibility"?', ['-ity','-ible','-ness','-tion'], '-ity', term: 1),

  // Set 2 — complex morphology
  _quSen1('senior','suffix',2,2,'grammar', 'What is the base word in "unapologetically"?', ['apology (or apolog-)','un-','-etic','-ally'], 'apology (or apolog-)', term: 1),
  _quSen1('senior','prefix',2,2,'vocabulary', 'What does "unapologetically" mean?', ['in a manner that does not acknowledge or express regret','acting very sorry','speaking loudly','acting secretly'], 'in a manner that does not acknowledge or express regret', term: 1),
  _quSen1('senior','prefix',2,2,'grammar', 'Identify the base word in "overgeneralisation" (or overgeneralization).', ['general','over-','-ise','-ation'], 'general', term: 1),
  _quSen1('senior','suffix',2,2,'vocabulary', 'What does "overgeneralisation" mean?', ['the process of making a statement that is too broad and not always true','the process of being very specific','a military strategy','a mathematical formula'], 'the process of making a statement that is too broad and not always true', term: 1),
  _quSen1('senior','prefix',2,2,'grammar', 'Identify the base word in "miscommunication".', ['communicate (or communic-)','mis-','-ation','miscommunicate'], 'communicate (or communic-)', term: 1),
  _quSen1('senior','suffix',2,2,'vocabulary', 'What does "miscommunication" mean?', ['failure to communicate adequately or accurately','communicating perfectly','a type of telephone','a fast internet connection'], 'failure to communicate adequately or accurately', term: 1),
  _quSen1('senior','prefix',2,2,'grammar', 'What is the base word in "uncharacteristically"?', ['character','un-','-istic','-ally'], 'character', term: 1),
  _quSen1('senior','suffix',2,2,'vocabulary', 'What does "uncharacteristically" mean?', ['in a way that is not typical of a particular person or thing','acting exactly like oneself','acting out a play','acting very bravely'], 'in a way that is not typical of a particular person or thing', term: 1),
  _quSen1('senior','prefix',2,2,'grammar', 'Identify the base word in "indistinguishable".', ['distinguish','in-','-able','indistinguish'], 'distinguish', term: 1),
  _quSen1('senior','suffix',2,2,'vocabulary', 'What does "indistinguishable" mean?', ['not able to be identified as different or distinct','easy to tell apart','very colorful and bright','extinguished by fire'], 'not able to be identified as different or distinct', term: 1),

  // Set 3 — comprehension (NOT read by TTS)
  _quSen1('senior','prefix',2,3,'comprehension',
      'PASSAGE: The debate over artificial intelligence often falls victim to overgeneralisation. Some critics argue that AI will unapologetically replace all human labor, leading to unimaginable economic collapse. Others claim the benefits are unfathomable. The truth lies somewhere in the middle. Much of the fear stems from miscommunication between tech developers and the general public. When complex algorithms are explained using incomprehensible jargon, people naturally become suspicious. To prevent irresponsibility in tech development, we need transparent policies rather than indistinguishable buzzwords.\n\nQ: What does the debate over artificial intelligence often fall victim to?',
      ['Overgeneralisation','Apathy','Indistinguishable buzzwords','Lack of technology'],
      'Overgeneralisation', term: 1),
  _quSen1('senior','prefix',2,3,'comprehension',
      'Refer to the passage above.\n\nQ: What do some critics argue AI will unapologetically do?',
      ['Replace all human labor','Destroy all computers','Solve all world problems','Learn to feel emotions'],
      'Replace all human labor', term: 1),
  _quSen1('senior','prefix',2,3,'comprehension',
      'Refer to the passage above.\n\nQ: What does much of the fear stem from?',
      ['Miscommunication between tech developers and the general public','The high cost of electricity','The fact that AI is too slow','A lack of transparent policies'],
      'Miscommunication between tech developers and the general public', term: 1),
  _quSen1('senior','prefix',2,3,'comprehension',
      'Refer to the passage above.\n\nQ: How are complex algorithms sometimes explained, causing suspicion?',
      ['Using incomprehensible jargon','Using simple pictures','Without any words at all','In foreign languages'],
      'Using incomprehensible jargon', term: 1),
  _quSen1('senior','suffix',2,3,'comprehension',
      'Refer to the passage above.\n\nQ: What is needed to prevent irresponsibility in tech development?',
      ['Transparent policies','More buzzwords','Less communication','More artificial intelligence'],
      'Transparent policies', term: 1),
  _quSen1('senior','suffix',2,3,'grammar', 'Identify the prefix in "unfathomable" that changes the meaning to its negative form.', ['un-','-able','fathom','unfath-'], 'un-', term: 1),
  _quSen1('senior','prefix',2,3,'vocabulary', 'What does "unapologetically" mean as used in the passage?', ['without showing any regret or sorrow','very slowly and carefully','with a lot of apologies','in a secretive manner'], 'without showing any regret or sorrow', term: 1),
  _quSen1('senior','suffix',2,3,'grammar', 'How many morphemes make up the word "irresponsibility"?', ['Four (ir- + respons(e) + -ibil(ible) + -ity)','Two','One','Six'], 'Four (ir- + respons(e) + -ibil(ible) + -ity)', term: 1),
  _quSen1('senior','prefix',2,3,'vocabulary', 'What does "indistinguishable buzzwords" mean?', ['Buzzwords that all sound the same and cannot be told apart','Buzzwords that are very clear','Buzzwords that are very famous','Buzzwords that are invisible'], 'Buzzwords that all sound the same and cannot be told apart', term: 1),
  _quSen1('senior','prefix',2,3,'vocabulary', 'What is the base word of "incomprehensible"?', ['comprehend (or comprehen-)','in-','-ible','prehend'], 'comprehend (or comprehen-)', term: 1),

  // ══════════════════════════════════════════════════════════════════════════
  // WEEK 3 — Spelling: Common Examination Errors
  // Tags: alternative_spelling
  // ══════════════════════════════════════════════════════════════════════════

  // Set 1 — WAEC spelling errors
  _quSen1('senior','alternative_spelling',3,1,'grammar', 'Which is the correct spelling of the word meaning "a special right or advantage"?', ['privilege','privelege','priviledge','privelige'], 'privilege', term: 1),
  _quSen1('senior','alternative_spelling',3,1,'grammar', 'Which is the correct spelling of the word meaning "to provide lodging or space for"?', ['accommodate','acommodate','accomodate','acomodate'], 'accommodate', term: 1),
  _quSen1('senior','alternative_spelling',3,1,'grammar', 'Which is the correct spelling of the word meaning "to feel ashamed or self-conscious"?', ['embarrass','embarass','embaras','embarrasss'], 'embarrass', term: 1),
  _quSen1('senior','alternative_spelling',3,1,'grammar', 'Which is the correct spelling of the word meaning "the way in which a word is spoken"?', ['pronunciation','pronounciation','pronunceation','pronunciashun'], 'pronunciation', term: 1),
  _quSen1('senior','alternative_spelling',3,1,'grammar', 'Which is the correct spelling of the word meaning "the process of preserving or keeping something in good condition"?', ['maintenance','maintainance','maintenence','maintainence'], 'maintenance', term: 1),
  _quSen1('senior','alternative_spelling',3,1,'grammar', 'Which is the correct spelling of the past tense of "occur"?', ['occurred','occured','ocurred','ocured'], 'occurred', term: 1),
  _quSen1('senior','alternative_spelling',3,1,'grammar', 'Which is the correct spelling of the word meaning "a person who represents an organization"?', ['committee','comittee','commitee','comite'], 'committee', term: 1),
  _quSen1('senior','alternative_spelling',3,1,'grammar', 'Which is the correct spelling of the word meaning "certainly; without doubt"?', ['definitely','definately','definitly','definetly'], 'definitely', term: 1),
  _quSen1('senior','alternative_spelling',3,1,'grammar', 'Which is the correct spelling of the word meaning "to keep apart"?', ['separate','seperate','separat','separete'], 'separate', term: 1),
  _quSen1('senior','alternative_spelling',3,1,'grammar', 'Which is the correct spelling of the word meaning "a piece of paper showing a purchase"?', ['receipt','reciept','receit','receept'], 'receipt', term: 1),

  // Set 2 — WAEC spelling errors
  _quSen1('senior','alternative_spelling',3,2,'grammar', 'Which is the correct spelling of the word meaning "the surroundings or conditions in which a person lives"?', ['environment','enviroment','envirnoment','enviorment'], 'environment', term: 1),
  _quSen1('senior','alternative_spelling',3,2,'grammar', 'Which is the correct spelling of the word meaning "a formal pledge or promise"?', ['guarantee','garantee','guarentee','garentee'], 'guarantee', term: 1),
  _quSen1('senior','alternative_spelling',3,2,'grammar', 'Which is the correct spelling of the word meaning "happening immediately"?', ['immediately','immediatly','immediatley','imediately'], 'immediately', term: 1),
  _quSen1('senior','alternative_spelling',3,2,'grammar', 'Which is the correct spelling of the word meaning "necessary or essential"?', ['indispensable','indispensible','indespensable','indespensible'], 'indispensable', term: 1),
  _quSen1('senior','alternative_spelling',3,2,'grammar', 'Which is the correct spelling of the word meaning "a period of one thousand years"?', ['millennium','millenium','milennium','milenium'], 'millennium', term: 1),
  _quSen1('senior','alternative_spelling',3,2,'grammar', 'Which is the correct spelling of the word meaning "to successfully carry out a task"?', ['manoeuvre','maneuver','manuver','manouver'], 'manoeuvre', term: 1), // British/Nigerian spelling
  _quSen1('senior','alternative_spelling',3,2,'grammar', 'Which is the correct spelling of the word meaning "the occurrence of the same letter at the beginning of words"?', ['alliteration','aliteration','allitteration','alitteration'], 'alliteration', term: 1),
  _quSen1('senior','alternative_spelling',3,2,'grammar', 'Which is the correct spelling of the word meaning "a strong, regular repeated pattern of movement or sound"?', ['rhythm','rythm','rhythym','rythem'], 'rhythm', term: 1),
  _quSen1('senior','alternative_spelling',3,2,'grammar', 'Which is the correct spelling of the word meaning "to judge the value of something"?', ['assess','asses','assese','asess'], 'assess', term: 1),
  _quSen1('senior','alternative_spelling',3,2,'grammar', 'Which is the correct spelling of the word meaning "a person skilled in a particular profession"?', ['professional','proffessional','profesional','proffesional'], 'professional', term: 1),

  // Set 3 — comprehension (NOT read by TTS)
  _quSen1('senior','alternative_spelling',3,3,'comprehension',
      'PASSAGE: In the senior WAEC examination, markers penalise students heavily for poor spelling. A student must ensure their pronunciation does not confuse their writing; for example, spelling "environment" without the \'n\' is a common error. One examiner noted that an otherwise excellent essay was ruined when the candidate wrote "priviledge" instead of "privilege". Similarly, failing to accommodate double consonants in words like "embarrass" and "committee" will definitely result in lost marks. Maintaining a high standard of spelling is indispensable for securing a top grade.\n\nQ: What do WAEC markers penalise students heavily for?',
      ['Poor spelling','Messy handwriting','Writing too fast','Using too many big words'],
      'Poor spelling', term: 1),
  _quSen1('senior','alternative_spelling',3,3,'comprehension',
      'Refer to the passage above.\n\nQ: What must a student ensure their pronunciation does not do?',
      ['Confuse their writing','Make them speak too loudly','Annoy the examiner','Waste time during the exam'],
      'Confuse their writing', term: 1),
  _quSen1('senior','alternative_spelling',3,3,'comprehension',
      'Refer to the passage above.\n\nQ: What is a common error when spelling "environment"?',
      ['Spelling it without the \'n\' (enviroment)','Spelling it with two \'m\'s','Spelling it with an \'a\'','Adding an extra \'e\' at the end'],
      'Spelling it without the \'n\' (enviroment)', term: 1),
  _quSen1('senior','alternative_spelling',3,3,'comprehension',
      'Refer to the passage above.\n\nQ: Which misspelled word ruined an otherwise excellent essay?',
      ['priviledge (instead of privilege)','acommodate (instead of accommodate)','definetly (instead of definitely)','reciept (instead of receipt)'],
      'priviledge (instead of privilege)', term: 1),
  _quSen1('senior','alternative_spelling',3,3,'comprehension',
      'Refer to the passage above.\n\nQ: What is indispensable for securing a top grade?',
      ['Maintaining a high standard of spelling','Writing ten pages','Using a blue pen','Drawing illustrations'],
      'Maintaining a high standard of spelling', term: 1),
  _quSen1('senior','alternative_spelling',3,3,'grammar', 'Identify the correct spelling of the word from the text meaning "needed or essential".', ['indispensable','indispensible','indespensable','indespensible'], 'indispensable', term: 1),
  _quSen1('senior','alternative_spelling',3,3,'grammar', 'Which word from the text uses two double consonants (mm and tt)?', ['committee','accommodate','embarrass','pronunciation'], 'committee', term: 1), // committee has mm, tt, ee. accommodate has cc, mm. embarrass has rr, ss.
  _quSen1('senior','alternative_spelling',3,3,'grammar', 'Which word from the text uses the "double c, double m" rule?', ['accommodate','committee','embarrass','environment'], 'accommodate', term: 1),
  _quSen1('senior','alternative_spelling',3,3,'grammar', 'Identify the correctly spelled adverb from the text meaning "without doubt".', ['definitely','definately','definitly','definetly'], 'definitely', term: 1),
  _quSen1('senior','alternative_spelling',3,3,'vocabulary', 'What does "penalise" (or penalize) mean?', ['to subject to a penalty or punishment; to deduct marks','to reward','to ignore entirely','to write a letter to'], 'to subject to a penalty or punishment; to deduct marks', term: 1),

  // ══════════════════════════════════════════════════════════════════════════
  // WEEK 4 — Reading: Literary Prose
  // Tags: alternative_spelling, syllable
  // ══════════════════════════════════════════════════════════════════════════

  // Set 1 — literary prose concepts
  _quSen1('senior','syllable',4,1,'vocabulary', 'In literary prose, what does "narrative perspective" (or point of view) mean?', ['The vantage point from which the story is told (e.g., first-person, third-person)','The time period of the story','The author\'s biography','The main problem in the story'], 'The vantage point from which the story is told (e.g., first-person, third-person)', term: 1),
  _quSen1('senior','syllable',4,1,'grammar', 'How many syllables are in the word "perspective"?', ['3','2','4','5'], '3', term: 1),
  _quSen1('senior','alternative_spelling',4,1,'vocabulary', 'What is a "third-person omniscient" narrator?', ['A narrator who is not a character in the story but knows the thoughts and feelings of all the characters','A narrator who is the main character using "I"','A narrator who only knows the thoughts of one character','A narrator who speaks directly to the reader using "you"'], 'A narrator who is not a character in the story but knows the thoughts and feelings of all the characters', term: 1),
  _quSen1('senior','alternative_spelling',4,1,'grammar', 'Which pronoun indicates a first-person perspective?', ['I (or we)','He','She','They'], 'I (or we)', term: 1),
  _quSen1('senior','syllable',4,1,'vocabulary', 'What is "characterisation"?', ['The techniques an author uses to reveal a character\'s personality, motives, and background','The physical setting of the scene','The list of chapters in a novel','The rhyming pattern of the prose'], 'The techniques an author uses to reveal a character\'s personality, motives, and background', term: 1),
  _quSen1('senior','syllable',4,1,'grammar', 'How many syllables are in the word "characterisation" (char-ac-ter-i-sa-tion)?', ['6','5','7','4'], '6', term: 1),
  _quSen1('senior','alternative_spelling',4,1,'vocabulary', 'What is "indirect characterisation"?', ['Revealing a character\'s personality through their actions, speech, and appearance rather than stating it directly','Telling the reader exactly what the character is like (e.g., "He was brave.")','Describing the weather','Listing the characters at the start of the book'], 'Revealing a character\'s personality through their actions, speech, and appearance rather than stating it directly', term: 1),
  _quSen1('senior','alternative_spelling',4,1,'vocabulary', 'What is "foreshadowing"?', ['A literary device in which a writer gives an advance hint of what is to come later in the story','A flashback to the past','A long, boring description of a shadow','The conclusion of the story'], 'A literary device in which a writer gives an advance hint of what is to come later in the story', term: 1),
  _quSen1('senior','alternative_spelling',4,1,'grammar', 'Which is the correct spelling of the word meaning "the main events of a play, novel, or movie"?', ['plot','plott','plote','plat'], 'plot', term: 1),
  _quSen1('senior','syllable',4,1,'vocabulary', 'What is the "climax" of a narrative?', ['The turning point or most intense moment of the plot','The introduction of the setting','The final sentence','The author\'s dedication page'], 'The turning point or most intense moment of the plot', term: 1),

  // Set 2 — literary prose concepts
  _quSen1('senior','alternative_spelling',4,2,'vocabulary', 'What is "dramatic irony"?', ['When the audience or reader knows something that the characters in the story do not know','When a character says the exact opposite of what they mean','When the story has a sad ending','When a character makes a joke'], 'When the audience or reader knows something that the characters in the story do not know', term: 1),
  _quSen1('senior','syllable',4,2,'grammar', 'How many syllables are in the word "irony"?', ['3','2','4','1'], '3', term: 1), // i-ro-ny
  _quSen1('senior','alternative_spelling',4,2,'vocabulary', 'What is "verbal irony"?', ['When a speaker says one thing but means another (often sarcasm)','When an event turns out the exact opposite of what was expected','When the audience knows a secret','When a character speaks a foreign language'], 'When a speaker says one thing but means another (often sarcasm)', term: 1),
  _quSen1('senior','alternative_spelling',4,2,'vocabulary', 'What does "setting" contribute to a prose text?', ['It establishes the time, place, and mood or atmosphere of the story','It creates the rhyming scheme','It is only used in non-fiction','It lists the author\'s credentials'], 'It establishes the time, place, and mood or atmosphere of the story', term: 1),
  _quSen1('senior','syllable',4,2,'grammar', 'How many syllables are in the word "atmosphere"?', ['4','3','5','2'], '4', term: 1), // at-mos-phere
  _quSen1('senior','alternative_spelling',4,2,'vocabulary', 'What is "dialogue"?', ['The spoken conversation between two or more characters','A long speech by one character','The inner thoughts of the narrator','A description of the scenery'], 'The spoken conversation between two or more characters', term: 1),
  _quSen1('senior','alternative_spelling',4,2,'vocabulary', 'What is a "protagonist"?', ['The main character or hero of the story','The villain or opposing force','The author of the text','The person reading the book'], 'The main character or hero of the story', term: 1),
  _quSen1('senior','syllable',4,2,'grammar', 'How many syllables are in the word "protagonist"?', ['4','3','5','2'], '4', term: 1), // pro-tag-o-nist
  _quSen1('senior','alternative_spelling',4,2,'vocabulary', 'What is an "antagonist"?', ['The character or force that opposes the protagonist','The hero\'s best friend','The setting of the story','A type of metaphor'], 'The character or force that opposes the protagonist', term: 1),
  _quSen1('senior','alternative_spelling',4,2,'grammar', 'Which word is correctly spelled for a "story or account of events"?', ['narrative','narative','narrativ','narretive'], 'narrative', term: 1),

  // Set 3 — comprehension (NOT read by TTS)
  _quSen1('senior','alternative_spelling',4,3,'comprehension',
      'PASSAGE: Obi gazed at the decaying walls of the family compound. The peeling paint seemed to reflect his own internal ruin. For months, he had hidden the truth about his gambling debts, adopting an air of careless wealth in front of his stern father. "Business is booming, Papa," Obi lied smoothly at dinner, slicing into his yam. "We will expand the trade route next month." His father nodded approvingly, entirely unaware that the bank was preparing to seize the property tomorrow. The heavy, oppressive atmosphere in the dining room suffocated Obi, but he forced another confident smile.\n\nQ: Whose perspective is this passage largely focused on?',
      ['Obi\'s perspective (Third-person limited)','The father\'s perspective','A first-person narrator ("I")','The bank\'s perspective'],
      'Obi\'s perspective (Third-person limited)', term: 1),
  _quSen1('senior','alternative_spelling',4,3,'comprehension',
      'Refer to the passage above.\n\nQ: What does the peeling paint reflect through symbolism?',
      ['Obi\'s own internal ruin and financial trouble','The father\'s old age','The wealth of the family','The bright future of the business'],
      'Obi\'s own internal ruin and financial trouble', term: 1),
  _quSen1('senior','alternative_spelling',4,3,'comprehension',
      'Refer to the passage above.\n\nQ: "Business is booming, Papa," is an example of what?',
      ['Verbal irony and a lie','The honest truth','A simile','Personification'],
      'Verbal irony and a lie', term: 1),
  _quSen1('senior','alternative_spelling',4,3,'comprehension',
      'Refer to the passage above.\n\nQ: The reader knows the bank will seize the property, but the father does not. What is this called?',
      ['Dramatic irony','Foreshadowing','Alliteration','First-person perspective'],
      'Dramatic irony', term: 1),
  _quSen1('senior','syllable',4,3,'comprehension',
      'Refer to the passage above.\n\nQ: How is Obi\'s character indirectly revealed?',
      ['Through his actions (lying smoothly, forcing a smile) to hide his guilt','The author simply says "Obi is a bad person"','Through his father\'s thoughts','By the color of the yam'],
      'Through his actions (lying smoothly, forcing a smile) to hide his guilt', term: 1),
  _quSen1('senior','alternative_spelling',4,3,'vocabulary', 'What does "oppressive" mean in the phrase "oppressive atmosphere"?', ['weighing heavily on the mind or spirits; causing depression or discomfort','very bright and happy','full of fresh air','very cold'], 'weighing heavily on the mind or spirits; causing depression or discomfort', term: 1),
  _quSen1('senior','syllable',4,3,'grammar', 'How many syllables are in the word "atmosphere"?', ['3','4','2','5'], '3', term: 1), // wait, at-mos-phere = 3 syllables. Let me correct the previous set if I said 4. Actually, at-mos-phere is 3. Yes.
  _quSen1('senior','alternative_spelling',4,3,'grammar', 'Identify the correctly spelled word from the text meaning "to take hold of suddenly and forcibly".', ['seize','sieze','seeze','ceize'], 'seize', term: 1),
  _quSen1('senior','alternative_spelling',4,3,'vocabulary', 'What does "decaying" mean?', ['rotting or breaking down over time','growing quickly','painted beautifully','newly built'], 'rotting or breaking down over time', term: 1),
  _quSen1('senior','syllable',4,3,'grammar', 'How many syllables are in the word "approvingly"?', ['4','3','5','2'], '4', term: 1), // ap-prov-ing-ly

  // ══════════════════════════════════════════════════════════════════════════
  // WEEK 5 — Reading: Poetry Analysis
  // Tags: rhyme, alliteration
  // ══════════════════════════════════════════════════════════════════════════

  // Set 1 — poetry terminology
  _quSen1('senior','rhyme',5,1,'vocabulary', 'What is "enjambment" in poetry?', ['The continuation of a sentence without a pause beyond the end of a line, couplet, or stanza','A type of rhyming scheme','The beat of the poem','The use of punctuation at the end of every line'], 'The continuation of a sentence without a pause beyond the end of a line, couplet, or stanza', term: 1),
  _quSen1('senior','rhyme',5,1,'vocabulary', 'What is "metre" (or meter) in a poem?', ['The basic rhythmic structure of a verse or lines in verse','The title of the poem','The author\'s pen name','A unit of measurement for distance'], 'The basic rhythmic structure of a verse or lines in verse', term: 1),
  _quSen1('senior','alliteration',5,1,'vocabulary', 'What is "assonance"?', ['The repetition of vowel sounds within nearby words (e.g., the rain in Spain)','The repetition of consonant sounds at the start of words','A type of rhyme at the end of a line','A stanza with three lines'], 'The repetition of vowel sounds within nearby words (e.g., the rain in Spain)', term: 1),
  _quSen1('senior','alliteration',5,1,'grammar', 'Identify the device: "Try to light the fire." (Focus on the /i/ sound)', ['Assonance','Alliteration','Metaphor','Personification'], 'Assonance', term: 1),
  _quSen1('senior','alliteration',5,1,'vocabulary', 'What is "consonance"?', ['The repetition of consonant sounds within or at the end of words (e.g., pitter patter)','The repetition of vowel sounds','A poem with no rhythm','The main theme of the poem'], 'The repetition of consonant sounds within or at the end of words (e.g., pitter patter)', term: 1),
  _quSen1('senior','rhyme',5,1,'vocabulary', 'What does the "tone" of a poem represent?', ['The speaker\'s attitude toward the subject, such as angry, melancholic, or joyful','The volume the poem should be read at','The speed of the reading','The time period it was written'], 'The speaker\'s attitude toward the subject, such as angry, melancholic, or joyful', term: 1),
  _quSen1('senior','rhyme',5,1,'vocabulary', 'What is a "sonnet"?', ['A poem of fourteen lines using any of a number of formal rhyme schemes','A short, funny five-line poem','A poem that does not rhyme at all','A two-line rhyming poem'], 'A poem of fourteen lines using any of a number of formal rhyme schemes', term: 1),
  _quSen1('senior','alliteration',5,1,'vocabulary', 'What is "hyperbole"?', ['Exaggerated statements or claims not meant to be taken literally','An understatement to make something seem small','A direct comparison using "like"','Giving animals human traits'], 'Exaggerated statements or claims not meant to be taken literally', term: 1),
  _quSen1('senior','alliteration',5,1,'grammar', 'Identify the device: "I have told you a million times!"', ['Hyperbole','Simile','Alliteration','Assonance'], 'Hyperbole', term: 1),
  _quSen1('senior','rhyme',5,1,'grammar', 'Who is the "speaker" or "persona" in a poem?', ['The voice or character telling the poem, which is not always the author','The author of the poem','The person reading the poem out loud','The publisher of the book'], 'The voice or character telling the poem, which is not always the author', term: 1),

  // Set 2 — poetry analysis
  _quSen1('senior','rhyme',5,2,'grammar', 'What is the rhyme scheme of a heroic couplet?', ['AA','AB','ABC','AABB'], 'AA', term: 1),
  _quSen1('senior','alliteration',5,2,'grammar', 'Which line contains alliteration?', ['The slimy snake slowly slithered.','The cat slept on the mat.','I want to go to the park.','He ate the red apple.'], 'The slimy snake slowly slithered.', term: 1),
  _quSen1('senior','rhyme',5,2,'vocabulary', 'What is "imagery" used for in poetry?', ['To paint a vivid picture in the reader\'s mind using sensory details','To make the poem longer','To hide the true meaning','To confuse the reader'], 'To paint a vivid picture in the reader\'s mind using sensory details', term: 1),
  _quSen1('senior','alliteration',5,2,'vocabulary', 'What is "onomatopoeia"?', ['The formation of a word from a sound associated with what is named (e.g., sizzle, bang)','The repetition of vowels','A type of rhyme','A 14-line poem'], 'The formation of a word from a sound associated with what is named (e.g., sizzle, bang)', term: 1),
  _quSen1('senior','alliteration',5,2,'grammar', 'Identify the device: "The bees buzzed and the brook babbled."', ['Onomatopoeia (and Alliteration)','Simile','Hyperbole','Metaphor'], 'Onomatopoeia (and Alliteration)', term: 1),
  _quSen1('senior','rhyme',5,2,'vocabulary', 'What is an "elegy"?', ['A poem of serious reflection, typically a lament for the dead','A funny, lighthearted poem','A poem about love and marriage','A 14-line sonnet'], 'A poem of serious reflection, typically a lament for the dead', term: 1),
  _quSen1('senior','alliteration',5,2,'grammar', 'Identify the device: "The city is a jungle."', ['Metaphor','Simile','Personification','Hyperbole'], 'Metaphor', term: 1),
  _quSen1('senior','rhyme',5,2,'vocabulary', 'What is "free verse"?', ['Poetry that does not have a regular rhythm or rhyme scheme','Poetry that must rhyme perfectly','Poetry written by a group of people','Poetry that is very expensive to buy'], 'Poetry that does not have a regular rhythm or rhyme scheme', term: 1),
  _quSen1('senior','alliteration',5,2,'grammar', 'Identify the device: "The sun smiled down on the children."', ['Personification','Simile','Metaphor','Alliteration'], 'Personification', term: 1),
  _quSen1('senior','rhyme',5,2,'grammar', 'When analysing a poem for WAEC, what should you look for?', ['Theme, tone, imagery, structure, and literary devices','Just the rhyming words at the end','The author\'s picture','The number of words in the poem'], 'Theme, tone, imagery, structure, and literary devices', term: 1),

  // Set 3 — comprehension (NOT read by TTS)
  _quSen1('senior','rhyme',5,3,'comprehension',
      'POEM: The Iron Giant\nThe massive machine groans and grinds,\nLeaving the quiet, green fields behind.\nIt chews the earth with jagged steel,\nA thoughtless beast that cannot feel.\n\nThe trees weep sap from broken bark,\nAs daylight fades into the dark.\nWe built this king of smoke and oil,\nTo harvest grain and strip the soil.\n\nQ: What is the rhyme scheme of the first stanza?',
      ['AABB','ABAB','ABCA','ABCD'],
      'AABB', term: 1),
  _quSen1('senior','alliteration',5,3,'comprehension',
      'Refer to the poem above.\n\nQ: Which line contains clear alliteration?',
      ['The massive machine groans and grinds','As daylight fades into the dark','To harvest grain and strip the soil','A thoughtless beast that cannot feel'],
      'The massive machine groans and grinds', term: 1),
  _quSen1('senior','alliteration',5,3,'comprehension',
      'Refer to the poem above.\n\nQ: What literary device is used in the phrase "The trees weep sap"?',
      ['Personification','Simile','Alliteration','Hyperbole'],
      'Personification', term: 1),
  _quSen1('senior','alliteration',5,3,'comprehension',
      'Refer to the poem above.\n\nQ: What metaphor is used to describe the machine in the first stanza?',
      ['A thoughtless beast','A quiet field','The iron giant','The broken bark'],
      'A thoughtless beast', term: 1),
  _quSen1('senior','rhyme',5,3,'comprehension',
      'Refer to the poem above.\n\nQ: What is the overall tone of the poem regarding the machine?',
      ['Melancholic and critical of industrial destruction','Joyful and excited about farming','Bored and indifferent','Humorous and funny'],
      'Melancholic and critical of industrial destruction', term: 1),
  _quSen1('senior','rhyme',5,3,'vocabulary', 'What does "jagged" mean?', ['having rough, sharp points protruding','very smooth and polished','soft and weak','colorful'], 'having rough, sharp points protruding', term: 1),
  _quSen1('senior','alliteration',5,3,'grammar', 'Identify the words causing the alliteration in the first line.', ['massive machine (and groans/grinds)','quiet green','leaves behind','cannot feel'], 'massive machine (and groans/grinds)', term: 1),
  _quSen1('senior','rhyme',5,3,'grammar', 'Which word rhymes with "oil" in the second stanza?', ['soil','dark','bark','weep'], 'soil', term: 1),
  _quSen1('senior','alliteration',5,3,'vocabulary', 'In the metaphor "king of smoke and oil", what does this imply about the machine?', ['That it dominates and rules over nature through pollution','That it is literally royalty','That it is very expensive to buy','That it is a human king'], 'That it dominates and rules over nature through pollution', term: 1),
  _quSen1('senior','rhyme',5,3,'grammar', 'What does the word "strip" mean in the phrase "strip the soil"?', ['to remove all covering from; to tear away the top layer','to paint the soil in stripes','to plant new seeds','to walk across'], 'to remove all covering from; to tear away the top layer', term: 1),

  // ══════════════════════════════════════════════════════════════════════════
  // WEEK 6 — Writing: Expository Essay
  // Tags: prefix, suffix
  // ══════════════════════════════════════════════════════════════════════════

  // Set 1 — expository writing structure
  _quSen1('senior','suffix',6,1,'vocabulary', 'What is an "expository essay"?', ['An essay that investigates an idea, evaluates evidence, and sets forth an explanation or information in a clear and concise manner','A fictional story about a hero','A poem that expresses deep feelings','An angry letter to a newspaper'], 'An essay that investigates an idea, evaluates evidence, and sets forth an explanation or information in a clear and concise manner', term: 1),
  _quSen1('senior','prefix',6,1,'grammar', 'What is the "thesis statement" in an expository essay?', ['A clear, concise sentence in the introduction that states the main point or purpose of the entire essay','The final sentence of the essay','A question asked to confuse the reader','A quote from a famous author'], 'A clear, concise sentence in the introduction that states the main point or purpose of the entire essay', term: 1),
  _quSen1('senior','suffix',6,1,'grammar', 'Where should the thesis statement typically be located?', ['At the end of the introductory paragraph','In the middle of the conclusion','In the first body paragraph','It should not be written down'], 'At the end of the introductory paragraph', term: 1),
  _quSen1('senior','prefix',6,1,'grammar', 'What is a "topic sentence"?', ['The first sentence of a body paragraph that introduces the specific point that paragraph will discuss','The sentence that ends the essay','A transition word','A piece of evidence'], 'The first sentence of a body paragraph that introduces the specific point that paragraph will discuss', term: 1),
  _quSen1('senior','suffix',6,1,'vocabulary', 'What does it mean for an essay to be "objective"?', ['It is based on facts and evidence, free from personal bias or emotional language','It is full of personal opinions and feelings','It is written in the first person ("I feel...")','It is entirely fictional'], 'It is based on facts and evidence, free from personal bias or emotional language', term: 1),
  _quSen1('senior','prefix',6,1,'grammar', 'Which prefix word is used to describe the logical flow and connection between paragraphs? (co- = together)', ['cohesion','disconnection','misunderstanding','unorganized'], 'cohesion', term: 1),
  _quSen1('senior','suffix',6,1,'grammar', 'Which transition word is best to show a cause-and-effect relationship?', ['Consequently','Similarly','However','For example'], 'Consequently', term: 1),
  _quSen1('senior','prefix',6,1,'grammar', 'Which transition phrase is best to provide evidence?', ['For instance,...','In conclusion,...','On the other hand,...','Therefore,...'], 'For instance,...', term: 1),
  _quSen1('senior','suffix',6,1,'grammar', 'What must every piece of evidence in a body paragraph be followed by?', ['An explanation of how that evidence supports the topic sentence and the overall thesis','A completely unrelated fact','The conclusion of the essay','A new topic sentence'], 'An explanation of how that evidence supports the topic sentence and the overall thesis', term: 1),
  _quSen1('senior','prefix',6,1,'vocabulary', 'What should the conclusion of an expository essay do?', ['Restate the thesis in a new way and summarize the main points without introducing new information','Introduce a completely new argument','End suddenly without warning','Ask the reader to write an essay'], 'Restate the thesis in a new way and summarize the main points without introducing new information', term: 1),

  // Set 2 — expository writing language
  _quSen1('senior','suffix',6,2,'grammar', 'Which of these is NOT an appropriate tone for an expository essay?', ['Highly emotional and sarcastic','Formal and objective','Academic and structured','Clear and informative'], 'Highly emotional and sarcastic', term: 1),
  _quSen1('senior','prefix',6,2,'vocabulary', 'What does "clarity" mean in writing?', ['The quality of being easy to see, hear, or understand; completely transparent','The use of very long, confusing words','A type of grammar error','The length of the essay'], 'The quality of being easy to see, hear, or understand; completely transparent', term: 1),
  _quSen1('senior','suffix',6,2,'grammar', 'Which sentence uses a more appropriate, formal academic register?', ['"Research indicates a significant decline in population."','"The numbers are going way down, bro."','"People are dying a lot."','"I think the population is bad."'], '"Research indicates a significant decline in population."', term: 1),
  _quSen1('senior','prefix',6,2,'grammar', 'Which prefix can be added to "structure" to mean "to organize or build again"?', ['re- (restructure)','un- (unstructure)','dis- (disstructure)','mis- (misstructure)'], 're- (restructure)', term: 1),
  _quSen1('senior','suffix',6,2,'grammar', 'If you want to add an additional, related point, which transition should you use?', ['Furthermore','However','Therefore','Conversely'], 'Furthermore', term: 1),
  _quSen1('senior','prefix',6,2,'vocabulary', 'What does "substantiate" mean? (sub = under)', ['To provide evidence to support or prove the truth of an argument','To completely destroy an argument','To change the topic','To write the introduction'], 'To provide evidence to support or prove the truth of an argument', term: 1),
  _quSen1('senior','suffix',6,2,'grammar', 'Which word correctly uses the suffix "-tion" to mean "the act of explaining"?', ['explanation','explaination','explanetion','explainment'], 'explanation', term: 1),
  _quSen1('senior','prefix',6,2,'grammar', 'Which of these is a weak thesis statement?', ['"This essay is about pollution."','"Pollution in urban centers is primarily driven by industrial emissions and requires immediate government regulation."','"Pollution is bad."','"I am going to write about why pollution happens."'], '"This essay is about pollution."', term: 1), // The others are weaker, but "This essay is about..." is a classic weak structure. Let's make it clearer.
  // Replacing with a better question:
  _quSen1('senior','prefix',6,2,'grammar', 'Which of these is a STRONG thesis statement?', ['"Urban pollution is primarily driven by industrial emissions and requires strict government regulation."','"This essay is about pollution."','"Pollution is bad."','"I am going to write about why pollution happens."'], '"Urban pollution is primarily driven by industrial emissions and requires strict government regulation."', term: 1),
  _quSen1('senior','suffix',6,2,'vocabulary', 'What does "concise" mean?', ['Giving a lot of information clearly and in a few words','Using as many words as possible','Being very vague and confusing','Writing an essay with no structure'], 'Giving a lot of information clearly and in a few words', term: 1),

  // Set 3 — comprehension (NOT read by TTS)
  _quSen1('senior','prefix',6,3,'comprehension',
      'PASSAGE: Writing an effective expository essay requires a systematic approach. The introduction must engage the reader and present a lucid thesis statement. This thesis acts as the foundation for the entire text. Subsequently, the writer must construct highly structured body paragraphs. Each paragraph should begin with a topic sentence, followed by empirical evidence to substantiate the claim. It is crucial to maintain an objective tone; emotional language or unsupported opinions will significantly weaken the essay\'s credibility. Finally, the conclusion must seamlessly synthesize the main points without introducing extraneous information.\n\nQ: What must the introduction of an expository essay present?',
      ['A lucid thesis statement','Extraneous information','An emotional argument','A fictional story'],
      'A lucid thesis statement', term: 1),
  _quSen1('senior','suffix',6,3,'comprehension',
      'Refer to the passage above.\n\nQ: What acts as the foundation for the entire text?',
      ['The thesis statement','The conclusion','The transition words','The title'],
      'The thesis statement', term: 1),
  _quSen1('senior','prefix',6,3,'comprehension',
      'Refer to the passage above.\n\nQ: How should each body paragraph begin?',
      ['With a topic sentence','With a concluding remark','With empirical evidence','With a rhetorical question'],
      'With a topic sentence', term: 1),
  _quSen1('senior','suffix',6,3,'comprehension',
      'Refer to the passage above.\n\nQ: What will weaken the essay\'s credibility?',
      ['Emotional language or unsupported opinions','Empirical evidence','A structured approach','A lucid thesis statement'],
      'Emotional language or unsupported opinions', term: 1),
  _quSen1('senior','prefix',6,3,'comprehension',
      'Refer to the passage above.\n\nQ: What must the conclusion do?',
      ['Seamlessly synthesize the main points without introducing extraneous information','Introduce three new arguments','Use highly emotional language','Ask the reader to guess the meaning'],
      'Seamlessly synthesize the main points without introducing extraneous information', term: 1),
  _quSen1('senior','prefix',6,3,'vocabulary', 'What does "lucid" mean in the phrase "lucid thesis statement"?', ['expressed clearly; easy to understand','very long and confusing','written in bright colors','hidden and secretive'], 'expressed clearly; easy to understand', term: 1),
  _quSen1('senior','prefix',6,3,'vocabulary', 'What does "substantiate" mean?', ['to provide evidence to support or prove the truth of','to disagree with completely','to write down quickly','to delete from the text'], 'to provide evidence to support or prove the truth of', term: 1),
  _quSen1('senior','suffix',6,3,'vocabulary', 'What does "empirical evidence" refer to?', ['information acquired by observation or scientific experimentation','a random guess','a personal feeling','a story told by a friend'], 'information acquired by observation or scientific experimentation', term: 1),
  _quSen1('senior','prefix',6,3,'vocabulary', 'What does "extraneous" mean?', ['irrelevant or unrelated to the subject being dealt with','extremely important','essential and necessary','very difficult to read'], 'irrelevant or unrelated to the subject being dealt with', term: 1),
  _quSen1('senior','suffix',6,3,'grammar', 'Identify the adverb in the phrase "seamlessly synthesize".', ['seamlessly','synthesize','must','points'], 'seamlessly', term: 1),

// ══════════════════════════════════════════════════════════════════════════
  // WEEK 7 — Writing: Letter of Application
  // Tags: suffix, prefix
  // ══════════════════════════════════════════════════════════════════════════

  // Set 1 — letter structure and vocabulary
  _quSen1('senior','suffix',7,1,'vocabulary', 'What is the primary purpose of a letter of application?', ['To apply for a job, scholarship, or admission, highlighting one\'s qualifications','To complain about a bad service','To invite someone to an event','To write a fictional story'], 'To apply for a job, scholarship, or admission, highlighting one\'s qualifications', term: 1),
  _quSen1('senior','prefix',7,1,'grammar', 'In a formal letter of application, where does the sender\'s address go?', ['Top right corner','Top left corner','Bottom left corner','In the center'], 'Top right corner', term: 1),
  _quSen1('senior','suffix',7,1,'grammar', 'Which sign-off is correct when you begin a formal letter with "Dear Sir/Madam,"?', ['Yours faithfully,','Yours sincerely,','Best regards,','With love,'], 'Yours faithfully,', term: 1),
  _quSen1('senior','prefix',7,1,'grammar', 'Which sign-off is correct when you begin a formal letter with the recipient\'s name, such as "Dear Mr. Ojo,"?', ['Yours sincerely,','Yours faithfully,','Cheers,','Truly yours,'], 'Yours sincerely,', term: 1),
  _quSen1('senior','suffix',7,1,'vocabulary', 'What is a "Curriculum Vitae" (CV) or resume?', ['A brief account of a person\'s education, qualifications, and previous occupations','A list of hobbies','A legal contract','A medical record'], 'A brief account of a person\'s education, qualifications, and previous occupations', term: 1),
  _quSen1('senior','prefix',7,1,'grammar', 'Which phrase is most appropriate for the opening of an application letter?', ['I am writing to apply for the position of...','I want to get the job of...','Give me the job for...','I was wondering if I could be...'], 'I am writing to apply for the position of...', term: 1),
  _quSen1('senior','suffix',7,1,'grammar', 'Which word uses the suffix "-ance" to mean "the action or fact of complying with a wish or command"?', ['compliance','complyance','compliment','complicance'], 'compliance', term: 1),
  _quSen1('senior','prefix',7,1,'grammar', 'Which prefix word means "having the necessary requirements for a position"?', ['qualified','unqualified','disqualified','misqualified'], 'qualified', term: 1),
  _quSen1('senior','suffix',7,1,'grammar', 'Which is a highly formal way to say "I have attached my CV"?', ['Please find my CV enclosed for your perusal.','Here is my CV.','Look at my CV.','I dropped my CV in the envelope.'], 'Please find my CV enclosed for your perusal.', term: 1),
  _quSen1('senior','prefix',7,1,'grammar', 'Which transition word is best used to add another skill or qualification in an application letter?', ['Furthermore,...','However,...','On the contrary,...','Nevertheless,...'], 'Furthermore,...', term: 1),

  // Set 2 — letter vocabulary
  _quSen1('senior','suffix',7,2,'vocabulary', 'What does "perusal" mean? (often used in: "for your perusal")', ['the action of reading or examining something carefully','the act of throwing something away','the act of signing a document','the act of copying'], 'the action of reading or examining something carefully', term: 1),
  _quSen1('senior','prefix',7,2,'grammar', 'Which phrase is an excellent way to conclude an application letter?', ['I look forward to discussing my application with you in an interview.','Call me when you decide.','I hope I get it.','Thanks for reading.'], 'I look forward to discussing my application with you in an interview.', term: 1),
  _quSen1('senior','suffix',7,2,'grammar', 'Which word correctly adds a suffix to "refer"? (Meaning: a person willing to testify to your character)', ['referee','referment','referance','referral'], 'referee', term: 1),
  _quSen1('senior','prefix',7,2,'vocabulary', 'What does "proactive" mean? (pro- = before/forward, active)', ['creating or controlling a situation by causing something to happen rather than responding to it after it has happened','waiting for instructions','being very lazy','reacting to a disaster'], 'creating or controlling a situation by causing something to happen rather than responding to it after it has happened', term: 1),
  _quSen1('senior','suffix',7,2,'grammar', 'Which word correctly uses the suffix "-able" to mean "can be relied upon"?', ['reliable','relyable','reliible','relable'], 'reliable', term: 1),
  _quSen1('senior','prefix',7,2,'vocabulary', 'What does "proficient" mean?', ['competent or skilled in doing or using something','completely unable to do a task','learning something for the first time','having no interest in a subject'], 'competent or skilled in doing or using something', term: 1),
  _quSen1('senior','suffix',7,2,'grammar', 'Identify the noun form of "competent".', ['competence','competency (both are correct, usually competence)','competention','compete'], 'competence', term: 1), // Standardizing on competence
  _quSen1('senior','prefix',7,2,'grammar', 'Rewrite formally: "I have worked here before."', ['I possess prior experience in this field.','I did this job already.','I know how to do this.','I worked here in the past.'], 'I possess prior experience in this field.', term: 1),
  _quSen1('senior','suffix',7,2,'grammar', 'Which word uses the suffix "-ment" to mean "an arrangement or a job"?', ['employment','employion','employance','employly'], 'employment', term: 1),
  _quSen1('senior','prefix',7,2,'grammar', 'Which prefix word means "to state something again strongly"?', ['reiterate','uniterate','misiterate','disiterate'], 'reiterate', term: 1),

  // Set 3 — comprehension (NOT read by TTS)
  _quSen1('senior','prefix',7,3,'comprehension',
      'PASSAGE: \n12 Independence Way,\nEnugu.\n10th June 2026.\n\nThe Human Resources Manager,\nZenith Banking Corporation,\nAbuja.\n\nDear Sir/Madam,\n\nAPPLICATION FOR THE POST OF FINANCIAL ANALYST\n\nI am writing to express my profound interest in the Financial Analyst position advertised in the National Daily. As a proactive graduate of Economics with a First Class degree, I possess a comprehensive understanding of market trends. During my previous internship, I successfully spearheaded a project that reduced operational costs by 15%. I am highly proficient in financial modeling software and thrive in high-pressure environments. Please find enclosed my curriculum vitae for your perusal. I would welcome the opportunity to further discuss how my skills align with your esteemed organization\'s goals.\n\nYours faithfully,\n[Signature]\nChidi Okafor\n\nQ: Why did Chidi Okafor write this letter?',
      ['To apply for the post of Financial Analyst','To complain about a banking error','To request a bank loan','To resign from his job'],
      'To apply for the post of Financial Analyst', term: 1),
  _quSen1('senior','prefix',7,3,'comprehension',
      'Refer to the passage above.\n\nQ: Where did Chidi see the job advertisement?',
      ['In the National Daily','On the internet','On a billboard','From a friend'],
      'In the National Daily', term: 1),
  _quSen1('senior','suffix',7,3,'comprehension',
      'Refer to the passage above.\n\nQ: What did Chidi successfully do during his previous internship?',
      ['He spearheaded a project that reduced operational costs by 15%','He learned how to use financial software','He became the Human Resources Manager','He increased operational costs'],
      'He spearheaded a project that reduced operational costs by 15%', term: 1),
  _quSen1('senior','prefix',7,3,'comprehension',
      'Refer to the passage above.\n\nQ: What document did Chidi enclose with the letter?',
      ['His curriculum vitae','His First Class degree certificate','A photograph','A reference letter'],
      'His curriculum vitae', term: 1),
  _quSen1('senior','suffix',7,3,'comprehension',
      'Refer to the passage above.\n\nQ: Why did Chidi use "Yours faithfully" as a sign-off?',
      ['Because he addressed the letter to "Dear Sir/Madam"','Because he is a faithful person','Because he knows the manager personally','Because it is a legal requirement'],
      'Because he addressed the letter to "Dear Sir/Madam"', term: 1),
  _quSen1('senior','prefix',7,3,'vocabulary', 'What does "proactive" mean in the phrase "proactive graduate"?', ['taking action by causing change and not only reacting to change when it happens','waiting to be told what to do','very lazy and slow','angry and aggressive'], 'taking action by causing change and not only reacting to change when it happens', term: 1),
  _quSen1('senior','suffix',7,3,'grammar', 'Identify the suffix in the word "operational".', ['-al','-tion','-ate','-oper'], '-al', term: 1),
  _quSen1('senior','prefix',7,3,'vocabulary', 'What does "perusal" mean in the phrase "for your perusal"?', ['the action of reading or examining something','the action of throwing something away','the action of signing a document','the action of printing'], 'the action of reading or examining something', term: 1),
  _quSen1('senior','suffix',7,3,'vocabulary', 'What does "proficient" mean?', ['competent or skilled in doing something','unable to do something','learning for the first time','ignorant'], 'competent or skilled in doing something', term: 1),
  _quSen1('senior','prefix',7,3,'grammar', 'Identify the word in the passage that uses a prefix meaning "before" or "earlier in time".', ['previous','profound','project','proactive'], 'previous', term: 1),

  // ══════════════════════════════════════════════════════════════════════════
  // WEEK 8 — Grammar: Sentence Variety
  // Tags: suffix
  // ══════════════════════════════════════════════════════════════════════════

  // Set 1 — sentence types
  _quSen1('senior','suffix',8,1,'vocabulary', 'What is a "simple sentence"?', ['A sentence consisting of only one independent clause, with a single subject and predicate','A sentence with two independent clauses','A sentence with a subordinate clause','A sentence that is very short'], 'A sentence consisting of only one independent clause, with a single subject and predicate', term: 1),
  _quSen1('senior','suffix',8,1,'vocabulary', 'What is a "compound sentence"?', ['A sentence with more than one subject or predicate (two independent clauses joined by a conjunction like "and", "but", "so")','A sentence with one independent clause','A sentence with a dependent clause','A sentence with no verbs'], 'A sentence with more than one subject or predicate (two independent clauses joined by a conjunction like "and", "but", "so")', term: 1),
  _quSen1('senior','suffix',8,1,'vocabulary', 'What is a "complex sentence"?', ['A sentence containing a subordinate (dependent) clause or clauses connected to an independent clause','Two independent clauses joined by "and"','A sentence that is very hard to understand','A sentence with only one verb'], 'A sentence containing a subordinate (dependent) clause or clauses connected to an independent clause', term: 1),
  _quSen1('senior','suffix',8,1,'vocabulary', 'What is a "compound-complex sentence"?', ['A sentence having two or more independent clauses and one or more dependent clauses','A sentence with two verbs','A sentence with no subject','A simple sentence with a long adjective'], 'A sentence having two or more independent clauses and one or more dependent clauses', term: 1),
  _quSen1('senior','suffix',8,1,'grammar', 'Identify the sentence type: "The sun was shining brightly."', ['Simple sentence','Compound sentence','Complex sentence','Compound-complex sentence'], 'Simple sentence', term: 1),
  _quSen1('senior','suffix',8,1,'grammar', 'Identify the sentence type: "The sun was shining, but it was still cold."', ['Compound sentence','Simple sentence','Complex sentence','Compound-complex sentence'], 'Compound sentence', term: 1),
  _quSen1('senior','suffix',8,1,'grammar', 'Identify the sentence type: "Although the sun was shining, it was still cold."', ['Complex sentence','Simple sentence','Compound sentence','Compound-complex sentence'], 'Complex sentence', term: 1),
  _quSen1('senior','suffix',8,1,'grammar', 'Identify the sentence type: "Although it was cold, the sun was shining, so we went for a walk."', ['Compound-complex sentence','Simple sentence','Compound sentence','Complex sentence'], 'Compound-complex sentence', term: 1),
  _quSen1('senior','suffix',8,1,'grammar', 'Which conjunction is typically used to create a compound sentence?', ['but (FANBOYS: for, and, nor, but, or, yet, so)','although','because','since'], 'but (FANBOYS: for, and, nor, but, or, yet, so)', term: 1),
  _quSen1('senior','suffix',8,1,'grammar', 'Which conjunction is typically used to create a complex sentence?', ['because (subordinating conjunction)','and','or','but'], 'because (subordinating conjunction)', term: 1),

  // Set 2 — sentence variety in writing
  _quSen1('senior','suffix',8,2,'grammar', 'Why is sentence variety important in an essay?', ['It makes the writing flow better, keeps the reader engaged, and prevents monotony','It makes the essay shorter','It confuses the reader, which makes you look smart','It is required to pass the exam but has no real purpose'], 'It makes the writing flow better, keeps the reader engaged, and prevents monotony', term: 1),
  _quSen1('senior','suffix',8,2,'grammar', 'How can you vary your sentence openers?', ['By starting with an adverb, a prepositional phrase, or a subordinate clause instead of always starting with the subject','By starting every sentence with "I"','By starting every sentence with "The"','By never using capital letters'], 'By starting with an adverb, a prepositional phrase, or a subordinate clause instead of always starting with the subject', term: 1),
  _quSen1('senior','suffix',8,2,'grammar', 'Identify the sentence that opens with an adverb.', ['Suddenly, the lights went out.','The lights went out.','When the lights went out, we screamed.','Under the table, it was dark.'], 'Suddenly, the lights went out.', term: 1),
  _quSen1('senior','suffix',8,2,'grammar', 'Identify the sentence that opens with a prepositional phrase.', ['In the middle of the night, we heard a noise.','We heard a noise.','Loudly, the noise woke us.','Because it was dark, we heard a noise.'], 'In the middle of the night, we heard a noise.', term: 1),
  _quSen1('senior','suffix',8,2,'grammar', 'Identify the sentence that opens with a subordinate clause.', ['Since it was raining, the match was cancelled.','The match was cancelled.','Quickly, the match was cancelled.','The match was cancelled, so we went home.'], 'Since it was raining, the match was cancelled.', term: 1),
  _quSen1('senior','suffix',8,2,'grammar', 'Which of these is a fragment (an incomplete sentence)?', ['Because the car broke down.','The car broke down.','The car broke down, so we walked.','It broke.'], 'Because the car broke down.', term: 1),
  _quSen1('senior','suffix',8,2,'grammar', 'What is a "run-on sentence"?', ['Two or more independent clauses joined without correct punctuation or conjunctions','A sentence that is very descriptive','A sentence with a dependent clause','A sentence that uses big words'], 'Two or more independent clauses joined without correct punctuation or conjunctions', term: 1),
  _quSen1('senior','suffix',8,2,'grammar', 'Which of these is a run-on sentence?', ['The exam was hard I didn\'t finish on time.','The exam was hard, so I didn\'t finish on time.','Because the exam was hard, I didn\'t finish on time.','The exam was hard; I didn\'t finish on time.'], 'The exam was hard I didn\'t finish on time.', term: 1),
  _quSen1('senior','suffix',8,2,'grammar', 'How can you fix this run-on? "It was late we went to bed."', ['It was late, so we went to bed. (or It was late; we went to bed.)','It was late we went to bed.','Because it was late we went to bed.','It was late and we went to bed without a comma.'], 'It was late, so we went to bed. (or It was late; we went to bed.)', term: 1),
  _quSen1('senior','suffix',8,2,'grammar', 'Which suffix makes "monotony" into an adjective meaning "boring and repetitive"?', ['-ous (monotonous)','-ly (monotonly)','-ic (monotonic)','-able (monotonable)'], '-ous (monotonous)', term: 1),

  // Set 3 — comprehension (NOT read by TTS)
  _quSen1('senior','suffix',8,3,'comprehension',
      'PASSAGE: The old library stood at the edge of town. It was a massive building. It had tall windows. It was always quiet. (Paragraph 1)\n\nRising majestically at the edge of the town, the old library commanded respect. Although its towering windows were coated in centuries of dust, they still allowed streams of golden light to pierce the gloom. Inside, the profound silence was only occasionally broken by the turning of a page, creating an atmosphere of deep reverence. Because the librarian, Mrs. Ade, demanded absolute perfection, no one dared to speak above a whisper. (Paragraph 2)\n\nQ: What is the main difference between Paragraph 1 and Paragraph 2?',
      ['Paragraph 2 uses sentence variety (complex/compound sentences and varied openers), while Paragraph 1 uses only short, simple sentences','Paragraph 1 is about a library, Paragraph 2 is about a school','Paragraph 1 is much longer','Paragraph 2 uses only simple sentences'],
      'Paragraph 2 uses sentence variety (complex/compound sentences and varied openers), while Paragraph 1 uses only short, simple sentences', term: 1),
  _quSen1('senior','suffix',8,3,'comprehension',
      'Refer to the passage above.\n\nQ: How does the first sentence of Paragraph 2 open?',
      ['With a participial phrase ("Rising majestically...")','With a subject ("The library...")','With an adverb ("Majestically,...")','With a subordinating conjunction ("Because...")'],
      'With a participial phrase ("Rising majestically...")', term: 1),
  _quSen1('senior','suffix',8,3,'comprehension',
      'Refer to the passage above.\n\nQ: "Although its towering windows were coated in centuries of dust, they still allowed streams of golden light to pierce the gloom." What type of sentence is this?',
      ['Complex sentence','Simple sentence','Compound sentence','A sentence fragment'],
      'Complex sentence', term: 1),
  _quSen1('senior','suffix',8,3,'comprehension',
      'Refer to the passage above.\n\nQ: Who demanded absolute perfection in the library?',
      ['The librarian, Mrs. Ade','The town mayor','The students','The old library itself'],
      'The librarian, Mrs. Ade', term: 1),
  _quSen1('senior','suffix',8,3,'comprehension',
      'Refer to the passage above.\n\nQ: What effect does the sentence variety in Paragraph 2 have on the reader?',
      ['It makes the writing flow better, creates imagery, and keeps the reader engaged','It makes the text incredibly boring and monotonous','It confuses the reader completely','It makes the reader read faster without understanding'],
      'It makes the writing flow better, creates imagery, and keeps the reader engaged', term: 1),
  _quSen1('senior','suffix',8,3,'vocabulary', 'What does "reverence" mean?', ['deep respect for someone or something','a loud noise','a feeling of anger','a dusty window'], 'deep respect for someone or something', term: 1),
  _quSen1('senior','suffix',8,3,'grammar', 'Identify the subordinating conjunction used in the final sentence of Paragraph 2.', ['Because','dared','above','perfection'], 'Because', term: 1),
  _quSen1('senior','suffix',8,3,'grammar', 'What suffix is added to "majestic" to make it an adverb?', ['-ally (majestically)','-ness (majesticness)','-tion (majestiction)','-ous (majesticous)'], '-ally (majestically)', term: 1),
  _quSen1('senior','suffix',8,3,'vocabulary', 'What does "profound" mean in the phrase "profound silence"?', ['very great or intense','very loud','slightly annoying','musical'], 'very great or intense', term: 1),
  _quSen1('senior','suffix',8,3,'grammar', 'Identify the sentence in Paragraph 2 that opens with a prepositional phrase.', ['Inside, the profound silence was only occasionally broken...','Rising majestically...','Although its towering windows...','Because the librarian...'], 'Inside, the profound silence was only occasionally broken...', term: 1),

  // ══════════════════════════════════════════════════════════════════════════
  // WEEK 9 — Grammar: Tense Consistency
  // Tags: suffix
  // ══════════════════════════════════════════════════════════════════════════

  // Set 1 — tense consistency rules
  _quSen1('senior','suffix',9,1,'vocabulary', 'What is "tense consistency"?', ['Keeping the same tense throughout a clause, sentence, or paragraph unless there is a clear reason to change time frames','Using as many different tenses as possible','Always writing in the past tense','Never using verbs'], 'Keeping the same tense throughout a clause, sentence, or paragraph unless there is a clear reason to change time frames', term: 1),
  _quSen1('senior','suffix',9,1,'grammar', 'Identify the tense error: "He walked into the room and sits down."', ['The tenses shift from past (walked) to present (sits). It should be "walked... and sat".','There is no error.','"room" should be plural.','"He" should be "She".'], 'The tenses shift from past (walked) to present (sits). It should be "walked... and sat".', term: 1),
  _quSen1('senior','suffix',9,1,'grammar', 'Which sentence has consistent tense?', ['The teacher explained the lesson, and the students took notes.','The teacher explained the lesson, and the students take notes.','The teacher explains the lesson, and the students took notes.','The teacher will explain the lesson, and the students took notes.'], 'The teacher explained the lesson, and the students took notes.', term: 1),
  _quSen1('senior','suffix',9,1,'grammar', 'Identify the tense error: "When the alarm rings, everyone ran outside."', ['Tense shift from present (rings) to past (ran). It should be "rings... runs" or "rang... ran".','There is no error.','"alarm" is spelled wrong.','"everyone" should be plural.'], 'Tense shift from present (rings) to past (ran). It should be "rings... runs" or "rang... ran".', term: 1),
  _quSen1('senior','suffix',9,1,'grammar', 'When writing a story or narrative, which tense is traditionally used?', ['Past tense (e.g., He looked at the sky and sighed)','Future tense (e.g., He will look at the sky)','Present continuous (e.g., He is looking at the sky)','Present perfect (e.g., He has looked at the sky)'], 'Past tense (e.g., He looked at the sky and sighed)', term: 1),
  _quSen1('senior','suffix',9,1,'grammar', 'When writing an academic essay about a book (literary analysis), which tense is traditionally used?', ['Present tense (e.g., The author describes the setting as...)','Past tense (e.g., The author described the setting as...)','Future tense','Past perfect'], 'Present tense (e.g., The author describes the setting as...)', term: 1),
  _quSen1('senior','suffix',9,1,'grammar', 'Fix the consistency: "If you study hard, you passed the exam."', ['If you study hard, you will pass the exam.','If you studied hard, you pass the exam.','If you will study hard, you passed the exam.','If you studying hard, you passed.'], 'If you study hard, you will pass the exam.', term: 1),
  _quSen1('senior','suffix',9,1,'grammar', 'Fix the consistency: "She opens the door, looks around, and screamed."', ['She opens the door, looks around, and screams. (or opened, looked, screamed)','She opened the door, looks around, and screamed.','She opens the door, looked around, and screams.','She opening the door, looking around, and screaming.'], 'She opens the door, looks around, and screams. (or opened, looked, screamed)', term: 1),
  _quSen1('senior','suffix',9,1,'grammar', 'Is it ever okay to shift tenses?', ['Yes, if you are clearly showing a shift in time (e.g., "I live in Lagos now, but I grew up in Kano.")','No, it is strictly forbidden in English.','Yes, in the middle of a single action.','Only when writing poetry.'], 'Yes, if you are clearly showing a shift in time (e.g., "I live in Lagos now, but I grew up in Kano.")', term: 1),
  _quSen1('senior','suffix',9,1,'grammar', 'Which suffix usually indicates a regular past tense verb?', ['-ed','-ing','-s','-tion'], '-ed', term: 1),

  // Set 2 — tense consistency practice
  _quSen1('senior','suffix',9,2,'grammar', 'Identify the sentence with consistent tense.', ['By the time we arrived, the movie had already started.','By the time we arrive, the movie had already started.','By the time we arrived, the movie starts.','By the time we will arrive, the movie had started.'], 'By the time we arrived, the movie had already started.', term: 1),
  _quSen1('senior','suffix',9,2,'grammar', 'Identify the error: "The scientist conducts the experiment and recorded the results."', ['Mix of present (conducts) and past (recorded).','Mix of future and past.','Mix of present continuous and past.','There is no error.'], 'Mix of present (conducts) and past (recorded).', term: 1),
  _quSen1('senior','suffix',9,2,'grammar', 'Which of these uses the present perfect tense correctly to show an action started in the past and continues to the present?', ['I have lived in this city for five years.','I had lived in this city for five years.','I live in this city for five years.','I was living in this city for five years.'], 'I have lived in this city for five years.', term: 1),
  _quSen1('senior','suffix',9,2,'grammar', 'Fix the consistency: "He was driving to work when he realizes he forgot his briefcase."', ['He was driving to work when he realized he forgot his briefcase.','He is driving to work when he realized he forgot his briefcase.','He drove to work when he realizes he forgot his briefcase.','He will drive to work when he realizes he forgets his briefcase.'], 'He was driving to work when he realized he forgot his briefcase.', term: 1),
  _quSen1('senior','suffix',9,2,'grammar', 'Fix the consistency: "The dog barks loudly and chased the mailman."', ['The dog barked loudly and chased the mailman. (or barks and chases)','The dog barking loudly and chased the mailman.','The dog barked loudly and chases the mailman.','The dog will bark and chased the mailman.'], 'The dog barked loudly and chased the mailman. (or barks and chases)', term: 1),
  _quSen1('senior','suffix',9,2,'grammar', 'What does the past perfect tense show? (e.g., "had eaten")', ['An action that was completed before another past action','An action happening right now','An action that will happen tomorrow','A continuous action in the past'], 'An action that was completed before another past action', term: 1),
  _quSen1('senior','suffix',9,2,'grammar', 'Which sentence uses the past perfect correctly?', ['She realized she had left her phone at home.','She realized she has left her phone at home.','She realizes she had left her phone at home.','She had realized she leaves her phone at home.'], 'She realized she had left her phone at home.', term: 1),
  _quSen1('senior','suffix',9,2,'grammar', 'Identify the tense: "We will be studying all night."', ['Future continuous','Simple future','Present continuous','Past perfect'], 'Future continuous', term: 1),
  _quSen1('senior','suffix',9,2,'grammar', 'Which sentence has consistent tense?', ['I like reading because it relaxes my mind.','I like reading because it relaxed my mind.','I liked reading because it relaxes my mind.','I will like reading because it relaxed my mind.'], 'I like reading because it relaxes my mind.', term: 1),
  _quSen1('senior','suffix',9,2,'grammar', 'Why do WAEC examiners deduct marks for tense inconsistency?', ['Because it confuses the timeline of events and makes writing difficult to follow','Because they prefer the future tense','Because it makes the essay too long','Because they don\'t like verbs'], 'Because it confuses the timeline of events and makes writing difficult to follow', term: 1),

  // Set 3 — comprehension (NOT read by TTS)
  _quSen1('senior','suffix',9,3,'comprehension',
      'PASSAGE: Yesterday, Amina walked into the exam hall and took her seat. She opens her bag and suddenly realized she had forgotten her calculator. Panic grips her chest as the invigilator handed out the papers. She quickly raised her hand and asks if anyone has a spare. Thankfully, the boy next to her smiles and handed her an extra calculator. She sighed with relief and begins her test, promising herself she will be more prepared next time.\n\nQ: Is the tense in this passage consistent?',
      ['No, it randomly shifts between the past and present tenses','Yes, it is perfectly consistent in the past tense','Yes, it is perfectly consistent in the present tense','No, it shifts between future and past perfect'],
      'No, it randomly shifts between the past and present tenses', term: 1),
  _quSen1('senior','suffix',9,3,'comprehension',
      'Refer to the passage above.\n\nQ: "Amina walked into the exam hall and took her seat." What tense is this?',
      ['Past tense','Present tense','Future tense','Present continuous'],
      'Past tense', term: 1),
  _quSen1('senior','suffix',9,3,'comprehension',
      'Refer to the passage above.\n\nQ: "She opens her bag and suddenly realized..." What is the error here?',
      ['"opens" is present, but "realized" is past. It should be "opened... realized"','There is no error','Both should be future tense','It should be "opening... realizing"'],
      '"opens" is present, but "realized" is past. It should be "opened... realized"', term: 1),
  _quSen1('senior','suffix',9,3,'comprehension',
      'Refer to the passage above.\n\nQ: "Panic grips her chest as the invigilator handed out the papers." What is the error here?',
      ['"grips" is present, but "handed" is past. It should be "gripped... handed"','There is no error','"chest" is spelled wrong','It should be "will grip... had handed"'],
      '"grips" is present, but "handed" is past. It should be "gripped... handed"', term: 1),
  _quSen1('senior','suffix',9,3,'comprehension',
      'Refer to the passage above.\n\nQ: "the boy next to her smiles and handed her an extra calculator." How do you fix this to be consistent past tense?',
      ['the boy next to her smiled and handed her an extra calculator','the boy next to her smiles and hands her an extra calculator','the boy next to her will smile and hand her an extra calculator','the boy next to her had smiled and handed her an extra calculator'],
      'the boy next to her smiled and handed her an extra calculator', term: 1),
  _quSen1('senior','suffix',9,3,'vocabulary', 'What does "invigilator" mean?', ['A person who watches over students taking an exam','A person who writes exams','A type of calculator','A school principal'], 'A person who watches over students taking an exam', term: 1),
  _quSen1('senior','suffix',9,3,'grammar', 'Identify the past perfect verb phrase in the sentence: "...realized she had forgotten her calculator.".', ['had forgotten','realized she','her calculator','she had'], 'had forgotten', term: 1),
  _quSen1('senior','suffix',9,3,'grammar', 'If you rewrite "She sighed with relief and begins her test" in consistent past tense, what does "begins" change to?', ['began','begun','beginning','will begin'], 'began', term: 1),
  _quSen1('senior','suffix',9,3,'grammar', 'Identify the future tense verb phrase in the final sentence.', ['will be','promising herself','sighed with relief','begins her test'], 'will be', term: 1),
  _quSen1('senior','suffix',9,3,'grammar', 'Which suffix is added to "hand" to make the regular past tense "handed"?', ['-ed','-ing','-s','-tion'], '-ed', term: 1),

  // ══════════════════════════════════════════════════════════════════════════
  // WEEK 10 — Comprehension: Inference & Deduction
  // Tags: alternative_spelling
  // ══════════════════════════════════════════════════════════════════════════

  // Set 1 — inference skills
  _quSen1('senior','alternative_spelling',10,1,'vocabulary', 'What does it mean to make an "inference" in reading?', ['To draw a logical conclusion based on clues in the text and your own background knowledge (reading between the lines)','To read exactly what the author wrote and nothing else','To guess blindly without any evidence','To translate the text to another language'], 'To draw a logical conclusion based on clues in the text and your own background knowledge (reading between the lines)', term: 1),
  _quSen1('senior','alternative_spelling',10,1,'vocabulary', 'What is the difference between explicit and implicit information?', ['Explicit is clearly stated in the text; implicit is hinted at and must be inferred','Implicit is clearly stated; explicit is hinted at','They both mean the same thing','Explicit means a long text; implicit means a short text'], 'Explicit is clearly stated in the text; implicit is hinted at and must be inferred', term: 1),
  _quSen1('senior','alternative_spelling',10,1,'grammar', 'Read this: "Bisi grabbed her umbrella and put on her thick rainboots." What can you infer?', ['It is raining or about to rain.','Bisi is going to bed.','Bisi is going to the beach to swim.','Bisi is buying shoes.'], 'It is raining or about to rain.', term: 1),
  _quSen1('senior','alternative_spelling',10,1,'grammar', 'Read this: "The teacher crossed his arms, frowned, and tapped his foot loudly as the students kept talking." What can you infer?', ['The teacher is angry and impatient.','The teacher is happy and dancing.','The teacher is cold.','The teacher is deaf.'], 'The teacher is angry and impatient.', term: 1),
  _quSen1('senior','alternative_spelling',10,1,'grammar', 'Read this: "The siren blared, and smoke billowed from the kitchen." What can you infer?', ['There is a fire in the kitchen.','Someone is cooking a delicious meal.','The police are arresting someone.','The kitchen is very clean.'], 'There is a fire in the kitchen.', term: 1),
  _quSen1('senior','alternative_spelling',10,1,'vocabulary', 'What does "deduction" mean in a literary context?', ['Reaching a specific logical conclusion from general facts or premises provided in the text','Subtracting marks from a test','Writing a summary of a book','Guessing the ending of a movie'], 'Reaching a specific logical conclusion from general facts or premises provided in the text', term: 1),
  _quSen1('senior','alternative_spelling',10,1,'grammar', 'Why are inferential questions difficult in WAEC exams?', ['Because the answer is not directly written in the text; you must piece together clues to find it','Because they are written in Latin','Because they require math skills','Because they are only about poetry'], 'Because the answer is not directly written in the text; you must piece together clues to find it', term: 1),
  _quSen1('senior','alternative_spelling',10,1,'grammar', 'If a character "slammed the door so hard the walls shook," what does this indirectly characterize about them?', ['They are experiencing intense anger or frustration','They are very strong','They hate the color of the walls','They are clumsy'], 'They are experiencing intense anger or frustration', term: 1),
  _quSen1('senior','alternative_spelling',10,1,'grammar', 'Which is the correct spelling of the word meaning "a conclusion reached on the basis of evidence and reasoning"?', ['inference','inpherence','infrence','inferance'], 'inference', term: 1),
  _quSen1('senior','alternative_spelling',10,1,'grammar', 'Which is the correct spelling of the word meaning "the action of deducting or subtracting"?', ['deduction','deducktion','diduction','deducion'], 'deduction', term: 1),

  // Set 2 — inference practice
  _quSen1('senior','alternative_spelling',10,2,'grammar', 'Text: "John looked at the empty cookie jar, then looked down at his little brother, whose face was covered in chocolate crumbs." What is the inference?', ['John\'s little brother ate the cookies.','John ate the cookies.','A burglar stole the cookies.','The cookies evaporated.'], 'John\'s little brother ate the cookies.', term: 1),
  _quSen1('senior','alternative_spelling',10,2,'grammar', 'Text: "The crowd erupted in cheers as the ball hit the back of the net in the 90th minute." What is the inference?', ['A team just scored a crucial, late goal in a football match.','A team just lost the game.','Someone is playing basketball.','The crowd is angry.'], 'A team just scored a crucial, late goal in a football match.', term: 1),
  _quSen1('senior','alternative_spelling',10,2,'grammar', 'Text: "She sighed, wiped the sweat from her forehead, and looked at the massive pile of unwashed clothes." What can you infer about her state?', ['She is exhausted and overwhelmed by chores.','She is excited to do laundry.','She just woke up from a long nap.','She is packing for a vacation.'], 'She is exhausted and overwhelmed by chores.', term: 1),
  _quSen1('senior','alternative_spelling',10,2,'grammar', 'Text: "The mayor\'s new mansion sits on a hill, overlooking the slums where the factory workers live." What does this contrast imply?', ['There is a severe wealth inequality between the leaders and the citizens.','The mayor loves factory workers.','The city is very beautiful.','The factory workers are very rich.'], 'There is a severe wealth inequality between the leaders and the citizens.', term: 1),
  _quSen1('senior','alternative_spelling',10,2,'vocabulary', 'What does it mean to read "between the lines"?', ['To look for or discover a meaning that is hidden or implied rather than explicitly stated','To focus only on the white space on the page','To read every second sentence','To use a ruler while reading'], 'To look for or discover a meaning that is hidden or implied rather than explicitly stated', term: 1),
  _quSen1('senior','alternative_spelling',10,2,'grammar', 'Which of these is explicit information? (Text: "The blue car crashed into the red wall.")', ['The car was blue and the wall was red.','The driver was texting.','The brakes failed.','The driver was angry.'], 'The car was blue and the wall was red.', term: 1),
  _quSen1('senior','alternative_spelling',10,2,'grammar', 'Which of these is implicit information? (Text: "The blue car crashed into the red wall. The driver stepped out, holding his phone and looking guilty.")', ['The driver might have been distracted by his phone.','The wall was red.','The car was blue.','The driver stepped out.'], 'The driver might have been distracted by his phone.', term: 1),
  _quSen1('senior','alternative_spelling',10,2,'vocabulary', 'What does "imply" mean?', ['To strongly suggest the truth or existence of something not expressly stated','To directly state a fact','To lie about something','To remove information'], 'To strongly suggest the truth or existence of something not expressly stated', term: 1),
  _quSen1('senior','alternative_spelling',10,2,'grammar', 'Which is the correct spelling?', ['explicit','explicet','explicite','explecit'], 'explicit', term: 1),
  _quSen1('senior','alternative_spelling',10,2,'grammar', 'Which is the correct spelling?', ['implicit','implicet','implicite','implecit'], 'implicit', term: 1),

  // Set 3 — comprehension (NOT read by TTS)
  _quSen1('senior','alternative_spelling',10,3,'comprehension',
      'PASSAGE: Dr. Ojo stared at the latest quarterly financial report, rubbing his temples. The numbers in the final column were printed in stark, bold red ink. He glanced out of his office window at the bustling factory floor below, where hundreds of workers were busy assembling the new mobile devices. A deep frown settled on his face as he picked up the phone to call the board of directors. "We have to make a decision by Friday," he muttered into the receiver. "We can\'t keep bleeding capital like this."\n\nQ: Based on the passage, what can you infer about the company\'s financial situation?',
      ['The company is losing money and is in financial trouble (indicated by red ink and "bleeding capital")','The company is making a huge profit','The company is about to hire more workers','The company is changing its name'],
      'The company is losing money and is in financial trouble (indicated by red ink and "bleeding capital")', term: 1),
  _quSen1('senior','alternative_spelling',10,3,'comprehension',
      'Refer to the passage above.\n\nQ: What does the "bold red ink" symbolize or imply in financial reports?',
      ['Financial loss or negative balances','Great success and wealth','A minor typo','A holiday is coming'],
      'Financial loss or negative balances', term: 1),
  _quSen1('senior','alternative_spelling',10,3,'comprehension',
      'Refer to the passage above.\n\nQ: What can you deduce about Dr. Ojo\'s emotional state from his actions (rubbing his temples, deep frown)?',
      ['He is stressed, worried, and burdened by the situation','He is very excited for the weekend','He is angry at the factory workers','He is feeling sick with a cold'],
      'He is stressed, worried, and burdened by the situation', term: 1),
  _quSen1('senior','alternative_spelling',10,3,'comprehension',
      'Refer to the passage above.\n\nQ: What metaphor does Dr. Ojo use to describe losing money?',
      ['"Bleeding capital"','Stark, bold red ink','Bustling factory floor','A deep frown'],
      '"Bleeding capital"', term: 1),
  _quSen1('senior','alternative_spelling',10,3,'comprehension',
      'Refer to the passage above.\n\nQ: What implicit threat hangs over the "bustling factory floor"?',
      ['If the company doesn\'t fix the finances, the workers might lose their jobs','The workers will be given a raise on Friday','The factory will start building cars','The board of directors is coming to a party'],
      'If the company doesn\'t fix the finances, the workers might lose their jobs', term: 1),
  _quSen1('senior','alternative_spelling',10,3,'vocabulary', 'What does "capital" mean in the phrase "bleeding capital"?', ['wealth in the form of money or other assets owned by a business','the main city of a country','a type of uppercase letter','a severe punishment'], 'wealth in the form of money or other assets owned by a business', term: 1),
  _quSen1('senior','alternative_spelling',10,3,'grammar', 'Is the statement "Dr. Ojo stared at the latest quarterly financial report" an explicit fact or an implicit inference?', ['Explicit fact','Implicit inference','A logical fallacy','A metaphor'], 'Explicit fact', term: 1),
  _quSen1('senior','alternative_spelling',10,3,'vocabulary', 'What does "bustling" mean?', ['full of energetic and noisy activity','completely empty','very dirty','broken and ruined'], 'full of energetic and noisy activity', term: 1),
  _quSen1('senior','alternative_spelling',10,3,'grammar', 'Which is the correct spelling of the word meaning "the governing body of an organization" (as in board of __)?', ['directors','directers','dirrectors','direktors'], 'directors', term: 1),
  _quSen1('senior','alternative_spelling',10,3,'grammar', 'Which spelling rule exception is found in the word "receiver" (or receive)?', ['i before e, except after c','double the consonant','drop the silent e','change y to i'], 'i before e, except after c', term: 1),

  // ══════════════════════════════════════════════════════════════════════════
  // WEEK 11 — Vocabulary: Abstract Nouns & Nominalisation
  // Tags: suffix
  // ══════════════════════════════════════════════════════════════════════════

  // Set 1 — abstract nouns
  _quSen1('senior','suffix',11,1,'vocabulary', 'What is an "abstract noun"?', ['A noun denoting an idea, quality, or state rather than a concrete, physical object','A noun that you can see, touch, and feel','A noun that starts a sentence','A noun that acts as a verb'], 'A noun denoting an idea, quality, or state rather than a concrete, physical object', term: 1),
  _quSen1('senior','suffix',11,1,'grammar', 'Which of these is an abstract noun?', ['Freedom','Table','Dog','Nigeria'], 'Freedom', term: 1),
  _quSen1('senior','suffix',11,1,'grammar', 'Which of these is a concrete noun?', ['Apple','Happiness','Courage','Honesty'], 'Apple', term: 1),
  _quSen1('senior','suffix',11,1,'grammar', 'What suffix turns the adjective "happy" into an abstract noun?', ['-ness (happiness)','-tion (happition)','-ity (happity)','-ment (happyment)'], '-ness (happiness)', term: 1),
  _quSen1('senior','suffix',11,1,'grammar', 'What suffix turns the adjective "curious" into an abstract noun?', ['-ity (curiosity)','-ness (curiousness)','-ment (curiousment)','-ance (curiousance)'], '-ity (curiosity)', term: 1),
  _quSen1('senior','suffix',11,1,'grammar', 'What suffix turns the verb "develop" into an abstract noun?', ['-ment (development)','-tion (develoption)','-ness (developness)','-ity (developity)'], '-ment (development)', term: 1),
  _quSen1('senior','suffix',11,1,'grammar', 'What suffix turns the verb "inform" into an abstract noun?', ['-ation (information)','-ment (informment)','-ness (informness)','-ity (informity)'], '-ation (information)', term: 1),
  _quSen1('senior','suffix',11,1,'grammar', 'What is the abstract noun form of the adjective "brave"?', ['Bravery','Braveness','Bravation','Bravement'], 'Bravery', term: 1),
  _quSen1('senior','suffix',11,1,'grammar', 'What is the abstract noun form of the adjective "wise"?', ['Wisdom','Wiseness','Wisity','Wisement'], 'Wisdom', term: 1),
  _quSen1('senior','suffix',11,1,'grammar', 'Which of these sentences uses an abstract noun?', ['Her determination was inspiring.','He kicked the ball.','She ate a sandwich.','They drove the car.'], 'Her determination was inspiring.', term: 1),

  // Set 2 — nominalisation
  _quSen1('senior','suffix',11,2,'vocabulary', 'What is "nominalisation"?', ['The process of forming a noun from some other word class (e.g., turning a verb into a noun)','The process of making a sentence shorter','The process of writing a poem','The process of finding synonyms'], 'The process of forming a noun from some other word class (e.g., turning a verb into a noun)', term: 1),
  _quSen1('senior','suffix',11,2,'grammar', 'Why is nominalisation often used in academic and formal writing?', ['It makes the writing sound more objective, formal, and concise by focusing on concepts rather than actions/people','It makes the writing sound like a casual chat','It makes the text easier for children to read','It forces the writer to use more verbs'], 'It makes the writing sound more objective, formal, and concise by focusing on concepts rather than actions/people', term: 1),
  _quSen1('senior','suffix',11,2,'grammar', 'Convert this verb phrase into a noun phrase using nominalisation: "They decided to build a new road."', ['The decision to build a new road...','They are deciding to build a road.','Building a road is what they decided.','Decidedly, a road was built.'], 'The decision to build a new road...', term: 1),
  _quSen1('senior','suffix',11,2,'grammar', 'Nominalise the verb in this sentence: "The government investigated the crime."', ['The government\'s investigation of the crime...','The government is investigating the crime.','Investigating the crime happened.','The crime investigated the government.'], 'The government\'s investigation of the crime...', term: 1),
  _quSen1('senior','suffix',11,2,'grammar', 'Which suffix turns "argue" into a noun?', ['-ment (argument)','-tion (arguetion)','-ance (arguance)','-ity (arguity)'], '-ment (argument)', term: 1),
  _quSen1('senior','suffix',11,2,'grammar', 'Which suffix turns "fail" into a noun?', ['-ure (failure)','-ment (failment)','-tion (failtion)','-ness (failness)'], '-ure (failure)', term: 1),
  _quSen1('senior','suffix',11,2,'grammar', 'Nominalise this sentence: "The students performed poorly because they were anxious."', ['The students\' poor performance was due to anxiety.','Because of being anxious, they performed poorly.','Anxiously, they performed bad.','They were anxious, so they performed poorly.'], 'The students\' poor performance was due to anxiety.', term: 1),
  _quSen1('senior','suffix',11,2,'grammar', 'Which suffix turns the adjective "elegant" into a noun?', ['-ce (elegance)','-cy (elegancy)','-ness (elegantness)','-ment (elegantment)'], '-ce (elegance)', term: 1),
  _quSen1('senior','suffix',11,2,'grammar', 'Which suffix turns the verb "accommodate" into a noun?', ['-tion (accommodation)','-ment (accommodatement)','-ance (accommodatance)','-ity (accommodatity)'], '-tion (accommodation)', term: 1),
  _quSen1('senior','suffix',11,2,'grammar', 'What is the noun form of "destroy"?', ['destruction','destroyment','destroyance','destroyal'], 'destruction', term: 1),

  // Set 3 — comprehension (NOT read by TTS)
  _quSen1('senior','suffix',11,3,'comprehension',
      'PASSAGE: Instead of writing "The engineers constructed the bridge very quickly, which impressed the mayor," a formal academic report uses nominalisation. It reads: "The rapid construction of the bridge resulted in the mayor\'s profound admiration." This stylistic choice shifts the focus from the people (engineers) to the abstract concept (the construction). Similarly, "The manager failed to communicate the new policy" becomes "The manager\'s failure in communication regarding the new policy." Mastery of this technique is essential for students aiming to achieve high grades in their WAEC English essays.\n\nQ: What stylistic technique does the formal academic report use?',
      ['Nominalisation','Personification','Hyperbole','Alliteration'],
      'Nominalisation', term: 1),
  _quSen1('senior','suffix',11,3,'comprehension',
      'Refer to the passage above.\n\nQ: What is the nominalised version of "The engineers constructed the bridge very quickly"?',
      ['"The rapid construction of the bridge"','"The engineers are constructing the bridge"','"Quickly constructing the bridge"','"The bridge was constructed quickly"'],
      '"The rapid construction of the bridge"', term: 1),
  _quSen1('senior','suffix',11,3,'comprehension',
      'Refer to the passage above.\n\nQ: How does nominalisation shift the focus in a sentence?',
      ['It shifts the focus from the people (actors) to the abstract concept or action','It shifts the focus from nouns to verbs','It shifts the focus to the weather','It makes the sentence entirely about the author'],
      'It shifts the focus from the people (actors) to the abstract concept or action', term: 1),
  _quSen1('senior','suffix',11,3,'comprehension',
      'Refer to the passage above.\n\nQ: What is the nominalised version of "failed to communicate"?',
      ['"failure in communication"','"communicated a failure"','"failing at communicating"','"did not communicate"'],
      '"failure in communication"', term: 1),
  _quSen1('senior','suffix',11,3,'comprehension',
      'Refer to the passage above.\n\nQ: Why is mastery of this technique essential for students?',
      ['To achieve high grades in their WAEC English essays','To write better poetry','To send text messages','To speak louder'],
      'To achieve high grades in their WAEC English essays', term: 1),
  _quSen1('senior','suffix',11,3,'grammar', 'Identify the abstract noun derived from the verb "admire".', ['admiration','admirement','admirance','admiring'], 'admiration', term: 1),
  _quSen1('senior','suffix',11,3,'grammar', 'Identify the abstract noun derived from the verb "master".', ['mastery','masterment','mastertion','mastering'], 'mastery', term: 1),
  _quSen1('senior','suffix',11,3,'vocabulary', 'What does "profound" mean in "profound admiration"?', ['very great or intense','very quiet','accidental','fake'], 'very great or intense', term: 1),
  _quSen1('senior','suffix',11,3,'grammar', 'In the phrase "rapid construction", what part of speech is "rapid"?', ['Adjective (modifying the noun construction)','Verb','Adverb','Preposition'], 'Adjective (modifying the noun construction)', term: 1),
  _quSen1('senior','suffix',11,3,'grammar', 'What suffix is used in "communication"?', ['-tion','-cate','-com','-ing'], '-tion', term: 1),

  // ══════════════════════════════════════════════════════════════════════════
  // WEEK 12 — Oral: Debate & Argumentation
  // Tags: alliteration
  // ══════════════════════════════════════════════════════════════════════════

  // Set 1 — debate terminology
  _quSen1('senior','alliteration',12,1,'vocabulary', 'What is a "motion" in a debate?', ['The formal statement or topic that is being debated','The movement of the speaker\'s hands','A request for a bathroom break','The final vote tally'], 'The formal statement or topic that is being debated', term: 1),
  _quSen1('senior','alliteration',12,1,'vocabulary', 'What is the role of the "proposition" (or affirmative) team?', ['To argue in favor of the motion','To argue against the motion','To act as the timekeeper','To judge the debate'], 'To argue in favor of the motion', term: 1),
  _quSen1('senior','alliteration',12,1,'vocabulary', 'What is the role of the "opposition" team?', ['To argue against the motion','To argue in favor of the motion','To introduce the speakers','To agree with the proposition'], 'To argue against the motion', term: 1),
  _quSen1('senior','alliteration',12,1,'vocabulary', 'What is a "rebuttal"?', ['A counter-argument; the act of refuting or responding to the opposing team\'s points','The opening statement of a debate','A type of rhetorical question','A joke told to ease tension'], 'A counter-argument; the act of refuting or responding to the opposing team\'s points', term: 1),
  _quSen1('senior','alliteration',12,1,'grammar', 'How should you appropriately address the chairperson in a debate?', ['"Mr. Chairman, panel of judges, co-debaters, and the audience..."','"Hey everyone..."','"Listen to me, judges..."','"You there, timekeeper..."'], '"Mr. Chairman, panel of judges, co-debaters, and the audience..."', term: 1),
  _quSen1('senior','alliteration',12,1,'vocabulary', 'What is "pathos" in argumentation?', ['An appeal to the audience\'s emotions','An appeal to logic and facts','An appeal to the speaker\'s credibility','A type of logical fallacy'], 'An appeal to the audience\'s emotions', term: 1),
  _quSen1('senior','alliteration',12,1,'vocabulary', 'What is "logos" in argumentation?', ['An appeal to logic, reason, and facts','An appeal to emotion','An appeal to ethics','A famous brand name'], 'An appeal to logic, reason, and facts', term: 1),
  _quSen1('senior','alliteration',12,1,'vocabulary', 'What is "ethos" in argumentation?', ['An appeal based on the credibility, authority, or character of the speaker','An appeal to raw emotion','An appeal to pure statistics','A spelling error'], 'An appeal based on the credibility, authority, or character of the speaker', term: 1),
  _quSen1('senior','alliteration',12,1,'grammar', 'Which phrase is good for signaling a rebuttal?', ['"My opponent claimed that X is true, however, the evidence shows..."','"I agree with everything my opponent said."','"That guy is completely stupid."','"Moving on to my next point..."'], '"My opponent claimed that X is true, however, the evidence shows..."', term: 1),
  _quSen1('senior','alliteration',12,1,'grammar', 'Identify the rhetorical device: "Are we going to stand by and do nothing?"', ['Rhetorical question','Alliteration','Simile','Rebuttal'], 'Rhetorical question', term: 1),

  // Set 2 — rhetorical devices in speech
  _quSen1('senior','alliteration',12,2,'vocabulary', 'What is the "rule of three" (tricolon)?', ['Grouping three words, phrases, or ideas together for emphasis (e.g., blood, sweat, and tears)','Speaking for exactly three minutes','Having three judges on the panel','Winning three debates in a row'], 'Grouping three words, phrases, or ideas together for emphasis (e.g., blood, sweat, and tears)', term: 1),
  _quSen1('senior','alliteration',12,2,'grammar', 'Identify the rhetorical device: "We must be determined, we must be dedicated, and we must be decisive."', ['Rule of three (and repetition/alliteration)','Metaphor','Simile','Personification'], 'Rule of three (and repetition/alliteration)', term: 1),
  _quSen1('senior','alliteration',12,2,'grammar', 'Identify the alliteration in the previous sentence ("...determined, ...dedicated, ...decisive").', ['The repeated /d/ sound','The repetition of "we must be"','The three commas','The emotional tone'], 'The repeated /d/ sound', term: 1),
  _quSen1('senior','alliteration',12,2,'vocabulary', 'What is an "anecdote"?', ['A short, compelling story used to illustrate a point or connect with the audience emotionally','A list of statistics','A formal law','A type of medicine'], 'A short, compelling story used to illustrate a point or connect with the audience emotionally', term: 1),
  _quSen1('senior','alliteration',12,2,'grammar', 'Why do debaters use inclusive language like "we" and "our"?', ['To build a connection with the audience and make them feel part of the cause','To exclude the opposition team','Because they don\'t want to take personal responsibility','Because it is a grammar rule'], 'To build a connection with the audience and make them feel part of the cause', term: 1),
  _quSen1('senior','alliteration',12,2,'vocabulary', 'What is "direct address"?', ['Speaking directly to the audience using "you" (e.g., "I ask you today...")','Reading an address off a map','Sending a letter to the judges','Looking at the ceiling'], 'Speaking directly to the audience using "you" (e.g., "I ask you today...")', term: 1),
  _quSen1('senior','alliteration',12,2,'vocabulary', 'What does it mean to "concede" a point?', ['To admit that something is true or valid after first resisting it (often used strategically before pivoting)','To win the debate entirely','To shout over your opponent','To run out of time'], 'To admit that something is true or valid after first resisting it (often used strategically before pivoting)', term: 1),
  _quSen1('senior','alliteration',12,2,'grammar', 'Which phrase is an example of conceding a point?', ['"While it is true that this policy is expensive, the long-term benefits outweigh the costs."','"This policy is completely flawless."','"My opponent is lying."','"I refuse to believe that."'], '"While it is true that this policy is expensive, the long-term benefits outweigh the costs."', term: 1),
  _quSen1('senior','alliteration',12,2,'grammar', 'Identify the alliteration: "Poverty produces pain and panic."', ['The repeated /p/ sound','The emotional appeal','The statement of a fact','The short length of the sentence'], 'The repeated /p/ sound', term: 1),
  _quSen1('senior','alliteration',12,2,'vocabulary', 'What is a "conclusion" in a debate speech?', ['The final summary of your main points and a strong closing statement or call to action','The opening joke','The middle rebuttal','The judge\'s final score'], 'The final summary of your main points and a strong closing statement or call to action', term: 1),

  // Set 3 — comprehension (NOT read by TTS)
  _quSen1('senior','alliteration',12,3,'comprehension',
      'PASSAGE: "Mr. Chairman, panel of judges, co-debaters. I stand before you today to propose the motion that Social Media is destroying the moral fabric of our youth. My opponents have eloquently argued that social media connects people across the globe. While I concede that it offers connectivity, I must boldly break their illusion. It connects screens, not souls! We see teenagers trading real relationships for fake followers, prioritizing popularity over principles. This digital distraction breeds devastating depression and deep despair. Are we prepared to sacrifice an entire generation to a screen?"\n\nQ: Which team is the speaker on?',
      ['The proposition (arguing in favor of the motion)','The opposition (arguing against the motion)','The judging panel','The timekeepers'],
      'The proposition (arguing in favor of the motion)', term: 1),
  _quSen1('senior','alliteration',12,3,'comprehension',
      'Refer to the passage above.\n\nQ: What is the motion being debated?',
      ['Social Media is destroying the moral fabric of our youth','Social Media is the best invention ever','Technology is too expensive','Teenagers should spend more time online'],
      'Social Media is destroying the moral fabric of our youth', term: 1),
  _quSen1('senior','alliteration',12,3,'comprehension',
      'Refer to the passage above.\n\nQ: How does the speaker address the opposing team\'s point?',
      ['They concede that social media offers connectivity, but argue it connects screens, not souls (rebuttal)','They ignore the opposing team completely','They agree with the opposing team and surrender','They insult the opposing team\'s intelligence'],
      'They concede that social media offers connectivity, but argue it connects screens, not souls (rebuttal)', term: 1),
  _quSen1('senior','alliteration',12,3,'comprehension',
      'Refer to the passage above.\n\nQ: What rhetorical device does the speaker use at the very end?',
      ['A rhetorical question ("Are we prepared to sacrifice...")','A simile','An anecdote','A polite greeting'],
      'A rhetorical question ("Are we prepared to sacrifice...")', term: 1),
  _quSen1('senior','alliteration',12,3,'comprehension',
      'Refer to the passage above.\n\nQ: "digital distraction breeds devastating depression and deep despair" is a strong example of which device?',
      ['Alliteration (repetition of the /d/ sound)','Simile','Metaphor','Onomatopoeia'],
      'Alliteration (repetition of the /d/ sound)', term: 1),
  _quSen1('senior','alliteration',12,3,'vocabulary', 'What does it mean to "concede" as used by the speaker?', ['To admit that something is true before making a counter-point','To disagree completely','To laugh out loud','To win the debate'], 'To admit that something is true before making a counter-point', term: 1),
  _quSen1('senior','alliteration',12,3,'grammar', 'Identify the alliteration in the phrase: "boldly break their illusion".', ['boldly break','their illusion','I must boldly','break their'], 'boldly break', term: 1),
  _quSen1('senior','alliteration',12,3,'grammar', 'Identify the alliteration in the phrase: "prioritizing popularity over principles".', ['prioritizing popularity over principles','trading real relationships','fake followers','screens, not souls'], 'prioritizing popularity over principles', term: 1),
  _quSen1('senior','alliteration',12,3,'vocabulary', 'What does "eloquently" mean?', ['in a fluent, persuasive, or articulate manner','very quietly','in an angry and rude way','with many spelling mistakes'], 'in a fluent, persuasive, or articulate manner', term: 1),
  _quSen1('senior','alliteration',12,3,'grammar', 'Which phrase is an example of contrast used for rhetorical effect in the passage?', ['"It connects screens, not souls!"','"I stand before you today"','"Mr. Chairman, panel of judges"','"This digital distraction"'], '"It connects screens, not souls!"', term: 1),

  // ══════════════════════════════════════════════════════════════════════════
  // WEEK 13 — End-of-Term Assessment
  // Tags: prefix, suffix, alternative_spelling, homophone, syllable
  // ══════════════════════════════════════════════════════════════════════════

  // Set 1 — final exam mix
  _quSen1('senior','prefix',13,1,'vocabulary', 'What does the prefix "omni-" mean in "omniscient"?', ['all or everywhere','half','before','against'], 'all or everywhere', term: 1),
  _quSen1('senior','suffix',13,1,'grammar', 'Which suffix turns the adjective "happy" into an abstract noun?', ['-ness (happiness)','-ment (happyment)','-tion (happition)','-ity (happity)'], '-ness (happiness)', term: 1),
  _quSen1('senior','alternative_spelling',13,1,'grammar', 'Which is the correct spelling of the WAEC exception word?', ['privilege','privelege','priviledge','privelige'], 'privilege', term: 1),
  _quSen1('senior','homophone',13,1,'grammar', 'Which homophone fits best: "I strongly ___ you to study hard."?', ['advise','advice','advises','adviced'], 'advise', term: 1),
  _quSen1('senior','syllable',13,1,'grammar', 'How many syllables are in the word "characterisation"?', ['6','5','7','4'], '6', term: 1), // char-ac-ter-i-sa-tion
  _quSen1('senior','prefix',13,1,'vocabulary', 'What does the root "chron" mean in "chronological"?', ['time','earth','life','sound'], 'time', term: 1),
  _quSen1('senior','suffix',13,1,'grammar', 'Identify the sentence with consistent tense.', ['She opened the book, read the first page, and smiled.','She opens the book, read the first page, and smiled.','She opened the book, reads the first page, and smiles.','She will open the book, read the first page, and smiles.'], 'She opened the book, read the first page, and smiled.', term: 1),
  _quSen1('senior','alternative_spelling',13,1,'vocabulary', 'What is "dramatic irony"?', ['When the reader knows something the characters do not','When it rains on your wedding day','When a character uses sarcasm','A comparison using like or as'], 'When the reader knows something the characters do not', term: 1),
  _quSen1('senior','homophone',13,1,'grammar', 'Which homophone fits best: "The new policy will have a positive ___ on the economy."?', ['effect','affect','except','accept'], 'effect', term: 1),
  _quSen1('senior','syllable',13,1,'vocabulary', 'What is "enjambment" in poetry?', ['When a sentence continues beyond the end of a line without punctuation','The rhythm of the poem','A rhyming couplet','The title of the poem'], 'When a sentence continues beyond the end of a line without punctuation', term: 1),

  // Set 2 — final exam mix
  _quSen1('senior','prefix',13,2,'grammar', 'What does "circumvent" mean? (circum = around)', ['to find a way around an obstacle','to build a circle','to talk in circles','to throw something away'], 'to find a way around an obstacle', term: 1),
  _quSen1('senior','suffix',13,2,'grammar', 'What is "nominalisation"?', ['Turning a verb or adjective into a noun (e.g., develop -> development)','Writing an essay in one sitting','Using only verbs in a sentence','Spelling a word backwards'], 'Turning a verb or adjective into a noun (e.g., develop -> development)', term: 1),
  _quSen1('senior','alternative_spelling',13,2,'grammar', 'Which is the correct spelling?', ['accommodate','acommodate','accomodate','acomodate'], 'accommodate', term: 1),
  _quSen1('senior','homophone',13,2,'grammar', 'Which homophone fits best: "The disease is mosquito-___."?', ['borne','born','bourn','bone'], 'borne', term: 1),
  _quSen1('senior','syllable',13,2,'vocabulary', 'What is "explicit" information?', ['Information that is clearly and directly stated in the text','Information that you have to guess','A hidden meaning','A spelling mistake'], 'Information that is clearly and directly stated in the text', term: 1),
  _quSen1('senior','prefix',13,2,'grammar', 'Which phrase is an example of a "rebuttal"?', ['"However, my opponent\'s statistics are outdated..."','"I agree with the opposition..."','"In conclusion..."','"Good morning everyone..."'], '"However, my opponent\'s statistics are outdated..."', term: 1),
  _quSen1('senior','suffix',13,2,'grammar', 'What is a "complex sentence"?', ['A sentence with one independent clause and at least one dependent clause','A sentence with only one verb','A sentence joined only by "and"','A sentence that is a fragment'], 'A sentence with one independent clause and at least one dependent clause', term: 1),
  _quSen1('senior','alternative_spelling',13,2,'grammar', 'Which is the correct spelling?', ['indispensable','indispensible','indespensable','indespensible'], 'indispensable', term: 1),
  _quSen1('senior','homophone',13,2,'grammar', 'Which homophone fits best: "I bought some pens at the ___ shop."?', ['stationery','stationary','stationari','stationry'], 'stationery', term: 1),
  _quSen1('senior','syllable',13,2,'vocabulary', 'What is a "thesis statement"?', ['A single sentence that states the main argument of an essay','The closing sentence of a debate','A type of poem','A rhetorical question'], 'A single sentence that states the main argument of an essay', term: 1),

  // Set 3 — comprehension (NOT read by TTS)
  _quSen1('senior','alternative_spelling',13,3,'comprehension',
      'PASSAGE: As the Senior Secondary students sat for their termly WAEC mock exam, the tension in the hall was palpable. Section A required them to read a complex literary extract and make inferences about the protagonist\'s hidden motives. Section B tested their grasp of advanced morphology and abstract nouns. The most daunting task was Section C: writing an expository essay. The examiner expected clear topic sentences, flawless tense consistency, and sophisticated sentence variety. One student, Femi, confidently nominalised his verbs to elevate his academic register, knowing that such attention to detail was an indispensable part of achieving an A1 grade.\n\nQ: What kind of exam were the Senior Secondary students taking?',
      ['A termly WAEC mock exam','A driving test','A mathematics quiz','An oral debate'],
      'A termly WAEC mock exam', term: 1),
  _quSen1('senior','alternative_spelling',13,3,'comprehension',
      'Refer to the passage above.\n\nQ: What did Section A require the students to do?',
      ['Make inferences about the protagonist\'s hidden motives','Write a poem','Draw a map','Recite a speech'],
      'Make inferences about the protagonist\'s hidden motives', term: 1),
  _quSen1('senior','suffix',13,3,'comprehension',
      'Refer to the passage above.\n\nQ: What did the examiner expect in the expository essay (Section C)?',
      ['Clear topic sentences, flawless tense consistency, and sophisticated sentence variety','Only simple sentences','A fictional story with a happy ending','Lots of exclamation marks'],
      'Clear topic sentences, flawless tense consistency, and sophisticated sentence variety', term: 1),
  _quSen1('senior','suffix',13,3,'comprehension',
      'Refer to the passage above.\n\nQ: What did Femi confidently do to elevate his academic register?',
      ['He nominalised his verbs','He wrote in all capital letters','He memorised the dictionary','He used lots of slang'],
      'He nominalised his verbs', term: 1),
  _quSen1('senior','alternative_spelling',13,3,'comprehension',
      'Refer to the passage above.\n\nQ: Why did Femi pay such close attention to detail?',
      ['He knew it was an indispensable part of achieving an A1 grade','He had extra time left over','He wanted to annoy the examiner','He was bored'],
      'He knew it was an indispensable part of achieving an A1 grade', term: 1),
  _quSen1('senior','alternative_spelling',13,3,'vocabulary', 'What does "palpable" mean in the phrase "the tension in the hall was palpable"?', ['so intense as to seem almost tangible or able to be touched','completely invisible','very funny','quite relaxing'], 'so intense as to seem almost tangible or able to be touched', term: 1),
  _quSen1('senior','prefix',13,3,'vocabulary', 'What does "protagonist" mean?', ['the leading character or one of the major characters in a drama, movie, novel, or other fictional text','the villain of the story','the author of the book','the person invigilating the exam'], 'the leading character or one of the major characters in a drama, movie, novel, or other fictional text', term: 1),
  _quSen1('senior','suffix',13,3,'grammar', 'Identify the abstract noun derived from the verb "prepare" (found in "preparation", though the text uses "attention". Let\'s ask: What abstract noun means "the act of making ready"?', ['preparation','preparement','prepareness','preparance'], 'preparation', term: 1), // Stretching vocab slightly
  _quSen1('senior','alternative_spelling',13,3,'grammar', 'Which word in the text is correctly spelled and means "absolutely necessary"?', ['indispensable','indispensible','indespensable','indespensible'], 'indispensable', term: 1),
  _quSen1('senior','syllable',13,3,'grammar', 'How many syllables are in the word "expository"?', ['5','4','6','3'], '5', term: 1), // ex-pos-i-to-ry

];
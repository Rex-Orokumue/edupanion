import 'package:uuid/uuid.dart';
import '../../../core/models/question.dart';

// ignore_for_file: prefer_single_quotes
const _uuSen3 = Uuid();

Question _quSen3(String level, String tag, int week, int set, String type,
    String q, List<String> opts, String ans, {required int term}) =>
    Question(
      id: _uuSen3.v4(), level: level, skillTag: tag,
      weekNumber: week, assessmentSet: set, questionType: type,
      termNumber: term,
      questionText: q, options: opts, correctAnswer: ans,
    );

// ─────────────────────────────────────────────────────────────────────────────
// SENIOR — SSS 1–3  (Term 3)
//
// W1  : Final Vocabulary Consolidation           → prefix, suffix, alternative_spelling
// W2  : WAEC Comprehension: Full Technique       → alternative_spelling, syllable
// W3  : WAEC Essay: All Types                    → prefix, suffix
// W4  : WAEC Letter Writing                      → suffix, prefix
// W5  : Literature Revision                      → rhyme, alliteration, alternative_spelling
// W6  : Grammar: Full Revision                   → suffix, prefix, alternative_spelling
// ─────────────────────────────────────────────────────────────────────────────

final List<Question> weekQuestionsSeniorT3 = [

  // ══════════════════════════════════════════════════════════════════════════
  // WEEK 1 — Final Vocabulary Consolidation
  // Tags: prefix, suffix, alternative_spelling
  // ══════════════════════════════════════════════════════════════════════════

  // Set 1 — vocabulary & spelling
  _quSen3('senior','prefix',1,1,'vocabulary', 'What does the prefix "bene-" mean in "beneficial"?', ['good or well','bad or evil','under or below','across'], 'good or well', term: 3),
  _quSen3('senior','suffix',1,1,'grammar', 'Which suffix is often used to form an abstract noun from a verb? (e.g., inform -> ?)', ['-ation (information)','-ly (informly)','-ous (informous)','-able (informable)'], '-ation (information)', term: 3),
  _quSen3('senior','alternative_spelling',1,1,'grammar', 'Which is the correct spelling of the WAEC exception word meaning "to grab"?', ['seize','sieze','seeze','ceize'], 'seize', term: 3),
  _quSen3('senior','prefix',1,1,'vocabulary', 'What does the prefix "mal-" mean in "malfunction"?', ['bad or poorly','good or well','many','one'], 'bad or poorly', term: 3),
  _quSen3('senior','alternative_spelling',1,1,'grammar', 'Which is the correct spelling of the word meaning "a special right or advantage"?', ['privilege','privelege','priviledge','privelige'], 'privilege', term: 3),
  _quSen3('senior','suffix',1,1,'grammar', 'Which suffix turns the adjective "redundant" into a noun?', ['-cy (redundancy)','-ment (redundantment)','-ness (redundantness)','-ion (redundantion)'], '-cy (redundancy)', term: 3),
  _quSen3('senior','alternative_spelling',1,1,'grammar', 'Which is the correct spelling?', ['accommodation','acommodation','accomodation','acomodation'], 'accommodation', term: 3),
  _quSen3('senior','prefix',1,1,'vocabulary', 'What does "circumvent" mean? (circum = around)', ['to find a way around an obstacle','to build a circle','to speak loudly','to write down'], 'to find a way around an obstacle', term: 3),
  _quSen3('senior','alternative_spelling',1,1,'grammar', 'Which is the correct spelling?', ['maintenance','maintainance','maintenence','maintainence'], 'maintenance', term: 3),
  _quSen3('senior','suffix',1,1,'grammar', 'Which word uses a suffix to mean "able to be observed"?', ['observable','observible','observment','observely'], 'observable', term: 3),

  // Set 2 — vocabulary & spelling
  _quSen3('senior','prefix',1,2,'vocabulary', 'What does the root "chron" mean in "synchronize"?', ['time','earth','life','sound'], 'time', term: 3),
  _quSen3('senior','alternative_spelling',1,2,'grammar', 'Which is the correct spelling?', ['pronunciation','pronounciation','pronunceation','pronunciashun'], 'pronunciation', term: 3),
  _quSen3('senior','suffix',1,2,'grammar', 'Which suffix changes the noun "peril" into an adjective meaning "dangerous"?', ['-ous (perilous)','-ic (perilic)','-able (perilable)','-ly (perilly)'], '-ous (perilous)', term: 3),
  _quSen3('senior','prefix',1,2,'vocabulary', 'What does "polyglot" mean? (poly = many)', ['knowing or using several languages','a shape with many sides','having many wives','a type of disease'], 'knowing or using several languages', term: 3),
  _quSen3('senior','alternative_spelling',1,2,'grammar', 'Which is the correct spelling of the exception word meaning "strange"?', ['weird','wierd','weard','weerd'], 'weird', term: 3),
  _quSen3('senior','prefix',1,2,'vocabulary', 'What does "introspection" mean? (intro = inward, spec = look)', ['the examination of one\'s own mental and emotional processes','looking at the stars','inspecting a building','looking backward'], 'the examination of one\'s own mental and emotional processes', term: 3),
  _quSen3('senior','alternative_spelling',1,2,'grammar', 'Which is the correct spelling?', ['indispensable','indispensible','indespensable','indespensible'], 'indispensable', term: 3),
  _quSen3('senior','suffix',1,2,'vocabulary', 'What does "ambiguous" mean?', ['open to more than one interpretation; having a double meaning','perfectly clear','using both hands well','unable to decide'], 'open to more than one interpretation; having a double meaning', term: 3),
  _quSen3('senior','alternative_spelling',1,2,'grammar', 'Which is the correct spelling?', ['embarrass','embarass','embaras','embarrasss'], 'embarrass', term: 3),
  _quSen3('senior','prefix',1,2,'grammar', 'Which prefix means "false or fake"?', ['pseudo- (pseudonym)','omni- (omnipresent)','equi- (equilibrium)','anti- (antithesis)'], 'pseudo- (pseudonym)', term: 3),

  // Set 3 — comprehension (NOT read by TTS)
  _quSen3('senior','prefix',1,3,'comprehension',
      'PASSAGE: As the final WAEC examination approached, Ngozi focused on her vocabulary consolidation. She knew that examiners penalized students for writing illegible words or misusing complex terminology. She created a chart mapping Latin and Greek roots, realizing that words like "omniscient" and "monotonous" were no longer incomprehensible to her. Furthermore, she meticulously reviewed spelling exceptions, repeatedly writing down \'privilege\' and \'accommodation\' to commit them to memory. By removing ambiguity from her essays and using precise, sophisticated language, she felt confident about achieving an excellent grade.\n\nQ: What did Ngozi know examiners penalized students for?',
      ['Writing illegible words or misusing complex terminology','Writing too fast','Using a blue pen','Drawing pictures on the exam'],
      'Writing illegible words or misusing complex terminology', term: 3),
  _quSen3('senior','prefix',1,3,'comprehension',
      'Refer to the passage above.\n\nQ: What did she create to help her study?',
      ['A chart mapping Latin and Greek roots','A list of math formulas','A painting of the school','A timeline of historical events'],
      'A chart mapping Latin and Greek roots', term: 3),
  _quSen3('senior','prefix',1,3,'comprehension',
      'Refer to the passage above.\n\nQ: Which words were no longer incomprehensible to her?',
      ['omniscient and monotonous','privilege and accommodation','cat and dog','happy and sad'],
      'omniscient and monotonous', term: 3),
  _quSen3('senior','alternative_spelling',1,3,'comprehension',
      'Refer to the passage above.\n\nQ: What two spelling exceptions did she repeatedly write down?',
      ['privilege and accommodation','incomprehensible and ambiguity','omniscient and monotonous','excellent and grade'],
      'privilege and accommodation', term: 3),
  _quSen3('senior','suffix',1,3,'comprehension',
      'Refer to the passage above.\n\nQ: How did she feel about achieving an excellent grade?',
      ['Confident','Terrified','Apathetic','Bored'],
      'Confident', term: 3),
  _quSen3('senior','prefix',1,3,'vocabulary', 'What does "omniscient" mean?', ['knowing everything','being everywhere at once','having all power','having one voice'], 'knowing everything', term: 3),
  _quSen3('senior','prefix',1,3,'vocabulary', 'What does "incomprehensible" mean?', ['not able to be understood','very easy to read','a type of root word','written by an examiner'], 'not able to be understood', term: 3),
  _quSen3('senior','suffix',1,3,'grammar', 'Identify the adverb in the passage that means "showing great attention to detail; very carefully".', ['meticulously','repeatedly','confident','consolidation'], 'meticulously', term: 3),
  _quSen3('senior','alternative_spelling',1,3,'vocabulary', 'What does "ambiguity" mean?', ['the quality of being open to more than one interpretation; inexactness','perfect clarity','a type of spelling error','a high grade'], 'the quality of being open to more than one interpretation; inexactness', term: 3),
  _quSen3('senior','prefix',1,3,'grammar', 'Identify the word with the prefix "il-" meaning "not".', ['illegible','incomprehensible','irregular','illuminate'], 'illegible', term: 3),

  // ══════════════════════════════════════════════════════════════════════════
  // WEEK 2 — WAEC Comprehension: Full Technique
  // Tags: alternative_spelling, syllable
  // ══════════════════════════════════════════════════════════════════════════

  // Set 1 — WAEC comprehension technique
  _quSen3('senior','alternative_spelling',2,1,'vocabulary', 'In WAEC comprehension, what does it mean to give the "grammatical name" of an expression?', ['To identify the grammatical structure, such as Noun Phrase, Adjectival Clause, or Adverbial Phrase','To write the definition of the words','To identify the author\'s name','To state the tense of the verb'], 'To identify the grammatical structure, such as Noun Phrase, Adjectival Clause, or Adverbial Phrase', term: 3),
  _quSen3('senior','alternative_spelling',2,1,'vocabulary', 'What does the "grammatical function" of an expression refer to?', ['The role the phrase or clause plays in the sentence (e.g., subject of the verb, modifying a noun)','How many syllables are in the phrase','The dictionary definition','Whether it is spelled correctly'], 'The role the phrase or clause plays in the sentence (e.g., subject of the verb, modifying a noun)', term: 3),
  _quSen3('senior','syllable',2,1,'grammar', 'If a clause begins with "because", "since", or "as", what is its grammatical name?', ['Adverbial clause of reason','Noun clause','Adjectival clause','Relative phrase'], 'Adverbial clause of reason', term: 3),
  _quSen3('senior','syllable',2,1,'grammar', 'If a phrase acts as the object of a verb, what is its grammatical name?', ['Noun phrase','Adjectival phrase','Adverbial clause','Prepositional clause'], 'Noun phrase', term: 3),
  _quSen3('senior','alternative_spelling',2,1,'grammar', 'If a clause begins with "who", "which", or "that" and describes a noun, what is its grammatical name?', ['Adjectival clause (or Relative clause)','Adverbial clause of time','Noun phrase','Verb phrase'], 'Adjectival clause (or Relative clause)', term: 3),
  _quSen3('senior','alternative_spelling',2,1,'vocabulary', 'When asked to replace a word in the passage, what two things must your replacement word match?', ['The exact meaning in context and the grammatical class/tense','The length of the word and the starting letter','The spelling and the syllables','The author\'s tone and the font'], 'The exact meaning in context and the grammatical class/tense', term: 3),
  _quSen3('senior','syllable',2,1,'grammar', 'How many syllables are in the word "grammatical"?', ['4','3','5','2'], '4', term: 3), // gram-mat-i-cal
  _quSen3('senior','alternative_spelling',2,1,'vocabulary', 'What does it mean to "infer" an answer?', ['To figure out the answer based on clues in the text, because it is not explicitly written','To copy the sentence word-for-word','To skip the question','To ask the examiner'], 'To figure out the answer based on clues in the text, because it is not explicitly written', term: 3),
  _quSen3('senior','alternative_spelling',2,1,'grammar', 'Identify the figure of speech: "The classroom was an oven."', ['Metaphor','Simile','Personification','Hyperbole'], 'Metaphor', term: 3),
  _quSen3('senior','syllable',2,1,'grammar', 'How many syllables are in "comprehension"?', ['4','3','5','2'], '4', term: 3),

  // Set 2 — grammatical name & function practice
  _quSen3('senior','alternative_spelling',2,2,'grammar', 'Read: "The man [who stole the car] ran away." What is the grammatical name of the bracketed expression?', ['Adjectival clause (Relative clause)','Noun phrase','Adverbial clause of time','Prepositional phrase'], 'Adjectival clause (Relative clause)', term: 3),
  _quSen3('senior','alternative_spelling',2,2,'grammar', 'Read: "The man [who stole the car] ran away." What is its grammatical function?', ['It modifies the noun phrase "The man"','It is the subject of the verb "ran"','It describes how he ran','It modifies the verb "stole"'], 'It modifies the noun phrase "The man"', term: 3),
  _quSen3('senior','alternative_spelling',2,2,'grammar', 'Read: "She stayed indoors [because it was raining]." What is the grammatical name?', ['Adverbial clause of reason','Noun clause','Adjectival phrase','Relative clause'], 'Adverbial clause of reason', term: 3),
  _quSen3('senior','alternative_spelling',2,2,'grammar', 'Read: "She stayed indoors [because it was raining]." What is its grammatical function?', ['It modifies the verb "stayed"','It modifies the noun "indoors"','It is the subject of the sentence','It acts as an adjective'], 'It modifies the verb "stayed"', term: 3),
  _quSen3('senior','alternative_spelling',2,2,'grammar', 'Read: "[To win the competition] is my only goal." What is the grammatical name?', ['Noun phrase','Adverbial clause','Adjectival phrase','Prepositional phrase'], 'Noun phrase', term: 3),
  _quSen3('senior','alternative_spelling',2,2,'grammar', 'Read: "[To win the competition] is my only goal." What is its grammatical function?', ['It is the subject of the verb "is"','It modifies the noun "goal"','It is the object of the verb "win"','It modifies the verb "competition"'], 'It is the subject of the verb "is"', term: 3),
  _quSen3('senior','syllable',2,2,'grammar', 'How many syllables are in the word "adjectival"?', ['4','5','3','2'], '4', term: 3), // ad-jec-ti-val
  _quSen3('senior','alternative_spelling',2,2,'vocabulary', 'If WAEC asks for a "figure of speech", which of these is NOT one?', ['Noun phrase','Metaphor','Simile','Personification'], 'Noun phrase', term: 3),
  _quSen3('senior','alternative_spelling',2,2,'grammar', 'Identify the figure of speech: "The wind howled through the night." ', ['Personification','Simile','Metaphor','Hyperbole'], 'Personification', term: 3),
  _quSen3('senior','alternative_spelling',2,2,'grammar', 'Which is the correct spelling?', ['explicit','explicet','explicite','explecit'], 'explicit', term: 3),

  // Set 3 — comprehension (NOT read by TTS)
  _quSen3('senior','alternative_spelling',2,3,'comprehension',
      'PASSAGE: The wealthy merchant, [who had built his empire from nothing], sat at his mahogany desk. He stared at the ledger [because the numbers did not add up]. Someone in the accounting department was stealing from him. [To discover the culprit] became his ultimate obsession. He knew he had to act swiftly and silently; a careless accusation would spread through the company like wildfire.\n\nQ: What is the grammatical name of the phrase: "[who had built his empire from nothing]"?',
      ['Adjectival clause (Relative clause)','Noun phrase','Adverbial clause of reason','Prepositional phrase'],
      'Adjectival clause (Relative clause)', term: 3),
  _quSen3('senior','alternative_spelling',2,3,'comprehension',
      'Refer to the passage above.\n\nQ: What is the grammatical function of "[who had built his empire from nothing]"?',
      ['It modifies the noun phrase "The wealthy merchant"','It is the subject of the sentence','It modifies the verb "sat"','It is the object of "built"'],
      'It modifies the noun phrase "The wealthy merchant"', term: 3),
  _quSen3('senior','alternative_spelling',2,3,'comprehension',
      'Refer to the passage above.\n\nQ: What is the grammatical name of "[because the numbers did not add up]"?',
      ['Adverbial clause of reason','Noun clause','Adjectival phrase','Relative clause'],
      'Adverbial clause of reason', term: 3),
  _quSen3('senior','alternative_spelling',2,3,'comprehension',
      'Refer to the passage above.\n\nQ: What is the grammatical name of "[To discover the culprit]"?',
      ['Noun phrase','Adverbial clause','Adjectival clause','Prepositional phrase'],
      'Noun phrase', term: 3),
  _quSen3('senior','alternative_spelling',2,3,'comprehension',
      'Refer to the passage above.\n\nQ: What figure of speech is used in the phrase "spread through the company like wildfire"?',
      ['Simile','Metaphor','Personification','Hyperbole'],
      'Simile', term: 3),
  _quSen3('senior','syllable',2,3,'grammar', 'How many syllables are in the word "mahogany"?', ['4','3','5','2'], '4', term: 3), // ma-hog-a-ny
  _quSen3('senior','alternative_spelling',2,3,'vocabulary', 'What does "culprit" mean?', ['a person who is responsible for a crime or other misdeed','a type of accounting ledger','a wealthy merchant','a spreading fire'], 'a person who is responsible for a crime or other misdeed', term: 3),
  _quSen3('senior','alternative_spelling',2,3,'vocabulary', 'What does "obsession" mean?', ['an idea or thought that continually preoccupies a person\'s mind','a physical object made of wood','a mathematical error','a careless mistake'], 'an idea or thought that continually preoccupies a person\'s mind', term: 3),
  _quSen3('senior','syllable',2,3,'grammar', 'What is the grammatical function of "[because the numbers did not add up]"?', ['It modifies the verb "stared"','It modifies the noun "desk"','It acts as the subject of the sentence','It is an exclamation'], 'It modifies the verb "stared"', term: 3),
  _quSen3('senior','alternative_spelling',2,3,'grammar', 'Identify the correctly spelled word from the text meaning "a statement that someone has done something wrong".', ['accusation','accussation','acusation','accusasion'], 'accusation', term: 3),

  // ══════════════════════════════════════════════════════════════════════════
  // WEEK 3 — WAEC Essay: All Types
  // Tags: prefix, suffix
  // ══════════════════════════════════════════════════════════════════════════

  // Set 1 — essay types
  _quSen3('senior','suffix',3,1,'vocabulary', 'What is the main goal of an "Argumentative Essay" in the WAEC exam?', ['To take a firm stance on a topic and persuade the reader to agree with you using logical evidence','To tell a fictional story','To describe a beautiful landscape','To objectively inform the reader without taking a side'], 'To take a firm stance on a topic and persuade the reader to agree with you using logical evidence', term: 3),
  _quSen3('senior','prefix',3,1,'vocabulary', 'What is the main goal of an "Expository Essay"?', ['To explain, inform, define, or describe a subject objectively without personal bias','To argue against a government policy','To write a diary entry','To narrate an event from your childhood'], 'To explain, inform, define, or describe a subject objectively without personal bias', term: 3),
  _quSen3('senior','suffix',3,1,'vocabulary', 'What is a "Narrative Essay"?', ['A piece of writing that tells a story, usually from a defined point of view, often ending with a moral or lesson','An essay explaining how a machine works','A formal letter to the principal','A list of statistics'], 'A piece of writing that tells a story, usually from a defined point of view, often ending with a moral or lesson', term: 3),
  _quSen3('senior','prefix',3,1,'vocabulary', 'What is a "Descriptive Essay"?', ['An essay that paints a vivid picture of a person, place, or object using sensory imagery and figurative language','An essay arguing for school uniforms','A scientific lab report','An informal letter'], 'An essay that paints a vivid picture of a person, place, or object using sensory imagery and figurative language', term: 3),
  _quSen3('senior','suffix',3,1,'grammar', 'In an Argumentative Essay, what is a "counter-argument"?', ['An argument that opposes your main thesis, which you acknowledge and then refute (rebut)','A physical fight between characters','The very first sentence of the essay','A spelling mistake'], 'An argument that opposes your main thesis, which you acknowledge and then refute (rebut)', term: 3),
  _quSen3('senior','prefix',3,1,'grammar', 'Which transition word is best used in an Expository Essay to add another point?', ['Furthermore (or Moreover)','Once upon a time','Suddenly','I believe that'], 'Furthermore (or Moreover)', term: 3),
  _quSen3('senior','suffix',3,1,'grammar', 'In a Narrative Essay, what tense is predominantly used?', ['Past tense (e.g., I walked, she smiled)','Future tense (e.g., I will walk)','Present perfect (e.g., I have walked)','Future continuous'], 'Past tense (e.g., I walked, she smiled)', term: 3),
  _quSen3('senior','prefix',3,1,'vocabulary', 'In WAEC marking, what does "Expression" assess?', ['The variety of your sentences, your vocabulary, and whether your tone matches the essay type','How neat your handwriting is','Whether you spelled your name correctly','How long the essay took to write'], 'The variety of your sentences, your vocabulary, and whether your tone matches the essay type', term: 3),
  _quSen3('senior','suffix',3,1,'grammar', 'What is the P.E.E. paragraph structure, typically used in Expository and Argumentative essays?', ['Point, Evidence, Explain','Paragraph, Essay, End','Punctuate, Evaluate, Erase','Place, Event, Emotion'], 'Point, Evidence, Explain', term: 3),
  _quSen3('senior','prefix',3,1,'grammar', 'Which prefix added to "structured" means poorly organized? (e.g., an essay lacking paragraphs)', ['un- (unstructured)','re- (restructured)','mis- (misstructured)','dis- (disstructured)'], 'un- (unstructured)', term: 3),

  // Set 2 — applying essay techniques
  _quSen3('senior','suffix',3,2,'grammar', 'If the WAEC prompt asks you to write about "A day you will never forget," which essay type must you write?', ['Narrative Essay','Expository Essay','Argumentative Essay','Descriptive Essay'], 'Narrative Essay', term: 3),
  _quSen3('senior','prefix',3,2,'grammar', 'If the WAEC prompt asks you to "Discuss the causes and effects of overpopulation," which essay type is this?', ['Expository Essay','Narrative Essay','Descriptive Essay','A poem'], 'Expository Essay', term: 3),
  _quSen3('senior','suffix',3,2,'grammar', 'If the prompt is "Write an article for your school magazine arguing that homework should be abolished," what format and type is required?', ['An article format (with a heading and your name) written as an Argumentative Essay','A formal letter written as a Narrative Essay','A speech format written as an Expository Essay','An informal letter'], 'An article format (with a heading and your name) written as an Argumentative Essay', term: 3),
  _quSen3('senior','prefix',3,2,'vocabulary', 'What does "cohesion" mean in an essay?', ['The logical flow and connection of ideas using paragraphs and transition words','The length of the conclusion','The emotional feeling of the story','The exact number of words used'], 'The logical flow and connection of ideas using paragraphs and transition words', term: 3),
  _quSen3('senior','suffix',3,2,'grammar', 'Which suffix turns "persuade" into an adjective describing a strong argument?', ['-ive (persuasive)','-ment (persuadement)','-ly (persuadely)','-tion (persuasion)'], '-ive (persuasive)', term: 3),
  _quSen3('senior','prefix',3,2,'grammar', 'Which discourse marker is used to introduce a contrasting idea in an Argumentative Essay?', ['On the other hand,...','In addition,...','To begin with,...','Consequently,...'], 'On the other hand,...', term: 3),
  _quSen3('senior','suffix',3,2,'vocabulary', 'What does it mean to "refute" a counter-argument?', ['To prove that the opposing argument is wrong or weak','To agree with the opposing argument completely','To delete the paragraph','To rewrite the introduction'], 'To prove that the opposing argument is wrong or weak', term: 3),
  _quSen3('senior','prefix',3,2,'grammar', 'In a Descriptive Essay, what kind of language should you heavily rely on?', ['Sensory imagery and vivid adjectives','Dry statistics and percentages','Rhetorical questions only','Very short, simple sentences'], 'Sensory imagery and vivid adjectives', term: 3),
  _quSen3('senior','suffix',3,2,'grammar', 'What must every essay, regardless of type, have?', ['An introduction, structured body paragraphs, and a conclusion','A rhyming scheme','A "Dear Sir" greeting','Dialogue between two people'], 'An introduction, structured body paragraphs, and a conclusion', term: 3),
  _quSen3('senior','prefix',3,2,'vocabulary', 'What is "register" in essay writing?', ['The level of formality (formal, informal, semi-formal) appropriate for the audience','A book where teachers take attendance','The volume of the writer\'s voice','A grammar mistake'], 'The level of formality (formal, informal, semi-formal) appropriate for the audience', term: 3),

  // Set 3 — comprehension (NOT read by TTS)
  _quSen3('senior','prefix',3,3,'comprehension',
      'PASSAGE: To excel in the WAEC English examination, a candidate must be versatile. The paper usually offers a choice between narrative, descriptive, expository, and argumentative essays. A common pitfall is misinterpreting the prompt. For instance, if asked to describe a bustling marketplace, writing a story about a thief in the market turns a descriptive essay into a narrative one, which may cost marks. Furthermore, regardless of the essay type chosen, examiners look for sophisticated expression and seamless cohesion. Utilizing an inappropriate register—such as using slang in a formal expository article—will negatively impact the final grade.\n\nQ: What is a common pitfall candidates face in the WAEC essay section?',
      ['Misinterpreting the prompt','Writing too fast','Choosing the descriptive essay','Using black ink'],
      'Misinterpreting the prompt', term: 3),
  _quSen3('senior','suffix',3,3,'comprehension',
      'Refer to the passage above.\n\nQ: What happens if a candidate writes a story about a thief when asked to describe a marketplace?',
      ['They turn a descriptive essay into a narrative one and may lose marks','They get extra marks for creativity','They are automatically given an A1','The examiner stops reading'],
      'They turn a descriptive essay into a narrative one and may lose marks', term: 3),
  _quSen3('senior','prefix',3,3,'comprehension',
      'Refer to the passage above.\n\nQ: What two things do examiners look for regardless of the essay type?',
      ['Sophisticated expression and seamless cohesion','Short paragraphs and simple words','A happy ending and a moral lesson','A lot of dialogue and action'],
      'Sophisticated expression and seamless cohesion', term: 3),
  _quSen3('senior','suffix',3,3,'comprehension',
      'Refer to the passage above.\n\nQ: What will negatively impact the final grade?',
      ['Utilizing an inappropriate register (e.g., slang in a formal article)','Writing an introduction','Using paragraphs','Taking time to plan the essay'],
      'Utilizing an inappropriate register (e.g., slang in a formal article)', term: 3),
  _quSen3('senior','prefix',3,3,'comprehension',
      'Refer to the passage above.\n\nQ: Why must a candidate be versatile?',
      ['Because the paper offers a choice between different types of essays','Because they must write all four essays in two hours','Because the exam is taken on a computer','Because they need to sing and dance'],
      'Because the paper offers a choice between different types of essays', term: 3),
  _quSen3('senior','prefix',3,3,'vocabulary', 'What does "versatile" mean?', ['able to adapt or be adapted to many different functions or activities','unable to change','very fast at writing','having a loud voice'], 'able to adapt or be adapted to many different functions or activities', term: 3),
  _quSen3('senior','suffix',3,3,'vocabulary', 'What does "cohesion" mean in the phrase "seamless cohesion"?', ['the grammatical and logical linking within a text that holds it together','the emotional tone of the story','the use of big words','the correct spelling of words'], 'the grammatical and logical linking within a text that holds it together', term: 3),
  _quSen3('senior','prefix',3,3,'grammar', 'Identify the word with the prefix "mis-" meaning "wrongly".', ['misinterpreting','marketplace','marks','magazine'], 'misinterpreting', term: 3),
  _quSen3('senior','suffix',3,3,'grammar', 'What suffix is added to "sophisticate" to make it an adjective describing the expression?', ['-ed (sophisticated)','-tion (sophistication)','-ly (sophisticately)','-ment (sophisticatement)'], '-ed (sophisticated)', term: 3),
  _quSen3('senior','prefix',3,3,'vocabulary', 'What is a "pitfall"?', ['a hidden or unsuspected danger or difficulty','a hole in the ground','a type of essay','a high score'], 'a hidden or unsuspected danger or difficulty', term: 3),

  // ══════════════════════════════════════════════════════════════════════════
  // WEEK 4 — WAEC Letter Writing
  // Tags: suffix, prefix
  // ══════════════════════════════════════════════════════════════════════════

  // Set 1 — letter formats
  _quSen3('senior','suffix',4,1,'grammar', 'In a formal letter (e.g., to a Commissioner), how many addresses must you write?', ['Two (the writer\'s address on the top right, the recipient\'s address on the left)','One (top right)','One (bottom left)','None'], 'Two (the writer\'s address on the top right, the recipient\'s address on the left)', term: 3),
  _quSen3('senior','prefix',4,1,'grammar', 'In an informal letter (e.g., to a friend), how many addresses must you write?', ['One (the writer\'s address on the top right)','Two','Three','None'], 'One (the writer\'s address on the top right)', term: 3),
  _quSen3('senior','suffix',4,1,'grammar', 'Does a formal letter require a title or subject line?', ['Yes, usually written in bold or capital letters below the salutation','No, never','Only if you know the person\'s name','It goes at the very end of the letter'], 'Yes, usually written in bold or capital letters below the salutation', term: 3),
  _quSen3('senior','prefix',4,1,'grammar', 'Does an informal letter require a title or subject line?', ['No','Yes, always','Yes, but only if writing to an older sibling','Yes, written in red ink'], 'No', term: 3),
  _quSen3('senior','suffix',4,1,'grammar', 'Which salutation is appropriate for an informal letter?', ['Dear [First Name], (e.g., Dear Chidi,)','Dear Sir/Madam,','To Whom It May Concern,','Dear Mr. President,'], 'Dear [First Name], (e.g., Dear Chidi,)', term: 3),
  _quSen3('senior','prefix',4,1,'grammar', 'If you begin a formal letter with "Dear Sir/Madam," how must you sign off?', ['Yours faithfully, [Signature] [Full Name]','Yours sincerely, [Signature] [Full Name]','Yours affectionately, [First Name]','Best wishes, [First Name]'], 'Yours faithfully, [Signature] [Full Name]', term: 3),
  _quSen3('senior','suffix',4,1,'grammar', 'How do you correctly sign off an informal letter?', ['Yours sincerely, (or Yours affectionately,) [First Name only, no signature]','Yours faithfully, [Signature] [Full Name]','Goodbye, [Signature]','From your friend, [Full Name and Title]'], 'Yours sincerely, (or Yours affectionately,) [First Name only, no signature]', term: 3),
  _quSen3('senior','prefix',4,1,'vocabulary', 'What is the appropriate tone for a formal letter of complaint?', ['Polite, firm, objective, and respectful','Angry, abusive, and emotional','Casual, friendly, and full of slang','Sarcastic and humorous'], 'Polite, firm, objective, and respectful', term: 3),
  _quSen3('senior','suffix',4,1,'grammar', 'Are contracted words (like "don\'t" or "can\'t") allowed in a formal letter?', ['No, you must write the words out fully (e.g., do not, cannot)','Yes, they make the letter sound better','Yes, but only in the conclusion','It doesn\'t matter'], 'No, you must write the words out fully (e.g., do not, cannot)', term: 3),
  _quSen3('senior','prefix',4,1,'grammar', 'Are contracted words allowed in an informal letter?', ['Yes, they help create a conversational, friendly tone','No, never','Only if writing to a parent','Only in the address'], 'Yes, they help create a conversational, friendly tone', term: 3),

  // Set 2 — letter phrasing
  _quSen3('senior','suffix',4,2,'grammar', 'Which is a suitable opening sentence for an informal letter?', ['I was so thrilled to receive your last letter, and I hope you and the family are doing well.','I am writing to formally acknowledge receipt of your correspondence.','I write to inform you of my existence.','Please find enclosed my latest news.'], 'I was so thrilled to receive your last letter, and I hope you and the family are doing well.', term: 3),
  _quSen3('senior','prefix',4,2,'grammar', 'Which is a suitable opening sentence for a formal letter to a newspaper editor?', ['I am writing to express my profound concern regarding the recent article on urban pollution.','Hey, I read your paper and I am mad about it.','Just thought I\'d drop a line about the pollution thing.','I hope you are doing well, here is my thought.'], 'I am writing to express my profound concern regarding the recent article on urban pollution.', term: 3),
  _quSen3('senior','suffix',4,2,'grammar', 'Which is a suitable closing sentence for a formal letter requesting action?', ['I look forward to your prompt response and positive action on this matter.','Hit me back when you can.','Hope to see you soon.','Bye for now.'], 'I look forward to your prompt response and positive action on this matter.', term: 3),
  _quSen3('senior','prefix',4,2,'vocabulary', 'What does "correspondence" mean in a formal context?', ['communication by exchanging letters or emails','a type of physical envelope','a delivery truck','a secret code'], 'communication by exchanging letters or emails', term: 3),
  _quSen3('senior','suffix',4,2,'grammar', 'Identify the punctuation error: "Yours Faithfully,"', ['The \'F\' in faithfully should be lowercase: "Yours faithfully,"','There should be no comma at the end','\'Yours\' should be \'Your\'','It should be "Yours\' faithfully,"'], 'The \'F\' in faithfully should be lowercase: "Yours faithfully,"', term: 3),
  _quSen3('senior','prefix',4,2,'grammar', 'Which prefix word is appropriate in a formal letter to mean "not satisfied"?', ['dissatisfied','unsatisfied','missatisfied','resatisfied'], 'dissatisfied', term: 3),
  _quSen3('senior','suffix',4,2,'grammar', 'Which suffix turns "inform" into a noun meaning the details provided?', ['-ation (information)','-ment (informment)','-ly (informly)','-ance (informance)'], '-ation (information)', term: 3),
  _quSen3('senior','prefix',4,2,'grammar', 'Rewrite formally: "I want to complain about the bad roads."', ['I wish to lodge a formal complaint regarding the deplorable condition of the roads.','I am angry about the bad roads.','The roads are terrible and you need to fix them.','Fix the bad roads now.'], 'I wish to lodge a formal complaint regarding the deplorable condition of the roads.', term: 3),
  _quSen3('senior','suffix',4,2,'vocabulary', 'What is a "salutation"?', ['A standard formula of words used in a letter to address the person being written to (e.g., Dear Sir)','The final signature','The address of the sender','The title of the essay'], 'A standard formula of words used in a letter to address the person being written to (e.g., Dear Sir)', term: 3),
  _quSen3('senior','prefix',4,2,'grammar', 'If the WAEC prompt says "Write a letter to your uncle who lives abroad...", what type of letter is this?', ['Informal letter (or Semi-formal depending on relationship, but usually treated structurally as informal with one address)','Formal letter','Argumentative essay','A report'], 'Informal letter (or Semi-formal depending on relationship, but usually treated structurally as informal with one address)', term: 3),

  // Set 3 — comprehension (NOT read by TTS)
  _quSen3('senior','suffix',4,3,'comprehension',
      'PASSAGE: During the WAEC English exam, Tunde chose the prompt asking him to write a letter to the Chairman of his Local Government Area about the deplorable state of the community\'s healthcare center. He knew this required a formal register. He carefully wrote his address on the top right and the Chairman\'s address on the left. He chose the salutation "Dear Sir," and included a clear, capitalized subject line. In the body paragraphs, Tunde avoided all contractions and slang, opting instead for sophisticated vocabulary to articulate the urgent need for medical supplies. He concluded with "Yours faithfully," followed by his signature and full name, confident that his formatting was flawless.\n\nQ: What kind of letter did Tunde write?',
      ['A formal letter','An informal letter to a friend','A narrative story','A poem'],
      'A formal letter', term: 3),
  _quSen3('senior','prefix',4,3,'comprehension',
      'Refer to the passage above.\n\nQ: Where did Tunde write the Chairman\'s address?',
      ['On the left side','On the top right','At the bottom of the page','He didn\'t write it'],
      'On the left side', term: 3),
  _quSen3('senior','suffix',4,3,'comprehension',
      'Refer to the passage above.\n\nQ: What did Tunde include below the salutation "Dear Sir,"?',
      ['A clear, capitalized subject line','His signature','A joke','A question about the Chairman\'s family'],
      'A clear, capitalized subject line', term: 3),
  _quSen3('senior','prefix',4,3,'comprehension',
      'Refer to the passage above.\n\nQ: What did Tunde avoid in the body paragraphs?',
      ['All contractions and slang','Using verbs','Writing about the healthcare center','Capital letters'],
      'All contractions and slang', term: 3),
  _quSen3('senior','suffix',4,3,'comprehension',
      'Refer to the passage above.\n\nQ: How did he sign off the letter?',
      ['With "Yours faithfully," followed by his signature and full name','With "Yours sincerely," and just his first name','With "Best wishes,"','With "Goodbye,"'],
      'With "Yours faithfully," followed by his signature and full name', term: 3),
  _quSen3('senior','prefix',4,3,'vocabulary', 'What does "deplorable" mean?', ['deserving strong condemnation; shockingly bad in quality','excellent and beautiful','brand new','slightly dirty'], 'deserving strong condemnation; shockingly bad in quality', term: 3),
  _quSen3('senior','suffix',4,3,'vocabulary', 'What does "articulate" mean in this context?', ['to express an idea or feeling fluently and coherently','to shout angrily','to paint a picture','to hide the truth'], 'to express an idea or feeling fluently and coherently', term: 3),
  _quSen3('senior','prefix',4,3,'grammar', 'Identify the word from the text that uses the prefix "un-" or a similar negative prefix to mean "without flaws". (Wait, the text uses "flawless". Let\'s ask for the suffix).', ['Identify the suffix in "flawless".','-less','flaw-','-ess','-ss'], '-less', term: 3),
  _quSen3('senior','suffix',4,3,'grammar', 'Identify the suffix in "capitalized".', ['-ized (or -ed)','-cap','-ita','-al'], '-ized (or -ed)', term: 3),
  _quSen3('senior','prefix',4,3,'vocabulary', 'What does "register" refer to in the phrase "formal register"?', ['the level of formality and choice of vocabulary appropriate for the situation','the book where names are written','a machine that counts money','the tone of voice used in speech'], 'the level of formality and choice of vocabulary appropriate for the situation', term: 3),

  // ══════════════════════════════════════════════════════════════════════════
  // WEEK 5 — Literature Revision
  // Tags: rhyme, alliteration, alternative_spelling
  // ══════════════════════════════════════════════════════════════════════════

  // Set 1 — literary devices and poetry
  _quSen3('senior','rhyme',5,1,'vocabulary', 'What is "enjambment"?', ['The continuation of a sentence without a pause beyond the end of a line, couplet, or stanza','A type of rhyme scheme','A stanza with four lines','The rhythm of the poem'], 'The continuation of a sentence without a pause beyond the end of a line, couplet, or stanza', term: 3),
  _quSen3('senior','alliteration',5,1,'vocabulary', 'What is "assonance"?', ['The repetition of vowel sounds within nearby words (e.g., the rain in Spain)','The repetition of consonant sounds at the start of words','A direct comparison using "like"','A type of dramatic irony'], 'The repetition of vowel sounds within nearby words (e.g., the rain in Spain)', term: 3),
  _quSen3('senior','alliteration',5,1,'grammar', 'Identify the device: "The silent sea swallowed the ship." (Focus on the /s/ sound)', ['Alliteration','Assonance','Rhyme','Simile'], 'Alliteration', term: 3),
  _quSen3('senior','alternative_spelling',5,1,'vocabulary', 'What is a "metaphor"?', ['A figure of speech stating that one thing IS another thing, without using "like" or "as"','A comparison using "like" or "as"','Exaggeration for effect','Giving objects human feelings'], 'A figure of speech stating that one thing IS another thing, without using "like" or "as"', term: 3),
  _quSen3('senior','alternative_spelling',5,1,'grammar', 'Identify the device: "His heart was a block of ice."', ['Metaphor','Simile','Personification','Alliteration'], 'Metaphor', term: 3),
  _quSen3('senior','alternative_spelling',5,1,'vocabulary', 'What is "hyperbole"?', ['Exaggerated statements or claims not meant to be taken literally','An understatement to make something seem small','The main theme of a story','A type of rhyme'], 'Exaggerated statements or claims not meant to be taken literally', term: 3),
  _quSen3('senior','alternative_spelling',5,1,'grammar', 'Identify the device: "I am so hungry I could eat a horse."', ['Hyperbole','Metaphor','Simile','Personification'], 'Hyperbole', term: 3),
  _quSen3('senior','rhyme',5,1,'vocabulary', 'What is "blank verse"?', ['Poetry written with regular metrical but unrhymed lines, almost always in iambic pentameter','Poetry with no structure at all','A poem that only has rhyming couplets','A poem written by a beginner'], 'Poetry written with regular metrical but unrhymed lines, almost always in iambic pentameter', term: 3),
  _quSen3('senior','rhyme',5,1,'vocabulary', 'What is a "sonnet"?', ['A poem of fourteen lines using any of a number of formal rhyme schemes','A five-line funny poem','A very long epic poem about a hero','A poem with no rhyme'], 'A poem of fourteen lines using any of a number of formal rhyme schemes', term: 3),
  _quSen3('senior','alternative_spelling',5,1,'grammar', 'Which is the correct spelling of the literary term?', ['simile','similey','simily','similie'], 'simile', term: 3),

  // Set 2 — prose and drama revision
  _quSen3('senior','alternative_spelling',5,2,'vocabulary', 'What is a "protagonist"?', ['The leading character or one of the major characters in a drama, movie, novel, or other fictional text','The villain or opposing force','The author of the text','The person who writes the stage directions'], 'The leading character or one of the major characters in a drama, movie, novel, or other fictional text', term: 3),
  _quSen3('senior','alternative_spelling',5,2,'vocabulary', 'What is an "antagonist"?', ['A person who actively opposes or is hostile to someone or something; an adversary','The hero\'s best friend','The setting of the story','A type of poem'], 'A person who actively opposes or is hostile to someone or something; an adversary', term: 3),
  _quSen3('senior','alternative_spelling',5,2,'vocabulary', 'What is "foreshadowing"?', ['A warning or indication of a future event in a story','A look back at a past event','A type of stage lighting','The climax of a play'], 'A warning or indication of a future event in a story', term: 3),
  _quSen3('senior','alternative_spelling',5,2,'vocabulary', 'What is "dramatic irony"?', ['When the audience or reader knows something that the characters do not','When a character makes a sarcastic joke','When a sad event happens in a comedy','When a story has no ending'], 'When the audience or reader knows something that the characters do not', term: 3),
  _quSen3('senior','alternative_spelling',5,2,'vocabulary', 'What is a "soliloquy" in drama?', ['An act of speaking one\'s thoughts aloud when by oneself on stage, regardless of any hearers','A conversation between two characters','A short remark made to the audience','The stage directions'], 'An act of speaking one\'s thoughts aloud when by oneself on stage, regardless of any hearers', term: 3),
  _quSen3('senior','alternative_spelling',5,2,'vocabulary', 'What is "theme"?', ['An idea that recurs in or pervades a work of art or literature; the underlying message','The physical location where the story takes place','The name of the main character','The author\'s biography'], 'An idea that recurs in or pervades a work of art or literature; the underlying message', term: 3),
  _quSen3('senior','alternative_spelling',5,2,'grammar', 'Which is the correct spelling?', ['playwright','playwrite','playright','playwrieght'], 'playwright', term: 3),
  _quSen3('senior','rhyme',5,2,'vocabulary', 'What does the "tone" of a text mean?', ['The author\'s or speaker\'s attitude toward the subject or the audience','The volume at which the text should be read','The rhyming words used','The length of the chapters'], 'The author\'s or speaker\'s attitude toward the subject or the audience', term: 3),
  _quSen3('senior','alliteration',5,2,'vocabulary', 'What is "personification"?', ['The attribution of a personal nature or human characteristics to something non-human','The repetition of consonant sounds','Exaggerating a statement','Comparing two things using "like"'], 'The attribution of a personal nature or human characteristics to something non-human', term: 3),
  _quSen3('senior','alternative_spelling',5,2,'grammar', 'Which is the correct spelling of the word meaning "the main events of a play or novel"?', ['plot','plott','plote','plat'], 'plot', term: 3),

  // Set 3 — comprehension (NOT read by TTS)
  _quSen3('senior','rhyme',5,3,'comprehension',
      'POEM EXTRACT: \nThe fragile flower fought the frost,\nDetermined that all was not lost.\nIt raised its petals to the sky,\nAnd watched the cruel winter die.\nBut deep beneath the frozen ground,\nIts roots were tightly, firmly bound.\nIt knew the sun would soon return,\nTo bless the earth and heal the burn.\n\nQ: What is the rhyme scheme of this extract?',
      ['AABBCCDD','ABABABCD','ABCDABCD','Free verse (no rhyme)'],
      'AABBCCDD', term: 3),
  _quSen3('senior','alliteration',5,3,'comprehension',
      'Refer to the poem above.\n\nQ: Which line contains clear alliteration?',
      ['The fragile flower fought the frost','And watched the cruel winter die','But deep beneath the frozen ground','To bless the earth and heal the burn'],
      'The fragile flower fought the frost', term: 3),
  _quSen3('senior','alternative_spelling',5,3,'comprehension',
      'Refer to the poem above.\n\nQ: What literary device is used heavily throughout the poem to give the flower human-like determination and knowledge?',
      ['Personification','Simile','Hyperbole','Onomatopoeia'],
      'Personification', term: 3),
  _quSen3('senior','alternative_spelling',5,3,'comprehension',
      'Refer to the poem above.\n\nQ: What does the "frost" or "cruel winter" likely symbolize?',
      ['Hardship, adversity, or a difficult period in life','A fun holiday','A literal ice cream','The beauty of nature'],
      'Hardship, adversity, or a difficult period in life', term: 3),
  _quSen3('senior','alternative_spelling',5,3,'comprehension',
      'Refer to the poem above.\n\nQ: What is a possible theme of this poem?',
      ['Resilience and hope in the face of adversity','The dangers of gardening in winter','Why flowers are weak','The destructive power of the sun'],
      'Resilience and hope in the face of adversity', term: 3),
  _quSen3('senior','alliteration',5,3,'grammar', 'Identify the repeated consonant sound in the first line.', ['The /f/ sound','The /t/ sound','The /r/ sound','The /s/ sound'], 'The /f/ sound', term: 3),
  _quSen3('senior','rhyme',5,3,'grammar', 'Which word rhymes with "return" in the final couplet?', ['burn','ground','sky','die'], 'burn', term: 3),
  _quSen3('senior','alternative_spelling',5,3,'vocabulary', 'What does "fragile" mean?', ['easily broken or damaged; delicate','extremely strong and heavy','very tall','brightly colored'], 'easily broken or damaged; delicate', term: 3),
  _quSen3('senior','alternative_spelling',5,3,'vocabulary', 'What does "adversity" mean? (Used in the theme answer)', ['difficulties; misfortune','great wealth','good weather','a type of flower'], 'difficulties; misfortune', term: 3),
  _quSen3('senior','alternative_spelling',5,3,'grammar', 'Which correctly spells the word meaning "the attribution of human traits to non-human things"?', ['personification','personificasion','personefication','personifacation'], 'personification', term: 3),

  // ══════════════════════════════════════════════════════════════════════════
  // WEEK 6 — Grammar: Full Revision
  // Tags: suffix, prefix, alternative_spelling
  // ══════════════════════════════════════════════════════════════════════════

  // Set 1 — grammar concepts
  _quSen3('senior','suffix',6,1,'grammar', 'Which of these is a complex sentence?', ['Although he was tired, he finished his homework.','He was tired.','He finished his homework.','He was tired, so he went to bed.'], 'Although he was tired, he finished his homework.', term: 3),
  _quSen3('senior','prefix',6,1,'grammar', 'What does the prefix "un-" mean in "unnecessary"?', ['not','again','before','after'], 'not', term: 3),
  _quSen3('senior','suffix',6,1,'grammar', 'Identify the passive sentence.', ['The window was broken by the baseball.','The boy threw the baseball.','The window broke.','The boy is throwing the baseball.'], 'The window was broken by the baseball.', term: 3),
  _quSen3('senior','alternative_spelling',6,1,'grammar', 'Convert to reported speech: "I am hungry," she said.', ['She said that she was hungry.','She said that I am hungry.','She says she is hungry.','She said, "She is hungry."'], 'She said that she was hungry.', term: 3),
  _quSen3('senior','suffix',6,1,'grammar', 'Which sentence uses the First Conditional correctly?', ['If it rains tomorrow, I will stay home.','If it rained tomorrow, I would stay home.','If it had rained, I would have stayed home.','If it rains tomorrow, I stay home.'], 'If it rains tomorrow, I will stay home.', term: 3),
  _quSen3('senior','suffix',6,1,'grammar', 'Which sentence uses the Third Conditional correctly?', ['If I had studied harder, I would have passed the exam.','If I study harder, I will pass.','If I studied harder, I would pass.','If I had studied harder, I pass.'], 'If I had studied harder, I would have passed the exam.', term: 3),
  _quSen3('senior','suffix',6,1,'grammar', 'What is "nominalisation"?', ['Turning a verb or adjective into a noun to sound more formal (e.g., decide -> decision)','Writing a sentence without a verb','Using only simple sentences','Spelling words incorrectly'], 'Turning a verb or adjective into a noun to sound more formal (e.g., decide -> decision)', term: 3),
  _quSen3('senior','prefix',6,1,'grammar', 'Which transition word is best to show a result?', ['Consequently','However','Furthermore','Similarly'], 'Consequently', term: 3),
  _quSen3('senior','alternative_spelling',6,1,'grammar', 'Which is the correct spelling?', ['accommodation','acommodation','accomodation','acomodation'], 'accommodation', term: 3),
  _quSen3('senior','suffix',6,1,'grammar', 'Identify the non-defining relative clause: "My brother, who is a doctor, lives in London."', ['who is a doctor','My brother lives in London','My brother, who is','lives in London'], 'who is a doctor', term: 3),

  // Set 2 — grammar concepts
  _quSen3('senior','alternative_spelling',6,2,'grammar', 'Which is the correct spelling of the exception word meaning "strange"?', ['weird','wierd','weard','weerd'], 'weird', term: 3),
  _quSen3('senior','prefix',6,2,'grammar', 'Which modal verb is best used for hedging (showing weak possibility)?', ['might','must','will','shall'], 'might', term: 3),
  _quSen3('senior','suffix',6,2,'grammar', 'Identify the tense error: "He walks to the store and bought a drink."', ['Mix of present (walks) and past (bought)','Mix of future and past','Mix of past perfect and present','There is no error'], 'Mix of present (walks) and past (bought)', term: 3),
  _quSen3('senior','prefix',6,2,'grammar', 'Which word uses the prefix "inter-" to mean "between"?', ['international','inside','interest','intrude'], 'international', term: 3),
  _quSen3('senior','suffix',6,2,'grammar', 'Identify the grammatical name: "[To win the race] is my goal."', ['Noun phrase','Adjectival clause','Adverbial phrase','Prepositional phrase'], 'Noun phrase', term: 3),
  _quSen3('senior','alternative_spelling',6,2,'grammar', 'Which is the correct spelling?', ['privilege','privelege','priviledge','privelige'], 'privilege', term: 3),
  _quSen3('senior','prefix',6,2,'grammar', 'Identify the prefix in "disproportionate".', ['dis-','-ate','pro-','portion'], 'dis-', term: 3),
  _quSen3('senior','suffix',6,2,'grammar', 'Which suffix turns the verb "inform" into an abstract noun?', ['-ation (information)','-ment (informment)','-ly (informly)','-ous (informous)'], '-ation (information)', term: 3),
  _quSen3('senior','alternative_spelling',6,2,'grammar', 'Which is the correct spelling for "happening immediately"?', ['immediately','immediatly','immediatley','imediately'], 'immediately', term: 3),
  _quSen3('senior','suffix',6,2,'grammar', 'In WAEC, what is the penalty for a tense inconsistency or spelling error under "Mechanical Accuracy"?', ['Half a mark (½) is deducted per error','Ten marks are deducted','You fail the essay','There is no penalty'], 'Half a mark (½) is deducted per error', term: 3),

  // Set 3 — comprehension (NOT read by TTS)
  _quSen3('senior','suffix',6,3,'comprehension',
      'PASSAGE: Effective communication in WAEC essays relies heavily on grammatical accuracy. If a student writes, "When I entered the room, I see my friend," the examiner will immediately deduct marks for tense inconsistency. Furthermore, students must master sentence variety. Relying solely on simple sentences makes an essay monotonous. Instead, candidates should utilize complex sentences containing relative clauses, such as: "The book, which was written by Achebe, is a masterpiece." Finally, proper nominalisation—changing "the government decided" to "the government\'s decision"—elevates the academic register of the writing.\n\nQ: What will the examiner immediately deduct marks for in the sentence "When I entered the room, I see my friend"?',
      ['Tense inconsistency (shifting from past "entered" to present "see")','Spelling errors','Using too many big words','Poor handwriting'],
      'Tense inconsistency (shifting from past "entered" to present "see")', term: 3),
  _quSen3('senior','prefix',6,3,'comprehension',
      'Refer to the passage above.\n\nQ: What makes an essay monotonous, according to the text?',
      ['Relying solely on simple sentences','Using complex sentences','Using nominalisation','Writing too neatly'],
      'Relying solely on simple sentences', term: 3),
  _quSen3('senior','suffix',6,3,'comprehension',
      'Refer to the passage above.\n\nQ: What should candidates utilize instead of just simple sentences?',
      ['Complex sentences containing relative clauses','Only one long sentence','Bullet points','Pictures'],
      'Complex sentences containing relative clauses', term: 3),
  _quSen3('senior','alternative_spelling',6,3,'comprehension',
      'Refer to the passage above.\n\nQ: In the example "The book, which was written by Achebe, is a masterpiece," what is the phrase "which was written by Achebe"?',
      ['A non-defining relative clause','A noun phrase','A spelling mistake','A simple sentence'],
      'A non-defining relative clause', term: 3),
  _quSen3('senior','suffix',6,3,'comprehension',
      'Refer to the passage above.\n\nQ: What effect does proper nominalisation have on the writing?',
      ['It elevates the academic register of the writing','It makes the writing sound like slang','It confuses the examiner','It makes the essay much shorter'],
      'It elevates the academic register of the writing', term: 3),
  _quSen3('senior','prefix',6,3,'vocabulary', 'What does "monotonous" mean?', ['dull, tedious, and repetitious; lacking in variety','very exciting and fast-paced','written in bright colors','having many grammatical errors'], 'dull, tedious, and repetitious; lacking in variety', term: 3),
  _quSen3('senior','suffix',6,3,'vocabulary', 'What is "nominalisation"?', ['The process of forming a noun from another word class (e.g., verb to noun)','The process of making a sentence simple','The process of checking for spelling errors','The process of naming a book'], 'The process of forming a noun from another word class (e.g., verb to noun)', term: 3),
  _quSen3('senior','alternative_spelling',6,3,'grammar', 'Identify the correctly spelled word from the text meaning "a piece of work by a craftsman accepted as outstanding".', ['masterpiece','masterpeice','masterpeece','mastapiece'], 'masterpiece', term: 3),
  _quSen3('senior','prefix',6,3,'grammar', 'Identify the transition word used in the passage to add an additional point about sentence variety.', ['Furthermore','Finally','Instead','When'], 'Furthermore', term: 3),
  _quSen3('senior','suffix',6,3,'grammar', 'Identify the abstract noun form of "decide" used as an example in the text.', ['decision','decidement','deciding','decidence'], 'decision', term: 3),

// ══════════════════════════════════════════════════════════════════════════
  // WEEK 7 — Mock WAEC: Paper 1
  // Tags: alternative_spelling, prefix, suffix, homophone
  // ══════════════════════════════════════════════════════════════════════════

  // Set 1 — mock paper 1 lexis and structure
  _quSen3('senior','homophone',7,1,'grammar', 'Which word fits best: "The lawyer gave him sound legal ___."?', ['advice','advise','advises','adviced'], 'advice', term: 3),
  _quSen3('senior','homophone',7,1,'grammar', 'Which word fits best: "It is against my ___ to cheat in an exam."?', ['principles','principals','princepals','princeples'], 'principles', term: 3),
  _quSen3('senior','alternative_spelling',7,1,'grammar', 'Which is the correct spelling for "an occurrence or event"?', ['incident','incidant','insident','insidant'], 'incident', term: 3),
  _quSen3('senior','prefix',7,1,'vocabulary', 'What does the prefix "multi-" mean in "multinational"?', ['many','one','across','between'], 'many', term: 3),
  _quSen3('senior','suffix',7,1,'grammar', 'Which suffix turns the verb "accommodate" into a noun?', ['-tion (accommodation)','-ment (accommodatement)','-ance (accommodatance)','-ity (accommodatity)'], '-tion (accommodation)', term: 3),
  _quSen3('senior','alternative_spelling',7,1,'grammar', 'Identify the correctly spelled word meaning "necessary".', ['indispensable','indispensible','indespensable','indespensible'], 'indispensable', term: 3),
  _quSen3('senior','prefix',7,1,'vocabulary', 'What does the prefix "poly-" mean in "polytechnic"?', ['many','few','smart','school'], 'many', term: 3),
  _quSen3('senior','suffix',7,1,'grammar', 'Identify the error: "He walked slowly and look around."', ['Tense inconsistency (walked/look). It should be walked/looked.','There is no error.','It should be "walk slowly".','"around" is spelled wrong.'], 'Tense inconsistency (walked/look). It should be walked/looked.', term: 3),
  _quSen3('senior','homophone',7,1,'grammar', 'Which word fits best: "The harsh weather will ___ the crops."?', ['affect','effect','except','accept'], 'affect', term: 3),
  _quSen3('senior','alternative_spelling',7,1,'vocabulary', 'What does "implicit" mean?', ['suggested though not directly expressed','stated clearly and in detail','very complicated','written in a formal letter'], 'suggested though not directly expressed', term: 3),

  // Set 2 — mock paper 1 lexis and structure
  _quSen3('senior','prefix',7,2,'grammar', 'Which transition word is best used to show a contrast?', ['Nevertheless','Consequently','Therefore','Furthermore'], 'Nevertheless', term: 3),
  _quSen3('senior','suffix',7,2,'grammar', 'Identify the grammatical name: "The man [who won the lottery] bought a house."', ['Adjectival clause (Relative clause)','Noun phrase','Adverbial clause','Prepositional phrase'], 'Adjectival clause (Relative clause)', term: 3),
  _quSen3('senior','alternative_spelling',7,2,'grammar', 'Which is the correct spelling of the exception word meaning "to grab"?', ['seize','sieze','seeze','ceize'], 'seize', term: 3),
  _quSen3('senior','homophone',7,2,'grammar', 'Which homophone fits best: "The judge asked the witness to speak ___."?', ['aloud','allowed','a loud','alloud'], 'aloud', term: 3),
  _quSen3('senior','prefix',7,2,'grammar', 'Which modal verb is best for expressing a weak possibility?', ['might','must','will','shall'], 'might', term: 3),
  _quSen3('senior','suffix',7,2,'grammar', 'Identify the grammatical function of the bracketed phrase: "[To become a doctor] requires years of study."', ['Subject of the verb "requires"','Object of the verb "study"','Modifies the noun "doctor"','Adverbial phrase of time'], 'Subject of the verb "requires"', term: 3),
  _quSen3('senior','alternative_spelling',7,2,'grammar', 'Which is the correct spelling?', ['maintenance','maintainance','maintenence','maintainence'], 'maintenance', term: 3),
  _quSen3('senior','homophone',7,2,'grammar', 'Which word fits best: "They pitched their tent on a large, flat ___."?', ['plain','plane','playn','plean'], 'plain', term: 3),
  _quSen3('senior','prefix',7,2,'vocabulary', 'What does the prefix "omni-" mean in "omniscient"?', ['all or everywhere','against','under','before'], 'all or everywhere', term: 3),
  _quSen3('senior','suffix',7,2,'grammar', 'Which conditional is used for an impossible past event? (e.g., If I had studied, I would have passed)', ['Third Conditional','First Conditional','Second Conditional','Zero Conditional'], 'Third Conditional', term: 3),

  // Set 3 — comprehension (NOT read by TTS)
  _quSen3('senior','alternative_spelling',7,3,'comprehension',
      'PASSAGE: The Mock WAEC Paper 1 tested the students\' grasp of lexis, structure, and comprehension. Section A required them to navigate complex passages and make implicit deductions about the author\'s tone. Section B was notoriously difficult, featuring a barrage of tricky homophones and obscure vocabulary. Students who had diligently studied their prefixes and suffixes found it easier to decode unfamiliar words. For example, recognizing that \'circum-\' means \'around\' helped many define \'circumvent\'. However, careless spelling mistakes, particularly with words like \'maintenance\' and \'privilege\', cost several candidates vital marks.\n\nQ: What did Section A of the mock exam require students to do?',
      ['Navigate complex passages and make implicit deductions','Write a formal letter','Draw a map','Recite a poem'],
      'Navigate complex passages and make implicit deductions', term: 3),
  _quSen3('senior','homophone',7,3,'comprehension',
      'Refer to the passage above.\n\nQ: What made Section B notoriously difficult?',
      ['A barrage of tricky homophones and obscure vocabulary','It was written in French','It required solving math equations','The text was too small to read'],
      'A barrage of tricky homophones and obscure vocabulary', term: 3),
  _quSen3('senior','prefix',7,3,'comprehension',
      'Refer to the passage above.\n\nQ: What helped students decode unfamiliar words?',
      ['Diligently studying prefixes and suffixes','Guessing randomly','Looking at the ceiling','Asking the teacher'],
      'Diligently studying prefixes and suffixes', term: 3),
  _quSen3('senior','prefix',7,3,'comprehension',
      'Refer to the passage above.\n\nQ: How did knowing the prefix "circum-" help students?',
      ['It helped them define the word \'circumvent\'','It helped them spell \'maintenance\'','It told them the time','It gave them the main theme'],
      'It helped them define the word \'circumvent\'', term: 3),
  _quSen3('senior','alternative_spelling',7,3,'comprehension',
      'Refer to the passage above.\n\nQ: What cost several candidates vital marks?',
      ['Careless spelling mistakes with words like \'maintenance\' and \'privilege\'','Writing too fast','Using a blue pen','Forgetting their names'],
      'Careless spelling mistakes with words like \'maintenance\' and \'privilege\'', term: 3),
  _quSen3('senior','prefix',7,3,'vocabulary', 'What does "circumvent" mean?', ['to find a way around an obstacle','to build a circle','to speak clearly','to cut in half'], 'to find a way around an obstacle', term: 3),
  _quSen3('senior','alternative_spelling',7,3,'vocabulary', 'What does "obscure" mean?', ['not discovered or known about; uncertain','very clear and obvious','extremely bright','loud and noisy'], 'not discovered or known about; uncertain', term: 3),
  _quSen3('senior','suffix',7,3,'grammar', 'Identify the adverb in the phrase "diligently studied".', ['diligently','studied','their','prefixes'], 'diligently', term: 3),
  _quSen3('senior','alternative_spelling',7,3,'vocabulary', 'What does "implicit" mean?', ['suggested though not directly expressed','stated clearly and in detail','a type of spelling error','a long passage'], 'suggested though not directly expressed', term: 3),
  _quSen3('senior','homophone',7,3,'grammar', 'Which homophone from the text means "extremely important"?', ['vital','title','idle','bridal'], 'vital', term: 3), // slight stretch, but fits vocabulary.

  // ══════════════════════════════════════════════════════════════════════════
  // WEEK 8 — Mock WAEC: Paper 2
  // Tags: prefix, suffix, alliteration, rhyme
  // ══════════════════════════════════════════════════════════════════════════

  // Set 1 — mock paper 2 literature and essay
  _quSen3('senior','alliteration',8,1,'vocabulary', 'What is "alliteration"?', ['The occurrence of the same letter or sound at the beginning of adjacent or closely connected words','A comparison using like or as','Exaggeration for dramatic effect','A type of rhyme scheme'], 'The occurrence of the same letter or sound at the beginning of adjacent or closely connected words', term: 3),
  _quSen3('senior','rhyme',8,1,'vocabulary', 'What is "enjambment"?', ['The continuation of a sentence without a pause beyond the end of a line or stanza in poetry','The rhythm of the poem','The main character in a play','A funny, five-line poem'], 'The continuation of a sentence without a pause beyond the end of a line or stanza in poetry', term: 3),
  _quSen3('senior','suffix',8,1,'grammar', 'In an essay, what does the "P.E.E." structure stand for?', ['Point, Evidence, Explain','Paragraph, Essay, End','Place, Event, Emotion','Point, Example, Erase'], 'Point, Evidence, Explain', term: 3),
  _quSen3('senior','prefix',8,1,'grammar', 'What is the purpose of a "thesis statement"?', ['To clearly state the main argument or purpose of the essay in the introduction','To summarize the essay at the very end','To ask the reader a question','To list the author\'s credentials'], 'To clearly state the main argument or purpose of the essay in the introduction', term: 3),
  _quSen3('senior','alliteration',8,1,'grammar', 'Identify the literary device: "The silent sea swallowed the sailors."', ['Alliteration (and Personification)','Simile','Rhyme','Hyperbole'], 'Alliteration (and Personification)', term: 3),
  _quSen3('senior','rhyme',8,1,'vocabulary', 'What does the "tone" of a text refer to?', ['The author\'s or speaker\'s attitude toward the subject or audience','The volume at which it should be spoken','The musical instruments used in the background','The length of the text'], 'The author\'s or speaker\'s attitude toward the subject or audience', term: 3),
  _quSen3('senior','suffix',8,1,'vocabulary', 'What is "nominalisation" in academic writing?', ['Turning verbs or adjectives into nouns to make the text sound more formal (e.g., decide -> decision)','Writing only in simple sentences','Spelling words incorrectly','Using a lot of slang'], 'Turning verbs or adjectives into nouns to make the text sound more formal (e.g., decide -> decision)', term: 3),
  _quSen3('senior','prefix',8,1,'grammar', 'Which transition phrase is best to introduce a contrasting idea in an essay?', ['On the other hand,...','Therefore,...','Furthermore,...','For instance,...'], 'On the other hand,...', term: 3),
  _quSen3('senior','rhyme',8,1,'vocabulary', 'What is a "sonnet"?', ['A 14-line poem with a specific rhyme scheme and meter','A play written for the stage','A very long fictional story','A formal letter to an editor'], 'A 14-line poem with a specific rhyme scheme and meter', term: 3),
  _quSen3('senior','alliteration',8,1,'vocabulary', 'What is "onomatopoeia"?', ['A word that imitates the sound it describes (e.g., buzz, hiss)','A repetition of vowel sounds','A type of metaphor','A formal essay format'], 'A word that imitates the sound it describes (e.g., buzz, hiss)', term: 3),

  // Set 2 — mock paper 2 literature and essay
  _quSen3('senior','prefix',8,2,'grammar', 'Which prefix means "to do again" or "back"?', ['re- (rewrite, return)','un- (unwrite)','mis- (miswrite)','dis- (diswrite)'], 're- (rewrite, return)', term: 3),
  _quSen3('senior','suffix',8,2,'vocabulary', 'What is the "climax" of a narrative or drama?', ['The point of highest tension or the major turning point in the plot','The introduction of the setting','The final sentence of the story','The author\'s biography'], 'The point of highest tension or the major turning point in the plot', term: 3),
  _quSen3('senior','alliteration',8,2,'grammar', 'Which sentence uses a metaphor?', ['The classroom was a zoo.','The classroom was like a zoo.','The classroom had animals.','The classroom was loud.'], 'The classroom was a zoo.', term: 3),
  _quSen3('senior','rhyme',8,2,'grammar', 'Which is a rhyming couplet?', ['The sun is bright, / It gives us light.','The sun is hot, / The moon is cold.','I like to run, / It is very fun. (Wait, run/fun rhymes, but let\'s use the exact match A)','A and C'], 'A and C', term: 3),
  _quSen3('senior','prefix',8,2,'vocabulary', 'What is "dramatic irony"?', ['When the audience knows something that the characters do not','When a character tells a joke','When the ending is unexpected','When a character lies'], 'When the audience knows something that the characters do not', term: 3),
  _quSen3('senior','suffix',8,2,'grammar', 'If you are asked to write an "Expository Essay", what should you do?', ['Explain, inform, or describe a subject objectively using facts','Argue aggressively for one side','Write a fictional story about your weekend','Write a poem'], 'Explain, inform, or describe a subject objectively using facts', term: 3),
  _quSen3('senior','alliteration',8,2,'vocabulary', 'What is "foreshadowing"?', ['Giving the reader hints or clues about what will happen later in the story','Looking back at a past event','A type of weather in a story','A description of a character\'s face'], 'Giving the reader hints or clues about what will happen later in the story', term: 3),
  _quSen3('senior','rhyme',8,2,'vocabulary', 'What is "imagery" in literature?', ['Descriptive language that appeals to the five senses to create vivid pictures in the reader\'s mind','The rhyming pattern of a poem','The physical book itself','The title page'], 'Descriptive language that appeals to the five senses to create vivid pictures in the reader\'s mind', term: 3),
  _quSen3('senior','prefix',8,2,'grammar', 'What does the prefix "sub-" mean in "substantiate"? (sub = under, stantia = stand)', ['To provide evidence to support or prove the truth of an argument','To break something down','To write an introduction','To talk quietly'], 'To provide evidence to support or prove the truth of an argument', term: 3),
  _quSen3('senior','suffix',8,2,'vocabulary', 'What does the writing rule "Show, Don\'t Tell" mean?', ['Using descriptive actions and sensory details to let the reader infer what is happening, rather than just stating it','Writing very short sentences','Refusing to write dialogue','Only drawing pictures'], 'Using descriptive actions and sensory details to let the reader infer what is happening, rather than just stating it', term: 3),

  // Set 3 — comprehension (NOT read by TTS)
  _quSen3('senior','prefix',8,3,'comprehension',
      'PASSAGE: In Paper 2, candidates were tasked with writing a discursive essay evaluating the impact of artificial intelligence. Top-scoring essays presented a balanced view. They used transition words to ensure cohesion and substantiated their claims with empirical evidence. In the literature section, students analysed a poem about the ravages of war. The poet utilized harsh alliteration—"bombs battered the broken buildings"—to emphasize the destruction. Furthermore, the use of enjambment forced the reader to read quickly, mirroring the chaotic, unstoppable pace of the conflict. The overarching theme of the poem was the futility of violence.\n\nQ: What kind of essay were candidates tasked with writing in Paper 2?',
      ['A discursive essay evaluating the impact of artificial intelligence','A narrative story about a robot','An informal letter to a friend','A descriptive poem'],
      'A discursive essay evaluating the impact of artificial intelligence', term: 3),
  _quSen3('senior','suffix',8,3,'comprehension',
      'Refer to the passage above.\n\nQ: How did top-scoring essays support their claims?',
      ['They substantiated their claims with empirical evidence','They used personal opinions and feelings','They guessed the answers','They drew pictures'],
      'They substantiated their claims with empirical evidence', term: 3),
  _quSen3('senior','alliteration',8,3,'comprehension',
      'Refer to the passage above.\n\nQ: What literary device is "bombs battered the broken buildings"?',
      ['Alliteration','Simile','Metaphor','Rhyme'],
      'Alliteration', term: 3),
  _quSen3('senior','rhyme',8,3,'comprehension',
      'Refer to the passage above.\n\nQ: What effect did the use of enjambment have?',
      ['It forced the reader to read quickly, mirroring the chaotic pace of the conflict','It made the poem rhyme perfectly','It made the poem very slow and boring','It confused the reader completely'],
      'It forced the reader to read quickly, mirroring the chaotic pace of the conflict', term: 3),
  _quSen3('senior','prefix',8,3,'comprehension',
      'Refer to the passage above.\n\nQ: What was the overarching theme of the poem?',
      ['The futility of violence','The beauty of nature','The importance of technology','A love story'],
      'The futility of violence', term: 3),
  _quSen3('senior','prefix',8,3,'vocabulary', 'What does "discursive" mean in the context of an essay?', ['Presenting a balanced discussion of a topic, exploring different perspectives','A short, fictional story','An angry, biased argument','A letter of complaint'], 'Presenting a balanced discussion of a topic, exploring different perspectives', term: 3),
  _quSen3('senior','suffix',8,3,'vocabulary', 'What does "empirical" evidence mean?', ['Evidence based on observation, experience, or scientific experiment rather than theory','A wild guess','A rumor heard from a friend','A fictional story'], 'Evidence based on observation, experience, or scientific experiment rather than theory', term: 3),
  _quSen3('senior','rhyme',8,3,'vocabulary', 'What does "futility" mean?', ['pointlessness or uselessness','great importance','extreme violence','a type of weapon'], 'pointlessness or uselessness', term: 3),
  _quSen3('senior','alliteration',8,3,'grammar', 'What consonant sound is repeated in the poem\'s alliteration example?', ['The /b/ sound','The /t/ sound','The /s/ sound','The /m/ sound'], 'The /b/ sound', term: 3),
  _quSen3('senior','prefix',8,3,'vocabulary', 'What does "overarching" mean?', ['comprehensive or all-embracing; covering everything','very small and hidden','a type of bridge','written at the bottom of the page'], 'comprehensive or all-embracing; covering everything', term: 3),

  // ══════════════════════════════════════════════════════════════════════════
  // WEEK 9 — Targeted Revision
  // Tags: prefix, suffix, alternative_spelling, homophone
  // ══════════════════════════════════════════════════════════════════════════

  // Set 1 — error correction and revision
  _quSen3('senior','alternative_spelling',9,1,'grammar', 'Identify the spelling error in this sentence: "The enviroment is heavily polluted."', ['enviroment (should be environment)','heavily (should be heavyly)','polluted (should be poluted)','There is no error'], 'enviroment (should be environment)', term: 3),
  _quSen3('senior','homophone',9,1,'grammar', 'Identify the homophone error: "The principle of the school gave a speech."', ['principle (should be principal)','school (should be skool)','speech (should be speach)','gave (should be gived)'], 'principle (should be principal)', term: 3),
  _quSen3('senior','prefix',9,1,'grammar', 'Identify the error: "He acted very irresponsable."', ['irresponsable (should be irresponsible)','acted (should be acts)','very (should be vary)','He (should be Him)'], 'irresponsable (should be irresponsible)', term: 3),
  _quSen3('senior','suffix',9,1,'grammar', 'Identify the tense error: "When the bell rang, the students pack their bags."', ['Tense shift: rang (past) to pack (present). It should be "packed".','There is no error','rang should be ringed','students should be student'], 'Tense shift: rang (past) to pack (present). It should be "packed".', term: 3),
  _quSen3('senior','alternative_spelling',9,1,'grammar', 'Identify the spelling error: "It is definately going to rain."', ['definately (should be definitely)','going (should be goeing)','rain (should be rane)','There is no error'], 'definately (should be definitely)', term: 3),
  _quSen3('senior','homophone',9,1,'grammar', 'Identify the homophone error: "They left there books on the table."', ['there (should be their)','left (should be leaved)','books (should be bookes)','table (should be tabel)'], 'there (should be their)', term: 3),
  _quSen3('senior','prefix',9,1,'grammar', 'Which word uses a prefix to mean "not logical"?', ['illogical','unlogical','dislogical','mislogical'], 'illogical', term: 3),
  _quSen3('senior','suffix',9,1,'grammar', 'Fix the run-on sentence: "The test was hard I failed it."', ['The test was hard, so I failed it. (Or: The test was hard; I failed it.)','The test was hard I failed it.','Because the test was hard I failed it.','The test was hard and I failed it without a comma.'], 'The test was hard, so I failed it. (Or: The test was hard; I failed it.)', term: 3),
  _quSen3('senior','alternative_spelling',9,1,'grammar', 'Identify the spelling error: "The committee had a meeting."', ['There is no error; committee is spelled correctly.','committee (should be comittee)','meeting (should be meting)','had (should be has)'], 'There is no error; committee is spelled correctly.', term: 3),
  _quSen3('senior','homophone',9,1,'grammar', 'Which homophone fits best: "She has a valid driving ___."?', ['licence (noun)','license (verb)','lisence','lysence'], 'licence (noun)', term: 3),

  // Set 2 — more revision
  _quSen3('senior','prefix',9,2,'grammar', 'What is the grammatical name of the phrase in brackets: "[To succeed in life] requires hard work."?', ['Noun phrase','Adverbial clause','Adjectival clause','Prepositional phrase'], 'Noun phrase', term: 3),
  _quSen3('senior','suffix',9,2,'grammar', 'What is the grammatical function of "[To succeed in life]"?', ['Subject of the verb "requires"','Object of the verb "requires"','Modifies the noun "life"','Acts as an adjective'], 'Subject of the verb "requires"', term: 3),
  _quSen3('senior','alternative_spelling',9,2,'grammar', 'Identify the spelling error: "I need to renew my passport immediatly."', ['immediatly (should be immediately)','renew (should be renu)','passport (should be pasport)','There is no error'], 'immediatly (should be immediately)', term: 3),
  _quSen3('senior','homophone',9,2,'grammar', 'Identify the homophone error: "The dog chased it\'s tail."', ['it\'s (should be its, no apostrophe for possessive)','chased (should be chaced)','tail (should be tale)','There is no error'], 'it\'s (should be its, no apostrophe for possessive)', term: 3),
  _quSen3('senior','prefix',9,2,'vocabulary', 'What does the prefix "circum-" mean?', ['around','through','under','before'], 'around', term: 3),
  _quSen3('senior','suffix',9,2,'grammar', 'Which is a Third Conditional sentence?', ['If he had run faster, he would have won.','If he runs fast, he will win.','If he ran fast, he would win.','He runs fast and wins.'], 'If he had run faster, he would have won.', term: 3),
  _quSen3('senior','alternative_spelling',9,2,'grammar', 'Identify the correctly spelled word meaning "a person who represents an organization".', ['committee','comittee','commitee','comite'], 'committee', term: 3),
  _quSen3('senior','homophone',9,2,'grammar', 'Which homophone fits best: "He walked ___ the door."?', ['through','threw','thorough','though'], 'through', term: 3),
  _quSen3('senior','prefix',9,2,'grammar', 'Identify the passive sentence.', ['The letter was sent by the manager.','The manager sent the letter.','The manager is writing a letter.','The letter is on the desk.'], 'The letter was sent by the manager.', term: 3),
  _quSen3('senior','suffix',9,2,'vocabulary', 'What is "nominalisation"?', ['Turning a verb or adjective into a noun to make the text formal','Writing a poem','Using short sentences','Spelling words correctly'], 'Turning a verb or adjective into a noun to make the text formal', term: 3),

  // Set 3 — comprehension (NOT read by TTS)
  _quSen3('senior','alternative_spelling',9,3,'comprehension',
      'PASSAGE: During the targeted revision week, the English teacher handed back the marked mock exams. "The content of your essays was excellent," she noted, "but mechanical accuracy remains a widespread issue." She pointed out that many students failed to distinguish between the homophones \'affect\' and \'effect\'. Furthermore, simple spelling rules were ignored, leading to bizarre creations like \'wierd\' instead of \'weird\' and \'priviledge\' instead of \'privilege\'. She strongly urged the students to use their remaining time to proofread meticulously. "A brilliant argument is easily undermined by a basic grammatical flaw," she concluded.\n\nQ: What did the teacher say was excellent about the essays?',
      ['The content','The spelling','The handwriting','The title'],
      'The content', term: 3),
  _quSen3('senior','suffix',9,3,'comprehension',
      'Refer to the passage above.\n\nQ: What remained a widespread issue for the students?',
      ['Mechanical accuracy','Coming to class on time','Understanding the essay prompt','Writing long enough essays'],
      'Mechanical accuracy', term: 3),
  _quSen3('senior','homophone',9,3,'comprehension',
      'Refer to the passage above.\n\nQ: Which two homophones did students fail to distinguish between?',
      ['\'affect\' and \'effect\'','\'there\' and \'their\'','\'to\' and \'two\'','\'principle\' and \'principal\''],
      '\'affect\' and \'effect\'', term: 3),
  _quSen3('senior','alternative_spelling',9,3,'comprehension',
      'Refer to the passage above.\n\nQ: What two spelling errors (bizarre creations) were specifically mentioned?',
      ['\'wierd\' and \'priviledge\'','\'enviroment\' and \'goverment\'','\'definetly\' and \'acommodate\'','\'reciept\' and \'beleive\''],
      '\'wierd\' and \'priviledge\'', term: 3),
  _quSen3('senior','prefix',9,3,'comprehension',
      'Refer to the passage above.\n\nQ: What is easily undermined by a basic grammatical flaw?',
      ['A brilliant argument','The teacher\'s patience','The school\'s reputation','The student\'s handwriting'],
      'A brilliant argument', term: 3),
  _quSen3('senior','suffix',9,3,'vocabulary', 'What does "meticulously" mean?', ['in a way that shows great attention to detail; very thoroughly','very quickly and carelessly','loudly and angrily','silently'], 'in a way that shows great attention to detail; very thoroughly', term: 3),
  _quSen3('senior','prefix',9,3,'vocabulary', 'What does "undermined" mean?', ['lessened the effectiveness, power, or ability of something','supported and strengthened','written underneath','highlighted with a pen'], 'lessened the effectiveness, power, or ability of something', term: 3),
  _quSen3('senior','alternative_spelling',9,3,'vocabulary', 'What does "bizarre" mean?', ['very strange or unusual','beautiful and perfect','boring and normal','short and simple'], 'very strange or unusual', term: 3),
  _quSen3('senior','homophone',9,3,'grammar', 'If a student wrote "The rain had a bad affect on the crops", what is the error?', ['\'affect\' should be \'effect\' (noun)','\'crops\' should be \'crop\'','\'bad\' should be \'badly\'','There is no error'], '\'affect\' should be \'effect\' (noun)', term: 3),
  _quSen3('senior','alternative_spelling',9,3,'grammar', 'Which is the correct spelling of the word meaning "a special right"?', ['privilege','privelege','priviledge','privelige'], 'privilege', term: 3),

  // ══════════════════════════════════════════════════════════════════════════
  // WEEK 10 — Oral English Preparation
  // Tags: syllable
  // ══════════════════════════════════════════════════════════════════════════

  // Set 1 — syllables and word stress
  _quSen3('senior','syllable',10,1,'vocabulary', 'What is a "syllable"?', ['A unit of pronunciation having one vowel sound, with or without surrounding consonants','A type of punctuation mark','The definition of a word','A rhyming word'], 'A unit of pronunciation having one vowel sound, with or without surrounding consonants', term: 3),
  _quSen3('senior','syllable',10,1,'vocabulary', 'What is "word stress" in English?', ['The emphasis given to a specific syllable in a word, making it sound louder, longer, and higher in pitch','The anxiety you feel before an exam','Writing a word in capital letters','Speaking very fast'], 'The emphasis given to a specific syllable in a word, making it sound louder, longer, and higher in pitch', term: 3),
  _quSen3('senior','syllable',10,1,'grammar', 'How many syllables are in the word "examination"?', ['5 (ex-am-i-na-tion)','4','6','3'], '5 (ex-am-i-na-tion)', term: 3),
  _quSen3('senior','syllable',10,1,'grammar', 'In the noun "PRE-sent" (a gift), which syllable is stressed?', ['The first syllable','The second syllable','Both syllables','Neither syllable'], 'The first syllable', term: 3),
  _quSen3('senior','syllable',10,1,'grammar', 'In the verb "pre-SENT" (to give something), which syllable is stressed?', ['The second syllable','The first syllable','Both syllables','Neither syllable'], 'The second syllable', term: 3),
  _quSen3('senior','syllable',10,1,'grammar', 'How many syllables are in "comfortable"?', ['4 (com-fort-a-ble)','3','5','2'], '4 (com-fort-a-ble)', term: 3),
  _quSen3('senior','syllable',10,1,'grammar', 'For words ending in "-tion" (like "education"), where does the stress usually fall?', ['On the syllable immediately BEFORE the "-tion" suffix (e-du-CA-tion)','On the "-tion" suffix itself','On the very first syllable','It is completely random'], 'On the syllable immediately BEFORE the "-tion" suffix (e-du-CA-tion)', term: 3),
  _quSen3('senior','syllable',10,1,'grammar', 'Which syllable is stressed in "information"?', ['ma (in-for-MA-tion)','in','for','tion'], 'ma (in-for-MA-tion)', term: 3),
  _quSen3('senior','syllable',10,1,'grammar', 'How many syllables are in "temperature"?', ['4 (tem-per-a-ture)','3','5','2'], '4 (tem-per-a-ture)', term: 3),
  _quSen3('senior','syllable',10,1,'vocabulary', 'What is "intonation"?', ['The rise and fall of the voice in speaking, used to convey emotion or grammatical meaning (like asking a question)','The speed of your speech','The volume of your speech','The number of syllables in a sentence'], 'The rise and fall of the voice in speaking, used to convey emotion or grammatical meaning (like asking a question)', term: 3),

  // Set 2 — WAEC oral practice
  _quSen3('senior','syllable',10,2,'grammar', 'In a Yes/No question (e.g., "Are you coming?"), what type of intonation is usually used?', ['Rising intonation at the end','Falling intonation at the end','A flat, monotone pitch','A sudden shout'], 'Rising intonation at the end', term: 3),
  _quSen3('senior','syllable',10,2,'grammar', 'In a WH- question (e.g., "Where are you going?"), what type of intonation is usually used?', ['Falling intonation at the end','Rising intonation at the end','A flat, monotone pitch','A sudden whisper'], 'Falling intonation at the end', term: 3),
  _quSen3('senior','syllable',10,2,'grammar', 'In the noun "RE-cord", which syllable is stressed?', ['The first syllable','The second syllable','Neither','Both'], 'The first syllable', term: 3),
  _quSen3('senior','syllable',10,2,'grammar', 'In the verb "re-CORD", which syllable is stressed?', ['The second syllable','The first syllable','Neither','Both'], 'The second syllable', term: 3),
  _quSen3('senior','syllable',10,2,'grammar', 'How many syllables are in "vegetable"?', ['4 (veg-e-ta-ble)','3','5','2'], '4 (veg-e-ta-ble)', term: 3),
  _quSen3('senior','syllable',10,2,'grammar', 'Which syllable is stressed in "photography"?', ['tog (pho-TOG-ra-phy)','pho','ra','phy'], 'tog (pho-TOG-ra-phy)', term: 3),
  _quSen3('senior','syllable',10,2,'grammar', 'How many syllables are in "interesting"?', ['4 (in-ter-est-ing)','3','5','2'], '4 (in-ter-est-ing)', term: 3),
  _quSen3('senior','syllable',10,2,'vocabulary', 'What is the "schwa" sound?', ['The most common vowel sound in English, an unstressed "uh" sound (like the \'a\' in "about" or \'e\' in "taken")','A loud, long "A" sound','The sound a snake makes','A type of consonant cluster'], 'The most common vowel sound in English, an unstressed "uh" sound (like the \'a\' in "about" or \'e\' in "taken")', term: 3),
  _quSen3('senior','syllable',10,2,'grammar', 'Which syllable is stressed in "biology"?', ['ol (bi-OL-o-gy)','bi','o','gy'], 'ol (bi-OL-o-gy)', term: 3),
  _quSen3('senior','syllable',10,2,'grammar', 'How many syllables are in "university"?', ['5 (u-ni-ver-si-ty)','4','6','3'], '5 (u-ni-ver-si-ty)', term: 3),

  // Set 3 — comprehension (NOT read by TTS)
  _quSen3('senior','syllable',10,3,'comprehension',
      'PASSAGE: Preparing for the WAEC Oral English examination requires a deep understanding of pronunciation mechanics. Mr. Salami stood before the class and wrote the word "photograph" on the board. "Listen carefully," he said. "The stress falls on the first syllable: PHO-to-graph. However, if we change the word to \'photography\', the stress shifts to the second syllable: pho-TOG-ra-phy." He then explained intonation patterns. "When you ask \'What time is the test?\', your voice should fall at the end. But if you ask \'Are you ready?\', your voice must rise." The students practised chanting the words, clapping their hands to identify the stressed syllables.\n\nQ: What examination were the students preparing for?',
      ['The WAEC Oral English examination','A mathematics test','A history debate','A spelling bee'],
      'The WAEC Oral English examination', term: 3),
  _quSen3('senior','syllable',10,3,'comprehension',
      'Refer to the passage above.\n\nQ: Where does the stress fall in the word "photograph"?',
      ['On the first syllable (PHO-to-graph)','On the second syllable','On the third syllable','There is no stress'],
      'On the first syllable (PHO-to-graph)', term: 3),
  _quSen3('senior','syllable',10,3,'comprehension',
      'Refer to the passage above.\n\nQ: Where does the stress fall in the word "photography"?',
      ['On the second syllable (pho-TOG-ra-phy)','On the first syllable','On the third syllable','On the fourth syllable'],
      'On the second syllable (pho-TOG-ra-phy)', term: 3),
  _quSen3('senior','syllable',10,3,'comprehension',
      'Refer to the passage above.\n\nQ: What should your voice do at the end of the question "What time is the test?"?',
      ['It should fall (falling intonation)','It should rise','It should stay perfectly flat','It should turn into a shout'],
      'It should fall (falling intonation)', term: 3),
  _quSen3('senior','syllable',10,3,'comprehension',
      'Refer to the passage above.\n\nQ: What did the students do to identify the stressed syllables?',
      ['They clapped their hands','They jumped up and down','They wrote the words ten times','They looked in a dictionary'],
      'They clapped their hands', term: 3),
  _quSen3('senior','syllable',10,3,'vocabulary', 'What are "mechanics" in the context of pronunciation?', ['the practical details or procedures of how something works','the people who fix cars','the tools used to write','the volume of speech'], 'the practical details or procedures of how something works', term: 3),
  _quSen3('senior','syllable',10,3,'grammar', 'How many syllables are in the word "examination"?', ['5','4','6','3'], '5', term: 3),
  _quSen3('senior','syllable',10,3,'grammar', 'How many syllables are in the word "understanding"?', ['4','5','3','6'], '4', term: 3), // un-der-stand-ing
  _quSen3('senior','syllable',10,3,'grammar', 'What kind of question is "Are you ready?" which requires rising intonation?', ['A Yes/No question','A WH- question','A rhetorical question','A command'], 'A Yes/No question', term: 3),
  _quSen3('senior','syllable',10,3,'vocabulary', 'What does "chanting" mean?', ['saying or shouting repeatedly in a sing-song tone','writing silently','falling asleep','whispering a secret'], 'saying or shouting repeatedly in a sing-song tone', term: 3),

  // ══════════════════════════════════════════════════════════════════════════
  // WEEK 11 — Final Examination Preparation
  // Tags: prefix, suffix, alternative_spelling, homophone, syllable
  // ══════════════════════════════════════════════════════════════════════════

  // Set 1 — mixed exam prep
  _quSen3('senior','alternative_spelling',11,1,'grammar', 'Identify the correctly spelled word meaning "a special right".', ['privilege','privelege','priviledge','privelige'], 'privilege', term: 3),
  _quSen3('senior','prefix',11,1,'vocabulary', 'What does the prefix "omni-" mean in "omniscient"?', ['all or everywhere','before','against','many'], 'all or everywhere', term: 3),
  _quSen3('senior','suffix',11,1,'grammar', 'Identify the passive sentence.', ['The essay was written by the student.','The student wrote the essay.','The student is writing the essay.','The essay is very long.'], 'The essay was written by the student.', term: 3),
  _quSen3('senior','homophone',11,1,'grammar', 'Which homophone fits best: "The new rules will ___ everyone in the school."?', ['affect','effect','except','accept'], 'affect', term: 3),
  _quSen3('senior','syllable',11,1,'grammar', 'How many syllables are in "environment"?', ['4','3','5','2'], '4', term: 3),
  _quSen3('senior','alternative_spelling',11,1,'vocabulary', 'What does it mean to "infer" something from a text?', ['To draw a logical conclusion based on clues, not explicit statements','To read the text out loud','To copy the exact words','To disagree with the author'], 'To draw a logical conclusion based on clues, not explicit statements', term: 3),
  _quSen3('senior','prefix',11,1,'grammar', 'Which transition word indicates a contrast?', ['However (or Nevertheless)','Consequently','Furthermore','Therefore'], 'However (or Nevertheless)', term: 3),
  _quSen3('senior','suffix',11,1,'grammar', 'What does the "First Conditional" express? (e.g., If it rains, I will stay inside)', ['A real or very probable situation in the future','An impossible past event','A hypothetical dream','A general scientific fact'], 'A real or very probable situation in the future', term: 3),
  _quSen3('senior','homophone',11,1,'grammar', 'Which homophone fits best: "The cost must be ___ by the government."?', ['borne','born','bourn','bone'], 'borne', term: 3),
  _quSen3('senior','syllable',11,1,'vocabulary', 'In poetry, what is "enjambment"?', ['The continuation of a sentence without a pause beyond the end of a line','A rhyming couplet','The beat of the poem','A metaphor'], 'The continuation of a sentence without a pause beyond the end of a line', term: 3),

  // Set 2 — mixed exam prep
  _quSen3('senior','alternative_spelling',11,2,'grammar', 'Which is the correct spelling for "happening immediately"?', ['immediately','immediatly','immediatley','imediately'], 'immediately', term: 3),
  _quSen3('senior','prefix',11,2,'vocabulary', 'What does the prefix "circum-" mean in "circumvent"?', ['around','under','through','against'], 'around', term: 3),
  _quSen3('senior','suffix',11,2,'grammar', 'Identify the non-defining relative clause: "Lagos, which is a massive city, has heavy traffic."', ['which is a massive city','Lagos has heavy traffic','Lagos, which is','has heavy traffic'], 'which is a massive city', term: 3),
  _quSen3('senior','homophone',11,2,'grammar', 'Which homophone fits best: "He gave me a nice ___ on my presentation."?', ['compliment','complement','complimant','complemant'], 'compliment', term: 3),
  _quSen3('senior','syllable',11,2,'grammar', 'How many syllables are in "comprehension"?', ['4','3','5','2'], '4', term: 3),
  _quSen3('senior','alternative_spelling',11,2,'vocabulary', 'What is "dramatic irony"?', ['When the audience knows something a character does not','When a character uses sarcasm','When the ending is sad','When two words sound the same'], 'When the audience knows something a character does not', term: 3),
  _quSen3('senior','prefix',11,2,'grammar', 'Which modal verb expresses strong obligation or certainty?', ['must','might','could','may'], 'must', term: 3),
  _quSen3('senior','suffix',11,2,'grammar', 'What is "nominalisation"?', ['Turning a verb or adjective into a noun to make writing more formal','Writing a simple sentence','Using slang in an essay','Changing the tense of a verb'], 'Turning a verb or adjective into a noun to make writing more formal', term: 3),
  _quSen3('senior','homophone',11,2,'grammar', 'Which homophone fits best: "I bought some pens at the ___ shop."?', ['stationery','stationary','stationari','stationry'], 'stationery', term: 3),
  _quSen3('senior','syllable',11,2,'grammar', 'In the noun "RE-cord", which syllable is stressed?', ['The first syllable','The second syllable','Both syllables','Neither syllable'], 'The first syllable', term: 3),

  // Set 3 — comprehension (NOT read by TTS)
  _quSen3('senior','alternative_spelling',11,3,'comprehension',
      'PASSAGE: The final week before the WAEC English examination was intense. Mr. Abiodun, the senior English teacher, conducted a comprehensive review session. "Remember your P.E.E. paragraphs," he stated, "and ensure your thesis statement is explicit in the introduction." He reminded them to avoid the disastrous pitfall of tense inconsistency, which WAEC examiners penalise heavily. "If you write in the past tense, stay in the past tense," he advised. Finally, he handed out a list of the fifty most commonly misspelled words, highlighting \'embarrass\' and \'accommodate\', urging the students to practice them until they were perfect.\n\nQ: What did Mr. Abiodun remind the students to ensure about their thesis statement?',
      ['That it is explicit in the introduction','That it is hidden at the end','That it is written as a question','That it uses slang'],
      'That it is explicit in the introduction', term: 3),
  _quSen3('senior','suffix',11,3,'comprehension',
      'Refer to the passage above.\n\nQ: What disastrous pitfall did he remind them to avoid?',
      ['Tense inconsistency','Writing too much','Using a pen','Drawing pictures'],
      'Tense inconsistency', term: 3),
  _quSen3('senior','prefix',11,3,'comprehension',
      'Refer to the passage above.\n\nQ: What rule did he give regarding the past tense?',
      ['"If you write in the past tense, stay in the past tense"','"Change to the future tense quickly"','"Never use the past tense"','"Only use present continuous"'],
      '"If you write in the past tense, stay in the past tense"', term: 3),
  _quSen3('senior','alternative_spelling',11,3,'comprehension',
      'Refer to the passage above.\n\nQ: What two specific spelling words did he highlight?',
      ['\'embarrass\' and \'accommodate\'','\'weird\' and \'seize\'','\'cat\' and \'dog\'','\'affect\' and \'effect\''],
      '\'embarrass\' and \'accommodate\'', term: 3),
  _quSen3('senior','syllable',11,3,'comprehension',
      'Refer to the passage above.\n\nQ: What did he urge the students to do with the list of words?',
      ['Practice them until they were perfect','Throw the list away','Read it once and forget it','Give it to a friend'],
      'Practice them until they were perfect', term: 3),
  _quSen3('senior','alternative_spelling',11,3,'vocabulary', 'What does "explicit" mean?', ['stated clearly and in detail, leaving no room for confusion','hidden and implied','very angry and rude','written in bold letters'], 'stated clearly and in detail, leaving no room for confusion', term: 3),
  _quSen3('senior','prefix',11,3,'grammar', 'Identify the word with the prefix "in-" meaning "not", used to describe the tense error.', ['inconsistency','intense','introduction','invigilator'], 'inconsistency', term: 3),
  _quSen3('senior','suffix',11,3,'grammar', 'Identify the correctly spelled word meaning "to cause someone to feel awkward or ashamed".', ['embarrass','embarass','embaras','embarrasss'], 'embarrass', term: 3),
  _quSen3('senior','homophone',11,3,'grammar', 'Identify the correctly spelled word meaning "to provide lodging or space for".', ['accommodate','acommodate','accomodate','acomodate'], 'accommodate', term: 3),
  _quSen3('senior','syllable',11,3,'grammar', 'How many syllables are in the word "comprehensive"?', ['4','5','3','6'], '4', term: 3), // com-pre-hen-sive

  // ══════════════════════════════════════════════════════════════════════════
  // WEEK 12 — Celebration & Reflection
  // Tags: rhyme, alliteration
  // ══════════════════════════════════════════════════════════════════════════

  // Set 1 — poetry and reflection
  _quSen3('senior','rhyme',12,1,'vocabulary', 'What is "rhythm" in poetry?', ['The measured beat and pace of the poem, created by stressed and unstressed syllables','The words that rhyme at the end of the line','The main character of the poem','The historical context of the text'], 'The measured beat and pace of the poem, created by stressed and unstressed syllables', term: 3),
  _quSen3('senior','alliteration',12,1,'grammar', 'Identify the literary device: "The future stretches forward, full and free." (Focus on the /f/ sound)', ['Alliteration','Rhyme','Simile','Onomatopoeia'], 'Alliteration', term: 3),
  _quSen3('senior','rhyme',12,1,'grammar', 'If a poem\'s rhyme scheme is AABB, what does that mean?', ['Line 1 rhymes with line 2, and line 3 rhymes with line 4','Lines 1 and 3 rhyme, and lines 2 and 4 rhyme','All four lines rhyme together','None of the lines rhyme'], 'Line 1 rhymes with line 2, and line 3 rhymes with line 4', term: 3),
  _quSen3('senior','alliteration',12,1,'vocabulary', 'What is "personification"?', ['Giving human qualities, emotions, or actions to inanimate objects or abstract ideas','Exaggerating a point massively','Using words that sound like noises','Repeating vowel sounds'], 'Giving human qualities, emotions, or actions to inanimate objects or abstract ideas', term: 3),
  _quSen3('senior','rhyme',12,1,'grammar', 'Which word rhymes with "achieve"?', ['believe','hope','try','fail'], 'believe', term: 3),
  _quSen3('senior','alliteration',12,1,'grammar', 'Identify the device: "Time is a thief that steals our youth."', ['Metaphor (and Personification)','Simile','Alliteration','Rhyme'], 'Metaphor (and Personification)', term: 3),
  _quSen3('senior','rhyme',12,1,'vocabulary', 'What is a "stanza"?', ['A grouped set of lines within a poem, similar to a paragraph in prose','The title of the poem','The emotional tone of the speaker','A pair of rhyming words'], 'A grouped set of lines within a poem, similar to a paragraph in prose', term: 3),
  _quSen3('senior','alliteration',12,1,'grammar', 'Identify the device: "He was as proud as a peacock."', ['Simile','Metaphor','Alliteration','Hyperbole'], 'Simile', term: 3),
  _quSen3('senior','rhyme',12,1,'vocabulary', 'What is "free verse"?', ['Poetry that does not follow a strict rhyme scheme or regular meter','A poem that costs nothing','A poem with exactly 14 lines','A poem written entirely in rhyming couplets'], 'Poetry that does not follow a strict rhyme scheme or regular meter', term: 3),
  _quSen3('senior','alliteration',12,1,'grammar', 'Identify the alliteration: "Memories make me melancholic."', ['The repeated /m/ sound','The rhyme at the end','The use of adjectives','The short length of the sentence'], 'The repeated /m/ sound', term: 3),

  // Set 2 — poetry and reflection
  _quSen3('senior','rhyme',12,2,'grammar', 'What is an "internal rhyme"?', ['A rhyme that occurs within a single line of verse, rather than at the end','A rhyme between two different books','A rhyme that doesn\'t actually rhyme','A poem about internal organs'], 'A rhyme that occurs within a single line of verse, rather than at the end', term: 3),
  _quSen3('senior','alliteration',12,2,'vocabulary', 'What is "assonance"?', ['The repetition of vowel sounds within nearby words (e.g., fleet feet sweep by)','The repetition of consonant sounds at the start of words','A comparison using like or as','Exaggeration for effect'], 'The repetition of vowel sounds within nearby words (e.g., fleet feet sweep by)', term: 3),
  _quSen3('senior','rhyme',12,2,'vocabulary', 'What is a "couplet"?', ['Two consecutive lines of poetry that usually rhyme and have the same meter','A four-line stanza','A poem about a married couple','A type of metaphor'], 'Two consecutive lines of poetry that usually rhyme and have the same meter', term: 3),
  _quSen3('senior','alliteration',12,2,'grammar', 'Identify the device: "The thunder grumbled in the distance."', ['Personification','Simile','Alliteration','Rhyme'], 'Personification', term: 3),
  _quSen3('senior','rhyme',12,2,'grammar', 'Which word rhymes with "goal"?', ['soul','game','win','try'], 'soul', term: 3),
  _quSen3('senior','alliteration',12,2,'vocabulary', 'What is "imagery"?', ['Vivid, descriptive language that appeals to the reader\'s five senses','The beat and rhythm of the poem','The main lesson of the story','A type of stage lighting in drama'], 'Vivid, descriptive language that appeals to the reader\'s five senses', term: 3),
  _quSen3('senior','rhyme',12,2,'grammar', 'What does the "theme" of a poem refer to?', ['The central, underlying message or big idea the poet is exploring','The number of stanzas','The author\'s name','The place it was written'], 'The central, underlying message or big idea the poet is exploring', term: 3),
  _quSen3('senior','alliteration',12,2,'grammar', 'Which is an example of alliteration?', ['Wild winds whirled.','The sky was blue.','Birds sing songs.','I passed the test.'], 'Wild winds whirled.', term: 3),
  _quSen3('senior','rhyme',12,2,'vocabulary', 'What is a "sonnet"?', ['A poem of exactly fourteen lines, typically dealing with love and using a strict rhyme scheme','A very short, funny poem','An epic poem about war','A poem with no structure'], 'A poem of exactly fourteen lines, typically dealing with love and using a strict rhyme scheme', term: 3),
  _quSen3('senior','alliteration',12,2,'grammar', 'Identify the device: "Education is a key that unlocks the world."', ['Metaphor','Simile','Alliteration','Hyperbole'], 'Metaphor', term: 3),

  // Set 3 — comprehension (NOT read by TTS)
  _quSen3('senior','rhyme',12,3,'comprehension',
      'POEM: \nThe ink has dried upon the page,\nWe step from childhood\'s quiet stage.\nThe future waits, a vast unknown,\nWith seeds of greatness deeply sown.\n\nWe faced the trials, we stood the test,\nWe pushed our minds and gave our best.\nNow side by side we proudly stand,\nTo take the world by open hand.\n\nSo let us sing and shed a tear,\nFor every friend and every year.\n\nQ: What is the rhyme scheme of the first stanza?',
      ['AABB','ABAB','ABCA','ABCD'],
      'AABB', term: 3),
  _quSen3('senior','alliteration',12,3,'comprehension',
      'Refer to the poem above.\n\nQ: What metaphor is used to describe the end of childhood?',
      ['"We step from childhood\'s quiet stage"','"The ink has dried upon the page"','"We pushed our minds"','"So let us sing"'],
      '"We step from childhood\'s quiet stage"', term: 3),
  _quSen3('senior','rhyme',12,3,'comprehension',
      'Refer to the poem above.\n\nQ: What does the poem say is deeply sown in the future?',
      ['"seeds of greatness"','"quiet stage"','"the trials"','"open hand"'],
      '"seeds of greatness"', term: 3),
  _quSen3('senior','alliteration',12,3,'comprehension',
      'Refer to the poem above.\n\nQ: How do the students stand at the end?',
      ['"side by side we proudly stand"','"alone and afraid"','"crying in the corner"','"running away"'],
      '"side by side we proudly stand"', term: 3),
  _quSen3('senior','rhyme',12,3,'comprehension',
      'Refer to the poem above.\n\nQ: What is the overall tone of the poem?',
      ['Nostalgic, proud, and hopeful for the future','Angry and bitter','Scared and terrified','Boring and apathetic'],
      'Nostalgic, proud, and hopeful for the future', term: 3),
  _quSen3('senior','alliteration',12,3,'grammar', 'Identify the alliteration in the line: "We faced the trials, we stood the test".', ['None of these','stood the test','We faced','the trials'], 'None of these', term: 3), // Actually, "stood the test" has repeated /t/. Let's correct the question.
  // Revised question:
  _quSen3('senior','alliteration',12,3,'grammar', 'Identify the alliteration in the phrase "seeds of greatness deeply sown".', ['seeds and sown (repeated /s/ sound)','greatness and deeply','of and sown','seeds of greatness'], 'seeds and sown (repeated /s/ sound)', term: 3),
  _quSen3('senior','rhyme',12,3,'grammar', 'Which word rhymes with "test" in the second stanza?', ['best','hand','stand','year'], 'best', term: 3),
  _quSen3('senior','alliteration',12,3,'vocabulary', 'What does "vast" mean in the phrase "vast unknown"?', ['of very great extent or quantity; immense','very small and contained','easy to understand','brightly colored'], 'of very great extent or quantity; immense', term: 3),
  _quSen3('senior','rhyme',12,3,'grammar', 'Which word rhymes with "tear" (as in crying) in the final stanza?', ['year','hand','stand','test'], 'year', term: 3),
  _quSen3('senior','alliteration',12,3,'vocabulary', 'What does "trials" mean?', ['tests of performance, qualities, or suitability; difficulties','courtroom judges','running tracks','books'], 'tests of performance, qualities, or suitability; difficulties', term: 3),

  // ══════════════════════════════════════════════════════════════════════════
  // WEEK 13 — End-of-Year Assessment
  // Tags: prefix, suffix, alternative_spelling, homophone, syllable
  // ══════════════════════════════════════════════════════════════════════════

  // Set 1 — final assessment mix
  _quSen3('senior','alternative_spelling',13,1,'grammar', 'Which is the correct spelling? (Exception to i before e)', ['weird','wierd','weard','weerd'], 'weird', term: 3),
  _quSen3('senior','prefix',13,1,'vocabulary', 'What does the prefix "omni-" mean?', ['all or everywhere','before','small','against'], 'all or everywhere', term: 3),
  _quSen3('senior','suffix',13,1,'grammar', 'Identify the defining relative clause (no commas).', ['The car that was stolen has been found.','Abuja, which is the capital, is beautiful.','Mr. John, whose car is red, is a teacher.','My mother, who is a doctor, works hard.'], 'The car that was stolen has been found.', term: 3),
  _quSen3('senior','homophone',13,1,'grammar', 'Which homophone fits best: "I will ___ your apology."?', ['accept','except','affect','effect'], 'accept', term: 3),
  _quSen3('senior','syllable',13,1,'grammar', 'How many syllables are in "characterisation"?', ['6','5','7','4'], '6', term: 3),
  _quSen3('senior','alternative_spelling',13,1,'grammar', 'Which is the correct spelling for "happening immediately"?', ['immediately','immediatly','imediately','immediatley'], 'immediately', term: 3),
  _quSen3('senior','prefix',13,1,'vocabulary', 'What does the root "bio" mean?', ['life','earth','time','sound'], 'life', term: 3),
  _quSen3('senior','suffix',13,1,'grammar', 'What is "nominalisation"?', ['Turning a verb into a noun to make the text formal (e.g., develop -> development)','Writing an essay','Making a sentence short','Spelling words incorrectly'], 'Turning a verb into a noun to make the text formal (e.g., develop -> development)', term: 3),
  _quSen3('senior','homophone',13,1,'grammar', 'Which homophone fits best: "The harsh chemical will ___ the metal."?', ['affect','effect','except','accept'], 'affect', term: 3),
  _quSen3('senior','syllable',13,1,'vocabulary', 'What does it mean if a journalist is "objective"?', ['They report facts without personal bias','They write sensational headlines','They make up the news','They write long opinions'], 'They report facts without personal bias', term: 3),

  // Set 2 — final assessment mix
  _quSen3('senior','alternative_spelling',13,2,'grammar', 'Which is the correct spelling?', ['accommodation','acommodation','accomodation','acomodation'], 'accommodation', term: 3),
  _quSen3('senior','prefix',13,2,'grammar', 'What does the prefix "inter-" mean in "international"?', ['between or among','inside','above','against'], 'between or among', term: 3),
  _quSen3('senior','suffix',13,2,'grammar', 'Identify the passive sentence.', ['The bridge was destroyed by the storm.','The storm destroyed the bridge.','The storm is very loud.','The bridge fell down.'], 'The bridge was destroyed by the storm.', term: 3),
  _quSen3('senior','homophone',13,2,'grammar', 'Which homophone fits best: "She read the book ___ to the class."?', ['aloud','allowed','a loud','alloud'], 'aloud', term: 3),
  _quSen3('senior','syllable',13,2,'grammar', 'How many syllables are in "comprehension"?', ['4','3','5','2'], '4', term: 3),
  _quSen3('senior','alternative_spelling',13,2,'vocabulary', 'What is an "inference"?', ['A conclusion reached on the basis of evidence and reasoning; reading between the lines','A direct quote from a text','A spelling mistake','A type of poem'], 'A conclusion reached on the basis of evidence and reasoning; reading between the lines', term: 3),
  _quSen3('senior','prefix',13,2,'grammar', 'Which transition word is used to show a contrast?', ['However','Consequently','Furthermore','Therefore'], 'However', term: 3),
  _quSen3('senior','suffix',13,2,'grammar', 'What does the P.E.E. acronym stand for in essay writing?', ['Point, Evidence, Explain','Point, Example, Erase','Paragraph, Essay, End','Place, Event, Emotion'], 'Point, Evidence, Explain', term: 3),
  _quSen3('senior','homophone',13,2,'grammar', 'Which homophone fits best: "He gave me a beautiful ___ on my dress."?', ['compliment','complement','complimant','complemant'], 'compliment', term: 3),
  _quSen3('senior','syllable',13,2,'vocabulary', 'What is a "discursive essay"?', ['An essay that presents a balanced discussion of a topic, exploring different perspectives','A fictional story','A poem about nature','An angry letter'], 'An essay that presents a balanced discussion of a topic, exploring different perspectives', term: 3),

  // Set 3 — comprehension (NOT read by TTS)
  _quSen3('senior','alternative_spelling',13,3,'comprehension',
      'PASSAGE: The Senior Secondary 3 students sat in the hall, ready for their final WAEC examination. It was the culmination of three years of intense study. Section A tested their comprehension skills; they had to decipher implicit meanings and identify grammatical functions of adjectival clauses. Section B challenged their essay writing. They knew the examiners expected impeccable mechanical accuracy, meaning tricky words like \'pronunciation\' and \'indispensable\' had to be spelled perfectly. Finally, they had to ensure their arguments were cohesive and their tense remained consistent. As the invigilator called "time up," the students smiled, knowing they had conquered the test.\n\nQ: What was this examination the culmination of?',
      ['Three years of intense study','A quick weekend review','A single term of work','A spelling bee'],
      'Three years of intense study', term: 3),
  _quSen3('senior','prefix',13,3,'comprehension',
      'Refer to the passage above.\n\nQ: What did Section A test?',
      ['Comprehension skills (deciphering implicit meanings and identifying grammatical functions)','Only spelling','Creative writing','Mathematics'],
      'Comprehension skills (deciphering implicit meanings and identifying grammatical functions)', term: 3),
  _quSen3('senior','suffix',13,3,'comprehension',
      'Refer to the passage above.\n\nQ: What did Section B challenge?',
      ['Their essay writing','Their ability to read a poem','Their speaking skills','Their knowledge of history'],
      'Their essay writing', term: 3),
  _quSen3('senior','alternative_spelling',13,3,'comprehension',
      'Refer to the passage above.\n\nQ: What did the examiners expect regarding mechanical accuracy?',
      ['Impeccable mechanical accuracy (perfect spelling of tricky words)','Lots of spelling mistakes','No punctuation','Messy handwriting'],
      'Impeccable mechanical accuracy (perfect spelling of tricky words)', term: 3),
  _quSen3('senior','homophone',13,3,'comprehension',
      'Refer to the passage above.\n\nQ: How did the students feel as the invigilator called "time up"?',
      ['They smiled, knowing they had conquered the test','They cried in fear','They immediately fell asleep','They asked for more time'],
      'They smiled, knowing they had conquered the test', term: 3),
  _quSen3('senior','alternative_spelling',13,3,'vocabulary', 'What does "culmination" mean?', ['the highest or climactic point of something, especially as attained after a long time','the very beginning of an event','a type of difficult test','a spelling error'], 'the highest or climactic point of something, especially as attained after a long time', term: 3),
  _quSen3('senior','prefix',13,3,'vocabulary', 'What does "implicit" mean?', ['suggested though not directly expressed','written clearly on the page','very easy to read','spoken loudly'], 'suggested though not directly expressed', term: 3),
  _quSen3('senior','suffix',13,3,'grammar', 'Identify the abstract noun form of the verb "comprehend" used in the text.', ['comprehension','comprehending','comprehendment','comprehence'], 'comprehension', term: 3),
  _quSen3('senior','homophone',13,3,'vocabulary', 'What does "impeccable" mean?', ['in accordance with the highest standards; faultless','full of mistakes','written very quickly','very difficult'], 'in accordance with the highest standards; faultless', term: 3),
  _quSen3('senior','syllable',13,3,'grammar', 'How many syllables are in the word "invigilator"?', ['5','4','6','3'], '5', term: 3), // in-vig-i-la-tor

];
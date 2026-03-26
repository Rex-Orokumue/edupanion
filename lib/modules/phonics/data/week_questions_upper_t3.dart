import 'package:uuid/uuid.dart';
import '../../../core/models/question.dart';

// ignore_for_file: prefer_single_quotes
const _uu3 = Uuid();

Question _qu3(String level, String tag, int week, int set, String type,
    String q, List<String> opts, String ans, {required int term}) =>
    Question(
      id: _uu3.v4(), level: level, skillTag: tag,
      weekNumber: week, assessmentSet: set, questionType: type,
      termNumber: term,
      questionText: q, options: opts, correctAnswer: ans,
    );

// ─────────────────────────────────────────────────────────────────────────────
// UPPER — Primary 4–5  (Term 3)
//
// W1  : Year Spelling Review                     → prefix, suffix, alternative_spelling
// W2  : Advanced Root Families: spec, sens, mit  → prefix, suffix
// W3  : Vocabulary in Context                    → alternative_spelling, homophone
// W4  : Writing: Narrative Composition           → suffix, prefix
// ─────────────────────────────────────────────────────────────────────────────

final List<Question> weekQuestionsUpperT3 = [

  // ══════════════════════════════════════════════════════════════════════════
  // WEEK 1 — Year Spelling Review
  // Tags: prefix, suffix, alternative_spelling
  // ══════════════════════════════════════════════════════════════════════════

  // Set 1 — vocabulary + grammar
  _qu3('upper','alternative_spelling',1,1,'grammar', 'Which is the correct spelling of the word meaning "to get something"?', ['receive','recieve','receeve','recieve'], 'receive', term: 3),
  _qu3('upper','prefix',1,1,'vocabulary', 'If something is "impossible", the prefix "im-" means:', ['not','very','before','again'], 'not', term: 3),
  _qu3('upper','suffix',1,1,'grammar', 'Which is the correct spelling when adding "-ing" to "travel"? (British spelling)', ['travelling','traveling','travelleing','travelns'], 'travelling', term: 3),
  _qu3('upper','alternative_spelling',1,1,'grammar', 'Identify the correctly spelled word:', ['accommodation','acommodation','accomodation','acomodation'], 'accommodation', term: 3),
  _qu3('upper','suffix',1,1,'vocabulary', 'Which suffix turns "comfort" into an adjective?', ['-able (comfortable)','-tion (comfortion)','-ly (comfortly)','-ment (comfortment)'], '-able (comfortable)', term: 3),
  _qu3('upper','prefix',1,1,'grammar', 'Which word uses the prefix "re-" to mean "do again"?', ['rebuild','real','reach','ready'], 'rebuild', term: 3),
  _qu3('upper','alternative_spelling',1,1,'grammar', 'Which word contains a silent "k"?', ['knowledge','king','keep','kitchen'], 'knowledge', term: 3),
  _qu3('upper','suffix',1,1,'grammar', 'Which is the correct spelling of "beauty" + "-ful"?', ['beautiful','beautyful','beautifull','beautyfull'], 'beautiful', term: 3),
  _qu3('upper','prefix',1,1,'vocabulary', 'The prefix "mis-" in "misunderstand" means:', ['wrongly','before','under','after'], 'wrongly', term: 3),
  _qu3('upper','suffix',1,1,'grammar', 'Add the correct suffix to "discuss" to make a noun.', ['discussion','discussment','discussance','discussible'], 'discussion', term: 3),

  // Set 2 — vocabulary + grammar
  _qu3('upper','alternative_spelling',1,2,'grammar', 'Which word is spelled correctly?', ['definitely','definately','definitly','definetly'], 'definitely', term: 3),
  _qu3('upper','suffix',1,2,'grammar', 'Which of these is the correct noun form of "achieve"?', ['achievement','achieveance','achievence','achievment'], 'achievement', term: 3),
  _qu3('upper','prefix',1,2,'vocabulary', 'What does "international" mean?', ['between nations','inside one nation','against a nation','without a nation'], 'between nations', term: 3),
  _qu3('upper','alternative_spelling',1,2,'grammar', 'Which is the correct spelling?', ['separate','seperate','separat','separete'], 'separate', term: 3),
  _qu3('upper','suffix',1,2,'grammar', 'When adding "-ed" to "stop", what is the correct spelling?', ['stopped','stoped','stopt','stoppt'], 'stopped', term: 3),
  _qu3('upper','prefix',1,2,'grammar', 'Which prefix makes "visible" mean "not able to be seen"?', ['in- (invisible)','un- (unvisible)','dis- (disvisible)','mis- (misvisible)'], 'in- (invisible)', term: 3),
  _qu3('upper','alternative_spelling',1,2,'vocabulary', 'Which word has a silent "b"?', ['doubt','boat','blue','bring'], 'doubt', term: 3),
  _qu3('upper','suffix',1,2,'vocabulary', 'What does the suffix "-less" mean in "fearless"?', ['without','full of','the state of','able to be'], 'without', term: 3),
  _qu3('upper','alternative_spelling',1,2,'grammar', 'Which is the correct spelling?', ['environment','enviroment','envirnoment','enviornment'], 'environment', term: 3),
  _qu3('upper','suffix',1,2,'grammar', 'Which word correctly uses the suffix "-ous"?', ['courageous','couragous','courageus','couragious'], 'courageous', term: 3),

  // Set 3 — comprehension (NOT read by TTS)
  _qu3('upper','alternative_spelling',1,3,'comprehension',
      'PASSAGE: At the end of the year, Mr. Bello handed out a comprehensive spelling review. "Many of you lose marks in your essays not because your ideas are poor, but because of avoidable spelling errors," he explained. He pointed out words that often trick students: words with silent letters like "knowledge" and "doubt", words that double their consonants like "accommodation", and words that break standard rules like "weird". He encouraged the class to keep personal spelling journals to track the words they misspell most frequently.\n\nQ: According to Mr. Bello, why do students often lose marks in essays?',
      ['Because of avoidable spelling errors','Because their ideas are poor','Because they write too much','Because they do not use big words'],
      'Because of avoidable spelling errors', term: 3),
  _qu3('upper','alternative_spelling',1,3,'comprehension',
      'Refer to the passage above.\n\nQ: Which word is given as an example of having a silent letter?',
      ['knowledge','accommodation','weird','review'],
      'knowledge', term: 3),
  _qu3('upper','alternative_spelling',1,3,'comprehension',
      'Refer to the passage above.\n\nQ: What feature makes "accommodation" tricky to spell?',
      ['It doubles its consonants (cc and mm)','It has a silent letter','It has a tricky vowel digraph','It uses a split digraph'],
      'It doubles its consonants (cc and mm)', term: 3),
  _qu3('upper','alternative_spelling',1,3,'comprehension',
      'Refer to the passage above.\n\nQ: What strategy does Mr. Bello recommend to improve spelling?',
      ['Keeping a personal spelling journal','Memorising the dictionary','Typing everything on a computer','Guessing the spelling of hard words'],
      'Keeping a personal spelling journal', term: 3),
  _qu3('upper','suffix',1,3,'comprehension',
      'Refer to the passage above.\n\nQ: What suffix is used in the word "avoidable"?',
      ['-able','-ible','-le','-void'],
      '-able', term: 3),
  _qu3('upper','prefix',1,3,'vocabulary', 'What does "comprehensive" mean in the passage?', ['complete and including everything necessary','very short and brief','difficult to understand','written in a formal tone'], 'complete and including everything necessary', term: 3),
  _qu3('upper','alternative_spelling',1,3,'grammar', 'Which is the correct spelling of the exception word mentioned in the passage?', ['weird','wierd','weard','weerd'], 'weird', term: 3),
  _qu3('upper','suffix',1,3,'grammar', 'Identify the noun in the passage formed by adding "-ly". Wait, "-ly" forms adverbs. Which word is an adverb in the passage?', ['frequently','spelling','personal','avoidable'], 'frequently', term: 3),
  _qu3('upper','alternative_spelling',1,3,'vocabulary', 'What does "frequently" mean?', ['often','rarely','never','sometimes'], 'often', term: 3),
  _qu3('upper','prefix',1,3,'grammar', 'Which prefix could be added to "spell" to mean "spell wrongly"?', ['mis-','un-','dis-','re-'], 'mis-', term: 3),

  // ══════════════════════════════════════════════════════════════════════════
  // WEEK 2 — Advanced Root Families: spec, sens, mit/miss
  // Tags: prefix, suffix
  // ══════════════════════════════════════════════════════════════════════════

  // Set 1 — vocabulary + grammar
  _qu3('upper','prefix',2,1,'vocabulary', 'The root "spec" means to look or see. What does "spectator" mean?', ['a person who looks at or watches an event','a person who speaks loudly','a person who feels strongly','a person who sends a message'], 'a person who looks at or watches an event', term: 3),
  _qu3('upper','prefix',2,1,'vocabulary', 'The root "sens" means to feel. What does "sensitive" mean?', ['quick to detect or feel changes; easily affected','able to see very far','able to send messages quickly','refusing to feel anything'], 'quick to detect or feel changes; easily affected', term: 3),
  _qu3('upper','prefix',2,1,'vocabulary', 'The root "mit/miss" means to send. What does "transmit" mean?', ['to send across or broadcast','to look across','to feel deeply','to pull together'], 'to send across or broadcast', term: 3),
  _qu3('upper','prefix',2,1,'vocabulary', 'What does "inspect" mean? (in- = into, spec = look)', ['to look into carefully','to send into','to feel inside','to push into'], 'to look into carefully', term: 3),
  _qu3('upper','suffix',2,1,'grammar', 'Which word contains the root "sens"?', ['sensation','inspection','mission','spectacle'], 'sensation', term: 3),
  _qu3('upper','prefix',2,1,'vocabulary', 'What does "dismiss" mean? (dis- = away, miss = send)', ['to send away','to look away','to feel nothing','to build away'], 'to send away', term: 3),
  _qu3('upper','prefix',2,1,'vocabulary', 'What is a "spectacle"?', ['something unusual or impressive to look at','a type of feeling','a message sent far away','a way to build things'], 'something unusual or impressive to look at', term: 3),
  _qu3('upper','prefix',2,1,'vocabulary', 'If you give your "consent" (con- = together, sent/sens = feel), what are you doing?', ['feeling the same way, or agreeing to something','sending a message together','looking at something together','building something together'], 'feeling the same way, or agreeing to something', term: 3),
  _qu3('upper','suffix',2,1,'grammar', 'Which word uses "mit/miss"?', ['mission','spectator','sensible','respect'], 'mission', term: 3),
  _qu3('upper','prefix',2,1,'grammar', 'Choose the correct word: "The radio tower will ___ the signal to the city."', ['transmit','inspect','consent','respect'], 'transmit', term: 3),

  // Set 2 — vocabulary + grammar
  _qu3('upper','prefix',2,2,'vocabulary', 'What does "respect" mean? (re- = back/again, spec = look)', ['to look up to or admire someone','to send back','to feel again','to pull away'], 'to look up to or admire someone', term: 3),
  _qu3('upper','suffix',2,2,'vocabulary', 'What does "sensible" mean?', ['having good sense or judgment','able to see clearly','able to be sent easily','looking impressive'], 'having good sense or judgment', term: 3),
  _qu3('upper','prefix',2,2,'vocabulary', 'What does "submit" mean? (sub- = under, mit = send)', ['to send in or yield to authority','to look under','to feel deeply','to build under'], 'to send in or yield to authority', term: 3),
  _qu3('upper','suffix',2,2,'grammar', 'Choose the correct word: "The detective will ___ the crime scene for clues."', ['inspect','transmit','consent','emit'], 'inspect', term: 3),
  _qu3('upper','suffix',2,2,'grammar', 'Choose the correct word: "The sun will ___ light and heat." (e- = out, mit = send)', ['emit','respect','sense','spectate'], 'emit', term: 3),
  _qu3('upper','prefix',2,2,'vocabulary', 'What does "suspect" mean? (sub- = from below, spec = look)', ['to look at with doubt or mistrust','to send a letter','to feel happy','to build a case'], 'to look at with doubt or mistrust', term: 3),
  _qu3('upper','prefix',2,2,'vocabulary', 'What is a "specimen"?', ['an individual item looked at as an example of a species','a feeling of sadness','a sent package','a built structure'], 'an individual item looked at as an example of a species', term: 3),
  _qu3('upper','suffix',2,2,'vocabulary', 'What does "emission" mean?', ['the act of sending out (like gases or light)','the act of looking out','a feeling of joy','the act of building'], 'the act of sending out (like gases or light)', term: 3),
  _qu3('upper','suffix',2,2,'grammar', 'Which word correctly adds a suffix to "sense"?', ['sensory','sensment','sensance','senseful'], 'sensory', term: 3),
  _qu3('upper','prefix',2,2,'grammar', 'Which word is the antonym of "admit" (to send in/allow)?', ['dismiss','inspect','respect','consent'], 'dismiss', term: 3),

  // Set 3 — comprehension (NOT read by TTS)
  _qu3('upper','prefix',2,3,'comprehension',
      'PASSAGE: The chief scientist adjusted her glasses to inspect the rare plant specimen. She knew that this particular leaf was highly sensitive to temperature changes. If the room became too hot, the plant would emit a strong, bitter scent. She carefully noted her findings on a tablet. "We must transmit this data to the headquarters immediately," she told her assistant. "They are expecting a full report on the mission by tonight." The assistant nodded, knowing that failing to submit the report would result in them being dismissed from the project.\n\nQ: What does the scientist do with the plant specimen?',
      ['She inspects it','She transmits it','She dismisses it','She builds it'],
      'She inspects it', term: 3),
  _qu3('upper','prefix',2,3,'comprehension',
      'Refer to the passage above.\n\nQ: What happens if the room gets too hot?',
      ['The plant will emit a strong, bitter scent','The plant will transmit data','The plant will dismiss the assistant','The plant will inspect the room'],
      'The plant will emit a strong, bitter scent', term: 3),
  _qu3('upper','prefix',2,3,'comprehension',
      'Refer to the passage above.\n\nQ: What does "transmit this data" mean in the story?',
      ['To send the data across to headquarters','To look at the data again','To feel the data','To destroy the data'],
      'To send the data across to headquarters', term: 3),
  _qu3('upper','suffix',2,3,'comprehension',
      'Refer to the passage above.\n\nQ: What does "sensitive" tell us about the plant?',
      ['It reacts quickly to temperature changes','It is very large','It sends messages to headquarters','It is invisible'],
      'It reacts quickly to temperature changes', term: 3),
  _qu3('upper','prefix',2,3,'comprehension',
      'Refer to the passage above.\n\nQ: What will happen if they do not "submit" the report?',
      ['They will be dismissed from the project','They will be inspected','They will be transmitted','They will become sensitive'],
      'They will be dismissed from the project', term: 3),
  _qu3('upper','prefix',2,3,'vocabulary', 'What does "specimen" mean in this context?', ['An individual plant looked at for scientific study','A type of computer tablet','A feeling of worry','A message sent over the internet'], 'An individual plant looked at for scientific study', term: 3),
  _qu3('upper','prefix',2,3,'vocabulary', 'Which word from the passage shares the root "mit/miss" (to send)?', ['mission','specimen','sensitive','inspect'], 'mission', term: 3),
  _qu3('upper','suffix',2,3,'grammar', 'Which suffix is added to "assist" to make "assistant"?', ['-ant','-ment','-ence','-ous'], '-ant', term: 3),
  _qu3('upper','prefix',2,3,'grammar', 'What root is shared by "inspect" and "specimen"?', ['spec (look)','sens (feel)','mit (send)','port (carry)'], 'spec (look)', term: 3),
  _qu3('upper','prefix',2,3,'vocabulary', 'What does "dismissed" mean in the last sentence?', ['Sent away or removed from their jobs','Given a promotion','Looked at closely','Told to transmit data'], 'Sent away or removed from their jobs', term: 3),

  // ══════════════════════════════════════════════════════════════════════════
  // WEEK 3 — Vocabulary in Context
  // Tags: alternative_spelling, homophone
  // ══════════════════════════════════════════════════════════════════════════

  // Set 1 — vocabulary + grammar
  _qu3('upper','alternative_spelling',3,1,'vocabulary', 'Context Clue: "The king was a benevolent ruler, always giving food and money to the poor." What does "benevolent" mean?', ['kind and generous','cruel and mean','very poor','loud and angry'], 'kind and generous', term: 3),
  _qu3('upper','alternative_spelling',3,1,'vocabulary', 'Context Clue: "The desert is an arid environment; it barely rains there." What does "arid" mean?', ['extremely dry','very cold','full of water','dark and gloomy'], 'extremely dry', term: 3),
  _qu3('upper','homophone',3,1,'grammar', 'Which word fits best: "The medicine will ___ your ability to sleep."?', ['affect','effect','accept','except'], 'affect', term: 3),
  _qu3('upper','alternative_spelling',3,1,'vocabulary', 'Context Clue: "She tried to conceal the gift behind her back so her brother wouldn\'t see it." What does "conceal" mean?', ['to hide','to show','to throw','to open'], 'to hide', term: 3),
  _qu3('upper','homophone',3,1,'grammar', 'Which word fits best: "The school ___ sets the rules for the students."?', ['principal','principle','council','counsel'], 'principal', term: 3),
  _qu3('upper','alternative_spelling',3,1,'vocabulary', 'Context Clue: "The painting was an authentic Picasso, not a fake." What does "authentic" mean?', ['real and genuine','fake and cheap','colorful','old and torn'], 'real and genuine', term: 3),
  _qu3('upper','homophone',3,1,'grammar', 'Which word fits best: "Please write your answers on the provided ___."?', ['stationery','stationary','canvas','canvass'], 'stationery', term: 3),
  _qu3('upper','alternative_spelling',3,1,'vocabulary', 'Which is a more precise word for "bad"?', ['terrible','okay','nice','good'], 'terrible', term: 3),
  _qu3('upper','homophone',3,1,'grammar', 'Which word fits best: "Everyone attended the meeting ___ David, who was sick."?', ['except','accept','affect','effect'], 'except', term: 3),
  _qu3('upper','alternative_spelling',3,1,'vocabulary', 'Context Clue: "The loud noise was a major distraction, making it hard to focus." What does "distraction" mean?', ['something that draws attention away','something that helps you sleep','a quiet sound','a type of book'], 'something that draws attention away', term: 3),

  // Set 2 — vocabulary + grammar
  _qu3('upper','alternative_spelling',3,2,'vocabulary', 'Context Clue: "The climber reached the summit of the mountain after three days." What does "summit" mean?', ['the highest point or top','the bottom or base','a dark cave','a small river'], 'the highest point or top', term: 3),
  _qu3('upper','alternative_spelling',3,2,'vocabulary', 'Context Clue: "His hands were trembling because he was so terrified of the dog." What does "trembling" mean?', ['shaking slightly','standing completely still','waving happily','punching'], 'shaking slightly', term: 3),
  _qu3('upper','homophone',3,2,'grammar', 'Which word fits best: "He gave her a lovely ___ on her singing."?', ['compliment','complement','counsel','council'], 'compliment', term: 3),
  _qu3('upper','alternative_spelling',3,2,'vocabulary', 'Which is a more precise word for "small"?', ['minuscule','huge','massive','average'], 'minuscule', term: 3),
  _qu3('upper','homophone',3,2,'grammar', 'Which word fits best: "They were stranded in the hot, sandy ___."?', ['desert','dessert','principal','principle'], 'desert', term: 3),
  _qu3('upper','alternative_spelling',3,2,'vocabulary', 'Context Clue: "The water was so murky that we couldn\'t see the fish swimming below." What does "murky" mean?', ['dark and cloudy','crystal clear','very shallow','freezing cold'], 'dark and cloudy', term: 3),
  _qu3('upper','homophone',3,2,'grammar', 'Which word fits best: "We had ice cream for ___."?', ['dessert','desert','stationary','stationery'], 'dessert', term: 3),
  _qu3('upper','alternative_spelling',3,2,'vocabulary', 'Which is a more precise word for "happy"?', ['ecstatic','sad','bored','tired'], 'ecstatic', term: 3),
  _qu3('upper','homophone',3,2,'grammar', 'Which word fits best: "They asked the lawyer for legal ___."?', ['counsel','council','complement','compliment'], 'counsel', term: 3),
  _qu3('upper','alternative_spelling',3,2,'vocabulary', 'Context Clue: "The bridge is robust enough to hold heavy trucks." What does "robust" mean?', ['strong and sturdy','weak and fragile','long and narrow','painted bright red'], 'strong and sturdy', term: 3),

  // Set 3 — comprehension (NOT read by TTS)
  _qu3('upper','alternative_spelling',3,3,'comprehension',
      'PASSAGE: The journey through the ancient forest was perilous. Thick vines hung from the canopy, obscuring the weak sunlight. Chidi had to navigate carefully, stepping over enormous, decaying logs. Suddenly, a colossal shadow shifted in the distance. He froze, his heart pounding. Was it a wild beast, or merely a trick of the murky light? Drawing a deep breath, he decided to proceed with extreme caution. He knew that one reckless move could lead to disaster.\n\nQ: Based on the context, what does "perilous" mean?',
      ['Full of danger or risk','Very safe and calm','Short and easy','Bright and sunny'],
      'Full of danger or risk', term: 3),
  _qu3('upper','alternative_spelling',3,3,'comprehension',
      'Refer to the passage above.\n\nQ: What does "obscuring" mean in the phrase "obscuring the weak sunlight"?',
      ['Hiding or covering up','Shining brightly','Making it hotter','Reflecting like a mirror'],
      'Hiding or covering up', term: 3),
  _qu3('upper','alternative_spelling',3,3,'comprehension',
      'Refer to the passage above.\n\nQ: Based on the context, what is a "canopy"?',
      ['The upper layer or roof formed by the tree branches','A small tent on the ground','A type of dangerous animal','The roots of the trees'],
      'The upper layer or roof formed by the tree branches', term: 3),
  _qu3('upper','alternative_spelling',3,3,'comprehension',
      'Refer to the passage above.\n\nQ: What does "colossal" mean?',
      ['Extremely large','Very small','Colourful','Loud'],
      'Extremely large', term: 3),
  _qu3('upper','alternative_spelling',3,3,'comprehension',
      'Refer to the passage above.\n\nQ: What does "reckless" mean in the last sentence?',
      ['Careless and acting without thinking of consequences','Careful and slow','Brave and heroic','Smart and calculated'],
      'Careless and acting without thinking of consequences', term: 3),
  _qu3('upper','alternative_spelling',3,3,'vocabulary', 'Which word from the passage means "to find a way through"?', ['navigate','proceed','decaying','obscuring'], 'navigate', term: 3),
  _qu3('upper','homophone',3,3,'grammar', 'If Chidi had taken a different "route", which homophone means the same as path?', ['route','root','riot','rout'], 'route', term: 3),
  _qu3('upper','alternative_spelling',3,3,'vocabulary', 'What does "proceed" mean?', ['to move forward or continue','to stop entirely','to turn around','to run away'], 'to move forward or continue', term: 3),
  _qu3('upper','alternative_spelling',3,3,'vocabulary', 'What does "decaying" mean?', ['rotting or breaking down over time','growing very fast','blooming with flowers','turning into stone'], 'rotting or breaking down over time', term: 3),
  _qu3('upper','homophone',3,3,'grammar', 'Which word fits best if Chidi saw a female deer in the forest?', ['doe','dough','door','dot'], 'doe', term: 3),

  // ══════════════════════════════════════════════════════════════════════════
  // WEEK 4 — Writing: Narrative Composition
  // Tags: suffix, prefix
  // ══════════════════════════════════════════════════════════════════════════

  // Set 1 — grammar + vocabulary
  _qu3('upper','prefix',4,1,'grammar', 'Which is the best "hook" to start a narrative story?', ['Suddenly, a loud crash echoed from the dark basement.','This story is about a time I was scared.','I went to the basement yesterday.','Once upon a time I heard a noise.'], 'Suddenly, a loud crash echoed from the dark basement.', term: 3),
  _qu3('upper','suffix',4,1,'vocabulary', 'Which adverb describes moving in a quick, panicked way?', ['frantically','slowly','calmly','happily'], 'frantically', term: 3),
  _qu3('upper','prefix',4,1,'vocabulary', 'What does "unpredictable" mean in a story?', ['impossible to know beforehand; full of surprises','very boring and normal','easy to guess','happening slowly'], 'impossible to know beforehand; full of surprises', term: 3),
  _qu3('upper','suffix',4,1,'grammar', 'What is the "climax" of a narrative?', ['The most exciting or tense part of the story','The introduction of the characters','The very end where everything is calm','The title of the story'], 'The most exciting or tense part of the story', term: 3),
  _qu3('upper','suffix',4,1,'vocabulary', 'Which adjective best builds tension?', ['terrifying','nice','okay','pleasant'], 'terrifying', term: 3),
  _qu3('upper','prefix',4,1,'grammar', 'Which sentence uses sensory details effectively?', ['The cold, damp wind howled, carrying the bitter scent of smoke.','The weather was bad outside.','It was windy and smelled funny.','I felt cold and saw smoke.'], 'The cold, damp wind howled, carrying the bitter scent of smoke.', term: 3),
  _qu3('upper','suffix',4,1,'vocabulary', 'What does "resolution" mean in a narrative?', ['the conclusion where the problem is solved','the beginning of the story','the main character','the problem itself'], 'the conclusion where the problem is solved', term: 3),
  _qu3('upper','prefix',4,1,'grammar', 'Which transition phrase helps build suspense?', ['Without warning,...','In conclusion,...','Therefore,...','As a result,...'], 'Without warning,...', term: 3),
  _qu3('upper','suffix',4,1,'vocabulary', 'Which word means "feeling or showing deep tiredness"?', ['exhausted','energetic','thrilled','curious'], 'exhausted', term: 3),
  _qu3('upper','prefix',4,1,'grammar', 'What is "dialogue" in a story?', ['The spoken conversation between characters','The description of the setting','The problem the character faces','The ending of the story'], 'The spoken conversation between characters', term: 3),

  // Set 2 — grammar + vocabulary
  _qu3('upper','suffix',4,2,'grammar', 'Which tag is best to replace the word "said" to show someone is scared?', ['whispered','shouted','laughed','replied'], 'whispered', term: 3),
  _qu3('upper','prefix',4,2,'vocabulary', 'What does "misadventure" mean?', ['an unfortunate or unlucky experience','a fun trip','a great success','a type of vehicle'], 'an unfortunate or unlucky experience', term: 3),
  _qu3('upper','suffix',4,2,'grammar', 'Which sentence shows "show, don\'t tell" for a character who is nervous?', ['He bit his fingernails and his leg bounced up and down.','He was very nervous.','He felt nervous about the test.','He told me he was nervous.'], 'He bit his fingernails and his leg bounced up and down.', term: 3),
  _qu3('upper','prefix',4,2,'vocabulary', 'Which prefix added to "courage" makes it mean "to take away someone\'s confidence"?', ['dis- (discourage)','un- (uncourage)','mis- (miscourage)','re- (recourage)'], 'dis- (discourage)', term: 3),
  _qu3('upper','suffix',4,2,'grammar', 'Where should you introduce the setting and main characters?', ['In the exposition (beginning)','In the climax','In the resolution','In the glossary'], 'In the exposition (beginning)', term: 3),
  _qu3('upper','suffix',4,2,'vocabulary', 'What does "hesitantly" mean?', ['doing something slowly because of fear or doubt','doing something very fast','doing something loudly','doing something happily'], 'doing something slowly because of fear or doubt', term: 3),
  _qu3('upper','prefix',4,2,'grammar', 'Which word correctly completes the sentence to show time passing? "___, the sun began to rise."',['Eventually','Because','However','Although'], 'Eventually', term: 3),
  _qu3('upper','suffix',4,2,'vocabulary', 'Which adjective describes a character who refuses to give up?', ['determined','lazy','careless','exhausted'], 'determined', term: 3),
  _qu3('upper','prefix',4,2,'grammar', 'Which of these is an example of "rising action"?', ['The challenges and obstacles the character faces before the climax','The introduction of the main character\'s name','The final sentence of the story','The title page'], 'The challenges and obstacles the character faces before the climax', term: 3),
  _qu3('upper','suffix',4,2,'vocabulary', 'What does "astonishment" mean?', ['great surprise or amazement','deep sadness','a feeling of being bored','a type of loud noise'], 'great surprise or amazement', term: 3),

  // Set 3 — comprehension (NOT read by TTS)
  _qu3('upper','prefix',4,3,'comprehension',
      'PASSAGE: A strong narrative composition takes the reader on a journey. It begins with the "exposition," which introduces the setting and the characters. Soon after, an "inciting incident" introduces a problem or conflict. This leads to the "rising action," where the tension builds as the character faces challenges. The story peaks at the "climax," the most exciting and crucial moment. Finally, the "falling action" and "resolution" wrap up the story, showing how the characters have changed. To make the story engaging, writers use sensory details ("show, don\'t tell") and varied, powerful vocabulary rather than boring, repetitive words.\n\nQ: According to the passage, what does the "exposition" do?',
      ['It introduces the setting and the characters','It solves the problem at the end','It is the most exciting part of the story','It creates the title of the story'],
      'It introduces the setting and the characters', term: 3),
  _qu3('upper','prefix',4,3,'comprehension',
      'Refer to the passage above.\n\nQ: What is the "climax"?',
      ['The most exciting and crucial moment of the story','The very beginning of the story','The part where the characters are introduced','The boring middle section'],
      'The most exciting and crucial moment of the story', term: 3),
  _qu3('upper','prefix',4,3,'comprehension',
      'Refer to the passage above.\n\nQ: What happens during the "rising action"?',
      ['Tension builds as the character faces challenges','The story ends peacefully','The setting is described for the first time','The characters go to sleep'],
      'Tension builds as the character faces challenges', term: 3),
  _qu3('upper','suffix',4,3,'comprehension',
      'Refer to the passage above.\n\nQ: What technique does the passage recommend to make the story engaging?',
      ['Using sensory details ("show, don\'t tell") and powerful vocabulary','Using boring, repetitive words','Writing as quickly as possible','Avoiding any conflict or problems'],
      'Using sensory details ("show, don\'t tell") and powerful vocabulary', term: 3),
  _qu3('upper','suffix',4,3,'comprehension',
      'Refer to the passage above.\n\nQ: What part of the story wraps things up and shows how characters have changed?',
      ['The resolution','The exposition','The inciting incident','The climax'],
      'The resolution', term: 3),
  _qu3('upper','suffix',4,3,'vocabulary', 'What does "crucial" mean?', ['extremely important or decisive','very unimportant','slightly interesting','boring'], 'extremely important or decisive', term: 3),
  _qu3('upper','prefix',4,3,'grammar', 'Which word from the passage uses a prefix meaning "again"?', ['repetitive','exposition','incident','conflict'], 'repetitive', term: 3),
  _qu3('upper','suffix',4,3,'vocabulary', 'What does "engaging" mean?', ['charming and keeping the reader\'s attention','making the reader fall asleep','very confusing','written in a foreign language'], 'charming and keeping the reader\'s attention', term: 3),
  _qu3('upper','prefix',4,3,'vocabulary', 'What does "conflict" mean in a narrative?', ['a struggle or problem the character must face','a peaceful agreement','the setting of the story','the author\'s name'], 'a struggle or problem the character must face', term: 3),
  _qu3('upper','suffix',4,3,'grammar', 'What suffix is added to "vary" to make "varied"?', ['-ed','-ing','-tion','-ly'], '-ed', term: 3),

// ══════════════════════════════════════════════════════════════════════════
  // WEEK 5 — Writing: Argumentative Essay
  // Tags: prefix, suffix
  // ══════════════════════════════════════════════════════════════════════════

  // Set 1 — grammar + vocabulary
  _qu3('upper','prefix',5,1,'grammar', 'What is the main purpose of an argumentative essay?', ['To persuade the reader to agree with your position','To tell a funny story about your weekend','To describe what a place looks like','To explain how to bake a cake'], 'To persuade the reader to agree with your position', term: 3),
  _qu3('upper','suffix',5,1,'vocabulary', 'What does "argumentative" mean?', ['presenting a logical argument to convince others','getting angry and yelling','agreeing with everyone','writing a poem'], 'presenting a logical argument to convince others', term: 3),
  _qu3('upper','prefix',5,1,'grammar', 'Which of these is the best thesis statement for an argumentative essay?', ['School uniforms should be mandatory because they reduce bullying and promote equality.','This essay is about school uniforms.','I wear a school uniform every day to school.','Some people like uniforms and some people do not.'], 'School uniforms should be mandatory because they reduce bullying and promote equality.', term: 3),
  _qu3('upper','suffix',5,1,'grammar', 'What is a "counter-argument"?', ['An argument that opposes your main point, which you must acknowledge','A fight between two characters in a story','The very last sentence of your essay','A sentence that uses a lot of adjectives'], 'An argument that opposes your main point, which you must acknowledge', term: 3),
  _qu3('upper','prefix',5,1,'vocabulary', 'Which prefix makes "agree" mean the opposite?', ['dis- (disagree)','un- (unagree)','mis- (misagree)','re- (reagree)'], 'dis- (disagree)', term: 3),
  _qu3('upper','suffix',5,1,'grammar', 'Which discourse marker is best used to introduce a counter-argument?', ['On the other hand,...','In conclusion,...','Firstly,...','Therefore,...'], 'On the other hand,...', term: 3),
  _qu3('upper','prefix',5,1,'vocabulary', 'What does "cohesion" mean in writing?', ['how well the ideas stick together and flow logically','how long the essay is','how many big words are used','how loud you read it'], 'how well the ideas stick together and flow logically', term: 3),
  _qu3('upper','suffix',5,1,'grammar', 'Which word signals that you are providing evidence?', ['According to...','I guess that...','Maybe...','However,...'], 'According to...', term: 3),
  _qu3('upper','prefix',5,1,'vocabulary', 'What does "rebuttal" mean?', ['proving the counter-argument is weak or wrong','agreeing with the other side completely','the introduction of the essay','a type of summary'], 'proving the counter-argument is weak or wrong', term: 3),
  _qu3('upper','suffix',5,1,'grammar', 'Where does the conclusion go in an argumentative essay?', ['At the very end, to summarise and restate the thesis','At the beginning, to hook the reader','In the middle, to provide evidence','In the counter-argument section'], 'At the very end, to summarise and restate the thesis', term: 3),

  // Set 2 — grammar + vocabulary
  _qu3('upper','prefix',5,2,'grammar', 'Which transition word is used to add more supporting evidence?', ['Furthermore','However','Although','In conclusion'], 'Furthermore', term: 3),
  _qu3('upper','suffix',5,2,'vocabulary', 'What does "persuasion" mean?', ['the act of convincing someone to do or believe something','the act of running very fast','the act of writing a long story','the act of singing a song'], 'the act of convincing someone to do or believe something', term: 3),
  _qu3('upper','prefix',5,2,'grammar', 'Which sentence is an example of acknowledging a counter-argument?', ['While some argue that homework is stressful, it actually reinforces learning.','Homework is the best thing ever.','I hate doing my homework.','Homework should be banned everywhere.'], 'While some argue that homework is stressful, it actually reinforces learning.', term: 3),
  _qu3('upper','suffix',5,2,'grammar', 'What should a good conclusion do?', ['Restate the main argument and leave a lasting impression','Introduce completely new evidence','Start a new argument','Ask the teacher what they think'], 'Restate the main argument and leave a lasting impression', term: 3),
  _qu3('upper','prefix',5,2,'vocabulary', 'Which word means "based on clear thought and reason"?', ['logical','emotional','angry','confusing'], 'logical', term: 3),
  _qu3('upper','suffix',5,2,'grammar', 'Which of these is NOT a good piece of evidence for an essay?', ['"My friend said it is true."','"A 2023 university study showed that..."','"Statistics from the government indicate..."','"Experts in the field agree that..."'], '"My friend said it is true."', term: 3),
  _qu3('upper','prefix',5,2,'vocabulary', 'What does "inaccurate" mean? (in- = not)', ['not correct or exact','very correct','easy to read','hard to write'], 'not correct or exact', term: 3),
  _qu3('upper','suffix',5,2,'grammar', 'Which discourse marker shows a result or conclusion?', ['Consequently','Secondly','For example','However'], 'Consequently', term: 3),
  _qu3('upper','prefix',5,2,'grammar', 'If you are arguing that junk food should be banned in schools, what is the counter-argument?', ['Students should have the freedom to choose what they eat.','Junk food is unhealthy and causes cavities.','Schools should provide healthy meals.','Fruits and vegetables are better for learning.'], 'Students should have the freedom to choose what they eat.', term: 3),
  _qu3('upper','suffix',5,2,'vocabulary', 'Which word means "fair and free from bias"?', ['objective','subjective','angry','persuasive'], 'objective', term: 3),

  // Set 3 — comprehension (NOT read by TTS)
  _qu3('upper','prefix',5,3,'comprehension',
      'PASSAGE: Writing a strong argumentative essay requires careful structure. First, the introduction must hook the reader and clearly state the thesis—your main argument. In the body paragraphs, you provide logical reasons and solid evidence, such as statistics or expert quotes, to support your thesis. A truly excellent essay also includes a counter-argument paragraph. Here, you acknowledge what the opposing side might say, but then you provide a rebuttal to show why their point is weak or incorrect. Finally, the conclusion ties everything together, restating the thesis in a new way and leaving the reader convinced.\n\nQ: According to the passage, what is a "thesis"?',
      ['Your main argument','The opposing side\'s argument','The conclusion of the essay','A type of statistic'],
      'Your main argument', term: 3),
  _qu3('upper','suffix',5,3,'comprehension',
      'Refer to the passage above.\n\nQ: What belongs in the body paragraphs?',
      ['Logical reasons and solid evidence','The hook and the thesis','Only the counter-argument','The final summary'],
      'Logical reasons and solid evidence', term: 3),
  _qu3('upper','prefix',5,3,'comprehension',
      'Refer to the passage above.\n\nQ: Why should an essay include a counter-argument?',
      ['To acknowledge the opposing side before proving it weak','To agree with the opposing side completely','To confuse the reader on purpose','To make the essay shorter'],
      'To acknowledge the opposing side before proving it weak', term: 3),
  _qu3('upper','suffix',5,3,'comprehension',
      'Refer to the passage above.\n\nQ: What does the conclusion do?',
      ['Ties everything together and restates the thesis','Introduces new evidence not mentioned before','Starts the counter-argument','Hooks the reader for the first time'],
      'Ties everything together and restates the thesis', term: 3),
  _qu3('upper','prefix',5,3,'comprehension',
      'Refer to the passage above.\n\nQ: What is a "rebuttal"?',
      ['Showing why the opposing point is weak or incorrect','Agreeing with the counter-argument','A quote from an expert','The very first sentence of the essay'],
      'Showing why the opposing point is weak or incorrect', term: 3),
  _qu3('upper','suffix',5,3,'vocabulary', 'What does "opposing" mean?', ['being against or disagreeing with something','supporting and helping','writing a conclusion','using statistics'], 'being against or disagreeing with something', term: 3),
  _qu3('upper','prefix',5,3,'grammar', 'Which prefix in "incorrect" means "not"?', ['in-','cor-','rect','inc-'], 'in-', term: 3),
  _qu3('upper','suffix',5,3,'grammar', 'What suffix is added to "care" to make "careful"?', ['-ful','-less','-ly','-ness'], '-ful', term: 3),
  _qu3('upper','prefix',5,3,'vocabulary', 'What does "convinced" mean?', ['completely certain about something','very confused','bored and tired','angry at the writer'], 'completely certain about something', term: 3),
  _qu3('upper','suffix',5,3,'grammar', 'Which word from the passage is an adverb ending in "-ly"?', ['truly','excellent','statistics','rebuttal'], 'truly', term: 3),

  // ══════════════════════════════════════════════════════════════════════════
  // WEEK 6 — Reading Comprehension: Poetry
  // Tags: rhyme, alliteration
  // ══════════════════════════════════════════════════════════════════════════

  // Set 1 — vocabulary + grammar + literary devices
  _qu3('upper','rhyme',6,1,'vocabulary', 'What is a "stanza" in a poem?', ['A group of lines forming a section of the poem','The title of the poem','The rhythm or beat of the poem','The author of the poem'], 'A group of lines forming a section of the poem', term: 3),
  _qu3('upper','rhyme',6,1,'grammar', 'Which pair of words rhymes?', ['light and night','light and dark','moon and sun','star and sky'], 'light and night', term: 3),
  _qu3('upper','alliteration',6,1,'vocabulary', 'What is "alliteration"?', ['The repetition of the same starting sound in words close together','Words that sound like the noise they make','A comparison using like or as','The pattern of rhymes at the end of lines'], 'The repetition of the same starting sound in words close together', term: 3),
  _qu3('upper','alliteration',6,1,'grammar', 'Which sentence is an example of alliteration?', ['The sneaky snake slithered slowly.','The dog barked loudly at the mailman.','The sun is like a golden coin.','The cat slept on the mat.'], 'The sneaky snake slithered slowly.', term: 3),
  _qu3('upper','rhyme',6,1,'vocabulary', 'What is "imagery" in poetry?', ['Descriptive language that appeals to the five senses','The beat of the poem','The repetition of sounds','The title of the poem'], 'Descriptive language that appeals to the five senses', term: 3),
  _qu3('upper','rhyme',6,1,'grammar', 'Which of these is an example of strong visual imagery?', ['The crimson leaves danced in the crisp autumn wind.','It was a nice day.','I walked outside.','The tree had leaves.'], 'The crimson leaves danced in the crisp autumn wind.', term: 3),
  _qu3('upper','rhyme',6,1,'vocabulary', 'What does the "rhythm" of a poem refer to?', ['The beat and pace of the words','The picture the poem paints in your mind','The lesson the poem teaches','The person reading the poem'], 'The beat and pace of the words', term: 3),
  _qu3('upper','rhyme',6,1,'grammar', 'If line 1 rhymes with line 2, and line 3 rhymes with line 4, what is the rhyme scheme?', ['AABB','ABAB','ABBA','ABCD'], 'AABB', term: 3),
  _qu3('upper','alliteration',6,1,'vocabulary', 'What is "tone" in a poem?', ['The author\'s attitude or feeling toward the subject','The number of lines in a stanza','The rhyming words at the end','The main character in the poem'], 'The author\'s attitude or feeling toward the subject', term: 3),
  _qu3('upper','rhyme',6,1,'grammar', 'Which word rhymes with "breeze"?', ['trees','wind','cold','breath'], 'trees', term: 3),

  // Set 2 — vocabulary + grammar + literary devices
  _qu3('upper','rhyme',6,2,'grammar', 'What is the rhyme scheme of these lines?\n"The sun is bright (A)\nThe sky is blue (B)\nIt brings me light (A)\nAnd warms me too (B)"', ['ABAB','AABB','ABCA','ABCD'], 'ABAB', term: 3),
  _qu3('upper','alliteration',6,2,'grammar', 'Identify the alliteration: "Peter Piper picked a peck of pickled peppers."', ['The repeated /p/ sound','The rhyming of Peter and pepper','The visual imagery of peppers','The rhythm of the sentence'], 'The repeated /p/ sound', term: 3),
  _qu3('upper','rhyme',6,2,'vocabulary', 'What is a "couplet"?', ['Two consecutive lines of poetry that rhyme','A four-line stanza','A poem with no rhyme','A type of alliteration'], 'Two consecutive lines of poetry that rhyme', term: 3),
  _qu3('upper','rhyme',6,2,'grammar', 'Which word completes the rhyme? "I saw a little frog, sitting on a ___."', ['log','rock','leaf','pond'], 'log', term: 3),
  _qu3('upper','rhyme',6,2,'vocabulary', 'What is "personification"?', ['Giving human qualities to non-human things','Comparing two things using like or as','Repeating the same sound','Words that rhyme'], 'Giving human qualities to non-human things', term: 3),
  _qu3('upper','alliteration',6,2,'grammar', 'Which phrase uses personification?', ['The wind whispered through the trees.','The wind was very strong.','The wind blew the leaves away.','The wind sounded like a train.'], 'The wind whispered through the trees.', term: 3),
  _qu3('upper','rhyme',6,2,'vocabulary', 'What is a "metaphor"?', ['A direct comparison saying one thing IS another','A comparison using like or as','A repeating sound','A rhyming pair'], 'A direct comparison saying one thing IS another', term: 3),
  _qu3('upper','alliteration',6,2,'grammar', 'Which sentence uses a metaphor?', ['The classroom was a zoo.','The classroom was like a zoo.','The classroom was very loud.','The classroom had animals in it.'], 'The classroom was a zoo.', term: 3),
  _qu3('upper','rhyme',6,2,'grammar', 'Which pair of words are "near rhymes" (they sound similar but don\'t rhyme perfectly)?', ['shape and keep','cat and bat','sun and run','light and night'], 'shape and keep', term: 3),
  _qu3('upper','alliteration',6,2,'grammar', 'Which phrase contains alliteration?', ['Wild winds whirled.','The big dog ran.','She sang a song.','The sky was blue.'], 'Wild winds whirled.', term: 3),

  // Set 3 — comprehension (NOT read by TTS)
  _qu3('upper','rhyme',6,3,'comprehension',
      'POEM: The Storm\nThe heavy clouds began to cry,\nAnd lightning flashed across the sky.\nThe fierce, fast wind began to blow,\nAnd bent the ancient branches low.\n\nThe thunder rumbled like a drum,\nThe frightened birds were stricken dumb.\nBut soon the storm began to fade,\nAnd sunlight kissed the forest glade.\n\nQ: What is the rhyme scheme of the first stanza (the first four lines)?',
      ['AABB','ABAB','ABCA','ABCD'],
      'AABB', term: 3),
  _qu3('upper','rhyme',6,3,'comprehension',
      'Refer to the poem above.\n\nQ: "The heavy clouds began to cry" is an example of which literary device?',
      ['Personification','Alliteration','Simile','Rhyme'],
      'Personification', term: 3),
  _qu3('upper','alliteration',6,3,'comprehension',
      'Refer to the poem above.\n\nQ: Which line contains alliteration?',
      ['The fierce, fast wind began to blow','And lightning flashed across the sky','The thunder rumbled like a drum','But soon the storm began to fade'],
      'The fierce, fast wind began to blow', term: 3),
  _qu3('upper','rhyme',6,3,'comprehension',
      'Refer to the poem above.\n\nQ: "The thunder rumbled like a drum" is an example of which literary device?',
      ['Simile','Metaphor','Personification','Alliteration'],
      'Simile', term: 3),
  _qu3('upper','rhyme',6,3,'comprehension',
      'Refer to the poem above.\n\nQ: What is the overall tone or feeling of the end of the poem?',
      ['Peaceful and calm','Scary and dangerous','Sad and depressing','Angry and loud'],
      'Peaceful and calm', term: 3),
  _qu3('upper','rhyme',6,3,'vocabulary', 'What does "ancient" mean in the poem?', ['very old','very strong','very green','very tall'], 'very old', term: 3),
  _qu3('upper','rhyme',6,3,'vocabulary', 'What does "stricken dumb" mean?', ['unable to speak or make a sound because of fear','acting silly and foolish','flying away quickly','singing very loudly'], 'unable to speak or make a sound because of fear', term: 3),
  _qu3('upper','rhyme',6,3,'grammar', 'Which word from the poem rhymes with "drum"?', ['dumb','low','sky','fade'], 'dumb', term: 3),
  _qu3('upper','rhyme',6,3,'vocabulary', 'What is a "glade"?', ['an open space in a forest','a type of bird','a loud thunderclap','a dark cloud'], 'an open space in a forest', term: 3),
  _qu3('upper','alliteration',6,3,'grammar', 'Identify the alliteration in the second stanza.', ['birds were','thunder rumbled','soon the storm','forest glade'], 'soon the storm', term: 3),

  // ══════════════════════════════════════════════════════════════════════════
  // WEEK 7 — Reading Comprehension: Prose
  // Tags: syllable, alternative_spelling
  // ══════════════════════════════════════════════════════════════════════════

  // Set 1 — vocabulary + grammar
  _qu3('upper','syllable',7,1,'vocabulary', 'What is the "theme" of a story?', ['The main message or underlying meaning of the story','The place where the story happens','The name of the main character','The problem in the story'], 'The main message or underlying meaning of the story', term: 3),
  _qu3('upper','syllable',7,1,'grammar', 'Which of these is a common theme in literature?', ['Friendship and loyalty','A red bicycle','New York City','The year 1999'], 'Friendship and loyalty', term: 3),
  _qu3('upper','alternative_spelling',7,1,'vocabulary', 'What does "characterisation" mean?', ['How the author describes and develops a character','The time and place of the story','The events that happen in the story','The lesson learned at the end'], 'How the author describes and develops a character', term: 3),
  _qu3('upper','alternative_spelling',7,1,'grammar', 'Which sentence is an example of "indirect characterisation"?', ['Ngozi refused to share her lunch and scowled at anyone who asked.','Ngozi was a very selfish girl.','Ngozi is tall and mean.','The author says Ngozi is not nice.'], 'Ngozi refused to share her lunch and scowled at anyone who asked.', term: 3),
  _qu3('upper','syllable',7,1,'vocabulary', 'What is a "protagonist"?', ['The main character of the story','The villain of the story','The author of the book','The setting of the story'], 'The main character of the story', term: 3),
  _qu3('upper','syllable',7,1,'vocabulary', 'What is an "antagonist"?', ['The character or force that opposes the main character','The hero of the story','The best friend of the protagonist','The narrator of the story'], 'The character or force that opposes the main character', term: 3),
  _qu3('upper','alternative_spelling',7,1,'grammar', 'What does it mean to "infer" something from a text?', ['To make an educated guess based on clues in the text','To read the words out loud','To skip the boring parts','To copy the text exactly'], 'To make an educated guess based on clues in the text', term: 3),
  _qu3('upper','syllable',7,1,'grammar', 'If a character is trembling and hiding, what can you infer?', ['They are frightened.','They are angry.','They are happy.','They are hungry.'], 'They are frightened.', term: 3),
  _qu3('upper','syllable',7,1,'vocabulary', 'How many syllables are in the word "characterisation"?', ['6','5','4','7'], '6', term: 3),
  _qu3('upper','alternative_spelling',7,1,'grammar', 'Which word is spelled correctly?', ['evidence','evidance','evidense','evedence'], 'evidence', term: 3),

  // Set 2 — vocabulary + grammar
  _qu3('upper','alternative_spelling',7,2,'vocabulary', 'What does "textual evidence" mean?', ['Specific quotes or details from the text used to support an answer','Your own personal opinion about the story','A summary of the whole book','The title of the chapter'], 'Specific quotes or details from the text used to support an answer', term: 3),
  _qu3('upper','syllable',7,2,'grammar', 'When writing a paragraph response, what does P.E.E. stand for?', ['Point, Evidence, Explain','Point, Example, End','Paragraph, Essay, Edit','Punctuate, Evaluate, Erase'], 'Point, Evidence, Explain', term: 3),
  _qu3('upper','alternative_spelling',7,2,'grammar', 'Which sentence provides evidence for the claim "The dog was hungry"?', ['"The dog whined and scratched frantically at the empty food bowl."','I think the dog wanted food.','The dog is a brown terrier.','Dogs like to eat meat.'], '"The dog whined and scratched frantically at the empty food bowl."', term: 3),
  _qu3('upper','syllable',7,2,'vocabulary', 'What does "perspective" mean in a story?', ['The point of view from which the story is told','The time period of the story','The main problem the character faces','The lesson learned'], 'The point of view from which the story is told', term: 3),
  _qu3('upper','alternative_spelling',7,2,'grammar', 'Which pronoun is used in a "first-person" perspective?', ['I','He','She','They'], 'I', term: 3),
  _qu3('upper','alternative_spelling',7,2,'vocabulary', 'What does "analyze" (or analyse) mean?', ['To examine something carefully in detail to understand it','To glance at something quickly','To forget about something','To draw a picture of something'], 'To examine something carefully in detail to understand it', term: 3),
  _qu3('upper','syllable',7,2,'grammar', 'How many syllables are in the word "protagonist"?', ['4','3','5','2'], '4', term: 3),
  _qu3('upper','alternative_spelling',7,2,'grammar', 'Which word is spelled correctly?', ['analyse','analize','annelise','analise'], 'analyse', term: 3), // Note: analyse is UK/Aus, analize is wrong, analyze is US. Accept analyse.
  _qu3('upper','syllable',7,2,'vocabulary', 'What is "setting"?', ['The time and place where the story occurs','The main character','The lesson of the story','The author\'s name'], 'The time and place where the story occurs', term: 3),
  _qu3('upper','alternative_spelling',7,2,'grammar', 'If a story takes place on a spaceship in the year 3000, what is the setting?', ['A spaceship in the year 3000','A brave astronaut','An alien invasion','A story about science'], 'A spaceship in the year 3000', term: 3),

  // Set 3 — comprehension (NOT read by TTS)
  _qu3('upper','syllable',7,3,'comprehension',
      'PASSAGE: Kwame stared at the broken vase on the floor. It was his mother\'s favourite, brought all the way from Ghana. His little brother, Kofi, stood nearby, his lower lip trembling and tears welling in his eyes. Kwame knew their mother would be furious when she got home. He could easily blame Kofi; after all, Kofi was the one running in the house. But as Kwame looked at his brother\'s terrified face, he made a decision. When the front door opened, Kwame stepped forward. "I\'m sorry, Mama," he said steadily. "I knocked over the vase." Kofi looked at him in shock, but Kwame just gave him a tiny, reassuring smile.\n\nQ: What can you infer about Kwame\'s character from this passage?',
      ['He is protective and takes responsibility','He is clumsy and careless','He is mean to his little brother','He is afraid of his mother'],
      'He is protective and takes responsibility', term: 3),
  _qu3('upper','alternative_spelling',7,3,'comprehension',
      'Refer to the passage above.\n\nQ: What is the most likely theme of this story fragment?',
      ['Loyalty and sacrifice for family','The dangers of running indoors','How to fix broken pottery','Mothers are always angry'],
      'Loyalty and sacrifice for family', term: 3),
  _qu3('upper','syllable',7,3,'comprehension',
      'Refer to the passage above.\n\nQ: What textual evidence shows that Kofi is scared?',
      ['"his lower lip trembling and tears welling in his eyes"','"Kwame stared at the broken vase"','"Kofi was the one running in the house"','"brought all the way from Ghana"'],
      '"his lower lip trembling and tears welling in his eyes"', term: 3),
  _qu3('upper','alternative_spelling',7,3,'comprehension',
      'Refer to the passage above.\n\nQ: Why does Kwame take the blame?',
      ['He sees how terrified his brother is and wants to protect him','He actually broke the vase himself','He thinks his mother won\'t be mad at him','He wants to get Kofi in more trouble later'],
      'He sees how terrified his brother is and wants to protect him', term: 3),
  _qu3('upper','syllable',7,3,'comprehension',
      'Refer to the passage above.\n\nQ: From whose perspective is this story mostly told?',
      ['Third-person, focusing on Kwame\'s feelings','First-person ("I")','Second-person ("You")','Third-person, focusing on the mother'],
      'Third-person, focusing on Kwame\'s feelings', term: 3),
  _qu3('upper','alternative_spelling',7,3,'vocabulary', 'What does "furious" mean?', ['extremely angry','very happy','slightly annoyed','deeply sad'], 'extremely angry', term: 3),
  _qu3('upper','syllable',7,3,'vocabulary', 'What does "reassuring" mean?', ['saying or doing something to remove doubt and fear','making someone more afraid','laughing at someone','ignoring someone completely'], 'saying or doing something to remove doubt and fear', term: 3),
  _qu3('upper','alternative_spelling',7,3,'grammar', 'How do you spell the word meaning "a decorative container without handles"?', ['vase','vace','vais','vaze'], 'vase', term: 3),
  _qu3('upper','syllable',7,3,'grammar', 'How many syllables are in the word "decision"?', ['3','2','4','1'], '3', term: 3),
  _qu3('upper','alternative_spelling',7,3,'vocabulary', 'What does "shock" mean in the context of Kofi\'s reaction?', ['sudden surprise and disbelief','an electrical current','a feeling of joy','a feeling of anger'], 'sudden surprise and disbelief', term: 3),

  // ══════════════════════════════════════════════════════════════════════════
  // WEEK 8 — Grammar: Complex Sentences
  // Tags: suffix
  // ══════════════════════════════════════════════════════════════════════════

  // Set 1 — grammar + vocabulary
  _qu3('upper','suffix',8,1,'grammar', 'What is an "independent clause" (main clause)?', ['A group of words with a subject and verb that can stand alone as a sentence','A group of words that cannot stand alone','Just a subject without a verb','Just a verb without a subject'], 'A group of words with a subject and verb that can stand alone as a sentence', term: 3),
  _qu3('upper','suffix',8,1,'grammar', 'What is a "subordinate clause" (dependent clause)?', ['A clause that has a subject and verb but cannot stand alone as a complete sentence','A sentence that makes perfect sense on its own','A single word that joins two sentences','A question without an answer'], 'A clause that has a subject and verb but cannot stand alone as a complete sentence', term: 3),
  _qu3('upper','suffix',8,1,'grammar', 'Which of these is a complex sentence?', ['Because it was raining, we stayed indoors.','It was raining.','We stayed indoors.','It was raining, and we stayed indoors.'], 'Because it was raining, we stayed indoors.', term: 3),
  _qu3('upper','suffix',8,1,'grammar', 'Which word is a "subordinating conjunction"?', ['although','and','but','or'], 'although', term: 3),
  _qu3('upper','suffix',8,1,'grammar', 'Identify the subordinate clause: "While the teacher was talking, the students took notes."', ['While the teacher was talking','the students took notes','the students','was talking'], 'While the teacher was talking', term: 3),
  _qu3('upper','suffix',8,1,'grammar', 'Identify the main clause: "If you finish your chores, you can go outside."', ['you can go outside','If you finish your chores','If you finish','your chores'], 'you can go outside', term: 3),
  _qu3('upper','suffix',8,1,'grammar', 'Which subordinating conjunction best completes the sentence: "___ he was very tired, he finished his homework."', ['Although','Because','Since','If'], 'Although', term: 3),
  _qu3('upper','suffix',8,1,'grammar', 'Which sentence correctly uses a comma?', ['Since we are early, we can get good seats.','Since we are early we can get good seats.','We can get good seats, since we are early.','We can get, good seats since we are early.'], 'Since we are early, we can get good seats.', term: 3),
  _qu3('upper','suffix',8,1,'vocabulary', 'What does "subordinate" mean?', ['lower in rank or position; dependent','the most important','equal in power','completely independent'], 'lower in rank or position; dependent', term: 3),
  _qu3('upper','suffix',8,1,'grammar', 'Is this sentence simple, compound, or complex? "When the bell rang, the children ran outside."', ['Complex','Simple','Compound','Fragment'], 'Complex', term: 3),

  // Set 2 — grammar + vocabulary
  _qu3('upper','suffix',8,2,'grammar', 'Which subordinating conjunction shows a cause or reason?', ['because','unless','although','while'], 'because', term: 3),
  _qu3('upper','suffix',8,2,'grammar', 'Which subordinating conjunction shows a condition?', ['if','because','until','since'], 'if', term: 3),
  _qu3('upper','suffix',8,2,'grammar', 'Combine these two clauses to make a complex sentence: "I will call you" / "I arrive at the station"', ['I will call you when I arrive at the station.','I will call you and I arrive at the station.','I will call you but I arrive at the station.','I will call you so I arrive at the station.'], 'I will call you when I arrive at the station.', term: 3),
  _qu3('upper','suffix',8,2,'grammar', 'Which of these is a dependent clause?', ['Until the sun goes down','The sun goes down','We watched the sun','The sunset was beautiful'], 'Until the sun goes down', term: 3),
  _qu3('upper','suffix',8,2,'grammar', 'Identify the error: "Because it was cold. We wore our jackets."', ['It is written as two sentences, but the first is a dependent clause fragment.','There should be a comma after jackets.','The word "because" is spelled wrong.','The sentence is actually perfect.'], 'It is written as two sentences, but the first is a dependent clause fragment.', term: 3),
  _qu3('upper','suffix',8,2,'grammar', 'Which sentence uses "unless" correctly?', ['You cannot play outside unless you clean your room.','Unless you clean your room, so you cannot play.','You cannot play outside, unless, you clean your room.','Unless you clean your room and you cannot play.'], 'You cannot play outside unless you clean your room.', term: 3),
  _qu3('upper','suffix',8,2,'vocabulary', 'What does "conjunction" mean?', ['a word used to connect clauses or sentences','an action word','a person, place, or thing','a word that describes a noun'], 'a word used to connect clauses or sentences', term: 3),
  _qu3('upper','suffix',8,2,'grammar', 'Which of the following is NOT a subordinating conjunction?', ['but','after','before','even though'], 'but', term: 3),
  _qu3('upper','suffix',8,2,'grammar', 'If the dependent clause comes FIRST in a sentence, what punctuation is needed?', ['A comma after the dependent clause','A period after the dependent clause','A question mark','No punctuation is needed'], 'A comma after the dependent clause', term: 3),
  _qu3('upper','suffix',8,2,'grammar', 'Which sentence is correct?', ['We went to the beach although it was cloudy.','We went to the beach, although it was cloudy. (Comma not strictly needed when dependent clause is second)','Although, it was cloudy we went to the beach.','We went to the beach although, it was cloudy.'], 'We went to the beach although it was cloudy.', term: 3),

  // Set 3 — comprehension (NOT read by TTS)
  _qu3('upper','suffix',8,3,'comprehension',
      'PASSAGE: Although space exploration is incredibly expensive, many scientists believe it is vital for humanity\'s future. When astronauts travel to the International Space Station, they conduct experiments that cannot be done on Earth. Because there is zero gravity in space, researchers can study how plants grow and how the human body reacts in strange conditions. If we continue to invest in space agencies, we might eventually find a way to live on other planets. Until that day comes, we must protect the Earth, since it is the only home we currently have.\n\nQ: Why do astronauts conduct experiments on the International Space Station?',
      ['Because there is zero gravity and experiments can be done there that cannot be done on Earth','Because they are bored','Because Earth is too crowded','Because they want to grow plants for food'],
      'Because there is zero gravity and experiments can be done there that cannot be done on Earth', term: 3),
  _qu3('upper','suffix',8,3,'comprehension',
      'Refer to the passage above.\n\nQ: According to the passage, what might happen if we continue to invest in space agencies?',
      ['We might eventually find a way to live on other planets','We will run out of money','Space agencies will shut down','Gravity on Earth will disappear'],
      'We might eventually find a way to live on other planets', term: 3),
  _qu3('upper','suffix',8,3,'comprehension',
      'Refer to the passage above.\n\nQ: Identify the subordinating conjunction in this sentence: "Although space exploration is incredibly expensive, many scientists believe it is vital..."',
      ['Although','is','many','vital'],
      'Although', term: 3),
  _qu3('upper','suffix',8,3,'comprehension',
      'Refer to the passage above.\n\nQ: In the sentence "Because there is zero gravity in space, researchers can study how plants grow...", what is the main (independent) clause?',
      ['researchers can study how plants grow','Because there is zero gravity in space','there is zero gravity','in space'],
      'researchers can study how plants grow', term: 3),
  _qu3('upper','suffix',8,3,'comprehension',
      'Refer to the passage above.\n\nQ: Why does the author say we must protect the Earth?',
      ['Since it is the only home we currently have','Because space is too cold','Until we find alien life','If we want to build more rockets'],
      'Since it is the only home we currently have', term: 3),
  _qu3('upper','suffix',8,3,'vocabulary', 'What does "vital" mean?', ['absolutely necessary or important','very expensive','related to space','completely useless'], 'absolutely necessary or important', term: 3),
  _qu3('upper','suffix',8,3,'grammar', 'What suffix is added to "explore" to make "exploration"?', ['-ation','-ment','-ing','-ed'], '-ation', term: 3),
  _qu3('upper','suffix',8,3,'vocabulary', 'What does "eventually" mean?', ['in the end, especially after a long delay','right now immediately','never','only on weekends'], 'in the end, especially after a long delay', term: 3),
  _qu3('upper','suffix',8,3,'grammar', 'Which of these is a dependent clause from the passage?', ['Until that day comes','we must protect the Earth','researchers can study how plants grow','many scientists believe it is vital'], 'Until that day comes', term: 3),
  _qu3('upper','suffix',8,3,'grammar', 'What punctuation separates the dependent clause from the main clause in this sentence? "If we continue to invest in space agencies, we might eventually find a way to live on other planets."', ['A comma','A full stop','A semicolon','An apostrophe'], 'A comma', term: 3),

// ══════════════════════════════════════════════════════════════════════════
  // WEEK 9 — Spelling for Secondary Readiness
  // Tags: alternative_spelling, prefix, suffix
  // ══════════════════════════════════════════════════════════════════════════

  // Set 1 — spelling + vocabulary
  _qu3('upper','alternative_spelling',9,1,'grammar', 'Which is the correct spelling of the word meaning "necessary"?', ['necessary','necesary','necessery','neccessary'], 'necessary', term: 3),
  _qu3('upper','prefix',9,1,'grammar', 'Identify the correctly spelled word with a prefix.', ['disappear','dissapear','disapear','dissappear'], 'disappear', term: 3),
  _qu3('upper','suffix',9,1,'grammar', 'Which is the correct spelling of "success" + "-ful"?', ['successful','succesful','successfull','sucesful'], 'successful', term: 3),
  _qu3('upper','alternative_spelling',9,1,'vocabulary', 'Which is the correct spelling of the word meaning "a chance to do something"?', ['opportunity','oportunity','oppurtunity','oppertunity'], 'opportunity', term: 3),
  _qu3('upper','suffix',9,1,'grammar', 'Choose the correct spelling:', ['government','goverment','govnerment','governemnt'], 'government', term: 3),
  _qu3('upper','prefix',9,1,'grammar', 'Which word correctly uses the prefix "un-"?', ['unnecessary','unecessary','unneccessary','unnesessary'], 'unnecessary', term: 3),
  _qu3('upper','alternative_spelling',9,1,'grammar', 'Which is the correct spelling?', ['environment','enviroment','envirnoment','enviorment'], 'environment', term: 3),
  _qu3('upper','suffix',9,1,'vocabulary', 'What does the suffix "-ment" do in "development"?', ['It changes the verb "develop" into a noun.','It changes the noun into an adjective.','It makes the word plural.','It means "not".'], 'It changes the verb "develop" into a noun.', term: 3),
  _qu3('upper','alternative_spelling',9,1,'grammar', 'Which is the correct spelling for a place to read books?', ['library','libary','librery','libray'], 'library', term: 3),
  _qu3('upper','prefix',9,1,'grammar', 'Which is the correct spelling?', ['recommend','recomend','reccommend','reccomend'], 'recommend', term: 3),

  // Set 2 — spelling strategies
  _qu3('upper','alternative_spelling',9,2,'grammar', 'Which is the correct spelling?', ['believe','beleive','belive','beleeve'], 'believe', term: 3),
  _qu3('upper','prefix',9,2,'grammar', 'Which is the correct spelling?', ['disappoint','dissapoint','disapoint','dissappoint'], 'disappoint', term: 3),
  _qu3('upper','suffix',9,2,'grammar', 'Which is the correct spelling when adding a suffix to "argue"?', ['argument','arguement','argumant','arguament'], 'argument', term: 3),
  _qu3('upper','alternative_spelling',9,2,'grammar', 'Which word is spelled correctly?', ['fascinating','facinating','fassinating','fasinating'], 'fascinating', term: 3),
  _qu3('upper','alternative_spelling',9,2,'grammar', 'Which is the correct spelling?', ['guarantee','garantee','guarentee','garentee'], 'guarantee', term: 3),
  _qu3('upper','suffix',9,2,'grammar', 'Which word correctly adds "-ly" to "immediate"?', ['immediately','immediatly','immediatley','imediately'], 'immediately', term: 3),
  _qu3('upper','prefix',9,2,'grammar', 'Which is the correct spelling?', ['interrupt','interupt','intterrupt','interropt'], 'interrupt', term: 3),
  _qu3('upper','alternative_spelling',9,2,'vocabulary', 'What strategy helps you spell "rhythm"?', ['Remembering the mnemonic: Rhythm Helps Your Two Hips Move','Sounding it out perfectly','Adding a silent E at the end','Doubling the M'], 'Remembering the mnemonic: Rhythm Helps Your Two Hips Move', term: 3),
  _qu3('upper','suffix',9,2,'grammar', 'Which is the correct spelling?', ['beginning','begining','beggining','begginning'], 'beginning', term: 3),
  _qu3('upper','alternative_spelling',9,2,'grammar', 'Which is the correct spelling?', ['restaurant','restarant','restaurand','restaraunt'], 'restaurant', term: 3),

  // Set 3 — comprehension (NOT read by TTS)
  _qu3('upper','alternative_spelling',9,3,'comprehension',
      'PASSAGE: As the primary school students prepared for their transition to secondary school, their English teacher, Mrs. Ade, gave them a special assignment. "In secondary school, your teachers will expect a high level of accuracy," she warned. "Words like \'necessary\', \'opportunity\', and \'environment\' frequently appear in junior secondary exams. If you misspell them, you lose marks." She taught them mnemonics—memory tricks—to help them. For example, to spell \'necessary\', she told them to remember: "One Collar and Two Sleeves are necessary for a shirt." This helped them remember it has one \'c\' and two \'s\'s.\n\nQ: Why did Mrs. Ade give the students a special assignment?',
      ['To prepare them for the transition to secondary school','To punish them for being noisy','Because it was the end of the day','To make them read a long book'],
      'To prepare them for the transition to secondary school', term: 3),
  _qu3('upper','alternative_spelling',9,3,'comprehension',
      'Refer to the passage above.\n\nQ: What will secondary school teachers expect, according to Mrs. Ade?',
      ['A high level of accuracy','Students to play all day','Students to forget their spelling','Short, simple essays'],
      'A high level of accuracy', term: 3),
  _qu3('upper','alternative_spelling',9,3,'comprehension',
      'Refer to the passage above.\n\nQ: What happens if students misspell words in junior secondary exams?',
      ['They lose marks','They are sent home','They get extra homework','They are rewarded'],
      'They lose marks', term: 3),
  _qu3('upper','alternative_spelling',9,3,'comprehension',
      'Refer to the passage above.\n\nQ: What is a "mnemonic"?',
      ['A memory trick to help remember something','A type of dictionary','A bad grade on a test','A long essay'],
      'A memory trick to help remember something', term: 3),
  _qu3('upper','alternative_spelling',9,3,'comprehension',
      'Refer to the passage above.\n\nQ: According to the mnemonic for "necessary", how many \'c\'s and \'s\'s does the word have?',
      ['One \'c\' and two \'s\'s','Two \'c\'s and one \'s\'','Two \'c\'s and two \'s\'s','One \'c\' and one \'s\''],
      'One \'c\' and two \'s\'s', term: 3),
  _qu3('upper','prefix',9,3,'vocabulary', 'What does "transition" mean in the passage?', ['The process of moving or changing from one state or stage to another','A short break during the school day','A type of spelling test','A vehicle used for transport'], 'The process of moving or changing from one state or stage to another', term: 3),
  _qu3('upper','alternative_spelling',9,3,'vocabulary', 'What does "frequently" mean?', ['often','rarely','never','sometimes'], 'often', term: 3),
  _qu3('upper','suffix',9,3,'grammar', 'Which word from the passage uses the suffix "-acy", meaning state or quality?', ['accuracy','necessary','frequently','assignment'], 'accuracy', term: 3),
  _qu3('upper','prefix',9,3,'grammar', 'Which word from the passage uses a prefix meaning "wrongly" or "badly"?', ['misspell','assignment','prepare','transition'], 'misspell', term: 3),
  _qu3('upper','alternative_spelling',9,3,'grammar', 'How do you spell the word Mrs. Ade used as an example for "a chance to do something"?', ['opportunity','oportunity','oppurtunity','oppertunity'], 'opportunity', term: 3),

  // ══════════════════════════════════════════════════════════════════════════
  // WEEK 10 — Oral: Presentation & Discussion
  // Tags: syllable
  // ══════════════════════════════════════════════════════════════════════════

  // Set 1 — speaking skills + syllables
  _qu3('upper','syllable',10,1,'vocabulary', 'When giving a presentation, what is "eye contact"?', ['Looking directly at the people in your audience','Reading straight from your paper without looking up','Staring at the ceiling','Closing your eyes while speaking'], 'Looking directly at the people in your audience', term: 3),
  _qu3('upper','syllable',10,1,'grammar', 'How many syllables are in the word "presentation"?', ['4','5','3','6'], '4', term: 3),
  _qu3('upper','syllable',10,1,'vocabulary', 'What does "volume" mean when speaking?', ['How loud or quiet your voice is','How fast you speak','The words you choose to use','The clothes you wear'], 'How loud or quiet your voice is', term: 3),
  _qu3('upper','syllable',10,1,'grammar', 'How many syllables are in the word "volume"?', ['2','1','3','4'], '2', term: 3),
  _qu3('upper','syllable',10,1,'vocabulary', 'What is "posture" during a presentation?', ['How you stand or sit; keeping your back straight and looking confident','The speed of your speech','The questions you ask the audience','The pictures you show'], 'How you stand or sit; keeping your back straight and looking confident', term: 3),
  _qu3('upper','syllable',10,1,'grammar', 'How many syllables are in the word "posture"?', ['2','3','1','4'], '2', term: 3),
  _qu3('upper','syllable',10,1,'vocabulary', 'What does it mean to "project" your voice?', ['To speak clearly and loudly enough so everyone in the room can hear','To whisper so only the front row hears','To shout angrily at the audience','To speak very quickly'], 'To speak clearly and loudly enough so everyone in the room can hear', term: 3),
  _qu3('upper','syllable',10,1,'grammar', 'How many syllables are in the word "project"?', ['2','1','3','4'], '2', term: 3),
  _qu3('upper','syllable',10,1,'vocabulary', 'What is an "introduction" in a speech?', ['The beginning where you greet the audience and state your topic','The end where you say goodbye','A question from the audience','A joke told in the middle'], 'The beginning where you greet the audience and state your topic', term: 3),
  _qu3('upper','syllable',10,1,'grammar', 'How many syllables are in the word "introduction"?', ['4','3','5','2'], '4', term: 3),

  // Set 2 — discussion + syllables
  _qu3('upper','syllable',10,2,'vocabulary', 'What is a "discussion"?', ['A conversation where people share ideas and listen to each other','A fight where people yell','A speech given by one person to a silent crowd','A written test'], 'A conversation where people share ideas and listen to each other', term: 3),
  _qu3('upper','syllable',10,2,'grammar', 'How many syllables are in the word "discussion"?', ['3','2','4','1'], '3', term: 3),
  _qu3('upper','syllable',10,2,'grammar', 'If you want to disagree politely in a discussion, what should you say?', ['"I hear your point, but I disagree because..."','"You are completely wrong."','"Be quiet, I am talking."','"That is a silly idea."'], '"I hear your point, but I disagree because..."', term: 3),
  _qu3('upper','syllable',10,2,'vocabulary', 'What does "active listening" mean?', ['Paying close attention, nodding, and thinking about what the speaker is saying','Looking at your phone while someone talks','Interrupting the speaker','Staring blankly out the window'], 'Paying close attention, nodding, and thinking about what the speaker is saying', term: 3),
  _qu3('upper','syllable',10,2,'grammar', 'How many syllables are in the word "listening"?', ['3','2','4','1'], '3', term: 3),
  _qu3('upper','syllable',10,2,'vocabulary', 'What does it mean to "summarise" a discussion?', ['To briefly repeat the main points that were talked about','To start a brand new topic','To argue with the last speaker','To leave the room'], 'To briefly repeat the main points that were talked about', term: 3),
  _qu3('upper','syllable',10,2,'grammar', 'How many syllables are in the word "summarise"?', ['3','4','2','5'], '3', term: 3),
  _qu3('upper','syllable',10,2,'vocabulary', 'What are "visual aids" in a presentation?', ['Items like charts, pictures, or slides that help the audience understand','The clothes the speaker wears','The notes the speaker holds','The microphone'], 'Items like charts, pictures, or slides that help the audience understand', term: 3),
  _qu3('upper','syllable',10,2,'grammar', 'How many syllables are in the word "visual"?', ['3','2','1','4'], '3', term: 3),
  _qu3('upper','syllable',10,2,'grammar', 'Which of these is a good way to conclude a presentation?', ['"Thank you for listening. Are there any questions?"','"I\'m done."','"That\'s all I have."','"Bye."'], '"Thank you for listening. Are there any questions?"', term: 3),

  // Set 3 — comprehension (NOT read by TTS)
  _qu3('upper','syllable',10,3,'comprehension',
      'PASSAGE: Friday was Presentation Day in Primary 5. Aisha stood at the front of the classroom, her notes clutched in her hand. She remembered her teacher\'s advice: "Stand tall, project your voice, and make eye contact." Aisha took a deep breath, smiled at the class, and began her speech on solar energy. She used a colorful chart as a visual aid to explain how sunlight is turned into electricity. When she finished, the class clapped loudly. During the Q&A session, a boy named Tobi asked a difficult question. Instead of panicking, Aisha paused, thought for a moment, and gave a clear, confident answer.\n\nQ: What advice did Aisha remember from her teacher?',
      ['"Stand tall, project your voice, and make eye contact."','"Read quickly and sit down."','"Look at your shoes when you speak."','"Shout as loudly as you can."'],
      '"Stand tall, project your voice, and make eye contact."', term: 3),
  _qu3('upper','syllable',10,3,'comprehension',
      'Refer to the passage above.\n\nQ: What was the topic of Aisha\'s speech?',
      ['Solar energy','The history of Nigeria','How to bake a cake','Wild animals'],
      'Solar energy', term: 3),
  _qu3('upper','syllable',10,3,'comprehension',
      'Refer to the passage above.\n\nQ: What visual aid did Aisha use?',
      ['A colorful chart','A video on a computer','A small model of a house','A whiteboard and marker'],
      'A colorful chart', term: 3),
  _qu3('upper','syllable',10,3,'comprehension',
      'Refer to the passage above.\n\nQ: What did Aisha do when Tobi asked a difficult question?',
      ['She paused, thought for a moment, and gave a clear answer','She panicked and ran away','She ignored him','She told him the question was silly'],
      'She paused, thought for a moment, and gave a clear answer', term: 3),
  _qu3('upper','syllable',10,3,'comprehension',
      'Refer to the passage above.\n\nQ: What does Q&A stand for?',
      ['Question and Answer','Quick and Angry','Quiet and Alert','Quality and Assurance'],
      'Question and Answer', term: 3),
  _qu3('upper','syllable',10,3,'grammar', 'How many syllables are in the word "presentation"?', ['4','3','5','2'], '4', term: 3),
  _qu3('upper','syllable',10,3,'vocabulary', 'What does "confident" mean in the last sentence?', ['feeling sure of yourself and your abilities','feeling nervous and scared','feeling very tired','feeling angry'], 'feeling sure of yourself and your abilities', term: 3),
  _qu3('upper','syllable',10,3,'grammar', 'How many syllables are in the word "electricity"?', ['5','4','6','3'], '5', term: 3),
  _qu3('upper','syllable',10,3,'vocabulary', 'What does "panicking" mean?', ['feeling sudden, uncontrollable fear or anxiety','laughing out loud','falling asleep','speaking very slowly'], 'feeling sudden, uncontrollable fear or anxiety', term: 3),
  _qu3('upper','syllable',10,3,'grammar', 'How many syllables are in the word "colorful" (or colourful)?', ['3','2','4','1'], '3', term: 3),

  // ══════════════════════════════════════════════════════════════════════════
  // WEEK 11 — Mock Assessment Practice
  // Tags: prefix, suffix, homophone, alternative_spelling
  // ══════════════════════════════════════════════════════════════════════════

  // Set 1 — mock exam mix
  _qu3('upper','alternative_spelling',11,1,'grammar', 'Identify the correctly spelled word:', ['accommodation','acommodation','accomodation','acomodation'], 'accommodation', term: 3),
  _qu3('upper','prefix',11,1,'vocabulary', 'What does the root "port" mean in the word "transport"?', ['to carry','to break','to see','to send'], 'to carry', term: 3),
  _qu3('upper','suffix',11,1,'grammar', 'Which of these is a complex sentence?', ['Although it was late, she continued to read.','It was late.','She continued to read.','It was late, but she continued to read.'], 'Although it was late, she continued to read.', term: 3),
  _qu3('upper','homophone',11,1,'grammar', 'Which homophone fits best: "The school ___ spoke to the students at assembly."?', ['principal','principle','prince','princepal'], 'principal', term: 3),
  _qu3('upper','suffix',11,1,'grammar', 'Which suffix turns the noun "danger" into an adjective?', ['-ous (dangerous)','-ly (dangerly)','-ment (dangerment)','-tion (dangertion)'], '-ous (dangerous)', term: 3),
  _qu3('upper','alternative_spelling',11,1,'vocabulary', 'What is the "theme" of a story?', ['The main message or underlying meaning','The time and place it happens','The main character','The climax'], 'The main message or underlying meaning', term: 3),
  _qu3('upper','prefix',11,1,'grammar', 'What does the prefix "mis-" mean in "misunderstand"?', ['wrongly','again','before','not'], 'wrongly', term: 3),
  _qu3('upper','homophone',11,1,'grammar', 'Which homophone fits best: "We had a delicious chocolate cake for ___."?', ['dessert','desert','stationary','stationery'], 'dessert', term: 3),
  _qu3('upper','suffix',11,1,'grammar', 'Which is the correct spelling?', ['argument','arguement','argumant','argement'], 'argument', term: 3),
  _qu3('upper','alternative_spelling',11,1,'vocabulary', 'What is a "protagonist"?', ['The main character of a story','The villain or enemy','The author','The setting'], 'The main character of a story', term: 3),

  // Set 2 — mock exam mix
  _qu3('upper','prefix',11,2,'vocabulary', 'What does the root "rupt" mean in "interrupt"?', ['to break or burst','to carry','to look','to write'], 'to break or burst', term: 3),
  _qu3('upper','alternative_spelling',11,2,'grammar', 'Which is the correct spelling?', ['separate','seperate','separat','separete'], 'separate', term: 3),
  _qu3('upper','suffix',11,2,'grammar', 'Which word correctly uses the suffix "-ible"?', ['visible','visable','viseble','vizible'], 'visible', term: 3),
  _qu3('upper','homophone',11,2,'grammar', 'Which homophone fits best: "She wrote a letter on beautiful pink ___."?', ['stationery','stationary','canvas','canvass'], 'stationery', term: 3),
  _qu3('upper','prefix',11,2,'grammar', 'Which transition word is best for adding more information?', ['Furthermore','However','Although','Instead'], 'Furthermore', term: 3),
  _qu3('upper','suffix',11,2,'grammar', 'Identify the dependent (subordinate) clause in this sentence: "If it rains tomorrow, we will stay inside."', ['If it rains tomorrow','we will stay inside','tomorrow','we will stay'], 'If it rains tomorrow', term: 3),
  _qu3('upper','alternative_spelling',11,2,'vocabulary', 'Which literary device gives human qualities to non-human things?', ['Personification','Simile','Alliteration','Rhyme'], 'Personification', term: 3),
  _qu3('upper','homophone',11,2,'grammar', 'Which homophone fits best: "The harsh weather will ___ the crops."?', ['affect','effect','except','accept'], 'affect', term: 3),
  _qu3('upper','suffix',11,2,'grammar', 'Which is the correct spelling of "achieve" + "-ment"?', ['achievement','achievment','acheivement','achivement'], 'achievement', term: 3),
  _qu3('upper','prefix',11,2,'vocabulary', 'What does "predict" mean? (pre = before, dict = say)', ['to say or estimate that something will happen in the future','to carry something heavy','to look at something carefully','to write a story'], 'to say or estimate that something will happen in the future', term: 3),

  // Set 3 — comprehension (NOT read by TTS)
  _qu3('upper','alternative_spelling',11,3,'comprehension',
      'PASSAGE: The mock examination was a crucial step in preparing the Primary 5 students for their final term. The hall was completely silent, except for the scratching of pens on paper. Mr. Bello walked up and down the aisles, his eyes scanning the room to ensure no one was distracted. He had repeatedly advised them to read the instructions carefully before attempting any question. "A careless mistake is worse than not knowing the answer," he had warned them yesterday. As the clock ticked, many students felt a sense of relief; the questions were familiar because they had revised diligently.\n\nQ: Why was the mock examination important?',
      ['It was a crucial step in preparing the students for their final term','It was the only test of the year','It allowed them to go home early','It was a punishment'],
      'It was a crucial step in preparing the students for their final term', term: 3),
  _qu3('upper','prefix',11,3,'comprehension',
      'Refer to the passage above.\n\nQ: What was the only sound in the hall?',
      ['The scratching of pens on paper','The ticking of the clock','Mr. Bello talking','Students whispering'],
      'The scratching of pens on paper', term: 3),
  _qu3('upper','alternative_spelling',11,3,'comprehension',
      'Refer to the passage above.\n\nQ: What had Mr. Bello repeatedly advised the students to do?',
      ['Read the instructions carefully before attempting any question','Write as fast as possible','Look at their neighbor\'s paper','Guess if they didn\'t know the answer'],
      'Read the instructions carefully before attempting any question', term: 3),
  _qu3('upper','suffix',11,3,'comprehension',
      'Refer to the passage above.\n\nQ: According to Mr. Bello, what is worse than not knowing the answer?',
      ['A careless mistake','Leaving the paper blank','Dropping a pen','Finishing too early'],
      'A careless mistake', term: 3),
  _qu3('upper','prefix',11,3,'comprehension',
      'Refer to the passage above.\n\nQ: Why did many students feel a sense of relief?',
      ['The questions were familiar because they had revised diligently','The exam was cancelled','Mr. Bello gave them the answers','The clock stopped working'],
      'The questions were familiar because they had revised diligently', term: 3),
  _qu3('upper','alternative_spelling',11,3,'vocabulary', 'What does "crucial" mean?', ['extremely important or necessary','very boring','quite easy','very fast'], 'extremely important or necessary', term: 3),
  _qu3('upper','suffix',11,3,'grammar', 'What suffix is added to "care" to make it mean "without care"?', ['-less (careless)','-ful (careful)','-ness (careness)','-ly (carely)'], '-less (careless)', term: 3),
  _qu3('upper','prefix',11,3,'grammar', 'What prefix is added to "familiar" to make it mean "not familiar"?', ['un- (unfamiliar)','dis- (disfamiliar)','in- (infamiliar)','mis- (misfamiliar)'], 'un- (unfamiliar)', term: 3),
  _qu3('upper','homophone',11,3,'grammar', 'Mr. Bello walked down the "aisle". Which homophone means "a piece of land surrounded by water"?', ['isle','I\'ll','owl','oil'], 'isle', term: 3),
  _qu3('upper','alternative_spelling',11,3,'vocabulary', 'What does "diligently" mean?', ['in a way that shows care and hard work','in a lazy way','very loudly','very quickly without thinking'], 'in a way that shows care and hard work', term: 3),

  // ══════════════════════════════════════════════════════════════════════════
  // WEEK 12 — Year Consolidation
  // Tags: prefix, suffix, syllable, alternative_spelling, homophone
  // ══════════════════════════════════════════════════════════════════════════

  // Set 1 — consolidation mix
  _qu3('upper','suffix',12,1,'grammar', 'Which sentence uses a subordinating conjunction correctly?', ['Because it was raining, the football match was cancelled.','It was raining the football match was cancelled.','Because, it was raining the match was cancelled.','The match was cancelled because, it was raining.'], 'Because it was raining, the football match was cancelled.', term: 3),
  _qu3('upper','prefix',12,1,'vocabulary', 'What does "bio" mean in the word "biology"?', ['life','earth','time','light'], 'life', term: 3),
  _qu3('upper','syllable',12,1,'grammar', 'How many syllables are in the word "consolidation"?', ['5','4','6','3'], '5', term: 3),
  _qu3('upper','alternative_spelling',12,1,'grammar', 'Identify the correctly spelled word:', ['definitely','definately','definitly','definetly'], 'definitely', term: 3),
  _qu3('upper','homophone',12,1,'grammar', 'Which homophone fits best: "The team was ___ to go to the park."?', ['allowed','aloud','a loud','alloud'], 'allowed', term: 3),
  _qu3('upper','suffix',12,1,'vocabulary', 'What is the "climax" of a narrative?', ['The most exciting and tense part of the story','The introduction','The conclusion','The setting'], 'The most exciting and tense part of the story', term: 3),
  _qu3('upper','prefix',12,1,'grammar', 'Which prefix means "under" or "below"?', ['sub- (submarine)','super- (superman)','trans- (transport)','inter- (international)'], 'sub- (submarine)', term: 3),
  _qu3('upper','syllable',12,1,'grammar', 'Which word has 3 syllables?', ['beautiful','good','happy','magnificent'], 'beautiful', term: 3),
  _qu3('upper','alternative_spelling',12,1,'vocabulary', 'What does "resolute" or "determined" mean?', ['refusing to give up; having a strong purpose','feeling very tired','acting silly','being afraid'], 'refusing to give up; having a strong purpose', term: 3),
  _qu3('upper','homophone',12,1,'grammar', 'Which homophone fits best: "Everyone liked the new rule ___ for John."?', ['except','accept','affect','effect'], 'except', term: 3),

  // Set 2 — consolidation mix
  _qu3('upper','prefix',12,2,'vocabulary', 'What does the root "chron" mean in "chronology"?', ['time','earth','life','sound'], 'time', term: 3),
  _qu3('upper','suffix',12,2,'grammar', 'Which suffix makes a word an adverb?', ['-ly (quickly)','-ment (excitement)','-tion (action)','-ous (dangerous)'], '-ly (quickly)', term: 3),
  _qu3('upper','syllable',12,2,'grammar', 'How many syllables are in "environment"?', ['4','3','5','2'], '4', term: 3),
  _qu3('upper','alternative_spelling',12,2,'grammar', 'Which is the correct spelling?', ['knowledge','nowledge','knowlege','nolledge'], 'knowledge', term: 3),
  _qu3('upper','homophone',12,2,'grammar', 'Which homophone fits best: "She read the book ___ to the class."?', ['aloud','allowed','a loud','alloud'], 'aloud', term: 3),
  _qu3('upper','prefix',12,2,'vocabulary', 'What does "transmit" mean? (trans = across, mit = send)', ['to send across or pass on','to break apart','to look deeply','to carry a heavy load'], 'to send across or pass on', term: 3),
  _qu3('upper','suffix',12,2,'grammar', 'Identify the main (independent) clause: "Even though she was tired, she finished her project."', ['she finished her project','Even though she was tired','she was tired','Even though'], 'she finished her project', term: 3),
  _qu3('upper','syllable',12,2,'vocabulary', 'What does "alliteration" mean?', ['The repetition of the same starting sound in a group of words','Words that rhyme at the end of a line','A comparison using like or as','Giving human traits to animals'], 'The repetition of the same starting sound in a group of words', term: 3),
  _qu3('upper','alternative_spelling',12,2,'grammar', 'Which is the correct spelling of the plural of "country"?', ['countries','countrys','countreys','countrees'], 'countries', term: 3),
  _qu3('upper','homophone',12,2,'grammar', 'Which homophone fits best: "We went ___ the store to buy bread."?', ['to','too','two','tow'], 'to', term: 3),

  // Set 3 — comprehension (NOT read by TTS)
  _qu3('upper','alternative_spelling',12,3,'comprehension',
      'PASSAGE: The end-of-year assembly was a joyous occasion. The headmaster stood at the podium to celebrate the achievements of the Primary 5 students. "You have all shown incredible resilience," he declared, his voice booming across the hall. "From mastering complex spelling rules to writing brilliant essays, your progress is evident." He then called up several students to receive certificates for outstanding academic performance. The students clapped enthusiastically, cheering for their peers. They knew that next year, in Primary 6, the work would be even more challenging, but today was a day to feel proud of how far they had come.\n\nQ: What was the purpose of the end-of-year assembly?',
      ['To celebrate the achievements of the students','To give them more homework','To punish them for bad behavior','To tell them they failed'],
      'To celebrate the achievements of the students', term: 3),
  _qu3('upper','alternative_spelling',12,3,'comprehension',
      'Refer to the passage above.\n\nQ: What did the headmaster say the students had shown?',
      ['Incredible resilience','Bad behavior','A lack of effort','Poor spelling'],
      'Incredible resilience', term: 3),
  _qu3('upper','prefix',12,3,'comprehension',
      'Refer to the passage above.\n\nQ: What did the headmaster mention as examples of their progress?',
      ['Mastering complex spelling rules and writing brilliant essays','Running fast and jumping high','Sleeping in class and playing games','Eating lunch quickly'],
      'Mastering complex spelling rules and writing brilliant essays', term: 3),
  _qu3('upper','syllable',12,3,'comprehension',
      'Refer to the passage above.\n\nQ: What were the certificates awarded for?',
      ['Outstanding academic performance','Winning a football match','Being the tallest in class','Arriving early'],
      'Outstanding academic performance', term: 3),
  _qu3('upper','suffix',12,3,'comprehension',
      'Refer to the passage above.\n\nQ: How did the students react when their peers received certificates?',
      ['They clapped enthusiastically and cheered','They sat in silence','They complained loudly','They went outside to play'],
      'They clapped enthusiastically and cheered', term: 3),
  _qu3('upper','alternative_spelling',12,3,'vocabulary', 'What does "resilience" mean?', ['the ability to recover quickly from difficulties; toughness','the ability to sing well','being very weak','giving up easily'], 'the ability to recover quickly from difficulties; toughness', term: 3),
  _qu3('upper','syllable',12,3,'grammar', 'How many syllables are in "enthusiastically"?', ['6','5','7','4'], '6', term: 3),
  _qu3('upper','prefix',12,3,'grammar', 'Which word from the passage uses a prefix meaning "out" or "beyond"?', ['outstanding','progress','resilience','assembly'], 'outstanding', term: 3),
  _qu3('upper','homophone',12,3,'grammar', 'Which word fits best: "The headmaster stood at the ___." (Another word for podium)', ['lectern','lecture','lesson','listen'], 'lectern', term: 3), // Just a vocab stretch.
  _qu3('upper','alternative_spelling',12,3,'vocabulary', 'What does "evident" mean?', ['plain or obvious; clearly seen or understood','hidden or secret','very confused','difficult to read'], 'plain or obvious; clearly seen or understood', term: 3),

  // ══════════════════════════════════════════════════════════════════════════
  // WEEK 13 — End-of-Year Assessment
  // Tags: prefix, suffix, syllable, alternative_spelling, homophone
  // ══════════════════════════════════════════════════════════════════════════

  // Set 1 — assessment mix
  _qu3('upper','alternative_spelling',13,1,'grammar', 'Which sentence contains a spelling error?', ['The boy was truely sorry for his mistake.','The boy was truly sorry for his mistake.','He showed great courage.','She gave a brilliant answer.'], 'The boy was truely sorry for his mistake.', term: 3),
  _qu3('upper','prefix',13,1,'vocabulary', 'What does the root "geo" mean in "geography"?', ['earth','time','life','sound'], 'earth', term: 3),
  _qu3('upper','suffix',13,1,'grammar', 'Which of these is a correct counter-argument phrase for an essay?', ['Some people might argue that...','I think that...','In conclusion...','For example...'], 'Some people might argue that...', term: 3),
  _qu3('upper','syllable',13,1,'grammar', 'Which word correctly divides "important" into syllables?', ['im-por-tant','imp-ort-ant','impo-rtant','i-mpor-tant'], 'im-por-tant', term: 3),
  _qu3('upper','homophone',13,1,'grammar', 'Which sentence is correct?', ['The dog chased its tail.','The dog chased it\'s tail.','The dog chased its\' tail.','The dog chased it tail.'], 'The dog chased its tail.', term: 3),
  _qu3('upper','alternative_spelling',13,1,'vocabulary', 'What is "imagery" in writing?', ['Descriptive language that appeals to the five senses','A short summary of a book','The main argument of an essay','A type of dictionary'], 'Descriptive language that appeals to the five senses', term: 3),
  _qu3('upper','prefix',13,1,'grammar', 'If you "disagree" with someone, you:', ['do not agree with them','agree with them strongly','agree with them again','agree with them before'], 'do not agree with them', term: 3),
  _qu3('upper','suffix',13,1,'grammar', 'Which suffix is used to make a noun out of the verb "inform"?', ['-ation (information)','-ly (informly)','-ous (informous)','-ment (informment)'], '-ation (information)', term: 3),
  _qu3('upper','syllable',13,1,'grammar', 'How many syllables are in "international"?', ['5','4','6','3'], '5', term: 3),
  _qu3('upper','homophone',13,1,'grammar', 'Which homophone fits best: "Please put the book over ___."?', ['there','their','they\'re','there\'re'], 'there', term: 3),

  // Set 2 — assessment mix
  _qu3('upper','alternative_spelling',13,2,'grammar', 'Which is the correct spelling?', ['weird','wierd','weard','weerd'], 'weird', term: 3),
  _qu3('upper','prefix',13,2,'vocabulary', 'What does "inspect" mean? (in = into, spec = look)', ['to look closely at something','to send something away','to build something new','to listen carefully'], 'to look closely at something', term: 3),
  _qu3('upper','suffix',13,2,'grammar', 'Identify the complex sentence.', ['Since it is raining, we will play inside.','It is raining today.','We will play inside.','It is raining, and we will play inside.'], 'Since it is raining, we will play inside.', term: 3),
  _qu3('upper','syllable',13,2,'grammar', 'How many syllables are in "communication"?', ['5','4','6','3'], '5', term: 3),
  _qu3('upper','homophone',13,2,'grammar', 'Which sentence is correct?', ['They\'re going to the cinema.','There going to the cinema.','Their going to the cinema.','They going to the cinema.'], 'They\'re going to the cinema.', term: 3),
  _qu3('upper','alternative_spelling',13,2,'vocabulary', 'What is the "resolution" of a story?', ['The end where the problem is solved','The beginning','The most exciting part','The main character'], 'The end where the problem is solved', term: 3),
  _qu3('upper','prefix',13,2,'grammar', 'Which prefix means "again"?', ['re- (rewrite)','un- (undo)','pre- (preview)','mis- (misread)'], 're- (rewrite)', term: 3),
  _qu3('upper','suffix',13,2,'grammar', 'Which suffix turns "comfort" into an adjective?', ['-able (comfortable)','-tion (comfortion)','-ly (comfortly)','-ment (comfortment)'], '-able (comfortable)', term: 3),
  _qu3('upper','syllable',13,2,'vocabulary', 'What is a "stanza"?', ['A group of lines in a poem','A paragraph in a story','A type of song','A musical instrument'], 'A group of lines in a poem', term: 3),
  _qu3('upper','homophone',13,2,'grammar', 'Which homophone fits best: "The bicycle has lost ___ pedal."?', ['its','it\'s','its\'','it'], 'its', term: 3),

  // Set 3 — comprehension (NOT read by TTS)
  _qu3('upper','alternative_spelling',13,3,'comprehension',
      'PASSAGE: As the final bell rang, signaling the end of the academic year, the Primary 5 students let out a massive cheer. They had just completed their last end-of-year assessment. It had been a challenging paper, filled with tricky spelling questions, complex reading passages, and a demanding essay topic. However, most students felt confident. They had spent the last three terms building their vocabulary, learning root words, and mastering grammar rules. Mr. Bello stood by the door, smiling as they handed in their papers. "Well done, everyone," he said warmly. "You are now ready for the challenges of Primary 6."\n\nQ: What did the final bell signal?',
      ['The end of the academic year','The start of the exam','Lunchtime','A fire drill'],
      'The end of the academic year', term: 3),
  _qu3('upper','suffix',13,3,'comprehension',
      'Refer to the passage above.\n\nQ: How did the students react when the bell rang?',
      ['They let out a massive cheer','They started crying','They went to sleep','They asked for more homework'],
      'They let out a massive cheer', term: 3),
  _qu3('upper','alternative_spelling',13,3,'comprehension',
      'Refer to the passage above.\n\nQ: What was included in their challenging paper?',
      ['Tricky spelling, complex reading passages, and a demanding essay topic','Only multiple-choice questions','Drawing a picture','Maths problems'],
      'Tricky spelling, complex reading passages, and a demanding essay topic', term: 3),
  _qu3('upper','prefix',13,3,'comprehension',
      'Refer to the passage above.\n\nQ: Why did most students feel confident?',
      ['Because they had spent three terms building vocabulary and mastering grammar','Because the test was very short','Because they guessed all the answers','Because Mr. Bello helped them cheat'],
      'Because they had spent three terms building vocabulary and mastering grammar', term: 3),
  _qu3('upper','syllable',13,3,'comprehension',
      'Refer to the passage above.\n\nQ: What did Mr. Bello tell the students as they handed in their papers?',
      ['"You are now ready for the challenges of Primary 6."','"You all failed."','"Please come back tomorrow."','"Read the book again."'],
      '"You are now ready for the challenges of Primary 6."', term: 3),
  _qu3('upper','alternative_spelling',13,3,'vocabulary', 'What does "demanding" mean in the context of the essay topic?', ['requiring a lot of effort, skill, or thought','very easy and quick','boring and dull','angry and loud'], 'requiring a lot of effort, skill, or thought', term: 3),
  _qu3('upper','suffix',13,3,'grammar', 'What is the past tense of "hand" as used in the passage?', ['handed','handing','hands','hand'], 'handed', term: 3),
  _qu3('upper','prefix',13,3,'vocabulary', 'What does "completed" mean?', ['finished making or doing something','started something new','failed to do something','forgot about something'], 'finished making or doing something', term: 3),
  _qu3('upper','homophone',13,3,'grammar', 'Which homophone fits best: "The students ___ hard all year."?', ['worked','workt','word','world'], 'worked', term: 3),
  _qu3('upper','syllable',13,3,'grammar', 'How many syllables are in the word "academic"?', ['4','3','5','2'], '4', term: 3),

];
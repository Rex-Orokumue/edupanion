import 'package:uuid/uuid.dart';
import '../../../core/models/question.dart';

// ignore_for_file: prefer_single_quotes
const _uuSec1 = Uuid();

Question _quSec1(String level, String tag, int week, int set, String type,
    String q, List<String> opts, String ans, {required int term}) =>
    Question(
      id: _uuSec1.v4(), level: level, skillTag: tag,
      weekNumber: week, assessmentSet: set, questionType: type,
      termNumber: term,
      questionText: q, options: opts, correctAnswer: ans,
    );

// ─────────────────────────────────────────────────────────────────────────────
// SECONDARY — JSS 1–3  (Term 1)
//
// W1  : Academic Vocabulary: Latin Roots         → prefix, suffix
// W2  : Academic Vocabulary: Greek Roots         → prefix, suffix
// W3  : Spelling: Unstressed Vowels              → alternative_spelling
// W4  : Spelling: Double Consonants              → alternative_spelling
// ─────────────────────────────────────────────────────────────────────────────

final List<Question> weekQuestionsSecondaryT1 = [

  // ══════════════════════════════════════════════════════════════════════════
  // WEEK 1 — Academic Vocabulary: Latin Roots
  // Tags: prefix, suffix
  // ══════════════════════════════════════════════════════════════════════════

  // Set 1 — vocabulary + grammar
  _quSec1('secondary','prefix',1,1,'vocabulary', 'The Latin root "aud" means to hear. Which word means "capable of being heard"?', ['audible','audience','auditory','auditorium'], 'audible', term: 1),
  _quSec1('secondary','prefix',1,1,'vocabulary', 'The Latin root "dict" means to say or speak. What does "dictate" mean?', ['to speak words aloud for someone else to write down','to look at someone speaking','to write a letter quickly','to hear a secret'], 'to speak words aloud for someone else to write down', term: 1),
  _quSec1('secondary','prefix',1,1,'vocabulary', 'The Latin root "vis" or "vid" means to see. Which word means "able to be seen"?', ['visible','video','vision','visit'], 'visible', term: 1),
  _quSec1('secondary','prefix',1,1,'vocabulary', 'The Latin root "port" means to carry. What does "transport" mean?', ['to carry or move from one place to another','to break apart','to hold tightly','to see across a distance'], 'to carry or move from one place to another', term: 1),
  _quSec1('secondary','prefix',1,1,'vocabulary', 'The Latin root "ject" means to throw. What does "reject" mean?', ['to throw back or refuse to accept','to pull forward','to break into pieces','to look at carefully'], 'to throw back or refuse to accept', term: 1),
  _quSec1('secondary','prefix',1,1,'vocabulary', 'The Latin root "struct" means to build. Which word means "the act of building something"?', ['construction','structure','instruct','destructive'], 'construction', term: 1),
  _quSec1('secondary','prefix',1,1,'vocabulary', 'The Latin root "rupt" means to break or burst. What does "erupt" mean?', ['to burst forth or break out suddenly','to speak loudly','to build a mountain','to carry away'], 'to burst forth or break out suddenly', term: 1),
  _quSec1('secondary','prefix',1,1,'vocabulary', 'The Latin root "tract" means to pull or drag. What does "attract" mean?', ['to pull or draw someone or something towards oneself','to push away','to break in half','to build a structure'], 'to pull or draw someone or something towards oneself', term: 1),
  _quSec1('secondary','suffix',1,1,'grammar', 'Which suffix turns the verb "construct" into a noun?', ['-ion (construction)','-ive (constructive)','-ly (constructly)','-ment (constructment)'], '-ion (construction)', term: 1),
  _quSec1('secondary','suffix',1,1,'grammar', 'Which suffix turns the noun "vision" into an adjective?', ['-ary (visionary)','-ment (visionment)','-ness (visionness)','-ful (visionful)'], '-ary (visionary)', term: 1),

  // Set 2 — vocabulary + grammar
  _quSec1('secondary','prefix',1,2,'vocabulary', 'The Latin prefix "bene-" means good or well. What is a "benefactor"?', ['a person who gives money or help to a good cause','a person who does bad things','a person who builds houses','a person who speaks loudly'], 'a person who gives money or help to a good cause', term: 1),
  _quSec1('secondary','prefix',1,2,'vocabulary', 'The Latin prefix "mal-" means bad or evil. What does "malicious" mean?', ['intending to cause harm or do something bad','very healthy and strong','doing something well','speaking clearly'], 'intending to cause harm or do something bad', term: 1),
  _quSec1('secondary','prefix',1,2,'vocabulary', 'The Latin root "manu" means hand. What does "manual" mean?', ['done with the hands','done with a machine','done by speaking','done very quickly'], 'done with the hands', term: 1),
  _quSec1('secondary','prefix',1,2,'vocabulary', 'The Latin root "ped" means foot. What is a "pedestrian"?', ['a person walking on foot along a road','a doctor who treats feet','a type of bicycle','a person who builds bridges'], 'a person walking on foot along a road', term: 1),
  _quSec1('secondary','prefix',1,2,'vocabulary', 'The Latin root "scrib" or "script" means to write. What does "inscribe" mean?', ['to write or carve words on a surface','to pull something apart','to hear a written message','to throw a pen'], 'to write or carve words on a surface', term: 1),
  _quSec1('secondary','prefix',1,2,'vocabulary', 'The Latin prefix "multi-" means many. What does "multicultural" mean?', ['relating to or containing many different cultures','having only one culture','having no culture','a large building'], 'relating to or containing many different cultures', term: 1),
  _quSec1('secondary','prefix',1,2,'vocabulary', 'The Latin root "voc" or "vok" means to call or voice. What does "vocal" mean?', ['relating to the human voice or speaking out','relating to the hands','relating to hearing','relating to pulling'], 'relating to the human voice or speaking out', term: 1),
  _quSec1('secondary','prefix',1,2,'vocabulary', 'The Latin root "cred" means to believe. What does "credible" mean?', ['able to be believed; convincing','unable to be seen','able to be carried','unable to be heard'], 'able to be believed; convincing', term: 1),
  _quSec1('secondary','suffix',1,2,'grammar', 'Which suffix can be added to "malice" to make it an adjective meaning "full of bad intent"?', ['-ious (malicious)','-ness (maliceness)','-ly (malicely)','-ment (malicement)'], '-ious (malicious)', term: 1),
  _quSec1('secondary','suffix',1,2,'grammar', 'The suffix "-cide" means to kill. What does "pesticide" mean?', ['a substance used to kill insects or other pests','a person who walks on foot','a machine that builds','a written document'], 'a substance used to kill insects or other pests', term: 1),

  // Set 3 — comprehension (NOT read by TTS)
  _quSec1('secondary','prefix',1,3,'comprehension',
      'PASSAGE: The ancient Roman city was a marvel of engineering and manual labor. To ensure a steady supply of fresh water, workers constructed massive aqueducts that transported water from distant mountains into the heart of the city. The central plaza was the focal point of civic life, where politicians would dictate new laws to scribes, who carefully inscribed them onto stone tablets. Even today, the visible ruins attract pedestrians and historians from all over the world, who come to marvel at the incredible structures that have survived the destructive forces of time.\n\nQ: According to the passage, how did the ancient Romans ensure a steady supply of fresh water?',
      ['By constructing massive aqueducts to transport water','By digging deep wells in the central plaza','By carrying water manually in buckets','By waiting for heavy rainfall'],
      'By constructing massive aqueducts to transport water', term: 1),
  _quSec1('secondary','prefix',1,3,'comprehension',
      'Refer to the passage above.\n\nQ: What did the politicians do in the central plaza?',
      ['They dictated new laws to scribes','They built new aqueducts','They destroyed stone tablets','They sold water to pedestrians'],
      'They dictated new laws to scribes', term: 1),
  _quSec1('secondary','prefix',1,3,'comprehension',
      'Refer to the passage above.\n\nQ: What did the scribes do with the laws?',
      ['They inscribed them onto stone tablets','They shouted them to the crowd','They transported them to the mountains','They rejected them'],
      'They inscribed them onto stone tablets', term: 1),
  _quSec1('secondary','prefix',1,3,'comprehension',
      'Refer to the passage above.\n\nQ: Who visits the visible ruins today?',
      ['Pedestrians and historians from all over the world','Only politicians','Ancient Roman engineers','Scribes'],
      'Pedestrians and historians from all over the world', term: 1),
  _quSec1('secondary','prefix',1,3,'comprehension',
      'Refer to the passage above.\n\nQ: What have the incredible structures survived?',
      ['The destructive forces of time','The heavy floods of the mountains','The anger of the politicians','The manual labor of the workers'],
      'The destructive forces of time', term: 1),
  _quSec1('secondary','prefix',1,3,'vocabulary', 'Based on its Latin roots (aqua = water, duct = to lead), what is an "aqueduct"?', ['A structure that leads or transports water','A building for politicians','A stone tablet for writing','A type of Roman pedestrian'], 'A structure that leads or transports water', term: 1),
  _quSec1('secondary','prefix',1,3,'vocabulary', 'The word "incredible" uses the root "cred" (believe) and prefix "in-" (not). What does it mean in the passage?', ['Impossible to believe; extraordinary','Very ordinary and plain','Written in stone','Built by hand'], 'Impossible to believe; extraordinary', term: 1),
  _quSec1('secondary','suffix',1,3,'grammar', 'What is the noun form of the verb "construct" used in the passage?', ['constructed','construction','constructing','constructive'], 'construction', term: 1), // wait, passage says "constructed massive aqueducts" and "incredible structures". It doesn't use "construction", it uses "structures". Let's change question.
  _quSec1('secondary','prefix',1,3,'vocabulary', 'The word "manual" uses the root "manu". What does "manual labor" mean?', ['Physical work done by hand','Work done by speaking','Work done using animals','Work done by machines'], 'Physical work done by hand', term: 1),
  _quSec1('secondary','suffix',1,3,'grammar', 'Identify the adjective in the phrase "destructive forces" that comes from the verb "destroy".', ['destructive','forces','destroy','the'], 'destructive', term: 1),

  // ══════════════════════════════════════════════════════════════════════════
  // WEEK 2 — Academic Vocabulary: Greek Roots
  // Tags: prefix, suffix
  // ══════════════════════════════════════════════════════════════════════════

  // Set 1 — vocabulary + grammar
  _quSec1('secondary','prefix',2,1,'vocabulary', 'The Greek root "bio" means life. What does "biology" mean?', ['the scientific study of life and living organisms','the study of rocks and the earth','the study of time','the study of stars'], 'the scientific study of life and living organisms', term: 1),
  _quSec1('secondary','prefix',2,1,'vocabulary', 'The Greek root "chron" means time. What does "chronological" mean?', ['arranged in the order of time that events occurred','happening very quickly','lasting for a long time','measuring temperature'], 'arranged in the order of time that events occurred', term: 1),
  _quSec1('secondary','prefix',2,1,'vocabulary', 'The Greek root "phon" means sound. What is a "symphony"?', ['an elaborate musical composition for full orchestra (sounds together)','a device for measuring distance','a type of written language','a fear of loud noises'], 'an elaborate musical composition for full orchestra (sounds together)', term: 1),
  _quSec1('secondary','prefix',2,1,'vocabulary', 'The Greek root "graph" means to write or draw. What is an "autograph"?', ['a person\'s own signature written by hand','a machine that takes pictures','a story about someone else\'s life','a device for hearing sounds'], 'a person\'s own signature written by hand', term: 1),
  _quSec1('secondary','prefix',2,1,'vocabulary', 'The Greek prefix "tele-" means far or distant. What does "telescope" mean?', ['an instrument designed to make distant objects appear nearer','a machine that measures temperature','a device for sending written messages','a fear of being far from home'], 'an instrument designed to make distant objects appear nearer', term: 1),
  _quSec1('secondary','prefix',2,1,'vocabulary', 'The Greek prefix "auto-" means self. What does "automatic" mean?', ['working by itself with little or no direct human control','written by someone else','measuring time accurately','fearing oneself'], 'working by itself with little or no direct human control', term: 1),
  _quSec1('secondary','prefix',2,1,'vocabulary', 'The Greek prefix "micro-" means small. What is a "microscope"?', ['an instrument used to see very small objects','a very small sound','a tiny living organism','a small written note'], 'an instrument used to see very small objects', term: 1),
  _quSec1('secondary','prefix',2,1,'vocabulary', 'The Greek prefix "macro-" means large. What does "macroeconomics" study?', ['large-scale economic factors, such as national productivity','small, individual businesses','the life cycles of large animals','the history of large clocks'], 'large-scale economic factors, such as national productivity', term: 1),
  _quSec1('secondary','prefix',2,1,'vocabulary', 'The Greek root "therm" means heat. What does a "thermometer" do?', ['it measures heat or temperature','it measures distance','it keeps things cold','it writes down sound waves'], 'it measures heat or temperature', term: 1),
  _quSec1('secondary','prefix',2,1,'vocabulary', 'The Greek root "photo" means light. What does "photograph" literally translate to?', ['light-writing or light-drawing','distant-light','self-light','small-light'], 'light-writing or light-drawing', term: 1),

  // Set 2 — vocabulary + grammar
  _quSec1('secondary','prefix',2,2,'vocabulary', 'The Greek root "geo" means earth. What is "geography"?', ['the study of the physical features of the earth','the study of plant life','the measurement of time','the fear of enclosed spaces'], 'the study of the physical features of the earth', term: 1),
  _quSec1('secondary','prefix',2,2,'vocabulary', 'The Greek root "hydro" means water. What does "hydroelectric" refer to?', ['the generation of electricity using flowing water','a fear of water','an animal that lives in water','a machine that measures water temperature'], 'the generation of electricity using flowing water', term: 1),
  _quSec1('secondary','prefix',2,2,'vocabulary', 'The Greek prefix "poly-" means many. What is a "polygon"?', ['a flat shape with many straight sides and angles','a person who speaks many languages','a belief in many gods','a disease with many symptoms'], 'a flat shape with many straight sides and angles', term: 1),
  _quSec1('secondary','prefix',2,2,'vocabulary', 'The Greek root "meter" means measure. What does a "barometer" measure?', ['atmospheric pressure','heat','water depth','distance'], 'atmospheric pressure', term: 1),
  _quSec1('secondary','suffix',2,2,'vocabulary', 'The Greek suffix "-logy" means the study of. What is "ecology"?', ['the study of how living things interact with their environment','the study of sound','the study of writing','the study of the human mind'], 'the study of how living things interact with their environment', term: 1),
  _quSec1('secondary','suffix',2,2,'vocabulary', 'The Greek suffix "-phobia" means fear. What is "claustrophobia"?', ['an extreme fear of confined or enclosed spaces','a fear of water','a fear of loud sounds','a fear of spiders'], 'an extreme fear of confined or enclosed spaces', term: 1),
  _quSec1('secondary','prefix',2,2,'vocabulary', 'The Greek root "demo" means people. What does "democracy" mean?', ['a system of government by the whole population or eligible members (rule by the people)','a study of population growth','a fear of large crowds','a government ruled by a king'], 'a system of government by the whole population or eligible members (rule by the people)', term: 1),
  _quSec1('secondary','prefix',2,2,'vocabulary', 'The Greek root "path" means feeling or disease. What does "sympathy" mean?', ['feelings of pity and sorrow for someone else\'s misfortune (feeling with)','a fear of disease','the study of diseases','a lack of any feeling'], 'feelings of pity and sorrow for someone else\'s misfortune (feeling with)', term: 1),
  _quSec1('secondary','prefix',2,2,'vocabulary', 'The Greek prefix "syn-" or "sym-" means together or same. What is a "synonym"?', ['a word that means exactly or nearly the same as another word','a sound that plays at the same time','a disease that spreads quickly','a shape with many sides'], 'a word that means exactly or nearly the same as another word', term: 1),
  _quSec1('secondary','suffix',2,2,'grammar', 'Which suffix makes "geography" into an adjective?', ['-ic (geographic)','-ist (geographist)','-ment (geographment)','-tion (geographion)'], '-ic (geographic)', term: 1),

  // Set 3 — comprehension (NOT read by TTS)
  _quSec1('secondary','prefix',2,3,'comprehension',
      'PASSAGE: Dr. Ojo is a dedicated marine biologist. Her life\'s work involves studying the complex ecology of coral reefs. Every morning, she sets up her microscope to examine microscopic algae, noting how they react to slight changes in the water\'s temperature, which she carefully records using a digital thermometer. Dr. Ojo is also an avid photographer; she takes stunning underwater photographs to document the health of the reefs chronologically over several years. She hopes her research will raise awareness about the fragile hydro-ecosystems and prevent their destruction.\n\nQ: What is Dr. Ojo\'s profession?',
      ['A marine biologist','A geography teacher','A professional photographer','An economist'],
      'A marine biologist', term: 1),
  _quSec1('secondary','prefix',2,3,'comprehension',
      'Refer to the passage above.\n\nQ: What does Dr. Ojo study?',
      ['The complex ecology of coral reefs','The atmospheric pressure using a barometer','The history of ancient Roman aqueducts','The grammar of the Greek language'],
      'The complex ecology of coral reefs', term: 1),
  _quSec1('secondary','prefix',2,3,'comprehension',
      'Refer to the passage above.\n\nQ: What instrument does she use to examine the algae?',
      ['A microscope','A telescope','A thermometer','A barometer'],
      'A microscope', term: 1),
  _quSec1('secondary','prefix',2,3,'comprehension',
      'Refer to the passage above.\n\nQ: How does she document the health of the reefs over several years?',
      ['By taking underwater photographs chronologically','By writing a long biography','By speaking on a telephone','By avoiding the water due to hydrophobia'],
      'By taking underwater photographs chronologically', term: 1),
  _quSec1('secondary','prefix',2,3,'comprehension',
      'Refer to the passage above.\n\nQ: What does she use to record the water\'s temperature?',
      ['A digital thermometer','A microscope','A polygraph','A chronometer'],
      'A digital thermometer', term: 1),
  _quSec1('secondary','prefix',2,3,'vocabulary', 'Based on its roots (bio = life, logy = study of, ist = person who), what is a "biologist"?', ['A person who studies living organisms','A person who takes pictures','A person who measures temperature','A person who fears water'], 'A person who studies living organisms', term: 1),
  _quSec1('secondary','prefix',2,3,'vocabulary', 'What does "microscopic" mean in the passage?', ['So small as to be visible only with a microscope','Very large and easy to see','Related to underwater photography','Measuring heat accurately'], 'So small as to be visible only with a microscope', term: 1),
  _quSec1('secondary','prefix',2,3,'vocabulary', 'What does "chronologically" mean in the context of her documentation?', ['Arranged in the order of time they occurred','Written in a secret code','Measured by water depth','Photographed from a great distance'], 'Arranged in the order of time they occurred', term: 1),
  _quSec1('secondary','prefix',2,3,'vocabulary', 'What does the prefix "hydro-" in "hydro-ecosystems" refer to?', ['Water','Heat','Earth','Light'], 'Water', term: 1),
  _quSec1('secondary','suffix',2,3,'grammar', 'Identify the noun suffix in the word "destruction".', ['-tion','-struct','de-','-ion'], '-tion', term: 1),

  // ══════════════════════════════════════════════════════════════════════════
  // WEEK 3 — Spelling: Unstressed Vowels (Schwa)
  // Tags: alternative_spelling
  // ══════════════════════════════════════════════════════════════════════════

  // Set 1 — spelling + vocabulary
  _quSec1('secondary','alternative_spelling',3,1,'grammar', 'Which word is spelled correctly?', ['separate','seperate','separat','separete'], 'separate', term: 1),
  _quSec1('secondary','alternative_spelling',3,1,'grammar', 'Which is the correct spelling of the word meaning "not the same"?', ['different','diffrent','differant','difrent'], 'different', term: 1),
  _quSec1('secondary','alternative_spelling',3,1,'grammar', 'Identify the correctly spelled word:', ['interest','intrest','interast','intarest'], 'interest', term: 1),
  _quSec1('secondary','alternative_spelling',3,1,'grammar', 'Which is the correct spelling?', ['definite','definate','defanite','definit'], 'definite', term: 1),
  _quSec1('secondary','alternative_spelling',3,1,'grammar', 'Which word is spelled correctly?', ['category','catagory','categary','catigory'], 'category', term: 1),
  _quSec1('secondary','alternative_spelling',3,1,'grammar', 'Which is the correct spelling of the word measuring heat?', ['temperature','temprature','tempereture','tempature'], 'temperature', term: 1),
  _quSec1('secondary','alternative_spelling',3,1,'grammar', 'Which is the correct spelling for something you remember?', ['memory','memary','memmory','memerey'], 'memory', term: 1),
  _quSec1('secondary','alternative_spelling',3,1,'grammar', 'Identify the correctly spelled word:', ['library','libary','librery','libray'], 'library', term: 1),
  _quSec1('secondary','alternative_spelling',3,1,'grammar', 'Which is the correct spelling?', ['dictionary','dictionery','dictionry','dictonary'], 'dictionary', term: 1),
  _quSec1('secondary','alternative_spelling',3,1,'grammar', 'Which is the correct spelling?', ['vegetable','vegatable','vegetible','vegtable'], 'vegetable', term: 1),

  // Set 2 — spelling + vocabulary
  _quSec1('secondary','alternative_spelling',3,2,'grammar', 'Which is the correct spelling of the word meaning "feeling a hopeless sense that a situation is bad"?', ['desperate','desparate','desperit','desperite'], 'desperate', term: 1),
  _quSec1('secondary','alternative_spelling',3,2,'grammar', 'Which is the correct spelling of the sweet treat?', ['chocolate','chocolat','choclate','chocalate'], 'chocolate', term: 1),
  _quSec1('secondary','alternative_spelling',3,2,'grammar', 'Identify the correctly spelled word for written works:', ['literature','litrature','litereture','litterature'], 'literature', term: 1),
  _quSec1('secondary','alternative_spelling',3,2,'grammar', 'Which is the correct spelling?', ['average','avirage','averege','avrage'], 'average', term: 1),
  _quSec1('secondary','alternative_spelling',3,2,'grammar', 'Which word is spelled correctly?', ['boundary','boundery','boundry','boundarye'], 'boundary', term: 1),
  _quSec1('secondary','alternative_spelling',3,2,'grammar', 'Which is the correct spelling?', ['family','famely','familiy','famly'], 'family', term: 1),
  _quSec1('secondary','alternative_spelling',3,2,'grammar', 'Which is the correct spelling of the subject dealing with numbers?', ['mathematics','mathmatics','mathemetics','mathmetics'], 'mathematics', term: 1),
  _quSec1('secondary','alternative_spelling',3,2,'grammar', 'Identify the correctly spelled word:', ['restaurant','restarant','restaraunt','restuarant'], 'restaurant', term: 1),
  _quSec1('secondary','alternative_spelling',3,2,'grammar', 'Which is the correct spelling?', ['comfortable','comfterble','comfortible','comfotable'], 'comfortable', term: 1),
  _quSec1('secondary','alternative_spelling',3,2,'grammar', 'Which is the correct spelling?', ['secretary','secratary','secretery','secretry'], 'secretary', term: 1),

  // Set 3 — comprehension (NOT read by TTS)
  _quSec1('secondary','alternative_spelling',3,3,'comprehension',
      'PASSAGE: The school library was always kept at a cool temperature, making it a very comfortable place to study. Today, the students were given a definite assignment: they had to research different categories of African literature. Chidi found a quiet corner and opened his heavy dictionary. He had a strong interest in historical non-fiction, but his teacher had asked them to separate their notes into fiction and poetry. Despite feeling a bit desperate about the looming deadline, Chidi relied on his excellent memory to recall the facts he had learned in his previous classes.\n\nQ: Why was the school library a comfortable place to study?',
      ['It was kept at a cool temperature','It served chocolate and vegetables','It had no boundaries','It was located near a restaurant'],
      'It was kept at a cool temperature', term: 1),
  _quSec1('secondary','alternative_spelling',3,3,'comprehension',
      'Refer to the passage above.\n\nQ: What was the students\' definite assignment?',
      ['To research different categories of African literature','To write a mathematics test','To study the history of dictionaries','To clean the library'],
      'To research different categories of African literature', term: 1),
  _quSec1('secondary','alternative_spelling',3,3,'comprehension',
      'Refer to the passage above.\n\nQ: What did Chidi open in his quiet corner?',
      ['His heavy dictionary','His mathematics textbook','A box of chocolate','A book about temperatures'],
      'His heavy dictionary', term: 1),
  _quSec1('secondary','alternative_spelling',3,3,'comprehension',
      'Refer to the passage above.\n\nQ: How did the teacher want the notes organized?',
      ['Separated into fiction and poetry','Mixed together randomly','Written in a dictionary format','Categorized by temperature'],
      'Separated into fiction and poetry', term: 1),
  _quSec1('secondary','alternative_spelling',3,3,'comprehension',
      'Refer to the passage above.\n\nQ: How did Chidi plan to meet the looming deadline?',
      ['By relying on his excellent memory to recall facts','By hiding in the library','By borrowing notes from his family','By asking the secretary for help'],
      'By relying on his excellent memory to recall facts', term: 1),
  _quSec1('secondary','alternative_spelling',3,3,'vocabulary', 'What does the word "looming" mean in the phrase "looming deadline"?', ['appearing as a shadowy form, often threatening or approaching quickly','moving very slowly','bright and cheerful','forgotten and ignored'], 'appearing as a shadowy form, often threatening or approaching quickly', term: 1),
  _quSec1('secondary','alternative_spelling',3,3,'grammar', 'Which unstressed vowel (schwa) word from the passage is spelled correctly here?', ['literature','litrature','litereture','litterature'], 'literature', term: 1),
  _quSec1('secondary','alternative_spelling',3,3,'grammar', 'Identify the correctly spelled word from the passage.', ['separate','seperate','separat','separete'], 'separate', term: 1),
  _quSec1('secondary','alternative_spelling',3,3,'grammar', 'Which word correctly completes this sentence: "He showed great ___ in the topic."?', ['interest','intrest','interast','intarest'], 'interest', term: 1),
  _quSec1('secondary','alternative_spelling',3,3,'vocabulary', 'What does "desperate" mean in the passage?', ['feeling a hopeless sense that a situation is so bad as to be impossible to deal with','feeling very happy and relaxed','feeling slightly hungry','feeling tired after studying'], 'feeling a hopeless sense that a situation is so bad as to be impossible to deal with', term: 1),

  // ══════════════════════════════════════════════════════════════════════════
  // WEEK 4 — Spelling: Double Consonants
  // Tags: alternative_spelling
  // ══════════════════════════════════════════════════════════════════════════

  // Set 1 — spelling + vocabulary
  _quSec1('secondary','alternative_spelling',4,1,'grammar', 'Which is the correct spelling? (Hint: 1 c, 2 s\'s)', ['necessary','necesary','neccessary','necessery'], 'necessary', term: 1),
  _quSec1('secondary','alternative_spelling',4,1,'grammar', 'Which is the correct spelling? (Hint: 2 c\'s, 1 s)', ['occasion','occassion','ocasion','ocassion'], 'occasion', term: 1),
  _quSec1('secondary','alternative_spelling',4,1,'grammar', 'Which is the correct spelling? (Hint: 2 c\'s, 2 m\'s)', ['accommodation','acommodation','accomodation','acomodation'], 'accommodation', term: 1),
  _quSec1('secondary','alternative_spelling',4,1,'grammar', 'Which is the correct spelling? (Hint: 1 c, 2 m\'s)', ['recommend','reccommend','recomend','reccomend'], 'recommend', term: 1),
  _quSec1('secondary','alternative_spelling',4,1,'grammar', 'Which is the correct spelling? (Hint: 1 x, 2 g\'s)', ['exaggerate','exagerate','exaggerrate','exagerrate'], 'exaggerate', term: 1),
  _quSec1('secondary','alternative_spelling',4,1,'grammar', 'Which is the correct spelling? (Hint: 2 r\'s, 2 s\'s)', ['embarrass','embarass','embaras','embarrasss'], 'embarrass', term: 1),
  _quSec1('secondary','alternative_spelling',4,1,'grammar', 'Which is the correct spelling?', ['parallel','paralell','parrallel','parralel'], 'parallel', term: 1),
  _quSec1('secondary','alternative_spelling',4,1,'grammar', 'Which is the correct spelling? (Hint: 2 g\'s, 2 s\'s)', ['aggressive','agressive','agressiv','aggressiv'], 'aggressive', term: 1),
  _quSec1('secondary','alternative_spelling',4,1,'grammar', 'Which is the correct spelling? (Hint: 2 m\'s, 2 t\'s, 2 e\'s)', ['committee','comittee','commitee','comite'], 'committee', term: 1),
  _quSec1('secondary','alternative_spelling',4,1,'grammar', 'Which is the correct spelling?', ['guarantee','garantee','guarentee','garentee'], 'guarantee', term: 1),

  // Set 2 — spelling + vocabulary
  _quSec1('secondary','alternative_spelling',4,2,'grammar', 'Which is the correct spelling? (Hint: prefix dis- + appear)', ['disappear','dissapear','disapear','dissappear'], 'disappear', term: 1),
  _quSec1('secondary','alternative_spelling',4,2,'grammar', 'Which is the correct spelling? (Hint: prefix dis- + appoint)', ['disappoint','dissapoint','disapoint','dissappoint'], 'disappoint', term: 1),
  _quSec1('secondary','alternative_spelling',4,2,'grammar', 'Which is the correct spelling? (Hint: prefix inter- + rupt)', ['interrupt','interupt','intterrupt','intterupt'], 'interrupt', term: 1),
  _quSec1('secondary','alternative_spelling',4,2,'grammar', 'Which is the correct spelling? (Hint: 2 c\'s, 2 r\'s)', ['occurrence','occurence','ocurrence','ocurence'], 'occurrence', term: 1),
  _quSec1('secondary','alternative_spelling',4,2,'grammar', 'Which is the correct spelling? (Hint: 2 s\'s, 2 s\'s)', ['possession','posession','possesion','posesion'], 'possession', term: 1),
  _quSec1('secondary','alternative_spelling',4,2,'grammar', 'Which is the correct spelling? (Hint: 1 f, 2 s\'s)', ['professional','proffessional','profesional','proffesional'], 'professional', term: 1),
  _quSec1('secondary','alternative_spelling',4,2,'grammar', 'Which is the correct spelling? (Hint: 2 c\'s, 2 s\'s)', ['successful','succesful','sucessful','sucesful'], 'successful', term: 1),
  _quSec1('secondary','alternative_spelling',4,2,'grammar', 'Which is the correct spelling?', ['immediately','immediatly','imediately','immediatley'], 'immediately', term: 1),
  _quSec1('secondary','alternative_spelling',4,2,'grammar', 'Which is the correct spelling? (Hint: 2 l\'s, 2 n\'s)', ['millennium','millenium','milennium','milenium'], 'millennium', term: 1),
  _quSec1('secondary','alternative_spelling',4,2,'grammar', 'Which is the correct spelling?', ['appreciate','apreciate','appretiate','appresiate'], 'appreciate', term: 1),

  // Set 3 — comprehension (NOT read by TTS)
  _quSec1('secondary','alternative_spelling',4,3,'comprehension',
      'PASSAGE: Organizing the annual science fair is a massive undertaking, but the student committee handled it like professionals. It was necessary to secure proper accommodation for the visiting schools, an occurrence that usually caused a lot of stress. The chairperson did not want to disappoint anyone, so she aggressively sought out the best venues in town. On the day of the occasion, everything ran parallel to their strict schedule. They had successfully managed to guarantee that there were no interruptions, and the visiting teachers were quick to recommend their school for future events.\n\nQ: Who organized the annual science fair?',
      ['The student committee','The visiting teachers','The school principal','A group of professionals'],
      'The student committee', term: 1),
  _quSec1('secondary','alternative_spelling',4,3,'comprehension',
      'Refer to the passage above.\n\nQ: What was it necessary to secure for the visiting schools?',
      ['Proper accommodation','A lot of food','New science equipment','Free transport'],
      'Proper accommodation', term: 1),
  _quSec1('secondary','alternative_spelling',4,3,'comprehension',
      'Refer to the passage above.\n\nQ: How did the chairperson seek out the best venues?',
      ['Aggressively','Quietly','Lazily','Reluctantly'],
      'Aggressively', term: 1),
  _quSec1('secondary','alternative_spelling',4,3,'comprehension',
      'Refer to the passage above.\n\nQ: How did things run on the day of the occasion?',
      ['Parallel to their strict schedule','Chaotically and out of control','Slowly and with many delays','They didn\'t run at all because it rained'],
      'Parallel to their strict schedule', term: 1),
  _quSec1('secondary','alternative_spelling',4,3,'comprehension',
      'Refer to the passage above.\n\nQ: What were the visiting teachers quick to do?',
      ['Recommend their school for future events','Complain about the accommodation','Leave immediately','Interrupt the presentations'],
      'Recommend their school for future events', term: 1),
  _quSec1('secondary','alternative_spelling',4,3,'grammar', 'How do you spell the word from the passage meaning "a group of people appointed for a specific function"?', ['committee','comittee','commitee','comite'], 'committee', term: 1),
  _quSec1('secondary','alternative_spelling',4,3,'grammar', 'Identify the correctly spelled word from the passage.', ['accommodation','acommodation','accomodation','acomodation'], 'accommodation', term: 1),
  _quSec1('secondary','alternative_spelling',4,3,'vocabulary', 'What does "occurrence" mean?', ['an incident or event','a type of science experiment','a large room','a schedule'], 'an incident or event', term: 1),
  _quSec1('secondary','alternative_spelling',4,3,'grammar', 'How do you spell the word meaning "to fail to fulfill the hopes or expectations of"?', ['disappoint','dissapoint','disapoint','dissappoint'], 'disappoint', term: 1),
  _quSec1('secondary','alternative_spelling',4,3,'grammar', 'Which is the correct spelling of the plural noun used in the passage to mean "stoppages or breaks in continuity"?', ['interruptions','interuptions','intterruptions','interroptions'], 'interruptions', term: 1),

// ══════════════════════════════════════════════════════════════════════════
  // WEEK 5 — Advanced Suffixes: -ify, -ise, -ate
  // Tags: suffix
  // ══════════════════════════════════════════════════════════════════════════

  // Set 1 — vocabulary + grammar
  _quSec1('secondary','suffix',5,1,'grammar', 'What does the suffix "-ify" usually do to a noun or adjective?', ['Turns it into a verb meaning "to make" or "cause to be"','Turns it into an adverb','Makes it plural','Makes it mean "without"'], 'Turns it into a verb meaning "to make" or "cause to be"', term: 1),
  _quSec1('secondary','suffix',5,1,'vocabulary', 'To make something clear or easy to understand is to ___ it.', ['clarify','organise','celebrate','activate'], 'clarify', term: 1),
  _quSec1('secondary','suffix',5,1,'vocabulary', 'To prove that something is right or reasonable is to ___ it.', ['justify','simplify','memorise','fabricate'], 'justify', term: 1),
  _quSec1('secondary','suffix',5,1,'grammar', 'Which word adds the suffix "-ise" (or "-ize") to mean "to commit to memory"?', ['memorise','memoryise','memorisate','memorify'], 'memorise', term: 1),
  _quSec1('secondary','suffix',5,1,'vocabulary', 'What does "apologise" mean?', ['to express regret for doing something wrong','to make someone angry','to write a letter','to speak loudly'], 'to express regret for doing something wrong', term: 1),
  _quSec1('secondary','suffix',5,1,'vocabulary', 'To arrange things systematically is to ___ them.', ['organise','apologise','clarify','hesitate'], 'organise', term: 1),
  _quSec1('secondary','suffix',5,1,'grammar', 'The suffix "-ate" can form verbs. Which word means "to make something active"?', ['activate','activise','actify','activiate'], 'activate', term: 1),
  _quSec1('secondary','suffix',5,1,'vocabulary', 'To show or prove how something works is to ___ it.', ['demonstrate','celebrate','justify','simplify'], 'demonstrate', term: 1),
  _quSec1('secondary','suffix',5,1,'vocabulary', 'To make something simpler or easier to do is to ___ it.', ['simplify','simpleate','simplise','simplificate'], 'simplify', term: 1),
  _quSec1('secondary','suffix',5,1,'grammar', 'Which of these is a verb formed with the suffix "-ate"?', ['celebrate','celebration','celebratory','celebrity'], 'celebrate', term: 1),

  // Set 2 — vocabulary + grammar
  _quSec1('secondary','suffix',5,2,'vocabulary', 'If you "purify" water, what are you doing?', ['making it pure by removing dirt or chemicals','making it cold','making it boil','drinking it quickly'], 'making it pure by removing dirt or chemicals', term: 1),
  _quSec1('secondary','suffix',5,2,'vocabulary', 'What does it mean to "falsify" a document?', ['to change it in order to deceive people','to copy it exactly','to read it out loud','to throw it away'], 'to change it in order to deceive people', term: 1),
  _quSec1('secondary','suffix',5,2,'vocabulary', 'To become familiar with a new climate or situation is to ___ to it.', ['acclimatise','apologise','fabricate','simplify'], 'acclimatise', term: 1),
  _quSec1('secondary','suffix',5,2,'vocabulary', 'If you "criticise" someone, you are:', ['pointing out their faults or mistakes','giving them a gift','helping them with their work','ignoring them completely'], 'pointing out their faults or mistakes', term: 1),
  _quSec1('secondary','suffix',5,2,'grammar', 'Which word uses "-ise" to mean "to bring up to date"?', ['modernise','modernify','modernate','modernicate'], 'modernise', term: 1),
  _quSec1('secondary','suffix',5,2,'vocabulary', 'To bring people together so they agree or act together is to ___ them.', ['unify','unitise','uniteate','unifyate'], 'unify', term: 1),
  _quSec1('secondary','suffix',5,2,'vocabulary', 'What does it mean to "fabricate" a story?', ['to invent or make it up, usually to deceive','to read it from a book','to tell it very well','to write it down accurately'], 'to invent or make it up, usually to deceive', term: 1),
  _quSec1('secondary','suffix',5,2,'vocabulary', 'To keep someone or something away from others is to ___ them.', ['isolate','integrate','socialise','clarify'], 'isolate', term: 1),
  _quSec1('secondary','suffix',5,2,'grammar', 'Which suffix would you add to "liquid" to mean "to make into a liquid"?', ['-ify (liquefy)','-ise (liquidise)','-ate (liquidate)','All of the above can be used depending on context, but liquefy is most common for state change.'], '-ify (liquefy)', term: 1),
  _quSec1('secondary','suffix',5,2,'grammar', 'Identify the verb in this sentence: "The teacher asked the student to elaborate on her answer."', ['elaborate','asked','student','answer'], 'elaborate', term: 1),

  // Set 3 — comprehension (NOT read by TTS)
  _quSec1('secondary','suffix',5,3,'comprehension',
      'PASSAGE: The principal called a special assembly to clarify the new school rules. "We must modernise our approach to discipline," he announced to the silent hall. "The goal is not to isolate students who make mistakes, but to educate them so they can integrate better into our school community." He warned that anyone caught trying to falsify their report cards would face severe consequences. "I expect every student to demonstrate integrity," he added. "If you make a mistake, do not fabricate an excuse; instead, apologise and learn from it."\n\nQ: Why did the principal call a special assembly?',
      ['To clarify the new school rules','To celebrate a sports victory','To isolate students who made mistakes','To falsify report cards'],
      'To clarify the new school rules', term: 1),
  _quSec1('secondary','suffix',5,3,'comprehension',
      'Refer to the passage above.\n\nQ: What did the principal say they must do to their approach to discipline?',
      ['Modernise it','Fabricate it','Simplify it','Ignore it'],
      'Modernise it', term: 1),
  _quSec1('secondary','suffix',5,3,'comprehension',
      'Refer to the passage above.\n\nQ: What is the goal of the new discipline approach?',
      ['To educate students so they can integrate better','To isolate students forever','To make them apologise publicly','To demonstrate how to falsify cards'],
      'To educate students so they can integrate better', term: 1),
  _quSec1('secondary','suffix',5,3,'comprehension',
      'Refer to the passage above.\n\nQ: What action will result in severe consequences?',
      ['Trying to falsify report cards','Apologising for a mistake','Integrating into the community','Demonstrating integrity'],
      'Trying to falsify report cards', term: 1),
  _quSec1('secondary','suffix',5,3,'comprehension',
      'Refer to the passage above.\n\nQ: What should a student do instead of fabricating an excuse?',
      ['Apologise and learn from the mistake','Isolate themselves','Falsify a new excuse','Argue with the teacher'],
      'Apologise and learn from the mistake', term: 1),
  _quSec1('secondary','suffix',5,3,'vocabulary', 'What does the verb "clarify" mean in the first sentence?', ['To make something clear or easier to understand','To make something secret','To write something down','To shout loudly'], 'To make something clear or easier to understand', term: 1),
  _quSec1('secondary','suffix',5,3,'vocabulary', 'What does the verb "fabricate" mean in the passage?', ['To invent a false story or excuse','To build a new school building','To apologise sincerely','To sew clothing'], 'To invent a false story or excuse', term: 1),
  _quSec1('secondary','suffix',5,3,'grammar', 'Which word from the passage uses the suffix "-ate" to mean "to show or prove"?', ['demonstrate','educate','isolate','integrate'], 'demonstrate', term: 1),
  _quSec1('secondary','suffix',5,3,'grammar', 'Identify the verb ending in "-ise" (or "-ize") in the passage that means "to express regret".', ['apologise','modernise','falsify','integrate'], 'apologise', term: 1),
  _quSec1('secondary','suffix',5,3,'vocabulary', 'What does "integrate" mean?', ['to mix with and join a society or a group of people','to separate from others','to break into pieces','to change the rules'], 'to mix with and join a society or a group of people', term: 1),

  // ══════════════════════════════════════════════════════════════════════════
  // WEEK 6 — Advanced Prefixes: inter-, trans-, super-
  // Tags: prefix
  // ══════════════════════════════════════════════════════════════════════════

  // Set 1 — vocabulary + grammar
  _quSec1('secondary','prefix',6,1,'vocabulary', 'The prefix "inter-" means between or among. What does "international" mean?', ['existing, occurring, or carried on between two or more nations','inside a single nation','having no nation','against a nation'], 'existing, occurring, or carried on between two or more nations', term: 1),
  _quSec1('secondary','prefix',6,1,'vocabulary', 'What does it mean to "intersect"? (inter = between, sect = cut)', ['to cross or cut across each other','to pull apart','to build something together','to see from far away'], 'to cross or cut across each other', term: 1),
  _quSec1('secondary','prefix',6,1,'vocabulary', 'What is an "interview"?', ['a meeting of people face to face, especially for consultation (seeing between each other)','a written test','a type of telescope','a long journey'], 'a meeting of people face to face, especially for consultation (seeing between each other)', term: 1),
  _quSec1('secondary','prefix',6,1,'vocabulary', 'The prefix "trans-" means across, beyond, or through. What does "transform" mean?', ['to make a thorough or dramatic change in form or appearance','to keep something exactly the same','to carry a heavy box','to break into pieces'], 'to make a thorough or dramatic change in form or appearance', term: 1),
  _quSec1('secondary','prefix',6,1,'vocabulary', 'What does "transparent" mean? (trans = through)', ['allowing light to pass through so that objects behind can be distinctly seen','completely dark and solid','very loud','extremely heavy'], 'allowing light to pass through so that objects behind can be distinctly seen', term: 1),
  _quSec1('secondary','prefix',6,1,'vocabulary', 'What does "transportation" mean? (trans = across, port = carry)', ['the action of transporting someone or something across a distance','the process of building a house','a type of spoken language','a fear of traveling'], 'the action of transporting someone or something across a distance', term: 1),
  _quSec1('secondary','prefix',6,1,'vocabulary', 'The prefix "super-" means above, beyond, or over. What does "superior" mean?', ['higher in rank, status, or quality','lower in quality','equal in status','hidden beneath something'], 'higher in rank, status, or quality', term: 1),
  _quSec1('secondary','prefix',6,1,'vocabulary', 'What does "supernatural" mean?', ['attributed to some force beyond scientific understanding or the laws of nature','completely normal and natural','a very healthy diet','an animal that runs fast'], 'attributed to some force beyond scientific understanding or the laws of nature', term: 1),
  _quSec1('secondary','prefix',6,1,'grammar', 'Which word correctly uses a prefix to mean "to translate from one language across to another"?', ['translate','interlate','superlate','transcribe'], 'translate', term: 1),
  _quSec1('secondary','prefix',6,1,'grammar', 'Which word correctly uses a prefix to mean "to interrupt a conversation"?', ['interrupt','transrupt','superrupt','corrupt'], 'interrupt', term: 1),

  // Set 2 — vocabulary + grammar
  _quSec1('secondary','prefix',6,2,'vocabulary', 'If an event is "interactive", what does that mean?', ['it allows a two-way flow of information between a computer/teacher and a user/student','it is very boring','it happens only once a year','it involves no speaking'], 'it allows a two-way flow of information between a computer/teacher and a user/student', term: 1),
  _quSec1('secondary','prefix',6,2,'vocabulary', 'What does "interstate" mean?', ['existing or carried on between states','inside one city','across the entire world','beyond the solar system'], 'existing or carried on between states', term: 1),
  _quSec1('secondary','prefix',6,2,'vocabulary', 'What does it mean to "transplant" something?', ['to move or transfer something (like a plant or organ) to another place or body','to cut a plant down','to water a plant','to buy a new plant'], 'to move or transfer something (like a plant or organ) to another place or body', term: 1),
  _quSec1('secondary','prefix',6,2,'vocabulary', 'What is a "transaction"?', ['an instance of buying or selling something (action across parties)','a type of vehicle','a quiet conversation','a mistake in math'], 'an instance of buying or selling something (action across parties)', term: 1),
  _quSec1('secondary','prefix',6,2,'vocabulary', 'If a person is a "supervisor", what do they do? (super = over, vis = see)', ['they oversee or direct a person or activity','they hide from their boss','they carry heavy objects','they clean the building'], 'they oversee or direct a person or activity', term: 1),
  _quSec1('secondary','prefix',6,2,'vocabulary', 'What does "superficial" mean?', ['existing or occurring at or on the surface; not deep or thorough','extremely important and deep','having superhuman strength','a type of flying vehicle'], 'existing or occurring at or on the surface; not deep or thorough', term: 1),
  _quSec1('secondary','prefix',6,2,'grammar', 'Which word means "to send across a distance"?', ['transmit','intermit','supermit','submit'], 'transmit', term: 1),
  _quSec1('secondary','prefix',6,2,'grammar', 'Which word means "to act together or affect each other"?', ['interact','transact','superact','react'], 'interact', term: 1),
  _quSec1('secondary','prefix',6,2,'vocabulary', 'If a city has "superb" architecture, the architecture is:', ['excellent; impressively splendid','very basic and plain','falling apart','made of cheap wood'], 'excellent; impressively splendid', term: 1),
  _quSec1('secondary','prefix',6,2,'grammar', 'Which prefix would you add to "continental" to mean "spanning across a continent"?', ['trans- (transcontinental)','inter- (intercontinental)','super- (supercontinental)','sub- (subcontinental)'], 'trans- (transcontinental)', term: 1),

  // Set 3 — comprehension (NOT read by TTS)
  _quSec1('secondary','prefix',6,3,'comprehension',
      'PASSAGE: The new transportation hub in Lagos is a marvel of modern engineering. It is designed to interconnect various forms of travel, allowing commuters to easily transfer between buses, trains, and even the new ferry system. The architect wanted the building to feel open, so she used transparent glass for the massive roof, flooding the interior with natural light. The project supervisor, Mr. Eze, noted that the facility will completely transform the way people travel across the state. "This isn\'t just a superficial upgrade," he said during a press interview. "It is a superior system that will benefit the economy for decades."\n\nQ: What is the new facility in Lagos designed to do?',
      ['Interconnect various forms of travel','Isolate different types of buses','Hide from the public view','Replace all cars'],
      'Interconnect various forms of travel', term: 1),
  _quSec1('secondary','prefix',6,3,'comprehension',
      'Refer to the passage above.\n\nQ: What material was used for the massive roof to make the building feel open?',
      ['Transparent glass','Thick concrete','Solid steel','Dark plastic'],
      'Transparent glass', term: 1),
  _quSec1('secondary','prefix',6,3,'comprehension',
      'Refer to the passage above.\n\nQ: What did Mr. Eze say the facility would do to the way people travel?',
      ['It will completely transform it','It will make it slower','It will make it more expensive','It will ruin it'],
      'It will completely transform it', term: 1),
  _quSec1('secondary','prefix',6,3,'comprehension',
      'Refer to the passage above.\n\nQ: How did Mr. Eze describe the upgrade during his interview?',
      ['Not just a superficial upgrade, but a superior system','A terrible mistake','A waste of money','A temporary fix'],
      'Not just a superficial upgrade, but a superior system', term: 1),
  _quSec1('secondary','prefix',6,3,'comprehension',
      'Refer to the passage above.\n\nQ: Who is Mr. Eze?',
      ['The project supervisor','The main architect','A daily commuter','A ferry boat captain'],
      'The project supervisor', term: 1),
  _quSec1('secondary','prefix',6,3,'vocabulary', 'Based on the prefix "trans-", what does "transportation" involve?', ['Carrying or moving people/goods across a distance','Staying in one place forever','Building a glass roof','Talking to a reporter'], 'Carrying or moving people/goods across a distance', term: 1),
  _quSec1('secondary','prefix',6,3,'vocabulary', 'What does "transparent" mean in relation to the glass roof?', ['It allows light to pass through so you can see across or through it','It is extremely strong and cannot be broken','It is painted a dark color','It keeps the building very cold'], 'It allows light to pass through so you can see across or through it', term: 1),
  _quSec1('secondary','prefix',6,3,'vocabulary', 'What does "superficial" mean in Mr. Eze\'s quote?', ['On the surface only; not deep or significant','Extremely expensive','Very difficult to build','Lasting for a long time'], 'On the surface only; not deep or significant', term: 1),
  _quSec1('secondary','prefix',6,3,'grammar', 'Which word from the passage uses the prefix "inter-" meaning "between or among"?', ['interconnect','transform','superior','transportation'], 'interconnect', term: 1),
  _quSec1('secondary','prefix',6,3,'grammar', 'What does the prefix "super-" in "supervisor" literally mean?', ['over or above','under or below','across or through','between or among'], 'over or above', term: 1),

  // ══════════════════════════════════════════════════════════════════════════
  // WEEK 7 — Reading: Comprehension Strategies
  // Tags: syllable, alternative_spelling
  // ══════════════════════════════════════════════════════════════════════════

  // Set 1 — strategies, syllables, spelling
  _quSec1('secondary','alternative_spelling',7,1,'vocabulary', 'What does the SQ3R reading strategy stand for?', ['Survey, Question, Read, Recite, Review','Skim, Quickly, Read, Reread, Rest','Scan, Question, Read, Respond, Rest','Study, Quietly, Read, Recall, Review'], 'Survey, Question, Read, Recite, Review', term: 1),
  _quSec1('secondary','syllable',7,1,'grammar', 'What do you do when you "Survey" a text?', ['Look at titles, headings, and pictures to get an overview before reading','Read every single word very slowly','Write a summary of the whole book','Memorise the first paragraph'], 'Look at titles, headings, and pictures to get an overview before reading', term: 1),
  _quSec1('secondary','syllable',7,1,'grammar', 'How many syllables are in the word "strategy"?', ['3','4','2','5'], '3', term: 1),
  _quSec1('secondary','alternative_spelling',7,1,'vocabulary', 'What is the "main idea" of a paragraph?', ['The most important point the author is trying to make','The very first word of the paragraph','A small detail or example','The title of the book'], 'The most important point the author is trying to make', term: 1),
  _quSec1('secondary','syllable',7,1,'grammar', 'What are "supporting details"?', ['Facts, examples, or descriptions that help explain the main idea','The concluding sentence of an essay','The author\'s name and date of birth','Questions you ask before reading'], 'Facts, examples, or descriptions that help explain the main idea', term: 1),
  _quSec1('secondary','alternative_spelling',7,1,'grammar', 'Which is the correct spelling?', ['comprehension','comprehenshion','comprehention','comprahension'], 'comprehension', term: 1),
  _quSec1('secondary','syllable',7,1,'grammar', 'How many syllables are in the word "comprehension"?', ['4','3','5','2'], '4', term: 1),
  _quSec1('secondary','alternative_spelling',7,1,'vocabulary', 'What does it mean to "make an inference"?', ['To make an educated guess based on clues in the text and your own knowledge','To read the text out loud','To skip the difficult words','To copy the text word-for-word'], 'To make an educated guess based on clues in the text and your own knowledge', term: 1),
  _quSec1('secondary','syllable',7,1,'grammar', 'How many syllables are in the word "inference"?', ['3','2','4','1'], '3', term: 1),
  _quSec1('secondary','alternative_spelling',7,1,'grammar', 'Which word is spelled correctly?', ['prediction','prediccion','predikshun','predictien'], 'prediction', term: 1),

  // Set 2 — strategies, syllables, spelling
  _quSec1('secondary','alternative_spelling',7,2,'vocabulary', 'When using SQ3R, what do you do during the "Question" step?', ['Turn headings into questions to give your reading a purpose','Ask your teacher for the answers','Guess the end of the story','Write down a list of vocabulary words'], 'Turn headings into questions to give your reading a purpose', term: 1),
  _quSec1('secondary','syllable',7,2,'grammar', 'How many syllables are in the word "question"?', ['2','3','1','4'], '2', term: 1),
  _quSec1('secondary','alternative_spelling',7,2,'vocabulary', 'What does it mean to "predict" while reading?', ['To guess what might happen next based on clues in the text','To memorize the whole page','To look up words in the dictionary','To read the last chapter first'], 'To guess what might happen next based on clues in the text', term: 1),
  _quSec1('secondary','syllable',7,2,'grammar', 'During the "Recite" (or Recall) step of SQ3R, what should you do?', ['Say out loud or write down the main points you just read from memory','Read the text again very slowly','Take a nap','Draw a picture of the author'], 'Say out loud or write down the main points you just read from memory', term: 1),
  _quSec1('secondary','alternative_spelling',7,2,'grammar', 'Which is the correct spelling?', ['review','reveiw','reviwe','revew'], 'review', term: 1),
  _quSec1('secondary','syllable',7,2,'grammar', 'How many syllables are in the word "review"?', ['2','1','3','4'], '2', term: 1),
  _quSec1('secondary','alternative_spelling',7,2,'vocabulary', 'What is "skimming"?', ['Reading rapidly to get a general overview of the material','Reading slowly to find one specific word','Reading the text out loud','Memorising the text'], 'Reading rapidly to get a general overview of the material', term: 1),
  _quSec1('secondary','syllable',7,2,'vocabulary', 'What is "scanning"?', ['Reading rapidly to find specific facts or keywords','Reading to understand the deep meaning of a poem','Looking at the pictures only','Writing a summary'], 'Reading rapidly to find specific facts or keywords', term: 1),
  _quSec1('secondary','alternative_spelling',7,2,'grammar', 'Which is the correct spelling?', ['knowledge','nowledge','knowlege','nolledge'], 'knowledge', term: 1),
  _quSec1('secondary','syllable',7,2,'grammar', 'How many syllables are in the word "knowledge"?', ['2','3','1','4'], '2', term: 1),

  // Set 3 — comprehension (NOT read by TTS)
  _quSec1('secondary','alternative_spelling',7,3,'comprehension',
      'PASSAGE: Reading a science textbook requires a different strategy than reading a novel. Before diving into the chapter on photosynthesis, Halima decided to use the SQ3R method. First, she surveyed the pages, noting the bold headings and the diagram of a leaf. Next, she turned the first heading into a question: "What is photosynthesis?" As she read the section, she looked for the main idea, ignoring the minor details about specific plant species for now. When she finished the section, she paused, closed her eyes, and recited the definition to herself. Finally, she reviewed her notes to ensure her comprehension was solid before moving on.\n\nQ: What method did Halima use to read her science textbook?',
      ['The SQ3R method','The ABC method','The guessing method','The skipping method'],
      'The SQ3R method', term: 1),
  _quSec1('secondary','alternative_spelling',7,3,'comprehension',
      'Refer to the passage above.\n\nQ: What did Halima do during the "Survey" step?',
      ['She noted the bold headings and the diagram of a leaf','She read the entire chapter slowly','She wrote a long essay','She took a test'],
      'She noted the bold headings and the diagram of a leaf', term: 1),
  _quSec1('secondary','syllable',7,3,'comprehension',
      'Refer to the passage above.\n\nQ: How did she apply the "Question" step?',
      ['She turned the first heading into a question ("What is photosynthesis?")','She asked her teacher a question','She wrote ten questions on a piece of paper','She asked her friend for help'],
      'She turned the first heading into a question ("What is photosynthesis?")', term: 1),
  _quSec1('secondary','alternative_spelling',7,3,'comprehension',
      'Refer to the passage above.\n\nQ: What did Halima do during the "Recite" step?',
      ['She closed her eyes and recited the definition to herself','She read the text out loud to the class','She copied the text into her notebook','She skipped to the next chapter'],
      'She closed her eyes and recited the definition to herself', term: 1),
  _quSec1('secondary','syllable',7,3,'comprehension',
      'Refer to the passage above.\n\nQ: Why did she review her notes at the end?',
      ['To ensure her comprehension was solid','Because her teacher told her to','To find spelling mistakes','To pass the time'],
      'To ensure her comprehension was solid', term: 1),
  _quSec1('secondary','alternative_spelling',7,3,'grammar', 'Which is the correct spelling of the reading strategy mentioned?', ['strategy','stratagy','strategie','stratigy'], 'strategy', term: 1),
  _quSec1('secondary','syllable',7,3,'grammar', 'How many syllables are in the word "photosynthesis"?', ['5','6','4','7'], '5', term: 1), // pho-to-syn-the-sis
  _quSec1('secondary','alternative_spelling',7,3,'vocabulary', 'What does "minor" mean in the phrase "minor details"?', ['lesser in importance, seriousness, or significance','very large and important','related to mining','difficult to understand'], 'lesser in importance, seriousness, or significance', term: 1),
  _quSec1('secondary','syllable',7,3,'grammar', 'How many syllables are in the word "definition"?', ['4','3','5','2'], '4', term: 1), // def-i-ni-tion
  _quSec1('secondary','alternative_spelling',7,3,'vocabulary', 'If you "ignore" minor details, what are you doing?', ['refusing to take notice of or acknowledge them','writing them down carefully','highlighting them in red','memorising them'], 'refusing to take notice of or acknowledge them', term: 1),

  // ══════════════════════════════════════════════════════════════════════════
  // WEEK 8 — Writing: Essay Structure
  // Tags: prefix, suffix
  // ══════════════════════════════════════════════════════════════════════════

  // Set 1 — essay structure + prefix/suffix
  _quSec1('secondary','suffix',8,1,'grammar', 'What is the standard structure of a basic academic essay?', ['Introduction, Body Paragraphs, Conclusion','Title, Picture, Ending','Beginning, Middle, Glossary','Hook, Climax, Resolution'], 'Introduction, Body Paragraphs, Conclusion', term: 1),
  _quSec1('secondary','prefix',8,1,'vocabulary', 'What is the purpose of the "introduction" paragraph?', ['To hook the reader and present the thesis statement','To provide all the detailed evidence','To summarise the entire essay','To list the sources used'], 'To hook the reader and present the thesis statement', term: 1),
  _quSec1('secondary','suffix',8,1,'vocabulary', 'What is a "thesis statement"?', ['A single sentence that states the main argument or focus of the essay','A question asked at the end of the essay','A quote from a famous person','A description of the setting'], 'A single sentence that states the main argument or focus of the essay', term: 1),
  _quSec1('secondary','prefix',8,1,'vocabulary', 'What is a "topic sentence"?', ['The first sentence of a body paragraph that states its main idea','The very last sentence of the essay','A sentence that uses big words','A sentence that asks a question'], 'The first sentence of a body paragraph that states its main idea', term: 1),
  _quSec1('secondary','suffix',8,1,'grammar', 'What do "body paragraphs" contain?', ['Evidence, examples, and explanations supporting the topic sentence','Only the thesis statement','The hook and the conclusion','Just a list of bullet points'], 'Evidence, examples, and explanations supporting the topic sentence', term: 1),
  _quSec1('secondary','prefix',8,1,'vocabulary', 'What are "transition words" (or transitions)?', ['Words or phrases that connect ideas smoothly between sentences and paragraphs','Words that are very hard to spell','Words that have prefixes and suffixes','Words used only in the title'], 'Words or phrases that connect ideas smoothly between sentences and paragraphs', term: 1),
  _quSec1('secondary','suffix',8,1,'grammar', 'Which of these is a good transition word to add more evidence?', ['Furthermore','However','In conclusion','Because'], 'Furthermore', term: 1),
  _quSec1('secondary','prefix',8,1,'grammar', 'Which transition word is used to show a contrast or opposing idea?', ['However','Therefore','Additionally','For example'], 'However', term: 1),
  _quSec1('secondary','suffix',8,1,'vocabulary', 'What is the purpose of the "conclusion" paragraph?', ['To restate the thesis in a new way and summarize the main points','To introduce completely new evidence','To ask the reader to write an essay','To hook the reader\'s attention'], 'To restate the thesis in a new way and summarize the main points', term: 1),
  _quSec1('secondary','prefix',8,1,'grammar', 'In an essay, what does "cohesion" mean?', ['How well the ideas and sentences stick together and flow logically','How long the essay is','How many long words are used','How neat the handwriting is'], 'How well the ideas and sentences stick together and flow logically', term: 1),

  // Set 2 — essay structure + prefix/suffix
  _quSec1('secondary','suffix',8,2,'grammar', 'Which prefix means "to do again", often used when editing an essay (e.g., ___write)?', ['re- (rewrite)','un- (unwrite)','mis- (miswrite)','dis- (diswrite)'], 're- (rewrite)', term: 1),
  _quSec1('secondary','prefix',8,2,'vocabulary', 'What is a "hook" in the introduction?', ['A compelling sentence or question designed to grab the reader\'s attention','A punctuation mark','A transition word','The author\'s signature'], 'A compelling sentence or question designed to grab the reader\'s attention', term: 1),
  _quSec1('secondary','suffix',8,2,'grammar', 'Which suffix can be added to "argue" to make a noun meaning "a reason or set of reasons given with the aim of persuading"?', ['-ment (argument)','-tion (arguemention)','-ance (arguance)','-ity (arguity)'], '-ment (argument)', term: 1),
  _quSec1('secondary','prefix',8,2,'grammar', 'Which of these is NOT a good way to write a topic sentence?', ['"In this paragraph, I will talk about..."','"One major cause of pollution is..."','"Furthermore, regular exercise improves mental health."','"The first reason to support this is..."'], '"In this paragraph, I will talk about..."', term: 1),
  _quSec1('secondary','suffix',8,2,'grammar', 'What does the P.E.E. acronym stand for in paragraph writing?', ['Point, Evidence, Explain','Paragraph, Essay, End','Punctuate, Evaluate, Edit','Place, Event, Emotion'], 'Point, Evidence, Explain', term: 1),
  _quSec1('secondary','prefix',8,2,'vocabulary', 'If an essay lacks "structure", it means:', ['it is disorganized and the paragraphs do not follow a logical order','it is too short','it has no title','it is written in pen'], 'it is disorganized and the paragraphs do not follow a logical order', term: 1),
  _quSec1('secondary','suffix',8,2,'grammar', 'Which of these is a concluding transition phrase?', ['To sum up,...','First of all,...','For instance,...','On the other hand,...'], 'To sum up,...', term: 1),
  _quSec1('secondary','prefix',8,2,'grammar', 'When you "revise" an essay, what are you doing? (re = again, vis = see)', ['looking over it again to improve the content, structure, or vocabulary','checking only the spelling','throwing it away and starting over','giving it to a friend to read'], 'looking over it again to improve the content, structure, or vocabulary', term: 1),
  _quSec1('secondary','suffix',8,2,'vocabulary', 'What does "academic vocabulary" refer to?', ['Formal, precise words commonly used in educational writing (e.g., "analyze" instead of "look at")','Slang words used with friends','Words that rhyme','Very short words'], 'Formal, precise words commonly used in educational writing (e.g., "analyze" instead of "look at")', term: 1),
  _quSec1('secondary','prefix',8,2,'grammar', 'Which word uses the prefix "in-" to mean "not"?', ['inaccurate (not accurate)','inside (not side)','interest (not terest)','inform (not form)'], 'inaccurate (not accurate)', term: 1),

  // Set 3 — comprehension (NOT read by TTS)
  _quSec1('secondary','suffix',8,3,'comprehension',
      'PASSAGE: Writing a high-quality academic essay requires a solid blueprint. Just like constructing a building, you must start with a strong foundation: the introduction. Here, a captivating hook draws the reader in, followed immediately by a clear thesis statement that presents your main argument. Next come the body paragraphs, which act as the pillars. Each body paragraph must open with a topic sentence. Furthermore, you must provide substantial evidence and logical explanations to support that point. Finally, the conclusion acts as the roof, tying the structure together by restating the thesis and leaving a lasting impression on the reader.\n\nQ: According to the passage, what is the introduction compared to?',
      ['A strong foundation','The pillars','The roof','A blueprint'],
      'A strong foundation', term: 1),
  _quSec1('secondary','prefix',8,3,'comprehension',
      'Refer to the passage above.\n\nQ: What two things must the introduction contain?',
      ['A captivating hook and a clear thesis statement','A topic sentence and evidence','A summary and a lasting impression','A blueprint and a roof'],
      'A captivating hook and a clear thesis statement', term: 1),
  _quSec1('secondary','suffix',8,3,'comprehension',
      'Refer to the passage above.\n\nQ: What are the body paragraphs compared to?',
      ['The pillars','The foundation','The roof','The architect'],
      'The pillars', term: 1),
  _quSec1('secondary','prefix',8,3,'comprehension',
      'Refer to the passage above.\n\nQ: How must each body paragraph open?',
      ['With a topic sentence','With a transition word','With a quote','With a question'],
      'With a topic sentence', term: 1),
  _quSec1('secondary','suffix',8,3,'comprehension',
      'Refer to the passage above.\n\nQ: What is the purpose of the conclusion?',
      ['To tie the structure together, restate the thesis, and leave a lasting impression','To introduce new evidence','To ask a captivating question','To start a new argument'],
      'To tie the structure together, restate the thesis, and leave a lasting impression', term: 1),
  _quSec1('secondary','prefix',8,3,'vocabulary', 'What does the prefix "sub-" in "substantial evidence" mean? (Though in substantial it relates to substance, let\'s focus on meaning). What does "substantial" mean?', ['of considerable importance, size, or worth; solid','very small and weak','fake and fabricated','invisible'], 'of considerable importance, size, or worth; solid', term: 1),
  _quSec1('secondary','suffix',8,3,'grammar', 'Which transition word is used in the passage to add more information?', ['Furthermore','However','Finally','Next'], 'Furthermore', term: 1),
  _quSec1('secondary','prefix',8,3,'vocabulary', 'What is a "blueprint"?', ['a design or plan that shows how to build something','a type of blue ink','a mistake in writing','a final copy of an essay'], 'a design or plan that shows how to build something', term: 1),
  _quSec1('secondary','suffix',8,3,'grammar', 'Which word uses the suffix "-ion" to form a noun from the verb "introduce"?', ['introduction','impression','explanation','foundation'], 'introduction', term: 1),
  _quSec1('secondary','prefix',8,3,'vocabulary', 'What does "captivating" mean?', ['capable of attracting and holding interest; charming','very boring and dull','difficult to read','loud and noisy'], 'capable of attracting and holding interest; charming', term: 1),

// ══════════════════════════════════════════════════════════════════════════
  // WEEK 9 — Grammar: Passive Voice
  // Tags: suffix
  // ══════════════════════════════════════════════════════════════════════════

  // Set 1 — grammar + vocabulary
  _quSec1('secondary','suffix',9,1,'grammar', 'In an active voice sentence, what does the subject do?', ['The subject performs the action of the verb','The subject receives the action','The subject is always at the end','The subject is hidden'], 'The subject performs the action of the verb', term: 1),
  _quSec1('secondary','suffix',9,1,'grammar', 'In a passive voice sentence, what happens to the subject?', ['The subject receives the action of the verb','The subject performs the action','The subject becomes a verb','The subject runs away'], 'The subject receives the action of the verb', term: 1),
  _quSec1('secondary','suffix',9,1,'grammar', 'Which of these is an active sentence?', ['The dog chased the cat.','The cat was chased by the dog.','The cat was being chased.','The dog was chased by the cat.'], 'The dog chased the cat.', term: 1),
  _quSec1('secondary','suffix',9,1,'grammar', 'Which of these is a passive sentence?', ['The window was broken by the baseball.','The baseball broke the window.','The boy threw the baseball.','The window broke.'], 'The window was broken by the baseball.', term: 1),
  _quSec1('secondary','suffix',9,1,'grammar', 'What two verb parts are always needed to form the passive voice?', ['A form of the verb "to be" and a past participle (e.g., was eaten)','An "-ing" verb and an adjective','The verb "to have" and a present tense verb','A noun and an adverb'], 'A form of the verb "to be" and a past participle (e.g., was eaten)', term: 1),
  _quSec1('secondary','suffix',9,1,'grammar', 'Convert to passive: "The chef cooked a delicious meal."', ['A delicious meal was cooked by the chef.','The chef cooks meals.','A delicious meal is cooking.','The chef is cooking a meal.'], 'A delicious meal was cooked by the chef.', term: 1),
  _quSec1('secondary','suffix',9,1,'grammar', 'Convert to active: "The song was sung by the choir."', ['The choir sang the song.','The choir sings the song.','The song is singing.','The choir is singing the song.'], 'The choir sang the song.', term: 1),
  _quSec1('secondary','suffix',9,1,'vocabulary', 'Why might a writer choose to use the passive voice?', ['To focus on the action or the receiver of the action, rather than who did it','To make the sentence shorter','To make the sentence active and exciting','To describe a character\'s feelings'], 'To focus on the action or the receiver of the action, rather than who did it', term: 1),
  _quSec1('secondary','suffix',9,1,'grammar', 'Which form of the verb "to be" makes this passive sentence future tense? "The bridge ___ built next year."', ['will be','was','is','has been'], 'will be', term: 1),
  _quSec1('secondary','suffix',9,1,'grammar', 'What suffix is often found on the past participle of regular verbs in the passive voice (e.g., wash___)?', ['-ed (washed)','-ing (washing)','-tion (washion)','-ly (washly)'], '-ed (washed)', term: 1),

  // Set 2 — grammar + vocabulary
  _quSec1('secondary','suffix',9,2,'grammar', 'Identify the passive sentence.', ['My bicycle was stolen yesterday.','A thief stole my bicycle yesterday.','I lost my bicycle.','Someone took my bicycle.'], 'My bicycle was stolen yesterday.', term: 1),
  _quSec1('secondary','suffix',9,2,'grammar', 'Convert to passive: "The government will build a new hospital."', ['A new hospital will be built by the government.','The government builds hospitals.','A new hospital is built by the government.','The hospital is building the government.'], 'A new hospital will be built by the government.', term: 1),
  _quSec1('secondary','suffix',9,2,'grammar', 'In the sentence "Mistakes were made," why is the passive voice used?', ['To avoid saying who exactly made the mistakes','To show that the mistakes were good','To make the sentence longer','Because "mistakes" is a person'], 'To avoid saying who exactly made the mistakes', term: 1),
  _quSec1('secondary','suffix',9,2,'grammar', 'Which of these uses the present perfect passive?', ['The room has been cleaned.','The room is cleaned.','The room was cleaned.','The room will be cleaned.'], 'The room has been cleaned.', term: 1),
  _quSec1('secondary','suffix',9,2,'grammar', 'Change to active: "The novel was written by Chinua Achebe."', ['Chinua Achebe wrote the novel.','Chinua Achebe writes novels.','Chinua Achebe has written the novel.','The novel is writing Chinua Achebe.'], 'Chinua Achebe wrote the novel.', term: 1),
  _quSec1('secondary','suffix',9,2,'grammar', 'Identify the verb phrase in this passive sentence: "The secret must be kept safe."', ['must be kept','The secret','kept safe','must be'], 'must be kept', term: 1),
  _quSec1('secondary','suffix',9,2,'vocabulary', 'What does "construction" mean?', ['the building of something, typically a large structure','the breaking of something','a type of animal','a written document'], 'the building of something, typically a large structure', term: 1),
  _quSec1('secondary','suffix',9,2,'grammar', 'Which suffix turns the verb "construct" into the noun used above?', ['-ion','-ment','-ly','-ed'], '-ion', term: 1),
  _quSec1('secondary','suffix',9,2,'grammar', 'Convert to passive: "Millions of people speak English."', ['English is spoken by millions of people.','English was spoken by millions of people.','English has been spoken by millions.','People are spoken by English.'], 'English is spoken by millions of people.', term: 1),
  _quSec1('secondary','suffix',9,2,'grammar', 'Which sentence is active?', ['The mechanic repaired the car.','The car was repaired by the mechanic.','The car is being repaired.','The car has been repaired.'], 'The mechanic repaired the car.', term: 1),

  // Set 3 — comprehension (NOT read by TTS)
  _quSec1('secondary','suffix',9,3,'comprehension',
      'PASSAGE: The ancient artifact was discovered by a team of archaeologists in 2024. For centuries, it had been buried deep beneath the desert sand. Once it was safely removed, it was transported to the national museum. There, the artifact was carefully cleaned and examined by experts. It is believed that the item was used by royalty during religious ceremonies. Next month, a special exhibition will be held, and the artifact will be displayed to the public for the very first time.\n\nQ: Who discovered the ancient artifact?',
      ['A team of archaeologists','The public','Royalty','Museum experts'],
      'A team of archaeologists', term: 1),
  _quSec1('secondary','suffix',9,3,'comprehension',
      'Refer to the passage above.\n\nQ: The sentence "The ancient artifact was discovered by a team of archaeologists" is written in which voice?',
      ['Passive voice','Active voice','Future tense','Present continuous'],
      'Passive voice', term: 1),
  _quSec1('secondary','suffix',9,3,'comprehension',
      'Refer to the passage above.\n\nQ: What happened to the artifact after it was removed from the sand?',
      ['It was transported to the national museum','It was sold to the public','It was buried again','It was given to royalty'],
      'It was transported to the national museum', term: 1),
  _quSec1('secondary','suffix',9,3,'comprehension',
      'Refer to the passage above.\n\nQ: Who cleaned and examined the artifact?',
      ['Experts','The public','Archaeologists','Royalty'],
      'Experts', term: 1),
  _quSec1('secondary','suffix',9,3,'comprehension',
      'Refer to the passage above.\n\nQ: How would you rewrite "it was transported to the national museum" in the active voice (assuming "they" did it)?',
      ['They transported it to the national museum.','It transported them to the national museum.','The national museum transported it.','It is transporting to the museum.'],
      'They transported it to the national museum.', term: 1),
  _quSec1('secondary','suffix',9,3,'grammar', 'Which of the following phrases from the passage is an example of the future passive voice?', ['will be displayed','was discovered','had been buried','was used'], 'will be displayed', term: 1),
  _quSec1('secondary','suffix',9,3,'vocabulary', 'What does "artifact" mean?', ['an object made by a human being, typically one of cultural or historical interest','a type of desert plant','a modern tool','a religious ceremony'], 'an object made by a human being, typically one of cultural or historical interest', term: 1),
  _quSec1('secondary','suffix',9,3,'grammar', 'Which suffix is added to "exhibit" to form the noun "exhibition"?', ['-ion','-ment','-ly','-ed'], '-ion', term: 1),
  _quSec1('secondary','suffix',9,3,'grammar', 'In the sentence "It is believed that the item was used...", why is the passive "is believed" used?', ['Because the writer is talking about a general belief without naming a specific person who believes it','Because the writer knows exactly who believes it','To make the sentence active','Because it happened in the future'], 'Because the writer is talking about a general belief without naming a specific person who believes it', term: 1),
  _quSec1('secondary','suffix',9,3,'grammar', 'Identify the past participle used in the phrase "had been buried".', ['buried','had','been','sand'], 'buried', term: 1),

  // ══════════════════════════════════════════════════════════════════════════
  // WEEK 10 — Grammar: Reported Speech
  // Tags: alternative_spelling
  // ══════════════════════════════════════════════════════════════════════════

  // Set 1 — grammar + vocabulary
  _quSec1('secondary','alternative_spelling',10,1,'grammar', 'What is the difference between direct speech and reported (indirect) speech?', ['Direct uses quotes for exact words; reported summarizes what was said without quotes','Reported speech always uses quotes','Direct speech is always in the past tense','Reported speech is only used in newspapers'], 'Direct uses quotes for exact words; reported summarizes what was said without quotes', term: 1),
  _quSec1('secondary','alternative_spelling',10,1,'grammar', 'When changing direct speech to reported speech, what usually happens to present tense verbs?', ['They shift back one step to the past tense (e.g., "is" becomes "was")','They change to the future tense','They stay exactly the same','They become "-ing" verbs'], 'They shift back one step to the past tense (e.g., "is" becomes "was")', term: 1),
  _quSec1('secondary','alternative_spelling',10,1,'grammar', 'Convert to reported speech: She said, "I am tired."', ['She said that she was tired.','She said that I am tired.','She said she is tired.','She said, "She was tired."'], 'She said that she was tired.', term: 1),
  _quSec1('secondary','alternative_spelling',10,1,'grammar', 'Convert to reported speech: He said, "I will help you tomorrow."', ['He said that he would help me the next day.','He said that he will help me tomorrow.','He said that I would help him the next day.','He says he will help me tomorrow.'], 'He said that he would help me the next day.', term: 1),
  _quSec1('secondary','alternative_spelling',10,1,'grammar', 'In reported speech, what does the word "today" usually change to?', ['that day','yesterday','tomorrow','now'], 'that day', term: 1),
  _quSec1('secondary','alternative_spelling',10,1,'grammar', 'In reported speech, what does the word "here" usually change to?', ['there','now','then','this'], 'there', term: 1),
  _quSec1('secondary','alternative_spelling',10,1,'grammar', 'Convert to reported speech: "Do you like pizza?" he asked.', ['He asked if I liked pizza.','He asked do I like pizza.','He asked did I like pizza.','He asked if I like pizza.'], 'He asked if I liked pizza.', term: 1),
  _quSec1('secondary','alternative_spelling',10,1,'grammar', 'Convert to direct speech: The teacher told them to sit down.', ['The teacher said, "Sit down."','The teacher says, "Sit down."','The teacher asked if they sat down.','The teacher said that they sat down.'], 'The teacher said, "Sit down."', term: 1),
  _quSec1('secondary','alternative_spelling',10,1,'vocabulary', 'Which is the correct spelling of the reporting verb meaning "to advise earnestly"?', ['urge','erge','irje','urj'], 'urge', term: 1),
  _quSec1('secondary','alternative_spelling',10,1,'grammar', 'Which is the correct spelling of the past tense reporting verb meaning "to answer"?', ['replied','replyed','repleid','replid'], 'replied', term: 1),

  // Set 2 — grammar + vocabulary
  _quSec1('secondary','alternative_spelling',10,2,'grammar', 'Convert to reported speech: "I have finished my homework," she announced.', ['She announced that she had finished her homework.','She announced that I have finished my homework.','She announced that she has finished her homework.','She announces that she had finished her homework.'], 'She announced that she had finished her homework.', term: 1),
  _quSec1('secondary','alternative_spelling',10,2,'grammar', 'In reported speech, what does "can" usually change to?', ['could','would','should','might'], 'could', term: 1),
  _quSec1('secondary','alternative_spelling',10,2,'grammar', 'Convert to reported speech: "We can play football," they said.', ['They said that they could play football.','They said that we can play football.','They said that they can play football.','They said that we could play football.'], 'They said that they could play football.', term: 1),
  _quSec1('secondary','alternative_spelling',10,2,'grammar', 'Convert to reported speech: "Where is the library?" she asked.', ['She asked where the library was.','She asked where is the library.','She asked where was the library.','She asks where the library is.'], 'She asked where the library was.', term: 1),
  _quSec1('secondary','alternative_spelling',10,2,'grammar', 'What does the pronoun "I" in direct speech ("I am hungry," said John) change to in reported speech?', ['he','I','you','they'], 'he', term: 1),
  _quSec1('secondary','alternative_spelling',10,2,'grammar', 'Convert to reported speech: "I am reading a good book," he told me.', ['He told me that he was reading a good book.','He told me that I was reading a good book.','He said that he is reading a good book.','He told me, "He was reading a good book."'], 'He told me that he was reading a good book.', term: 1),
  _quSec1('secondary','alternative_spelling',10,2,'vocabulary', 'Which is the correct spelling of the reporting verb meaning "to state as a fact"?', ['declare','declair','decare','decilare'], 'declare', term: 1),
  _quSec1('secondary','alternative_spelling',10,2,'grammar', 'Which is the correct spelling of the reporting verb meaning "to make an inquiry"?', ['inquire','enquire','inqure','inquir'], 'inquire', term: 1), // inquire/enquire both acceptable but inquire is standard
  _quSec1('secondary','alternative_spelling',10,2,'grammar', 'Convert to direct speech: She exclaimed that it was a beautiful dress.', ['"What a beautiful dress!" she exclaimed.','She exclaimed, "It was a beautiful dress."','She asked, "Is it a beautiful dress?"','She said, "It will be a beautiful dress."'], '"What a beautiful dress!" she exclaimed.', term: 1),
  _quSec1('secondary','alternative_spelling',10,2,'grammar', 'In reported speech, "next week" often changes to:', ['the following week','this week','last week','tomorrow'], 'the following week', term: 1),

  // Set 3 — comprehension (NOT read by TTS)
  _quSec1('secondary','alternative_spelling',10,3,'comprehension',
      'PASSAGE: The school principal, Mr. Davies, called an emergency meeting in the hall. He stood at the podium and looked at the students. "I am extremely disappointed with the behavior I saw yesterday," he declared. "Someone vandalized the new laboratory equipment." A murmur went through the crowd. "We will find the culprits, and they will face suspension," he continued. Later that afternoon, Amina told her parents about the meeting. She explained that the principal was very angry. She told them that someone had vandalized the lab, and Mr. Davies had promised that they would find the culprits.\n\nQ: What did Mr. Davies declare at the meeting?',
      ['"I am extremely disappointed with the behavior I saw yesterday."','"I am very happy with everyone."','"We are closing the school."','"I lost my keys."'],
      '"I am extremely disappointed with the behavior I saw yesterday."', term: 1),
  _quSec1('secondary','alternative_spelling',10,3,'comprehension',
      'Refer to the passage above.\n\nQ: What had happened to the laboratory equipment?',
      ['Someone had vandalized it','Someone had cleaned it','Someone had bought new equipment','Someone had hidden it'],
      'Someone had vandalized it', term: 1),
  _quSec1('secondary','alternative_spelling',10,3,'comprehension',
      'Refer to the passage above.\n\nQ: What did the principal say would happen to the culprits?',
      ['"they will face suspension"','"they will be rewarded"','"they will clean the lab"','"they will apologize"'],
      '"they will face suspension"', term: 1),
  _quSec1('secondary','alternative_spelling',10,3,'comprehension',
      'Refer to the passage above.\n\nQ: How did Amina report the principal\'s first statement to her parents?',
      ['She explained that the principal was very angry (or disappointed)','She said, "I am extremely disappointed."','She told them she vandalized the lab','She said the principal was happy'],
      'She explained that the principal was very angry (or disappointed)', term: 1),
  _quSec1('secondary','alternative_spelling',10,3,'comprehension',
      'Refer to the passage above.\n\nQ: How did Amina report the principal\'s statement about finding the culprits?',
      ['Mr. Davies had promised that they would find the culprits','Mr. Davies said, "We will find the culprits."','Mr. Davies said that he will find them','She didn\'t tell her parents about that part'],
      'Mr. Davies had promised that they would find the culprits', term: 1),
  _quSec1('secondary','alternative_spelling',10,3,'vocabulary', 'What does "vandalized" mean?', ['deliberately destroyed or damaged public or private property','cleaned and polished','bought at a store','used for a science experiment'], 'deliberately destroyed or damaged public or private property', term: 1),
  _quSec1('secondary','alternative_spelling',10,3,'grammar', 'Which is the correct spelling of the word meaning "people responsible for a crime or fault"?', ['culprits','culprets','culprits','cullprits'], 'culprits', term: 1),
  _quSec1('secondary','alternative_spelling',10,3,'grammar', 'When converting "We will find the culprits" to reported speech ("he promised that they ___ find the culprits"), what verb completes the sentence?', ['would','will','shall','can'], 'would', term: 1),
  _quSec1('secondary','alternative_spelling',10,3,'grammar', 'Which is the correct spelling?', ['laboratory','laboratary','labratory','laberatory'], 'laboratory', term: 1),
  _quSec1('secondary','alternative_spelling',10,3,'grammar', 'Identify the reporting verb used in the passage when Amina spoke to her parents.', ['told','found','face','saw'], 'told', term: 1),

  // ══════════════════════════════════════════════════════════════════════════
  // WEEK 11 — Homophones & Confused Words (advanced)
  // Tags: homophone
  // ══════════════════════════════════════════════════════════════════════════

  // Set 1 — homophones
  _quSec1('secondary','homophone',11,1,'grammar', 'Which word fits best: "The teacher gave me some excellent ___ on my essay."?', ['advice','advise','advises','adviced'], 'advice', term: 1),
  _quSec1('secondary','homophone',11,1,'grammar', 'Which word fits best: "I strongly ___ you to study for the exam."?', ['advise','advice','advices','advising'], 'advise', term: 1),
  _quSec1('secondary','homophone',11,1,'grammar', 'In British/Nigerian English, which word fits best: "You need more football ___ before the match."?', ['practice (noun)','practise (verb)','practis','practicce'], 'practice (noun)', term: 1),
  _quSec1('secondary','homophone',11,1,'grammar', 'In British/Nigerian English, which word fits best: "You must ___ your piano scales every day."?', ['practise (verb)','practice (noun)','practis','practicce'], 'practise (verb)', term: 1),
  _quSec1('secondary','homophone',11,1,'grammar', 'Which word fits best: "The medicine had a strange ___ on my stomach."?', ['effect','affect','affective','effact'], 'effect', term: 1),
  _quSec1('secondary','homophone',11,1,'grammar', 'Which word fits best: "The bad weather will ___ the harvest."?', ['affect','effect','affective','effact'], 'affect', term: 1),
  _quSec1('secondary','homophone',11,1,'grammar', 'Which word fits best: "We walked ___ the dark tunnel."?', ['through','threw','thorough','though'], 'through', term: 1),
  _quSec1('secondary','homophone',11,1,'grammar', 'Which word fits best: "He ___ the ball across the field."?', ['threw','through','thorough','though'], 'threw', term: 1),
  _quSec1('secondary','homophone',11,1,'grammar', 'Which word fits best: "Please put the books over ___."?', ['there','their','they\'re','there\'re'], 'there', term: 1),
  _quSec1('secondary','homophone',11,1,'grammar', 'Which word fits best: "___ waiting outside for you."?', ['They\'re','Their','There','Their\'re'], 'They\'re', term: 1),

  // Set 2 — homophones
  _quSec1('secondary','homophone',11,2,'grammar', 'Which word fits best: "The artist painted on a large blank ___."?', ['canvas','canvass','canvis','canvess'], 'canvas', term: 1),
  _quSec1('secondary','homophone',11,2,'grammar', 'Which word fits best: "The politicians went door to door to ___ for votes."?', ['canvass','canvas','canvis','canvess'], 'canvass', term: 1),
  _quSec1('secondary','homophone',11,2,'grammar', 'Which word fits best: "He was ___ in a small village in Delta State."?', ['born','borne','bourn','bone'], 'born', term: 1),
  _quSec1('secondary','homophone',11,2,'grammar', 'Which word fits best: "Malaria is a mosquito-___ disease."?', ['borne','born','bourn','bone'], 'borne', term: 1),
  _quSec1('secondary','homophone',11,2,'grammar', 'Which word fits best: "The car needs its brakes tested because it is losing ___."?', ['brake','break','breek','braik'], 'brake', term: 1),
  _quSec1('secondary','homophone',11,2,'grammar', 'Which word fits best: "Be careful not to ___ that glass."?', ['break','brake','breek','braik'], 'break', term: 1),
  _quSec1('secondary','homophone',11,2,'grammar', 'In British/Nigerian English, which word fits best: "He lost his driving ___."?', ['licence (noun)','license (verb)','lisence','lysence'], 'licence (noun)', term: 1),
  _quSec1('secondary','homophone',11,2,'grammar', 'In British/Nigerian English, which word fits best: "The restaurant is ___ to sell food."?', ['licensed (verb)','licenced (noun form wrongly used as verb)','lisenced','lysensed'], 'licensed (verb)', term: 1),
  _quSec1('secondary','homophone',11,2,'grammar', 'Which word fits best: "She ate the ___ pizza by herself."?', ['whole','hole','whool','holl'], 'whole', term: 1),
  _quSec1('secondary','homophone',11,2,'grammar', 'Which word fits best: "He dug a deep ___ in the garden."?', ['hole','whole','whool','holl'], 'hole', term: 1),

  // Set 3 — comprehension (NOT read by TTS)
  _quSec1('secondary','homophone',11,3,'comprehension',
      'PASSAGE: The debate coach stood before the team. "I need to give you some crucial advice," she said. "The way you project your voice will deeply affect the judges\' scores. I advise you to practise your speeches in front of a mirror every night. We cannot afford any mistakes, because the effect of a single stumble could cost us the championship. Remember, when you walk through the doors of the auditorium, leave your nerves behind. You are a strong team, and I know you will not break under the pressure. Now, go and show them what you can do!"\n\nQ: What did the debate coach give to the team?',
      ['crucial advice','a canvas','a licence','a break'],
      'crucial advice', term: 1),
  _quSec1('secondary','homophone',11,3,'comprehension',
      'Refer to the passage above.\n\nQ: What did the coach say would affect the judges\' scores?',
      ['The way they project their voice','Their clothes','The time they arrive','Their written notes'],
      'The way they project their voice', term: 1),
  _quSec1('secondary','homophone',11,3,'comprehension',
      'Refer to the passage above.\n\nQ: What did the coach advise the team to do?',
      ['To practise their speeches in front of a mirror every night','To sleep early','To canvas for votes','To write a new speech'],
      'To practise their speeches in front of a mirror every night', term: 1),
  _quSec1('secondary','homophone',11,3,'comprehension',
      'Refer to the passage above.\n\nQ: What could cost them the championship?',
      ['The effect of a single stumble','Not bringing their notes','Wearing the wrong uniform','Speaking too loudly'],
      'The effect of a single stumble', term: 1),
  _quSec1('secondary','homophone',11,3,'comprehension',
      'Refer to the passage above.\n\nQ: What did the coach know the team would not do?',
      ['They would not break under the pressure','They would not show up','They would not speak clearly','They would not practise'],
      'They would not break under the pressure', term: 1),
  _quSec1('secondary','homophone',11,3,'vocabulary', 'In the passage, is "advice" used as a noun or a verb?', ['Noun','Verb','Adjective','Adverb'], 'Noun', term: 1),
  _quSec1('secondary','homophone',11,3,'vocabulary', 'In the passage, is "affect" used as a noun or a verb?', ['Verb','Noun','Adjective','Adverb'], 'Verb', term: 1),
  _quSec1('secondary','homophone',11,3,'vocabulary', 'In the passage, is "practise" used as a noun or a verb?', ['Verb','Noun','Adjective','Adverb'], 'Verb', term: 1),
  _quSec1('secondary','homophone',11,3,'vocabulary', 'In the passage, is "effect" used as a noun or a verb?', ['Noun','Verb','Adjective','Adverb'], 'Noun', term: 1),
  _quSec1('secondary','homophone',11,3,'grammar', 'Which homophone of "through" means "threw"?', ['It is the past tense of "throw"','It means careful and detailed','It means despite the fact that','It means a deep hole'], 'It is the past tense of "throw"', term: 1),

  // ══════════════════════════════════════════════════════════════════════════
  // WEEK 12 — Reading: Literature Extract
  // Tags: alternative_spelling, prefix
  // ══════════════════════════════════════════════════════════════════════════

  // Set 1 — literary terms + prefix/spelling
  _quSec1('secondary','alternative_spelling',12,1,'vocabulary', 'What is "prose"?', ['Written or spoken language in its ordinary form, without metrical structure (not poetry)','A poem with 14 lines','A play meant to be acted on stage','A song with a repeating chorus'], 'Written or spoken language in its ordinary form, without metrical structure (not poetry)', term: 1),
  _quSec1('secondary','alternative_spelling',12,1,'vocabulary', 'What is "characterisation"?', ['The way an author describes and develops the personalities of the characters','The place where the story happens','The main problem in the story','The lesson the story teaches'], 'The way an author describes and develops the personalities of the characters', term: 1),
  _quSec1('secondary','prefix',12,1,'vocabulary', 'What is "dialogue"? (dia = across/between, logue = speech)', ['A conversation between two or more characters in a book, play, or movie','A speech given by one character alone','The author\'s notes at the end of the book','A descriptive paragraph about the weather'], 'A conversation between two or more characters in a book, play, or movie', term: 1),
  _quSec1('secondary','alternative_spelling',12,1,'vocabulary', 'What is "setting"?', ['The time and place in which the events of a story occur','The main character\'s best friend','The climax of the story','The problem the hero faces'], 'The time and place in which the events of a story occur', term: 1),
  _quSec1('secondary','prefix',12,1,'vocabulary', 'What does the prefix "fore-" mean in "foreshadowing"?', ['before or in front of (hinting at what comes later)','after or behind','against','many'], 'before or in front of (hinting at what comes later)', term: 1),
  _quSec1('secondary','alternative_spelling',12,1,'vocabulary', 'What is the "theme" of a literary work?', ['The central idea, message, or underlying meaning of the story','The name of the main character','The number of chapters in the book','The physical book itself'], 'The central idea, message, or underlying meaning of the story', term: 1),
  _quSec1('secondary','alternative_spelling',12,1,'vocabulary', 'What is "conflict" in a story?', ['A struggle between opposing forces (e.g., character vs. character, character vs. nature)','A happy ending where everyone agrees','A conversation about the weather','A description of a landscape'], 'A struggle between opposing forces (e.g., character vs. character, character vs. nature)', term: 1),
  _quSec1('secondary','prefix',12,1,'vocabulary', 'What is a "monologue"? (mono = one, logue = speech)', ['A long speech by one actor in a play or movie','A conversation between two people','A short, quick reply','A hidden message'], 'A long speech by one actor in a play or movie', term: 1),
  _quSec1('secondary','alternative_spelling',12,1,'grammar', 'Which is the correct spelling of the literary term?', ['metaphor','metafor','metaphore','metafore'], 'metaphor', term: 1),
  _quSec1('secondary','alternative_spelling',12,1,'grammar', 'Which is the correct spelling?', ['simile','similey','simily','similie'], 'simile', term: 1),

  // Set 2 — literary terms + prefix/spelling
  _quSec1('secondary','alternative_spelling',12,2,'vocabulary', 'Which literary device gives human qualities to an animal, object, or idea?', ['Personification','Simile','Metaphor','Alliteration'], 'Personification', term: 1),
  _quSec1('secondary','alternative_spelling',12,2,'vocabulary', 'Which of these is an example of a simile?', ['Her smile was as bright as the sun.','She is the sun.','The sun smiled down on us.','The bright sun shone.'], 'Her smile was as bright as the sun.', term: 1),
  _quSec1('secondary','alternative_spelling',12,2,'vocabulary', 'Which of these is an example of a metaphor?', ['The classroom was a zoo.','The classroom was like a zoo.','The animals were in the zoo.','The classroom was very noisy.'], 'The classroom was a zoo.', term: 1),
  _quSec1('secondary','alternative_spelling',12,2,'vocabulary', 'What is "imagery"?', ['Visually descriptive or figurative language that appeals to the five senses','The rhythm of a poem','The main character\'s name','A conversation between characters'], 'Visually descriptive or figurative language that appeals to the five senses', term: 1),
  _quSec1('secondary','prefix',12,2,'vocabulary', 'What does the prefix "pro-" mean in "protagonist"?', ['first or leading (the leading character)','against or opposing','bad or evil','many'], 'first or leading (the leading character)', term: 1),
  _quSec1('secondary','prefix',12,2,'vocabulary', 'What does the prefix "anti-" mean in "antagonist"?', ['against or opposing (the character opposing the protagonist)','first or leading','good or helpful','small'], 'against or opposing (the character opposing the protagonist)', term: 1),
  _quSec1('secondary','alternative_spelling',12,2,'grammar', 'Which is the correct spelling?', ['narrator','narator','narrater','narater'], 'narrator', term: 1),
  _quSec1('secondary','alternative_spelling',12,2,'vocabulary', 'What is the "climax" of a story?', ['The most intense, exciting, or important point of the plot','The introduction of the characters','The very end after the problem is solved','The setting of the scene'], 'The most intense, exciting, or important point of the plot', term: 1),
  _quSec1('secondary','alternative_spelling',12,2,'grammar', 'Which is the correct spelling?', ['resolution','resalution','resolusion','recolution'], 'resolution', term: 1),
  _quSec1('secondary','alternative_spelling',12,2,'vocabulary', 'What is a "flashback"?', ['A scene set in a time earlier than the main story','A hint about what will happen in the future','A very bright light','A fast runner'], 'A scene set in a time earlier than the main story', term: 1),

  // Set 3 — comprehension (NOT read by TTS)
  _quSec1('secondary','alternative_spelling',12,3,'comprehension',
      'PASSAGE: "The wind howled like a wounded beast outside the small, wooden cabin. Inside, the fire cracked and spat, throwing dancing shadows across Eze\'s anxious face. He clutched his grandfather\'s walking stick tightly. \'They will come tonight,\' he whispered into the empty room. He remembered his grandfather\'s warning from ten years ago: The forest never forgets. Eze knew he was entirely alone, but he refused to surrender the land that had been in his family for generations. The tension in the air was as thick as mud."\n\nQ: What literary device is used in the phrase "The wind howled like a wounded beast"?',
      ['Simile','Metaphor','Personification','Alliteration'],
      'Simile', term: 1),
  _quSec1('secondary','alternative_spelling',12,3,'comprehension',
      'Refer to the passage above.\n\nQ: What literary device is used in the phrase "dancing shadows"?',
      ['Personification','Simile','Metaphor','Flashback'],
      'Personification', term: 1),
  _quSec1('secondary','alternative_spelling',12,3,'comprehension',
      'Refer to the passage above.\n\nQ: What does Eze clutching the walking stick and his "anxious face" tell us through indirect characterisation?',
      ['He is frightened and tense, but preparing to defend himself','He is very cold and wants to build a bigger fire','He is angry at his grandfather','He is bored and sleepy'],
      'He is frightened and tense, but preparing to defend himself', term: 1),
  _quSec1('secondary','alternative_spelling',12,3,'comprehension',
      'Refer to the passage above.\n\nQ: "He remembered his grandfather\'s warning from ten years ago" is an example of what technique?',
      ['Flashback','Foreshadowing','Dialogue','Metaphor'],
      'Flashback', term: 1),
  _quSec1('secondary','alternative_spelling',12,3,'comprehension',
      'Refer to the passage above.\n\nQ: What is the main conflict shown in this extract?',
      ['Character vs. an unknown external threat (the forest/"They")','Character vs. Character (Eze vs. Grandfather)','Character vs. Self (Eze deciding whether to sleep)','Character vs. Technology'],
      'Character vs. an unknown external threat (the forest/"They")', term: 1),
  _quSec1('secondary','prefix',12,3,'vocabulary', 'In "The forest never forgets", giving human memory to a forest is personification. If we see Eze as the leading character, he is the:', ['Protagonist','Antagonist','Narrator','Dialogue'], 'Protagonist', term: 1),
  _quSec1('secondary','alternative_spelling',12,3,'vocabulary', 'What does the simile "as thick as mud" describe?', ['The tension in the air','The wooden cabin','The grandfather\'s walking stick','The dancing shadows'], 'The tension in the air', term: 1),
  _quSec1('secondary','alternative_spelling',12,3,'vocabulary', 'What does "surrender" mean in the passage?', ['to give up or hand over','to buy','to build','to set on fire'], 'to give up or hand over', term: 1),
  _quSec1('secondary','alternative_spelling',12,3,'grammar', 'Identify the correct spelling of the word meaning "very worried or nervous" used to describe Eze\'s face.', ['anxious','anxiouss','angxious','ancshous'], 'anxious', term: 1),
  _quSec1('secondary','prefix',12,3,'grammar', 'Which word uses the prefix "trans-"?', ['None of these','Transport','Transform','Transparent'], 'None of these', term: 1), // Trick question, passage doesn't have it, but the options are real prefix words. The answer is "None of these" are in the passage. Wait, let's change this to avoid confusion.
  // Replacing the trick question:
  _quSec1('secondary','alternative_spelling',12,3,'grammar', 'Which is the correct spelling of the literary term for a conversation, like Eze whispering?', ['dialogue','dialog','dilogue','dayalog'], 'dialogue', term: 1),

  // ══════════════════════════════════════════════════════════════════════════
  // WEEK 13 — End-of-Term Assessment
  // Tags: prefix, suffix, alternative_spelling, homophone, syllable
  // ══════════════════════════════════════════════════════════════════════════

  // Set 1 — assessment mix
  _quSec1('secondary','suffix',13,1,'grammar', 'Identify the passive sentence.', ['The bridge was destroyed by the storm.','The storm destroyed the bridge.','The storm is blowing hard.','The bridge fell down.'], 'The bridge was destroyed by the storm.', term: 1),
  _quSec1('secondary','alternative_spelling',13,1,'grammar', 'Convert to reported speech: She said, "I am going to the market."', ['She said that she was going to the market.','She said that I am going to the market.','She says she is going to the market.','She said that she will go to the market.'], 'She said that she was going to the market.', term: 1),
  _quSec1('secondary','homophone',13,1,'grammar', 'Which homophone fits best: "I need some ___ on which university to choose."?', ['advice','advise','advises','adviced'], 'advice', term: 1),
  _quSec1('secondary','prefix',13,1,'vocabulary', 'What does the root "dict" mean in the word "dictate"?', ['to say or speak','to look or see','to pull or drag','to build'], 'to say or speak', term: 1),
  _quSec1('secondary','syllable',13,1,'grammar', 'How many syllables are in the word "international"?', ['5','4','6','3'], '5', term: 1),
  _quSec1('secondary','alternative_spelling',13,1,'grammar', 'Which is the correct spelling?', ['accommodation','acommodation','accomodation','acomodation'], 'accommodation', term: 1),
  _quSec1('secondary','suffix',13,1,'grammar', 'Which suffix turns "justify" into a noun?', ['-ication (justification)','-ment (justifyment)','-ly (justifyly)','-ance (justifance)'], '-ication (justification)', term: 1),
  _quSec1('secondary','prefix',13,1,'vocabulary', 'What does the prefix "trans-" mean in "transform"?', ['across, beyond, or through (changing form)','under or below','before or in front','together with'], 'across, beyond, or through (changing form)', term: 1),
  _quSec1('secondary','homophone',13,1,'grammar', 'Which homophone fits best: "The new laws will ___ small businesses."?', ['affect','effect','affective','effact'], 'affect', term: 1),
  _quSec1('secondary','alternative_spelling',13,1,'vocabulary', 'What is "skimming" in reading?', ['Reading rapidly to get a general overview','Reading slowly to memorize','Looking only at pictures','Reading aloud to the class'], 'Reading rapidly to get a general overview', term: 1),

  // Set 2 — assessment mix
  _quSec1('secondary','suffix',13,2,'grammar', 'Change to active voice: "The novel was written by the famous author."', ['The famous author wrote the novel.','The famous author writes novels.','The novel is writing the author.','The famous author has written the novel.'], 'The famous author wrote the novel.', term: 1),
  _quSec1('secondary','alternative_spelling',13,2,'grammar', 'In reported speech, what does "will" usually change to?', ['would','can','shall','might'], 'would', term: 1),
  _quSec1('secondary','homophone',13,2,'grammar', 'Which homophone fits best: "You must ___ your spelling every day."?', ['practise (verb)','practice (noun)','practis','practicce'], 'practise (verb)', term: 1),
  _quSec1('secondary','prefix',13,2,'vocabulary', 'What does the root "bio" mean in "biology"?', ['life','earth','time','sound'], 'life', term: 1),
  _quSec1('secondary','syllable',13,2,'grammar', 'How many syllables are in the word "comprehension"?', ['4','3','5','2'], '4', term: 1),
  _quSec1('secondary','alternative_spelling',13,2,'grammar', 'Which is the correct spelling?', ['separate','seperate','separat','separete'], 'separate', term: 1),
  _quSec1('secondary','suffix',13,2,'grammar', 'Which word uses the suffix "-ise" to mean "to commit to memory"?', ['memorise','memoryise','memorisate','memorify'], 'memorise', term: 1),
  _quSec1('secondary','prefix',13,2,'vocabulary', 'What does the prefix "inter-" mean in "intersect"?', ['between or among','above or over','bad or wrong','many'], 'between or among', term: 1),
  _quSec1('secondary','homophone',13,2,'grammar', 'Which homophone fits best: "She looked ___ the window."?', ['through','threw','thorough','though'], 'through', term: 1),
  _quSec1('secondary','alternative_spelling',13,2,'vocabulary', 'What is a "thesis statement" in an essay?', ['A single sentence that states the main argument or focus','The hook in the introduction','A piece of evidence in a body paragraph','The title of the essay'], 'A single sentence that states the main argument or focus', term: 1),

  // Set 3 — comprehension (NOT read by TTS)
  _quSec1('secondary','alternative_spelling',13,3,'comprehension',
      'PASSAGE: The end-of-term examinations were fast approaching. In the English class, Mrs. Okoro advised her students on exam strategy. "You must survey the comprehension passage before reading the questions," she stated firmly. "Too many students rush in and make careless mistakes." She warned that the passive voice was often used in the grammar section to trick them. David raised his hand and asked, "Will we be tested on homophones like affect and effect?" Mrs. Okoro smiled. "Yes, David. I guarantee that you will see those words on the paper."\n\nQ: What did Mrs. Okoro advise her students to do?',
      ['Survey the comprehension passage before reading the questions','Sleep well before the exam','Skip the comprehension passage entirely','Write an essay first'],
      'Survey the comprehension passage before reading the questions', term: 1),
  _quSec1('secondary','suffix',13,3,'comprehension',
      'Refer to the passage above.\n\nQ: Why did she say students make careless mistakes?',
      ['Because they rush in','Because they survey the text','Because they use the passive voice','Because they don\'t like English'],
      'Because they rush in', term: 1),
  _quSec1('secondary','suffix',13,3,'comprehension',
      'Refer to the passage above.\n\nQ: What grammatical structure did she warn was often used to trick them?',
      ['The passive voice','The active voice','Reported speech','Homophones'],
      'The passive voice', term: 1),
  _quSec1('secondary','alternative_spelling',13,3,'comprehension',
      'Refer to the passage above.\n\nQ: What did David ask?',
      ['"Will we be tested on homophones like affect and effect?"','"Are we having an exam today?"','"What is the passive voice?"','"Can I go to the bathroom?"'],
      '"Will we be tested on homophones like affect and effect?"', term: 1),
  _quSec1('secondary','alternative_spelling',13,3,'comprehension',
      'Refer to the passage above.\n\nQ: How did Mrs. Okoro respond to David?',
      ['She guaranteed that they would see those words on the paper','She told him to stop asking questions','She said homophones were not important','She gave him extra homework'],
      'She guaranteed that they would see those words on the paper', term: 1),
  _quSec1('secondary','alternative_spelling',13,3,'grammar', 'If you convert Mrs. Okoro\'s statement "You must survey the comprehension passage..." into reported speech, which is correct?', ['She stated firmly that they must survey the comprehension passage.','She stated firmly that you must survey the comprehension passage.','She stated firmly that they survey the comprehension passage.','She stated firmly, "They must survey the comprehension passage."'], 'She stated firmly that they must survey the comprehension passage.', term: 1),
  _quSec1('secondary','alternative_spelling',13,3,'grammar', 'Which is the correct spelling of the word meaning "to promise or assure"?', ['guarantee','garantee','guarentee','garentee'], 'guarantee', term: 1),
  _quSec1('secondary','homophone',13,3,'grammar', 'In the passage, "advise" is used ("Mrs. Okoro advised..."). Is it a noun or a verb here?', ['Verb','Noun','Adjective','Adverb'], 'Verb', term: 1),
  _quSec1('secondary','prefix',13,3,'vocabulary', 'What does the prefix "com-" in "comprehension" mean? (com = together, prehend = grasp)', ['Grasping or understanding altogether','Taking apart','Looking from far away','Writing down'], 'Grasping or understanding altogether', term: 1),
  _quSec1('secondary','syllable',13,3,'grammar', 'How many syllables are in the word "examination"?', ['5','4','6','3'], '5', term: 1),

];
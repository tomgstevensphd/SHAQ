
(DEFCLASS BIO
          (ASSESSMENT PER-SYSTEM)
          NIL
          (:DEFAULT-INITARGS
           :TITLE
           "BIO"
           :SCALE-GROUP-DESCRIPTION
           "Biographical data"
           :PARENTS
           '(ASSESSMENT PER-SYSTEM)))

(DEFCLASS VALUES-THEMES
          (ASSESSMENT PER-SYSTEM)
          NIL
          (:DEFAULT-INITARGS
           :TITLE
           "VALUES-THEMES"
           :SCALE-GROUP-DESCRIPTION
           "The 11 Value-Themes scales are the result of a factor and logical analysis of the original four scales Achievement-Status; Social-Family Related; Internal-Intrinsic; and Non-Dysfunctional Values-Themes. "
           :PARENTS
           '(ASSESSMENT PER-SYSTEM)))

(DEFCLASS BELIEFS
          (ASSESSMENT PER-SYSTEM)
          NIL
          (:DEFAULT-INITARGS
           :TITLE
           "BELIEFS"
           :SCALE-GROUP-DESCRIPTION
           "These scales are almost exactly from items originally presented in the book and were supported by factor analytic study. "
           :PARENTS
           '(ASSESSMENT PER-SYSTEM)))

(DEFCLASS SKILLS-CONFIDENCE
          (ASSESSMENT PER-SYSTEM)
          NIL
          (:DEFAULT-INITARGS
           :TITLE
           "SKILLS-CONFIDENCE"
           :SCALE-GROUP-DESCRIPTION
           "The following scales cover cognitive-behavioral skill areas  important to happiness and life success.  The Self-Confidence scale is largely an overview consisting of items each covering broad skill areas. "
           :PARENTS
           '(ASSESSMENT PER-SYSTEM)))

(DEFCLASS INTERPERSONAL
          (ASSESSMENT PER-SYSTEM)
          NIL
          (:DEFAULT-INITARGS
           :TITLE
           "INTERPERSONAL ATTRIBUTES"
           :SCALE-GROUP-DESCRIPTION
           "These interpersonal scales were part of the Stevens Relationship Questionnaire (SRQ) and have previous validating evidence from an earlier studies.  Most items on these scales were originally taken from materials developed for assertion training and marital relationship workshops, and had been clinically tested on hundreds of consumers."
           :PARENTS
           '(ASSESSMENT PER-SYSTEM)))

(DEFCLASS ACAD-LEARNING
          (ASSESSMENT PER-SYSTEM)
          NIL
          (:DEFAULT-INITARGS
           :TITLE
           "ACADEMIC-LEARNING"
           :SCALE-GROUP-DESCRIPTION
           "Several academic scales were created after factor analysis of the original five scales of Learning and Study Skills,  Learning Skill Areas, Learning Disabilities, Academic Motivation, and Academic Satisfaction.  The following 12 scales and 2 self-report aptitude items are more independent and specific."
           :HELP-LINKS
           '("LEARN.htm")
           :PARENTS
           '(ASSESSMENT PER-SYSTEM)))

(DEFCLASS CAREER-INTEREST
          (ASSESSMENT PER-SYSTEM)
          NIL
          (:DEFAULT-INITARGS
           :TITLE
           "CAREER/MAJOR INTEREST"
           :SCALE-GROUP-DESCRIPTION
           "The college major  interest scales divided common academic major areas into sets using typical groupings in universities, and groupings by the Strong Interest Inventory as a basis."
           :PARENTS
           '(ASSESSMENT PER-SYSTEM)))

(DEFCLASS OUTCOME
          (ASSESSMENT PER-SYSTEM)
          NIL
          (:DEFAULT-INITARGS
           :TITLE
           "OUTCOME"
           :SCALE-GROUP-DESCRIPTION
           " "
           :PARENTS
           '(ASSESSMENT PER-SYSTEM)))

(DEFCLASS BIO-TEXT
          (TEXT-ANSWER-QUESTION SCALE)
          NIL
          (:DEFAULT-INITARGS
           :NAME-STRING
           "BIO-TEXT-Qs"
           :LABEL
           "Biog Text Qs"
           :SCALE-NAME
           "Biographical Text Questions"
           :DESCRIPTION
           "Basic User Information"
           :SCALE-QUESTIONS
           '(FRAME-BIO-INFO FRAME-FAMILY-INFO)
           :NUM-QUESTIONS
           0
           :PARENTS
           '(TEXT-ANSWER-QUESTION SCALE)))

(DEFCLASS INTRO-MAQ
          (MULTI-ANSWER-SCALE)
          NIL
          (:DEFAULT-INITARGS
           :NAME-STRING
           "INTRO-MAQ"
           :LABEL
           "Biographical MultAnsQuests"
           :SCALE-NAME
           "Biographical Multi-Answer Questions"
           :DESCRIPTION
           "Additional User Information"
           :SCALE-QUESTIONS
           '(UTYPE UGOALS)
           :NUM-QUESTIONS
           0
           :PARENTS
           '(MULTI-ANSWER-SCALE)))

(DEFCLASS BIO-MAQ
          (MULTI-ANSWER-SCALE)
          NIL
          (:DEFAULT-INITARGS
           :NAME-STRING
           "BIO-MAQ"
           :LABEL
           "Biographical MultAnsQuests"
           :SCALE-NAME
           "Biographical Multi-Answer Questions"
           :DESCRIPTION
           "Additional User Information"
           :SCALE-QUESTIONS
           '(BIO4JOB BIO7LANG BIO1ETHN BIORELAF SFAMILY)
           :NUM-QUESTIONS
           5
           :PARENTS
           '(MULTI-ANSWER-SCALE)))

(DEFCLASS HQ
          (COMPOSITE-SCALE)
          NIL
          (:DEFAULT-INITARGS
           :NAME-STRING
           "HQ"
           :LABEL
           "HQ-HapQuot"
           :SCALE-NAME
           "Happiness Quotient Scale (HQ)"
           :DESCRIPTION
           "The HQ is a simple formula for estimating ones overall ability to achieve happiness.  The HQ is the linear combination of the 56 non-academic SHAQ scales.  The weights are the correlations of the individual scales with happiness.   One use of the HQ is to give users feedback about their progress developing success and happiness-related attributes. 
     This scale correlated .865 with overall happiness, .730 with low depression, .675 with low anxiety, .701 with low anger/aggression, .816 with the health outcomes scale, and .693 with overall relationship success.  It also correlated .486 with income, .458 with education level, and .393 with college grade average.  By any psychological research standards, these are high correlations showing that  HQ is a powerful predictor of not only overall happiness and other emotions, but of life success in the areas of  relationships, career, and health."
           :SCALE-GROUP-NAME
           "composite-scale"
           :SCALE-QUESTIONS
           'NIL
           :SUBSCALES
           'NIL
           :MEAN-SCORE
           100
           :STANDARD-DEVIATION
           10
           :SAMPLE-N
           NIL
           :NUM-QUESTIONS
           0
           :HELP-PRIORITY
           1
           :HELP-INFO
           "Understanding your own HQ score and the factors that contribute to it (or reduce it) can be important for understanding how to lead a happier and more successful life.  The help links provided with each scale relate to the factors/questions that make up your HQ score.  Using the self-help information provided can potentially increase your HQ score and ability to lead a happy, successful life."
           :HELP-LINKS
           '("index.html")
           :PARENTS
           '(COMPOSITE-SCALE)))

(DEFCLASS HIGHERSELFSCALE
          (COMPOSITE-SCALE)
          NIL
          (:DEFAULT-INITARGS
           :NAME-STRING
           "HigherSelfScale"
           :LABEL
           "HigherSelfScale"
           :SCALE-NAME
           "Higher Self Beliefs and Values--composite scale"
           :DESCRIPTION
           "A key HQ scale. Your cognitive system that unconditionally values your own and others' happiness, health, and wellbeing. Includes valuing truth, knowledge, growth, integrity, and excellence. 
     Evidence for Higher Self Values and for Making Happiness a Top Goal. Making happiness a top goal correlated .446 with overall appiness, .217 with low depression, .185 with low anxiety, .316 with low anger-aggression, .298 with health outcomes, and.396 with good relationship outcomes. 
     The Higher Self Values scale included making happiness important, but also included values like integrity, self-sufficiency, impacting the world, and learning and self-development. The Higher Self scale correlated .503 with overall happiness, .252 with low depression, .197 with low anxiety, .372 with low anger-aggression, .365 with health outcomes, and .436 with relationship outcomes. "
           :SCALE-GROUP-NAME
           "composite-scale"
           :SCALE-QUESTIONS
           '(THMIMPAC
             THM33GOA
             THM6LEAR
             THM9SHAP
             THM10OTH
             THM14IND
             THM22BOD
             THM23BAL
             THM34EXP
             THMCOMPC
             THMINTEG
             THMPHIL
             THMBEAUT
             THMGOODN
             THMPLAYF
             THMSESUF
             THMSEDIS
             THMUNCON
             TBVBALAN
             TBVHAPCA
             TBVGRATI
             THVSELFA
             THVUNCON
             THVSELFW)
           :MEAN-SCORE
           ".678"
           :STANDARD-DEVIATION
           ".125"
           :SAMPLE-N
           3217
           :NUM-QUESTIONS
           24
           :HELP-PRIORITY
           1
           :HELP-INFO
           "Your top values and goals may be somewhat 'programmed' into you by your parents, religion, school, friends, job, and many other outside influences to the degree that you are barely aware of where they came from.  Since these values and goals are so deep, you may not have questioned them or even barely been aware of them at times.  Nevertheless, they are very powerful determinates of your thinking and behavior.  Examining them, questionning them, and studying alternatives from people who are very happy and successful can increase your awareness of who you are and how you can maximize your own happiness and success.  Philosophers, psychologists, and religious leaders have come to many similar conclusions that you will find when  you study them.  In the end, your values are a choice, and changing your values can be a life-changing experience."
           :HELP-LINKS
           '("h3hiself.htm")
           :PARENTS
           '(COMPOSITE-SCALE)))

(DEFCLASS SID
          (BIO-TEXT)
          NIL
          (:DEFAULT-INITARGS
           :NAME-STRING
           "sID"
           :LABEL
           "sIDinfo"
           :SCALE-NAME
           "User ID Information"
           :DESCRIPTION
           "User ID Information"
           :SCALE-GROUP-NAME
           "BIO"
           :SCALE-QUESTIONS
           '(FRAME-BIO-INFO)
           :NUM-QUESTIONS
           6
           :HELP-PRIORITY
           NIL
           :HELP-INFO
           ""
           :HELP-LINKS
           NIL
           :PARENTS
           '(BIO-TEXT)))

(DEFCLASS ACAD-ACH
          (BIO SCALE)
          NIL
          (:DEFAULT-INITARGS
           :NAME-STRING
           "acad-ach"
           :LABEL
           "Acad Achievement"
           :SCALE-NAME
           "Academic Achievement"
           :DESCRIPTION
           "Based upon combination of completed education level and Grade Point Average"
           :SCALE-GROUP-NAME
           "BIO"
           :SCALE-QUESTIONS
           '(BIO3EDUC BIOHSGPA BIOCOLLE)
           :MEAN-SCORE
           NIL
           :STANDARD-DEVIATION
           NIL
           :SAMPLE-N
           NIL
           :NUM-QUESTIONS
           NIL
           :HELP-PRIORITY
           1
           :HELP-INFO
           ""
           :HELP-LINKS
           NIL
           :PARENTS
           '(BIO SCALE)))

(DEFCLASS NO-SCALE
          (BIO SCALE)
          NIL
          (:DEFAULT-INITARGS
           :NAME-STRING
           "no-scale"
           :LABEL
           "Non-scale items"
           :SCALE-NAME
           "Items not on any scale."
           :DESCRIPTION
           "Individual items not on any scale."
           :SCALE-GROUP-NAME
           "BIO"
           :MEAN-SCORE
           NIL
           :STANDARD-DEVIATION
           NIL
           :SAMPLE-N
           NIL
           :NUM-QUESTIONS
           NIL
           :SCALE-QUESTIONS
           '(BIO5INCO)
           :HELP-PRIORITY
           0
           :HELP-INFO
           ""
           :HELP-LINKS
           NIL
           :PARENTS
           '(BIO SCALE)))

(DEFCLASS SUTYPE
          (INTRO-MAQ)
          NIL
          (:DEFAULT-INITARGS
           :NAME-STRING
           "sutype"
           :LABEL
           "sUserType"
           :SCALE-NAME
           "User SHAQ Type"
           :DESCRIPTION
           "SHAQ scale-selection information."
           :SCALE-GROUP-NAME
           "BIO-MAC"
           :SCALE-QUESTIONS
           '(UTYPE)
           :NUM-QUESTIONS
           1
           :HELP-PRIORITY
           NIL
           :HELP-INFO
           ""
           :HELP-LINKS
           NIL
           :PARENTS
           '(INTRO-MAQ)))

(DEFCLASS SUGOALS
          (INTRO-MAQ)
          NIL
          (:DEFAULT-INITARGS
           :NAME-STRING
           "sugoals"
           :LABEL
           "sUserGoals"
           :SCALE-NAME
           "User SHAQ Goals"
           :DESCRIPTION
           "User Goals for taking SHAQ."
           :SCALE-GROUP-NAME
           "BIO-MAC"
           :SCALE-QUESTIONS
           '(UGOALS)
           :NUM-QUESTIONS
           1
           :HELP-PRIORITY
           NIL
           :HELP-INFO
           ""
           :HELP-LINKS
           NIL
           :PARENTS
           '(INTRO-MAQ)))

(DEFCLASS ST1HIGHERSELF
          (VALUES-THEMES HQ SCALE)
          NIL
          (:DEFAULT-INITARGS
           :NAME-STRING
           "sT1HigherSelf"
           :SCALE-NAME
           "sT1: Higher Self and IntegrityValues-Beliefs"
           :LABEL
           "sT1-HigherSelf-Integrity  happy balance devel discpn phil"
           :DESCRIPTION
           "Values self happiness, integrity, development, learning, discipline, self-sufficiency, independence, balance, and strong philosophy of life. This scale correlated .380 with overall happiness, .166 with low depression, .137 with low anxiety,.327 with low anger/aggression, .327 with the health scale, and .351 with overall relationship success, (10 items)"
           :SCALE-GROUP-NAME
           "values-themes"
           :SCALE-QUESTIONS
           '(THM6LEAR
             THM9SHAP
             THM14IND
             THM22BOD
             THM23BAL
             THMCOMPC
             THMINTEG
             THMPHIL
             THMSESUF
             THMSEDIS)
           :MEAN-SCORE
           ".749"
           :STANDARD-DEVIATION
           ".140"
           :SAMPLE-N
           3334
           :NUM-QUESTIONS
           10
           :HELP-PRIORITY
           1
           :HELP-INFO
           "Valuing happiness, integrity, self-development, a strong personal philosophy, and these other values seem to be an important component of living a happy life."
           :HELP-LINKS
           '("h3hiself.htm")
           :PARENTS
           '(VALUES-THEMES HQ SCALE)))

(DEFCLASS ST2SOCINTIMNOFAM
          (VALUES-THEMES HQ SCALE)
          NIL
          (:DEFAULT-INITARGS
           :NAME-STRING
           "sT2SocIntimNoFamScale"
           :LABEL
           "sT2-SocialIntimacyNotFamily  love/rom  respect support agreeable"
           :SCALE-NAME
           "Non-Family, Social-Intimacy Values"
           :DESCRIPTION
           "Values intimacy, romance and being liked, respected, and supported. This scale correlated .256 with overall happiness, .251 with low anger/aggression, .279 with the health scale, and .357 with overall relationship success,(6 items)"
           :SCALE-GROUP-NAME
           "values-themes"
           :SCALE-QUESTIONS
           '(THM8ROMA THM12PLE THMRESPE THM20INT THMLIKED THMSUPPO)
           :MEAN-SCORE
           ".735"
           :STANDARD-DEVIATION
           ".145"
           :SAMPLE-N
           3279
           :NUM-QUESTIONS
           6
           :HELP-PRIORITY
           0
           :HELP-INFO
           "Changing long-established, top values is not easy. If you want to change some of these values, you can start with the help-links below."
           :HELP-LINKS
           '("life_goals_and_meaning.htm")
           :PARENTS
           '(VALUES-THEMES HQ SCALE)))

(DEFCLASS ST3FAMCARE
          (VALUES-THEMES HQ SCALE)
          NIL
          (:DEFAULT-INITARGS
           :NAME-STRING
           "sT3FamCareScale"
           :LABEL
           "sT3-Family-EmotionalSupport and care giving parental love-respect"
           :SCALE-NAME
           "Family Values"
           :DESCRIPTION
           "Care-giving. This scale correlated .406 with overall happiness, .154 with low depression, .110 with low anxiety,.217 with low anger/aggression, .294 with the health scale, and .426 with overall relationship success, (3 items)"
           :SCALE-GROUP-NAME
           "values-themes"
           :SCALE-QUESTIONS
           '(THMCAREG THMPARLV THMFAMIL)
           :MEAN-SCORE
           ".701"
           :STANDARD-DEVIATION
           ".172"
           :SAMPLE-N
           2424
           :NUM-QUESTIONS
           3
           :HELP-PRIORITY
           0
           :HELP-INFO
           "Changing long-established, top values is not easy. If you want to change some of these values, you can start with the help-links below."
           :HELP-LINKS
           '("life_goals_and_meaning.htm")
           :PARENTS
           '(VALUES-THEMES HQ SCALE)))

(DEFCLASS ST4SUCCESSSTATUSMATER
          (VALUES-THEMES HQ SCALE)
          NIL
          (:DEFAULT-INITARGS
           :NAME-STRING
           "sT4SuccessStatusMater"
           :LABEL
           "sT4-SuccessStatusIncomeMaterialism"
           :SCALE-NAME
           "Achievement, Status, Material-Wellbeing Values"
           :DESCRIPTION
           "Values success, education, high income and possessions, respect, status, being a CEO, and completing important goals. This scale correlated .295 with overall happiness, .136 with low depression, .096 with low anxiety,.138 with low anger/aggression, .303 with the health scale, and .298 with overall relationship success,(8 items)"
           :SCALE-GROUP-NAME
           "values-themes"
           :SCALE-QUESTIONS
           '(THM3EDUC
             THM4MONE
             THM25POS
             THM26SUC
             THM30CEO
             THM33GOA
             THMRESPE
             THM1ACH
             THMRECOG)
           :MEAN-SCORE
           ".615"
           :STANDARD-DEVIATION
           ".148"
           :SAMPLE-N
           3269
           :NUM-QUESTIONS
           9
           :HELP-PRIORITY
           0
           :HELP-INFO
           "Changing long-established, top values is not easy. If you want to change some of these values, you can start with the help-links below."
           :HELP-LINKS
           '("life_goals_and_meaning.htm")
           :PARENTS
           '(VALUES-THEMES HQ SCALE)))

(DEFCLASS ST5-ORDERPERFECTIONGOODNESS
          (VALUES-THEMES HQ SCALE)
          NIL
          (:DEFAULT-INITARGS
           :NAME-STRING
           "sT5-OrderPerfectionGoodness"
           :LABEL
           "sT5-OrderPerfectionGoodness cleanliness juatice simplicity punctual"
           :SCALE-NAME
           "Idealistic, Mental, Order, Aesthetic Values"
           :DESCRIPTION
           "Values goodness, beauty, idealism, orderliness, perfection, organization, justice, simplicity, cleanliness, wholeness. This scale correlated .310 with overall happiness, .102 with low depression, .214 with low anger/aggression, .278 with the health scale, and .338 with overall relationship success, (7 items)"
           :SCALE-GROUP-NAME
           "values-themes"
           :SCALE-QUESTIONS
           '(THMORDER
             THMCLEAN
             THMPERFE
             THMJUSTI
             THMSIMPL
             THMBEAUT
             THMGOODN
             THMWHOLE)
           :MEAN-SCORE
           ".649"
           :STANDARD-DEVIATION
           ".142"
           :SAMPLE-N
           3334
           :NUM-QUESTIONS
           8
           :HELP-PRIORITY
           0
           :HELP-INFO
           "Changing long-established, top values is not easy. If you want to change some of these values, you can start with the help-links below."
           :HELP-LINKS
           '("life_goals_and_meaning.htm")
           :PARENTS
           '(VALUES-THEMES HQ SCALE)))

(DEFCLASS ST6GODSPIRITRELIG
          (VALUES-THEMES HQ SCALE)
          NIL
          (:DEFAULT-INITARGS
           :NAME-STRING
           "sT6GodSpiritRelig"
           :LABEL
           "sT6-GodSpiritualReligion"
           :SCALE-NAME
           "God, Spiritual Intimacy Values"
           :DESCRIPTION
           "Values spiritual intimacy, God, religion, obedience to God. This scale correlated .302 with overall happiness, .126 with low depression, .137 with low anxiety,.103 with low anger/aggression, .224 with the health scale, and .269 with overall relationship success, (4 items)"
           :SCALE-GROUP-NAME
           "values-themes"
           :SCALE-QUESTIONS
           '(THMOBGOD THMRELGD THMSPIRI THMRELIG)
           :MEAN-SCORE
           ".555"
           :STANDARD-DEVIATION
           ".240"
           :SAMPLE-N
           2473
           :NUM-QUESTIONS
           4
           :HELP-PRIORITY
           0
           :HELP-INFO
           "Changing long-established, top values is not easy. If you want to change some of these values, you can start with the help-links below."
           :HELP-LINKS
           '("life_goals_and_meaning.htm")
           :PARENTS
           '(VALUES-THEMES HQ SCALE)))

(DEFCLASS ST7IMPACTCHALLENGEEXPLOR
          (VALUES-THEMES HQ SCALE)
          NIL
          (:DEFAULT-INITARGS
           :NAME-STRING
           "sT7ImpactChallengeExplor"
           :LABEL
           "sT7-ImpactContributionMentalChallenge-exploration"
           :SCALE-NAME
           "Contribution, Impact Values"
           :DESCRIPTION
           "Values giving, impact on world, mental challenge, exploration, uniqueness, and diversity. This scale correlated .347 with overall happiness, .136 with low depression, .133 with low anxiety,.296 with low anger/aggression, .277 with the health scale, and .326 with overall relationship success, (6 items)"
           :SCALE-GROUP-NAME
           "values-themes"
           :SCALE-QUESTIONS
           '(THM10OTH
             THMIMPAC
             THM28CRE
             THMMENCH
             THM34EXP
             THMUNIQU
             THMCREAT)
           :MEAN-SCORE
           ".672"
           :STANDARD-DEVIATION
           ".150"
           :SAMPLE-N
           3312
           :NUM-QUESTIONS
           7
           :HELP-PRIORITY
           1
           :HELP-INFO
           "Changing long-established, top values is not easy. If you want to change some of these values, you can start with the help-links below."
           :HELP-LINKS
           '("life_goals_and_meaning.htm")
           :PARENTS
           '(VALUES-THEMES HQ SCALE)))

(DEFCLASS ST8ATTENTIONFUNEASY
          (VALUES-THEMES HQ SCALE)
          NIL
          (:DEFAULT-INITARGS
           :NAME-STRING
           "sT8AttentionFunEasy"
           :LABEL
           "sT8-AttentionFunEasy playful adventure"
           :SCALE-NAME
           "Adventure, Play Values"
           :DESCRIPTION
           "Values adventure, play, attention, fun, effortlessness. This scale correlated .311 with overall happiness, .106 with low depression, .101 with low anxiety,.192 with low anger/aggression, .247 with the health scale, and .335 with overall relationship success, (4 items)"
           :SCALE-GROUP-NAME
           "values-themes"
           :SCALE-QUESTIONS
           '(THMATTEN THM5ADVE THMEFORT THMPLAYF)
           :HELP-PRIORITY
           0
           :HELP-INFO
           "Changing long-established, top values is not easy. If you want to change some of these values, you can start with the help-links below."
           :HELP-LINKS
           '("life_goals_and_meaning.htm")
           :PARENTS
           '(VALUES-THEMES HQ SCALE)))

(DEFCLASS ST9VALUESELFALLUNCOND
          (VALUES-THEMES HQ SCALE)
          NIL
          (:DEFAULT-INITARGS
           :NAME-STRING
           "sT9ValueSelfAllUncond"
           :LABEL
           "sT9-ValueSelf-AllUnconditionally"
           :SCALE-NAME
           "Unconditional Love Values"
           :DESCRIPTION
           "Unconditional valuing of self and others--A key HQ scale. This scale correlated .461 with overall happiness, .276 with low depression, .209 with low anxiety,.311 with low anger/aggression, .232 with the health scale, and .336 with overall relationship success, (2 items)"
           :SCALE-GROUP-NAME
           "values-themes"
           :SCALE-QUESTIONS
           '(THVUNCON THVSELFW THVSELFA THMUNCON)
           :MEAN-SCORE
           ".560"
           :STANDARD-DEVIATION
           ".208"
           :SAMPLE-N
           3246
           :NUM-QUESTIONS
           4
           :HELP-PRIORITY
           1
           :HELP-INFO
           "Changing long-established, top values is not easy. If you want to change some of these values, you can start with the help-links below."
           :HELP-LINKS
           '("life_goals_and_meaning.htm")
           :PARENTS
           '(VALUES-THEMES HQ SCALE)))

(DEFCLASS ST10OVERCMPROBACCEPTSELF
          (VALUES-THEMES HQ SCALE)
          NIL
          (:DEFAULT-INITARGS
           :NAME-STRING
           "sT10OvercmProbAcceptSelf"
           :LABEL
           "sT10-OvercomeProblems-AcceptAllofSelf"
           :SCALE-NAME
           "Overcoming Personal Problems Values"
           :DESCRIPTION
           "Values overcoming problems, self-protection, and personal healing.  This scale correlated .185 with overall happiness, .135 with low anger/aggression, .168 with the health scale, and .209 with overall relationship success, (2 items)"
           :SCALE-GROUP-NAME
           "values-themes"
           :SCALE-QUESTIONS
           '(THMSPROT THMPHURT)
           :MEAN-SCORE
           ".585"
           :STANDARD-DEVIATION
           ".106"
           :SAMPLE-N
           2385
           :NUM-QUESTIONS
           2
           :HELP-PRIORITY
           0
           :HELP-INFO
           "Changing long-established, top values is not easy. If you want to change some of these values, you can start with the help-links below."
           :HELP-LINKS
           '("life_goals_and_meaning.htm")
           :PARENTS
           '(VALUES-THEMES HQ SCALE)))

(DEFCLASS ST11DUTYPUNCTUAL
          (VALUES-THEMES HQ SCALE)
          NIL
          (:DEFAULT-INITARGS
           :NAME-STRING
           "sT11DutyPunctual"
           :LABEL
           "sT11-DutyPunctuality"
           :SCALE-NAME
           "Duty, Obligation Values"
           :DESCRIPTION
           "Values duty, obligation, and punctuality. This scale correlated .265 with overall happiness,  .097 with low depression, .155 with low anger/aggression, .264 with the health scale, and .264 with overall relationship success, (2 items)"
           :SCALE-GROUP-NAME
           "values-themes"
           :SCALE-QUESTIONS
           '(THMPUNCT THMOBLIG)
           :MEAN-SCORE
           "582"
           :STANDARD-DEVIATION
           ".177"
           :SAMPLE-N
           2510
           :NUM-QUESTIONS
           2
           :HELP-PRIORITY
           0
           :HELP-INFO
           "Changing long-established, top values is not easy. If you want to change some of these values, you can start with the help-links below."
           :HELP-LINKS
           '("life_goals_and_meaning.htm")
           :PARENTS
           '(VALUES-THEMES HQ SCALE)))

(DEFCLASS SWORLDVIEW
          (BELIEFS HQ SCALE)
          NIL
          (:DEFAULT-INITARGS
           :NAME-STRING
           "sworldview"
           :DATA-NAME-STRING
           "sworldvi"
           :LABEL
           "s-Positive world view"
           :SCALE-NAME
           "Positive World View"
           :DESCRIPTION
           "Optimism about the future of the world and own life, lack of entitlement thinking, plus daily positive versus negative thoughts. How constructively and positively you view the world and the future can significantly affect motivation, relationships, happiness, and success in most life areas. 
      Living life with a sense of gratitude (versus a sense of entitlement and deprivation) may be one of the most important factors for 
      happiness. It correlates .687 with happiness, .528 with low depression, .375 with low anxiety, .235 with 
      low anger/aggression, .384 with relationship success, .233 with positive health outcomes. (10 items)"
           :SCALE-GROUP-NAME
           "beliefs"
           :SCALE-QUESTIONS
           '(WOVPROGR
             WOVGOODF
             WOVMYLIF
             WOVNFAIR
             TBVENTIT
             WOVINJUR
             WOVABUND
             TBVGRATI
             WOVENTIT
             WOVGRATE
             WOVPOSTH)
           :MEAN-SCORE
           ".624"
           :STANDARD-DEVIATION
           ".153"
           :SAMPLE-N
           3162
           :NUM-QUESTIONS
           10
           :HELP-PRIORITY
           1
           :HELP-INFO
           "If you scored very low, it could cause you to have a problem with anxiety, depression, or low motivation. Examine your underlying negative beliefs and your expectations of what others (or the world) owes you.  Reading books on positive motivation and learning from people with positive motivation can help. Check our help link and even consider counseling if this troubles you."
           :HELP-LINKS
           '("h4world.htm")
           :PARENTS
           '(BELIEFS HQ SCALE)))

(DEFCLASS STBSLFWO
          (BELIEFS HQ SCALE)
          NIL
          (:DEFAULT-INITARGS
           :NAME-STRING
           "stbslfwo"
           :LABEL
           "s-Self-worth beliefs"
           :SCALE-NAME
           "Unconditional Worth of Self and Others"
           :DESCRIPTION
           "A key HQ scale. Degree to which one accepts/values all parts of one's self and others not contingent on others' individual characteristics or behaviors. Unconditionally valuing yourself and others means that an important part of a person's worth is not dependent upon their success, income, appearance, personality, ethnic group, morality, or any other quality.  Self-worth is the unconditional aspect of self-esteem. It differs from self-confidence which is the aspect conditional upon success or other factors. It correlates .391 with overall happiness, .283 with low depression, .260 with low anxiety,.300 with low anger/aggression."
           :SCALE-GROUP-NAME
           "beliefs"
           :SCALE-QUESTIONS
           '(TBVOTHFI
             TBVLIKED
             TBVWEAK
             TBVBEST
             TBVRULES
             TBVWINNE
             TBVBALAN
             TBVHAPCA
             THVSELFA
             THVUNCON
             THVSELFW)
           :MEAN-SCORE
           ".595"
           :STANDARD-DEVIATION
           ".126"
           :SAMPLE-N
           3246
           :NUM-QUESTIONS
           12
           :HELP-PRIORITY
           1
           :HELP-INFO
           "If you didn't score high, then look over the individual items and focus on beliefs that may be more negative, lower self-esteem, lower self-effectiveness, or lower happiness. Also, check your score and responses on the Life Themes scale. Internal mental values can help you achieve greater unconditional self-worth. Then go to our help link."
           :HELP-LINKS
           '("h5self.htm")
           :PARENTS
           '(BELIEFS HQ SCALE)))

(DEFCLASS SIECONTR
          (BELIEFS HQ SCALE)
          NIL
          (:DEFAULT-INITARGS
           :NAME-STRING
           "siecontr"
           :LABEL
           "s-Int-Ext control beliefs"
           :SCALE-NAME
           "Internal vs External Control (I-E) Beliefs"
           :DESCRIPTION
           "Degree of self-sufficiency and responsibility one takes for his/her own life, health, and happiness without undue influence from others. More internal direction, planning, and self-control versus influence by others or external forces. Internal control correlates .357 with overall happiness, .366 with low depression, .393 with low anxiety, .255 with low anger/aggression. 
      Believing that you are in control of your own emotions, behavior, likes and dislikes, and your life increases internal control. Making your own decisions and plans and giving adequate priority to your own needs also helps. (7 items)"
           :SCALE-GROUP-NAME
           "beliefs"
           :SCALE-QUESTIONS
           '(IECSELFS
             IECICONT
             IECGENET
             IECPEOPL
             IECDEPEN
             IECCOFEE
             IECCOPRB)
           :MEAN-SCORE
           "616"
           :STANDARD-DEVIATION
           ".162"
           :SAMPLE-N
           3246
           :NUM-QUESTIONS
           7
           :HELP-PRIORITY
           1
           :HELP-INFO
           "Learning how to increase your internal control can increase self-esteem and assertiveness, and it can lower anxiety and depression. Start with the help link."
           :HELP-LINKS
           '("h6intern.htm")
           :PARENTS
           '(BELIEFS HQ SCALE)))

(DEFCLASS SETHBEL
          (BELIEFS HQ SCALE)
          NIL
          (:DEFAULT-INITARGS
           :NAME-STRING
           "sethbel"
           :DATA-NAME-STRING
           "sEthBeliefs"
           :LABEL
           "sethbel"
           :SCALE-NAME
           "Absolute-Grounded, Integrated Ethics"
           :DESCRIPTION
           "Ethics philosophers and religions agree on many general principles. It is generally agreed that better ethics are based more on absolute principles and wholes such as humanity, nature, or God rather than on more specific or situational aspects such as self, family, or any group.  An ethical system that judges people more on their inner qualities and assumes some basic inner goodness and inherent value in all people. It includes questions about astrology (very much frowned upon by philosophers, scientists, and religion) and life after death (a common belief).  Many people base their ethics on the rewards they expect after death. (14 items). This scale correlated 0.459 with overall happiness, 0.306 with low depression, 0.336 with low anxiety, and 0.463 with low anger/aggression."
           :SCALE-GROUP-NAME
           "beliefs"
           :SCALE-QUESTIONS
           '(TB2RELAT
             TB2PUNIS
             TBV2NOTR
             TB2GROUM
             TB2SELFM
             TB2GDWRK
             TB2GDATT
             TB2ALLGD
             TB2REASO
             TBV2ASTR
             TB2IDHUM
             TB2LIFAD
             TB2MOVEM
             TBV2CORE)
           :MEAN-SCORE
           0.62
           :STANDARD-DEVIATION
           0.112
           :SAMPLE-N
           2366
           :NUM-QUESTIONS
           14
           :HELP-PRIORITY
           1
           :HELP-INFO
           "Basing your values and beliefs on general abstract principles and mental-values such as integrity, truth, love, and happiness and valuing all people and all nature is not only a commonality most great philosophers and religions have in common, it also helps people be happier and more successful."
           :HELP-LINKS
           '("life_goals_and_meaning.htm")
           :PARENTS
           '(BELIEFS HQ SCALE)))

(DEFCLASS SGRFEARS
          (BELIEFS HQ SCALE)
          NIL
          (:DEFAULT-INITARGS
           :NAME-STRING
           "sgrfears"
           :LABEL
           "s-Low greatest fears"
           :SCALE-NAME
           "Low Greatest Fears"
           :DESCRIPTION
           "A key HQ scale. Low degree of common major fears such as illness, poverty, death, failure, rejection, and confidence in ability to overcome fears or circumstances. Fears are interesting to people per se.  Your greatest fears reflect your top values and goals in life and are related to your happiness and success. The underlying fear is usually that one's greatest values/goals will be unsatisfied. Your underlying fears can be powerful sources of pain and avoidance motivation. Underlying fears give your little jolts of fear or anxiety daily as you get a thought that is related to them. 
      Overcoming these underlying fears can help you be less fearful and anxious the rest of your life! This scale correlates .462 with happiness, .417 with low depression, .375 with low anxiety, .241 with low anger/aggression. (12 items)"
           :SCALE-GROUP-NAME
           "beliefs"
           :SCALE-QUESTIONS
           '(WOVHAPPY
             WOVPOOR
             WOVILL
             WOVDEATH
             WOVALONE
             WOVNOLOV
             WOVLIKED
             WOVPERSO
             WOVPROBL
             WOVDISCO
             WOVSUCCE
             WOVOVERC)
           :MEAN-SCORE
           ".601"
           :STANDARD-DEVIATION
           ".174"
           :SAMPLE-N
           3162
           :NUM-QUESTIONS
           12
           :HELP-PRIORITY
           1
           :HELP-INFO
           "Your fears could cause you to have problems with anxiety, depression, anger, low self-esteem, or low motivation. It is important that you check our help link and even consider counseling if one or more underlying fears trouble you. Reducing underlying fears can reduce all the daily fears that are linked to these deeper fears. Learn to face them, explore them, and find new ways of thinking about them or coping with them from those who have been successful in overcoming them."
           :HELP-LINKS
           '("h43dark.htm")
           :PARENTS
           '(BELIEFS HQ SCALE)))

(DEFCLASS SSLFCONF
          (SKILLS-CONFIDENCE HQ SCALE)
          NIL
          (:DEFAULT-INITARGS
           :NAME-STRING
           "sslfconf"
           :LABEL
           "s-Self-confidence areas"
           :SCALE-NAME
           "Self-Confidence and Life Skill Areas"
           :DESCRIPTION
           "A list of knowledge and skills areas was developed, and subjects were asked to rate their own confidence/skills for each area. The Self-Confidence scale measures the contingent, efficacy aspect of self-esteem.  This scale has emerged as a separate factor from the other main scales in factor analytic studies.  Your self-report ratings should reflect a combination of actual knowledge and skill and of confidence level. It is similar to the concept of self-efficacy.
      Your life skills and self-confidence can be powerful factors in your success and happiness in many life areas--including your academic and career success. It correlated .629 with happiness, .421 with low depression, .351 with low anxiety, .186 with low anger/aggression,.367 with relationship success, .233 with positive health outcomes. (41 items)"
           :SCALE-GROUP-NAME
           "skills-confidence"
           :SCALE-QUESTIONS
           '(SLFLEARN
             SLFCRITT
             SLFRESEA
             SLFANALY
             SLFSYNTH
             SLFCREAT
             SLFCOMPU
             SLFBIOSC
             SLFNATSC
             SLFLIBAR
             SLFSOCSC
             SLFPHILR
             SLFPERFA
             SLFFINEA
             SLFBUSAN
             SLFHEAL2
             SLFENGIN
             SLFEDUCH
             SLFIQ
             SLFDECMA
             SLFTIMEM
             SLFCOPE
             SLFSELF4
             SLFSELFM
             SLFACHAN
             SLFMANA6
             SLFHEAL3
             SLFMEETP
             SLFLISTE
             SLFSELF5
             SLFCONFL
             SLFPERSU
             SLFMANA7
             SLFHELPS
             SLFSPEAK
             SLFJOBSE
             SLFADAPT
             SLFHAPPY
             SLFOPTIM
             SLFFRIEN
             SLFINDEP)
           :MEAN-SCORE
           ".682"
           :STANDARD-DEVIATION
           ".143"
           :SAMPLE-N
           3225
           :NUM-QUESTIONS
           41
           :HELP-PRIORITY
           1
           :HELP-INFO
           "Look over questions that you scored low on, ask yourself why, and ask yourself what you can do to improve these areas. Target one or two main areas to start with and begin a self-improvement program. See our help link for help."
           :HELP-LINKS
           '("h54confi.htm")
           :PARENTS
           '(SKILLS-CONFIDENCE HQ SCALE)))

(DEFCLASS SSELFMAN
          (SKILLS-CONFIDENCE HQ SCALE)
          NIL
          (:DEFAULT-INITARGS
           :NAME-STRING
           "sselfman"
           :LABEL
           "s-Self-management skills"
           :SCALE-NAME
           "Self-Management Skills"
           :DESCRIPTION
           "A key HQ scale. Skills related to self-care, decision-making, goal-setting, and time-management including leading a balanced life and attending to all main need/value areas. Many items are based upon  OPATSM time-management system.  Research shows that these vital skills are related to a more successful and happier life in almost all life areas. This scale correlated .606 with overall life happiness, .297 with low depression, .365 with relationship success, and over .30 with job status. (15 items)"
           :SCALE-GROUP-NAME
           "skills-confidence"
           :SCALE-QUESTIONS
           '(SMTBUSY
             SMTFUTUR
             SMTEXERC
             SMTEATH
             SMTSLEEP
             SMTSDEVE
             SMTNPROC
             SMTPTODO
             SMTGOALS
             SMTSCHD
             SMT2DTOD
             SMTACMPL
             SMTGHELP
             SMTBALAN
             SMTHABCH)
           :MEAN-SCORE
           ".537"
           :STANDARD-DEVIATION
           ".160"
           :SAMPLE-N
           1936
           :NUM-QUESTIONS
           15
           :HELP-PRIORITY
           1
           :HELP-INFO
           "Self-management of setting clear goals, good time-management (including using weekly/daily prioritized task lists in each life area) is a key factor in people's happiness and success. Try the time-management skills in the help-link."
           :HELP-LINKS
           '("h9patsm.htm")
           :PARENTS
           '(SKILLS-CONFIDENCE HQ SCALE)))

(DEFCLASS SEMOTCOP
          (SKILLS-CONFIDENCE HQ SCALE)
          NIL
          (:DEFAULT-INITARGS
           :NAME-STRING
           "semotcop"
           :LABEL
           "s-Emotional coping skills"
           :SCALE-NAME
           "Emotional Coping Skills"
           :DESCRIPTION
           "A key HQ scale.  How you habitually react to emotionally stressful situations. What do you do when you are upset? This scale correlates .683 with overall happiness, .578 with low depression, .466 with low anxiety, .374 with low anger/aggressiveness, and .314 with good, intimate personal relationships.  It is also a moderate predictor of academic and career success. (20 items)"
           :SCALE-GROUP-NAME
           "skills-confidence"
           :SCALE-QUESTIONS
           '(COPNEGTH
             COPCOPEA
             COPPSOLV
             COPAVOPS
             COPEMOTA
             COPBLAME
             COPWDRW
             COPFUN
             COPTALKS
             COPPEPTA
             COPSMOKE
             COPDRUG
             COPPE
             COPNEGPH
             COPSELFB
             COPPOSPH
             COPEXPEC
             COPHAPPY
             COPAVOAT
             COPSELFE)
           :MEAN-SCORE
           ".585"
           :STANDARD-DEVIATION
           ".135"
           :SAMPLE-N
           3273
           :NUM-QUESTIONS
           20
           :HELP-PRIORITY
           1
           :HELP-INFO
           "Read the questions below and your responses to what you do when you are upset. Learn to use more constructive coping responses like problem-solving, positive thinking, positive social behavior, and constructive activities to feel better instead of negative coping such as negative thinking, blaming, withdrawal, addicitve habits, etc.  Improving emotional coping skills is one of the simplest ways to lead a more successful and happier life (and escape negative habits like addictions, avoidance, and negativism"
           :HELP-LINKS
           '("h8hf2.htm")
           :PARENTS
           '(SKILLS-CONFIDENCE HQ SCALE)))

(DEFCLASS INTSS1AASSERTCR
          (INTERPERSONAL HQ SCALE)
          NIL
          (:DEFAULT-INITARGS
           :NAME-STRING
           "IntSS1aAssertCR"
           :LABEL
           "IntSS1a-AssertiveConfRes"
           :SCALE-NAME
           "Assertive Communication and Conflict Resolution"
           :DESCRIPTION
           "A key HQ scale: democratic, assertive communication and conflict resolution.  Seeks win-win solutions to conflicts, with clear, caring, understanding, non-defensive, calm, persistent, honest, friendly, non-threatening behaviors. Finding and resolving the basic, underlying issues is very important. You ability to resolve differences with others is a critical component of any good, lasting relationship from work to marriage. It is a vital skill in many professional situations. Our research shows a correlation of more than .70 between this scale and marital relationship happiness and .365 with overall relationship success. It also correlated .463 with overall happiness, .236 with low depression, .202 with low anxiety, .355 with low anger/aggression, .306 with positive health. A low score may predict a series of relationships that end in conflict or being left. (13 items)"
           :SCALE-GROUP-NAME
           "interpersonal"
           :SCALE-QUESTIONS
           '(CR1ISSUE
             CRRESOLV
             CRNTHREA
             CRUNDERL
             CRWINWIN
             CRLONGTK
             CRSUMMAR
             CRCPRAIS
             CRBOASSR
             CROPHONE
             CRANGRES
             CRTLKMOR
             CREQWIN
             INTUNDRL)
           :MEAN-SCORE
           ".563"
           :STANDARD-DEVIATION
           ".186"
           :SAMPLE-N
           2664
           :NUM-QUESTIONS
           14
           :HELP-PRIORITY
           1
           :HELP-INFO
           "Look over the individual questions to see where strengths and areas needing improvement lie. Then go to our help links on assertion training and conflict resolution."
           :HELP-LINKS
           '("assertion_training.htm")
           :PARENTS
           '(INTERPERSONAL HQ SCALE)))

(DEFCLASS INTSS1BOPENHON
          (INTERPERSONAL HQ SCALE)
          NIL
          (:DEFAULT-INITARGS
           :NAME-STRING
           "IntSS1bOpenHon"
           :LABEL
           "IntSS1bIntimateOpenHonest"
           :SCALE-NAME
           "Intimacy"
           :DESCRIPTION
           "A key HQ scale: Open, Honest, Communication and Goal Harmony. Reveal most private and sensitive thoughts and feelings regularly, shared goals, and feelings of relationship commitment. This scale correlated over .70 with marital satisfaction and .435 with overall relationship success. ,.503 with overall happiness, .289 with low depression, .230 with low anxiety,.302 with low anger/aggression, and .293 with the health scale. Intimacy is a critical part of any truly close relationship--especially marital relationships. (10 items)"
           :SCALE-GROUP-NAME
           "interpersonal"
           :SCALE-QUESTIONS
           '(INTTELAL
             INTSMGOA
             INTEQDEC
             INTIOPEN
             INTWEOPN
             INTDAILY
             INTALLOP
             INTKNPFE
             INCOMTWO)
           :MEAN-SCORE
           ".643"
           :STANDARD-DEVIATION
           ".192"
           :SAMPLE-N
           2491
           :NUM-QUESTIONS
           10
           :HELP-PRIORITY
           1
           :HELP-INFO
           "If you didn't score high, you want to improve this area to increase your ability to relate to the opposite sex or any close relationship with a mature person. Examine the individual questions to set goals for improvement and check out our links."
           :HELP-LINKS
           '("conversational_skills.htm" "c14-lisn.htm")
           :PARENTS
           '(INTERPERSONAL HQ SCALE)))

(DEFCLASS INTSS2ROMANTC
          (INTERPERSONAL HQ SCALE)
          NIL
          (:DEFAULT-INITARGS
           :NAME-STRING
           "IntSS2Romantc"
           :LABEL
           "IntSS2-Romantic=sromantc"
           :SCALE-NAME
           "Close, Romantic Interactions"
           :DESCRIPTION
           "Romantic attraction, playful, romantic surprises, fantasize about partner, go to romantic places, have special celebrations together. It correlates .267 with relationship success, .394 with overall happiness, .173 with low depression, and .238 with low aggression. (7 items)"
           :SCALE-GROUP-NAME
           "interpersonal"
           :SCALE-QUESTIONS
           '(ROMSURPR
             ROMFANTA
             ROMCELEB
             ROMPLACE
             ROMATTRA
             ROMPLAYF
             ROMCHARM)
           :MEAN-SCORE
           ".615"
           :STANDARD-DEVIATION
           ".219"
           :SAMPLE-N
           2938
           :NUM-QUESTIONS
           7
           :HELP-PRIORITY
           0
           :HELP-INFO
           "Examine your answers and look at our help links."
           :HELP-LINKS
           '("conversational_skills.htm"
             "developing_intimacy.htm"
             "c14-lisn.htm"
             "chaprels.htm")
           :PARENTS
           '(INTERPERSONAL HQ SCALE)))

(DEFCLASS INTSS3LIBROLE
          (INTERPERSONAL HQ SCALE)
          NIL
          (:DEFAULT-INITARGS
           :NAME-STRING
           "IntSS3LibRole"
           :LABEL
           "IntSS3-LiberatedRoles=slibrole"
           :SCALE-NAME
           "Liberated, Equal Roles"
           :DESCRIPTION
           "Equality in decisions, roles, chores/tasks, career priority, some non-stereotypical role behaviors. Our research seems to show that people in relationships with more liberated roles may be happier. However, people with traditional male-female relationship views can be happy if both partners agree on these views and the male makes decisions adequately taking into account his/her partner's desires and needs. It correlated .166 with overall happiness, .182 with low anxiety, and .292 with low anger/aggression. (7 items)"
           :SCALE-GROUP-NAME
           "interpersonal"
           :SCALE-QUESTIONS
           '(LROMTASK
             LROFTASK
             LRMFINAL
             LROEMBAR
             LROMSTRO
             LROEQINC
             LRCARCON)
           :MEAN-SCORE
           ".703"
           :STANDARD-DEVIATION
           ".188"
           :SAMPLE-N
           3056
           :NUM-QUESTIONS
           7
           :HELP-PRIORITY
           0
           :HELP-INFO
           "This is an area where finding a partner with similar views or where resolving differences can be important."
           :HELP-LINKS
           '("finding_mr_mrs_right.htm")
           :PARENTS
           '(INTERPERSONAL HQ SCALE)))

(DEFCLASS INTSS4LOVERES
          (INTERPERSONAL HQ SCALE)
          NIL
          (:DEFAULT-INITARGS
           :NAME-STRING
           "IntSS4LoveRes"
           :LABEL
           "IntSS4-Love Respect"
           :SCALE-NAME
           "Love and Respect for Partner"
           :DESCRIPTION
           "Valuing Your Partner--A key HQ scale.  Love, respect, cheerfully do favors for,  praise more than criticize partner.  Feel free when partner home, feel committed not trapped. This Love and Respect  scale correlated .425 with overall relationship success. ,.476 with overall happiness, .289 with low depression, .268 with low anxiety,.432 with low anger/aggression, and .295 with the health scale. Love and Respect  is a critical part of any truly close relationship--especially marital relationships. (9 items)"
           :SCALE-GROUP-NAME
           "interpersonal"
           :SCALE-QUESTIONS
           '(CRIFAVOR
             CRIFOLUP
             INTCOMIT
             INTRESPT
             INTLSQPR
             INTLOVE
             INNEVARG)
           :MEAN-SCORE
           ".751"
           :STANDARD-DEVIATION
           ".154"
           :SAMPLE-N
           2491
           :NUM-QUESTIONS
           7
           :HELP-PRIORITY
           1
           :HELP-INFO
           "Loving and respecting your partner comes from many factors beyond your direct control.  However, acting as if you really love and/or respect someone can increase both your valuing them and their caring and positive actions toward you.  Both effects can increase love and respect.  Also. learning to understand the history, circumstances, and motivation behind aspects you don't value in them may help you feel better about those aspects. Helping them understand your history and circumstances may also help. Doing favors, expressing positive feelings, letting them have their way enough, and giving complements may also help."
           :HELP-LINKS
           '("developing_intimacy.htm")
           :PARENTS
           '(INTERPERSONAL HQ SCALE)))

(DEFCLASS INTSS5INDEP
          (INTERPERSONAL HQ SCALE)
          NIL
          (:DEFAULT-INITARGS
           :NAME-STRING
           "IntSS5Indep"
           :LABEL
           "IntSS5-Rel Independ"
           :SCALE-NAME
           "Relationship Independence-Autonomy"
           :DESCRIPTION
           "Autonomy within committed relationship.  Partners feeling encouraged and free to pursue own interests and friendships.  Each enjoy being alone, having partially separate funds, and believing they could be happy with another person if necessary. Value individual happiness over marriage per se. This scale correlated .215 with overall relationship success. ,.379 with overall happiness, .288 with low depression, .308 with low anxiety,.389 with low anger/aggression, and .296 with the health scale. (11 items)"
           :SCALE-GROUP-NAME
           "interpersonal"
           :SCALE-QUESTIONS
           '(INRLUNCH
             INRINHAP
             INRIGROW
             INRSAYWE
             INDIFGOA
             INFINDAN
             INENALON
             INOKALON
             INRHATEA
             INSEPINT
             INRMONEY
             INRBEALN
             INALCNST
             INRFREEH
             INRFRIEN)
           :MEAN-SCORE
           ".676"
           :STANDARD-DEVIATION
           ".144"
           :SAMPLE-N
           2862
           :NUM-QUESTIONS
           15
           :HELP-PRIORITY
           1
           :HELP-INFO
           "Learning to give each other the freedom to make choices, spend their time as they like, be alone when they want, and supporting their interests even when different are just a few imporant ways that partners can increase positive independent intimacy."
           :HELP-LINKS
           '("finding_mr_mrs_right.htm" "developing_intimacy.htm")
           :PARENTS
           '(INTERPERSONAL HQ SCALE)))

(DEFCLASS INTSS6POSSUP
          (INTERPERSONAL HQ SCALE)
          NIL
          (:DEFAULT-INITARGS
           :NAME-STRING
           "IntSS6PosSup"
           :LABEL
           "IntSS6-Positive Supportive Com"
           :SCALE-NAME
           "Positive, Supportive Communication"
           :DESCRIPTION
           "A key HQ scale. Supportive of partner even during disagreements, rarely use negative labels, exaggerations, threats, anger.  If one partner gets angry, other usually uses deescalating response. This scale correlated .272 with overall relationship success. ,.421 with overall happiness, .275 with low depression, .267 with low anxiety,.538 with low anger/aggression, and .307 with the health scale. Note the large correlation with low anger and aggression. (7 items)"
           :SCALE-GROUP-NAME
           "interpersonal"
           :SCALE-QUESTIONS
           '(CRNTHREA
             CRNNEGLB
             CREXAGGR
             CRANGANG
             CRIPRAIS
             CRANGRES
             INDIFDEC
             INSTSHLP)
           :MEAN-SCORE
           ".598"
           :STANDARD-DEVIATION
           ".175"
           :SAMPLE-N
           2603
           :NUM-QUESTIONS
           8
           :HELP-PRIORITY
           1
           :HELP-INFO
           "Increasing more complements and caring statements/actions and decreasing negative statements/actions can dramatically change a relationship. Try the help links below."
           :HELP-LINKS
           '("developing_intimacy.htm" "assertion_training.htm")
           :PARENTS
           '(INTERPERSONAL HQ SCALE)))

(DEFCLASS INTSS7COLLAB
          (INTERPERSONAL HQ SCALE)
          NIL
          (:DEFAULT-INITARGS
           :NAME-STRING
           "IntSS7Collab"
           :LABEL
           "IntSS7-Collaborative"
           :SCALE-NAME
           "Collaborative, Non-Manipulative Relationship"
           :DESCRIPTION
           "A key HQ scale. Neither partner manipulating or controlling.  Partners feel safe revealing weaknesses. Can work together or teach each other effectively. This scale correlated .317 with overall relationship success. ,.406 with overall happiness, .268 with low depression, .235 with low anxiety,.328 with low anger/aggression, and .271 with the health scale. (7 items)"
           :SCALE-GROUP-NAME
           "interpersonal"
           :SCALE-QUESTIONS
           '(CRTKLONG
             CRTEWEAK
             CRMANIPU
             CRREPRAI
             CRTEACH
             CRTLKMOR
             INTWKTOG)
           :MEAN-SCORE
           ".562"
           :STANDARD-DEVIATION
           ".177"
           :SAMPLE-N
           2542
           :NUM-QUESTIONS
           7
           :HELP-PRIORITY
           1
           :HELP-INFO
           ""
           :HELP-LINKS
           '("assertion_training.htm" "developing_intimacy.htm")
           :PARENTS
           '(INTERPERSONAL HQ SCALE)))

(DEFCLASS SCOLLEGE
          (ACAD-LEARNING SCALE)
          NIL
          (:DEFAULT-INITARGS
           :NAME-STRING
           "scollege"
           :LABEL
           "scollege info"
           :SCALE-NAME
           "College Student Info"
           :DESCRIPTION
           "Basic College Student Information"
           :SCALE-GROUP-NAME
           "ACAD-LEARNING"
           :SCALE-QUESTIONS
           '(STPARED
             STUCLASS
             STUDEGRE
             STUSEMES
             STMAJGPA
             STACADST
             STUCOLLE
             STUMAJOR
             STUSPECI
             STURESID
             STGPATRE
             STURESOURCE)
           :MEAN-SCORE
           0.6
           :STANDARD-DEVIATION
           0.15
           :SAMPLE-N
           1000
           :NUM-QUESTIONS
           6
           :HELP-PRIORITY
           1
           :HELP-INFO
           ""
           :HELP-LINKS
           NIL
           :PARENTS
           '(ACAD-LEARNING SCALE)))

(DEFCLASS SSL1CONFIDEFFICSTUDYTEST
          (ACAD-LEARNING SCALE)
          NIL
          (:DEFAULT-INITARGS
           :NAME-STRING
           "ssl1ConfidEfficStudyTest"
           :LABEL
           "ssl1-Confid efficient read-study-test"
           :SCALE-NAME
           "Time Efficient and Confident Study"
           :DESCRIPTION
           "A low score may indicate a learning disability. Think that tests and grades reflect abilities (versus smarter than test). Not need more time for tests and assignments. (8 items)"
           :SCALE-GROUP-NAME
           "acad-learning"
           :SCALE-QUESTIONS
           '(LRNUNASN
             LRNCOLMT
             LRNKNOWT
             LRNPROOF
             LRNRREAD
             LRNEFFIC
             LRNTESTT
             LRNTIMAS
             LRNTIRED
             LRNTANXI
             LRNSMART
             LRNAREAD
             LRNRSLOW)
           :MEAN-SCORE
           0.59
           :STANDARD-DEVIATION
           0.21
           :SAMPLE-N
           637
           :NUM-QUESTIONS
           13
           :HELP-PRIORITY
           1
           :HELP-INFO
           (FORMAT NIL
                   "Valuing your education and making it a top priority, giving adequate time to study, and learning good study skills are key academic success factors. Try the help-links below.~%~A"
                   *TIME-MAN)
           :HELP-LINKS
           '("academic.htm"
             "learning_disabilities.htm"
             "concentration.htm")
           :PARENTS
           '(ACAD-LEARNING SCALE)))

(DEFCLASS SSL1BCONFIDNOTAVOIDSTUDY
          (ACAD-LEARNING SCALE)
          NIL
          (:DEFAULT-INITARGS
           :NAME-STRING
           "ssl1bConfidNotAvoidStudy"
           :LABEL
           "ssl1bConfidNotAvoidStudy"
           :SCALE-NAME
           "High Study Motivation"
           :DESCRIPTION
           "Not Study Avoidant.  Not slower or more anxious about beginning assignments, reading, or writing than other students. Feel like college capable. (6 items)"
           :SCALE-GROUP-NAME
           "acad-learning"
           :SCALE-QUESTIONS
           '(LRNUNASN LRNCOLMT LRNTIRED LRNAREAD LRNPROOF)
           :MEAN-SCORE
           0.643
           :STANDARD-DEVIATION
           0.199
           :SAMPLE-N
           953
           :NUM-QUESTIONS
           5
           :HELP-PRIORITY
           1
           :HELP-INFO
           (FORMAT NIL
                   "Valuing your education and making it a top priority, giving adequate time to study, and learning good study skills are key academic success factors. Try the help-links below. ~%~A"
                   *NPROC15)
           :HELP-LINKS
           '("academic.htm"
             "time_management.htm"
             "procrastination.htm"
             "test_anxiety.htm")
           :PARENTS
           '(ACAD-LEARNING SCALE)))

(DEFCLASS SSL2SATISCAMPUSFACFRIENDSGRDES
          (ACAD-LEARNING SCALE)
          NIL
          (:DEFAULT-INITARGS
           :NAME-STRING
           "ssl2SatisCampusFacFriendsGrdes"
           :LABEL
           "ssl2SatisCampusFacFriendsGrdes"
           :SCALE-NAME
           "Positive Campus Life Attitudes"
           :DESCRIPTION
           "Look forward to classes, campus activities. Enjoy students and instructors. Happy with campus and grades. (8 items)"
           :SCALE-GROUP-NAME
           "acad-learning"
           :SCALE-QUESTIONS
           '(STULOOKF
             STULIKEI
             STUCOMFO
             STUFRIEN
             STUENJOY
             STUEACTR
             STHAPCOL
             STHAPGPA)
           :MEAN-SCORE
           0.682
           :STANDARD-DEVIATION
           0.2
           :SAMPLE-N
           1000
           :NUM-QUESTIONS
           8
           :HELP-PRIORITY
           0
           :HELP-INFO
           (FORMAT NIL
                   "Learning to enjoy your campus, studying, the instructors, and the other students are important ways to increase your motivation and academic success. However, many students focus too much on enjoying themselves and not enough on academics. ~%~A"
                   *CONNECT-COL)
           :HELP-LINKS
           '("conversational_skills.htm" "academic.htm")
           :PARENTS
           '(ACAD-LEARNING SCALE)))

(DEFCLASS SSL3WRITEREADSKILLS
          (ACAD-LEARNING SCALE)
          NIL
          (:DEFAULT-INITARGS
           :NAME-STRING
           "ssl3WriteReadSkills"
           :LABEL
           "ssl3WriteReadSkills"
           :SCALE-NAME
           "Writing, Reading Skills"
           :DESCRIPTION
           "Good at organizing papers and writing. Good reading skills. No vision problems (added due to factor analysis). (6 items)"
           :SCALE-GROUP-NAME
           "acad-learning"
           :SCALE-QUESTIONS
           '(LRNWRPAP LRNWRSKL LRNSEE LRNVOCAB LRNWRORG LRNSREAD)
           :MEAN-SCORE
           0.728
           :STANDARD-DEVIATION
           0.199
           :SAMPLE-N
           953
           :NUM-QUESTIONS
           6
           :HELP-PRIORITY
           1
           :HELP-INFO
           "Writing skills are important for success in almost all classes and for success in most professions--even those such as engineering or art. If you don't have good writing skills, try the link below. Reading skills are essential for academic and professional career success."
           :HELP-LINKS
           '("writing_help.htm")
           :PARENTS
           '(ACAD-LEARNING SCALE)))

(DEFCLASS SSL4BLDMENTALSTRUCT
          (ACAD-LEARNING SCALE)
          NIL
          (:DEFAULT-INITARGS
           :NAME-STRING
           "ssl4BldMentalStruct"
           :LABEL
           "ssl4-Build Mental Structure"
           :SCALE-NAME
           "Build Mental Structures"
           :DESCRIPTION
           "Study alone, struggle with difficult material, attempt to build own theories and associations. Make boring material interesting. (7 items)"
           :SCALE-GROUP-NAME
           "acad-learning"
           :SCALE-QUESTIONS
           '(LRNTXUND
             LRNINTER
             LRNROTE
             LRNASSOC
             LRNSTRUG
             LRNTHEOR
             LRNALONE)
           :MEAN-SCORE
           0.693
           :STANDARD-DEVIATION
           0.174
           :SAMPLE-N
           1112
           :NUM-QUESTIONS
           7
           :HELP-PRIORITY
           1
           :HELP-INFO
           "The essence of higher level learning is developing complex cognitive, mental structures.  Learning techniques for doing developing these mental structures is a primary way to increase intelligence, learning efficiency, and academic success."
           :HELP-LINKS
           '("LEARN.htm" "academic.htm")
           :PARENTS
           '(ACAD-LEARNING SCALE)))

(DEFCLASS SSL5BASICSTUDYSKILLS
          (ACAD-LEARNING SCALE)
          NIL
          (:DEFAULT-INITARGS
           :NAME-STRING
           "ssl5BasicStudySkills"
           :LABEL
           "ssl5-BasicSS-Undrstnd review map outline notes"
           :SCALE-NAME
           "Basic Study Skills"
           :DESCRIPTION
           (FORMAT NIL
                   "Preview, outline, review assignments; take good notes; good concentration; create visual map; review material at least 3 times for exam. (6 items)~%~A"
                   *COMP-MEM)
           :SCALE-GROUP-NAME
           "acad-learning"
           :SCALE-QUESTIONS
           '(ACMCONCE LRNTXOVE LRNTSREV LRNMAP LRNTXOUT LRNNOTES)
           :MEAN-SCORE
           0.61
           :STANDARD-DEVIATION
           0.196
           :SAMPLE-N
           814
           :NUM-QUESTIONS
           6
           :HELP-PRIORITY
           1
           :HELP-INFO
           "The essence of higher level learning is developing complex cognitive, mental structures.  Learning techniques for doing developing these mental structures is a primary way to increase intelligence, learning efficiency, and academic success."
           :HELP-LINKS
           '("LEARN.htm" "academic.htm")
           :PARENTS
           '(ACAD-LEARNING SCALE)))

(DEFCLASS SSL6SELFMANACADGOALS
          (ACAD-LEARNING SCALE)
          NIL
          (:DEFAULT-INITARGS
           :NAME-STRING
           "ssl6SelfmanAcadGoals"
           :LABEL
           "ssl6-Selfman-acad goal intention"
           :SCALE-NAME
           "Degree Motivation"
           :DESCRIPTION
           "Motivated and confident will get degree and won't drop out. Not confused about goals and confident of finances. (5 items)"
           :SCALE-GROUP-NAME
           "acad-learning"
           :SCALE-QUESTIONS
           '(ACMCOMPL ACMQUITC ACMFINAN ACMDEGRE STUCONFU ACMSELFS)
           :MEAN-SCORE
           0.745
           :STANDARD-DEVIATION
           0.206
           :SAMPLE-N
           819
           :NUM-QUESTIONS
           5
           :HELP-PRIORITY
           1
           :HELP-INFO
           (FORMAT NIL
                   "Motivation usually develops from commitment to a highly-valued goal. Clarifying your values and selecting goals that match them is a powerful way to improve motivation.  Choosing an academic major that you highly value and choose to persist through difficulties is a key way to improve academic success.~%~A"
                   *CAR-PLAN)
           :HELP-LINKS
           '("c15-carp.htm")
           :PARENTS
           '(ACAD-LEARNING SCALE)))

(DEFCLASS SSL7MATHSCIPRINC
          (ACAD-LEARNING SCALE)
          NIL
          (:DEFAULT-INITARGS
           :NAME-STRING
           "ssl7MathSciPrinc"
           :LABEL
           "ssl7-MathSci-principles interest skills"
           :SCALE-NAME
           "Learn Math-Science Principles"
           :DESCRIPTION
           "Enjoy and good in math, and seek to understand basic principles in math and science. (2 items)"
           :SCALE-GROUP-NAME
           "acad-learning"
           :SCALE-QUESTIONS
           '(LRNMATH LRNTEXTN)
           :MEAN-SCORE
           0.647
           :STANDARD-DEVIATION
           0.246
           :SAMPLE-N
           948
           :NUM-QUESTIONS
           2
           :HELP-PRIORITY
           1
           :HELP-INFO
           "Math is not only a basic skill for many majors and professions, it is valuable for personal finances and many other aspects of life."
           :HELP-LINKS
           '("LEARN.htm")
           :PARENTS
           '(ACAD-LEARNING SCALE)))

(DEFCLASS SSL8STUDYENVIR
          (ACAD-LEARNING SCALE)
          NIL
          (:DEFAULT-INITARGS
           :NAME-STRING
           "ssl8StudyEnvir"
           :LABEL
           "ssl8-Study home envir"
           :SCALE-NAME
           "Study Environment"
           :DESCRIPTION
           "Have good place and necessities to study and time available to study. Studying encouraged by family, friends with minimal conflicting demands. (3 items)"
           :SCALE-GROUP-NAME
           "acad-learning"
           :SCALE-QUESTIONS
           '(ACMEFAML ACMESOCS LRNESTUD)
           :MEAN-SCORE
           0.632
           :STANDARD-DEVIATION
           0.166
           :SAMPLE-N
           814
           :NUM-QUESTIONS
           3
           :HELP-PRIORITY
           1
           :HELP-INFO
           (FORMAT NIL
                   "Having a good study environment is important for academic success. Having a quiet, distraction-free place to study with the needed computer or other facilities is essential.  It is vital to establish such places that fit into your schedule. Assess what influences from family, friends, work, or other committments interfere with your sucess.  Assertively set priorities to study even at the cost of upsetting others if you want to succeed.~%~A"
                   *ENV-STUDY)
           :HELP-LINKS
           '("learning_&_study_skills.htm")
           :PARENTS
           '(ACAD-LEARNING SCALE)))

(DEFCLASS SSL9ATTENDHW
          (ACAD-LEARNING SCALE)
          NIL
          (:DEFAULT-INITARGS
           :NAME-STRING
           "ssl9AttendHW"
           :LABEL
           "ssl9-Attend-doHW"
           :SCALE-NAME
           "Attendance and Persistence"
           :DESCRIPTION
           "Attend classes, never drop classes, and manage study time well. (3 items)"
           :SCALE-GROUP-NAME
           "acad-learning"
           :SCALE-QUESTIONS
           '(ACMSTUDY ACMNDROP ACMATTEN)
           :MEAN-SCORE
           0.658
           :STANDARD-DEVIATION
           0.232
           :SAMPLE-N
           819
           :NUM-QUESTIONS
           3
           :HELP-PRIORITY
           1
           :HELP-INFO
           "Class attendance and concentrated study time are essential to academic success. If you aren't doing well in a class, first try assessing what the problems are and make a strong effort to correct them.  Get needed help."
           :HELP-LINKS
           '("academic.htm" "LEARN.htm")
           :PARENTS
           '(ACAD-LEARNING SCALE)))

(DEFCLASS SSL10MEMNOTANX
          (ACAD-LEARNING SCALE)
          NIL
          (:DEFAULT-INITARGS
           :NAME-STRING
           "ssl10MemNotAnx"
           :LABEL
           "ssl10-Memory-not anx"
           :SCALE-NAME
           "Efficient, Confident Learning"
           :DESCRIPTION
           "Efficient learning time use, good memory, relaxed during exams. (3 items)"
           :SCALE-GROUP-NAME
           "acad-learning"
           :SCALE-QUESTIONS
           '(LRNMEMOR LRNTENSE LRNSEFIC)
           :MEAN-SCORE
           0.593
           :STANDARD-DEVIATION
           0.222
           :SAMPLE-N
           953
           :NUM-QUESTIONS
           3
           :HELP-PRIORITY
           1
           :HELP-INFO
           "Try the help links below to improve your study efficiency, concentration, and reduce test-anxiety"
           :HELP-LINKS
           '("LEARN.htm"
             "learning_&_study_skills.htm"
             "test_anxiety.htm"
             "concentration.htm")
           :PARENTS
           '(ACAD-LEARNING SCALE)))

(DEFCLASS SSL11NOTNONACADMOT
          (ACAD-LEARNING SCALE)
          NIL
          (:DEFAULT-INITARGS
           :NAME-STRING
           "ssl11NotNonAcadMot"
           :LABEL
           "ssl11NotNonAcadMot"
           :SCALE-NAME
           "College Internal Motivation"
           :DESCRIPTION
           "Internal Motivation--to be in college. Internal motives versus pleasing parents, making money, or being confused why in school. Financially self-supporting. Internal motivation for accomplishing any task--including a college degree--is associated with greater success and happiness. (4 items)"
           :SCALE-GROUP-NAME
           "acad-learning"
           :SCALE-QUESTIONS
           '(STUEXTMO STUMONEYNEW STUCONFU STUFINDE STUCAREE)
           :MEAN-SCORE
           0.593
           :STANDARD-DEVIATION
           0.222
           :SAMPLE-N
           953
           :NUM-QUESTIONS
           5
           :HELP-PRIORITY
           1
           :HELP-INFO
           "If youu scored low, re-examine your values and priorities, ask what you can personally gain from college (eg. personal competence and growth, professional knowledge, and future career and personal satisifaction and success."
           :HELP-LINKS
           '("c15-carp.htm"
             "time_management.htm"
             "life_goals_and_meaning.htm")
           :PARENTS
           '(ACAD-LEARNING SCALE)))

(DEFCLASS SSL12STDYTMAVAIL
          (ACAD-LEARNING SCALE)
          NIL
          (:DEFAULT-INITARGS
           :NAME-STRING
           "ssl12StdyTmAvail"
           :LABEL
           "ssl12Study time available-acmtime"
           :SCALE-NAME
           "Study Time Available"
           :DESCRIPTION
           "Not too much time spent working, with family or friends, or in other activities. Studying and class attendence gets top priority."
           :SCALE-GROUP-NAME
           "acad-learning"
           :SCALE-QUESTIONS
           '(ACMTIME)
           :MEAN-SCORE
           0.52
           :STANDARD-DEVIATION
           0.257
           :SAMPLE-N
           819
           :NUM-QUESTIONS
           1
           :HELP-PRIORITY
           1
           :HELP-INFO
           "     ==> You may be working or involved with other activites too many hours per week--with the unit load you are carrying--to be successful in college.  Discuss this with your advisor "
           :HELP-LINKS
           '("time_management.htm" "procrastination.htm")
           :PARENTS
           '(ACAD-LEARNING SCALE)))

(DEFCLASS SSL13VERBALAPT
          (ACAD-LEARNING SCALE)
          NIL
          (:DEFAULT-INITARGS
           :NAME-STRING
           "ssl13VerbalApt"
           :LABEL
           "ssl13-Verbal aptitude test score=stuverba"
           :SCALE-NAME
           "Verbal Aptitude Score"
           :DESCRIPTION
           "Self-reported verbal aptitude score. (1 item)"
           :SCALE-GROUP-NAME
           "acad-learning"
           :SCALE-QUESTIONS
           '(STUVERBA)
           :MEAN-SCORE
           0.774
           :STANDARD-DEVIATION
           0.217
           :SAMPLE-N
           1003
           :NUM-QUESTIONS
           1
           :HELP-PRIORITY
           0
           :HELP-INFO
           "Aptitude has both genetic and learning componenets.  You can increase your verbal aptitude through taking appropriate classes, studying, and improving learning methods."
           :HELP-LINKS
           '("learning_&_study_skills.htm"
             "writing_help.htm"
             "LEARN.htm")
           :PARENTS
           '(ACAD-LEARNING SCALE)))

(DEFCLASS SSL14MATHAPT
          (ACAD-LEARNING SCALE)
          NIL
          (:DEFAULT-INITARGS
           :NAME-STRING
           "ssl14MathApt"
           :LABEL
           "ssl14-Math aptitude test score=stumatha"
           :SCALE-NAME
           "Math Aptitude Score"
           :DESCRIPTION
           "Self-reported mathematics aptitude score. (1 item)"
           :SCALE-GROUP-NAME
           "acad-learning"
           :SCALE-QUESTIONS
           '(STUMATHA)
           :MEAN-SCORE
           0.729
           :STANDARD-DEVIATION
           0.233
           :SAMPLE-N
           1003
           :NUM-QUESTIONS
           1
           :HELP-PRIORITY
           0
           :HELP-INFO
           "Aptitude has both genetic and learning componenets.  You can increase your verbal aptitude through taking appropriate classes, studying, and improving learning methods."
           :HELP-LINKS
           '("learning_&_study_skills.htm" "LEARN.htm")
           :PARENTS
           '(ACAD-LEARNING SCALE)))

(DEFCLASS SINCAR
          (CAREER-INTEREST SCALE)
          NIL
          (:DEFAULT-INITARGS
           :NAME-STRING
           "sincar"
           :LABEL
           "s-Career-major interest areas"
           :SCALE-NAME
           "Overall College Major Interests"
           :DESCRIPTION
           "General career interests. Many of the individual questions correspond to separate schools, colleges, or collections of academic majors at large universities. Look at your scores on individual questions to find potential majors or minors. A high score on this overall scale may indicate that you are a person with many high interests and that you may want a career that allows for challenging mental activities and some variety over time. 
     NOTE: This test is meant only to suggest some possible academic majors you may show interest in, it is NOT MEANT TO BE AN ALL INCLUSIVE LIST. You should explore the complete catalog of majors at your univesity or college--especially if you have specialized interests or interests not represented in this scale. You might also consider a dual major or special major tailored to your interests."
           :SCALE-GROUP-NAME
           "career-interest"
           :SCALE-QUESTIONS
           '(CAR1CARG
             CAR1CARP
             CAR1INAT
             CARIBIOH
             CARISOCS
             CARIHELP
             CARIMATH
             CARIMED
             CARIWRIT
             CARIFNAR
             CARIETHN
             CARILEAR
             CARIEXPE
             CARIGENE
             CARINOIN
             CARILIT
             CARIRECP
             CARIPOLI
             CARIMIL6
             CARIMANU
             CARILANG
             CARIPHIL
             CARIBUSI
             CARIENGI
             CARIFAMC
             CARIWOMA
             CARICOM8
             CARINTE0)
           :MEAN-SCORE
           NIL
           :STANDARD-DEVIATION
           NIL
           :SAMPLE-N
           NIL
           :NUM-QUESTIONS
           29
           :HELP-PRIORITY
           1
           :HELP-INFO
           *CAR-PLAN
           :HELP-LINKS
           '("c15-carp.htm")
           :PARENTS
           '(CAREER-INTEREST SCALE)))

(DEFCLASS SINBUS
          (CAREER-INTEREST SCALE)
          NIL
          (:DEFAULT-INITARGS
           :NAME-STRING
           "sinbus"
           :LABEL
           "s-Business interests"
           :SCALE-NAME
           "Business-Related Interests"
           :DESCRIPTION
           "Areas of interest within the overall category."
           :SCALE-GROUP-NAME
           "career-interest"
           :SCALE-QUESTIONS
           '(CARIBMAR
             CARIBMAN
             CARIBINF
             CARIBFIN
             CARIBHRD
             CARIBACC
             CARISPBU)
           :MEAN-SCORE
           NIL
           :STANDARD-DEVIATION
           NIL
           :SAMPLE-N
           NIL
           :NUM-QUESTIONS
           7
           :HELP-PRIORITY
           NIL
           :HELP-INFO
           "Go to help-link below and/or see help information for College Major Interest Test: Overall Interests Scale"
           :HELP-LINKS
           '("c15-carp.htm")
           :PARENTS
           '(CAREER-INTEREST SCALE)))

(DEFCLASS SINENGR
          (CAREER-INTEREST SCALE)
          NIL
          (:DEFAULT-INITARGS
           :NAME-STRING
           "sinengr"
           :LABEL
           "s-Engineering major interests"
           :SCALE-NAME
           "Engineering-Related Interests"
           :DESCRIPTION
           "Areas of interest within the overall category."
           :SCALE-GROUP-NAME
           "career-interest"
           :SCALE-QUESTIONS
           '(CARIEENG
             CARIME
             CARICHE2
             CARICIVE
             CARIAERO
             CARIEITE
             CARICOM9
             CARIBCOM)
           :MEAN-SCORE
           NIL
           :STANDARD-DEVIATION
           NIL
           :SAMPLE-N
           NIL
           :NUM-QUESTIONS
           8
           :HELP-PRIORITY
           NIL
           :HELP-INFO
           "Go to help-link below and/or see help information for College Major Interest Test: Overall Interests Scale"
           :HELP-LINKS
           '("c15-carp.htm")
           :PARENTS
           '(CAREER-INTEREST SCALE)))

(DEFCLASS SINFINEA
          (CAREER-INTEREST SCALE)
          NIL
          (:DEFAULT-INITARGS
           :NAME-STRING
           "sinfinea"
           :LABEL
           "s-Fine art major interests"
           :SCALE-NAME
           "Fine Arts-Related Interests"
           :DESCRIPTION
           "Areas of interest within the overall category."
           :SCALE-GROUP-NAME
           "career-interest"
           :SCALE-QUESTIONS
           '(CARIMUSI
             CARIART
             CARIDRAM
             CARIDANC
             CARIPHOT
             CARINDDE
             CARINTE1)
           :MEAN-SCORE
           NIL
           :STANDARD-DEVIATION
           NIL
           :SAMPLE-N
           NIL
           :NUM-QUESTIONS
           7
           :HELP-PRIORITY
           NIL
           :HELP-INFO
           "Go to help-link below and/or see help information for College Major Interest Test: Overall Interests Scale"
           :HELP-LINKS
           '("c15-carp.htm")
           :PARENTS
           '(CAREER-INTEREST SCALE)))

(DEFCLASS SINHELP
          (CAREER-INTEREST SCALE)
          NIL
          (:DEFAULT-INITARGS
           :NAME-STRING
           "sinhelp"
           :LABEL
           "s-Helping profession major interests"
           :SCALE-NAME
           "Helping, Teaching, Counseling-Related Interests"
           :DESCRIPTION
           "Areas of interest within the overall category."
           :SCALE-GROUP-NAME
           "career-interest"
           :SCALE-QUESTIONS
           '(CARITEAC
             CARICOUN
             CARIEDUC
             CARIHADU
             CARIHCHI
             CARITVOC
             CARICOM4
             CARSOCWO
             CARK12TE
             CARMINIS)
           :MEAN-SCORE
           NIL
           :STANDARD-DEVIATION
           NIL
           :SAMPLE-N
           NIL
           :NUM-QUESTIONS
           10
           :HELP-PRIORITY
           NIL
           :HELP-INFO
           "Go to help-link below and/or see help information for College Major Interest Test: Overall Interests Scale"
           :HELP-LINKS
           '("c15-carp.htm")
           :PARENTS
           '(CAREER-INTEREST SCALE)))

(DEFCLASS SINLANG
          (CAREER-INTEREST SCALE)
          NIL
          (:DEFAULT-INITARGS
           :NAME-STRING
           "sinlang"
           :LABEL
           "s-Language major interests"
           :SCALE-NAME
           "Language-Related Interests"
           :DESCRIPTION
           "Areas of interest within the overall category."
           :SCALE-GROUP-NAME
           "career-interest"
           :SCALE-QUESTIONS
           '(CARIFREN
             CARIITAL
             CARIGERM
             CARIRUSS
             CARIJAPN
             CARICHIN
             CARICLAS
             CARISPAN
             CARIPOR)
           :MEAN-SCORE
           NIL
           :STANDARD-DEVIATION
           NIL
           :SAMPLE-N
           NIL
           :NUM-QUESTIONS
           9
           :HELP-PRIORITY
           NIL
           :HELP-INFO
           "Go to help-link below and/or see help information for College Major Interest Test: Overall Interests Scale"
           :HELP-LINKS
           '("c15-carp.htm")
           :PARENTS
           '(CAREER-INTEREST SCALE)))

(DEFCLASS SINMED
          (CAREER-INTEREST SCALE)
          NIL
          (:DEFAULT-INITARGS
           :NAME-STRING
           "sinmed"
           :LABEL
           "s-Medical major interests"
           :SCALE-NAME
           "Medically-Related Interests Scale"
           :DESCRIPTION
           "Areas of interest within the overall category."
           :SCALE-GROUP-NAME
           "career-interest"
           :SCALE-QUESTIONS
           '(CARIMD
             CARINURS
             CARIPTHE
             CARIHEAL
             CARIKINE
             CARICOM5
             CARMEDTE)
           :MEAN-SCORE
           NIL
           :STANDARD-DEVIATION
           NIL
           :SAMPLE-N
           NIL
           :NUM-QUESTIONS
           7
           :HELP-PRIORITY
           NIL
           :HELP-INFO
           "Go to help-link below and/or see help information for College Major Interest Test: Overall Interests Scale"
           :HELP-LINKS
           '("c15-carp.htm")
           :PARENTS
           '(CAREER-INTEREST SCALE)))

(DEFCLASS SINMILTC
          (CAREER-INTEREST SCALE)
          NIL
          (:DEFAULT-INITARGS
           :NAME-STRING
           "sinmiltc"
           :LABEL
           "s-Law, Milit Interests"
           :SCALE-NAME
           "Law, Law Enforcement, or Military-Related Interests"
           :DESCRIPTION
           "Areas of interest within the overall category."
           :SCALE-GROUP-NAME
           "career-interest"
           :SCALE-QUESTIONS
           '(CARILAW CARICRIM CARIMIL7)
           :MEAN-SCORE
           NIL
           :STANDARD-DEVIATION
           NIL
           :SAMPLE-N
           NIL
           :NUM-QUESTIONS
           3
           :HELP-PRIORITY
           NIL
           :HELP-INFO
           "Go to help-link below and/or see help information for College Major Interest Test: Overall Interests Scale"
           :HELP-LINKS
           '("c15-carp.htm")
           :PARENTS
           '(CAREER-INTEREST SCALE)))

(DEFCLASS INNATSCI
          (CAREER-INTEREST SCALE)
          NIL
          (:DEFAULT-INITARGS
           :NAME-STRING
           "inNatSci"
           :LABEL
           "s-Nat Sci Interests"
           :SCALE-NAME
           "Natural Science-Related Interests"
           :DESCRIPTION
           "Areas of interest within the overall category."
           :SCALE-GROUP-NAME
           "career-interest"
           :SCALE-QUESTIONS
           '(CARICHE3 CARIPHYS CARIGEOL CARIASTR CARIENVI)
           :MEAN-SCORE
           NIL
           :STANDARD-DEVIATION
           NIL
           :SAMPLE-N
           NIL
           :NUM-QUESTIONS
           5
           :HELP-PRIORITY
           NIL
           :HELP-INFO
           "Go to help-link below and/or see help information for College Major Interest Test: Overall Interests Scale"
           :HELP-LINKS
           '("c15-carp.htm")
           :PARENTS
           '(CAREER-INTEREST SCALE)))

(DEFCLASS SINSOCSC
          (CAREER-INTEREST SCALE)
          NIL
          (:DEFAULT-INITARGS
           :NAME-STRING
           "sinsocsc"
           :LABEL
           "s-Social science major interests"
           :SCALE-NAME
           "Social Science-Related Interests"
           :DESCRIPTION
           "Areas of interest within the overall category."
           :SCALE-GROUP-NAME
           "career-interest"
           :SCALE-QUESTIONS
           '(CARIPSYC
             CARISOCO
             CARIHIST
             CARIPOLS
             CARIECON
             CARGEOGR
             CARIAMER
             CARIANTR
             CARIANTH
             CARISPEE
             CARLING)
           :MEAN-SCORE
           NIL
           :STANDARD-DEVIATION
           NIL
           :SAMPLE-N
           NIL
           :NUM-QUESTIONS
           11
           :HELP-PRIORITY
           NIL
           :HELP-INFO
           "Go to help-link below and/or see help information for College Major Interest Test: Overall Interests Scale"
           :HELP-LINKS
           '("c15-carp.htm")
           :PARENTS
           '(CAREER-INTEREST SCALE)))

(DEFCLASS SINWOETH
          (CAREER-INTEREST SCALE)
          NIL
          (:DEFAULT-INITARGS
           :NAME-STRING
           "sinwoeth"
           :LABEL
           "s-Womens or ethnics studies mj int"
           :SCALE-NAME
           "Women and Ethnic Group-Related Interests"
           :DESCRIPTION
           "Areas of interest within the overall category."
           :SCALE-GROUP-NAME
           "career-interest"
           :SCALE-QUESTIONS
           '(CARIAIST CARIBSTU CARIMEXA CARIASAM CARIAMST CARIWSTU)
           :MEAN-SCORE
           NIL
           :STANDARD-DEVIATION
           NIL
           :SAMPLE-N
           NIL
           :NUM-QUESTIONS
           6
           :HELP-PRIORITY
           NIL
           :HELP-INFO
           "Go to help-link below and/or see help information for College Major Interest Test: Overall Interests Scale"
           :HELP-LINKS
           '("c15-carp.htm")
           :PARENTS
           '(CAREER-INTEREST SCALE)))

(DEFCLASS SINWRITE
          (CAREER-INTEREST SCALE)
          NIL
          (:DEFAULT-INITARGS
           :NAME-STRING
           "sinwrite"
           :LABEL
           "s-Writing major interests"
           :SCALE-NAME
           "Writing and Media-Related Interests"
           :DESCRIPTION
           "Areas of interest within the overall category."
           :SCALE-GROUP-NAME
           "career-interest"
           :SCALE-QUESTIONS
           '(CARIENGL CARIJOUR)
           :MEAN-SCORE
           NIL
           :STANDARD-DEVIATION
           NIL
           :SAMPLE-N
           NIL
           :NUM-QUESTIONS
           2
           :HELP-PRIORITY
           NIL
           :HELP-INFO
           "Go to help-link below and/or see help information for College Major Interest Test: Overall Interests Scale"
           :HELP-LINKS
           '("c15-carp.htm")
           :PARENTS
           '(CAREER-INTEREST SCALE)))

(DEFCLASS SEHAPPY
          (OUTCOME SCALE)
          NIL
          (:DEFAULT-INITARGS
           :NAME-STRING
           "sehappy"
           :LABEL
           "s-Overall happiness"
           :SCALE-NAME
           "Overall Happiness"
           :DESCRIPTION
           "Overall happiness in various life areas including home, career, family, romance, recreation, health, and direct questions about overall happiness for recent past, current, and expected future time periods (15items). An overall low score may indicate high unhappiness and depression. Check individual questions to identify areas of high stress, avoidance, and/or need for improvement or help. (15 items)"
           :SCALE-GROUP-NAME
           "outcome"
           :SCALE-QUESTIONS
           '(HAPCLFRN
             HAPCARNW
             HAPCARFU
             HAPFRIEN
             HAPAREA
             HAPWKREL
             HAPPE
             HAPRECRE
             HAPSEXRE
             HAPFAMIL
             HAPSELFD
             HAPSPIRI
             HAPYEAR
             HAP3YEAR
             HAPLIFE
             HAPEXPEC)
           :MEAN-SCORE
           ".600"
           :STANDARD-DEVIATION
           ".184"
           :SAMPLE-N
           3185
           :NUM-QUESTIONS
           15
           :HELP-PRIORITY
           2.0
           :HELP-INFO
           "Check areas where you are not scoring high. Also, check your HQ score. SHAQ factors such as self-esteem, emotional coping, self-management, interpersonal skills, etc. Use the helplinks to improve areas that can increase your happiness."
           :HELP-LINKS
           '("my-peek.htm" "index.html" "hhapchkl.htm")
           :PARENTS
           '(OUTCOME SCALE)))

(DEFCLASS SRDEPRES
          (OUTCOME SCALE)
          NIL
          (:DEFAULT-INITARGS
           :NAME-STRING
           "srdepres"
           :LABEL
           "s-LoDepression outcomes"
           :SCALE-NAME
           "Low Depression Symptoms and Treatment"
           :DESCRIPTION
           "Items were developed from the DSM-IV depression diagnosis criteria and written as self-assessment items.  The scale also asks the amount of psychotherapy and medication taken for depression. It was scored in reverse so that high scores would mean low depression. Reverse scored. (6 items)"
           :SCALE-GROUP-NAME
           "outcome"
           :SCALE-QUESTIONS
           '(RDEPFEEL RDEPTHOU RDEPDYSS RDEPMAJS RDEPMEDS RDEPTHER)
           :MEAN-SCORE
           ".599"
           :STANDARD-DEVIATION
           ".225"
           :SAMPLE-N
           2819
           :NUM-QUESTIONS
           6
           :HELP-PRIORITY
           2.0
           :HELP-INFO
           "If you are suffering from too much depression, then we strongly advise you to make learning how to find happiness and cope with depression and its causes a high priority in your life. Alternatives include reading self-help materials, learning from others who have learned to overcome problems similar to yours, and seeking professional help."
           :HELP-LINKS
           '("depression.htm" "my-peek.htm" "h85cdepr.htm")
           :PARENTS
           '(OUTCOME SCALE)))

(DEFCLASS SRANXIET
          (OUTCOME SCALE)
          NIL
          (:DEFAULT-INITARGS
           :NAME-STRING
           "sranxiet"
           :LABEL
           "s-LoAnxiety symp+treat outcomes"
           :SCALE-NAME
           "Anxiety Symptoms and Treatment"
           :DESCRIPTION
           "Items were developed from the DSM-IV anxiety disorder diagnosis criteria and written as self-assessment items. The scale also asks the amount of psychotherapy and medication taken for anxiety-related disorders. Included were phobias and some obsession and compulsion-related items. Reverse scored. (9 items)"
           :SCALE-GROUP-NAME
           "outcome"
           :SCALE-QUESTIONS
           '(RANXPERF
             RANXALLT
             RANXPSTD
             RANXSOCI
             RANXOCD
             RANXPHOB
             RANXPANI
             RANXTHER
             RANXMEDS)
           :MEAN-SCORE
           ".719"
           :STANDARD-DEVIATION
           ".183"
           :SAMPLE-N
           3298
           :NUM-QUESTIONS
           9
           :HELP-PRIORITY
           2.0
           :HELP-INFO
           "If you are suffering from too much anxiety or anxiety-related disorders, then we strongly advise you to make learning how to find happiness and cope with anxiety and its causes a high priority in your life. Alternatives include reading self-help materials, learning from others who have learned to overcome problems similar to yours, and seeking professional help."
           :HELP-LINKS
           '("anxiety.htm" "my-peek.htm" "h8hf2.htm")
           :PARENTS
           '(OUTCOME SCALE)))

(DEFCLASS SRANGAGG
          (OUTCOME SCALE)
          NIL
          (:DEFAULT-INITARGS
           :NAME-STRING
           "srangagg"
           :LABEL
           "s-LoAnger-aggression outcomes"
           :SCALE-NAME
           "Low Anger-Aggression"
           :DESCRIPTION
           "Items include frequency of losing temper, name-calling/yelling, aggressive acts, and thoughts about getting even. Anger-related problems--such as aggressive,  threatening, dominating, violent, or abusive behavior. Often accompanied by feelings of loneliness, being unloved, not being understood, or persecution. Reverse scored. (5 items)"
           :SCALE-GROUP-NAME
           "outcome"
           :SCALE-QUESTIONS
           '(RANGFEEL RANGYELL RANGDOMI RANGTHOU RANGDEST)
           :MEAN-SCORE
           ".772"
           :STANDARD-DEVIATION
           ".163"
           :SAMPLE-N
           3262
           :NUM-QUESTIONS
           5
           :HELP-PRIORITY
           2.0
           :HELP-INFO
           "If you have any of these problems, then we strongly advise you to make a high priority of reducing your anger and replacing aggressive behavior with assertive, diplomatic, and understanding behavior. Learn to realize that every moment of anger is a moment less of being happy and that every time that you behave aggressively toward someone, it may reduce their caring or respect for you--leading eventually to their rejecting you. You may be blind to how much your hostility or dominance is at the root of many other oproblems that seem unrelated to anger (such as problems in relationships, career advancement, etc.).  Try learning how to find peace and happiness and make coping with anger and hostile behavior a top priority in your life. Use our links to interpersonal skills and assertive conflict resolution as a start."
           :HELP-LINKS
           '("b-anger.htm" "my-peek.htm")
           :PARENTS
           '(OUTCOME SCALE)))

(DEFCLASS SRELHLTH
          (OUTCOME SCALE)
          NIL
          (:DEFAULT-INITARGS
           :NAME-STRING
           "srelhlth"
           :LABEL
           "s-Health outcomes"
           :SCALE-NAME
           "Physical Health"
           :DESCRIPTION
           "General indicators of your physical health.  Frequency of illness, alcohol and drug use, weight, and conditioning estimates. (6 items)"
           :SCALE-GROUP-NAME
           "outcome"
           :SCALE-QUESTIONS
           '(RHLFREQI RHLALCOH RHLSMOKE RHLDRUGS RHLPHYSI RHLWEIGH)
           :MEAN-SCORE
           ".702"
           :STANDARD-DEVIATION
           ".133"
           :SAMPLE-N
           3081
           :NUM-QUESTIONS
           6
           :HELP-PRIORITY
           1
           :HELP-INFO
           "Research has conistently shown that your daily eating, exercise, addicitve, stress-related, and other health-related habits can have a huge effect on your health over a period of years.  Moderate to vigorous daily exercise, good nutrition, not smoking or using drugs, 7-8 hours sleep/night, keeping weight down, having a minimally stressful, happy life, and not engaging is physically risky activities have all been shown to be important for long-term physical health. If you are unsure of what is healthy exercise, nutrician, etc., begin reading to find out.  Your life may depend upon it."
           :HELP-LINKS
           '("health tips.htm")
           :PARENTS
           '(OUTCOME SCALE)))

(DEFCLASS SRPEOPLE
          (OUTCOME SCALE)
          NIL
          (:DEFAULT-INITARGS
           :NAME-STRING
           "srpeople"
           :LABEL
           "s-Relationship outcomes"
           :SCALE-NAME
           "Interpersonal Relations"
           :DESCRIPTION
           "Number and quality of friends, happiness in marital-like relationship, and work relationships. (7 items) "
           :SCALE-GROUP-NAME
           "outcome"
           :SCALE-QUESTIONS
           '(RPEHAPFR
             RPEHMARR
             RPENETW
             RPECLFRN
             RPENUMFR
             RPENUMCL
             RPECOMMI)
           :MEAN-SCORE
           ".521"
           :STANDARD-DEVIATION
           ".153"
           :SAMPLE-N
           2673
           :NUM-QUESTIONS
           7
           :HELP-PRIORITY
           1.5
           :HELP-INFO
           "If you haven't had the kind of romantic, friendship, family, or professional relationships you would prefer, then it is possible to learn how to improve your interpersonal skills and change your habits to make a even dramatic improvements. Many others have had remarkable success by setting goals to improve their relationships then reading, observing successful role-models, taking classes or counseling, and/or practicing new ways of thinking and acting."
           :HELP-LINKS
           '("conversational_skills.htm"
             "assertion_training.htm"
             "overcoming_loneliness.htm")
           :PARENTS
           '(OUTCOME SCALE)))

(DEFCLASS SSWVGRATPT
          (SWORLDVIEW SUBSCALE)
          NIL
          (:DEFAULT-INITARGS
           :NAME-STRING
           "sswvgratpt"
           :LABEL
           "sswv-Grateful  abundance beliefs"
           :SCALE-NAME
           "Grateful Abundance Beliefs"
           :DESCRIPTION
           "High gratitude for life and whatever one has; high proportion of positive thoughts. (5 items). Had best correlation with overall happiness of any scale (0.722). Also correlated 0.574 with low depression, 0.445 with low anxiety, and 0.356 with low anger/aggression."
           :SCALE-QUESTIONS
           '(TBVGRATI WOVABUND WOVGRATE)
           :MEAN-SCORE
           ".668"
           :STANDARD-DEVIATION
           ".198"
           :SAMPLE-N
           3200
           :NUM-QUESTIONS
           5
           :HELP-PRIORITY
           1
           :HELP-INFO
           "Having low expectations of what you will receive and being grateful for your life and all you do receive is a strong underlying basis for positive thinking and happiness."
           :HELP-LINKS
           '("h44defic.htm" "h4world.htm" "h45strea.htm")
           :PARENTS
           '(SWORLDVIEW SUBSCALE)))

(DEFCLASS SSWVOPTIMS
          (SWORLDVIEW SUBSCALE)
          NIL
          (:DEFAULT-INITARGS
           :NAME-STRING
           "sswvoptims"
           :LABEL
           "sswv-Optimism about self and world"
           :SCALE-NAME
           "Optimism"
           :DESCRIPTION
           "Optimism about self and the world. Good forces in control. Optimism increases motivation, energy, and positive thoughts. (3 items). Correlated .543with happiness, .354 with low depression, .284 with low anxiety, and .265 with low anger/aggression."
           :SCALE-GROUP-NAME
           "sworldview"
           :SCALE-QUESTIONS
           '(WOVPROGR WOVGOODF WOVMYLIF WOVPOSTH)
           :MEAN-SCORE
           "641"
           :STANDARD-DEVIATION
           ".196"
           :SAMPLE-N
           3200
           :NUM-QUESTIONS
           4
           :HELP-PRIORITY
           1
           :HELP-INFO
           "Believing that the world, your local world, and your personal life are under the control of positive forces moving in a positive direction is another basic belief system that increases happiness and success."
           :HELP-LINKS
           '("h4world.htm")
           :PARENTS
           '(SWORLDVIEW SUBSCALE)))

(DEFCLASS SSWVENTIT
          (SWORLDVIEW SUBSCALE)
          NIL
          (:DEFAULT-INITARGS
           :NAME-STRING
           "sswventit"
           :LABEL
           "sswv-NotEntitlement beliefs"
           :SCALE-NAME
           "No Entitlment Beliefs"
           :DESCRIPTION
           "Not believing that person owed either the basic necessities or a high standard of living. Don't feel entitled to anything in life. Belief all we receive is a bonus.. (2 items). Correlated .157 with happiness, 164, with low depression,.185 with low anxiety, and  .266 with low anger/aggression."
           :SCALE-GROUP-NAME
           "sworldview"
           :SCALE-QUESTIONS
           '(TBVENTIT WOVNFAIR WOVINJUR WOVENTIT)
           :MEAN-SCORE
           ".496"
           :STANDARD-DEVIATION
           ".208"
           :SAMPLE-N
           3162
           :NUM-QUESTIONS
           0
           :HELP-PRIORITY
           1
           :HELP-INFO
           "People "
           :HELP-LINKS
           '("h44defic.htm")
           :PARENTS
           '(SWORLDVIEW SUBSCALE)))

(DEFCLASS SSSWNONCONT
          (STBSLFWO SUBSCALE)
          NIL
          (:DEFAULT-INITARGS
           :NAME-STRING
           "ssswNonCont"
           :LABEL
           "sssw-Not conting or dysf SelfWorth"
           :SCALE-NAME
           "Unconditional Self-Worth"
           :DESCRIPTION
           "Self-worth based upon being human and internal qualities--not based upon being liked, strong, the best, living by the rules, being a winner, or any other conditional or external factor. (6 items). "
           :SCALE-GROUP-NAME
           "stbslfwo"
           :SCALE-QUESTIONS
           '(TBVOTHFI TBVLIKED TBVWEAK TBVBEST TBVRULES TBVWINNE)
           :MEAN-SCORE
           ".655"
           :STANDARD-DEVIATION
           "165"
           :SAMPLE-N
           3246
           :NUM-QUESTIONS
           6
           :HELP-PRIORITY
           1
           :HELP-INFO
           "Improving unconditional self-worth can reduced anxiety about what others think of you, about being successful, or many other frequent causes of anxiety and depression."
           :HELP-LINKS
           '("h5self.htm")
           :PARENTS
           '(STBSLFWO SUBSCALE)))

(DEFCLASS SSSWHAPALLGRAT
          (STBSLFWO SUBSCALE)
          NIL
          (:DEFAULT-INITARGS
           :NAME-STRING
           "ssswHapAllGrat"
           :LABEL
           "sssw-HigherSelf--MaxLoveHapBal-Grat"
           :SCALE-NAME
           "Balanced Love-Happiness Priorities"
           :DESCRIPTION
           "Value love and happiness for self and all others, gratitude, and make decisions to maximize happiness balancing it across time and people.(5 items). Correlated .567 with happiness, .328, with low depression,.247 with low anxiety, and  .360 with low anger/aggression."
           :SCALE-GROUP-NAME
           "stbslfwo"
           :SCALE-QUESTIONS
           '(TBVBALAN TBVHAPCA TBVGRATI THVUNCON THVSELFW)
           :MEAN-SCORE
           ".573"
           :STANDARD-DEVIATION
           ".172"
           :SAMPLE-N
           3246
           :NUM-QUESTIONS
           5
           :HELP-PRIORITY
           1
           :HELP-INFO
           "Self-worth is loving and accepting yourself and others.  Valuing happiness and health are an important aspect of self-worth. See help-links."
           :HELP-LINKS
           '("h1hap.htm" "h5self.htm")
           :PARENTS
           '(STBSLFWO SUBSCALE)))

(DEFCLASS SSSWACALLSELF
          (STBSLFWO SUBSCALE)
          NIL
          (:DEFAULT-INITARGS
           :NAME-STRING
           "ssswAcAllSelf"
           :LABEL
           "sssw-Accept all of self  1"
           :SCALE-NAME
           "Self-Acceptance"
           :DESCRIPTION
           "Accepting and valuing all parts of oneself including dysfunctional parts and parts not consistent with overall self-image, values, etc. even though may be trying to change them. Not anger at self parts or repression of them.(1 item). "
           :SCALE-GROUP-NAME
           "stbslfwo"
           :SCALE-QUESTIONS
           '(THVSELFA)
           :MEAN-SCORE
           ".343"
           :STANDARD-DEVIATION
           ".216"
           :SAMPLE-N
           3246
           :NUM-QUESTIONS
           1
           :HELP-PRIORITY
           1
           :HELP-INFO
           "Freud first demonstrated--and psychology has confirmed--that rejected or repressed parts of yourself can cause internal conflict, negative emotions, and dysfunctional behavior. Use help-links to learn methods for accepting all parts of yourself."
           :HELP-LINKS
           '("h53accep.htm" "h32decis.htm" "h23explo.htm")
           :PARENTS
           '(STBSLFWO SUBSCALE)))

(DEFCLASS SSIEAUTONY
          (SIECONTR SUBSCALE)
          NIL
          (:DEFAULT-INITARGS
           :NAME-STRING
           "ssieautony"
           :LABEL
           "ssie Autonomy  independence"
           :SCALE-NAME
           "Relationship Autonomy"
           :DESCRIPTION
           "Autonomy, independence from being controlled by others.  Belief in taking care of self, controlling own happiness, not dependent upon one person (3 items). Correlated .553 with happiness, .438, with low depression,.434 with low anxiety, and  .367 with low anger/aggression."
           :SCALE-GROUP-NAME
           "siecontr"
           :SCALE-QUESTIONS
           '(IECSELFS IECICONT IECDEPEN)
           :MEAN-SCORE
           ".702"
           :STANDARD-DEVIATION
           ".211"
           :SAMPLE-N
           2690
           :NUM-QUESTIONS
           3
           :HELP-PRIORITY
           1
           :HELP-INFO
           "Being internally controlled by your strong values, beliefs, and habits/skills helps one persist in the face of negativism, disapproval, and rejection by others.  The mature autonomous person carefully considers the opinions, desires, and effects on others; then makes the final decision considering those factors along with his/her own perspective. Integrity and taking ultimate responsibility for his/her own acts is normally a top value for the autonomous person."
           :HELP-LINKS
           '("h6intern.htm")
           :PARENTS
           '(SIECONTR SUBSCALE)))

(DEFCLASS SSIENCODEP
          (SIECONTR SUBSCALE)
          NIL
          (:DEFAULT-INITARGS
           :NAME-STRING
           "ssiencodep"
           :LABEL
           "ssie-Not codependent"
           :SCALE-NAME
           "Not Codependent"
           :DESCRIPTION
           "Not codependent or taken advantage of by others you help. Not care for others and neglect self or give too much more than others do for you. (3 items)Correlated .213 with happiness, .230, with low depression,.283 with low anxiety, and  .243 with low anger/aggression."
           :SCALE-GROUP-NAME
           "siecontr"
           :SCALE-QUESTIONS
           '(IECCOFEE IECCOPRB)
           :MEAN-SCORE
           ".538"
           :STANDARD-DEVIATION
           ".238"
           :SAMPLE-N
           2690
           :NUM-QUESTIONS
           2
           :HELP-PRIORITY
           1
           :HELP-INFO
           "Some caring people believe that they should put their own needs below that of others, give so much trying to help people who have dysfunctional or addictive habits that they mar their own lives."
           :HELP-LINKS
           '("h6intern.htm")
           :PARENTS
           '(SIECONTR SUBSCALE)))

(DEFCLASS SSIENOTHER
          (SIECONTR SUBSCALE)
          NIL
          (:DEFAULT-INITARGS
           :NAME-STRING
           "ssienother"
           :LABEL
           "ssie-Not care-provider for other"
           :SCALE-NAME
           "Control Own Emotions Beliefs"
           :DESCRIPTION
           "Belief that person has primary/direct control of own happiness and other emotions--not controlled by primarily heredity, environment, or others (2 Items)."
           :SCALE-GROUP-NAME
           "siecontr"
           :SCALE-QUESTIONS
           '(IECPEOPL IECGENET)
           :MEAN-SCORE
           ".565"
           :STANDARD-DEVIATION
           ".214"
           :SAMPLE-N
           2690
           :NUM-QUESTIONS
           2
           :HELP-PRIORITY
           1
           :HELP-INFO
           "The primary direct cause of emotions is one's cognitive system--values, beliefs, thoughts, and perceptions. External events interact with those mental structures to produce emotions.  Learn how to change both internal and external sources of happiness to change your emotions."
           :HELP-LINKS
           '("h2choose.htm")
           :PARENTS
           '(SIECONTR SUBSCALE)))

(DEFCLASS SSB2ETHIC
          (SETHBEL SUBSCALE)
          NIL
          (:DEFAULT-INITARGS
           :NAME-STRING
           "ssb2Ethic"
           :LABEL
           "ssb2-Ethics grounded in abstract absolutes"
           :SCALE-NAME
           "Abstract Absolutes-Grounded Ethics"
           :DESCRIPTION
           "Ethics based upon abstract absolutes versus relativism. Philosophical beliefs guide daily life. Believe we are ethically responsible even if bad genes or environment. Science/reason alone not enough to guide ethics. (4 items). Correlated .346 with happiness, .266, with low depression,.294 with low anxiety, and  .373 with low anger/aggression."
           :SCALE-GROUP-NAME
           "sethbel"
           :SCALE-QUESTIONS
           '(TB2RELAT TBV2NOTR TB2REASO TBV2CORE)
           :MEAN-SCORE
           ".672"
           :STANDARD-DEVIATION
           ".150"
           :SAMPLE-N
           2366
           :NUM-QUESTIONS
           4
           :HELP-INFO
           "Explore the foundations of your ethical beliefs. Do you know what your top value/goal?  Do you rely on a religion or a certain philosophy as your ethical foundation? What are its basic ethical principles? Do you say that your family or other group is your top value? If so, what would you do if you lost them all?"
           :HELP-LINKS
           '("life_goals_and_meaning.htm"
             "h3hiself.htm"
             "h13topgo.htm")
           :PARENTS
           '(SETHBEL SUBSCALE)))

(DEFCLASS SSB2FORGIV
          (SETHBEL SUBSCALE)
          NIL
          (:DEFAULT-INITARGS
           :NAME-STRING
           "ssb2Forgiv"
           :LABEL
           "ssb2-Forgiving-egalitarian"
           :SCALE-NAME
           "Forgiveness"
           :DESCRIPTION
           "Highly forgiving of others, egalitarian/democratic beliefs. Forgiveness based upon inner qualities not based upon good works.  Not believe bad only happens to bad (2 items).  Correlated .282 with happiness, .216, with low depression,.294 with low anxiety, and  .378 with low anger/aggression."
           :SCALE-GROUP-NAME
           "sethbel"
           :SCALE-QUESTIONS
           '(TB2PUNIS TB2GDWRK)
           :MEAN-SCORE
           ".751"
           :STANDARD-DEVIATION
           ".192"
           :SAMPLE-N
           2366
           :NUM-QUESTIONS
           2
           :HELP-PRIORITY
           1
           :HELP-INFO
           "Learning to forgive yourself and others is a key to self-worth, happiness, and close interpersonal relations."
           :HELP-LINKS
           '("h53accep.htm" "h23explo.htm" "h51worth.htm")
           :PARENTS
           '(SETHBEL SUBSCALE)))

(DEFCLASS SSB2IDGRND
          (SETHBEL SUBSCALE)
          NIL
          (:DEFAULT-INITARGS
           :NAME-STRING
           "ssb2IDgrnd"
           :LABEL
           "ssb2-Identify with abstract whole"
           :SCALE-NAME
           "Identification With Humanity"
           :DESCRIPTION
           "Identify with abstract whole such as all humanity vs. a specific group (eg. family) or a specific role.(2 items). Correlated .258 with happiness and  .214 with low anger/aggression."
           :SCALE-GROUP-NAME
           "sethbel"
           :SCALE-QUESTIONS
           '(TB2IDHUM TB2MOVEM)
           :MEAN-SCORE
           ".412"
           :STANDARD-DEVIATION
           ".165"
           :SAMPLE-N
           2366
           :NUM-QUESTIONS
           2
           :HELP-INFO
           "Identification primarily with all humanity is not only is consistent with the advice of great philosophers and religious leaders, but also increases caring for all people, self-acceptance, and less dependence (and control by) family, friends, or other groups."
           :HELP-LINKS
           '("h3hiself.htm")
           :PARENTS
           '(SETHBEL SUBSCALE)))

(DEFCLASS SSB2GRNDMNG
          (SETHBEL SUBSCALE)
          NIL
          (:DEFAULT-INITARGS
           :NAME-STRING
           "ssb2GrndMng"
           :LABEL
           "ssb2-Meaning from abstract absolutes"
           :SCALE-NAME
           "Abstract Principles-Entities Ethics"
           :DESCRIPTION
           "Base meaning on abstract principles such as integrity, honesty, God, Nature, etc. instead of particular objects, events, or situational factors (eg. money, career, home, or other people). Correlated .256 with happiness, .225, with low depression,.264 with low anxiety, and  .277 with low anger/aggression."
           :SCALE-GROUP-NAME
           "sethbel"
           :SCALE-QUESTIONS
           '(TB2GROUM TB2SELFM)
           :MEAN-SCORE
           ".624"
           :STANDARD-DEVIATION
           ".204"
           :SAMPLE-N
           2366
           :NUM-QUESTIONS
           2
           :HELP-INFO
           "One advantage of basing beliefs and behavior upon abstract and mental values that it provides immunity from anxiety over external events because you have so much more direct control over mental events than external events."
           :HELP-LINKS
           '("h13topgo.htm")
           :PARENTS
           '(SETHBEL SUBSCALE)))

(DEFCLASS SSB2INRGOOD
          (SETHBEL SUBSCALE)
          NIL
          (:DEFAULT-INITARGS
           :NAME-STRING
           "ssb2InrGood"
           :LABEL
           "ssb2-Inner goodness in all"
           :SCALE-NAME
           "Inner Goodness In All"
           :DESCRIPTION
           "Belief in basic inner value and goodness in all people. Goodness depends more on attitude than behavior. (2 items). Correlated .327 with happiness and  .226 with low anger/aggression."
           :SCALE-GROUP-NAME
           "sethbel"
           :SCALE-QUESTIONS
           '(TB2GDATT TB2ALLGD)
           :MEAN-SCORE
           ".546"
           :STANDARD-DEVIATION
           ".182"
           :SAMPLE-N
           2366
           :NUM-QUESTIONS
           2
           :HELP-INFO
           "Think about how all newborn babies have inherent worth, and how at least some of that value persists even though a person may learn dysfunctional beliefs and behaviors. Consider the arguments of the great philosophers and religions that value all human beings."
           :HELP-LINKS
           '("h51worth.htm")
           :PARENTS
           '(SETHBEL SUBSCALE)))

(DEFCLASS SSB2NOASTR
          (SETHBEL SUBSCALE)
          NIL
          (:DEFAULT-INITARGS
           :NAME-STRING
           "ssb2noAstr"
           :LABEL
           "ssb2-Not belief in astrology. (1 item)"
           :SCALE-NAME
           "Not Astrology Belief"
           :DESCRIPTION
           "Does not believe in astrology"
           :SCALE-GROUP-NAME
           "sethbel"
           :SCALE-QUESTIONS
           '(TBV2ASTR)
           :MEAN-SCORE
           ".718"
           :STANDARD-DEVIATION
           ".242"
           :SAMPLE-N
           2366
           :NUM-QUESTIONS
           1
           :HELP-INFO
           "Science rejects astrology and any idea that stars' alignments have any significant effect on human behavior or history. The main problem with believing in astrology or even reading forecasts is that it distracts people from attending to the real factors that are influencing their lives and may cause them to make bad decisions based upon these unreliable predictions instead of using their own judgement. Relying on astrology may come from low self-confidence in one's own judgement."
           :HELP-LINKS
           '("h54confi.htm" "h6intern.htm")
           :PARENTS
           '(SETHBEL SUBSCALE)))

(DEFCLASS SSB2LIFAD
          (SETHBEL SUBSCALE)
          NIL
          (:DEFAULT-INITARGS
           :NAME-STRING
           "ssb2lifad"
           :LABEL
           "ssb2-Belief in LifeAfterDeath1"
           :SCALE-NAME
           "Life After Death Belief"
           :DESCRIPTION
           "Belief in life after death. (1 item)"
           :SCALE-GROUP-NAME
           "sethbel"
           :SCALE-QUESTIONS
           '(TB2LIFAD)
           :MEAN-SCORE
           ".606"
           :STANDARD-DEVIATION
           ".270"
           :SAMPLE-N
           2366
           :NUM-QUESTIONS
           1
           :HELP-INFO
           "Belief in life after death may lower people's fear of death and illness.  However, it may also cause people to disregard their own welfare thinking that they will be rewarded in heaven (extreme example is suicide bombers)."
           :HELP-LINKS
           'NIL
           :PARENTS
           '(SETHBEL SUBSCALE)))

(DEFCLASS SSWFSOCIAL
          (SGRFEARS SUBSCALE)
          NIL
          (:DEFAULT-INITARGS
           :NAME-STRING
           "sswfsocial"
           :LABEL
           "sswf-Not not-social or alone"
           :SCALE-NAME
           "Low Social Fears"
           :DESCRIPTION
           "Low fear of being unwanted, alone, unloved, etc. (4 items). Correlated .492 with happiness, .444, with low depression,.366 with low anxiety, and  .275 with low anger/aggression."
           :SCALE-GROUP-NAME
           "sgrfears"
           :SCALE-QUESTIONS
           '(WOVALONE WOVNOLOV WOVLIKED WOVPROBL)
           :MEAN-SCORE
           ".550"
           :STANDARD-DEVIATION
           ".229"
           :SAMPLE-N
           3162
           :NUM-QUESTIONS
           4
           :HELP-PRIORITY
           1
           :HELP-INFO
           "People-related fears such as fear of what others think about you or fears of rejection, being unloved, or being alone can underlie a great deal of unhappiness, anxiety, depression, and dysfunctional behavior. Try our help-links."
           :HELP-LINKS
           '("h43dark.htm" "c-rejct.htm" "h6intern.htm")
           :PARENTS
           '(SGRFEARS SUBSCALE)))

(DEFCLASS SSWFSELF
          (SGRFEARS SUBSCALE)
          NIL
          (:DEFAULT-INITARGS
           :NAME-STRING
           "sswfself"
           :LABEL
           "sswf-Not self-related fears"
           :SCALE-NAME
           "Low Self-Related Fears"
           :DESCRIPTION
           "Confidence can overcome worst fears/problems. Low fear of being overwhelmed by personal problems. (3 items)"
           :SCALE-GROUP-NAME
           "sgrfears"
           :SCALE-QUESTIONS
           '(WOVPERSO WOVDISCO WOVOVERC)
           :MEAN-SCORE
           ".625"
           :STANDARD-DEVIATION
           ".193"
           :SAMPLE-N
           3162
           :NUM-QUESTIONS
           3
           :HELP-PRIORITY
           1
           :HELP-INFO
           "First try to clarify what your fears are, then use self-help or professional help to reduce them."
           :HELP-LINKS
           '("h43dark.htm" "h5self.htm" "h23explo.htm")
           :PARENTS
           '(SGRFEARS SUBSCALE)))

(DEFCLASS SSWFPOVFAI
          (SGRFEARS SUBSCALE)
          NIL
          (:DEFAULT-INITARGS
           :NAME-STRING
           "sswfpovfai"
           :LABEL
           "sswf-Not poverty-failure fears"
           :SCALE-NAME
           "Low Failure-Poverty Fears"
           :DESCRIPTION
           "Low fear of poverty, failure, lack of career success. (3 items)"
           :SCALE-GROUP-NAME
           "sgrfears"
           :SCALE-QUESTIONS
           '(WOVHAPPY WOVPOOR WOVSUCCE)
           :MEAN-SCORE
           ".576"
           :STANDARD-DEVIATION
           ".227"
           :SAMPLE-N
           3162
           :NUM-QUESTIONS
           3
           :HELP-PRIORITY
           1
           :HELP-INFO
           "Being afraid of poverty, failure, a life-style below one's expectations, or similar fears can make life more miserable for someone who has done well than someone who doesn't have those fears and has much less.  Face those fears directly and develop new ways of thinking about them such as Alternative Goals and Plans."
           :HELP-LINKS
           '("h43dark.htm" "h23explo.htm" "h5self.htm")
           :PARENTS
           '(SGRFEARS SUBSCALE)))

(DEFCLASS SSWFILLDEA
          (SGRFEARS SUBSCALE)
          NIL
          (:DEFAULT-INITARGS
           :NAME-STRING
           "sswfilldea"
           :LABEL
           "sswf-Not illness-death fears"
           :SCALE-NAME
           "Low Illness or Death Fears"
           :DESCRIPTION
           "Low fear of illness or death. (2 items)"
           :SCALE-GROUP-NAME
           "sgrfears"
           :SCALE-QUESTIONS
           '(WOVILL WOVDEATH)
           :MEAN-SCORE
           ".702"
           :STANDARD-DEVIATION
           ".236"
           :SAMPLE-N
           3162
           :NUM-QUESTIONS
           2
           :HELP-PRIORITY
           1
           :HELP-INFO
           "Philosophers have proposed that humans' fear of death (and serious illness) is an underlying cause of human misery.  Death and the possiblity of serious illness is something we all face.  Learning to minimize those fears can bring greater peace to daily life--especially if we have a more immediate threat of death or illness."
           :HELP-LINKS
           '("h43dark.htm")
           :PARENTS
           '(SGRFEARS SUBSCALE)))

(DEFCLASS SSSCLEARN
          (SSLFCONF SUBSCALE)
          NIL
          (:DEFAULT-INITARGS
           :NAME-STRING
           "sssclearn"
           :LABEL
           "sssc-SelfConf-Learning"
           :SCALE-NAME
           "Learning Confidence"
           :DESCRIPTION
           "Confidence in own intelligence, learning, study skills, analytical thinking, synthesis, research methodology, computer-related, and critical thinking. (7 items)"
           :SCALE-GROUP-NAME
           "sslfconf"
           :SCALE-QUESTIONS
           '(SLFLEARN
             SLFCRITT
             SLFRESEA
             SLFANALY
             SLFSYNTH
             SLFCOMPU
             SLFIQ)
           :MEAN-SCORE
           ".801"
           :STANDARD-DEVIATION
           ".143"
           :SAMPLE-N
           3225
           :NUM-QUESTIONS
           7
           :HELP-INFO
           "It is human intelligence and ability to learn and adapt that separates us most from the lower animals.  Research shows that people who have better learning skills tend to be happier and more successful. The help-links below only cover a limited set of learning skills, but are a place to start."
           :HELP-LINKS
           '("learning_&_study_skills.htm" "LEARN.htm")
           :PARENTS
           '(SSLFCONF SUBSCALE)))

(DEFCLASS SSSCCOPOPT
          (SSLFCONF SUBSCALE)
          NIL
          (:DEFAULT-INITARGS
           :NAME-STRING
           "sssccopopt"
           :LABEL
           "sssc-SelfConf-PosAchCopeRelate"
           :SCALE-NAME
           "Achievement Confidence"
           :DESCRIPTION
           "Confidence/skills of optimistic-assertive engagement for both people and nonpeople tasks. Achievement motivation, work habits, emotional control, optimism, self-disclosure, and caring conflict resolution. (6 items)"
           :SCALE-GROUP-NAME
           "sslfconf"
           :SCALE-QUESTIONS
           '(SLFSELF4 SLFCOPE SLFSELF5 SLFCONFL SLFOPTIM SLFFRIEN)
           :MEAN-SCORE
           ".623"
           :STANDARD-DEVIATION
           ".201"
           :SAMPLE-N
           3225
           :NUM-QUESTIONS
           6
           :HELP-PRIORITY
           1
           :HELP-INFO
           "Engaging is tasks with enthusiasm and committment to excellence improves happiness, success, and relationships."
           :HELP-LINKS
           '("patsm96.htm"
             "concentration.htm"
             "h-app-e-InterpersonalSkills.htm")
           :PARENTS
           '(SSLFCONF SUBSCALE)))

(DEFCLASS SSSCSMSMSD
          (SSLFCONF SUBSCALE)
          NIL
          (:DEFAULT-INITARGS
           :NAME-STRING
           "ssscsmsmsd"
           :LABEL
           "sssc-SelfConf-self control discipline  develop"
           :SCALE-NAME
           "Self-Management Confidence"
           :DESCRIPTION
           "Confidence/skills in self control, self-discipline, and self-development. Good decision-making and planning, time-management in all areas of self-development/change, finances, self-discipline, health, etc. (7 items)."
           :SCALE-GROUP-NAME
           "sslfconf"
           :SCALE-QUESTIONS
           '(SLFDECMA
             SLFTIMEM
             SLFSELFM
             SLFACHAN
             SLFMANA6
             SLFHEAL3
             SLFINDEP)
           :MEAN-SCORE
           ".657"
           :STANDARD-DEVIATION
           ".191"
           :SAMPLE-N
           3225
           :NUM-QUESTIONS
           7
           :HELP-PRIORITY
           1
           :HELP-INFO
           "The self-management skills taught in the link below have been shown to be keys to both success and happiness because they help you get control of your life and keep your actions more in line with your values and goals."
           :HELP-LINKS
           '("time_management.htm" "wsps.htm")
           :PARENTS
           '(SSLFCONF SUBSCALE)))

(DEFCLASS SSSCINTERP
          (SSLFCONF SUBSCALE)
          NIL
          (:DEFAULT-INITARGS
           :NAME-STRING
           "ssscinterp"
           :LABEL
           "sssc-SelfConf-Career interpersonal skills"
           :SCALE-NAME
           "Career-Related Interpersonal Confidence"
           :DESCRIPTION
           "Confidence/skills in career-related interpersonal skills.  Managing others, persuasion, meeting people, public speaking, and adaptability (7 items). "
           :SCALE-GROUP-NAME
           "sslfconf"
           :SCALE-QUESTIONS
           '(SLFADAPT
             SLFMEETP
             SLFPERSU
             SLFMANA7
             SLFBUSAN
             SLFSPEAK
             SLFJOBSE)
           :MEAN-SCORE
           ".657"
           :STANDARD-DEVIATION
           ".188"
           :SAMPLE-N
           3225
           :NUM-QUESTIONS
           7
           :HELP-PRIORITY
           1
           :HELP-INFO
           "Improving basic interpersonal skills can improve almost all aspects of peoples' lives--from career to personal to romantic."
           :HELP-LINKS
           '("assertion_training.htm"
             "developing_intimacy.htm"
             "conversational_skills.htm")
           :PARENTS
           '(SSLFCONF SUBSCALE)))

(DEFCLASS SSSCALLHELP
          (SSLFCONF SUBSCALE)
          NIL
          (:DEFAULT-INITARGS
           :NAME-STRING
           "ssscallhelp"
           :LABEL
           "sssc-SelfConf-Helping skills"
           :SCALE-NAME
           "Helping Skills Confidence"
           :DESCRIPTION
           "Confidence/skills for counseling or teaching others.  Knowledge of philosophy, religion, and social science and helping, counseling, teaching interpersonal skills. (6 Items)"
           :SCALE-GROUP-NAME
           "sslfconf"
           :SCALE-QUESTIONS
           '(SLFSOCSC SLFPHILR SLFLIBAR SLFEDUCH SLFLISTE SLFHELPS)
           :MEAN-SCORE
           ".740"
           :STANDARD-DEVIATION
           ".168"
           :SAMPLE-N
           3225
           :NUM-QUESTIONS
           6
           :HELP-INFO
           "Helping skills are not only vital for people counseling and teaching others (in professional or personal situations), but can be very useful for other types of professional and personal relationships--especially chose and romantic relationships."
           :HELP-LINKS
           '("c14-lisn.htm" "h23explo.htm")
           :PARENTS
           '(SSLFCONF SUBSCALE)))

(DEFCLASS SSSCSCIENCE
          (SSLFCONF SUBSCALE)
          NIL
          (:DEFAULT-INITARGS
           :NAME-STRING
           "ssscscience"
           :LABEL
           "sssc-SelfConf-Natural science"
           :SCALE-NAME
           "Natural Science Confidence"
           :DESCRIPTION
           "Confidence/skills in natural science knowledge and reasoning including physics, chemistry, biology, and engineering (4 items)."
           :SCALE-GROUP-NAME
           "sslfconf"
           :SCALE-QUESTIONS
           '(SLFBIOSC SLFNATSC SLFHEAL2 SLFENGIN)
           :MEAN-SCORE
           ".583"
           :STANDARD-DEVIATION
           ".201"
           :SAMPLE-N
           3225
           :NUM-QUESTIONS
           4
           :HELP-INFO
           "Knowledge of natural sciences is useful in many everday situations from understanding how your car or computer works to understanding your health and our environment."
           :HELP-LINKS
           'NIL
           :PARENTS
           '(SSLFCONF SUBSCALE)))

(DEFCLASS SSSCARTCRE
          (SSLFCONF SUBSCALE)
          NIL
          (:DEFAULT-INITARGS
           :NAME-STRING
           "ssscartcre"
           :LABEL
           "sssc-SelfConf-Art  creative"
           :SCALE-NAME
           "Creative and Artistic Confidence"
           :DESCRIPTION
           "Fine and performing arts, and creative thinking (3 items)"
           :SCALE-GROUP-NAME
           "sslfconf"
           :SCALE-QUESTIONS
           '(SLFCREAT SLFPERFA SLFFINEA)
           :MEAN-SCORE
           ".659"
           :STANDARD-DEVIATION
           ".204"
           :SAMPLE-N
           3225
           :NUM-QUESTIONS
           3
           :HELP-INFO
           "Being creative means looking at problems from new perspectives and finding new solutions.  This general skill can help generate success in almost all life endeavors.  For non-professionals knowledge and appreiciation of art can make life and entertainment much more interesting and fun."
           :HELP-LINKS
           'NIL
           :PARENTS
           '(SSLFCONF SUBSCALE)))

(DEFCLASS SSSMTIMEMANGOALSET
          (SSELFMAN SUBSCALE)
          NIL
          (:DEFAULT-INITARGS
           :NAME-STRING
           "sssmTimeManGoalSet"
           :LABEL
           "sssm-Time management-OPATSM"
           :SCALE-NAME
           "Self-Management Skills and Habits"
           :DESCRIPTION
           "Using a good self-management system. Time management/goal-setting/decision-making  Frequent sessions prioritizing goals and writing daily task lists for each life area. Breaking large projects into organized, scheduled tasks. (5 items)"
           :SCALE-GROUP-NAME
           "sselfman"
           :SCALE-QUESTIONS
           '(SMTFUTUR SMTPTODO SMTGOALS SMTSCHD SMT2DTOD)
           :MEAN-SCORE
           ".505"
           :STANDARD-DEVIATION
           ".220"
           :SAMPLE-N
           2127
           :NUM-QUESTIONS
           5
           :HELP-INFO
           "Having a proven system for setting goals and priorities, planning, and managing large and daily tasks is a key component of success and happiness. (See research above). The link below describes the elements of one proven self-management system."
           :HELP-LINKS
           '("h9patsm.htm")
           :PARENTS
           '(SSELFMAN SUBSCALE)))

(DEFCLASS SSSMACCOMPLORUSH
          (SSELFMAN SUBSCALE)
          NIL
          (:DEFAULT-INITARGS
           :NAME-STRING
           "sssmAccompLoRush"
           :LABEL
           "sssm-Busy,accomplishment,efficient"
           :SCALE-NAME
           "Efficient Accomplishement"
           :DESCRIPTION
           "Accomplishment: busy, efficient task completion without feeling too rushed or pressured.  (2 items)"
           :SCALE-GROUP-NAME
           "sselfman"
           :SCALE-QUESTIONS
           '(SMTBUSY SMTACMPL)
           :MEAN-SCORE
           ".494"
           :STANDARD-DEVIATION
           ".222"
           :SAMPLE-N
           2127
           :NUM-QUESTIONS
           2
           :HELP-PRIORITY
           1
           :HELP-INFO
           "Efficient task accomplishment is often one outcome of a good time-management system.  However, it also comes from looking at all tasks--especially repetitive tasks from a system point-of-view to find new efficiencies that can save time, money, and heartache. Not feeling overwhelmed or pressured comes partly from being well-organized and partly from dealing with underlying fears related to feared possible outcomes of not adequately completing the tasks."
           :HELP-LINKS
           '("h9patsm.htm" "possi.htm" "h23explo.htm")
           :PARENTS
           '(SSELFMAN SUBSCALE)))

(DEFCLASS SSSMSELFDEVEL
          (SSELFMAN SUBSCALE)
          NIL
          (:DEFAULT-INITARGS
           :NAME-STRING
           "sssmSelfDevel"
           :LABEL
           "sssm-Self-develop, take advice,habit chng"
           :SCALE-NAME
           "Self-development Skills and Habits"
           :DESCRIPTION
           "Self-development habits and skills including taking advice and self-change program(s).(3 Items)"
           :SCALE-GROUP-NAME
           "sselfman"
           :SCALE-QUESTIONS
           '(SMTSDEVE SMTGHELP SMTHABCH)
           :MEAN-SCORE
           ".647"
           :STANDARD-DEVIATION
           ".214"
           :SAMPLE-N
           1936
           :NUM-QUESTIONS
           3
           :HELP-PRIORITY
           1
           :HELP-INFO
           "Completing SHAQ is a good beginning to self-development.  It gives you feedback on many clearly defined values, beliefs, skills, and habits that you can think about and decide if you want to make changes.  The help-links provided give you one place to start for each."
           :HELP-LINKS
           '("index.html" "self-helpLinks.htm")
           :PARENTS
           '(SSELFMAN SUBSCALE)))

(DEFCLASS SSSMHEALTHHABS
          (SSELFMAN SUBSCALE)
          NIL
          (:DEFAULT-INITARGS
           :NAME-STRING
           "sssmHealthHabs"
           :LABEL
           "sssmHealthHabits"
           :SCALE-NAME
           "Health Habits"
           :DESCRIPTION
           "Health habits. Research has shown that your nutritional, exercise, sleep, substance abuse, safety and risk-taking habits, and stress management can have very large effects upon your health and life span. (3 Items)"
           :SCALE-GROUP-NAME
           "sselfman"
           :SCALE-QUESTIONS
           '(SMTEXERC SMTEATH SMTSLEEP)
           :MEAN-SCORE
           ".558"
           :STANDARD-DEVIATION
           ".176"
           :SAMPLE-N
           2127
           :NUM-QUESTIONS
           3
           :HELP-PRIORITY
           1
           :HELP-INFO
           "Learning and practicing good health habits is one of the simplest and best ways to have a long, healthy, and happy life."
           :HELP-LINKS
           '("health tips.htm"
             "weight_control.htm"
             "substance_abuse.htm")
           :PARENTS
           '(SSELFMAN SUBSCALE)))

(DEFCLASS SSCPPROBSOLV
          (SEMOTCOP SUBSCALE)
          NIL
          (:DEFAULT-INITARGS
           :NAME-STRING
           "sscpProbSolv"
           :LABEL
           "sscp-Prob solve talk,selfexpl,expect"
           :SCALE-NAME
           "Emotional Coping Using Problem-Solving"
           :DESCRIPTION
           "When upset, face problem now and use positive problem-solving to overcome it. Face, explore, and discuss problems. (4 items)"
           :SCALE-GROUP-NAME
           "semotcop"
           :SCALE-QUESTIONS
           '(COPPSOLV COPTALKS COPEXPEC COPSELFE)
           :MEAN-SCORE
           ".599"
           :STANDARD-DEVIATION
           ".182"
           :SAMPLE-N
           3273
           :NUM-QUESTIONS
           4
           :HELP-PRIORITY
           1
           :HELP-INFO
           "Learn to focus on rising above the problem and current feelings and using good problem-solving methods to accept the reality of the situation and solve the problem with some sort of a solution that helps in the immediate situation. Also, begin to think about long-term solutions when you have time. When you start to get dysfunctional thoughts, remind yourself of their distructive consequences and re-focus on positive thoughts, solutions, and actions."
           :HELP-LINKS
           '("h8hf2.htm" "wsps.htm" "concentration.htm")
           :PARENTS
           '(SEMOTCOP SUBSCALE)))

(DEFCLASS SSCPPOSTHOUGHTS
          (SEMOTCOP SUBSCALE)
          NIL
          (:DEFAULT-INITARGS
           :NAME-STRING
           "sscpPosThoughts"
           :LABEL
           "sscp-Pos thoughts-phil, pep talk"
           :SCALE-NAME
           "Emotional Coping Using Positive Thoughts"
           :DESCRIPTION
           "When upset, think positive thoughts.  Positive; not critical, punitive, or negative thoughts in response to negative emotions. (2 items)"
           :SCALE-GROUP-NAME
           "semotcop"
           :SCALE-QUESTIONS
           '(COPNEGTH COPPEPTA)
           :MEAN-SCORE
           ".477"
           :STANDARD-DEVIATION
           ".204"
           :SAMPLE-N
           3273
           :NUM-QUESTIONS
           2
           :HELP-PRIORITY
           1
           :HELP-INFO
           "Develop a positive belief system/philosophy that you can use to generate positive thoughts when you need them. Practice viewing the problem/situation from a more positive perspective, help others do the same, confront negative thoughts, and schedule them for a later time to deal with in depth when you are out of the situation. Give yourself pep talks, seek input only from people who can really help--avoid those who interfere."
           :HELP-LINKS
           '("h8hf2.htm")
           :PARENTS
           '(SEMOTCOP SUBSCALE)))

(DEFCLASS SSCPPOSACTS
          (SEMOTCOP SUBSCALE)
          NIL
          (:DEFAULT-INITARGS
           :NAME-STRING
           "sscpPosActs"
           :LABEL
           "sscp-Pos acts,fun,exercise"
           :SCALE-NAME
           "Emotional Coping Using Positive Activities"
           :DESCRIPTION
           "When upset, do positive, constructive activities such as complete problem-related or other involving tasks, have fun, exercise, etc. (2 items)"
           :SCALE-GROUP-NAME
           "semotcop"
           :SCALE-QUESTIONS
           '(COPFUN COPPE)
           :MEAN-SCORE
           ".457"
           :STANDARD-DEVIATION
           ".202"
           :SAMPLE-N
           3273
           :NUM-QUESTIONS
           2
           :HELP-PRIORITY
           1
           :HELP-INFO
           "Vigorous positive mental and physical activity reduces negative emotions and increases positive emotions.  Doing helpful tasks, involving, vigorous physical activity and absorging positive mental activity are very good to do along with problem-solving."
           :HELP-LINKS
           '("h87focus.htm" "h86optim.htm")
           :PARENTS
           '(SEMOTCOP SUBSCALE)))

(DEFCLASS SSCPNOBLAMEANGERWDRAW
          (SEMOTCOP SUBSCALE)
          NIL
          (:DEFAULT-INITARGS
           :NAME-STRING
           "sscpNoBlameAngerWDraw"
           :LABEL
           "sscp-Not anger,blame,withdraw"
           :SCALE-NAME
           "Emotional Coping Without Blaming"
           :DESCRIPTION
           "When upset, don't get angry, too critical, or blame self or others or withdraw. (5 items)"
           :SCALE-GROUP-NAME
           "semotcop"
           :SCALE-QUESTIONS
           '(COPEMOTA COPBLAME COPWDRW COPNEGPH COPSELFB)
           :MEAN-SCORE
           ".580"
           :STANDARD-DEVIATION
           ".202"
           :SAMPLE-N
           3273
           :NUM-QUESTIONS
           5
           :HELP-PRIORITY
           1
           :HELP-INFO
           "Anger and aggression hurts you more than anyone.  It undermines relationships and one's love of oneself. Hositility is trying to change the unchangeable. You must peacefully accept the past or inevitable (or even its possibility) no matter how bad it is if you are to get control of your emotions. If you get frustrated or angry, find positive ways of channeling the anger. Vigorous activity can be a therapeutic part of the program."
           :HELP-LINKS
           '("h8hf2.htm" "h86optim.htm" "b-anger.htm")
           :PARENTS
           '(SEMOTCOP SUBSCALE)))

(DEFCLASS SSCPNOTSMOKDRUGMED
          (SEMOTCOP SUBSCALE)
          NIL
          (:DEFAULT-INITARGS
           :NAME-STRING
           "sscpNotSmokDrugMed"
           :LABEL
           "sscp-Not smoke,drugs"
           :SCALE-NAME
           "Emotional Coping Without Substance Abuse"
           :DESCRIPTION
           "When upset, don't smoke, drink alcohol, or take drugs. (2 items)"
           :SCALE-GROUP-NAME
           "semotcop"
           :SCALE-QUESTIONS
           '(COPSMOKE COPDRUG)
           :MEAN-SCORE
           ".791"
           :STANDARD-DEVIATION
           ".262"
           :SAMPLE-N
           3273
           :NUM-QUESTIONS
           2
           :HELP-PRIORITY
           1
           :HELP-INFO
           "Eating, smoking, and taking drugs to relieve stress reinforces the addictive habit because they often immediately reduce stress!  However, it also strengthens the addictive habit and does nothing to solve any of the problems causing the stress. Try the help-links."
           :HELP-LINKS
           '("smoking.htm" "substance_abuse.htm")
           :PARENTS
           '(SEMOTCOP SUBSCALE)))

(DEFCLASS SSCPNOTEAT
          (SEMOTCOP SUBSCALE)
          NIL
          (:DEFAULT-INITARGS
           :NAME-STRING
           "sscpNotEat"
           :LABEL
           "sscp-Not eat 1"
           :SCALE-NAME
           "Emotional Coping Without Eating"
           :DESCRIPTION
           "When upset, don't eat to feel better. (1 item)"
           :SCALE-GROUP-NAME
           "semotcop"
           :SCALE-QUESTIONS
           '(COPCOPEA)
           :MEAN-SCORE
           ".665"
           :STANDARD-DEVIATION
           ".284"
           :SAMPLE-N
           3273
           :NUM-QUESTIONS
           1
           :HELP-PRIORITY
           1
           :HELP-INFO
           "Eating that reduces stress reinforces eating and may contribute significantly to being overweight."
           :HELP-LINKS
           '("weight_control.htm")
           :PARENTS
           '(SEMOTCOP SUBSCALE)))

(DEFCLASS HAPSDMEANSPIRITSS
          (SEHAPPY SUBSCALE)
          NIL
          (:DEFAULT-INITARGS
           :NAME-STRING
           "hapSDMeanSpiritSS"
           :LABEL
           "ssh-SelfDevel, meaning/spiritualHap"
           :SCALE-NAME
           "Spiritual and Mental Life Happiness"
           :DESCRIPTION
           "Happiness in your self-development, spiritual life, and life meaning"
           :SCALE-GROUP-NAME
           "sehappy"
           :SCALE-QUESTIONS
           '(HAPSELFD HAPSPIRI)
           :MEAN-SCORE
           0.6132
           :STANDARD-DEVIATION
           0.25
           :SAMPLE-N
           3185
           :NUM-QUESTIONS
           2
           :HELP-PRIORITY
           1
           :HELP-INFO
           "Happiness is the result of other factors. A strong philosophy and spiritual life and self-development are key areas for overall happiness. Examine all results on the HQ scales."
           :HELP-LINKS
           '("life_goals_and_meaning.htm" "h3hiself.htm")
           :PARENTS
           '(SEHAPPY SUBSCALE)))

(DEFCLASS HAPCAREEREXSS
          (SEHAPPY SUBSCALE)
          NIL
          (:DEFAULT-INITARGS
           :NAME-STRING
           "hapCareerExSS"
           :LABEL
           "ssh-Career happiness"
           :SCALE-NAME
           "Career Happiness"
           :DESCRIPTION
           "Happiness in your career, work, or school"
           :SCALE-GROUP-NAME
           "sehappy"
           :SCALE-QUESTIONS
           '(HAPCARFU HAPCARNW)
           :MEAN-SCORE
           0.61
           :STANDARD-DEVIATION
           0.25
           :SAMPLE-N
           3185
           :NUM-QUESTIONS
           2
           :HELP-PRIORITY
           1
           :HELP-INFO
           "Happiness is the result of other factors. Examine HQ scales for ways you can improve your happiness."
           :HELP-LINKS
           '("index.html" "self-helpLinks.htm" "c15-carp.htm")
           :PARENTS
           '(SEHAPPY SUBSCALE)))

(DEFCLASS HAPRECPESS
          (SEHAPPY SUBSCALE)
          NIL
          (:DEFAULT-INITARGS
           :NAME-STRING
           "hapRecPESS"
           :LABEL
           "ssh-Recreation PhysAct happiness"
           :SCALE-NAME
           "Recreation and Physical Activity Happiness"
           :DESCRIPTION
           "Happiness in your recreation and physical activity."
           :SCALE-GROUP-NAME
           "sehappy"
           :SCALE-QUESTIONS
           '(HAPPE HAPRECRE)
           :MEAN-SCORE
           0.559
           :STANDARD-DEVIATION
           0.248
           :SAMPLE-N
           3185
           :NUM-QUESTIONS
           2
           :HELP-PRIORITY
           1
           :HELP-INFO
           "Happiness is the result of other factors. Examine your results on the HQ scales for ways you can improve your happiness."
           :HELP-LINKS
           '("index.html" "self-helpLinks.htm" "c15-carp.htm")
           :PARENTS
           '(SEHAPPY SUBSCALE)))

(DEFCLASS HAPAREASS
          (SEHAPPY SUBSCALE)
          NIL
          (:DEFAULT-INITARGS
           :NAME-STRING
           "hapAreaSS"
           :LABEL
           "ssh-LivingArea happiness"
           :SCALE-NAME
           "Living Area Happiness"
           :DESCRIPTION
           "Happiness living in your area."
           :SCALE-GROUP-NAME
           "sehappy"
           :SCALE-QUESTIONS
           '(HAPAREA)
           :MEAN-SCORE
           0.6
           :STANDARD-DEVIATION
           0.25
           :SAMPLE-N
           3185
           :NUM-QUESTIONS
           1
           :HELP-PRIORITY
           1
           :HELP-INFO
           "Happiness is the result of other factors. Examine your results on the HQ scales for ways you can improve your happiness."
           :HELP-LINKS
           '("index.html" "self-helpLinks.htm" "c15-carp.htm")
           :PARENTS
           '(SEHAPPY SUBSCALE)))

(DEFCLASS HAPFAMSS
          (SEHAPPY SUBSCALE)
          NIL
          (:DEFAULT-INITARGS
           :NAME-STRING
           "hapFamSS"
           :LABEL
           "ssh-Family happiness"
           :SCALE-NAME
           "Family Happiness"
           :DESCRIPTION
           "Happiness in your family life."
           :SCALE-GROUP-NAME
           "sehappy"
           :SCALE-QUESTIONS
           '(HAPFAMIL)
           :MEAN-SCORE
           0.64
           :STANDARD-DEVIATION
           0.272
           :SAMPLE-N
           3185
           :NUM-QUESTIONS
           1
           :HELP-PRIORITY
           1
           :HELP-INFO
           "Happiness is the result of other factors. Examine your results on the HQ scales for ways you can improve your happiness."
           :HELP-LINKS
           '("index.html" "self-helpLinks.htm" "c15-carp.htm")
           :PARENTS
           '(SEHAPPY SUBSCALE)))

(DEFCLASS HAPROMSS
          (SEHAPPY SUBSCALE)
          NIL
          (:DEFAULT-INITARGS
           :NAME-STRING
           "hapRomSS"
           :LABEL
           "ssh-Romantic happiness"
           :SCALE-NAME
           "Romantic Happiness"
           :DESCRIPTION
           "Happiness in your romantic life."
           :SCALE-GROUP-NAME
           "sehappy"
           :SCALE-QUESTIONS
           '(HAPSEXRE)
           :MEAN-SCORE
           0.461
           :STANDARD-DEVIATION
           0.303
           :SAMPLE-N
           3185
           :NUM-QUESTIONS
           1
           :HELP-PRIORITY
           1
           :HELP-INFO
           "Happiness is the result of other factors. Examine your results on the HQ scales for ways you can improve your happiness-especially the ones related to interpersonal relationships."
           :HELP-LINKS
           '("conversational_skills.htm" "developing_intimacy.htm")
           :PARENTS
           '(SEHAPPY SUBSCALE)))

(DEFCLASS HAPFRIENDSSS
          (SEHAPPY SUBSCALE)
          NIL
          (:DEFAULT-INITARGS
           :NAME-STRING
           "hapFriendsSS"
           :LABEL
           "ssh-Friends happiness"
           :SCALE-NAME
           "Friendship Happiness"
           :DESCRIPTION
           "Happiness in your friendships"
           :SCALE-GROUP-NAME
           "sehappy"
           :SCALE-QUESTIONS
           '(HAPCLFRN HAPFRIEN HAPWKREL)
           :MEAN-SCORE
           0.621
           :STANDARD-DEVIATION
           0.25
           :SAMPLE-N
           3185
           :NUM-QUESTIONS
           3
           :HELP-PRIORITY
           1
           :HELP-INFO
           "Happiness is the result of other factors. Examine your results on the HQ scales for ways you can improve your happiness-especially the ones related to interpersonal relationships."
           :HELP-LINKS
           '("conversational_skills.htm"
             "developing_intimacy.htm"
             "overcoming_loneliness.htm")
           :PARENTS
           '(SEHAPPY SUBSCALE)))

(DEFCLASS HAPFUTURESS
          (SEHAPPY SUBSCALE)
          NIL
          (:DEFAULT-INITARGS
           :NAME-STRING
           "hapFutureSS"
           :LABEL
           "ssh-Expected future happiness"
           :SCALE-NAME
           "Expected Future Happiness"
           :DESCRIPTION
           "Overall expectation of future happiness. (1 item)"
           :SCALE-GROUP-NAME
           "sehappy"
           :SCALE-QUESTIONS
           '(HAPEXPEC)
           :MEAN-SCORE
           0.757
           :STANDARD-DEVIATION
           0.235
           :SAMPLE-N
           3185
           :NUM-QUESTIONS
           1
           :HELP-PRIORITY
           1
           :HELP-INFO
           "Happiness is the result of other factors. Examine your results on the HQ scales for ways you can improve your happiness."
           :HELP-LINKS
           '("index.html" "self-helpLinks.htm")
           :PARENTS
           '(SEHAPPY SUBSCALE)))

(DEFCLASS HAPPASTSS
          (SEHAPPY SUBSCALE)
          NIL
          (:DEFAULT-INITARGS
           :NAME-STRING
           "hapPastSS"
           :LABEL
           "ssh-Happy to 3yrs ago"
           :SCALE-NAME
           "Happiness to 3 Years Ago"
           :DESCRIPTION
           "Happiness up to 3 years ago. (1 item)"
           :SCALE-GROUP-NAME
           "sehappy"
           :SCALE-QUESTIONS
           '(HAPLIFE)
           :MEAN-SCORE
           0.609
           :STANDARD-DEVIATION
           0.261
           :SAMPLE-N
           3185
           :NUM-QUESTIONS
           1
           :HELP-PRIORITY
           1
           :HELP-INFO
           "Happiness is the result of other factors. Examine your results on the HQ scales for ways you can improve your happiness."
           :HELP-LINKS
           '("index.html" "self-helpLinks.htm")
           :PARENTS
           '(SEHAPPY SUBSCALE)))

(DEFCLASS HAPRECENTSS
          (SEHAPPY SUBSCALE)
          NIL
          (:DEFAULT-INITARGS
           :NAME-STRING
           "hapRecentSS"
           :LABEL
           "ssh-Happy recently"
           :SCALE-NAME
           "Past 3 Years Happiness"
           :DESCRIPTION
           "Happiness in the past 3 years.  (1 item)"
           :SCALE-GROUP-NAME
           "sehappy"
           :SCALE-QUESTIONS
           '(HAPYEAR HAP3YEAR)
           :MEAN-SCORE
           0.558
           :STANDARD-DEVIATION
           0.246
           :SAMPLE-N
           3185
           :NUM-QUESTIONS
           2
           :HELP-PRIORITY
           1
           :HELP-INFO
           "Happiness is the result of other factors. Examine your results on the HQ scales for ways you can improve your happiness. (2 items)"
           :HELP-LINKS
           '("index.html" "self-helpLinks.htm")
           :PARENTS
           '(SEHAPPY SUBSCALE)))

(DEFCLASS SSRECLOSEFRIENDS
          (SRPEOPLE SUBSCALE)
          NIL
          (:DEFAULT-INITARGS
           :NAME-STRING
           "ssreCloseFriends"
           :LABEL
           "ssre-CloseFriends"
           :SCALE-NAME
           "Close Friends"
           :DESCRIPTION
           "Relationship Outcome--Friendship Closeness. Quality of close friends. (2 items)"
           :SCALE-GROUP-NAME
           "srpeople"
           :SCALE-QUESTIONS
           '(RPENETW RPECLFRN)
           :MEAN-SCORE
           0.215
           :STANDARD-DEVIATION
           0.136
           :SAMPLE-N
           2673
           :NUM-QUESTIONS
           0
           :HELP-PRIORITY
           1
           :HELP-INFO
           "Close relationships are the result of other factors. Examine your HQ factors--especially interpersonal scales--for areas to improve.  Good listening skills, openness, honesty, trust, being able to resolve conflicts, and being a dependable friend are important for any close relationship."
           :HELP-LINKS
           '("conversational_skills.htm" "developing_intimacy.htm")
           :PARENTS
           '(SRPEOPLE SUBSCALE)))

(DEFCLASS SSREROMRELSUC
          (SRPEOPLE SUBSCALE)
          NIL
          (:DEFAULT-INITARGS
           :NAME-STRING
           "ssreRomRelSuc"
           :LABEL
           "ssre-RomanticRelationshipSuccess"
           :SCALE-NAME
           "Romantic Relationships"
           :DESCRIPTION
           "Success in romantic relationships"
           :SCALE-GROUP-NAME
           "srpeople"
           :SCALE-QUESTIONS
           '(RPEHMARR RPECOMMI)
           :MEAN-SCORE
           0.63
           :STANDARD-DEVIATION
           0.311
           :SAMPLE-N
           2673
           :NUM-QUESTIONS
           0
           :HELP-PRIORITY
           1
           :HELP-INFO
           "Good relationships are the result of other factors. Examine your HQ factors--especially interpersonal scales. See close relationship help comments."
           :HELP-LINKS
           '("conversational_skills.htm"
             "overcoming_loneliness.htm"
             "c-rejct.htm")
           :PARENTS
           '(SRPEOPLE SUBSCALE)))

(DEFCLASS SSRENUMFRIENDS
          (SRPEOPLE SUBSCALE)
          NIL
          (:DEFAULT-INITARGS
           :NAME-STRING
           "ssreNumFriends"
           :LABEL
           "ssre-NumFriends"
           :SCALE-NAME
           "Number of Friends"
           :DESCRIPTION
           "Relationship Outcome--Number of Friends.(2 items)"
           :SCALE-GROUP-NAME
           "srpeople"
           :SCALE-QUESTIONS
           '(RPENUMFR RPENUMCL)
           :MEAN-SCORE
           0.305
           :STANDARD-DEVIATION
           0.204
           :SAMPLE-N
           2673
           :NUM-QUESTIONS
           0
           :HELP-PRIORITY
           0
           :HELP-INFO
           "Do you have enough good friends and associates? If not, or if you feel shy or anxious about meeting new people, you can improve social skills and your confidence by trying some of the tips in the help links."
           :HELP-LINKS
           '("conversational_skills.htm"
             "overcoming_loneliness.htm"
             "c-rejct.htm")
           :PARENTS
           '(SRPEOPLE SUBSCALE)))

(DEFCLASS SSREHAPSUCFRS
          (SRPEOPLE SUBSCALE)
          NIL
          (:DEFAULT-INITARGS
           :NAME-STRING
           "ssreHapSucFrs"
           :LABEL
           "ssre-HappySuccessfulFriends"
           :SCALE-NAME
           "Happy, Successful Friends"
           :DESCRIPTION
           "Relationship Outcome--Happy, Successful Friends. (1 item)"
           :SCALE-GROUP-NAME
           "srpeople"
           :SCALE-QUESTIONS
           '(RPEHMARR RPECOMMI)
           :MEAN-SCORE
           0.623
           :STANDARD-DEVIATION
           0.232
           :SAMPLE-N
           2673
           :NUM-QUESTIONS
           1
           :HELP-PRIORITY
           1
           :HELP-INFO
           "Having happy, successful friends can have a positive influence on you and can also have other benefits."
           :HELP-LINKS
           '("conversational_skills.htm"
             "overcoming_loneliness.htm"
             "c-rejct.htm")
           :PARENTS
           '(SRPEOPLE SUBSCALE)))

(DEFCLASS SSDELODEPSYMP
          (SRDEPRES SUBSCALE)
          NIL
          (:DEFAULT-INITARGS
           :NAME-STRING
           "ssdeLoDepSymp"
           :LABEL
           "ssde-LoDepressionSymptoms"
           :SCALE-NAME
           "Low Depression Symptoms"
           :DESCRIPTION
           "Depression Outcome Subscale-Low clinical depression symptoms"
           :SCALE-GROUP-NAME
           "srdepres"
           :SCALE-QUESTIONS
           '(RDEPFEEL RDEPTHOU RDEPDYSS RDEPMAJS)
           :MEAN-SCORE
           0.515
           :STANDARD-DEVIATION
           0.255
           :SAMPLE-N
           2819
           :NUM-QUESTIONS
           4
           :HELP-PRIORITY
           1
           :HELP-INFO
           "See Depression main scale help information and help-links."
           :HELP-LINKS
           '("depression.htm" "my-peek.htm" "h85cdepr.htm")
           :PARENTS
           '(SRDEPRES SUBSCALE)))

(DEFCLASS SSDELODEPTREATS
          (SRDEPRES SUBSCALE)
          NIL
          (:DEFAULT-INITARGS
           :NAME-STRING
           "ssdeLoDepTreats"
           :LABEL
           "ssde-LoDepressionTreatments"
           :SCALE-NAME
           "Low Depression Treatments"
           :DESCRIPTION
           "Depression Outcome Subscale-Low clinical depression therapy and treatments"
           :SCALE-GROUP-NAME
           "srdepres"
           :SCALE-QUESTIONS
           '(RDEPMEDS RDEPTHER)
           :MEAN-SCORE
           0.767
           :STANDARD-DEVIATION
           0.286
           :SAMPLE-N
           2819
           :NUM-QUESTIONS
           2
           :HELP-PRIORITY
           1
           :HELP-INFO
           "See Depression main scale help information and help-links."
           :HELP-LINKS
           '("depression.htm" "my-peek.htm" "h85cdepr.htm")
           :PARENTS
           '(SRDEPRES SUBSCALE)))

(DEFCLASS SSAXLOPERFGENANX
          (SRANXIET SUBSCALE)
          NIL
          (:DEFAULT-INITARGS
           :NAME-STRING
           "ssaxLoPerfGenAnx"
           :LABEL
           "ssax-LoPerformanceAndGeneralAnxiety"
           :SCALE-NAME
           "Low General or Performance Anxiety"
           :DESCRIPTION
           "Low generaly anxiety or anxiety about performance"
           :SCALE-GROUP-NAME
           "sranxiet"
           :SCALE-QUESTIONS
           '(RANXPERF RANXALLT RANXPSTD RANXSOCI)
           :MEAN-SCORE
           0.573
           :STANDARD-DEVIATION
           0.237
           :SAMPLE-N
           3298
           :NUM-QUESTIONS
           4
           :HELP-PRIORITY
           1
           :HELP-INFO
           "See Anxiety main scale help information and help-links."
           :HELP-LINKS
           '("anxiety.htm" "my-peek.htm" "h8hf2.htm")
           :PARENTS
           '(SRANXIET SUBSCALE)))

(DEFCLASS SSAXLOWFEAROCD
          (SRANXIET SUBSCALE)
          NIL
          (:DEFAULT-INITARGS
           :NAME-STRING
           "ssaxLowFearOCD"
           :LABEL
           "ssax-LoFearsAndOCDsymptoms"
           :SCALE-NAME
           "Low Fears, Phobias, or OCD"
           :DESCRIPTION
           "Low fears, phobias, and obsessive-compulsive disorder symptoms"
           :SCALE-GROUP-NAME
           "sranxiet"
           :SCALE-QUESTIONS
           '(RANXOCD RANXPHOB RANXPANI)
           :MEAN-SCORE
           0.774
           :STANDARD-DEVIATION
           0.211
           :SAMPLE-N
           3298
           :NUM-QUESTIONS
           3
           :HELP-PRIORITY
           1
           :HELP-INFO
           "Basic fears OCD symptoms can usually be greatly reduced with good cognitive therapy and other methods you can learn. See the helplinks for a start."
           :HELP-LINKS
           '("anxiety.htm" "my-peek.htm" "h8hf2.htm")
           :PARENTS
           '(SRANXIET SUBSCALE)))

(DEFCLASS SSAXLOANXTREATS
          (SRANXIET SUBSCALE)
          NIL
          (:DEFAULT-INITARGS
           :NAME-STRING
           "ssaxLoAnxTreats"
           :LABEL
           "ssax-LoAnxietyTreatments"
           :SCALE-NAME
           "Low Anxiety Treatments"
           :DESCRIPTION
           "Low amount of anxiety disorder therapy or other treatments"
           :SCALE-GROUP-NAME
           "sranxiet"
           :SCALE-QUESTIONS
           '(RANXTHER RANXMEDS)
           :MEAN-SCORE
           0.832
           :STANDARD-DEVIATION
           0.259
           :SAMPLE-N
           3325
           :NUM-QUESTIONS
           0
           :HELP-PRIORITY
           1
           :HELP-INFO
           "See Anxiety main scale help information and help-links."
           :HELP-LINKS
           '("anxiety.htm" "my-peek.htm" "h8hf2.htm")
           :PARENTS
           '(SRANXIET SUBSCALE)))

(DEFCLASS SSHELONEGADDICTHABS
          (SRELHLTH SUBSCALE)
          NIL
          (:DEFAULT-INITARGS
           :NAME-STRING
           "ssheLoNegAddictHabs"
           :LABEL
           "sshe-LoNegAddictHabits"
           :SCALE-NAME
           "Low Addictive Habits"
           :DESCRIPTION
           "Health Outcome Subscale--Low addictive habits (smoking, alcohol, drugs). (3 items)"
           :SCALE-GROUP-NAME
           "srelhlth"
           :SCALE-QUESTIONS
           '(RHLALCOH RHLSMOKE RHLDRUGS)
           :MEAN-SCORE
           0.776
           :STANDARD-DEVIATION
           0.181
           :SAMPLE-N
           3081
           :NUM-QUESTIONS
           3
           :HELP-PRIORITY
           1
           :HELP-INFO
           "Addictive habits such as alcohol or substance abuse, smoking, and overeating can have very serious effect on all areas of happiness and success. If you have an addictive habit, your first concern should be to make eliminating the addictive behavior a top priority in your life.  Joining a 12-step program or getting professional treatment is almost a necessity for alcohol and substance abuse."
           :HELP-LINKS
           '("substance_abuse.htm"
             "smoking.htm"
             "weight_control.htm"
             "h31chang.htm")
           :PARENTS
           '(SRELHLTH SUBSCALE)))

(DEFCLASS SSHELOFREQILL
          (SRELHLTH SUBSCALE)
          NIL
          (:DEFAULT-INITARGS
           :NAME-STRING
           "ssheLoFreqIll"
           :LABEL
           "ssheLoFreqIll"
           :SCALE-NAME
           "Low Illness Frequency"
           :DESCRIPTION
           "Health Outcomes Subscale Low Frequency of Illness. (1 item)"
           :SCALE-GROUP-NAME
           "srelhlth"
           :SCALE-QUESTIONS
           '(RHLFREQI)
           :MEAN-SCORE
           0.659
           :STANDARD-DEVIATION
           0.245
           :SAMPLE-N
           3173
           :NUM-QUESTIONS
           1
           :HELP-PRIORITY
           1
           :HELP-INFO
           "Your health is perhaps your most precious resource.  Simple differences in people's daily health habits add together in time to create many years difference in health and longevity. "
           :HELP-LINKS
           '("health tips.htm")
           :PARENTS
           '(SRELHLTH SUBSCALE)))

(DEFCLASS SSHEPELOWEIGHT
          (SRELHLTH SUBSCALE)
          NIL
          (:DEFAULT-INITARGS
           :NAME-STRING
           "sshePELoWeight"
           :LABEL
           "sshePELoWeight"
           :SCALE-NAME
           "Physical Exercise, Low Weight"
           :DESCRIPTION
           "Health Outcome Subscale--physical excercise, low weight.(2 items)"
           :SCALE-GROUP-NAME
           "srelhlth"
           :SCALE-QUESTIONS
           '(RHLPHYSI RHLWEIGH)
           :MEAN-SCORE
           0.683
           :STANDARD-DEVIATION
           0.272
           :SAMPLE-N
           3173
           :NUM-QUESTIONS
           0
           :HELP-PRIORITY
           1
           :HELP-INFO
           "Adequate physical exercise and health eating habits are major causes of health and longevity."
           :HELP-LINKS
           '(WEIGHT_CONTROL.HTM)
           :PARENTS
           '(SRELHLTH SUBSCALE)))

(DEFCLASS ACAD-LEARNING-MAQS
          (MULTI-ANSWER-SCALE)
          NIL
          (:DEFAULT-INITARGS
           :NAME-STRING
           "Acad-Learning-MAQs"
           :LABEL
           "Acad-Learning MultAnsQuests"
           :SCALE-NAME
           "Academic/Learning Multi-Answer Questions"
           :DESCRIPTION
           "Learning-Academic Success Other Questions"
           :SCALE-QUESTIONS
           '(STUCOLLE STUMAJOR STUSPECI STURESID STGPATRE STURESOURCE)
           :MEAN-SCORE
           NIL
           :STANDARD-DEVIATION
           NIL
           :SAMPLE-N
           NIL
           :NUM-QUESTIONS
           0
           :HELP-PRIORITY
           NIL
           :HELP-INFO
           "Study your answers for insight, and check learning-related helplinks."
           :HELP-LINKS
           NIL
           :PARENTS
           '(MULTI-ANSWER-SCALE)))

(DEFCLASS SUSERFEEDBACK
          (SCALE)
          NIL
          (:DEFAULT-INITARGS
           :NAME-STRING
           "sUserFeedback"
           :LABEL
           "User Feedback"
           :SCALE-NAME
           "sUserFeedback"
           :DESCRIPTION
           "User Feedback--1 item"
           :SCALE-QUESTIONS
           '(USERRATE)
           :MEAN-SCORE
           NIL
           :STANDARD-DEVIATION
           NIL
           :SAMPLE-N
           NIL
           :NUM-QUESTIONS
           1
           :PARENTS
           '(SCALE)))

(DEFCLASS BIO
          (ASSESSMENT PER-SYSTEM)
          NIL
          (:DEFAULT-INITARGS
           :TITLE
           "BIO"
           :SCALE-GROUP-DESCRIPTION
           "Biographical data"
           :PARENTS
           '(ASSESSMENT PER-SYSTEM)))

(DEFCLASS VALUES-THEMES
          (ASSESSMENT PER-SYSTEM)
          NIL
          (:DEFAULT-INITARGS
           :TITLE
           "VALUES-THEMES"
           :SCALE-GROUP-DESCRIPTION
           "The 11 Value-Themes scales are the result of a factor and logical analysis of the original four scales Achievement-Status; Social-Family Related; Internal-Intrinsic; and Non-Dysfunctional Values-Themes. "
           :PARENTS
           '(ASSESSMENT PER-SYSTEM)))

(DEFCLASS BELIEFS
          (ASSESSMENT PER-SYSTEM)
          NIL
          (:DEFAULT-INITARGS
           :TITLE
           "BELIEFS"
           :SCALE-GROUP-DESCRIPTION
           "These scales are almost exactly from items originally presented in the book and were supported by factor analytic study. "
           :PARENTS
           '(ASSESSMENT PER-SYSTEM)))

(DEFCLASS SKILLS-CONFIDENCE
          (ASSESSMENT PER-SYSTEM)
          NIL
          (:DEFAULT-INITARGS
           :TITLE
           "SKILLS-CONFIDENCE"
           :SCALE-GROUP-DESCRIPTION
           "The following scales cover cognitive-behavioral skill areas  important to happiness and life success.  The Self-Confidence scale is largely an overview consisting of items each covering broad skill areas. "
           :PARENTS
           '(ASSESSMENT PER-SYSTEM)))

(DEFCLASS INTERPERSONAL
          (ASSESSMENT PER-SYSTEM)
          NIL
          (:DEFAULT-INITARGS
           :TITLE
           "INTERPERSONAL ATTRIBUTES"
           :SCALE-GROUP-DESCRIPTION
           "These interpersonal scales were part of the Stevens Relationship Questionnaire (SRQ) and have previous validating evidence from an earlier studies.  Most items on these scales were originally taken from materials developed for assertion training and marital relationship workshops, and had been clinically tested on hundreds of consumers."
           :PARENTS
           '(ASSESSMENT PER-SYSTEM)))

(DEFCLASS ACAD-LEARNING
          (ASSESSMENT PER-SYSTEM)
          NIL
          (:DEFAULT-INITARGS
           :TITLE
           "ACADEMIC-LEARNING"
           :SCALE-GROUP-DESCRIPTION
           "Several academic scales were created after factor analysis of the original five scales of Learning and Study Skills,  Learning Skill Areas, Learning Disabilities, Academic Motivation, and Academic Satisfaction.  The following 12 scales and 2 self-report aptitude items are more independent and specific."
           :HELP-LINKS
           '("LEARN.htm")
           :PARENTS
           '(ASSESSMENT PER-SYSTEM)))

(DEFCLASS CAREER-INTEREST
          (ASSESSMENT PER-SYSTEM)
          NIL
          (:DEFAULT-INITARGS
           :TITLE
           "CAREER/MAJOR INTEREST"
           :SCALE-GROUP-DESCRIPTION
           "The college major  interest scales divided common academic major areas into sets using typical groupings in universities, and groupings by the Strong Interest Inventory as a basis."
           :PARENTS
           '(ASSESSMENT PER-SYSTEM)))

(DEFCLASS OUTCOME
          (ASSESSMENT PER-SYSTEM)
          NIL
          (:DEFAULT-INITARGS
           :TITLE
           "OUTCOME"
           :SCALE-GROUP-DESCRIPTION
           " "
           :PARENTS
           '(ASSESSMENT PER-SYSTEM)))

(DEFCLASS BIO-TEXT
          (TEXT-ANSWER-QUESTION SCALE)
          NIL
          (:DEFAULT-INITARGS
           :NAME-STRING
           "BIO-TEXT-Qs"
           :LABEL
           "Biog Text Qs"
           :SCALE-NAME
           "Biographical Text Questions"
           :DESCRIPTION
           "Basic User Information"
           :SCALE-QUESTIONS
           '(FRAME-BIO-INFO FRAME-FAMILY-INFO)
           :NUM-QUESTIONS
           0
           :PARENTS
           '(TEXT-ANSWER-QUESTION SCALE)))

(DEFCLASS INTRO-MAQ
          (MULTI-ANSWER-SCALE)
          NIL
          (:DEFAULT-INITARGS
           :NAME-STRING
           "INTRO-MAQ"
           :LABEL
           "Biographical MultAnsQuests"
           :SCALE-NAME
           "Biographical Multi-Answer Questions"
           :DESCRIPTION
           "Additional User Information"
           :SCALE-QUESTIONS
           '(UTYPE UGOALS)
           :NUM-QUESTIONS
           0
           :PARENTS
           '(MULTI-ANSWER-SCALE)))

(DEFCLASS BIO-MAQ
          (MULTI-ANSWER-SCALE)
          NIL
          (:DEFAULT-INITARGS
           :NAME-STRING
           "BIO-MAQ"
           :LABEL
           "Biographical MultAnsQuests"
           :SCALE-NAME
           "Biographical Multi-Answer Questions"
           :DESCRIPTION
           "Additional User Information"
           :SCALE-QUESTIONS
           '(BIO4JOB BIO7LANG BIO1ETHN BIORELAF SFAMILY)
           :NUM-QUESTIONS
           5
           :PARENTS
           '(MULTI-ANSWER-SCALE)))

(DEFCLASS HQ
          (COMPOSITE-SCALE)
          NIL
          (:DEFAULT-INITARGS
           :NAME-STRING
           "HQ"
           :LABEL
           "HQ-HapQuot"
           :SCALE-NAME
           "Happiness Quotient Scale (HQ)"
           :DESCRIPTION
           "The HQ is a simple formula for estimating ones overall ability to achieve happiness.  The HQ is the linear combination of the 56 non-academic SHAQ scales.  The weights are the correlations of the individual scales with happiness.   One use of the HQ is to give users feedback about their progress developing success and happiness-related attributes. 
     This scale correlated .865 with overall happiness, .730 with low depression, .675 with low anxiety, .701 with low anger/aggression, .816 with the health outcomes scale, and .693 with overall relationship success.  It also correlated .486 with income, .458 with education level, and .393 with college grade average.  By any psychological research standards, these are high correlations showing that  HQ is a powerful predictor of not only overall happiness and other emotions, but of life success in the areas of  relationships, career, and health."
           :SCALE-GROUP-NAME
           "composite-scale"
           :SCALE-QUESTIONS
           'NIL
           :SUBSCALES
           'NIL
           :MEAN-SCORE
           100
           :STANDARD-DEVIATION
           10
           :SAMPLE-N
           NIL
           :NUM-QUESTIONS
           0
           :HELP-PRIORITY
           1
           :HELP-INFO
           "Understanding your own HQ score and the factors that contribute to it (or reduce it) can be important for understanding how to lead a happier and more successful life.  The help links provided with each scale relate to the factors/questions that make up your HQ score.  Using the self-help information provided can potentially increase your HQ score and ability to lead a happy, successful life."
           :HELP-LINKS
           '("index.html")
           :PARENTS
           '(COMPOSITE-SCALE)))

(DEFCLASS HIGHERSELFSCALE
          (COMPOSITE-SCALE)
          NIL
          (:DEFAULT-INITARGS
           :NAME-STRING
           "HigherSelfScale"
           :LABEL
           "HigherSelfScale"
           :SCALE-NAME
           "Higher Self Beliefs and Values--composite scale"
           :DESCRIPTION
           "A key HQ scale. Your cognitive system that unconditionally values your own and others' happiness, health, and wellbeing. Includes valuing truth, knowledge, growth, integrity, and excellence. 
     Evidence for Higher Self Values and for Making Happiness a Top Goal. Making happiness a top goal correlated .446 with overall appiness, .217 with low depression, .185 with low anxiety, .316 with low anger-aggression, .298 with health outcomes, and.396 with good relationship outcomes. 
     The Higher Self Values scale included making happiness important, but also included values like integrity, self-sufficiency, impacting the world, and learning and self-development. The Higher Self scale correlated .503 with overall happiness, .252 with low depression, .197 with low anxiety, .372 with low anger-aggression, .365 with health outcomes, and .436 with relationship outcomes. "
           :SCALE-GROUP-NAME
           "composite-scale"
           :SCALE-QUESTIONS
           '(THMIMPAC
             THM33GOA
             THM6LEAR
             THM9SHAP
             THM10OTH
             THM14IND
             THM22BOD
             THM23BAL
             THM34EXP
             THMCOMPC
             THMINTEG
             THMPHIL
             THMBEAUT
             THMGOODN
             THMPLAYF
             THMSESUF
             THMSEDIS
             THMUNCON
             TBVBALAN
             TBVHAPCA
             TBVGRATI
             THVSELFA
             THVUNCON
             THVSELFW)
           :MEAN-SCORE
           ".678"
           :STANDARD-DEVIATION
           ".125"
           :SAMPLE-N
           3217
           :NUM-QUESTIONS
           24
           :HELP-PRIORITY
           1
           :HELP-INFO
           "Your top values and goals may be somewhat 'programmed' into you by your parents, religion, school, friends, job, and many other outside influences to the degree that you are barely aware of where they came from.  Since these values and goals are so deep, you may not have questioned them or even barely been aware of them at times.  Nevertheless, they are very powerful determinates of your thinking and behavior.  Examining them, questionning them, and studying alternatives from people who are very happy and successful can increase your awareness of who you are and how you can maximize your own happiness and success.  Philosophers, psychologists, and religious leaders have come to many similar conclusions that you will find when  you study them.  In the end, your values are a choice, and changing your values can be a life-changing experience."
           :HELP-LINKS
           '("h3hiself.htm")
           :PARENTS
           '(COMPOSITE-SCALE)))

(DEFCLASS SID
          (BIO-TEXT)
          NIL
          (:DEFAULT-INITARGS
           :NAME-STRING
           "sID"
           :LABEL
           "sIDinfo"
           :SCALE-NAME
           "User ID Information"
           :DESCRIPTION
           "User ID Information"
           :SCALE-GROUP-NAME
           "BIO"
           :SCALE-QUESTIONS
           '(FRAME-BIO-INFO)
           :NUM-QUESTIONS
           6
           :HELP-PRIORITY
           NIL
           :HELP-INFO
           ""
           :HELP-LINKS
           NIL
           :PARENTS
           '(BIO-TEXT)))

(DEFCLASS ACAD-ACH
          (BIO SCALE)
          NIL
          (:DEFAULT-INITARGS
           :NAME-STRING
           "acad-ach"
           :LABEL
           "Acad Achievement"
           :SCALE-NAME
           "Academic Achievement"
           :DESCRIPTION
           "Based upon combination of completed education level and Grade Point Average"
           :SCALE-GROUP-NAME
           "BIO"
           :SCALE-QUESTIONS
           '(BIO3EDUC BIOHSGPA BIOCOLLE)
           :MEAN-SCORE
           NIL
           :STANDARD-DEVIATION
           NIL
           :SAMPLE-N
           NIL
           :NUM-QUESTIONS
           NIL
           :HELP-PRIORITY
           1
           :HELP-INFO
           ""
           :HELP-LINKS
           NIL
           :PARENTS
           '(BIO SCALE)))

(DEFCLASS NO-SCALE
          (BIO SCALE)
          NIL
          (:DEFAULT-INITARGS
           :NAME-STRING
           "no-scale"
           :LABEL
           "Non-scale items"
           :SCALE-NAME
           "Items not on any scale."
           :DESCRIPTION
           "Individual items not on any scale."
           :SCALE-GROUP-NAME
           "BIO"
           :MEAN-SCORE
           NIL
           :STANDARD-DEVIATION
           NIL
           :SAMPLE-N
           NIL
           :NUM-QUESTIONS
           NIL
           :SCALE-QUESTIONS
           '(BIO5INCO)
           :HELP-PRIORITY
           0
           :HELP-INFO
           ""
           :HELP-LINKS
           NIL
           :PARENTS
           '(BIO SCALE)))

(DEFCLASS SUTYPE
          (INTRO-MAQ)
          NIL
          (:DEFAULT-INITARGS
           :NAME-STRING
           "sutype"
           :LABEL
           "sUserType"
           :SCALE-NAME
           "User SHAQ Type"
           :DESCRIPTION
           "SHAQ scale-selection information."
           :SCALE-GROUP-NAME
           "BIO-MAC"
           :SCALE-QUESTIONS
           '(UTYPE)
           :NUM-QUESTIONS
           1
           :HELP-PRIORITY
           NIL
           :HELP-INFO
           ""
           :HELP-LINKS
           NIL
           :PARENTS
           '(INTRO-MAQ)))

(DEFCLASS SUGOALS
          (INTRO-MAQ)
          NIL
          (:DEFAULT-INITARGS
           :NAME-STRING
           "sugoals"
           :LABEL
           "sUserGoals"
           :SCALE-NAME
           "User SHAQ Goals"
           :DESCRIPTION
           "User Goals for taking SHAQ."
           :SCALE-GROUP-NAME
           "BIO-MAC"
           :SCALE-QUESTIONS
           '(UGOALS)
           :NUM-QUESTIONS
           1
           :HELP-PRIORITY
           NIL
           :HELP-INFO
           ""
           :HELP-LINKS
           NIL
           :PARENTS
           '(INTRO-MAQ)))

(DEFCLASS ST1HIGHERSELF
          (VALUES-THEMES HQ SCALE)
          NIL
          (:DEFAULT-INITARGS
           :NAME-STRING
           "sT1HigherSelf"
           :SCALE-NAME
           "sT1: Higher Self and IntegrityValues-Beliefs"
           :LABEL
           "sT1-HigherSelf-Integrity  happy balance devel discpn phil"
           :DESCRIPTION
           "Values self happiness, integrity, development, learning, discipline, self-sufficiency, independence, balance, and strong philosophy of life. This scale correlated .380 with overall happiness, .166 with low depression, .137 with low anxiety,.327 with low anger/aggression, .327 with the health scale, and .351 with overall relationship success, (10 items)"
           :SCALE-GROUP-NAME
           "values-themes"
           :SCALE-QUESTIONS
           '(THM6LEAR
             THM9SHAP
             THM14IND
             THM22BOD
             THM23BAL
             THMCOMPC
             THMINTEG
             THMPHIL
             THMSESUF
             THMSEDIS)
           :MEAN-SCORE
           ".749"
           :STANDARD-DEVIATION
           ".140"
           :SAMPLE-N
           3334
           :NUM-QUESTIONS
           10
           :HELP-PRIORITY
           1
           :HELP-INFO
           "Valuing happiness, integrity, self-development, a strong personal philosophy, and these other values seem to be an important component of living a happy life."
           :HELP-LINKS
           '("h3hiself.htm")
           :PARENTS
           '(VALUES-THEMES HQ SCALE)))

(DEFCLASS ST2SOCINTIMNOFAM
          (VALUES-THEMES HQ SCALE)
          NIL
          (:DEFAULT-INITARGS
           :NAME-STRING
           "sT2SocIntimNoFamScale"
           :LABEL
           "sT2-SocialIntimacyNotFamily  love/rom  respect support agreeable"
           :SCALE-NAME
           "Non-Family, Social-Intimacy Values"
           :DESCRIPTION
           "Values intimacy, romance and being liked, respected, and supported. This scale correlated .256 with overall happiness, .251 with low anger/aggression, .279 with the health scale, and .357 with overall relationship success,(6 items)"
           :SCALE-GROUP-NAME
           "values-themes"
           :SCALE-QUESTIONS
           '(THM8ROMA THM12PLE THMRESPE THM20INT THMLIKED THMSUPPO)
           :MEAN-SCORE
           ".735"
           :STANDARD-DEVIATION
           ".145"
           :SAMPLE-N
           3279
           :NUM-QUESTIONS
           6
           :HELP-PRIORITY
           0
           :HELP-INFO
           "Changing long-established, top values is not easy. If you want to change some of these values, you can start with the help-links below."
           :HELP-LINKS
           '("life_goals_and_meaning.htm")
           :PARENTS
           '(VALUES-THEMES HQ SCALE)))

(DEFCLASS ST3FAMCARE
          (VALUES-THEMES HQ SCALE)
          NIL
          (:DEFAULT-INITARGS
           :NAME-STRING
           "sT3FamCareScale"
           :LABEL
           "sT3-Family-EmotionalSupport and care giving parental love-respect"
           :SCALE-NAME
           "Family Values"
           :DESCRIPTION
           "Care-giving. This scale correlated .406 with overall happiness, .154 with low depression, .110 with low anxiety,.217 with low anger/aggression, .294 with the health scale, and .426 with overall relationship success, (3 items)"
           :SCALE-GROUP-NAME
           "values-themes"
           :SCALE-QUESTIONS
           '(THMCAREG THMPARLV THMFAMIL)
           :MEAN-SCORE
           ".701"
           :STANDARD-DEVIATION
           ".172"
           :SAMPLE-N
           2424
           :NUM-QUESTIONS
           3
           :HELP-PRIORITY
           0
           :HELP-INFO
           "Changing long-established, top values is not easy. If you want to change some of these values, you can start with the help-links below."
           :HELP-LINKS
           '("life_goals_and_meaning.htm")
           :PARENTS
           '(VALUES-THEMES HQ SCALE)))

(DEFCLASS ST4SUCCESSSTATUSMATER
          (VALUES-THEMES HQ SCALE)
          NIL
          (:DEFAULT-INITARGS
           :NAME-STRING
           "sT4SuccessStatusMater"
           :LABEL
           "sT4-SuccessStatusIncomeMaterialism"
           :SCALE-NAME
           "Achievement, Status, Material-Wellbeing Values"
           :DESCRIPTION
           "Values success, education, high income and possessions, respect, status, being a CEO, and completing important goals. This scale correlated .295 with overall happiness, .136 with low depression, .096 with low anxiety,.138 with low anger/aggression, .303 with the health scale, and .298 with overall relationship success,(8 items)"
           :SCALE-GROUP-NAME
           "values-themes"
           :SCALE-QUESTIONS
           '(THM3EDUC
             THM4MONE
             THM25POS
             THM26SUC
             THM30CEO
             THM33GOA
             THMRESPE
             THM1ACH
             THMRECOG)
           :MEAN-SCORE
           ".615"
           :STANDARD-DEVIATION
           ".148"
           :SAMPLE-N
           3269
           :NUM-QUESTIONS
           9
           :HELP-PRIORITY
           0
           :HELP-INFO
           "Changing long-established, top values is not easy. If you want to change some of these values, you can start with the help-links below."
           :HELP-LINKS
           '("life_goals_and_meaning.htm")
           :PARENTS
           '(VALUES-THEMES HQ SCALE)))

(DEFCLASS ST5-ORDERPERFECTIONGOODNESS
          (VALUES-THEMES HQ SCALE)
          NIL
          (:DEFAULT-INITARGS
           :NAME-STRING
           "sT5-OrderPerfectionGoodness"
           :LABEL
           "sT5-OrderPerfectionGoodness cleanliness juatice simplicity punctual"
           :SCALE-NAME
           "Idealistic, Mental, Order, Aesthetic Values"
           :DESCRIPTION
           "Values goodness, beauty, idealism, orderliness, perfection, organization, justice, simplicity, cleanliness, wholeness. This scale correlated .310 with overall happiness, .102 with low depression, .214 with low anger/aggression, .278 with the health scale, and .338 with overall relationship success, (7 items)"
           :SCALE-GROUP-NAME
           "values-themes"
           :SCALE-QUESTIONS
           '(THMORDER
             THMCLEAN
             THMPERFE
             THMJUSTI
             THMSIMPL
             THMBEAUT
             THMGOODN
             THMWHOLE)
           :MEAN-SCORE
           ".649"
           :STANDARD-DEVIATION
           ".142"
           :SAMPLE-N
           3334
           :NUM-QUESTIONS
           8
           :HELP-PRIORITY
           0
           :HELP-INFO
           "Changing long-established, top values is not easy. If you want to change some of these values, you can start with the help-links below."
           :HELP-LINKS
           '("life_goals_and_meaning.htm")
           :PARENTS
           '(VALUES-THEMES HQ SCALE)))

(DEFCLASS ST6GODSPIRITRELIG
          (VALUES-THEMES HQ SCALE)
          NIL
          (:DEFAULT-INITARGS
           :NAME-STRING
           "sT6GodSpiritRelig"
           :LABEL
           "sT6-GodSpiritualReligion"
           :SCALE-NAME
           "God, Spiritual Intimacy Values"
           :DESCRIPTION
           "Values spiritual intimacy, God, religion, obedience to God. This scale correlated .302 with overall happiness, .126 with low depression, .137 with low anxiety,.103 with low anger/aggression, .224 with the health scale, and .269 with overall relationship success, (4 items)"
           :SCALE-GROUP-NAME
           "values-themes"
           :SCALE-QUESTIONS
           '(THMOBGOD THMRELGD THMSPIRI THMRELIG)
           :MEAN-SCORE
           ".555"
           :STANDARD-DEVIATION
           ".240"
           :SAMPLE-N
           2473
           :NUM-QUESTIONS
           4
           :HELP-PRIORITY
           0
           :HELP-INFO
           "Changing long-established, top values is not easy. If you want to change some of these values, you can start with the help-links below."
           :HELP-LINKS
           '("life_goals_and_meaning.htm")
           :PARENTS
           '(VALUES-THEMES HQ SCALE)))

(DEFCLASS ST7IMPACTCHALLENGEEXPLOR
          (VALUES-THEMES HQ SCALE)
          NIL
          (:DEFAULT-INITARGS
           :NAME-STRING
           "sT7ImpactChallengeExplor"
           :LABEL
           "sT7-ImpactContributionMentalChallenge-exploration"
           :SCALE-NAME
           "Contribution, Impact Values"
           :DESCRIPTION
           "Values giving, impact on world, mental challenge, exploration, uniqueness, and diversity. This scale correlated .347 with overall happiness, .136 with low depression, .133 with low anxiety,.296 with low anger/aggression, .277 with the health scale, and .326 with overall relationship success, (6 items)"
           :SCALE-GROUP-NAME
           "values-themes"
           :SCALE-QUESTIONS
           '(THM10OTH
             THMIMPAC
             THM28CRE
             THMMENCH
             THM34EXP
             THMUNIQU
             THMCREAT)
           :MEAN-SCORE
           ".672"
           :STANDARD-DEVIATION
           ".150"
           :SAMPLE-N
           3312
           :NUM-QUESTIONS
           7
           :HELP-PRIORITY
           1
           :HELP-INFO
           "Changing long-established, top values is not easy. If you want to change some of these values, you can start with the help-links below."
           :HELP-LINKS
           '("life_goals_and_meaning.htm")
           :PARENTS
           '(VALUES-THEMES HQ SCALE)))

(DEFCLASS ST8ATTENTIONFUNEASY
          (VALUES-THEMES HQ SCALE)
          NIL
          (:DEFAULT-INITARGS
           :NAME-STRING
           "sT8AttentionFunEasy"
           :LABEL
           "sT8-AttentionFunEasy playful adventure"
           :SCALE-NAME
           "Adventure, Play Values"
           :DESCRIPTION
           "Values adventure, play, attention, fun, effortlessness. This scale correlated .311 with overall happiness, .106 with low depression, .101 with low anxiety,.192 with low anger/aggression, .247 with the health scale, and .335 with overall relationship success, (4 items)"
           :SCALE-GROUP-NAME
           "values-themes"
           :SCALE-QUESTIONS
           '(THMATTEN THM5ADVE THMEFORT THMPLAYF)
           :HELP-PRIORITY
           0
           :HELP-INFO
           "Changing long-established, top values is not easy. If you want to change some of these values, you can start with the help-links below."
           :HELP-LINKS
           '("life_goals_and_meaning.htm")
           :PARENTS
           '(VALUES-THEMES HQ SCALE)))

(DEFCLASS ST9VALUESELFALLUNCOND
          (VALUES-THEMES HQ SCALE)
          NIL
          (:DEFAULT-INITARGS
           :NAME-STRING
           "sT9ValueSelfAllUncond"
           :LABEL
           "sT9-ValueSelf-AllUnconditionally"
           :SCALE-NAME
           "Unconditional Love Values"
           :DESCRIPTION
           "Unconditional valuing of self and others--A key HQ scale. This scale correlated .461 with overall happiness, .276 with low depression, .209 with low anxiety,.311 with low anger/aggression, .232 with the health scale, and .336 with overall relationship success, (2 items)"
           :SCALE-GROUP-NAME
           "values-themes"
           :SCALE-QUESTIONS
           '(THVUNCON THVSELFW THVSELFA THMUNCON)
           :MEAN-SCORE
           ".560"
           :STANDARD-DEVIATION
           ".208"
           :SAMPLE-N
           3246
           :NUM-QUESTIONS
           4
           :HELP-PRIORITY
           1
           :HELP-INFO
           "Changing long-established, top values is not easy. If you want to change some of these values, you can start with the help-links below."
           :HELP-LINKS
           '("life_goals_and_meaning.htm")
           :PARENTS
           '(VALUES-THEMES HQ SCALE)))

(DEFCLASS ST10OVERCMPROBACCEPTSELF
          (VALUES-THEMES HQ SCALE)
          NIL
          (:DEFAULT-INITARGS
           :NAME-STRING
           "sT10OvercmProbAcceptSelf"
           :LABEL
           "sT10-OvercomeProblems-AcceptAllofSelf"
           :SCALE-NAME
           "Overcoming Personal Problems Values"
           :DESCRIPTION
           "Values overcoming problems, self-protection, and personal healing.  This scale correlated .185 with overall happiness, .135 with low anger/aggression, .168 with the health scale, and .209 with overall relationship success, (2 items)"
           :SCALE-GROUP-NAME
           "values-themes"
           :SCALE-QUESTIONS
           '(THMSPROT THMPHURT)
           :MEAN-SCORE
           ".585"
           :STANDARD-DEVIATION
           ".106"
           :SAMPLE-N
           2385
           :NUM-QUESTIONS
           2
           :HELP-PRIORITY
           0
           :HELP-INFO
           "Changing long-established, top values is not easy. If you want to change some of these values, you can start with the help-links below."
           :HELP-LINKS
           '("life_goals_and_meaning.htm")
           :PARENTS
           '(VALUES-THEMES HQ SCALE)))

(DEFCLASS ST11DUTYPUNCTUAL
          (VALUES-THEMES HQ SCALE)
          NIL
          (:DEFAULT-INITARGS
           :NAME-STRING
           "sT11DutyPunctual"
           :LABEL
           "sT11-DutyPunctuality"
           :SCALE-NAME
           "Duty, Obligation Values"
           :DESCRIPTION
           "Values duty, obligation, and punctuality. This scale correlated .265 with overall happiness,  .097 with low depression, .155 with low anger/aggression, .264 with the health scale, and .264 with overall relationship success, (2 items)"
           :SCALE-GROUP-NAME
           "values-themes"
           :SCALE-QUESTIONS
           '(THMPUNCT THMOBLIG)
           :MEAN-SCORE
           "582"
           :STANDARD-DEVIATION
           ".177"
           :SAMPLE-N
           2510
           :NUM-QUESTIONS
           2
           :HELP-PRIORITY
           0
           :HELP-INFO
           "Changing long-established, top values is not easy. If you want to change some of these values, you can start with the help-links below."
           :HELP-LINKS
           '("life_goals_and_meaning.htm")
           :PARENTS
           '(VALUES-THEMES HQ SCALE)))

(DEFCLASS SWORLDVIEW
          (BELIEFS HQ SCALE)
          NIL
          (:DEFAULT-INITARGS
           :NAME-STRING
           "sworldview"
           :DATA-NAME-STRING
           "sworldvi"
           :LABEL
           "s-Positive world view"
           :SCALE-NAME
           "Positive World View"
           :DESCRIPTION
           "Optimism about the future of the world and own life, lack of entitlement thinking, plus daily positive versus negative thoughts. How constructively and positively you view the world and the future can significantly affect motivation, relationships, happiness, and success in most life areas. 
      Living life with a sense of gratitude (versus a sense of entitlement and deprivation) may be one of the most important factors for 
      happiness. It correlates .687 with happiness, .528 with low depression, .375 with low anxiety, .235 with 
      low anger/aggression, .384 with relationship success, .233 with positive health outcomes. (10 items)"
           :SCALE-GROUP-NAME
           "beliefs"
           :SCALE-QUESTIONS
           '(WOVPROGR
             WOVGOODF
             WOVMYLIF
             WOVNFAIR
             TBVENTIT
             WOVINJUR
             WOVABUND
             TBVGRATI
             WOVENTIT
             WOVGRATE
             WOVPOSTH)
           :MEAN-SCORE
           ".624"
           :STANDARD-DEVIATION
           ".153"
           :SAMPLE-N
           3162
           :NUM-QUESTIONS
           10
           :HELP-PRIORITY
           1
           :HELP-INFO
           "If you scored very low, it could cause you to have a problem with anxiety, depression, or low motivation. Examine your underlying negative beliefs and your expectations of what others (or the world) owes you.  Reading books on positive motivation and learning from people with positive motivation can help. Check our help link and even consider counseling if this troubles you."
           :HELP-LINKS
           '("h4world.htm")
           :PARENTS
           '(BELIEFS HQ SCALE)))

(DEFCLASS STBSLFWO
          (BELIEFS HQ SCALE)
          NIL
          (:DEFAULT-INITARGS
           :NAME-STRING
           "stbslfwo"
           :LABEL
           "s-Self-worth beliefs"
           :SCALE-NAME
           "Unconditional Worth of Self and Others"
           :DESCRIPTION
           "A key HQ scale. Degree to which one accepts/values all parts of one's self and others not contingent on others' individual characteristics or behaviors. Unconditionally valuing yourself and others means that an important part of a person's worth is not dependent upon their success, income, appearance, personality, ethnic group, morality, or any other quality.  Self-worth is the unconditional aspect of self-esteem. It differs from self-confidence which is the aspect conditional upon success or other factors. It correlates .391 with overall happiness, .283 with low depression, .260 with low anxiety,.300 with low anger/aggression."
           :SCALE-GROUP-NAME
           "beliefs"
           :SCALE-QUESTIONS
           '(TBVOTHFI
             TBVLIKED
             TBVWEAK
             TBVBEST
             TBVRULES
             TBVWINNE
             TBVBALAN
             TBVHAPCA
             THVSELFA
             THVUNCON
             THVSELFW)
           :MEAN-SCORE
           ".595"
           :STANDARD-DEVIATION
           ".126"
           :SAMPLE-N
           3246
           :NUM-QUESTIONS
           12
           :HELP-PRIORITY
           1
           :HELP-INFO
           "If you didn't score high, then look over the individual items and focus on beliefs that may be more negative, lower self-esteem, lower self-effectiveness, or lower happiness. Also, check your score and responses on the Life Themes scale. Internal mental values can help you achieve greater unconditional self-worth. Then go to our help link."
           :HELP-LINKS
           '("h5self.htm")
           :PARENTS
           '(BELIEFS HQ SCALE)))

(DEFCLASS SIECONTR
          (BELIEFS HQ SCALE)
          NIL
          (:DEFAULT-INITARGS
           :NAME-STRING
           "siecontr"
           :LABEL
           "s-Int-Ext control beliefs"
           :SCALE-NAME
           "Internal vs External Control (I-E) Beliefs"
           :DESCRIPTION
           "Degree of self-sufficiency and responsibility one takes for his/her own life, health, and happiness without undue influence from others. More internal direction, planning, and self-control versus influence by others or external forces. Internal control correlates .357 with overall happiness, .366 with low depression, .393 with low anxiety, .255 with low anger/aggression. 
      Believing that you are in control of your own emotions, behavior, likes and dislikes, and your life increases internal control. Making your own decisions and plans and giving adequate priority to your own needs also helps. (7 items)"
           :SCALE-GROUP-NAME
           "beliefs"
           :SCALE-QUESTIONS
           '(IECSELFS
             IECICONT
             IECGENET
             IECPEOPL
             IECDEPEN
             IECCOFEE
             IECCOPRB)
           :MEAN-SCORE
           "616"
           :STANDARD-DEVIATION
           ".162"
           :SAMPLE-N
           3246
           :NUM-QUESTIONS
           7
           :HELP-PRIORITY
           1
           :HELP-INFO
           "Learning how to increase your internal control can increase self-esteem and assertiveness, and it can lower anxiety and depression. Start with the help link."
           :HELP-LINKS
           '("h6intern.htm")
           :PARENTS
           '(BELIEFS HQ SCALE)))

(DEFCLASS SETHBEL
          (BELIEFS HQ SCALE)
          NIL
          (:DEFAULT-INITARGS
           :NAME-STRING
           "sethbel"
           :DATA-NAME-STRING
           "sEthBeliefs"
           :LABEL
           "sethbel"
           :SCALE-NAME
           "Absolute-Grounded, Integrated Ethics"
           :DESCRIPTION
           "Ethics philosophers and religions agree on many general principles. It is generally agreed that better ethics are based more on absolute principles and wholes such as humanity, nature, or God rather than on more specific or situational aspects such as self, family, or any group.  An ethical system that judges people more on their inner qualities and assumes some basic inner goodness and inherent value in all people. It includes questions about astrology (very much frowned upon by philosophers, scientists, and religion) and life after death (a common belief).  Many people base their ethics on the rewards they expect after death. (14 items). This scale correlated 0.459 with overall happiness, 0.306 with low depression, 0.336 with low anxiety, and 0.463 with low anger/aggression."
           :SCALE-GROUP-NAME
           "beliefs"
           :SCALE-QUESTIONS
           '(TB2RELAT
             TB2PUNIS
             TBV2NOTR
             TB2GROUM
             TB2SELFM
             TB2GDWRK
             TB2GDATT
             TB2ALLGD
             TB2REASO
             TBV2ASTR
             TB2IDHUM
             TB2LIFAD
             TB2MOVEM
             TBV2CORE)
           :MEAN-SCORE
           0.62
           :STANDARD-DEVIATION
           0.112
           :SAMPLE-N
           2366
           :NUM-QUESTIONS
           14
           :HELP-PRIORITY
           1
           :HELP-INFO
           "Basing your values and beliefs on general abstract principles and mental-values such as integrity, truth, love, and happiness and valuing all people and all nature is not only a commonality most great philosophers and religions have in common, it also helps people be happier and more successful."
           :HELP-LINKS
           '("life_goals_and_meaning.htm")
           :PARENTS
           '(BELIEFS HQ SCALE)))

(DEFCLASS SGRFEARS
          (BELIEFS HQ SCALE)
          NIL
          (:DEFAULT-INITARGS
           :NAME-STRING
           "sgrfears"
           :LABEL
           "s-Low greatest fears"
           :SCALE-NAME
           "Low Greatest Fears"
           :DESCRIPTION
           "A key HQ scale. Low degree of common major fears such as illness, poverty, death, failure, rejection, and confidence in ability to overcome fears or circumstances. Fears are interesting to people per se.  Your greatest fears reflect your top values and goals in life and are related to your happiness and success. The underlying fear is usually that one's greatest values/goals will be unsatisfied. Your underlying fears can be powerful sources of pain and avoidance motivation. Underlying fears give your little jolts of fear or anxiety daily as you get a thought that is related to them. 
      Overcoming these underlying fears can help you be less fearful and anxious the rest of your life! This scale correlates .462 with happiness, .417 with low depression, .375 with low anxiety, .241 with low anger/aggression. (12 items)"
           :SCALE-GROUP-NAME
           "beliefs"
           :SCALE-QUESTIONS
           '(WOVHAPPY
             WOVPOOR
             WOVILL
             WOVDEATH
             WOVALONE
             WOVNOLOV
             WOVLIKED
             WOVPERSO
             WOVPROBL
             WOVDISCO
             WOVSUCCE
             WOVOVERC)
           :MEAN-SCORE
           ".601"
           :STANDARD-DEVIATION
           ".174"
           :SAMPLE-N
           3162
           :NUM-QUESTIONS
           12
           :HELP-PRIORITY
           1
           :HELP-INFO
           "Your fears could cause you to have problems with anxiety, depression, anger, low self-esteem, or low motivation. It is important that you check our help link and even consider counseling if one or more underlying fears trouble you. Reducing underlying fears can reduce all the daily fears that are linked to these deeper fears. Learn to face them, explore them, and find new ways of thinking about them or coping with them from those who have been successful in overcoming them."
           :HELP-LINKS
           '("h43dark.htm")
           :PARENTS
           '(BELIEFS HQ SCALE)))

(DEFCLASS SSLFCONF
          (SKILLS-CONFIDENCE HQ SCALE)
          NIL
          (:DEFAULT-INITARGS
           :NAME-STRING
           "sslfconf"
           :LABEL
           "s-Self-confidence areas"
           :SCALE-NAME
           "Self-Confidence and Life Skill Areas"
           :DESCRIPTION
           "A list of knowledge and skills areas was developed, and subjects were asked to rate their own confidence/skills for each area. The Self-Confidence scale measures the contingent, efficacy aspect of self-esteem.  This scale has emerged as a separate factor from the other main scales in factor analytic studies.  Your self-report ratings should reflect a combination of actual knowledge and skill and of confidence level. It is similar to the concept of self-efficacy.
      Your life skills and self-confidence can be powerful factors in your success and happiness in many life areas--including your academic and career success. It correlated .629 with happiness, .421 with low depression, .351 with low anxiety, .186 with low anger/aggression,.367 with relationship success, .233 with positive health outcomes. (41 items)"
           :SCALE-GROUP-NAME
           "skills-confidence"
           :SCALE-QUESTIONS
           '(SLFLEARN
             SLFCRITT
             SLFRESEA
             SLFANALY
             SLFSYNTH
             SLFCREAT
             SLFCOMPU
             SLFBIOSC
             SLFNATSC
             SLFLIBAR
             SLFSOCSC
             SLFPHILR
             SLFPERFA
             SLFFINEA
             SLFBUSAN
             SLFHEAL2
             SLFENGIN
             SLFEDUCH
             SLFIQ
             SLFDECMA
             SLFTIMEM
             SLFCOPE
             SLFSELF4
             SLFSELFM
             SLFACHAN
             SLFMANA6
             SLFHEAL3
             SLFMEETP
             SLFLISTE
             SLFSELF5
             SLFCONFL
             SLFPERSU
             SLFMANA7
             SLFHELPS
             SLFSPEAK
             SLFJOBSE
             SLFADAPT
             SLFHAPPY
             SLFOPTIM
             SLFFRIEN
             SLFINDEP)
           :MEAN-SCORE
           ".682"
           :STANDARD-DEVIATION
           ".143"
           :SAMPLE-N
           3225
           :NUM-QUESTIONS
           41
           :HELP-PRIORITY
           1
           :HELP-INFO
           "Look over questions that you scored low on, ask yourself why, and ask yourself what you can do to improve these areas. Target one or two main areas to start with and begin a self-improvement program. See our help link for help."
           :HELP-LINKS
           '("h54confi.htm")
           :PARENTS
           '(SKILLS-CONFIDENCE HQ SCALE)))

(DEFCLASS SSELFMAN
          (SKILLS-CONFIDENCE HQ SCALE)
          NIL
          (:DEFAULT-INITARGS
           :NAME-STRING
           "sselfman"
           :LABEL
           "s-Self-management skills"
           :SCALE-NAME
           "Self-Management Skills"
           :DESCRIPTION
           "A key HQ scale. Skills related to self-care, decision-making, goal-setting, and time-management including leading a balanced life and attending to all main need/value areas. Many items are based upon  OPATSM time-management system.  Research shows that these vital skills are related to a more successful and happier life in almost all life areas. This scale correlated .606 with overall life happiness, .297 with low depression, .365 with relationship success, and over .30 with job status. (15 items)"
           :SCALE-GROUP-NAME
           "skills-confidence"
           :SCALE-QUESTIONS
           '(SMTBUSY
             SMTFUTUR
             SMTEXERC
             SMTEATH
             SMTSLEEP
             SMTSDEVE
             SMTNPROC
             SMTPTODO
             SMTGOALS
             SMTSCHD
             SMT2DTOD
             SMTACMPL
             SMTGHELP
             SMTBALAN
             SMTHABCH)
           :MEAN-SCORE
           ".537"
           :STANDARD-DEVIATION
           ".160"
           :SAMPLE-N
           1936
           :NUM-QUESTIONS
           15
           :HELP-PRIORITY
           1
           :HELP-INFO
           "Self-management of setting clear goals, good time-management (including using weekly/daily prioritized task lists in each life area) is a key factor in people's happiness and success. Try the time-management skills in the help-link."
           :HELP-LINKS
           '("h9patsm.htm")
           :PARENTS
           '(SKILLS-CONFIDENCE HQ SCALE)))

(DEFCLASS SEMOTCOP
          (SKILLS-CONFIDENCE HQ SCALE)
          NIL
          (:DEFAULT-INITARGS
           :NAME-STRING
           "semotcop"
           :LABEL
           "s-Emotional coping skills"
           :SCALE-NAME
           "Emotional Coping Skills"
           :DESCRIPTION
           "A key HQ scale.  How you habitually react to emotionally stressful situations. What do you do when you are upset? This scale correlates .683 with overall happiness, .578 with low depression, .466 with low anxiety, .374 with low anger/aggressiveness, and .314 with good, intimate personal relationships.  It is also a moderate predictor of academic and career success. (20 items)"
           :SCALE-GROUP-NAME
           "skills-confidence"
           :SCALE-QUESTIONS
           '(COPNEGTH
             COPCOPEA
             COPPSOLV
             COPAVOPS
             COPEMOTA
             COPBLAME
             COPWDRW
             COPFUN
             COPTALKS
             COPPEPTA
             COPSMOKE
             COPDRUG
             COPPE
             COPNEGPH
             COPSELFB
             COPPOSPH
             COPEXPEC
             COPHAPPY
             COPAVOAT
             COPSELFE)
           :MEAN-SCORE
           ".585"
           :STANDARD-DEVIATION
           ".135"
           :SAMPLE-N
           3273
           :NUM-QUESTIONS
           20
           :HELP-PRIORITY
           1
           :HELP-INFO
           "Read the questions below and your responses to what you do when you are upset. Learn to use more constructive coping responses like problem-solving, positive thinking, positive social behavior, and constructive activities to feel better instead of negative coping such as negative thinking, blaming, withdrawal, addicitve habits, etc.  Improving emotional coping skills is one of the simplest ways to lead a more successful and happier life (and escape negative habits like addictions, avoidance, and negativism"
           :HELP-LINKS
           '("h8hf2.htm")
           :PARENTS
           '(SKILLS-CONFIDENCE HQ SCALE)))

(DEFCLASS INTSS1AASSERTCR
          (INTERPERSONAL HQ SCALE)
          NIL
          (:DEFAULT-INITARGS
           :NAME-STRING
           "IntSS1aAssertCR"
           :LABEL
           "IntSS1a-AssertiveConfRes"
           :SCALE-NAME
           "Assertive Communication and Conflict Resolution"
           :DESCRIPTION
           "A key HQ scale: democratic, assertive communication and conflict resolution.  Seeks win-win solutions to conflicts, with clear, caring, understanding, non-defensive, calm, persistent, honest, friendly, non-threatening behaviors. Finding and resolving the basic, underlying issues is very important. You ability to resolve differences with others is a critical component of any good, lasting relationship from work to marriage. It is a vital skill in many professional situations. Our research shows a correlation of more than .70 between this scale and marital relationship happiness and .365 with overall relationship success. It also correlated .463 with overall happiness, .236 with low depression, .202 with low anxiety, .355 with low anger/aggression, .306 with positive health. A low score may predict a series of relationships that end in conflict or being left. (13 items)"
           :SCALE-GROUP-NAME
           "interpersonal"
           :SCALE-QUESTIONS
           '(CR1ISSUE
             CRRESOLV
             CRNTHREA
             CRUNDERL
             CRWINWIN
             CRLONGTK
             CRSUMMAR
             CRCPRAIS
             CRBOASSR
             CROPHONE
             CRANGRES
             CRTLKMOR
             CREQWIN
             INTUNDRL)
           :MEAN-SCORE
           ".563"
           :STANDARD-DEVIATION
           ".186"
           :SAMPLE-N
           2664
           :NUM-QUESTIONS
           14
           :HELP-PRIORITY
           1
           :HELP-INFO
           "Look over the individual questions to see where strengths and areas needing improvement lie. Then go to our help links on assertion training and conflict resolution."
           :HELP-LINKS
           '("assertion_training.htm")
           :PARENTS
           '(INTERPERSONAL HQ SCALE)))

(DEFCLASS INTSS1BOPENHON
          (INTERPERSONAL HQ SCALE)
          NIL
          (:DEFAULT-INITARGS
           :NAME-STRING
           "IntSS1bOpenHon"
           :LABEL
           "IntSS1bIntimateOpenHonest"
           :SCALE-NAME
           "Intimacy"
           :DESCRIPTION
           "A key HQ scale: Open, Honest, Communication and Goal Harmony. Reveal most private and sensitive thoughts and feelings regularly, shared goals, and feelings of relationship commitment. This scale correlated over .70 with marital satisfaction and .435 with overall relationship success. ,.503 with overall happiness, .289 with low depression, .230 with low anxiety,.302 with low anger/aggression, and .293 with the health scale. Intimacy is a critical part of any truly close relationship--especially marital relationships. (10 items)"
           :SCALE-GROUP-NAME
           "interpersonal"
           :SCALE-QUESTIONS
           '(INTTELAL
             INTSMGOA
             INTEQDEC
             INTIOPEN
             INTWEOPN
             INTDAILY
             INTALLOP
             INTKNPFE
             INCOMTWO)
           :MEAN-SCORE
           ".643"
           :STANDARD-DEVIATION
           ".192"
           :SAMPLE-N
           2491
           :NUM-QUESTIONS
           10
           :HELP-PRIORITY
           1
           :HELP-INFO
           "If you didn't score high, you want to improve this area to increase your ability to relate to the opposite sex or any close relationship with a mature person. Examine the individual questions to set goals for improvement and check out our links."
           :HELP-LINKS
           '("conversational_skills.htm" "c14-lisn.htm")
           :PARENTS
           '(INTERPERSONAL HQ SCALE)))

(DEFCLASS INTSS2ROMANTC
          (INTERPERSONAL HQ SCALE)
          NIL
          (:DEFAULT-INITARGS
           :NAME-STRING
           "IntSS2Romantc"
           :LABEL
           "IntSS2-Romantic=sromantc"
           :SCALE-NAME
           "Close, Romantic Interactions"
           :DESCRIPTION
           "Romantic attraction, playful, romantic surprises, fantasize about partner, go to romantic places, have special celebrations together. It correlates .267 with relationship success, .394 with overall happiness, .173 with low depression, and .238 with low aggression. (7 items)"
           :SCALE-GROUP-NAME
           "interpersonal"
           :SCALE-QUESTIONS
           '(ROMSURPR
             ROMFANTA
             ROMCELEB
             ROMPLACE
             ROMATTRA
             ROMPLAYF
             ROMCHARM)
           :MEAN-SCORE
           ".615"
           :STANDARD-DEVIATION
           ".219"
           :SAMPLE-N
           2938
           :NUM-QUESTIONS
           7
           :HELP-PRIORITY
           0
           :HELP-INFO
           "Examine your answers and look at our help links."
           :HELP-LINKS
           '("conversational_skills.htm"
             "developing_intimacy.htm"
             "c14-lisn.htm"
             "chaprels.htm")
           :PARENTS
           '(INTERPERSONAL HQ SCALE)))

(DEFCLASS INTSS3LIBROLE
          (INTERPERSONAL HQ SCALE)
          NIL
          (:DEFAULT-INITARGS
           :NAME-STRING
           "IntSS3LibRole"
           :LABEL
           "IntSS3-LiberatedRoles=slibrole"
           :SCALE-NAME
           "Liberated, Equal Roles"
           :DESCRIPTION
           "Equality in decisions, roles, chores/tasks, career priority, some non-stereotypical role behaviors. Our research seems to show that people in relationships with more liberated roles may be happier. However, people with traditional male-female relationship views can be happy if both partners agree on these views and the male makes decisions adequately taking into account his/her partner's desires and needs. It correlated .166 with overall happiness, .182 with low anxiety, and .292 with low anger/aggression. (7 items)"
           :SCALE-GROUP-NAME
           "interpersonal"
           :SCALE-QUESTIONS
           '(LROMTASK
             LROFTASK
             LRMFINAL
             LROEMBAR
             LROMSTRO
             LROEQINC
             LRCARCON)
           :MEAN-SCORE
           ".703"
           :STANDARD-DEVIATION
           ".188"
           :SAMPLE-N
           3056
           :NUM-QUESTIONS
           7
           :HELP-PRIORITY
           0
           :HELP-INFO
           "This is an area where finding a partner with similar views or where resolving differences can be important."
           :HELP-LINKS
           '("finding_mr_mrs_right.htm")
           :PARENTS
           '(INTERPERSONAL HQ SCALE)))

(DEFCLASS INTSS4LOVERES
          (INTERPERSONAL HQ SCALE)
          NIL
          (:DEFAULT-INITARGS
           :NAME-STRING
           "IntSS4LoveRes"
           :LABEL
           "IntSS4-Love Respect"
           :SCALE-NAME
           "Love and Respect for Partner"
           :DESCRIPTION
           "Valuing Your Partner--A key HQ scale.  Love, respect, cheerfully do favors for,  praise more than criticize partner.  Feel free when partner home, feel committed not trapped. This Love and Respect  scale correlated .425 with overall relationship success. ,.476 with overall happiness, .289 with low depression, .268 with low anxiety,.432 with low anger/aggression, and .295 with the health scale. Love and Respect  is a critical part of any truly close relationship--especially marital relationships. (9 items)"
           :SCALE-GROUP-NAME
           "interpersonal"
           :SCALE-QUESTIONS
           '(CRIFAVOR
             CRIFOLUP
             INTCOMIT
             INTRESPT
             INTLSQPR
             INTLOVE
             INNEVARG)
           :MEAN-SCORE
           ".751"
           :STANDARD-DEVIATION
           ".154"
           :SAMPLE-N
           2491
           :NUM-QUESTIONS
           7
           :HELP-PRIORITY
           1
           :HELP-INFO
           "Loving and respecting your partner comes from many factors beyond your direct control.  However, acting as if you really love and/or respect someone can increase both your valuing them and their caring and positive actions toward you.  Both effects can increase love and respect.  Also. learning to understand the history, circumstances, and motivation behind aspects you don't value in them may help you feel better about those aspects. Helping them understand your history and circumstances may also help. Doing favors, expressing positive feelings, letting them have their way enough, and giving complements may also help."
           :HELP-LINKS
           '("developing_intimacy.htm")
           :PARENTS
           '(INTERPERSONAL HQ SCALE)))

(DEFCLASS INTSS5INDEP
          (INTERPERSONAL HQ SCALE)
          NIL
          (:DEFAULT-INITARGS
           :NAME-STRING
           "IntSS5Indep"
           :LABEL
           "IntSS5-Rel Independ"
           :SCALE-NAME
           "Relationship Independence-Autonomy"
           :DESCRIPTION
           "Autonomy within committed relationship.  Partners feeling encouraged and free to pursue own interests and friendships.  Each enjoy being alone, having partially separate funds, and believing they could be happy with another person if necessary. Value individual happiness over marriage per se. This scale correlated .215 with overall relationship success. ,.379 with overall happiness, .288 with low depression, .308 with low anxiety,.389 with low anger/aggression, and .296 with the health scale. (11 items)"
           :SCALE-GROUP-NAME
           "interpersonal"
           :SCALE-QUESTIONS
           '(INRLUNCH
             INRINHAP
             INRIGROW
             INRSAYWE
             INDIFGOA
             INFINDAN
             INENALON
             INOKALON
             INRHATEA
             INSEPINT
             INRMONEY
             INRBEALN
             INALCNST
             INRFREEH
             INRFRIEN)
           :MEAN-SCORE
           ".676"
           :STANDARD-DEVIATION
           ".144"
           :SAMPLE-N
           2862
           :NUM-QUESTIONS
           15
           :HELP-PRIORITY
           1
           :HELP-INFO
           "Learning to give each other the freedom to make choices, spend their time as they like, be alone when they want, and supporting their interests even when different are just a few imporant ways that partners can increase positive independent intimacy."
           :HELP-LINKS
           '("finding_mr_mrs_right.htm" "developing_intimacy.htm")
           :PARENTS
           '(INTERPERSONAL HQ SCALE)))

(DEFCLASS INTSS6POSSUP
          (INTERPERSONAL HQ SCALE)
          NIL
          (:DEFAULT-INITARGS
           :NAME-STRING
           "IntSS6PosSup"
           :LABEL
           "IntSS6-Positive Supportive Com"
           :SCALE-NAME
           "Positive, Supportive Communication"
           :DESCRIPTION
           "A key HQ scale. Supportive of partner even during disagreements, rarely use negative labels, exaggerations, threats, anger.  If one partner gets angry, other usually uses deescalating response. This scale correlated .272 with overall relationship success. ,.421 with overall happiness, .275 with low depression, .267 with low anxiety,.538 with low anger/aggression, and .307 with the health scale. Note the large correlation with low anger and aggression. (7 items)"
           :SCALE-GROUP-NAME
           "interpersonal"
           :SCALE-QUESTIONS
           '(CRNTHREA
             CRNNEGLB
             CREXAGGR
             CRANGANG
             CRIPRAIS
             CRANGRES
             INDIFDEC
             INSTSHLP)
           :MEAN-SCORE
           ".598"
           :STANDARD-DEVIATION
           ".175"
           :SAMPLE-N
           2603
           :NUM-QUESTIONS
           8
           :HELP-PRIORITY
           1
           :HELP-INFO
           "Increasing more complements and caring statements/actions and decreasing negative statements/actions can dramatically change a relationship. Try the help links below."
           :HELP-LINKS
           '("developing_intimacy.htm" "assertion_training.htm")
           :PARENTS
           '(INTERPERSONAL HQ SCALE)))

(DEFCLASS INTSS7COLLAB
          (INTERPERSONAL HQ SCALE)
          NIL
          (:DEFAULT-INITARGS
           :NAME-STRING
           "IntSS7Collab"
           :LABEL
           "IntSS7-Collaborative"
           :SCALE-NAME
           "Collaborative, Non-Manipulative Relationship"
           :DESCRIPTION
           "A key HQ scale. Neither partner manipulating or controlling.  Partners feel safe revealing weaknesses. Can work together or teach each other effectively. This scale correlated .317 with overall relationship success. ,.406 with overall happiness, .268 with low depression, .235 with low anxiety,.328 with low anger/aggression, and .271 with the health scale. (7 items)"
           :SCALE-GROUP-NAME
           "interpersonal"
           :SCALE-QUESTIONS
           '(CRTKLONG
             CRTEWEAK
             CRMANIPU
             CRREPRAI
             CRTEACH
             CRTLKMOR
             INTWKTOG)
           :MEAN-SCORE
           ".562"
           :STANDARD-DEVIATION
           ".177"
           :SAMPLE-N
           2542
           :NUM-QUESTIONS
           7
           :HELP-PRIORITY
           1
           :HELP-INFO
           ""
           :HELP-LINKS
           '("assertion_training.htm" "developing_intimacy.htm")
           :PARENTS
           '(INTERPERSONAL HQ SCALE)))

(DEFCLASS SCOLLEGE
          (ACAD-LEARNING SCALE)
          NIL
          (:DEFAULT-INITARGS
           :NAME-STRING
           "scollege"
           :LABEL
           "scollege info"
           :SCALE-NAME
           "College Student Info"
           :DESCRIPTION
           "Basic College Student Information"
           :SCALE-GROUP-NAME
           "ACAD-LEARNING"
           :SCALE-QUESTIONS
           '(STPARED
             STUCLASS
             STUDEGRE
             STUSEMES
             STMAJGPA
             STACADST
             STUCOLLE
             STUMAJOR
             STUSPECI
             STURESID
             STGPATRE
             STURESOURCE)
           :MEAN-SCORE
           0.6
           :STANDARD-DEVIATION
           0.15
           :SAMPLE-N
           1000
           :NUM-QUESTIONS
           6
           :HELP-PRIORITY
           1
           :HELP-INFO
           ""
           :HELP-LINKS
           NIL
           :PARENTS
           '(ACAD-LEARNING SCALE)))

(DEFCLASS SSL1CONFIDEFFICSTUDYTEST
          (ACAD-LEARNING SCALE)
          NIL
          (:DEFAULT-INITARGS
           :NAME-STRING
           "ssl1ConfidEfficStudyTest"
           :LABEL
           "ssl1-Confid efficient read-study-test"
           :SCALE-NAME
           "Time Efficient and Confident Study"
           :DESCRIPTION
           "A low score may indicate a learning disability. Think that tests and grades reflect abilities (versus smarter than test). Not need more time for tests and assignments. (8 items)"
           :SCALE-GROUP-NAME
           "acad-learning"
           :SCALE-QUESTIONS
           '(LRNUNASN
             LRNCOLMT
             LRNKNOWT
             LRNPROOF
             LRNRREAD
             LRNEFFIC
             LRNTESTT
             LRNTIMAS
             LRNTIRED
             LRNTANXI
             LRNSMART
             LRNAREAD
             LRNRSLOW)
           :MEAN-SCORE
           0.59
           :STANDARD-DEVIATION
           0.21
           :SAMPLE-N
           637
           :NUM-QUESTIONS
           13
           :HELP-PRIORITY
           1
           :HELP-INFO
           (FORMAT NIL
                   "Valuing your education and making it a top priority, giving adequate time to study, and learning good study skills are key academic success factors. Try the help-links below.~%~A"
                   *TIME-MAN)
           :HELP-LINKS
           '("academic.htm"
             "learning_disabilities.htm"
             "concentration.htm")
           :PARENTS
           '(ACAD-LEARNING SCALE)))

(DEFCLASS SSL1BCONFIDNOTAVOIDSTUDY
          (ACAD-LEARNING SCALE)
          NIL
          (:DEFAULT-INITARGS
           :NAME-STRING
           "ssl1bConfidNotAvoidStudy"
           :LABEL
           "ssl1bConfidNotAvoidStudy"
           :SCALE-NAME
           "High Study Motivation"
           :DESCRIPTION
           "Not Study Avoidant.  Not slower or more anxious about beginning assignments, reading, or writing than other students. Feel like college capable. (6 items)"
           :SCALE-GROUP-NAME
           "acad-learning"
           :SCALE-QUESTIONS
           '(LRNUNASN LRNCOLMT LRNTIRED LRNAREAD LRNPROOF)
           :MEAN-SCORE
           0.643
           :STANDARD-DEVIATION
           0.199
           :SAMPLE-N
           953
           :NUM-QUESTIONS
           5
           :HELP-PRIORITY
           1
           :HELP-INFO
           (FORMAT NIL
                   "Valuing your education and making it a top priority, giving adequate time to study, and learning good study skills are key academic success factors. Try the help-links below. ~%~A"
                   *NPROC15)
           :HELP-LINKS
           '("academic.htm"
             "time_management.htm"
             "procrastination.htm"
             "test_anxiety.htm")
           :PARENTS
           '(ACAD-LEARNING SCALE)))

(DEFCLASS SSL2SATISCAMPUSFACFRIENDSGRDES
          (ACAD-LEARNING SCALE)
          NIL
          (:DEFAULT-INITARGS
           :NAME-STRING
           "ssl2SatisCampusFacFriendsGrdes"
           :LABEL
           "ssl2SatisCampusFacFriendsGrdes"
           :SCALE-NAME
           "Positive Campus Life Attitudes"
           :DESCRIPTION
           "Look forward to classes, campus activities. Enjoy students and instructors. Happy with campus and grades. (8 items)"
           :SCALE-GROUP-NAME
           "acad-learning"
           :SCALE-QUESTIONS
           '(STULOOKF
             STULIKEI
             STUCOMFO
             STUFRIEN
             STUENJOY
             STUEACTR
             STHAPCOL
             STHAPGPA)
           :MEAN-SCORE
           0.682
           :STANDARD-DEVIATION
           0.2
           :SAMPLE-N
           1000
           :NUM-QUESTIONS
           8
           :HELP-PRIORITY
           0
           :HELP-INFO
           (FORMAT NIL
                   "Learning to enjoy your campus, studying, the instructors, and the other students are important ways to increase your motivation and academic success. However, many students focus too much on enjoying themselves and not enough on academics. ~%~A"
                   *CONNECT-COL)
           :HELP-LINKS
           '("conversational_skills.htm" "academic.htm")
           :PARENTS
           '(ACAD-LEARNING SCALE)))

(DEFCLASS SSL3WRITEREADSKILLS
          (ACAD-LEARNING SCALE)
          NIL
          (:DEFAULT-INITARGS
           :NAME-STRING
           "ssl3WriteReadSkills"
           :LABEL
           "ssl3WriteReadSkills"
           :SCALE-NAME
           "Writing, Reading Skills"
           :DESCRIPTION
           "Good at organizing papers and writing. Good reading skills. No vision problems (added due to factor analysis). (6 items)"
           :SCALE-GROUP-NAME
           "acad-learning"
           :SCALE-QUESTIONS
           '(LRNWRPAP LRNWRSKL LRNSEE LRNVOCAB LRNWRORG LRNSREAD)
           :MEAN-SCORE
           0.728
           :STANDARD-DEVIATION
           0.199
           :SAMPLE-N
           953
           :NUM-QUESTIONS
           6
           :HELP-PRIORITY
           1
           :HELP-INFO
           "Writing skills are important for success in almost all classes and for success in most professions--even those such as engineering or art. If you don't have good writing skills, try the link below. Reading skills are essential for academic and professional career success."
           :HELP-LINKS
           '("writing_help.htm")
           :PARENTS
           '(ACAD-LEARNING SCALE)))

(DEFCLASS SSL4BLDMENTALSTRUCT
          (ACAD-LEARNING SCALE)
          NIL
          (:DEFAULT-INITARGS
           :NAME-STRING
           "ssl4BldMentalStruct"
           :LABEL
           "ssl4-Build Mental Structure"
           :SCALE-NAME
           "Build Mental Structures"
           :DESCRIPTION
           "Study alone, struggle with difficult material, attempt to build own theories and associations. Make boring material interesting. (7 items)"
           :SCALE-GROUP-NAME
           "acad-learning"
           :SCALE-QUESTIONS
           '(LRNTXUND
             LRNINTER
             LRNROTE
             LRNASSOC
             LRNSTRUG
             LRNTHEOR
             LRNALONE)
           :MEAN-SCORE
           0.693
           :STANDARD-DEVIATION
           0.174
           :SAMPLE-N
           1112
           :NUM-QUESTIONS
           7
           :HELP-PRIORITY
           1
           :HELP-INFO
           "The essence of higher level learning is developing complex cognitive, mental structures.  Learning techniques for doing developing these mental structures is a primary way to increase intelligence, learning efficiency, and academic success."
           :HELP-LINKS
           '("LEARN.htm" "academic.htm")
           :PARENTS
           '(ACAD-LEARNING SCALE)))

(DEFCLASS SSL5BASICSTUDYSKILLS
          (ACAD-LEARNING SCALE)
          NIL
          (:DEFAULT-INITARGS
           :NAME-STRING
           "ssl5BasicStudySkills"
           :LABEL
           "ssl5-BasicSS-Undrstnd review map outline notes"
           :SCALE-NAME
           "Basic Study Skills"
           :DESCRIPTION
           (FORMAT NIL
                   "Preview, outline, review assignments; take good notes; good concentration; create visual map; review material at least 3 times for exam. (6 items)~%~A"
                   *COMP-MEM)
           :SCALE-GROUP-NAME
           "acad-learning"
           :SCALE-QUESTIONS
           '(ACMCONCE LRNTXOVE LRNTSREV LRNMAP LRNTXOUT LRNNOTES)
           :MEAN-SCORE
           0.61
           :STANDARD-DEVIATION
           0.196
           :SAMPLE-N
           814
           :NUM-QUESTIONS
           6
           :HELP-PRIORITY
           1
           :HELP-INFO
           "The essence of higher level learning is developing complex cognitive, mental structures.  Learning techniques for doing developing these mental structures is a primary way to increase intelligence, learning efficiency, and academic success."
           :HELP-LINKS
           '("LEARN.htm" "academic.htm")
           :PARENTS
           '(ACAD-LEARNING SCALE)))

(DEFCLASS SSL6SELFMANACADGOALS
          (ACAD-LEARNING SCALE)
          NIL
          (:DEFAULT-INITARGS
           :NAME-STRING
           "ssl6SelfmanAcadGoals"
           :LABEL
           "ssl6-Selfman-acad goal intention"
           :SCALE-NAME
           "Degree Motivation"
           :DESCRIPTION
           "Motivated and confident will get degree and won't drop out. Not confused about goals and confident of finances. (5 items)"
           :SCALE-GROUP-NAME
           "acad-learning"
           :SCALE-QUESTIONS
           '(ACMCOMPL ACMQUITC ACMFINAN ACMDEGRE STUCONFU ACMSELFS)
           :MEAN-SCORE
           0.745
           :STANDARD-DEVIATION
           0.206
           :SAMPLE-N
           819
           :NUM-QUESTIONS
           5
           :HELP-PRIORITY
           1
           :HELP-INFO
           (FORMAT NIL
                   "Motivation usually develops from commitment to a highly-valued goal. Clarifying your values and selecting goals that match them is a powerful way to improve motivation.  Choosing an academic major that you highly value and choose to persist through difficulties is a key way to improve academic success.~%~A"
                   *CAR-PLAN)
           :HELP-LINKS
           '("c15-carp.htm")
           :PARENTS
           '(ACAD-LEARNING SCALE)))

(DEFCLASS SSL7MATHSCIPRINC
          (ACAD-LEARNING SCALE)
          NIL
          (:DEFAULT-INITARGS
           :NAME-STRING
           "ssl7MathSciPrinc"
           :LABEL
           "ssl7-MathSci-principles interest skills"
           :SCALE-NAME
           "Learn Math-Science Principles"
           :DESCRIPTION
           "Enjoy and good in math, and seek to understand basic principles in math and science. (2 items)"
           :SCALE-GROUP-NAME
           "acad-learning"
           :SCALE-QUESTIONS
           '(LRNMATH LRNTEXTN)
           :MEAN-SCORE
           0.647
           :STANDARD-DEVIATION
           0.246
           :SAMPLE-N
           948
           :NUM-QUESTIONS
           2
           :HELP-PRIORITY
           1
           :HELP-INFO
           "Math is not only a basic skill for many majors and professions, it is valuable for personal finances and many other aspects of life."
           :HELP-LINKS
           '("LEARN.htm")
           :PARENTS
           '(ACAD-LEARNING SCALE)))

(DEFCLASS SSL8STUDYENVIR
          (ACAD-LEARNING SCALE)
          NIL
          (:DEFAULT-INITARGS
           :NAME-STRING
           "ssl8StudyEnvir"
           :LABEL
           "ssl8-Study home envir"
           :SCALE-NAME
           "Study Environment"
           :DESCRIPTION
           "Have good place and necessities to study and time available to study. Studying encouraged by family, friends with minimal conflicting demands. (3 items)"
           :SCALE-GROUP-NAME
           "acad-learning"
           :SCALE-QUESTIONS
           '(ACMEFAML ACMESOCS LRNESTUD)
           :MEAN-SCORE
           0.632
           :STANDARD-DEVIATION
           0.166
           :SAMPLE-N
           814
           :NUM-QUESTIONS
           3
           :HELP-PRIORITY
           1
           :HELP-INFO
           (FORMAT NIL
                   "Having a good study environment is important for academic success. Having a quiet, distraction-free place to study with the needed computer or other facilities is essential.  It is vital to establish such places that fit into your schedule. Assess what influences from family, friends, work, or other committments interfere with your sucess.  Assertively set priorities to study even at the cost of upsetting others if you want to succeed.~%~A"
                   *ENV-STUDY)
           :HELP-LINKS
           '("learning_&_study_skills.htm")
           :PARENTS
           '(ACAD-LEARNING SCALE)))

(DEFCLASS SSL9ATTENDHW
          (ACAD-LEARNING SCALE)
          NIL
          (:DEFAULT-INITARGS
           :NAME-STRING
           "ssl9AttendHW"
           :LABEL
           "ssl9-Attend-doHW"
           :SCALE-NAME
           "Attendance and Persistence"
           :DESCRIPTION
           "Attend classes, never drop classes, and manage study time well. (3 items)"
           :SCALE-GROUP-NAME
           "acad-learning"
           :SCALE-QUESTIONS
           '(ACMSTUDY ACMNDROP ACMATTEN)
           :MEAN-SCORE
           0.658
           :STANDARD-DEVIATION
           0.232
           :SAMPLE-N
           819
           :NUM-QUESTIONS
           3
           :HELP-PRIORITY
           1
           :HELP-INFO
           "Class attendance and concentrated study time are essential to academic success. If you aren't doing well in a class, first try assessing what the problems are and make a strong effort to correct them.  Get needed help."
           :HELP-LINKS
           '("academic.htm" "LEARN.htm")
           :PARENTS
           '(ACAD-LEARNING SCALE)))

(DEFCLASS SSL10MEMNOTANX
          (ACAD-LEARNING SCALE)
          NIL
          (:DEFAULT-INITARGS
           :NAME-STRING
           "ssl10MemNotAnx"
           :LABEL
           "ssl10-Memory-not anx"
           :SCALE-NAME
           "Efficient, Confident Learning"
           :DESCRIPTION
           "Efficient learning time use, good memory, relaxed during exams. (3 items)"
           :SCALE-GROUP-NAME
           "acad-learning"
           :SCALE-QUESTIONS
           '(LRNMEMOR LRNTENSE LRNSEFIC)
           :MEAN-SCORE
           0.593
           :STANDARD-DEVIATION
           0.222
           :SAMPLE-N
           953
           :NUM-QUESTIONS
           3
           :HELP-PRIORITY
           1
           :HELP-INFO
           "Try the help links below to improve your study efficiency, concentration, and reduce test-anxiety"
           :HELP-LINKS
           '("LEARN.htm"
             "learning_&_study_skills.htm"
             "test_anxiety.htm"
             "concentration.htm")
           :PARENTS
           '(ACAD-LEARNING SCALE)))

(DEFCLASS SSL11NOTNONACADMOT
          (ACAD-LEARNING SCALE)
          NIL
          (:DEFAULT-INITARGS
           :NAME-STRING
           "ssl11NotNonAcadMot"
           :LABEL
           "ssl11NotNonAcadMot"
           :SCALE-NAME
           "College Internal Motivation"
           :DESCRIPTION
           "Internal Motivation--to be in college. Internal motives versus pleasing parents, making money, or being confused why in school. Financially self-supporting. Internal motivation for accomplishing any task--including a college degree--is associated with greater success and happiness. (4 items)"
           :SCALE-GROUP-NAME
           "acad-learning"
           :SCALE-QUESTIONS
           '(STUEXTMO STUMONEYNEW STUCONFU STUFINDE STUCAREE)
           :MEAN-SCORE
           0.593
           :STANDARD-DEVIATION
           0.222
           :SAMPLE-N
           953
           :NUM-QUESTIONS
           5
           :HELP-PRIORITY
           1
           :HELP-INFO
           "If youu scored low, re-examine your values and priorities, ask what you can personally gain from college (eg. personal competence and growth, professional knowledge, and future career and personal satisifaction and success."
           :HELP-LINKS
           '("c15-carp.htm"
             "time_management.htm"
             "life_goals_and_meaning.htm")
           :PARENTS
           '(ACAD-LEARNING SCALE)))

(DEFCLASS SSL12STDYTMAVAIL
          (ACAD-LEARNING SCALE)
          NIL
          (:DEFAULT-INITARGS
           :NAME-STRING
           "ssl12StdyTmAvail"
           :LABEL
           "ssl12Study time available-acmtime"
           :SCALE-NAME
           "Study Time Available"
           :DESCRIPTION
           "Not too much time spent working, with family or friends, or in other activities. Studying and class attendence gets top priority."
           :SCALE-GROUP-NAME
           "acad-learning"
           :SCALE-QUESTIONS
           '(ACMTIME)
           :MEAN-SCORE
           0.52
           :STANDARD-DEVIATION
           0.257
           :SAMPLE-N
           819
           :NUM-QUESTIONS
           1
           :HELP-PRIORITY
           1
           :HELP-INFO
           "     ==> You may be working or involved with other activites too many hours per week--with the unit load you are carrying--to be successful in college.  Discuss this with your advisor "
           :HELP-LINKS
           '("time_management.htm" "procrastination.htm")
           :PARENTS
           '(ACAD-LEARNING SCALE)))

(DEFCLASS SSL13VERBALAPT
          (ACAD-LEARNING SCALE)
          NIL
          (:DEFAULT-INITARGS
           :NAME-STRING
           "ssl13VerbalApt"
           :LABEL
           "ssl13-Verbal aptitude test score=stuverba"
           :SCALE-NAME
           "Verbal Aptitude Score"
           :DESCRIPTION
           "Self-reported verbal aptitude score. (1 item)"
           :SCALE-GROUP-NAME
           "acad-learning"
           :SCALE-QUESTIONS
           '(STUVERBA)
           :MEAN-SCORE
           0.774
           :STANDARD-DEVIATION
           0.217
           :SAMPLE-N
           1003
           :NUM-QUESTIONS
           1
           :HELP-PRIORITY
           0
           :HELP-INFO
           "Aptitude has both genetic and learning componenets.  You can increase your verbal aptitude through taking appropriate classes, studying, and improving learning methods."
           :HELP-LINKS
           '("learning_&_study_skills.htm"
             "writing_help.htm"
             "LEARN.htm")
           :PARENTS
           '(ACAD-LEARNING SCALE)))

(DEFCLASS SSL14MATHAPT
          (ACAD-LEARNING SCALE)
          NIL
          (:DEFAULT-INITARGS
           :NAME-STRING
           "ssl14MathApt"
           :LABEL
           "ssl14-Math aptitude test score=stumatha"
           :SCALE-NAME
           "Math Aptitude Score"
           :DESCRIPTION
           "Self-reported mathematics aptitude score. (1 item)"
           :SCALE-GROUP-NAME
           "acad-learning"
           :SCALE-QUESTIONS
           '(STUMATHA)
           :MEAN-SCORE
           0.729
           :STANDARD-DEVIATION
           0.233
           :SAMPLE-N
           1003
           :NUM-QUESTIONS
           1
           :HELP-PRIORITY
           0
           :HELP-INFO
           "Aptitude has both genetic and learning componenets.  You can increase your verbal aptitude through taking appropriate classes, studying, and improving learning methods."
           :HELP-LINKS
           '("learning_&_study_skills.htm" "LEARN.htm")
           :PARENTS
           '(ACAD-LEARNING SCALE)))

(DEFCLASS SINCAR
          (CAREER-INTEREST SCALE)
          NIL
          (:DEFAULT-INITARGS
           :NAME-STRING
           "sincar"
           :LABEL
           "s-Career-major interest areas"
           :SCALE-NAME
           "Overall College Major Interests"
           :DESCRIPTION
           "General career interests. Many of the individual questions correspond to separate schools, colleges, or collections of academic majors at large universities. Look at your scores on individual questions to find potential majors or minors. A high score on this overall scale may indicate that you are a person with many high interests and that you may want a career that allows for challenging mental activities and some variety over time. 
     NOTE: This test is meant only to suggest some possible academic majors you may show interest in, it is NOT MEANT TO BE AN ALL INCLUSIVE LIST. You should explore the complete catalog of majors at your univesity or college--especially if you have specialized interests or interests not represented in this scale. You might also consider a dual major or special major tailored to your interests."
           :SCALE-GROUP-NAME
           "career-interest"
           :SCALE-QUESTIONS
           '(CAR1CARG
             CAR1CARP
             CAR1INAT
             CARIBIOH
             CARISOCS
             CARIHELP
             CARIMATH
             CARIMED
             CARIWRIT
             CARIFNAR
             CARIETHN
             CARILEAR
             CARIEXPE
             CARIGENE
             CARINOIN
             CARILIT
             CARIRECP
             CARIPOLI
             CARIMIL6
             CARIMANU
             CARILANG
             CARIPHIL
             CARIBUSI
             CARIENGI
             CARIFAMC
             CARIWOMA
             CARICOM8
             CARINTE0)
           :MEAN-SCORE
           NIL
           :STANDARD-DEVIATION
           NIL
           :SAMPLE-N
           NIL
           :NUM-QUESTIONS
           29
           :HELP-PRIORITY
           1
           :HELP-INFO
           *CAR-PLAN
           :HELP-LINKS
           '("c15-carp.htm")
           :PARENTS
           '(CAREER-INTEREST SCALE)))

(DEFCLASS SINBUS
          (CAREER-INTEREST SCALE)
          NIL
          (:DEFAULT-INITARGS
           :NAME-STRING
           "sinbus"
           :LABEL
           "s-Business interests"
           :SCALE-NAME
           "Business-Related Interests"
           :DESCRIPTION
           "Areas of interest within the overall category."
           :SCALE-GROUP-NAME
           "career-interest"
           :SCALE-QUESTIONS
           '(CARIBMAR
             CARIBMAN
             CARIBINF
             CARIBFIN
             CARIBHRD
             CARIBACC
             CARISPBU)
           :MEAN-SCORE
           NIL
           :STANDARD-DEVIATION
           NIL
           :SAMPLE-N
           NIL
           :NUM-QUESTIONS
           7
           :HELP-PRIORITY
           NIL
           :HELP-INFO
           "Go to help-link below and/or see help information for College Major Interest Test: Overall Interests Scale"
           :HELP-LINKS
           '("c15-carp.htm")
           :PARENTS
           '(CAREER-INTEREST SCALE)))

(DEFCLASS SINENGR
          (CAREER-INTEREST SCALE)
          NIL
          (:DEFAULT-INITARGS
           :NAME-STRING
           "sinengr"
           :LABEL
           "s-Engineering major interests"
           :SCALE-NAME
           "Engineering-Related Interests"
           :DESCRIPTION
           "Areas of interest within the overall category."
           :SCALE-GROUP-NAME
           "career-interest"
           :SCALE-QUESTIONS
           '(CARIEENG
             CARIME
             CARICHE2
             CARICIVE
             CARIAERO
             CARIEITE
             CARICOM9
             CARIBCOM)
           :MEAN-SCORE
           NIL
           :STANDARD-DEVIATION
           NIL
           :SAMPLE-N
           NIL
           :NUM-QUESTIONS
           8
           :HELP-PRIORITY
           NIL
           :HELP-INFO
           "Go to help-link below and/or see help information for College Major Interest Test: Overall Interests Scale"
           :HELP-LINKS
           '("c15-carp.htm")
           :PARENTS
           '(CAREER-INTEREST SCALE)))

(DEFCLASS SINFINEA
          (CAREER-INTEREST SCALE)
          NIL
          (:DEFAULT-INITARGS
           :NAME-STRING
           "sinfinea"
           :LABEL
           "s-Fine art major interests"
           :SCALE-NAME
           "Fine Arts-Related Interests"
           :DESCRIPTION
           "Areas of interest within the overall category."
           :SCALE-GROUP-NAME
           "career-interest"
           :SCALE-QUESTIONS
           '(CARIMUSI
             CARIART
             CARIDRAM
             CARIDANC
             CARIPHOT
             CARINDDE
             CARINTE1)
           :MEAN-SCORE
           NIL
           :STANDARD-DEVIATION
           NIL
           :SAMPLE-N
           NIL
           :NUM-QUESTIONS
           7
           :HELP-PRIORITY
           NIL
           :HELP-INFO
           "Go to help-link below and/or see help information for College Major Interest Test: Overall Interests Scale"
           :HELP-LINKS
           '("c15-carp.htm")
           :PARENTS
           '(CAREER-INTEREST SCALE)))

(DEFCLASS SINHELP
          (CAREER-INTEREST SCALE)
          NIL
          (:DEFAULT-INITARGS
           :NAME-STRING
           "sinhelp"
           :LABEL
           "s-Helping profession major interests"
           :SCALE-NAME
           "Helping, Teaching, Counseling-Related Interests"
           :DESCRIPTION
           "Areas of interest within the overall category."
           :SCALE-GROUP-NAME
           "career-interest"
           :SCALE-QUESTIONS
           '(CARITEAC
             CARICOUN
             CARIEDUC
             CARIHADU
             CARIHCHI
             CARITVOC
             CARICOM4
             CARSOCWO
             CARK12TE
             CARMINIS)
           :MEAN-SCORE
           NIL
           :STANDARD-DEVIATION
           NIL
           :SAMPLE-N
           NIL
           :NUM-QUESTIONS
           10
           :HELP-PRIORITY
           NIL
           :HELP-INFO
           "Go to help-link below and/or see help information for College Major Interest Test: Overall Interests Scale"
           :HELP-LINKS
           '("c15-carp.htm")
           :PARENTS
           '(CAREER-INTEREST SCALE)))

(DEFCLASS SINLANG
          (CAREER-INTEREST SCALE)
          NIL
          (:DEFAULT-INITARGS
           :NAME-STRING
           "sinlang"
           :LABEL
           "s-Language major interests"
           :SCALE-NAME
           "Language-Related Interests"
           :DESCRIPTION
           "Areas of interest within the overall category."
           :SCALE-GROUP-NAME
           "career-interest"
           :SCALE-QUESTIONS
           '(CARIFREN
             CARIITAL
             CARIGERM
             CARIRUSS
             CARIJAPN
             CARICHIN
             CARICLAS
             CARISPAN
             CARIPOR)
           :MEAN-SCORE
           NIL
           :STANDARD-DEVIATION
           NIL
           :SAMPLE-N
           NIL
           :NUM-QUESTIONS
           9
           :HELP-PRIORITY
           NIL
           :HELP-INFO
           "Go to help-link below and/or see help information for College Major Interest Test: Overall Interests Scale"
           :HELP-LINKS
           '("c15-carp.htm")
           :PARENTS
           '(CAREER-INTEREST SCALE)))

(DEFCLASS SINMED
          (CAREER-INTEREST SCALE)
          NIL
          (:DEFAULT-INITARGS
           :NAME-STRING
           "sinmed"
           :LABEL
           "s-Medical major interests"
           :SCALE-NAME
           "Medically-Related Interests Scale"
           :DESCRIPTION
           "Areas of interest within the overall category."
           :SCALE-GROUP-NAME
           "career-interest"
           :SCALE-QUESTIONS
           '(CARIMD
             CARINURS
             CARIPTHE
             CARIHEAL
             CARIKINE
             CARICOM5
             CARMEDTE)
           :MEAN-SCORE
           NIL
           :STANDARD-DEVIATION
           NIL
           :SAMPLE-N
           NIL
           :NUM-QUESTIONS
           7
           :HELP-PRIORITY
           NIL
           :HELP-INFO
           "Go to help-link below and/or see help information for College Major Interest Test: Overall Interests Scale"
           :HELP-LINKS
           '("c15-carp.htm")
           :PARENTS
           '(CAREER-INTEREST SCALE)))

(DEFCLASS SINMILTC
          (CAREER-INTEREST SCALE)
          NIL
          (:DEFAULT-INITARGS
           :NAME-STRING
           "sinmiltc"
           :LABEL
           "s-Law, Milit Interests"
           :SCALE-NAME
           "Law, Law Enforcement, or Military-Related Interests"
           :DESCRIPTION
           "Areas of interest within the overall category."
           :SCALE-GROUP-NAME
           "career-interest"
           :SCALE-QUESTIONS
           '(CARILAW CARICRIM CARIMIL7)
           :MEAN-SCORE
           NIL
           :STANDARD-DEVIATION
           NIL
           :SAMPLE-N
           NIL
           :NUM-QUESTIONS
           3
           :HELP-PRIORITY
           NIL
           :HELP-INFO
           "Go to help-link below and/or see help information for College Major Interest Test: Overall Interests Scale"
           :HELP-LINKS
           '("c15-carp.htm")
           :PARENTS
           '(CAREER-INTEREST SCALE)))

(DEFCLASS INNATSCI
          (CAREER-INTEREST SCALE)
          NIL
          (:DEFAULT-INITARGS
           :NAME-STRING
           "inNatSci"
           :LABEL
           "s-Nat Sci Interests"
           :SCALE-NAME
           "Natural Science-Related Interests"
           :DESCRIPTION
           "Areas of interest within the overall category."
           :SCALE-GROUP-NAME
           "career-interest"
           :SCALE-QUESTIONS
           '(CARICHE3 CARIPHYS CARIGEOL CARIASTR CARIENVI)
           :MEAN-SCORE
           NIL
           :STANDARD-DEVIATION
           NIL
           :SAMPLE-N
           NIL
           :NUM-QUESTIONS
           5
           :HELP-PRIORITY
           NIL
           :HELP-INFO
           "Go to help-link below and/or see help information for College Major Interest Test: Overall Interests Scale"
           :HELP-LINKS
           '("c15-carp.htm")
           :PARENTS
           '(CAREER-INTEREST SCALE)))

(DEFCLASS SINSOCSC
          (CAREER-INTEREST SCALE)
          NIL
          (:DEFAULT-INITARGS
           :NAME-STRING
           "sinsocsc"
           :LABEL
           "s-Social science major interests"
           :SCALE-NAME
           "Social Science-Related Interests"
           :DESCRIPTION
           "Areas of interest within the overall category."
           :SCALE-GROUP-NAME
           "career-interest"
           :SCALE-QUESTIONS
           '(CARIPSYC
             CARISOCO
             CARIHIST
             CARIPOLS
             CARIECON
             CARGEOGR
             CARIAMER
             CARIANTR
             CARIANTH
             CARISPEE
             CARLING)
           :MEAN-SCORE
           NIL
           :STANDARD-DEVIATION
           NIL
           :SAMPLE-N
           NIL
           :NUM-QUESTIONS
           11
           :HELP-PRIORITY
           NIL
           :HELP-INFO
           "Go to help-link below and/or see help information for College Major Interest Test: Overall Interests Scale"
           :HELP-LINKS
           '("c15-carp.htm")
           :PARENTS
           '(CAREER-INTEREST SCALE)))

(DEFCLASS SINWOETH
          (CAREER-INTEREST SCALE)
          NIL
          (:DEFAULT-INITARGS
           :NAME-STRING
           "sinwoeth"
           :LABEL
           "s-Womens or ethnics studies mj int"
           :SCALE-NAME
           "Women and Ethnic Group-Related Interests"
           :DESCRIPTION
           "Areas of interest within the overall category."
           :SCALE-GROUP-NAME
           "career-interest"
           :SCALE-QUESTIONS
           '(CARIAIST CARIBSTU CARIMEXA CARIASAM CARIAMST CARIWSTU)
           :MEAN-SCORE
           NIL
           :STANDARD-DEVIATION
           NIL
           :SAMPLE-N
           NIL
           :NUM-QUESTIONS
           6
           :HELP-PRIORITY
           NIL
           :HELP-INFO
           "Go to help-link below and/or see help information for College Major Interest Test: Overall Interests Scale"
           :HELP-LINKS
           '("c15-carp.htm")
           :PARENTS
           '(CAREER-INTEREST SCALE)))

(DEFCLASS SINWRITE
          (CAREER-INTEREST SCALE)
          NIL
          (:DEFAULT-INITARGS
           :NAME-STRING
           "sinwrite"
           :LABEL
           "s-Writing major interests"
           :SCALE-NAME
           "Writing and Media-Related Interests"
           :DESCRIPTION
           "Areas of interest within the overall category."
           :SCALE-GROUP-NAME
           "career-interest"
           :SCALE-QUESTIONS
           '(CARIENGL CARIJOUR)
           :MEAN-SCORE
           NIL
           :STANDARD-DEVIATION
           NIL
           :SAMPLE-N
           NIL
           :NUM-QUESTIONS
           2
           :HELP-PRIORITY
           NIL
           :HELP-INFO
           "Go to help-link below and/or see help information for College Major Interest Test: Overall Interests Scale"
           :HELP-LINKS
           '("c15-carp.htm")
           :PARENTS
           '(CAREER-INTEREST SCALE)))

(DEFCLASS SEHAPPY
          (OUTCOME SCALE)
          NIL
          (:DEFAULT-INITARGS
           :NAME-STRING
           "sehappy"
           :LABEL
           "s-Overall happiness"
           :SCALE-NAME
           "Overall Happiness"
           :DESCRIPTION
           "Overall happiness in various life areas including home, career, family, romance, recreation, health, and direct questions about overall happiness for recent past, current, and expected future time periods (15items). An overall low score may indicate high unhappiness and depression. Check individual questions to identify areas of high stress, avoidance, and/or need for improvement or help. (15 items)"
           :SCALE-GROUP-NAME
           "outcome"
           :SCALE-QUESTIONS
           '(HAPCLFRN
             HAPCARNW
             HAPCARFU
             HAPFRIEN
             HAPAREA
             HAPWKREL
             HAPPE
             HAPRECRE
             HAPSEXRE
             HAPFAMIL
             HAPSELFD
             HAPSPIRI
             HAPYEAR
             HAP3YEAR
             HAPLIFE
             HAPEXPEC)
           :MEAN-SCORE
           ".600"
           :STANDARD-DEVIATION
           ".184"
           :SAMPLE-N
           3185
           :NUM-QUESTIONS
           15
           :HELP-PRIORITY
           2.0
           :HELP-INFO
           "Check areas where you are not scoring high. Also, check your HQ score. SHAQ factors such as self-esteem, emotional coping, self-management, interpersonal skills, etc. Use the helplinks to improve areas that can increase your happiness."
           :HELP-LINKS
           '("my-peek.htm" "index.html" "hhapchkl.htm")
           :PARENTS
           '(OUTCOME SCALE)))

(DEFCLASS SRDEPRES
          (OUTCOME SCALE)
          NIL
          (:DEFAULT-INITARGS
           :NAME-STRING
           "srdepres"
           :LABEL
           "s-LoDepression outcomes"
           :SCALE-NAME
           "Low Depression Symptoms and Treatment"
           :DESCRIPTION
           "Items were developed from the DSM-IV depression diagnosis criteria and written as self-assessment items.  The scale also asks the amount of psychotherapy and medication taken for depression. It was scored in reverse so that high scores would mean low depression. Reverse scored. (6 items)"
           :SCALE-GROUP-NAME
           "outcome"
           :SCALE-QUESTIONS
           '(RDEPFEEL RDEPTHOU RDEPDYSS RDEPMAJS RDEPMEDS RDEPTHER)
           :MEAN-SCORE
           ".599"
           :STANDARD-DEVIATION
           ".225"
           :SAMPLE-N
           2819
           :NUM-QUESTIONS
           6
           :HELP-PRIORITY
           2.0
           :HELP-INFO
           "If you are suffering from too much depression, then we strongly advise you to make learning how to find happiness and cope with depression and its causes a high priority in your life. Alternatives include reading self-help materials, learning from others who have learned to overcome problems similar to yours, and seeking professional help."
           :HELP-LINKS
           '("depression.htm" "my-peek.htm" "h85cdepr.htm")
           :PARENTS
           '(OUTCOME SCALE)))

(DEFCLASS SRANXIET
          (OUTCOME SCALE)
          NIL
          (:DEFAULT-INITARGS
           :NAME-STRING
           "sranxiet"
           :LABEL
           "s-LoAnxiety symp+treat outcomes"
           :SCALE-NAME
           "Anxiety Symptoms and Treatment"
           :DESCRIPTION
           "Items were developed from the DSM-IV anxiety disorder diagnosis criteria and written as self-assessment items. The scale also asks the amount of psychotherapy and medication taken for anxiety-related disorders. Included were phobias and some obsession and compulsion-related items. Reverse scored. (9 items)"
           :SCALE-GROUP-NAME
           "outcome"
           :SCALE-QUESTIONS
           '(RANXPERF
             RANXALLT
             RANXPSTD
             RANXSOCI
             RANXOCD
             RANXPHOB
             RANXPANI
             RANXTHER
             RANXMEDS)
           :MEAN-SCORE
           ".719"
           :STANDARD-DEVIATION
           ".183"
           :SAMPLE-N
           3298
           :NUM-QUESTIONS
           9
           :HELP-PRIORITY
           2.0
           :HELP-INFO
           "If you are suffering from too much anxiety or anxiety-related disorders, then we strongly advise you to make learning how to find happiness and cope with anxiety and its causes a high priority in your life. Alternatives include reading self-help materials, learning from others who have learned to overcome problems similar to yours, and seeking professional help."
           :HELP-LINKS
           '("anxiety.htm" "my-peek.htm" "h8hf2.htm")
           :PARENTS
           '(OUTCOME SCALE)))

(DEFCLASS SRANGAGG
          (OUTCOME SCALE)
          NIL
          (:DEFAULT-INITARGS
           :NAME-STRING
           "srangagg"
           :LABEL
           "s-LoAnger-aggression outcomes"
           :SCALE-NAME
           "Low Anger-Aggression"
           :DESCRIPTION
           "Items include frequency of losing temper, name-calling/yelling, aggressive acts, and thoughts about getting even. Anger-related problems--such as aggressive,  threatening, dominating, violent, or abusive behavior. Often accompanied by feelings of loneliness, being unloved, not being understood, or persecution. Reverse scored. (5 items)"
           :SCALE-GROUP-NAME
           "outcome"
           :SCALE-QUESTIONS
           '(RANGFEEL RANGYELL RANGDOMI RANGTHOU RANGDEST)
           :MEAN-SCORE
           ".772"
           :STANDARD-DEVIATION
           ".163"
           :SAMPLE-N
           3262
           :NUM-QUESTIONS
           5
           :HELP-PRIORITY
           2.0
           :HELP-INFO
           "If you have any of these problems, then we strongly advise you to make a high priority of reducing your anger and replacing aggressive behavior with assertive, diplomatic, and understanding behavior. Learn to realize that every moment of anger is a moment less of being happy and that every time that you behave aggressively toward someone, it may reduce their caring or respect for you--leading eventually to their rejecting you. You may be blind to how much your hostility or dominance is at the root of many other oproblems that seem unrelated to anger (such as problems in relationships, career advancement, etc.).  Try learning how to find peace and happiness and make coping with anger and hostile behavior a top priority in your life. Use our links to interpersonal skills and assertive conflict resolution as a start."
           :HELP-LINKS
           '("b-anger.htm" "my-peek.htm")
           :PARENTS
           '(OUTCOME SCALE)))

(DEFCLASS SRELHLTH
          (OUTCOME SCALE)
          NIL
          (:DEFAULT-INITARGS
           :NAME-STRING
           "srelhlth"
           :LABEL
           "s-Health outcomes"
           :SCALE-NAME
           "Physical Health"
           :DESCRIPTION
           "General indicators of your physical health.  Frequency of illness, alcohol and drug use, weight, and conditioning estimates. (6 items)"
           :SCALE-GROUP-NAME
           "outcome"
           :SCALE-QUESTIONS
           '(RHLFREQI RHLALCOH RHLSMOKE RHLDRUGS RHLPHYSI RHLWEIGH)
           :MEAN-SCORE
           ".702"
           :STANDARD-DEVIATION
           ".133"
           :SAMPLE-N
           3081
           :NUM-QUESTIONS
           6
           :HELP-PRIORITY
           1
           :HELP-INFO
           "Research has conistently shown that your daily eating, exercise, addicitve, stress-related, and other health-related habits can have a huge effect on your health over a period of years.  Moderate to vigorous daily exercise, good nutrition, not smoking or using drugs, 7-8 hours sleep/night, keeping weight down, having a minimally stressful, happy life, and not engaging is physically risky activities have all been shown to be important for long-term physical health. If you are unsure of what is healthy exercise, nutrician, etc., begin reading to find out.  Your life may depend upon it."
           :HELP-LINKS
           '("health tips.htm")
           :PARENTS
           '(OUTCOME SCALE)))

(DEFCLASS SRPEOPLE
          (OUTCOME SCALE)
          NIL
          (:DEFAULT-INITARGS
           :NAME-STRING
           "srpeople"
           :LABEL
           "s-Relationship outcomes"
           :SCALE-NAME
           "Interpersonal Relations"
           :DESCRIPTION
           "Number and quality of friends, happiness in marital-like relationship, and work relationships. (7 items) "
           :SCALE-GROUP-NAME
           "outcome"
           :SCALE-QUESTIONS
           '(RPEHAPFR
             RPEHMARR
             RPENETW
             RPECLFRN
             RPENUMFR
             RPENUMCL
             RPECOMMI)
           :MEAN-SCORE
           ".521"
           :STANDARD-DEVIATION
           ".153"
           :SAMPLE-N
           2673
           :NUM-QUESTIONS
           7
           :HELP-PRIORITY
           1.5
           :HELP-INFO
           "If you haven't had the kind of romantic, friendship, family, or professional relationships you would prefer, then it is possible to learn how to improve your interpersonal skills and change your habits to make a even dramatic improvements. Many others have had remarkable success by setting goals to improve their relationships then reading, observing successful role-models, taking classes or counseling, and/or practicing new ways of thinking and acting."
           :HELP-LINKS
           '("conversational_skills.htm"
             "assertion_training.htm"
             "overcoming_loneliness.htm")
           :PARENTS
           '(OUTCOME SCALE)))

(DEFCLASS SSWVGRATPT
          (SWORLDVIEW SUBSCALE)
          NIL
          (:DEFAULT-INITARGS
           :NAME-STRING
           "sswvgratpt"
           :LABEL
           "sswv-Grateful  abundance beliefs"
           :SCALE-NAME
           "Grateful Abundance Beliefs"
           :DESCRIPTION
           "High gratitude for life and whatever one has; high proportion of positive thoughts. (5 items). Had best correlation with overall happiness of any scale (0.722). Also correlated 0.574 with low depression, 0.445 with low anxiety, and 0.356 with low anger/aggression."
           :SCALE-QUESTIONS
           '(TBVGRATI WOVABUND WOVGRATE)
           :MEAN-SCORE
           ".668"
           :STANDARD-DEVIATION
           ".198"
           :SAMPLE-N
           3200
           :NUM-QUESTIONS
           5
           :HELP-PRIORITY
           1
           :HELP-INFO
           "Having low expectations of what you will receive and being grateful for your life and all you do receive is a strong underlying basis for positive thinking and happiness."
           :HELP-LINKS
           '("h44defic.htm" "h4world.htm" "h45strea.htm")
           :PARENTS
           '(SWORLDVIEW SUBSCALE)))

(DEFCLASS SSWVOPTIMS
          (SWORLDVIEW SUBSCALE)
          NIL
          (:DEFAULT-INITARGS
           :NAME-STRING
           "sswvoptims"
           :LABEL
           "sswv-Optimism about self and world"
           :SCALE-NAME
           "Optimism"
           :DESCRIPTION
           "Optimism about self and the world. Good forces in control. Optimism increases motivation, energy, and positive thoughts. (3 items). Correlated .543with happiness, .354 with low depression, .284 with low anxiety, and .265 with low anger/aggression."
           :SCALE-GROUP-NAME
           "sworldview"
           :SCALE-QUESTIONS
           '(WOVPROGR WOVGOODF WOVMYLIF WOVPOSTH)
           :MEAN-SCORE
           "641"
           :STANDARD-DEVIATION
           ".196"
           :SAMPLE-N
           3200
           :NUM-QUESTIONS
           4
           :HELP-PRIORITY
           1
           :HELP-INFO
           "Believing that the world, your local world, and your personal life are under the control of positive forces moving in a positive direction is another basic belief system that increases happiness and success."
           :HELP-LINKS
           '("h4world.htm")
           :PARENTS
           '(SWORLDVIEW SUBSCALE)))

(DEFCLASS SSWVENTIT
          (SWORLDVIEW SUBSCALE)
          NIL
          (:DEFAULT-INITARGS
           :NAME-STRING
           "sswventit"
           :LABEL
           "sswv-NotEntitlement beliefs"
           :SCALE-NAME
           "No Entitlment Beliefs"
           :DESCRIPTION
           "Not believing that person owed either the basic necessities or a high standard of living. Don't feel entitled to anything in life. Belief all we receive is a bonus.. (2 items). Correlated .157 with happiness, 164, with low depression,.185 with low anxiety, and  .266 with low anger/aggression."
           :SCALE-GROUP-NAME
           "sworldview"
           :SCALE-QUESTIONS
           '(TBVENTIT WOVNFAIR WOVINJUR WOVENTIT)
           :MEAN-SCORE
           ".496"
           :STANDARD-DEVIATION
           ".208"
           :SAMPLE-N
           3162
           :NUM-QUESTIONS
           0
           :HELP-PRIORITY
           1
           :HELP-INFO
           "People "
           :HELP-LINKS
           '("h44defic.htm")
           :PARENTS
           '(SWORLDVIEW SUBSCALE)))

(DEFCLASS SSSWNONCONT
          (STBSLFWO SUBSCALE)
          NIL
          (:DEFAULT-INITARGS
           :NAME-STRING
           "ssswNonCont"
           :LABEL
           "sssw-Not conting or dysf SelfWorth"
           :SCALE-NAME
           "Unconditional Self-Worth"
           :DESCRIPTION
           "Self-worth based upon being human and internal qualities--not based upon being liked, strong, the best, living by the rules, being a winner, or any other conditional or external factor. (6 items). "
           :SCALE-GROUP-NAME
           "stbslfwo"
           :SCALE-QUESTIONS
           '(TBVOTHFI TBVLIKED TBVWEAK TBVBEST TBVRULES TBVWINNE)
           :MEAN-SCORE
           ".655"
           :STANDARD-DEVIATION
           "165"
           :SAMPLE-N
           3246
           :NUM-QUESTIONS
           6
           :HELP-PRIORITY
           1
           :HELP-INFO
           "Improving unconditional self-worth can reduced anxiety about what others think of you, about being successful, or many other frequent causes of anxiety and depression."
           :HELP-LINKS
           '("h5self.htm")
           :PARENTS
           '(STBSLFWO SUBSCALE)))

(DEFCLASS SSSWHAPALLGRAT
          (STBSLFWO SUBSCALE)
          NIL
          (:DEFAULT-INITARGS
           :NAME-STRING
           "ssswHapAllGrat"
           :LABEL
           "sssw-HigherSelf--MaxLoveHapBal-Grat"
           :SCALE-NAME
           "Balanced Love-Happiness Priorities"
           :DESCRIPTION
           "Value love and happiness for self and all others, gratitude, and make decisions to maximize happiness balancing it across time and people.(5 items). Correlated .567 with happiness, .328, with low depression,.247 with low anxiety, and  .360 with low anger/aggression."
           :SCALE-GROUP-NAME
           "stbslfwo"
           :SCALE-QUESTIONS
           '(TBVBALAN TBVHAPCA TBVGRATI THVUNCON THVSELFW)
           :MEAN-SCORE
           ".573"
           :STANDARD-DEVIATION
           ".172"
           :SAMPLE-N
           3246
           :NUM-QUESTIONS
           5
           :HELP-PRIORITY
           1
           :HELP-INFO
           "Self-worth is loving and accepting yourself and others.  Valuing happiness and health are an important aspect of self-worth. See help-links."
           :HELP-LINKS
           '("h1hap.htm" "h5self.htm")
           :PARENTS
           '(STBSLFWO SUBSCALE)))

(DEFCLASS SSSWACALLSELF
          (STBSLFWO SUBSCALE)
          NIL
          (:DEFAULT-INITARGS
           :NAME-STRING
           "ssswAcAllSelf"
           :LABEL
           "sssw-Accept all of self  1"
           :SCALE-NAME
           "Self-Acceptance"
           :DESCRIPTION
           "Accepting and valuing all parts of oneself including dysfunctional parts and parts not consistent with overall self-image, values, etc. even though may be trying to change them. Not anger at self parts or repression of them.(1 item). "
           :SCALE-GROUP-NAME
           "stbslfwo"
           :SCALE-QUESTIONS
           '(THVSELFA)
           :MEAN-SCORE
           ".343"
           :STANDARD-DEVIATION
           ".216"
           :SAMPLE-N
           3246
           :NUM-QUESTIONS
           1
           :HELP-PRIORITY
           1
           :HELP-INFO
           "Freud first demonstrated--and psychology has confirmed--that rejected or repressed parts of yourself can cause internal conflict, negative emotions, and dysfunctional behavior. Use help-links to learn methods for accepting all parts of yourself."
           :HELP-LINKS
           '("h53accep.htm" "h32decis.htm" "h23explo.htm")
           :PARENTS
           '(STBSLFWO SUBSCALE)))

(DEFCLASS SSIEAUTONY
          (SIECONTR SUBSCALE)
          NIL
          (:DEFAULT-INITARGS
           :NAME-STRING
           "ssieautony"
           :LABEL
           "ssie Autonomy  independence"
           :SCALE-NAME
           "Relationship Autonomy"
           :DESCRIPTION
           "Autonomy, independence from being controlled by others.  Belief in taking care of self, controlling own happiness, not dependent upon one person (3 items). Correlated .553 with happiness, .438, with low depression,.434 with low anxiety, and  .367 with low anger/aggression."
           :SCALE-GROUP-NAME
           "siecontr"
           :SCALE-QUESTIONS
           '(IECSELFS IECICONT IECDEPEN)
           :MEAN-SCORE
           ".702"
           :STANDARD-DEVIATION
           ".211"
           :SAMPLE-N
           2690
           :NUM-QUESTIONS
           3
           :HELP-PRIORITY
           1
           :HELP-INFO
           "Being internally controlled by your strong values, beliefs, and habits/skills helps one persist in the face of negativism, disapproval, and rejection by others.  The mature autonomous person carefully considers the opinions, desires, and effects on others; then makes the final decision considering those factors along with his/her own perspective. Integrity and taking ultimate responsibility for his/her own acts is normally a top value for the autonomous person."
           :HELP-LINKS
           '("h6intern.htm")
           :PARENTS
           '(SIECONTR SUBSCALE)))

(DEFCLASS SSIENCODEP
          (SIECONTR SUBSCALE)
          NIL
          (:DEFAULT-INITARGS
           :NAME-STRING
           "ssiencodep"
           :LABEL
           "ssie-Not codependent"
           :SCALE-NAME
           "Not Codependent"
           :DESCRIPTION
           "Not codependent or taken advantage of by others you help. Not care for others and neglect self or give too much more than others do for you. (3 items)Correlated .213 with happiness, .230, with low depression,.283 with low anxiety, and  .243 with low anger/aggression."
           :SCALE-GROUP-NAME
           "siecontr"
           :SCALE-QUESTIONS
           '(IECCOFEE IECCOPRB)
           :MEAN-SCORE
           ".538"
           :STANDARD-DEVIATION
           ".238"
           :SAMPLE-N
           2690
           :NUM-QUESTIONS
           2
           :HELP-PRIORITY
           1
           :HELP-INFO
           "Some caring people believe that they should put their own needs below that of others, give so much trying to help people who have dysfunctional or addictive habits that they mar their own lives."
           :HELP-LINKS
           '("h6intern.htm")
           :PARENTS
           '(SIECONTR SUBSCALE)))

(DEFCLASS SSIENOTHER
          (SIECONTR SUBSCALE)
          NIL
          (:DEFAULT-INITARGS
           :NAME-STRING
           "ssienother"
           :LABEL
           "ssie-Not care-provider for other"
           :SCALE-NAME
           "Control Own Emotions Beliefs"
           :DESCRIPTION
           "Belief that person has primary/direct control of own happiness and other emotions--not controlled by primarily heredity, environment, or others (2 Items)."
           :SCALE-GROUP-NAME
           "siecontr"
           :SCALE-QUESTIONS
           '(IECPEOPL IECGENET)
           :MEAN-SCORE
           ".565"
           :STANDARD-DEVIATION
           ".214"
           :SAMPLE-N
           2690
           :NUM-QUESTIONS
           2
           :HELP-PRIORITY
           1
           :HELP-INFO
           "The primary direct cause of emotions is one's cognitive system--values, beliefs, thoughts, and perceptions. External events interact with those mental structures to produce emotions.  Learn how to change both internal and external sources of happiness to change your emotions."
           :HELP-LINKS
           '("h2choose.htm")
           :PARENTS
           '(SIECONTR SUBSCALE)))

(DEFCLASS SSB2ETHIC
          (SETHBEL SUBSCALE)
          NIL
          (:DEFAULT-INITARGS
           :NAME-STRING
           "ssb2Ethic"
           :LABEL
           "ssb2-Ethics grounded in abstract absolutes"
           :SCALE-NAME
           "Abstract Absolutes-Grounded Ethics"
           :DESCRIPTION
           "Ethics based upon abstract absolutes versus relativism. Philosophical beliefs guide daily life. Believe we are ethically responsible even if bad genes or environment. Science/reason alone not enough to guide ethics. (4 items). Correlated .346 with happiness, .266, with low depression,.294 with low anxiety, and  .373 with low anger/aggression."
           :SCALE-GROUP-NAME
           "sethbel"
           :SCALE-QUESTIONS
           '(TB2RELAT TBV2NOTR TB2REASO TBV2CORE)
           :MEAN-SCORE
           ".672"
           :STANDARD-DEVIATION
           ".150"
           :SAMPLE-N
           2366
           :NUM-QUESTIONS
           4
           :HELP-INFO
           "Explore the foundations of your ethical beliefs. Do you know what your top value/goal?  Do you rely on a religion or a certain philosophy as your ethical foundation? What are its basic ethical principles? Do you say that your family or other group is your top value? If so, what would you do if you lost them all?"
           :HELP-LINKS
           '("life_goals_and_meaning.htm"
             "h3hiself.htm"
             "h13topgo.htm")
           :PARENTS
           '(SETHBEL SUBSCALE)))

(DEFCLASS SSB2FORGIV
          (SETHBEL SUBSCALE)
          NIL
          (:DEFAULT-INITARGS
           :NAME-STRING
           "ssb2Forgiv"
           :LABEL
           "ssb2-Forgiving-egalitarian"
           :SCALE-NAME
           "Forgiveness"
           :DESCRIPTION
           "Highly forgiving of others, egalitarian/democratic beliefs. Forgiveness based upon inner qualities not based upon good works.  Not believe bad only happens to bad (2 items).  Correlated .282 with happiness, .216, with low depression,.294 with low anxiety, and  .378 with low anger/aggression."
           :SCALE-GROUP-NAME
           "sethbel"
           :SCALE-QUESTIONS
           '(TB2PUNIS TB2GDWRK)
           :MEAN-SCORE
           ".751"
           :STANDARD-DEVIATION
           ".192"
           :SAMPLE-N
           2366
           :NUM-QUESTIONS
           2
           :HELP-PRIORITY
           1
           :HELP-INFO
           "Learning to forgive yourself and others is a key to self-worth, happiness, and close interpersonal relations."
           :HELP-LINKS
           '("h53accep.htm" "h23explo.htm" "h51worth.htm")
           :PARENTS
           '(SETHBEL SUBSCALE)))

(DEFCLASS SSB2IDGRND
          (SETHBEL SUBSCALE)
          NIL
          (:DEFAULT-INITARGS
           :NAME-STRING
           "ssb2IDgrnd"
           :LABEL
           "ssb2-Identify with abstract whole"
           :SCALE-NAME
           "Identification With Humanity"
           :DESCRIPTION
           "Identify with abstract whole such as all humanity vs. a specific group (eg. family) or a specific role.(2 items). Correlated .258 with happiness and  .214 with low anger/aggression."
           :SCALE-GROUP-NAME
           "sethbel"
           :SCALE-QUESTIONS
           '(TB2IDHUM TB2MOVEM)
           :MEAN-SCORE
           ".412"
           :STANDARD-DEVIATION
           ".165"
           :SAMPLE-N
           2366
           :NUM-QUESTIONS
           2
           :HELP-INFO
           "Identification primarily with all humanity is not only is consistent with the advice of great philosophers and religious leaders, but also increases caring for all people, self-acceptance, and less dependence (and control by) family, friends, or other groups."
           :HELP-LINKS
           '("h3hiself.htm")
           :PARENTS
           '(SETHBEL SUBSCALE)))

(DEFCLASS SSB2GRNDMNG
          (SETHBEL SUBSCALE)
          NIL
          (:DEFAULT-INITARGS
           :NAME-STRING
           "ssb2GrndMng"
           :LABEL
           "ssb2-Meaning from abstract absolutes"
           :SCALE-NAME
           "Abstract Principles-Entities Ethics"
           :DESCRIPTION
           "Base meaning on abstract principles such as integrity, honesty, God, Nature, etc. instead of particular objects, events, or situational factors (eg. money, career, home, or other people). Correlated .256 with happiness, .225, with low depression,.264 with low anxiety, and  .277 with low anger/aggression."
           :SCALE-GROUP-NAME
           "sethbel"
           :SCALE-QUESTIONS
           '(TB2GROUM TB2SELFM)
           :MEAN-SCORE
           ".624"
           :STANDARD-DEVIATION
           ".204"
           :SAMPLE-N
           2366
           :NUM-QUESTIONS
           2
           :HELP-INFO
           "One advantage of basing beliefs and behavior upon abstract and mental values that it provides immunity from anxiety over external events because you have so much more direct control over mental events than external events."
           :HELP-LINKS
           '("h13topgo.htm")
           :PARENTS
           '(SETHBEL SUBSCALE)))

(DEFCLASS SSB2INRGOOD
          (SETHBEL SUBSCALE)
          NIL
          (:DEFAULT-INITARGS
           :NAME-STRING
           "ssb2InrGood"
           :LABEL
           "ssb2-Inner goodness in all"
           :SCALE-NAME
           "Inner Goodness In All"
           :DESCRIPTION
           "Belief in basic inner value and goodness in all people. Goodness depends more on attitude than behavior. (2 items). Correlated .327 with happiness and  .226 with low anger/aggression."
           :SCALE-GROUP-NAME
           "sethbel"
           :SCALE-QUESTIONS
           '(TB2GDATT TB2ALLGD)
           :MEAN-SCORE
           ".546"
           :STANDARD-DEVIATION
           ".182"
           :SAMPLE-N
           2366
           :NUM-QUESTIONS
           2
           :HELP-INFO
           "Think about how all newborn babies have inherent worth, and how at least some of that value persists even though a person may learn dysfunctional beliefs and behaviors. Consider the arguments of the great philosophers and religions that value all human beings."
           :HELP-LINKS
           '("h51worth.htm")
           :PARENTS
           '(SETHBEL SUBSCALE)))

(DEFCLASS SSB2NOASTR
          (SETHBEL SUBSCALE)
          NIL
          (:DEFAULT-INITARGS
           :NAME-STRING
           "ssb2noAstr"
           :LABEL
           "ssb2-Not belief in astrology. (1 item)"
           :SCALE-NAME
           "Not Astrology Belief"
           :DESCRIPTION
           "Does not believe in astrology"
           :SCALE-GROUP-NAME
           "sethbel"
           :SCALE-QUESTIONS
           '(TBV2ASTR)
           :MEAN-SCORE
           ".718"
           :STANDARD-DEVIATION
           ".242"
           :SAMPLE-N
           2366
           :NUM-QUESTIONS
           1
           :HELP-INFO
           "Science rejects astrology and any idea that stars' alignments have any significant effect on human behavior or history. The main problem with believing in astrology or even reading forecasts is that it distracts people from attending to the real factors that are influencing their lives and may cause them to make bad decisions based upon these unreliable predictions instead of using their own judgement. Relying on astrology may come from low self-confidence in one's own judgement."
           :HELP-LINKS
           '("h54confi.htm" "h6intern.htm")
           :PARENTS
           '(SETHBEL SUBSCALE)))

(DEFCLASS SSB2LIFAD
          (SETHBEL SUBSCALE)
          NIL
          (:DEFAULT-INITARGS
           :NAME-STRING
           "ssb2lifad"
           :LABEL
           "ssb2-Belief in LifeAfterDeath1"
           :SCALE-NAME
           "Life After Death Belief"
           :DESCRIPTION
           "Belief in life after death. (1 item)"
           :SCALE-GROUP-NAME
           "sethbel"
           :SCALE-QUESTIONS
           '(TB2LIFAD)
           :MEAN-SCORE
           ".606"
           :STANDARD-DEVIATION
           ".270"
           :SAMPLE-N
           2366
           :NUM-QUESTIONS
           1
           :HELP-INFO
           "Belief in life after death may lower people's fear of death and illness.  However, it may also cause people to disregard their own welfare thinking that they will be rewarded in heaven (extreme example is suicide bombers)."
           :HELP-LINKS
           'NIL
           :PARENTS
           '(SETHBEL SUBSCALE)))

(DEFCLASS SSWFSOCIAL
          (SGRFEARS SUBSCALE)
          NIL
          (:DEFAULT-INITARGS
           :NAME-STRING
           "sswfsocial"
           :LABEL
           "sswf-Not not-social or alone"
           :SCALE-NAME
           "Low Social Fears"
           :DESCRIPTION
           "Low fear of being unwanted, alone, unloved, etc. (4 items). Correlated .492 with happiness, .444, with low depression,.366 with low anxiety, and  .275 with low anger/aggression."
           :SCALE-GROUP-NAME
           "sgrfears"
           :SCALE-QUESTIONS
           '(WOVALONE WOVNOLOV WOVLIKED WOVPROBL)
           :MEAN-SCORE
           ".550"
           :STANDARD-DEVIATION
           ".229"
           :SAMPLE-N
           3162
           :NUM-QUESTIONS
           4
           :HELP-PRIORITY
           1
           :HELP-INFO
           "People-related fears such as fear of what others think about you or fears of rejection, being unloved, or being alone can underlie a great deal of unhappiness, anxiety, depression, and dysfunctional behavior. Try our help-links."
           :HELP-LINKS
           '("h43dark.htm" "c-rejct.htm" "h6intern.htm")
           :PARENTS
           '(SGRFEARS SUBSCALE)))

(DEFCLASS SSWFSELF
          (SGRFEARS SUBSCALE)
          NIL
          (:DEFAULT-INITARGS
           :NAME-STRING
           "sswfself"
           :LABEL
           "sswf-Not self-related fears"
           :SCALE-NAME
           "Low Self-Related Fears"
           :DESCRIPTION
           "Confidence can overcome worst fears/problems. Low fear of being overwhelmed by personal problems. (3 items)"
           :SCALE-GROUP-NAME
           "sgrfears"
           :SCALE-QUESTIONS
           '(WOVPERSO WOVDISCO WOVOVERC)
           :MEAN-SCORE
           ".625"
           :STANDARD-DEVIATION
           ".193"
           :SAMPLE-N
           3162
           :NUM-QUESTIONS
           3
           :HELP-PRIORITY
           1
           :HELP-INFO
           "First try to clarify what your fears are, then use self-help or professional help to reduce them."
           :HELP-LINKS
           '("h43dark.htm" "h5self.htm" "h23explo.htm")
           :PARENTS
           '(SGRFEARS SUBSCALE)))

(DEFCLASS SSWFPOVFAI
          (SGRFEARS SUBSCALE)
          NIL
          (:DEFAULT-INITARGS
           :NAME-STRING
           "sswfpovfai"
           :LABEL
           "sswf-Not poverty-failure fears"
           :SCALE-NAME
           "Low Failure-Poverty Fears"
           :DESCRIPTION
           "Low fear of poverty, failure, lack of career success. (3 items)"
           :SCALE-GROUP-NAME
           "sgrfears"
           :SCALE-QUESTIONS
           '(WOVHAPPY WOVPOOR WOVSUCCE)
           :MEAN-SCORE
           ".576"
           :STANDARD-DEVIATION
           ".227"
           :SAMPLE-N
           3162
           :NUM-QUESTIONS
           3
           :HELP-PRIORITY
           1
           :HELP-INFO
           "Being afraid of poverty, failure, a life-style below one's expectations, or similar fears can make life more miserable for someone who has done well than someone who doesn't have those fears and has much less.  Face those fears directly and develop new ways of thinking about them such as Alternative Goals and Plans."
           :HELP-LINKS
           '("h43dark.htm" "h23explo.htm" "h5self.htm")
           :PARENTS
           '(SGRFEARS SUBSCALE)))

(DEFCLASS SSWFILLDEA
          (SGRFEARS SUBSCALE)
          NIL
          (:DEFAULT-INITARGS
           :NAME-STRING
           "sswfilldea"
           :LABEL
           "sswf-Not illness-death fears"
           :SCALE-NAME
           "Low Illness or Death Fears"
           :DESCRIPTION
           "Low fear of illness or death. (2 items)"
           :SCALE-GROUP-NAME
           "sgrfears"
           :SCALE-QUESTIONS
           '(WOVILL WOVDEATH)
           :MEAN-SCORE
           ".702"
           :STANDARD-DEVIATION
           ".236"
           :SAMPLE-N
           3162
           :NUM-QUESTIONS
           2
           :HELP-PRIORITY
           1
           :HELP-INFO
           "Philosophers have proposed that humans' fear of death (and serious illness) is an underlying cause of human misery.  Death and the possiblity of serious illness is something we all face.  Learning to minimize those fears can bring greater peace to daily life--especially if we have a more immediate threat of death or illness."
           :HELP-LINKS
           '("h43dark.htm")
           :PARENTS
           '(SGRFEARS SUBSCALE)))

(DEFCLASS SSSCLEARN
          (SSLFCONF SUBSCALE)
          NIL
          (:DEFAULT-INITARGS
           :NAME-STRING
           "sssclearn"
           :LABEL
           "sssc-SelfConf-Learning"
           :SCALE-NAME
           "Learning Confidence"
           :DESCRIPTION
           "Confidence in own intelligence, learning, study skills, analytical thinking, synthesis, research methodology, computer-related, and critical thinking. (7 items)"
           :SCALE-GROUP-NAME
           "sslfconf"
           :SCALE-QUESTIONS
           '(SLFLEARN
             SLFCRITT
             SLFRESEA
             SLFANALY
             SLFSYNTH
             SLFCOMPU
             SLFIQ)
           :MEAN-SCORE
           ".801"
           :STANDARD-DEVIATION
           ".143"
           :SAMPLE-N
           3225
           :NUM-QUESTIONS
           7
           :HELP-INFO
           "It is human intelligence and ability to learn and adapt that separates us most from the lower animals.  Research shows that people who have better learning skills tend to be happier and more successful. The help-links below only cover a limited set of learning skills, but are a place to start."
           :HELP-LINKS
           '("learning_&_study_skills.htm" "LEARN.htm")
           :PARENTS
           '(SSLFCONF SUBSCALE)))

(DEFCLASS SSSCCOPOPT
          (SSLFCONF SUBSCALE)
          NIL
          (:DEFAULT-INITARGS
           :NAME-STRING
           "sssccopopt"
           :LABEL
           "sssc-SelfConf-PosAchCopeRelate"
           :SCALE-NAME
           "Achievement Confidence"
           :DESCRIPTION
           "Confidence/skills of optimistic-assertive engagement for both people and nonpeople tasks. Achievement motivation, work habits, emotional control, optimism, self-disclosure, and caring conflict resolution. (6 items)"
           :SCALE-GROUP-NAME
           "sslfconf"
           :SCALE-QUESTIONS
           '(SLFSELF4 SLFCOPE SLFSELF5 SLFCONFL SLFOPTIM SLFFRIEN)
           :MEAN-SCORE
           ".623"
           :STANDARD-DEVIATION
           ".201"
           :SAMPLE-N
           3225
           :NUM-QUESTIONS
           6
           :HELP-PRIORITY
           1
           :HELP-INFO
           "Engaging is tasks with enthusiasm and committment to excellence improves happiness, success, and relationships."
           :HELP-LINKS
           '("patsm96.htm"
             "concentration.htm"
             "h-app-e-InterpersonalSkills.htm")
           :PARENTS
           '(SSLFCONF SUBSCALE)))

(DEFCLASS SSSCSMSMSD
          (SSLFCONF SUBSCALE)
          NIL
          (:DEFAULT-INITARGS
           :NAME-STRING
           "ssscsmsmsd"
           :LABEL
           "sssc-SelfConf-self control discipline  develop"
           :SCALE-NAME
           "Self-Management Confidence"
           :DESCRIPTION
           "Confidence/skills in self control, self-discipline, and self-development. Good decision-making and planning, time-management in all areas of self-development/change, finances, self-discipline, health, etc. (7 items)."
           :SCALE-GROUP-NAME
           "sslfconf"
           :SCALE-QUESTIONS
           '(SLFDECMA
             SLFTIMEM
             SLFSELFM
             SLFACHAN
             SLFMANA6
             SLFHEAL3
             SLFINDEP)
           :MEAN-SCORE
           ".657"
           :STANDARD-DEVIATION
           ".191"
           :SAMPLE-N
           3225
           :NUM-QUESTIONS
           7
           :HELP-PRIORITY
           1
           :HELP-INFO
           "The self-management skills taught in the link below have been shown to be keys to both success and happiness because they help you get control of your life and keep your actions more in line with your values and goals."
           :HELP-LINKS
           '("time_management.htm" "wsps.htm")
           :PARENTS
           '(SSLFCONF SUBSCALE)))

(DEFCLASS SSSCINTERP
          (SSLFCONF SUBSCALE)
          NIL
          (:DEFAULT-INITARGS
           :NAME-STRING
           "ssscinterp"
           :LABEL
           "sssc-SelfConf-Career interpersonal skills"
           :SCALE-NAME
           "Career-Related Interpersonal Confidence"
           :DESCRIPTION
           "Confidence/skills in career-related interpersonal skills.  Managing others, persuasion, meeting people, public speaking, and adaptability (7 items). "
           :SCALE-GROUP-NAME
           "sslfconf"
           :SCALE-QUESTIONS
           '(SLFADAPT
             SLFMEETP
             SLFPERSU
             SLFMANA7
             SLFBUSAN
             SLFSPEAK
             SLFJOBSE)
           :MEAN-SCORE
           ".657"
           :STANDARD-DEVIATION
           ".188"
           :SAMPLE-N
           3225
           :NUM-QUESTIONS
           7
           :HELP-PRIORITY
           1
           :HELP-INFO
           "Improving basic interpersonal skills can improve almost all aspects of peoples' lives--from career to personal to romantic."
           :HELP-LINKS
           '("assertion_training.htm"
             "developing_intimacy.htm"
             "conversational_skills.htm")
           :PARENTS
           '(SSLFCONF SUBSCALE)))

(DEFCLASS SSSCALLHELP
          (SSLFCONF SUBSCALE)
          NIL
          (:DEFAULT-INITARGS
           :NAME-STRING
           "ssscallhelp"
           :LABEL
           "sssc-SelfConf-Helping skills"
           :SCALE-NAME
           "Helping Skills Confidence"
           :DESCRIPTION
           "Confidence/skills for counseling or teaching others.  Knowledge of philosophy, religion, and social science and helping, counseling, teaching interpersonal skills. (6 Items)"
           :SCALE-GROUP-NAME
           "sslfconf"
           :SCALE-QUESTIONS
           '(SLFSOCSC SLFPHILR SLFLIBAR SLFEDUCH SLFLISTE SLFHELPS)
           :MEAN-SCORE
           ".740"
           :STANDARD-DEVIATION
           ".168"
           :SAMPLE-N
           3225
           :NUM-QUESTIONS
           6
           :HELP-INFO
           "Helping skills are not only vital for people counseling and teaching others (in professional or personal situations), but can be very useful for other types of professional and personal relationships--especially chose and romantic relationships."
           :HELP-LINKS
           '("c14-lisn.htm" "h23explo.htm")
           :PARENTS
           '(SSLFCONF SUBSCALE)))

(DEFCLASS SSSCSCIENCE
          (SSLFCONF SUBSCALE)
          NIL
          (:DEFAULT-INITARGS
           :NAME-STRING
           "ssscscience"
           :LABEL
           "sssc-SelfConf-Natural science"
           :SCALE-NAME
           "Natural Science Confidence"
           :DESCRIPTION
           "Confidence/skills in natural science knowledge and reasoning including physics, chemistry, biology, and engineering (4 items)."
           :SCALE-GROUP-NAME
           "sslfconf"
           :SCALE-QUESTIONS
           '(SLFBIOSC SLFNATSC SLFHEAL2 SLFENGIN)
           :MEAN-SCORE
           ".583"
           :STANDARD-DEVIATION
           ".201"
           :SAMPLE-N
           3225
           :NUM-QUESTIONS
           4
           :HELP-INFO
           "Knowledge of natural sciences is useful in many everday situations from understanding how your car or computer works to understanding your health and our environment."
           :HELP-LINKS
           'NIL
           :PARENTS
           '(SSLFCONF SUBSCALE)))

(DEFCLASS SSSCARTCRE
          (SSLFCONF SUBSCALE)
          NIL
          (:DEFAULT-INITARGS
           :NAME-STRING
           "ssscartcre"
           :LABEL
           "sssc-SelfConf-Art  creative"
           :SCALE-NAME
           "Creative and Artistic Confidence"
           :DESCRIPTION
           "Fine and performing arts, and creative thinking (3 items)"
           :SCALE-GROUP-NAME
           "sslfconf"
           :SCALE-QUESTIONS
           '(SLFCREAT SLFPERFA SLFFINEA)
           :MEAN-SCORE
           ".659"
           :STANDARD-DEVIATION
           ".204"
           :SAMPLE-N
           3225
           :NUM-QUESTIONS
           3
           :HELP-INFO
           "Being creative means looking at problems from new perspectives and finding new solutions.  This general skill can help generate success in almost all life endeavors.  For non-professionals knowledge and appreiciation of art can make life and entertainment much more interesting and fun."
           :HELP-LINKS
           'NIL
           :PARENTS
           '(SSLFCONF SUBSCALE)))

(DEFCLASS SSSMTIMEMANGOALSET
          (SSELFMAN SUBSCALE)
          NIL
          (:DEFAULT-INITARGS
           :NAME-STRING
           "sssmTimeManGoalSet"
           :LABEL
           "sssm-Time management-OPATSM"
           :SCALE-NAME
           "Self-Management Skills and Habits"
           :DESCRIPTION
           "Using a good self-management system. Time management/goal-setting/decision-making  Frequent sessions prioritizing goals and writing daily task lists for each life area. Breaking large projects into organized, scheduled tasks. (5 items)"
           :SCALE-GROUP-NAME
           "sselfman"
           :SCALE-QUESTIONS
           '(SMTFUTUR SMTPTODO SMTGOALS SMTSCHD SMT2DTOD)
           :MEAN-SCORE
           ".505"
           :STANDARD-DEVIATION
           ".220"
           :SAMPLE-N
           2127
           :NUM-QUESTIONS
           5
           :HELP-INFO
           "Having a proven system for setting goals and priorities, planning, and managing large and daily tasks is a key component of success and happiness. (See research above). The link below describes the elements of one proven self-management system."
           :HELP-LINKS
           '("h9patsm.htm")
           :PARENTS
           '(SSELFMAN SUBSCALE)))

(DEFCLASS SSSMACCOMPLORUSH
          (SSELFMAN SUBSCALE)
          NIL
          (:DEFAULT-INITARGS
           :NAME-STRING
           "sssmAccompLoRush"
           :LABEL
           "sssm-Busy,accomplishment,efficient"
           :SCALE-NAME
           "Efficient Accomplishement"
           :DESCRIPTION
           "Accomplishment: busy, efficient task completion without feeling too rushed or pressured.  (2 items)"
           :SCALE-GROUP-NAME
           "sselfman"
           :SCALE-QUESTIONS
           '(SMTBUSY SMTACMPL)
           :MEAN-SCORE
           ".494"
           :STANDARD-DEVIATION
           ".222"
           :SAMPLE-N
           2127
           :NUM-QUESTIONS
           2
           :HELP-PRIORITY
           1
           :HELP-INFO
           "Efficient task accomplishment is often one outcome of a good time-management system.  However, it also comes from looking at all tasks--especially repetitive tasks from a system point-of-view to find new efficiencies that can save time, money, and heartache. Not feeling overwhelmed or pressured comes partly from being well-organized and partly from dealing with underlying fears related to feared possible outcomes of not adequately completing the tasks."
           :HELP-LINKS
           '("h9patsm.htm" "possi.htm" "h23explo.htm")
           :PARENTS
           '(SSELFMAN SUBSCALE)))

(DEFCLASS SSSMSELFDEVEL
          (SSELFMAN SUBSCALE)
          NIL
          (:DEFAULT-INITARGS
           :NAME-STRING
           "sssmSelfDevel"
           :LABEL
           "sssm-Self-develop, take advice,habit chng"
           :SCALE-NAME
           "Self-development Skills and Habits"
           :DESCRIPTION
           "Self-development habits and skills including taking advice and self-change program(s).(3 Items)"
           :SCALE-GROUP-NAME
           "sselfman"
           :SCALE-QUESTIONS
           '(SMTSDEVE SMTGHELP SMTHABCH)
           :MEAN-SCORE
           ".647"
           :STANDARD-DEVIATION
           ".214"
           :SAMPLE-N
           1936
           :NUM-QUESTIONS
           3
           :HELP-PRIORITY
           1
           :HELP-INFO
           "Completing SHAQ is a good beginning to self-development.  It gives you feedback on many clearly defined values, beliefs, skills, and habits that you can think about and decide if you want to make changes.  The help-links provided give you one place to start for each."
           :HELP-LINKS
           '("index.html" "self-helpLinks.htm")
           :PARENTS
           '(SSELFMAN SUBSCALE)))

(DEFCLASS SSSMHEALTHHABS
          (SSELFMAN SUBSCALE)
          NIL
          (:DEFAULT-INITARGS
           :NAME-STRING
           "sssmHealthHabs"
           :LABEL
           "sssmHealthHabits"
           :SCALE-NAME
           "Health Habits"
           :DESCRIPTION
           "Health habits. Research has shown that your nutritional, exercise, sleep, substance abuse, safety and risk-taking habits, and stress management can have very large effects upon your health and life span. (3 Items)"
           :SCALE-GROUP-NAME
           "sselfman"
           :SCALE-QUESTIONS
           '(SMTEXERC SMTEATH SMTSLEEP)
           :MEAN-SCORE
           ".558"
           :STANDARD-DEVIATION
           ".176"
           :SAMPLE-N
           2127
           :NUM-QUESTIONS
           3
           :HELP-PRIORITY
           1
           :HELP-INFO
           "Learning and practicing good health habits is one of the simplest and best ways to have a long, healthy, and happy life."
           :HELP-LINKS
           '("health tips.htm"
             "weight_control.htm"
             "substance_abuse.htm")
           :PARENTS
           '(SSELFMAN SUBSCALE)))

(DEFCLASS SSCPPROBSOLV
          (SEMOTCOP SUBSCALE)
          NIL
          (:DEFAULT-INITARGS
           :NAME-STRING
           "sscpProbSolv"
           :LABEL
           "sscp-Prob solve talk,selfexpl,expect"
           :SCALE-NAME
           "Emotional Coping Using Problem-Solving"
           :DESCRIPTION
           "When upset, face problem now and use positive problem-solving to overcome it. Face, explore, and discuss problems. (4 items)"
           :SCALE-GROUP-NAME
           "semotcop"
           :SCALE-QUESTIONS
           '(COPPSOLV COPTALKS COPEXPEC COPSELFE)
           :MEAN-SCORE
           ".599"
           :STANDARD-DEVIATION
           ".182"
           :SAMPLE-N
           3273
           :NUM-QUESTIONS
           4
           :HELP-PRIORITY
           1
           :HELP-INFO
           "Learn to focus on rising above the problem and current feelings and using good problem-solving methods to accept the reality of the situation and solve the problem with some sort of a solution that helps in the immediate situation. Also, begin to think about long-term solutions when you have time. When you start to get dysfunctional thoughts, remind yourself of their distructive consequences and re-focus on positive thoughts, solutions, and actions."
           :HELP-LINKS
           '("h8hf2.htm" "wsps.htm" "concentration.htm")
           :PARENTS
           '(SEMOTCOP SUBSCALE)))

(DEFCLASS SSCPPOSTHOUGHTS
          (SEMOTCOP SUBSCALE)
          NIL
          (:DEFAULT-INITARGS
           :NAME-STRING
           "sscpPosThoughts"
           :LABEL
           "sscp-Pos thoughts-phil, pep talk"
           :SCALE-NAME
           "Emotional Coping Using Positive Thoughts"
           :DESCRIPTION
           "When upset, think positive thoughts.  Positive; not critical, punitive, or negative thoughts in response to negative emotions. (2 items)"
           :SCALE-GROUP-NAME
           "semotcop"
           :SCALE-QUESTIONS
           '(COPNEGTH COPPEPTA)
           :MEAN-SCORE
           ".477"
           :STANDARD-DEVIATION
           ".204"
           :SAMPLE-N
           3273
           :NUM-QUESTIONS
           2
           :HELP-PRIORITY
           1
           :HELP-INFO
           "Develop a positive belief system/philosophy that you can use to generate positive thoughts when you need them. Practice viewing the problem/situation from a more positive perspective, help others do the same, confront negative thoughts, and schedule them for a later time to deal with in depth when you are out of the situation. Give yourself pep talks, seek input only from people who can really help--avoid those who interfere."
           :HELP-LINKS
           '("h8hf2.htm")
           :PARENTS
           '(SEMOTCOP SUBSCALE)))

(DEFCLASS SSCPPOSACTS
          (SEMOTCOP SUBSCALE)
          NIL
          (:DEFAULT-INITARGS
           :NAME-STRING
           "sscpPosActs"
           :LABEL
           "sscp-Pos acts,fun,exercise"
           :SCALE-NAME
           "Emotional Coping Using Positive Activities"
           :DESCRIPTION
           "When upset, do positive, constructive activities such as complete problem-related or other involving tasks, have fun, exercise, etc. (2 items)"
           :SCALE-GROUP-NAME
           "semotcop"
           :SCALE-QUESTIONS
           '(COPFUN COPPE)
           :MEAN-SCORE
           ".457"
           :STANDARD-DEVIATION
           ".202"
           :SAMPLE-N
           3273
           :NUM-QUESTIONS
           2
           :HELP-PRIORITY
           1
           :HELP-INFO
           "Vigorous positive mental and physical activity reduces negative emotions and increases positive emotions.  Doing helpful tasks, involving, vigorous physical activity and absorging positive mental activity are very good to do along with problem-solving."
           :HELP-LINKS
           '("h87focus.htm" "h86optim.htm")
           :PARENTS
           '(SEMOTCOP SUBSCALE)))

(DEFCLASS SSCPNOBLAMEANGERWDRAW
          (SEMOTCOP SUBSCALE)
          NIL
          (:DEFAULT-INITARGS
           :NAME-STRING
           "sscpNoBlameAngerWDraw"
           :LABEL
           "sscp-Not anger,blame,withdraw"
           :SCALE-NAME
           "Emotional Coping Without Blaming"
           :DESCRIPTION
           "When upset, don't get angry, too critical, or blame self or others or withdraw. (5 items)"
           :SCALE-GROUP-NAME
           "semotcop"
           :SCALE-QUESTIONS
           '(COPEMOTA COPBLAME COPWDRW COPNEGPH COPSELFB)
           :MEAN-SCORE
           ".580"
           :STANDARD-DEVIATION
           ".202"
           :SAMPLE-N
           3273
           :NUM-QUESTIONS
           5
           :HELP-PRIORITY
           1
           :HELP-INFO
           "Anger and aggression hurts you more than anyone.  It undermines relationships and one's love of oneself. Hositility is trying to change the unchangeable. You must peacefully accept the past or inevitable (or even its possibility) no matter how bad it is if you are to get control of your emotions. If you get frustrated or angry, find positive ways of channeling the anger. Vigorous activity can be a therapeutic part of the program."
           :HELP-LINKS
           '("h8hf2.htm" "h86optim.htm" "b-anger.htm")
           :PARENTS
           '(SEMOTCOP SUBSCALE)))

(DEFCLASS SSCPNOTSMOKDRUGMED
          (SEMOTCOP SUBSCALE)
          NIL
          (:DEFAULT-INITARGS
           :NAME-STRING
           "sscpNotSmokDrugMed"
           :LABEL
           "sscp-Not smoke,drugs"
           :SCALE-NAME
           "Emotional Coping Without Substance Abuse"
           :DESCRIPTION
           "When upset, don't smoke, drink alcohol, or take drugs. (2 items)"
           :SCALE-GROUP-NAME
           "semotcop"
           :SCALE-QUESTIONS
           '(COPSMOKE COPDRUG)
           :MEAN-SCORE
           ".791"
           :STANDARD-DEVIATION
           ".262"
           :SAMPLE-N
           3273
           :NUM-QUESTIONS
           2
           :HELP-PRIORITY
           1
           :HELP-INFO
           "Eating, smoking, and taking drugs to relieve stress reinforces the addictive habit because they often immediately reduce stress!  However, it also strengthens the addictive habit and does nothing to solve any of the problems causing the stress. Try the help-links."
           :HELP-LINKS
           '("smoking.htm" "substance_abuse.htm")
           :PARENTS
           '(SEMOTCOP SUBSCALE)))

(DEFCLASS SSCPNOTEAT
          (SEMOTCOP SUBSCALE)
          NIL
          (:DEFAULT-INITARGS
           :NAME-STRING
           "sscpNotEat"
           :LABEL
           "sscp-Not eat 1"
           :SCALE-NAME
           "Emotional Coping Without Eating"
           :DESCRIPTION
           "When upset, don't eat to feel better. (1 item)"
           :SCALE-GROUP-NAME
           "semotcop"
           :SCALE-QUESTIONS
           '(COPCOPEA)
           :MEAN-SCORE
           ".665"
           :STANDARD-DEVIATION
           ".284"
           :SAMPLE-N
           3273
           :NUM-QUESTIONS
           1
           :HELP-PRIORITY
           1
           :HELP-INFO
           "Eating that reduces stress reinforces eating and may contribute significantly to being overweight."
           :HELP-LINKS
           '("weight_control.htm")
           :PARENTS
           '(SEMOTCOP SUBSCALE)))

(DEFCLASS HAPSDMEANSPIRITSS
          (SEHAPPY SUBSCALE)
          NIL
          (:DEFAULT-INITARGS
           :NAME-STRING
           "hapSDMeanSpiritSS"
           :LABEL
           "ssh-SelfDevel, meaning/spiritualHap"
           :SCALE-NAME
           "Spiritual and Mental Life Happiness"
           :DESCRIPTION
           "Happiness in your self-development, spiritual life, and life meaning"
           :SCALE-GROUP-NAME
           "sehappy"
           :SCALE-QUESTIONS
           '(HAPSELFD HAPSPIRI)
           :MEAN-SCORE
           0.6132
           :STANDARD-DEVIATION
           0.25
           :SAMPLE-N
           3185
           :NUM-QUESTIONS
           2
           :HELP-PRIORITY
           1
           :HELP-INFO
           "Happiness is the result of other factors. A strong philosophy and spiritual life and self-development are key areas for overall happiness. Examine all results on the HQ scales."
           :HELP-LINKS
           '("life_goals_and_meaning.htm" "h3hiself.htm")
           :PARENTS
           '(SEHAPPY SUBSCALE)))

(DEFCLASS HAPCAREEREXSS
          (SEHAPPY SUBSCALE)
          NIL
          (:DEFAULT-INITARGS
           :NAME-STRING
           "hapCareerExSS"
           :LABEL
           "ssh-Career happiness"
           :SCALE-NAME
           "Career Happiness"
           :DESCRIPTION
           "Happiness in your career, work, or school"
           :SCALE-GROUP-NAME
           "sehappy"
           :SCALE-QUESTIONS
           '(HAPCARFU HAPCARNW)
           :MEAN-SCORE
           0.61
           :STANDARD-DEVIATION
           0.25
           :SAMPLE-N
           3185
           :NUM-QUESTIONS
           2
           :HELP-PRIORITY
           1
           :HELP-INFO
           "Happiness is the result of other factors. Examine HQ scales for ways you can improve your happiness."
           :HELP-LINKS
           '("index.html" "self-helpLinks.htm" "c15-carp.htm")
           :PARENTS
           '(SEHAPPY SUBSCALE)))

(DEFCLASS HAPRECPESS
          (SEHAPPY SUBSCALE)
          NIL
          (:DEFAULT-INITARGS
           :NAME-STRING
           "hapRecPESS"
           :LABEL
           "ssh-Recreation PhysAct happiness"
           :SCALE-NAME
           "Recreation and Physical Activity Happiness"
           :DESCRIPTION
           "Happiness in your recreation and physical activity."
           :SCALE-GROUP-NAME
           "sehappy"
           :SCALE-QUESTIONS
           '(HAPPE HAPRECRE)
           :MEAN-SCORE
           0.559
           :STANDARD-DEVIATION
           0.248
           :SAMPLE-N
           3185
           :NUM-QUESTIONS
           2
           :HELP-PRIORITY
           1
           :HELP-INFO
           "Happiness is the result of other factors. Examine your results on the HQ scales for ways you can improve your happiness."
           :HELP-LINKS
           '("index.html" "self-helpLinks.htm" "c15-carp.htm")
           :PARENTS
           '(SEHAPPY SUBSCALE)))

(DEFCLASS HAPAREASS
          (SEHAPPY SUBSCALE)
          NIL
          (:DEFAULT-INITARGS
           :NAME-STRING
           "hapAreaSS"
           :LABEL
           "ssh-LivingArea happiness"
           :SCALE-NAME
           "Living Area Happiness"
           :DESCRIPTION
           "Happiness living in your area."
           :SCALE-GROUP-NAME
           "sehappy"
           :SCALE-QUESTIONS
           '(HAPAREA)
           :MEAN-SCORE
           0.6
           :STANDARD-DEVIATION
           0.25
           :SAMPLE-N
           3185
           :NUM-QUESTIONS
           1
           :HELP-PRIORITY
           1
           :HELP-INFO
           "Happiness is the result of other factors. Examine your results on the HQ scales for ways you can improve your happiness."
           :HELP-LINKS
           '("index.html" "self-helpLinks.htm" "c15-carp.htm")
           :PARENTS
           '(SEHAPPY SUBSCALE)))

(DEFCLASS HAPFAMSS
          (SEHAPPY SUBSCALE)
          NIL
          (:DEFAULT-INITARGS
           :NAME-STRING
           "hapFamSS"
           :LABEL
           "ssh-Family happiness"
           :SCALE-NAME
           "Family Happiness"
           :DESCRIPTION
           "Happiness in your family life."
           :SCALE-GROUP-NAME
           "sehappy"
           :SCALE-QUESTIONS
           '(HAPFAMIL)
           :MEAN-SCORE
           0.64
           :STANDARD-DEVIATION
           0.272
           :SAMPLE-N
           3185
           :NUM-QUESTIONS
           1
           :HELP-PRIORITY
           1
           :HELP-INFO
           "Happiness is the result of other factors. Examine your results on the HQ scales for ways you can improve your happiness."
           :HELP-LINKS
           '("index.html" "self-helpLinks.htm" "c15-carp.htm")
           :PARENTS
           '(SEHAPPY SUBSCALE)))

(DEFCLASS HAPROMSS
          (SEHAPPY SUBSCALE)
          NIL
          (:DEFAULT-INITARGS
           :NAME-STRING
           "hapRomSS"
           :LABEL
           "ssh-Romantic happiness"
           :SCALE-NAME
           "Romantic Happiness"
           :DESCRIPTION
           "Happiness in your romantic life."
           :SCALE-GROUP-NAME
           "sehappy"
           :SCALE-QUESTIONS
           '(HAPSEXRE)
           :MEAN-SCORE
           0.461
           :STANDARD-DEVIATION
           0.303
           :SAMPLE-N
           3185
           :NUM-QUESTIONS
           1
           :HELP-PRIORITY
           1
           :HELP-INFO
           "Happiness is the result of other factors. Examine your results on the HQ scales for ways you can improve your happiness-especially the ones related to interpersonal relationships."
           :HELP-LINKS
           '("conversational_skills.htm" "developing_intimacy.htm")
           :PARENTS
           '(SEHAPPY SUBSCALE)))

(DEFCLASS HAPFRIENDSSS
          (SEHAPPY SUBSCALE)
          NIL
          (:DEFAULT-INITARGS
           :NAME-STRING
           "hapFriendsSS"
           :LABEL
           "ssh-Friends happiness"
           :SCALE-NAME
           "Friendship Happiness"
           :DESCRIPTION
           "Happiness in your friendships"
           :SCALE-GROUP-NAME
           "sehappy"
           :SCALE-QUESTIONS
           '(HAPCLFRN HAPFRIEN HAPWKREL)
           :MEAN-SCORE
           0.621
           :STANDARD-DEVIATION
           0.25
           :SAMPLE-N
           3185
           :NUM-QUESTIONS
           3
           :HELP-PRIORITY
           1
           :HELP-INFO
           "Happiness is the result of other factors. Examine your results on the HQ scales for ways you can improve your happiness-especially the ones related to interpersonal relationships."
           :HELP-LINKS
           '("conversational_skills.htm"
             "developing_intimacy.htm"
             "overcoming_loneliness.htm")
           :PARENTS
           '(SEHAPPY SUBSCALE)))

(DEFCLASS HAPFUTURESS
          (SEHAPPY SUBSCALE)
          NIL
          (:DEFAULT-INITARGS
           :NAME-STRING
           "hapFutureSS"
           :LABEL
           "ssh-Expected future happiness"
           :SCALE-NAME
           "Expected Future Happiness"
           :DESCRIPTION
           "Overall expectation of future happiness. (1 item)"
           :SCALE-GROUP-NAME
           "sehappy"
           :SCALE-QUESTIONS
           '(HAPEXPEC)
           :MEAN-SCORE
           0.757
           :STANDARD-DEVIATION
           0.235
           :SAMPLE-N
           3185
           :NUM-QUESTIONS
           1
           :HELP-PRIORITY
           1
           :HELP-INFO
           "Happiness is the result of other factors. Examine your results on the HQ scales for ways you can improve your happiness."
           :HELP-LINKS
           '("index.html" "self-helpLinks.htm")
           :PARENTS
           '(SEHAPPY SUBSCALE)))

(DEFCLASS HAPPASTSS
          (SEHAPPY SUBSCALE)
          NIL
          (:DEFAULT-INITARGS
           :NAME-STRING
           "hapPastSS"
           :LABEL
           "ssh-Happy to 3yrs ago"
           :SCALE-NAME
           "Happiness to 3 Years Ago"
           :DESCRIPTION
           "Happiness up to 3 years ago. (1 item)"
           :SCALE-GROUP-NAME
           "sehappy"
           :SCALE-QUESTIONS
           '(HAPLIFE)
           :MEAN-SCORE
           0.609
           :STANDARD-DEVIATION
           0.261
           :SAMPLE-N
           3185
           :NUM-QUESTIONS
           1
           :HELP-PRIORITY
           1
           :HELP-INFO
           "Happiness is the result of other factors. Examine your results on the HQ scales for ways you can improve your happiness."
           :HELP-LINKS
           '("index.html" "self-helpLinks.htm")
           :PARENTS
           '(SEHAPPY SUBSCALE)))

(DEFCLASS HAPRECENTSS
          (SEHAPPY SUBSCALE)
          NIL
          (:DEFAULT-INITARGS
           :NAME-STRING
           "hapRecentSS"
           :LABEL
           "ssh-Happy recently"
           :SCALE-NAME
           "Past 3 Years Happiness"
           :DESCRIPTION
           "Happiness in the past 3 years.  (1 item)"
           :SCALE-GROUP-NAME
           "sehappy"
           :SCALE-QUESTIONS
           '(HAPYEAR HAP3YEAR)
           :MEAN-SCORE
           0.558
           :STANDARD-DEVIATION
           0.246
           :SAMPLE-N
           3185
           :NUM-QUESTIONS
           2
           :HELP-PRIORITY
           1
           :HELP-INFO
           "Happiness is the result of other factors. Examine your results on the HQ scales for ways you can improve your happiness. (2 items)"
           :HELP-LINKS
           '("index.html" "self-helpLinks.htm")
           :PARENTS
           '(SEHAPPY SUBSCALE)))

(DEFCLASS SSRECLOSEFRIENDS
          (SRPEOPLE SUBSCALE)
          NIL
          (:DEFAULT-INITARGS
           :NAME-STRING
           "ssreCloseFriends"
           :LABEL
           "ssre-CloseFriends"
           :SCALE-NAME
           "Close Friends"
           :DESCRIPTION
           "Relationship Outcome--Friendship Closeness. Quality of close friends. (2 items)"
           :SCALE-GROUP-NAME
           "srpeople"
           :SCALE-QUESTIONS
           '(RPENETW RPECLFRN)
           :MEAN-SCORE
           0.215
           :STANDARD-DEVIATION
           0.136
           :SAMPLE-N
           2673
           :NUM-QUESTIONS
           0
           :HELP-PRIORITY
           1
           :HELP-INFO
           "Close relationships are the result of other factors. Examine your HQ factors--especially interpersonal scales--for areas to improve.  Good listening skills, openness, honesty, trust, being able to resolve conflicts, and being a dependable friend are important for any close relationship."
           :HELP-LINKS
           '("conversational_skills.htm" "developing_intimacy.htm")
           :PARENTS
           '(SRPEOPLE SUBSCALE)))

(DEFCLASS SSREROMRELSUC
          (SRPEOPLE SUBSCALE)
          NIL
          (:DEFAULT-INITARGS
           :NAME-STRING
           "ssreRomRelSuc"
           :LABEL
           "ssre-RomanticRelationshipSuccess"
           :SCALE-NAME
           "Romantic Relationships"
           :DESCRIPTION
           "Success in romantic relationships"
           :SCALE-GROUP-NAME
           "srpeople"
           :SCALE-QUESTIONS
           '(RPEHMARR RPECOMMI)
           :MEAN-SCORE
           0.63
           :STANDARD-DEVIATION
           0.311
           :SAMPLE-N
           2673
           :NUM-QUESTIONS
           0
           :HELP-PRIORITY
           1
           :HELP-INFO
           "Good relationships are the result of other factors. Examine your HQ factors--especially interpersonal scales. See close relationship help comments."
           :HELP-LINKS
           '("conversational_skills.htm"
             "overcoming_loneliness.htm"
             "c-rejct.htm")
           :PARENTS
           '(SRPEOPLE SUBSCALE)))

(DEFCLASS SSRENUMFRIENDS
          (SRPEOPLE SUBSCALE)
          NIL
          (:DEFAULT-INITARGS
           :NAME-STRING
           "ssreNumFriends"
           :LABEL
           "ssre-NumFriends"
           :SCALE-NAME
           "Number of Friends"
           :DESCRIPTION
           "Relationship Outcome--Number of Friends.(2 items)"
           :SCALE-GROUP-NAME
           "srpeople"
           :SCALE-QUESTIONS
           '(RPENUMFR RPENUMCL)
           :MEAN-SCORE
           0.305
           :STANDARD-DEVIATION
           0.204
           :SAMPLE-N
           2673
           :NUM-QUESTIONS
           0
           :HELP-PRIORITY
           0
           :HELP-INFO
           "Do you have enough good friends and associates? If not, or if you feel shy or anxious about meeting new people, you can improve social skills and your confidence by trying some of the tips in the help links."
           :HELP-LINKS
           '("conversational_skills.htm"
             "overcoming_loneliness.htm"
             "c-rejct.htm")
           :PARENTS
           '(SRPEOPLE SUBSCALE)))

(DEFCLASS SSREHAPSUCFRS
          (SRPEOPLE SUBSCALE)
          NIL
          (:DEFAULT-INITARGS
           :NAME-STRING
           "ssreHapSucFrs"
           :LABEL
           "ssre-HappySuccessfulFriends"
           :SCALE-NAME
           "Happy, Successful Friends"
           :DESCRIPTION
           "Relationship Outcome--Happy, Successful Friends. (1 item)"
           :SCALE-GROUP-NAME
           "srpeople"
           :SCALE-QUESTIONS
           '(RPEHMARR RPECOMMI)
           :MEAN-SCORE
           0.623
           :STANDARD-DEVIATION
           0.232
           :SAMPLE-N
           2673
           :NUM-QUESTIONS
           1
           :HELP-PRIORITY
           1
           :HELP-INFO
           "Having happy, successful friends can have a positive influence on you and can also have other benefits."
           :HELP-LINKS
           '("conversational_skills.htm"
             "overcoming_loneliness.htm"
             "c-rejct.htm")
           :PARENTS
           '(SRPEOPLE SUBSCALE)))

(DEFCLASS SSDELODEPSYMP
          (SRDEPRES SUBSCALE)
          NIL
          (:DEFAULT-INITARGS
           :NAME-STRING
           "ssdeLoDepSymp"
           :LABEL
           "ssde-LoDepressionSymptoms"
           :SCALE-NAME
           "Low Depression Symptoms"
           :DESCRIPTION
           "Depression Outcome Subscale-Low clinical depression symptoms"
           :SCALE-GROUP-NAME
           "srdepres"
           :SCALE-QUESTIONS
           '(RDEPFEEL RDEPTHOU RDEPDYSS RDEPMAJS)
           :MEAN-SCORE
           0.515
           :STANDARD-DEVIATION
           0.255
           :SAMPLE-N
           2819
           :NUM-QUESTIONS
           4
           :HELP-PRIORITY
           1
           :HELP-INFO
           "See Depression main scale help information and help-links."
           :HELP-LINKS
           '("depression.htm" "my-peek.htm" "h85cdepr.htm")
           :PARENTS
           '(SRDEPRES SUBSCALE)))

(DEFCLASS SSDELODEPTREATS
          (SRDEPRES SUBSCALE)
          NIL
          (:DEFAULT-INITARGS
           :NAME-STRING
           "ssdeLoDepTreats"
           :LABEL
           "ssde-LoDepressionTreatments"
           :SCALE-NAME
           "Low Depression Treatments"
           :DESCRIPTION
           "Depression Outcome Subscale-Low clinical depression therapy and treatments"
           :SCALE-GROUP-NAME
           "srdepres"
           :SCALE-QUESTIONS
           '(RDEPMEDS RDEPTHER)
           :MEAN-SCORE
           0.767
           :STANDARD-DEVIATION
           0.286
           :SAMPLE-N
           2819
           :NUM-QUESTIONS
           2
           :HELP-PRIORITY
           1
           :HELP-INFO
           "See Depression main scale help information and help-links."
           :HELP-LINKS
           '("depression.htm" "my-peek.htm" "h85cdepr.htm")
           :PARENTS
           '(SRDEPRES SUBSCALE)))

(DEFCLASS SSAXLOPERFGENANX
          (SRANXIET SUBSCALE)
          NIL
          (:DEFAULT-INITARGS
           :NAME-STRING
           "ssaxLoPerfGenAnx"
           :LABEL
           "ssax-LoPerformanceAndGeneralAnxiety"
           :SCALE-NAME
           "Low General or Performance Anxiety"
           :DESCRIPTION
           "Low generaly anxiety or anxiety about performance"
           :SCALE-GROUP-NAME
           "sranxiet"
           :SCALE-QUESTIONS
           '(RANXPERF RANXALLT RANXPSTD RANXSOCI)
           :MEAN-SCORE
           0.573
           :STANDARD-DEVIATION
           0.237
           :SAMPLE-N
           3298
           :NUM-QUESTIONS
           4
           :HELP-PRIORITY
           1
           :HELP-INFO
           "See Anxiety main scale help information and help-links."
           :HELP-LINKS
           '("anxiety.htm" "my-peek.htm" "h8hf2.htm")
           :PARENTS
           '(SRANXIET SUBSCALE)))

(DEFCLASS SSAXLOWFEAROCD
          (SRANXIET SUBSCALE)
          NIL
          (:DEFAULT-INITARGS
           :NAME-STRING
           "ssaxLowFearOCD"
           :LABEL
           "ssax-LoFearsAndOCDsymptoms"
           :SCALE-NAME
           "Low Fears, Phobias, or OCD"
           :DESCRIPTION
           "Low fears, phobias, and obsessive-compulsive disorder symptoms"
           :SCALE-GROUP-NAME
           "sranxiet"
           :SCALE-QUESTIONS
           '(RANXOCD RANXPHOB RANXPANI)
           :MEAN-SCORE
           0.774
           :STANDARD-DEVIATION
           0.211
           :SAMPLE-N
           3298
           :NUM-QUESTIONS
           3
           :HELP-PRIORITY
           1
           :HELP-INFO
           "Basic fears OCD symptoms can usually be greatly reduced with good cognitive therapy and other methods you can learn. See the helplinks for a start."
           :HELP-LINKS
           '("anxiety.htm" "my-peek.htm" "h8hf2.htm")
           :PARENTS
           '(SRANXIET SUBSCALE)))

(DEFCLASS SSAXLOANXTREATS
          (SRANXIET SUBSCALE)
          NIL
          (:DEFAULT-INITARGS
           :NAME-STRING
           "ssaxLoAnxTreats"
           :LABEL
           "ssax-LoAnxietyTreatments"
           :SCALE-NAME
           "Low Anxiety Treatments"
           :DESCRIPTION
           "Low amount of anxiety disorder therapy or other treatments"
           :SCALE-GROUP-NAME
           "sranxiet"
           :SCALE-QUESTIONS
           '(RANXTHER RANXMEDS)
           :MEAN-SCORE
           0.832
           :STANDARD-DEVIATION
           0.259
           :SAMPLE-N
           3325
           :NUM-QUESTIONS
           0
           :HELP-PRIORITY
           1
           :HELP-INFO
           "See Anxiety main scale help information and help-links."
           :HELP-LINKS
           '("anxiety.htm" "my-peek.htm" "h8hf2.htm")
           :PARENTS
           '(SRANXIET SUBSCALE)))

(DEFCLASS SSHELONEGADDICTHABS
          (SRELHLTH SUBSCALE)
          NIL
          (:DEFAULT-INITARGS
           :NAME-STRING
           "ssheLoNegAddictHabs"
           :LABEL
           "sshe-LoNegAddictHabits"
           :SCALE-NAME
           "Low Addictive Habits"
           :DESCRIPTION
           "Health Outcome Subscale--Low addictive habits (smoking, alcohol, drugs). (3 items)"
           :SCALE-GROUP-NAME
           "srelhlth"
           :SCALE-QUESTIONS
           '(RHLALCOH RHLSMOKE RHLDRUGS)
           :MEAN-SCORE
           0.776
           :STANDARD-DEVIATION
           0.181
           :SAMPLE-N
           3081
           :NUM-QUESTIONS
           3
           :HELP-PRIORITY
           1
           :HELP-INFO
           "Addictive habits such as alcohol or substance abuse, smoking, and overeating can have very serious effect on all areas of happiness and success. If you have an addictive habit, your first concern should be to make eliminating the addictive behavior a top priority in your life.  Joining a 12-step program or getting professional treatment is almost a necessity for alcohol and substance abuse."
           :HELP-LINKS
           '("substance_abuse.htm"
             "smoking.htm"
             "weight_control.htm"
             "h31chang.htm")
           :PARENTS
           '(SRELHLTH SUBSCALE)))

(DEFCLASS SSHELOFREQILL
          (SRELHLTH SUBSCALE)
          NIL
          (:DEFAULT-INITARGS
           :NAME-STRING
           "ssheLoFreqIll"
           :LABEL
           "ssheLoFreqIll"
           :SCALE-NAME
           "Low Illness Frequency"
           :DESCRIPTION
           "Health Outcomes Subscale Low Frequency of Illness. (1 item)"
           :SCALE-GROUP-NAME
           "srelhlth"
           :SCALE-QUESTIONS
           '(RHLFREQI)
           :MEAN-SCORE
           0.659
           :STANDARD-DEVIATION
           0.245
           :SAMPLE-N
           3173
           :NUM-QUESTIONS
           1
           :HELP-PRIORITY
           1
           :HELP-INFO
           "Your health is perhaps your most precious resource.  Simple differences in people's daily health habits add together in time to create many years difference in health and longevity. "
           :HELP-LINKS
           '("health tips.htm")
           :PARENTS
           '(SRELHLTH SUBSCALE)))

(DEFCLASS SSHEPELOWEIGHT
          (SRELHLTH SUBSCALE)
          NIL
          (:DEFAULT-INITARGS
           :NAME-STRING
           "sshePELoWeight"
           :LABEL
           "sshePELoWeight"
           :SCALE-NAME
           "Physical Exercise, Low Weight"
           :DESCRIPTION
           "Health Outcome Subscale--physical excercise, low weight.(2 items)"
           :SCALE-GROUP-NAME
           "srelhlth"
           :SCALE-QUESTIONS
           '(RHLPHYSI RHLWEIGH)
           :MEAN-SCORE
           0.683
           :STANDARD-DEVIATION
           0.272
           :SAMPLE-N
           3173
           :NUM-QUESTIONS
           0
           :HELP-PRIORITY
           1
           :HELP-INFO
           "Adequate physical exercise and health eating habits are major causes of health and longevity."
           :HELP-LINKS
           '(WEIGHT_CONTROL.HTM)
           :PARENTS
           '(SRELHLTH SUBSCALE)))

(DEFCLASS ACAD-LEARNING-MAQS
          (MULTI-ANSWER-SCALE)
          NIL
          (:DEFAULT-INITARGS
           :NAME-STRING
           "Acad-Learning-MAQs"
           :LABEL
           "Acad-Learning MultAnsQuests"
           :SCALE-NAME
           "Academic/Learning Multi-Answer Questions"
           :DESCRIPTION
           "Learning-Academic Success Other Questions"
           :SCALE-QUESTIONS
           '(STUCOLLE STUMAJOR STUSPECI STURESID STGPATRE STURESOURCE)
           :MEAN-SCORE
           NIL
           :STANDARD-DEVIATION
           NIL
           :SAMPLE-N
           NIL
           :NUM-QUESTIONS
           0
           :HELP-PRIORITY
           NIL
           :HELP-INFO
           "Study your answers for insight, and check learning-related helplinks."
           :HELP-LINKS
           NIL
           :PARENTS
           '(MULTI-ANSWER-SCALE)))

(DEFCLASS SUSERFEEDBACK
          (SCALE)
          NIL
          (:DEFAULT-INITARGS
           :NAME-STRING
           "sUserFeedback"
           :LABEL
           "User Feedback"
           :SCALE-NAME
           "sUserFeedback"
           :DESCRIPTION
           "User Feedback--1 item"
           :SCALE-QUESTIONS
           '(USERRATE)
           :MEAN-SCORE
           NIL
           :STANDARD-DEVIATION
           NIL
           :SAMPLE-N
           NIL
           :NUM-QUESTIONS
           1
           :PARENTS
           '(SCALE)))

(DEFCLASS BIO
          (ASSESSMENT PER-SYSTEM)
          NIL
          (:DEFAULT-INITARGS
           :TITLE
           "BIO"
           :SCALE-GROUP-DESCRIPTION
           "Biographical data"
           :PARENTS
           '(ASSESSMENT PER-SYSTEM)))

(DEFCLASS VALUES-THEMES
          (ASSESSMENT PER-SYSTEM)
          NIL
          (:DEFAULT-INITARGS
           :TITLE
           "VALUES-THEMES"
           :SCALE-GROUP-DESCRIPTION
           "The 11 Value-Themes scales are the result of a factor and logical analysis of the original four scales Achievement-Status; Social-Family Related; Internal-Intrinsic; and Non-Dysfunctional Values-Themes. "
           :PARENTS
           '(ASSESSMENT PER-SYSTEM)))

(DEFCLASS BELIEFS
          (ASSESSMENT PER-SYSTEM)
          NIL
          (:DEFAULT-INITARGS
           :TITLE
           "BELIEFS"
           :SCALE-GROUP-DESCRIPTION
           "These scales are almost exactly from items originally presented in the book and were supported by factor analytic study. "
           :PARENTS
           '(ASSESSMENT PER-SYSTEM)))

(DEFCLASS SKILLS-CONFIDENCE
          (ASSESSMENT PER-SYSTEM)
          NIL
          (:DEFAULT-INITARGS
           :TITLE
           "SKILLS-CONFIDENCE"
           :SCALE-GROUP-DESCRIPTION
           "The following scales cover cognitive-behavioral skill areas  important to happiness and life success.  The Self-Confidence scale is largely an overview consisting of items each covering broad skill areas. "
           :PARENTS
           '(ASSESSMENT PER-SYSTEM)))

(DEFCLASS INTERPERSONAL
          (ASSESSMENT PER-SYSTEM)
          NIL
          (:DEFAULT-INITARGS
           :TITLE
           "INTERPERSONAL ATTRIBUTES"
           :SCALE-GROUP-DESCRIPTION
           "These interpersonal scales were part of the Stevens Relationship Questionnaire (SRQ) and have previous validating evidence from an earlier studies.  Most items on these scales were originally taken from materials developed for assertion training and marital relationship workshops, and had been clinically tested on hundreds of consumers."
           :PARENTS
           '(ASSESSMENT PER-SYSTEM)))

(DEFCLASS ACAD-LEARNING
          (ASSESSMENT PER-SYSTEM)
          NIL
          (:DEFAULT-INITARGS
           :TITLE
           "ACADEMIC-LEARNING"
           :SCALE-GROUP-DESCRIPTION
           "Several academic scales were created after factor analysis of the original five scales of Learning and Study Skills,  Learning Skill Areas, Learning Disabilities, Academic Motivation, and Academic Satisfaction.  The following 12 scales and 2 self-report aptitude items are more independent and specific."
           :HELP-LINKS
           '("LEARN.htm")
           :PARENTS
           '(ASSESSMENT PER-SYSTEM)))

(DEFCLASS CAREER-INTEREST
          (ASSESSMENT PER-SYSTEM)
          NIL
          (:DEFAULT-INITARGS
           :TITLE
           "CAREER/MAJOR INTEREST"
           :SCALE-GROUP-DESCRIPTION
           "The college major  interest scales divided common academic major areas into sets using typical groupings in universities, and groupings by the Strong Interest Inventory as a basis."
           :PARENTS
           '(ASSESSMENT PER-SYSTEM)))

(DEFCLASS OUTCOME
          (ASSESSMENT PER-SYSTEM)
          NIL
          (:DEFAULT-INITARGS
           :TITLE
           "OUTCOME"
           :SCALE-GROUP-DESCRIPTION
           " "
           :PARENTS
           '(ASSESSMENT PER-SYSTEM)))

(DEFCLASS BIO-TEXT
          (TEXT-ANSWER-QUESTION SCALE)
          NIL
          (:DEFAULT-INITARGS
           :NAME-STRING
           "BIO-TEXT-Qs"
           :LABEL
           "Biog Text Qs"
           :SCALE-NAME
           "Biographical Text Questions"
           :DESCRIPTION
           "Basic User Information"
           :SCALE-QUESTIONS
           '(FRAME-BIO-INFO FRAME-FAMILY-INFO)
           :NUM-QUESTIONS
           0
           :PARENTS
           '(TEXT-ANSWER-QUESTION SCALE)))

(DEFCLASS INTRO-MAQ
          (MULTI-ANSWER-SCALE)
          NIL
          (:DEFAULT-INITARGS
           :NAME-STRING
           "INTRO-MAQ"
           :LABEL
           "Biographical MultAnsQuests"
           :SCALE-NAME
           "Biographical Multi-Answer Questions"
           :DESCRIPTION
           "Additional User Information"
           :SCALE-QUESTIONS
           '(UTYPE UGOALS)
           :NUM-QUESTIONS
           0
           :PARENTS
           '(MULTI-ANSWER-SCALE)))

(DEFCLASS BIO-MAQ
          (MULTI-ANSWER-SCALE)
          NIL
          (:DEFAULT-INITARGS
           :NAME-STRING
           "BIO-MAQ"
           :LABEL
           "Biographical MultAnsQuests"
           :SCALE-NAME
           "Biographical Multi-Answer Questions"
           :DESCRIPTION
           "Additional User Information"
           :SCALE-QUESTIONS
           '(BIO4JOB BIO7LANG BIO1ETHN BIORELAF SFAMILY)
           :NUM-QUESTIONS
           5
           :PARENTS
           '(MULTI-ANSWER-SCALE)))

(DEFCLASS HQ
          (COMPOSITE-SCALE)
          NIL
          (:DEFAULT-INITARGS
           :NAME-STRING
           "HQ"
           :LABEL
           "HQ-HapQuot"
           :SCALE-NAME
           "Happiness Quotient Scale (HQ)"
           :DESCRIPTION
           "The HQ is a simple formula for estimating ones overall ability to achieve happiness.  The HQ is the linear combination of the 56 non-academic SHAQ scales.  The weights are the correlations of the individual scales with happiness.   One use of the HQ is to give users feedback about their progress developing success and happiness-related attributes. 
     This scale correlated .865 with overall happiness, .730 with low depression, .675 with low anxiety, .701 with low anger/aggression, .816 with the health outcomes scale, and .693 with overall relationship success.  It also correlated .486 with income, .458 with education level, and .393 with college grade average.  By any psychological research standards, these are high correlations showing that  HQ is a powerful predictor of not only overall happiness and other emotions, but of life success in the areas of  relationships, career, and health."
           :SCALE-GROUP-NAME
           "composite-scale"
           :SCALE-QUESTIONS
           'NIL
           :SUBSCALES
           'NIL
           :MEAN-SCORE
           100
           :STANDARD-DEVIATION
           10
           :SAMPLE-N
           NIL
           :NUM-QUESTIONS
           0
           :HELP-PRIORITY
           1
           :HELP-INFO
           "Understanding your own HQ score and the factors that contribute to it (or reduce it) can be important for understanding how to lead a happier and more successful life.  The help links provided with each scale relate to the factors/questions that make up your HQ score.  Using the self-help information provided can potentially increase your HQ score and ability to lead a happy, successful life."
           :HELP-LINKS
           '("index.html")
           :PARENTS
           '(COMPOSITE-SCALE)))

(DEFCLASS HIGHERSELFSCALE
          (COMPOSITE-SCALE)
          NIL
          (:DEFAULT-INITARGS
           :NAME-STRING
           "HigherSelfScale"
           :LABEL
           "HigherSelfScale"
           :SCALE-NAME
           "Higher Self Beliefs and Values--composite scale"
           :DESCRIPTION
           "A key HQ scale. Your cognitive system that unconditionally values your own and others' happiness, health, and wellbeing. Includes valuing truth, knowledge, growth, integrity, and excellence. 
     Evidence for Higher Self Values and for Making Happiness a Top Goal. Making happiness a top goal correlated .446 with overall appiness, .217 with low depression, .185 with low anxiety, .316 with low anger-aggression, .298 with health outcomes, and.396 with good relationship outcomes. 
     The Higher Self Values scale included making happiness important, but also included values like integrity, self-sufficiency, impacting the world, and learning and self-development. The Higher Self scale correlated .503 with overall happiness, .252 with low depression, .197 with low anxiety, .372 with low anger-aggression, .365 with health outcomes, and .436 with relationship outcomes. "
           :SCALE-GROUP-NAME
           "composite-scale"
           :SCALE-QUESTIONS
           '(THMIMPAC
             THM33GOA
             THM6LEAR
             THM9SHAP
             THM10OTH
             THM14IND
             THM22BOD
             THM23BAL
             THM34EXP
             THMCOMPC
             THMINTEG
             THMPHIL
             THMBEAUT
             THMGOODN
             THMPLAYF
             THMSESUF
             THMSEDIS
             THMUNCON
             TBVBALAN
             TBVHAPCA
             TBVGRATI
             THVSELFA
             THVUNCON
             THVSELFW)
           :MEAN-SCORE
           ".678"
           :STANDARD-DEVIATION
           ".125"
           :SAMPLE-N
           3217
           :NUM-QUESTIONS
           24
           :HELP-PRIORITY
           1
           :HELP-INFO
           "Your top values and goals may be somewhat 'programmed' into you by your parents, religion, school, friends, job, and many other outside influences to the degree that you are barely aware of where they came from.  Since these values and goals are so deep, you may not have questioned them or even barely been aware of them at times.  Nevertheless, they are very powerful determinates of your thinking and behavior.  Examining them, questionning them, and studying alternatives from people who are very happy and successful can increase your awareness of who you are and how you can maximize your own happiness and success.  Philosophers, psychologists, and religious leaders have come to many similar conclusions that you will find when  you study them.  In the end, your values are a choice, and changing your values can be a life-changing experience."
           :HELP-LINKS
           '("h3hiself.htm")
           :PARENTS
           '(COMPOSITE-SCALE)))

(DEFCLASS SID
          (BIO-TEXT)
          NIL
          (:DEFAULT-INITARGS
           :NAME-STRING
           "sID"
           :LABEL
           "sIDinfo"
           :SCALE-NAME
           "User ID Information"
           :DESCRIPTION
           "User ID Information"
           :SCALE-GROUP-NAME
           "BIO"
           :SCALE-QUESTIONS
           '(FRAME-BIO-INFO)
           :NUM-QUESTIONS
           6
           :HELP-PRIORITY
           NIL
           :HELP-INFO
           ""
           :HELP-LINKS
           NIL
           :PARENTS
           '(BIO-TEXT)))

(DEFCLASS ACAD-ACH
          (BIO SCALE)
          NIL
          (:DEFAULT-INITARGS
           :NAME-STRING
           "acad-ach"
           :LABEL
           "Acad Achievement"
           :SCALE-NAME
           "Academic Achievement"
           :DESCRIPTION
           "Based upon combination of completed education level and Grade Point Average"
           :SCALE-GROUP-NAME
           "BIO"
           :SCALE-QUESTIONS
           '(BIO3EDUC BIOHSGPA BIOCOLLE)
           :MEAN-SCORE
           NIL
           :STANDARD-DEVIATION
           NIL
           :SAMPLE-N
           NIL
           :NUM-QUESTIONS
           NIL
           :HELP-PRIORITY
           1
           :HELP-INFO
           ""
           :HELP-LINKS
           NIL
           :PARENTS
           '(BIO SCALE)))

(DEFCLASS NO-SCALE
          (BIO SCALE)
          NIL
          (:DEFAULT-INITARGS
           :NAME-STRING
           "no-scale"
           :LABEL
           "Non-scale items"
           :SCALE-NAME
           "Items not on any scale."
           :DESCRIPTION
           "Individual items not on any scale."
           :SCALE-GROUP-NAME
           "BIO"
           :MEAN-SCORE
           NIL
           :STANDARD-DEVIATION
           NIL
           :SAMPLE-N
           NIL
           :NUM-QUESTIONS
           NIL
           :SCALE-QUESTIONS
           '(BIO5INCO)
           :HELP-PRIORITY
           0
           :HELP-INFO
           ""
           :HELP-LINKS
           NIL
           :PARENTS
           '(BIO SCALE)))

(DEFCLASS SUTYPE
          (INTRO-MAQ)
          NIL
          (:DEFAULT-INITARGS
           :NAME-STRING
           "sutype"
           :LABEL
           "sUserType"
           :SCALE-NAME
           "User SHAQ Type"
           :DESCRIPTION
           "SHAQ scale-selection information."
           :SCALE-GROUP-NAME
           "BIO-MAC"
           :SCALE-QUESTIONS
           '(UTYPE)
           :NUM-QUESTIONS
           1
           :HELP-PRIORITY
           NIL
           :HELP-INFO
           ""
           :HELP-LINKS
           NIL
           :PARENTS
           '(INTRO-MAQ)))

(DEFCLASS SUGOALS
          (INTRO-MAQ)
          NIL
          (:DEFAULT-INITARGS
           :NAME-STRING
           "sugoals"
           :LABEL
           "sUserGoals"
           :SCALE-NAME
           "User SHAQ Goals"
           :DESCRIPTION
           "User Goals for taking SHAQ."
           :SCALE-GROUP-NAME
           "BIO-MAC"
           :SCALE-QUESTIONS
           '(UGOALS)
           :NUM-QUESTIONS
           1
           :HELP-PRIORITY
           NIL
           :HELP-INFO
           ""
           :HELP-LINKS
           NIL
           :PARENTS
           '(INTRO-MAQ)))

(DEFCLASS ST1HIGHERSELF
          (VALUES-THEMES HQ SCALE)
          NIL
          (:DEFAULT-INITARGS
           :NAME-STRING
           "sT1HigherSelf"
           :SCALE-NAME
           "sT1: Higher Self and IntegrityValues-Beliefs"
           :LABEL
           "sT1-HigherSelf-Integrity  happy balance devel discpn phil"
           :DESCRIPTION
           "Values self happiness, integrity, development, learning, discipline, self-sufficiency, independence, balance, and strong philosophy of life. This scale correlated .380 with overall happiness, .166 with low depression, .137 with low anxiety,.327 with low anger/aggression, .327 with the health scale, and .351 with overall relationship success, (10 items)"
           :SCALE-GROUP-NAME
           "values-themes"
           :SCALE-QUESTIONS
           '(THM6LEAR
             THM9SHAP
             THM14IND
             THM22BOD
             THM23BAL
             THMCOMPC
             THMINTEG
             THMPHIL
             THMSESUF
             THMSEDIS)
           :MEAN-SCORE
           ".749"
           :STANDARD-DEVIATION
           ".140"
           :SAMPLE-N
           3334
           :NUM-QUESTIONS
           10
           :HELP-PRIORITY
           1
           :HELP-INFO
           "Valuing happiness, integrity, self-development, a strong personal philosophy, and these other values seem to be an important component of living a happy life."
           :HELP-LINKS
           '("h3hiself.htm")
           :PARENTS
           '(VALUES-THEMES HQ SCALE)))

(DEFCLASS ST2SOCINTIMNOFAM
          (VALUES-THEMES HQ SCALE)
          NIL
          (:DEFAULT-INITARGS
           :NAME-STRING
           "sT2SocIntimNoFamScale"
           :LABEL
           "sT2-SocialIntimacyNotFamily  love/rom  respect support agreeable"
           :SCALE-NAME
           "Non-Family, Social-Intimacy Values"
           :DESCRIPTION
           "Values intimacy, romance and being liked, respected, and supported. This scale correlated .256 with overall happiness, .251 with low anger/aggression, .279 with the health scale, and .357 with overall relationship success,(6 items)"
           :SCALE-GROUP-NAME
           "values-themes"
           :SCALE-QUESTIONS
           '(THM8ROMA THM12PLE THMRESPE THM20INT THMLIKED THMSUPPO)
           :MEAN-SCORE
           ".735"
           :STANDARD-DEVIATION
           ".145"
           :SAMPLE-N
           3279
           :NUM-QUESTIONS
           6
           :HELP-PRIORITY
           0
           :HELP-INFO
           "Changing long-established, top values is not easy. If you want to change some of these values, you can start with the help-links below."
           :HELP-LINKS
           '("life_goals_and_meaning.htm")
           :PARENTS
           '(VALUES-THEMES HQ SCALE)))

(DEFCLASS ST3FAMCARE
          (VALUES-THEMES HQ SCALE)
          NIL
          (:DEFAULT-INITARGS
           :NAME-STRING
           "sT3FamCareScale"
           :LABEL
           "sT3-Family-EmotionalSupport and care giving parental love-respect"
           :SCALE-NAME
           "Family Values"
           :DESCRIPTION
           "Care-giving. This scale correlated .406 with overall happiness, .154 with low depression, .110 with low anxiety,.217 with low anger/aggression, .294 with the health scale, and .426 with overall relationship success, (3 items)"
           :SCALE-GROUP-NAME
           "values-themes"
           :SCALE-QUESTIONS
           '(THMCAREG THMPARLV THMFAMIL)
           :MEAN-SCORE
           ".701"
           :STANDARD-DEVIATION
           ".172"
           :SAMPLE-N
           2424
           :NUM-QUESTIONS
           3
           :HELP-PRIORITY
           0
           :HELP-INFO
           "Changing long-established, top values is not easy. If you want to change some of these values, you can start with the help-links below."
           :HELP-LINKS
           '("life_goals_and_meaning.htm")
           :PARENTS
           '(VALUES-THEMES HQ SCALE)))

(DEFCLASS ST4SUCCESSSTATUSMATER
          (VALUES-THEMES HQ SCALE)
          NIL
          (:DEFAULT-INITARGS
           :NAME-STRING
           "sT4SuccessStatusMater"
           :LABEL
           "sT4-SuccessStatusIncomeMaterialism"
           :SCALE-NAME
           "Achievement, Status, Material-Wellbeing Values"
           :DESCRIPTION
           "Values success, education, high income and possessions, respect, status, being a CEO, and completing important goals. This scale correlated .295 with overall happiness, .136 with low depression, .096 with low anxiety,.138 with low anger/aggression, .303 with the health scale, and .298 with overall relationship success,(8 items)"
           :SCALE-GROUP-NAME
           "values-themes"
           :SCALE-QUESTIONS
           '(THM3EDUC
             THM4MONE
             THM25POS
             THM26SUC
             THM30CEO
             THM33GOA
             THMRESPE
             THM1ACH
             THMRECOG)
           :MEAN-SCORE
           ".615"
           :STANDARD-DEVIATION
           ".148"
           :SAMPLE-N
           3269
           :NUM-QUESTIONS
           9
           :HELP-PRIORITY
           0
           :HELP-INFO
           "Changing long-established, top values is not easy. If you want to change some of these values, you can start with the help-links below."
           :HELP-LINKS
           '("life_goals_and_meaning.htm")
           :PARENTS
           '(VALUES-THEMES HQ SCALE)))

(DEFCLASS ST5-ORDERPERFECTIONGOODNESS
          (VALUES-THEMES HQ SCALE)
          NIL
          (:DEFAULT-INITARGS
           :NAME-STRING
           "sT5-OrderPerfectionGoodness"
           :LABEL
           "sT5-OrderPerfectionGoodness cleanliness juatice simplicity punctual"
           :SCALE-NAME
           "Idealistic, Mental, Order, Aesthetic Values"
           :DESCRIPTION
           "Values goodness, beauty, idealism, orderliness, perfection, organization, justice, simplicity, cleanliness, wholeness. This scale correlated .310 with overall happiness, .102 with low depression, .214 with low anger/aggression, .278 with the health scale, and .338 with overall relationship success, (7 items)"
           :SCALE-GROUP-NAME
           "values-themes"
           :SCALE-QUESTIONS
           '(THMORDER
             THMCLEAN
             THMPERFE
             THMJUSTI
             THMSIMPL
             THMBEAUT
             THMGOODN
             THMWHOLE)
           :MEAN-SCORE
           ".649"
           :STANDARD-DEVIATION
           ".142"
           :SAMPLE-N
           3334
           :NUM-QUESTIONS
           8
           :HELP-PRIORITY
           0
           :HELP-INFO
           "Changing long-established, top values is not easy. If you want to change some of these values, you can start with the help-links below."
           :HELP-LINKS
           '("life_goals_and_meaning.htm")
           :PARENTS
           '(VALUES-THEMES HQ SCALE)))

(DEFCLASS ST6GODSPIRITRELIG
          (VALUES-THEMES HQ SCALE)
          NIL
          (:DEFAULT-INITARGS
           :NAME-STRING
           "sT6GodSpiritRelig"
           :LABEL
           "sT6-GodSpiritualReligion"
           :SCALE-NAME
           "God, Spiritual Intimacy Values"
           :DESCRIPTION
           "Values spiritual intimacy, God, religion, obedience to God. This scale correlated .302 with overall happiness, .126 with low depression, .137 with low anxiety,.103 with low anger/aggression, .224 with the health scale, and .269 with overall relationship success, (4 items)"
           :SCALE-GROUP-NAME
           "values-themes"
           :SCALE-QUESTIONS
           '(THMOBGOD THMRELGD THMSPIRI THMRELIG)
           :MEAN-SCORE
           ".555"
           :STANDARD-DEVIATION
           ".240"
           :SAMPLE-N
           2473
           :NUM-QUESTIONS
           4
           :HELP-PRIORITY
           0
           :HELP-INFO
           "Changing long-established, top values is not easy. If you want to change some of these values, you can start with the help-links below."
           :HELP-LINKS
           '("life_goals_and_meaning.htm")
           :PARENTS
           '(VALUES-THEMES HQ SCALE)))

(DEFCLASS ST7IMPACTCHALLENGEEXPLOR
          (VALUES-THEMES HQ SCALE)
          NIL
          (:DEFAULT-INITARGS
           :NAME-STRING
           "sT7ImpactChallengeExplor"
           :LABEL
           "sT7-ImpactContributionMentalChallenge-exploration"
           :SCALE-NAME
           "Contribution, Impact Values"
           :DESCRIPTION
           "Values giving, impact on world, mental challenge, exploration, uniqueness, and diversity. This scale correlated .347 with overall happiness, .136 with low depression, .133 with low anxiety,.296 with low anger/aggression, .277 with the health scale, and .326 with overall relationship success, (6 items)"
           :SCALE-GROUP-NAME
           "values-themes"
           :SCALE-QUESTIONS
           '(THM10OTH
             THMIMPAC
             THM28CRE
             THMMENCH
             THM34EXP
             THMUNIQU
             THMCREAT)
           :MEAN-SCORE
           ".672"
           :STANDARD-DEVIATION
           ".150"
           :SAMPLE-N
           3312
           :NUM-QUESTIONS
           7
           :HELP-PRIORITY
           1
           :HELP-INFO
           "Changing long-established, top values is not easy. If you want to change some of these values, you can start with the help-links below."
           :HELP-LINKS
           '("life_goals_and_meaning.htm")
           :PARENTS
           '(VALUES-THEMES HQ SCALE)))

(DEFCLASS ST8ATTENTIONFUNEASY
          (VALUES-THEMES HQ SCALE)
          NIL
          (:DEFAULT-INITARGS
           :NAME-STRING
           "sT8AttentionFunEasy"
           :LABEL
           "sT8-AttentionFunEasy playful adventure"
           :SCALE-NAME
           "Adventure, Play Values"
           :DESCRIPTION
           "Values adventure, play, attention, fun, effortlessness. This scale correlated .311 with overall happiness, .106 with low depression, .101 with low anxiety,.192 with low anger/aggression, .247 with the health scale, and .335 with overall relationship success, (4 items)"
           :SCALE-GROUP-NAME
           "values-themes"
           :SCALE-QUESTIONS
           '(THMATTEN THM5ADVE THMEFORT THMPLAYF)
           :HELP-PRIORITY
           0
           :HELP-INFO
           "Changing long-established, top values is not easy. If you want to change some of these values, you can start with the help-links below."
           :HELP-LINKS
           '("life_goals_and_meaning.htm")
           :PARENTS
           '(VALUES-THEMES HQ SCALE)))

(DEFCLASS ST9VALUESELFALLUNCOND
          (VALUES-THEMES HQ SCALE)
          NIL
          (:DEFAULT-INITARGS
           :NAME-STRING
           "sT9ValueSelfAllUncond"
           :LABEL
           "sT9-ValueSelf-AllUnconditionally"
           :SCALE-NAME
           "Unconditional Love Values"
           :DESCRIPTION
           "Unconditional valuing of self and others--A key HQ scale. This scale correlated .461 with overall happiness, .276 with low depression, .209 with low anxiety,.311 with low anger/aggression, .232 with the health scale, and .336 with overall relationship success, (2 items)"
           :SCALE-GROUP-NAME
           "values-themes"
           :SCALE-QUESTIONS
           '(THVUNCON THVSELFW THVSELFA THMUNCON)
           :MEAN-SCORE
           ".560"
           :STANDARD-DEVIATION
           ".208"
           :SAMPLE-N
           3246
           :NUM-QUESTIONS
           4
           :HELP-PRIORITY
           1
           :HELP-INFO
           "Changing long-established, top values is not easy. If you want to change some of these values, you can start with the help-links below."
           :HELP-LINKS
           '("life_goals_and_meaning.htm")
           :PARENTS
           '(VALUES-THEMES HQ SCALE)))

(DEFCLASS ST10OVERCMPROBACCEPTSELF
          (VALUES-THEMES HQ SCALE)
          NIL
          (:DEFAULT-INITARGS
           :NAME-STRING
           "sT10OvercmProbAcceptSelf"
           :LABEL
           "sT10-OvercomeProblems-AcceptAllofSelf"
           :SCALE-NAME
           "Overcoming Personal Problems Values"
           :DESCRIPTION
           "Values overcoming problems, self-protection, and personal healing.  This scale correlated .185 with overall happiness, .135 with low anger/aggression, .168 with the health scale, and .209 with overall relationship success, (2 items)"
           :SCALE-GROUP-NAME
           "values-themes"
           :SCALE-QUESTIONS
           '(THMSPROT THMPHURT)
           :MEAN-SCORE
           ".585"
           :STANDARD-DEVIATION
           ".106"
           :SAMPLE-N
           2385
           :NUM-QUESTIONS
           2
           :HELP-PRIORITY
           0
           :HELP-INFO
           "Changing long-established, top values is not easy. If you want to change some of these values, you can start with the help-links below."
           :HELP-LINKS
           '("life_goals_and_meaning.htm")
           :PARENTS
           '(VALUES-THEMES HQ SCALE)))

(DEFCLASS ST11DUTYPUNCTUAL
          (VALUES-THEMES HQ SCALE)
          NIL
          (:DEFAULT-INITARGS
           :NAME-STRING
           "sT11DutyPunctual"
           :LABEL
           "sT11-DutyPunctuality"
           :SCALE-NAME
           "Duty, Obligation Values"
           :DESCRIPTION
           "Values duty, obligation, and punctuality. This scale correlated .265 with overall happiness,  .097 with low depression, .155 with low anger/aggression, .264 with the health scale, and .264 with overall relationship success, (2 items)"
           :SCALE-GROUP-NAME
           "values-themes"
           :SCALE-QUESTIONS
           '(THMPUNCT THMOBLIG)
           :MEAN-SCORE
           "582"
           :STANDARD-DEVIATION
           ".177"
           :SAMPLE-N
           2510
           :NUM-QUESTIONS
           2
           :HELP-PRIORITY
           0
           :HELP-INFO
           "Changing long-established, top values is not easy. If you want to change some of these values, you can start with the help-links below."
           :HELP-LINKS
           '("life_goals_and_meaning.htm")
           :PARENTS
           '(VALUES-THEMES HQ SCALE)))

(DEFCLASS SWORLDVIEW
          (BELIEFS HQ SCALE)
          NIL
          (:DEFAULT-INITARGS
           :NAME-STRING
           "sworldview"
           :DATA-NAME-STRING
           "sworldvi"
           :LABEL
           "s-Positive world view"
           :SCALE-NAME
           "Positive World View"
           :DESCRIPTION
           "Optimism about the future of the world and own life, lack of entitlement thinking, plus daily positive versus negative thoughts. How constructively and positively you view the world and the future can significantly affect motivation, relationships, happiness, and success in most life areas. 
      Living life with a sense of gratitude (versus a sense of entitlement and deprivation) may be one of the most important factors for 
      happiness. It correlates .687 with happiness, .528 with low depression, .375 with low anxiety, .235 with 
      low anger/aggression, .384 with relationship success, .233 with positive health outcomes. (10 items)"
           :SCALE-GROUP-NAME
           "beliefs"
           :SCALE-QUESTIONS
           '(WOVPROGR
             WOVGOODF
             WOVMYLIF
             WOVNFAIR
             TBVENTIT
             WOVINJUR
             WOVABUND
             TBVGRATI
             WOVENTIT
             WOVGRATE
             WOVPOSTH)
           :MEAN-SCORE
           ".624"
           :STANDARD-DEVIATION
           ".153"
           :SAMPLE-N
           3162
           :NUM-QUESTIONS
           10
           :HELP-PRIORITY
           1
           :HELP-INFO
           "If you scored very low, it could cause you to have a problem with anxiety, depression, or low motivation. Examine your underlying negative beliefs and your expectations of what others (or the world) owes you.  Reading books on positive motivation and learning from people with positive motivation can help. Check our help link and even consider counseling if this troubles you."
           :HELP-LINKS
           '("h4world.htm")
           :PARENTS
           '(BELIEFS HQ SCALE)))

(DEFCLASS STBSLFWO
          (BELIEFS HQ SCALE)
          NIL
          (:DEFAULT-INITARGS
           :NAME-STRING
           "stbslfwo"
           :LABEL
           "s-Self-worth beliefs"
           :SCALE-NAME
           "Unconditional Worth of Self and Others"
           :DESCRIPTION
           "A key HQ scale. Degree to which one accepts/values all parts of one's self and others not contingent on others' individual characteristics or behaviors. Unconditionally valuing yourself and others means that an important part of a person's worth is not dependent upon their success, income, appearance, personality, ethnic group, morality, or any other quality.  Self-worth is the unconditional aspect of self-esteem. It differs from self-confidence which is the aspect conditional upon success or other factors. It correlates .391 with overall happiness, .283 with low depression, .260 with low anxiety,.300 with low anger/aggression."
           :SCALE-GROUP-NAME
           "beliefs"
           :SCALE-QUESTIONS
           '(TBVOTHFI
             TBVLIKED
             TBVWEAK
             TBVBEST
             TBVRULES
             TBVWINNE
             TBVBALAN
             TBVHAPCA
             THVSELFA
             THVUNCON
             THVSELFW)
           :MEAN-SCORE
           ".595"
           :STANDARD-DEVIATION
           ".126"
           :SAMPLE-N
           3246
           :NUM-QUESTIONS
           12
           :HELP-PRIORITY
           1
           :HELP-INFO
           "If you didn't score high, then look over the individual items and focus on beliefs that may be more negative, lower self-esteem, lower self-effectiveness, or lower happiness. Also, check your score and responses on the Life Themes scale. Internal mental values can help you achieve greater unconditional self-worth. Then go to our help link."
           :HELP-LINKS
           '("h5self.htm")
           :PARENTS
           '(BELIEFS HQ SCALE)))

(DEFCLASS SIECONTR
          (BELIEFS HQ SCALE)
          NIL
          (:DEFAULT-INITARGS
           :NAME-STRING
           "siecontr"
           :LABEL
           "s-Int-Ext control beliefs"
           :SCALE-NAME
           "Internal vs External Control (I-E) Beliefs"
           :DESCRIPTION
           "Degree of self-sufficiency and responsibility one takes for his/her own life, health, and happiness without undue influence from others. More internal direction, planning, and self-control versus influence by others or external forces. Internal control correlates .357 with overall happiness, .366 with low depression, .393 with low anxiety, .255 with low anger/aggression. 
      Believing that you are in control of your own emotions, behavior, likes and dislikes, and your life increases internal control. Making your own decisions and plans and giving adequate priority to your own needs also helps. (7 items)"
           :SCALE-GROUP-NAME
           "beliefs"
           :SCALE-QUESTIONS
           '(IECSELFS
             IECICONT
             IECGENET
             IECPEOPL
             IECDEPEN
             IECCOFEE
             IECCOPRB)
           :MEAN-SCORE
           "616"
           :STANDARD-DEVIATION
           ".162"
           :SAMPLE-N
           3246
           :NUM-QUESTIONS
           7
           :HELP-PRIORITY
           1
           :HELP-INFO
           "Learning how to increase your internal control can increase self-esteem and assertiveness, and it can lower anxiety and depression. Start with the help link."
           :HELP-LINKS
           '("h6intern.htm")
           :PARENTS
           '(BELIEFS HQ SCALE)))

(DEFCLASS SETHBEL
          (BELIEFS HQ SCALE)
          NIL
          (:DEFAULT-INITARGS
           :NAME-STRING
           "sethbel"
           :DATA-NAME-STRING
           "sEthBeliefs"
           :LABEL
           "sethbel"
           :SCALE-NAME
           "Absolute-Grounded, Integrated Ethics"
           :DESCRIPTION
           "Ethics philosophers and religions agree on many general principles. It is generally agreed that better ethics are based more on absolute principles and wholes such as humanity, nature, or God rather than on more specific or situational aspects such as self, family, or any group.  An ethical system that judges people more on their inner qualities and assumes some basic inner goodness and inherent value in all people. It includes questions about astrology (very much frowned upon by philosophers, scientists, and religion) and life after death (a common belief).  Many people base their ethics on the rewards they expect after death. (14 items). This scale correlated 0.459 with overall happiness, 0.306 with low depression, 0.336 with low anxiety, and 0.463 with low anger/aggression."
           :SCALE-GROUP-NAME
           "beliefs"
           :SCALE-QUESTIONS
           '(TB2RELAT
             TB2PUNIS
             TBV2NOTR
             TB2GROUM
             TB2SELFM
             TB2GDWRK
             TB2GDATT
             TB2ALLGD
             TB2REASO
             TBV2ASTR
             TB2IDHUM
             TB2LIFAD
             TB2MOVEM
             TBV2CORE)
           :MEAN-SCORE
           0.62
           :STANDARD-DEVIATION
           0.112
           :SAMPLE-N
           2366
           :NUM-QUESTIONS
           14
           :HELP-PRIORITY
           1
           :HELP-INFO
           "Basing your values and beliefs on general abstract principles and mental-values such as integrity, truth, love, and happiness and valuing all people and all nature is not only a commonality most great philosophers and religions have in common, it also helps people be happier and more successful."
           :HELP-LINKS
           '("life_goals_and_meaning.htm")
           :PARENTS
           '(BELIEFS HQ SCALE)))

(DEFCLASS SGRFEARS
          (BELIEFS HQ SCALE)
          NIL
          (:DEFAULT-INITARGS
           :NAME-STRING
           "sgrfears"
           :LABEL
           "s-Low greatest fears"
           :SCALE-NAME
           "Low Greatest Fears"
           :DESCRIPTION
           "A key HQ scale. Low degree of common major fears such as illness, poverty, death, failure, rejection, and confidence in ability to overcome fears or circumstances. Fears are interesting to people per se.  Your greatest fears reflect your top values and goals in life and are related to your happiness and success. The underlying fear is usually that one's greatest values/goals will be unsatisfied. Your underlying fears can be powerful sources of pain and avoidance motivation. Underlying fears give your little jolts of fear or anxiety daily as you get a thought that is related to them. 
      Overcoming these underlying fears can help you be less fearful and anxious the rest of your life! This scale correlates .462 with happiness, .417 with low depression, .375 with low anxiety, .241 with low anger/aggression. (12 items)"
           :SCALE-GROUP-NAME
           "beliefs"
           :SCALE-QUESTIONS
           '(WOVHAPPY
             WOVPOOR
             WOVILL
             WOVDEATH
             WOVALONE
             WOVNOLOV
             WOVLIKED
             WOVPERSO
             WOVPROBL
             WOVDISCO
             WOVSUCCE
             WOVOVERC)
           :MEAN-SCORE
           ".601"
           :STANDARD-DEVIATION
           ".174"
           :SAMPLE-N
           3162
           :NUM-QUESTIONS
           12
           :HELP-PRIORITY
           1
           :HELP-INFO
           "Your fears could cause you to have problems with anxiety, depression, anger, low self-esteem, or low motivation. It is important that you check our help link and even consider counseling if one or more underlying fears trouble you. Reducing underlying fears can reduce all the daily fears that are linked to these deeper fears. Learn to face them, explore them, and find new ways of thinking about them or coping with them from those who have been successful in overcoming them."
           :HELP-LINKS
           '("h43dark.htm")
           :PARENTS
           '(BELIEFS HQ SCALE)))

(DEFCLASS SSLFCONF
          (SKILLS-CONFIDENCE HQ SCALE)
          NIL
          (:DEFAULT-INITARGS
           :NAME-STRING
           "sslfconf"
           :LABEL
           "s-Self-confidence areas"
           :SCALE-NAME
           "Self-Confidence and Life Skill Areas"
           :DESCRIPTION
           "A list of knowledge and skills areas was developed, and subjects were asked to rate their own confidence/skills for each area. The Self-Confidence scale measures the contingent, efficacy aspect of self-esteem.  This scale has emerged as a separate factor from the other main scales in factor analytic studies.  Your self-report ratings should reflect a combination of actual knowledge and skill and of confidence level. It is similar to the concept of self-efficacy.
      Your life skills and self-confidence can be powerful factors in your success and happiness in many life areas--including your academic and career success. It correlated .629 with happiness, .421 with low depression, .351 with low anxiety, .186 with low anger/aggression,.367 with relationship success, .233 with positive health outcomes. (41 items)"
           :SCALE-GROUP-NAME
           "skills-confidence"
           :SCALE-QUESTIONS
           '(SLFLEARN
             SLFCRITT
             SLFRESEA
             SLFANALY
             SLFSYNTH
             SLFCREAT
             SLFCOMPU
             SLFBIOSC
             SLFNATSC
             SLFLIBAR
             SLFSOCSC
             SLFPHILR
             SLFPERFA
             SLFFINEA
             SLFBUSAN
             SLFHEAL2
             SLFENGIN
             SLFEDUCH
             SLFIQ
             SLFDECMA
             SLFTIMEM
             SLFCOPE
             SLFSELF4
             SLFSELFM
             SLFACHAN
             SLFMANA6
             SLFHEAL3
             SLFMEETP
             SLFLISTE
             SLFSELF5
             SLFCONFL
             SLFPERSU
             SLFMANA7
             SLFHELPS
             SLFSPEAK
             SLFJOBSE
             SLFADAPT
             SLFHAPPY
             SLFOPTIM
             SLFFRIEN
             SLFINDEP)
           :MEAN-SCORE
           ".682"
           :STANDARD-DEVIATION
           ".143"
           :SAMPLE-N
           3225
           :NUM-QUESTIONS
           41
           :HELP-PRIORITY
           1
           :HELP-INFO
           "Look over questions that you scored low on, ask yourself why, and ask yourself what you can do to improve these areas. Target one or two main areas to start with and begin a self-improvement program. See our help link for help."
           :HELP-LINKS
           '("h54confi.htm")
           :PARENTS
           '(SKILLS-CONFIDENCE HQ SCALE)))

(DEFCLASS SSELFMAN
          (SKILLS-CONFIDENCE HQ SCALE)
          NIL
          (:DEFAULT-INITARGS
           :NAME-STRING
           "sselfman"
           :LABEL
           "s-Self-management skills"
           :SCALE-NAME
           "Self-Management Skills"
           :DESCRIPTION
           "A key HQ scale. Skills related to self-care, decision-making, goal-setting, and time-management including leading a balanced life and attending to all main need/value areas. Many items are based upon  OPATSM time-management system.  Research shows that these vital skills are related to a more successful and happier life in almost all life areas. This scale correlated .606 with overall life happiness, .297 with low depression, .365 with relationship success, and over .30 with job status. (15 items)"
           :SCALE-GROUP-NAME
           "skills-confidence"
           :SCALE-QUESTIONS
           '(SMTBUSY
             SMTFUTUR
             SMTEXERC
             SMTEATH
             SMTSLEEP
             SMTSDEVE
             SMTNPROC
             SMTPTODO
             SMTGOALS
             SMTSCHD
             SMT2DTOD
             SMTACMPL
             SMTGHELP
             SMTBALAN
             SMTHABCH)
           :MEAN-SCORE
           ".537"
           :STANDARD-DEVIATION
           ".160"
           :SAMPLE-N
           1936
           :NUM-QUESTIONS
           15
           :HELP-PRIORITY
           1
           :HELP-INFO
           "Self-management of setting clear goals, good time-management (including using weekly/daily prioritized task lists in each life area) is a key factor in people's happiness and success. Try the time-management skills in the help-link."
           :HELP-LINKS
           '("h9patsm.htm")
           :PARENTS
           '(SKILLS-CONFIDENCE HQ SCALE)))

(DEFCLASS SEMOTCOP
          (SKILLS-CONFIDENCE HQ SCALE)
          NIL
          (:DEFAULT-INITARGS
           :NAME-STRING
           "semotcop"
           :LABEL
           "s-Emotional coping skills"
           :SCALE-NAME
           "Emotional Coping Skills"
           :DESCRIPTION
           "A key HQ scale.  How you habitually react to emotionally stressful situations. What do you do when you are upset? This scale correlates .683 with overall happiness, .578 with low depression, .466 with low anxiety, .374 with low anger/aggressiveness, and .314 with good, intimate personal relationships.  It is also a moderate predictor of academic and career success. (20 items)"
           :SCALE-GROUP-NAME
           "skills-confidence"
           :SCALE-QUESTIONS
           '(COPNEGTH
             COPCOPEA
             COPPSOLV
             COPAVOPS
             COPEMOTA
             COPBLAME
             COPWDRW
             COPFUN
             COPTALKS
             COPPEPTA
             COPSMOKE
             COPDRUG
             COPPE
             COPNEGPH
             COPSELFB
             COPPOSPH
             COPEXPEC
             COPHAPPY
             COPAVOAT
             COPSELFE)
           :MEAN-SCORE
           ".585"
           :STANDARD-DEVIATION
           ".135"
           :SAMPLE-N
           3273
           :NUM-QUESTIONS
           20
           :HELP-PRIORITY
           1
           :HELP-INFO
           "Read the questions below and your responses to what you do when you are upset. Learn to use more constructive coping responses like problem-solving, positive thinking, positive social behavior, and constructive activities to feel better instead of negative coping such as negative thinking, blaming, withdrawal, addicitve habits, etc.  Improving emotional coping skills is one of the simplest ways to lead a more successful and happier life (and escape negative habits like addictions, avoidance, and negativism"
           :HELP-LINKS
           '("h8hf2.htm")
           :PARENTS
           '(SKILLS-CONFIDENCE HQ SCALE)))

(DEFCLASS INTSS1AASSERTCR
          (INTERPERSONAL HQ SCALE)
          NIL
          (:DEFAULT-INITARGS
           :NAME-STRING
           "IntSS1aAssertCR"
           :LABEL
           "IntSS1a-AssertiveConfRes"
           :SCALE-NAME
           "Assertive Communication and Conflict Resolution"
           :DESCRIPTION
           "A key HQ scale: democratic, assertive communication and conflict resolution.  Seeks win-win solutions to conflicts, with clear, caring, understanding, non-defensive, calm, persistent, honest, friendly, non-threatening behaviors. Finding and resolving the basic, underlying issues is very important. You ability to resolve differences with others is a critical component of any good, lasting relationship from work to marriage. It is a vital skill in many professional situations. Our research shows a correlation of more than .70 between this scale and marital relationship happiness and .365 with overall relationship success. It also correlated .463 with overall happiness, .236 with low depression, .202 with low anxiety, .355 with low anger/aggression, .306 with positive health. A low score may predict a series of relationships that end in conflict or being left. (13 items)"
           :SCALE-GROUP-NAME
           "interpersonal"
           :SCALE-QUESTIONS
           '(CR1ISSUE
             CRRESOLV
             CRNTHREA
             CRUNDERL
             CRWINWIN
             CRLONGTK
             CRSUMMAR
             CRCPRAIS
             CRBOASSR
             CROPHONE
             CRANGRES
             CRTLKMOR
             CREQWIN
             INTUNDRL)
           :MEAN-SCORE
           ".563"
           :STANDARD-DEVIATION
           ".186"
           :SAMPLE-N
           2664
           :NUM-QUESTIONS
           14
           :HELP-PRIORITY
           1
           :HELP-INFO
           "Look over the individual questions to see where strengths and areas needing improvement lie. Then go to our help links on assertion training and conflict resolution."
           :HELP-LINKS
           '("assertion_training.htm")
           :PARENTS
           '(INTERPERSONAL HQ SCALE)))

(DEFCLASS INTSS1BOPENHON
          (INTERPERSONAL HQ SCALE)
          NIL
          (:DEFAULT-INITARGS
           :NAME-STRING
           "IntSS1bOpenHon"
           :LABEL
           "IntSS1bIntimateOpenHonest"
           :SCALE-NAME
           "Intimacy"
           :DESCRIPTION
           "A key HQ scale: Open, Honest, Communication and Goal Harmony. Reveal most private and sensitive thoughts and feelings regularly, shared goals, and feelings of relationship commitment. This scale correlated over .70 with marital satisfaction and .435 with overall relationship success. ,.503 with overall happiness, .289 with low depression, .230 with low anxiety,.302 with low anger/aggression, and .293 with the health scale. Intimacy is a critical part of any truly close relationship--especially marital relationships. (10 items)"
           :SCALE-GROUP-NAME
           "interpersonal"
           :SCALE-QUESTIONS
           '(INTTELAL
             INTSMGOA
             INTEQDEC
             INTIOPEN
             INTWEOPN
             INTDAILY
             INTALLOP
             INTKNPFE
             INCOMTWO)
           :MEAN-SCORE
           ".643"
           :STANDARD-DEVIATION
           ".192"
           :SAMPLE-N
           2491
           :NUM-QUESTIONS
           10
           :HELP-PRIORITY
           1
           :HELP-INFO
           "If you didn't score high, you want to improve this area to increase your ability to relate to the opposite sex or any close relationship with a mature person. Examine the individual questions to set goals for improvement and check out our links."
           :HELP-LINKS
           '("conversational_skills.htm" "c14-lisn.htm")
           :PARENTS
           '(INTERPERSONAL HQ SCALE)))

(DEFCLASS INTSS2ROMANTC
          (INTERPERSONAL HQ SCALE)
          NIL
          (:DEFAULT-INITARGS
           :NAME-STRING
           "IntSS2Romantc"
           :LABEL
           "IntSS2-Romantic=sromantc"
           :SCALE-NAME
           "Close, Romantic Interactions"
           :DESCRIPTION
           "Romantic attraction, playful, romantic surprises, fantasize about partner, go to romantic places, have special celebrations together. It correlates .267 with relationship success, .394 with overall happiness, .173 with low depression, and .238 with low aggression. (7 items)"
           :SCALE-GROUP-NAME
           "interpersonal"
           :SCALE-QUESTIONS
           '(ROMSURPR
             ROMFANTA
             ROMCELEB
             ROMPLACE
             ROMATTRA
             ROMPLAYF
             ROMCHARM)
           :MEAN-SCORE
           ".615"
           :STANDARD-DEVIATION
           ".219"
           :SAMPLE-N
           2938
           :NUM-QUESTIONS
           7
           :HELP-PRIORITY
           0
           :HELP-INFO
           "Examine your answers and look at our help links."
           :HELP-LINKS
           '("conversational_skills.htm"
             "developing_intimacy.htm"
             "c14-lisn.htm"
             "chaprels.htm")
           :PARENTS
           '(INTERPERSONAL HQ SCALE)))

(DEFCLASS INTSS3LIBROLE
          (INTERPERSONAL HQ SCALE)
          NIL
          (:DEFAULT-INITARGS
           :NAME-STRING
           "IntSS3LibRole"
           :LABEL
           "IntSS3-LiberatedRoles=slibrole"
           :SCALE-NAME
           "Liberated, Equal Roles"
           :DESCRIPTION
           "Equality in decisions, roles, chores/tasks, career priority, some non-stereotypical role behaviors. Our research seems to show that people in relationships with more liberated roles may be happier. However, people with traditional male-female relationship views can be happy if both partners agree on these views and the male makes decisions adequately taking into account his/her partner's desires and needs. It correlated .166 with overall happiness, .182 with low anxiety, and .292 with low anger/aggression. (7 items)"
           :SCALE-GROUP-NAME
           "interpersonal"
           :SCALE-QUESTIONS
           '(LROMTASK
             LROFTASK
             LRMFINAL
             LROEMBAR
             LROMSTRO
             LROEQINC
             LRCARCON)
           :MEAN-SCORE
           ".703"
           :STANDARD-DEVIATION
           ".188"
           :SAMPLE-N
           3056
           :NUM-QUESTIONS
           7
           :HELP-PRIORITY
           0
           :HELP-INFO
           "This is an area where finding a partner with similar views or where resolving differences can be important."
           :HELP-LINKS
           '("finding_mr_mrs_right.htm")
           :PARENTS
           '(INTERPERSONAL HQ SCALE)))

(DEFCLASS INTSS4LOVERES
          (INTERPERSONAL HQ SCALE)
          NIL
          (:DEFAULT-INITARGS
           :NAME-STRING
           "IntSS4LoveRes"
           :LABEL
           "IntSS4-Love Respect"
           :SCALE-NAME
           "Love and Respect for Partner"
           :DESCRIPTION
           "Valuing Your Partner--A key HQ scale.  Love, respect, cheerfully do favors for,  praise more than criticize partner.  Feel free when partner home, feel committed not trapped. This Love and Respect  scale correlated .425 with overall relationship success. ,.476 with overall happiness, .289 with low depression, .268 with low anxiety,.432 with low anger/aggression, and .295 with the health scale. Love and Respect  is a critical part of any truly close relationship--especially marital relationships. (9 items)"
           :SCALE-GROUP-NAME
           "interpersonal"
           :SCALE-QUESTIONS
           '(CRIFAVOR
             CRIFOLUP
             INTCOMIT
             INTRESPT
             INTLSQPR
             INTLOVE
             INNEVARG)
           :MEAN-SCORE
           ".751"
           :STANDARD-DEVIATION
           ".154"
           :SAMPLE-N
           2491
           :NUM-QUESTIONS
           7
           :HELP-PRIORITY
           1
           :HELP-INFO
           "Loving and respecting your partner comes from many factors beyond your direct control.  However, acting as if you really love and/or respect someone can increase both your valuing them and their caring and positive actions toward you.  Both effects can increase love and respect.  Also. learning to understand the history, circumstances, and motivation behind aspects you don't value in them may help you feel better about those aspects. Helping them understand your history and circumstances may also help. Doing favors, expressing positive feelings, letting them have their way enough, and giving complements may also help."
           :HELP-LINKS
           '("developing_intimacy.htm")
           :PARENTS
           '(INTERPERSONAL HQ SCALE)))

(DEFCLASS INTSS5INDEP
          (INTERPERSONAL HQ SCALE)
          NIL
          (:DEFAULT-INITARGS
           :NAME-STRING
           "IntSS5Indep"
           :LABEL
           "IntSS5-Rel Independ"
           :SCALE-NAME
           "Relationship Independence-Autonomy"
           :DESCRIPTION
           "Autonomy within committed relationship.  Partners feeling encouraged and free to pursue own interests and friendships.  Each enjoy being alone, having partially separate funds, and believing they could be happy with another person if necessary. Value individual happiness over marriage per se. This scale correlated .215 with overall relationship success. ,.379 with overall happiness, .288 with low depression, .308 with low anxiety,.389 with low anger/aggression, and .296 with the health scale. (11 items)"
           :SCALE-GROUP-NAME
           "interpersonal"
           :SCALE-QUESTIONS
           '(INRLUNCH
             INRINHAP
             INRIGROW
             INRSAYWE
             INDIFGOA
             INFINDAN
             INENALON
             INOKALON
             INRHATEA
             INSEPINT
             INRMONEY
             INRBEALN
             INALCNST
             INRFREEH
             INRFRIEN)
           :MEAN-SCORE
           ".676"
           :STANDARD-DEVIATION
           ".144"
           :SAMPLE-N
           2862
           :NUM-QUESTIONS
           15
           :HELP-PRIORITY
           1
           :HELP-INFO
           "Learning to give each other the freedom to make choices, spend their time as they like, be alone when they want, and supporting their interests even when different are just a few imporant ways that partners can increase positive independent intimacy."
           :HELP-LINKS
           '("finding_mr_mrs_right.htm" "developing_intimacy.htm")
           :PARENTS
           '(INTERPERSONAL HQ SCALE)))

(DEFCLASS INTSS6POSSUP
          (INTERPERSONAL HQ SCALE)
          NIL
          (:DEFAULT-INITARGS
           :NAME-STRING
           "IntSS6PosSup"
           :LABEL
           "IntSS6-Positive Supportive Com"
           :SCALE-NAME
           "Positive, Supportive Communication"
           :DESCRIPTION
           "A key HQ scale. Supportive of partner even during disagreements, rarely use negative labels, exaggerations, threats, anger.  If one partner gets angry, other usually uses deescalating response. This scale correlated .272 with overall relationship success. ,.421 with overall happiness, .275 with low depression, .267 with low anxiety,.538 with low anger/aggression, and .307 with the health scale. Note the large correlation with low anger and aggression. (7 items)"
           :SCALE-GROUP-NAME
           "interpersonal"
           :SCALE-QUESTIONS
           '(CRNTHREA
             CRNNEGLB
             CREXAGGR
             CRANGANG
             CRIPRAIS
             CRANGRES
             INDIFDEC
             INSTSHLP)
           :MEAN-SCORE
           ".598"
           :STANDARD-DEVIATION
           ".175"
           :SAMPLE-N
           2603
           :NUM-QUESTIONS
           8
           :HELP-PRIORITY
           1
           :HELP-INFO
           "Increasing more complements and caring statements/actions and decreasing negative statements/actions can dramatically change a relationship. Try the help links below."
           :HELP-LINKS
           '("developing_intimacy.htm" "assertion_training.htm")
           :PARENTS
           '(INTERPERSONAL HQ SCALE)))

(DEFCLASS INTSS7COLLAB
          (INTERPERSONAL HQ SCALE)
          NIL
          (:DEFAULT-INITARGS
           :NAME-STRING
           "IntSS7Collab"
           :LABEL
           "IntSS7-Collaborative"
           :SCALE-NAME
           "Collaborative, Non-Manipulative Relationship"
           :DESCRIPTION
           "A key HQ scale. Neither partner manipulating or controlling.  Partners feel safe revealing weaknesses. Can work together or teach each other effectively. This scale correlated .317 with overall relationship success. ,.406 with overall happiness, .268 with low depression, .235 with low anxiety,.328 with low anger/aggression, and .271 with the health scale. (7 items)"
           :SCALE-GROUP-NAME
           "interpersonal"
           :SCALE-QUESTIONS
           '(CRTKLONG
             CRTEWEAK
             CRMANIPU
             CRREPRAI
             CRTEACH
             CRTLKMOR
             INTWKTOG)
           :MEAN-SCORE
           ".562"
           :STANDARD-DEVIATION
           ".177"
           :SAMPLE-N
           2542
           :NUM-QUESTIONS
           7
           :HELP-PRIORITY
           1
           :HELP-INFO
           ""
           :HELP-LINKS
           '("assertion_training.htm" "developing_intimacy.htm")
           :PARENTS
           '(INTERPERSONAL HQ SCALE)))

(DEFCLASS SCOLLEGE
          (ACAD-LEARNING SCALE)
          NIL
          (:DEFAULT-INITARGS
           :NAME-STRING
           "scollege"
           :LABEL
           "scollege info"
           :SCALE-NAME
           "College Student Info"
           :DESCRIPTION
           "Basic College Student Information"
           :SCALE-GROUP-NAME
           "ACAD-LEARNING"
           :SCALE-QUESTIONS
           '(STPARED
             STUCLASS
             STUDEGRE
             STUSEMES
             STMAJGPA
             STACADST
             STUCOLLE
             STUMAJOR
             STUSPECI
             STURESID
             STGPATRE
             STURESOURCE)
           :MEAN-SCORE
           0.6
           :STANDARD-DEVIATION
           0.15
           :SAMPLE-N
           1000
           :NUM-QUESTIONS
           6
           :HELP-PRIORITY
           1
           :HELP-INFO
           ""
           :HELP-LINKS
           NIL
           :PARENTS
           '(ACAD-LEARNING SCALE)))

(DEFCLASS SSL1CONFIDEFFICSTUDYTEST
          (ACAD-LEARNING SCALE)
          NIL
          (:DEFAULT-INITARGS
           :NAME-STRING
           "ssl1ConfidEfficStudyTest"
           :LABEL
           "ssl1-Confid efficient read-study-test"
           :SCALE-NAME
           "Time Efficient and Confident Study"
           :DESCRIPTION
           "A low score may indicate a learning disability. Think that tests and grades reflect abilities (versus smarter than test). Not need more time for tests and assignments. (8 items)"
           :SCALE-GROUP-NAME
           "acad-learning"
           :SCALE-QUESTIONS
           '(LRNUNASN
             LRNCOLMT
             LRNKNOWT
             LRNPROOF
             LRNRREAD
             LRNEFFIC
             LRNTESTT
             LRNTIMAS
             LRNTIRED
             LRNTANXI
             LRNSMART
             LRNAREAD
             LRNRSLOW)
           :MEAN-SCORE
           0.59
           :STANDARD-DEVIATION
           0.21
           :SAMPLE-N
           637
           :NUM-QUESTIONS
           13
           :HELP-PRIORITY
           1
           :HELP-INFO
           (FORMAT NIL
                   "Valuing your education and making it a top priority, giving adequate time to study, and learning good study skills are key academic success factors. Try the help-links below.~%~A"
                   *TIME-MAN)
           :HELP-LINKS
           '("academic.htm"
             "learning_disabilities.htm"
             "concentration.htm")
           :PARENTS
           '(ACAD-LEARNING SCALE)))

(DEFCLASS SSL1BCONFIDNOTAVOIDSTUDY
          (ACAD-LEARNING SCALE)
          NIL
          (:DEFAULT-INITARGS
           :NAME-STRING
           "ssl1bConfidNotAvoidStudy"
           :LABEL
           "ssl1bConfidNotAvoidStudy"
           :SCALE-NAME
           "High Study Motivation"
           :DESCRIPTION
           "Not Study Avoidant.  Not slower or more anxious about beginning assignments, reading, or writing than other students. Feel like college capable. (6 items)"
           :SCALE-GROUP-NAME
           "acad-learning"
           :SCALE-QUESTIONS
           '(LRNUNASN LRNCOLMT LRNTIRED LRNAREAD LRNPROOF)
           :MEAN-SCORE
           0.643
           :STANDARD-DEVIATION
           0.199
           :SAMPLE-N
           953
           :NUM-QUESTIONS
           5
           :HELP-PRIORITY
           1
           :HELP-INFO
           (FORMAT NIL
                   "Valuing your education and making it a top priority, giving adequate time to study, and learning good study skills are key academic success factors. Try the help-links below. ~%~A"
                   *NPROC15)
           :HELP-LINKS
           '("academic.htm"
             "time_management.htm"
             "procrastination.htm"
             "test_anxiety.htm")
           :PARENTS
           '(ACAD-LEARNING SCALE)))

(DEFCLASS SSL2SATISCAMPUSFACFRIENDSGRDES
          (ACAD-LEARNING SCALE)
          NIL
          (:DEFAULT-INITARGS
           :NAME-STRING
           "ssl2SatisCampusFacFriendsGrdes"
           :LABEL
           "ssl2SatisCampusFacFriendsGrdes"
           :SCALE-NAME
           "Positive Campus Life Attitudes"
           :DESCRIPTION
           "Look forward to classes, campus activities. Enjoy students and instructors. Happy with campus and grades. (8 items)"
           :SCALE-GROUP-NAME
           "acad-learning"
           :SCALE-QUESTIONS
           '(STULOOKF
             STULIKEI
             STUCOMFO
             STUFRIEN
             STUENJOY
             STUEACTR
             STHAPCOL
             STHAPGPA)
           :MEAN-SCORE
           0.682
           :STANDARD-DEVIATION
           0.2
           :SAMPLE-N
           1000
           :NUM-QUESTIONS
           8
           :HELP-PRIORITY
           0
           :HELP-INFO
           (FORMAT NIL
                   "Learning to enjoy your campus, studying, the instructors, and the other students are important ways to increase your motivation and academic success. However, many students focus too much on enjoying themselves and not enough on academics. ~%~A"
                   *CONNECT-COL)
           :HELP-LINKS
           '("conversational_skills.htm" "academic.htm")
           :PARENTS
           '(ACAD-LEARNING SCALE)))

(DEFCLASS SSL3WRITEREADSKILLS
          (ACAD-LEARNING SCALE)
          NIL
          (:DEFAULT-INITARGS
           :NAME-STRING
           "ssl3WriteReadSkills"
           :LABEL
           "ssl3WriteReadSkills"
           :SCALE-NAME
           "Writing, Reading Skills"
           :DESCRIPTION
           "Good at organizing papers and writing. Good reading skills. No vision problems (added due to factor analysis). (6 items)"
           :SCALE-GROUP-NAME
           "acad-learning"
           :SCALE-QUESTIONS
           '(LRNWRPAP LRNWRSKL LRNSEE LRNVOCAB LRNWRORG LRNSREAD)
           :MEAN-SCORE
           0.728
           :STANDARD-DEVIATION
           0.199
           :SAMPLE-N
           953
           :NUM-QUESTIONS
           6
           :HELP-PRIORITY
           1
           :HELP-INFO
           "Writing skills are important for success in almost all classes and for success in most professions--even those such as engineering or art. If you don't have good writing skills, try the link below. Reading skills are essential for academic and professional career success."
           :HELP-LINKS
           '("writing_help.htm")
           :PARENTS
           '(ACAD-LEARNING SCALE)))

(DEFCLASS SSL4BLDMENTALSTRUCT
          (ACAD-LEARNING SCALE)
          NIL
          (:DEFAULT-INITARGS
           :NAME-STRING
           "ssl4BldMentalStruct"
           :LABEL
           "ssl4-Build Mental Structure"
           :SCALE-NAME
           "Build Mental Structures"
           :DESCRIPTION
           "Study alone, struggle with difficult material, attempt to build own theories and associations. Make boring material interesting. (7 items)"
           :SCALE-GROUP-NAME
           "acad-learning"
           :SCALE-QUESTIONS
           '(LRNTXUND
             LRNINTER
             LRNROTE
             LRNASSOC
             LRNSTRUG
             LRNTHEOR
             LRNALONE)
           :MEAN-SCORE
           0.693
           :STANDARD-DEVIATION
           0.174
           :SAMPLE-N
           1112
           :NUM-QUESTIONS
           7
           :HELP-PRIORITY
           1
           :HELP-INFO
           "The essence of higher level learning is developing complex cognitive, mental structures.  Learning techniques for doing developing these mental structures is a primary way to increase intelligence, learning efficiency, and academic success."
           :HELP-LINKS
           '("LEARN.htm" "academic.htm")
           :PARENTS
           '(ACAD-LEARNING SCALE)))

(DEFCLASS SSL5BASICSTUDYSKILLS
          (ACAD-LEARNING SCALE)
          NIL
          (:DEFAULT-INITARGS
           :NAME-STRING
           "ssl5BasicStudySkills"
           :LABEL
           "ssl5-BasicSS-Undrstnd review map outline notes"
           :SCALE-NAME
           "Basic Study Skills"
           :DESCRIPTION
           (FORMAT NIL
                   "Preview, outline, review assignments; take good notes; good concentration; create visual map; review material at least 3 times for exam. (6 items)~%~A"
                   *COMP-MEM)
           :SCALE-GROUP-NAME
           "acad-learning"
           :SCALE-QUESTIONS
           '(ACMCONCE LRNTXOVE LRNTSREV LRNMAP LRNTXOUT LRNNOTES)
           :MEAN-SCORE
           0.61
           :STANDARD-DEVIATION
           0.196
           :SAMPLE-N
           814
           :NUM-QUESTIONS
           6
           :HELP-PRIORITY
           1
           :HELP-INFO
           "The essence of higher level learning is developing complex cognitive, mental structures.  Learning techniques for doing developing these mental structures is a primary way to increase intelligence, learning efficiency, and academic success."
           :HELP-LINKS
           '("LEARN.htm" "academic.htm")
           :PARENTS
           '(ACAD-LEARNING SCALE)))

(DEFCLASS SSL6SELFMANACADGOALS
          (ACAD-LEARNING SCALE)
          NIL
          (:DEFAULT-INITARGS
           :NAME-STRING
           "ssl6SelfmanAcadGoals"
           :LABEL
           "ssl6-Selfman-acad goal intention"
           :SCALE-NAME
           "Degree Motivation"
           :DESCRIPTION
           "Motivated and confident will get degree and won't drop out. Not confused about goals and confident of finances. (5 items)"
           :SCALE-GROUP-NAME
           "acad-learning"
           :SCALE-QUESTIONS
           '(ACMCOMPL ACMQUITC ACMFINAN ACMDEGRE STUCONFU ACMSELFS)
           :MEAN-SCORE
           0.745
           :STANDARD-DEVIATION
           0.206
           :SAMPLE-N
           819
           :NUM-QUESTIONS
           5
           :HELP-PRIORITY
           1
           :HELP-INFO
           (FORMAT NIL
                   "Motivation usually develops from commitment to a highly-valued goal. Clarifying your values and selecting goals that match them is a powerful way to improve motivation.  Choosing an academic major that you highly value and choose to persist through difficulties is a key way to improve academic success.~%~A"
                   *CAR-PLAN)
           :HELP-LINKS
           '("c15-carp.htm")
           :PARENTS
           '(ACAD-LEARNING SCALE)))

(DEFCLASS SSL7MATHSCIPRINC
          (ACAD-LEARNING SCALE)
          NIL
          (:DEFAULT-INITARGS
           :NAME-STRING
           "ssl7MathSciPrinc"
           :LABEL
           "ssl7-MathSci-principles interest skills"
           :SCALE-NAME
           "Learn Math-Science Principles"
           :DESCRIPTION
           "Enjoy and good in math, and seek to understand basic principles in math and science. (2 items)"
           :SCALE-GROUP-NAME
           "acad-learning"
           :SCALE-QUESTIONS
           '(LRNMATH LRNTEXTN)
           :MEAN-SCORE
           0.647
           :STANDARD-DEVIATION
           0.246
           :SAMPLE-N
           948
           :NUM-QUESTIONS
           2
           :HELP-PRIORITY
           1
           :HELP-INFO
           "Math is not only a basic skill for many majors and professions, it is valuable for personal finances and many other aspects of life."
           :HELP-LINKS
           '("LEARN.htm")
           :PARENTS
           '(ACAD-LEARNING SCALE)))

(DEFCLASS SSL8STUDYENVIR
          (ACAD-LEARNING SCALE)
          NIL
          (:DEFAULT-INITARGS
           :NAME-STRING
           "ssl8StudyEnvir"
           :LABEL
           "ssl8-Study home envir"
           :SCALE-NAME
           "Study Environment"
           :DESCRIPTION
           "Have good place and necessities to study and time available to study. Studying encouraged by family, friends with minimal conflicting demands. (3 items)"
           :SCALE-GROUP-NAME
           "acad-learning"
           :SCALE-QUESTIONS
           '(ACMEFAML ACMESOCS LRNESTUD)
           :MEAN-SCORE
           0.632
           :STANDARD-DEVIATION
           0.166
           :SAMPLE-N
           814
           :NUM-QUESTIONS
           3
           :HELP-PRIORITY
           1
           :HELP-INFO
           (FORMAT NIL
                   "Having a good study environment is important for academic success. Having a quiet, distraction-free place to study with the needed computer or other facilities is essential.  It is vital to establish such places that fit into your schedule. Assess what influences from family, friends, work, or other committments interfere with your sucess.  Assertively set priorities to study even at the cost of upsetting others if you want to succeed.~%~A"
                   *ENV-STUDY)
           :HELP-LINKS
           '("learning_&_study_skills.htm")
           :PARENTS
           '(ACAD-LEARNING SCALE)))

(DEFCLASS SSL9ATTENDHW
          (ACAD-LEARNING SCALE)
          NIL
          (:DEFAULT-INITARGS
           :NAME-STRING
           "ssl9AttendHW"
           :LABEL
           "ssl9-Attend-doHW"
           :SCALE-NAME
           "Attendance and Persistence"
           :DESCRIPTION
           "Attend classes, never drop classes, and manage study time well. (3 items)"
           :SCALE-GROUP-NAME
           "acad-learning"
           :SCALE-QUESTIONS
           '(ACMSTUDY ACMNDROP ACMATTEN)
           :MEAN-SCORE
           0.658
           :STANDARD-DEVIATION
           0.232
           :SAMPLE-N
           819
           :NUM-QUESTIONS
           3
           :HELP-PRIORITY
           1
           :HELP-INFO
           "Class attendance and concentrated study time are essential to academic success. If you aren't doing well in a class, first try assessing what the problems are and make a strong effort to correct them.  Get needed help."
           :HELP-LINKS
           '("academic.htm" "LEARN.htm")
           :PARENTS
           '(ACAD-LEARNING SCALE)))

(DEFCLASS SSL10MEMNOTANX
          (ACAD-LEARNING SCALE)
          NIL
          (:DEFAULT-INITARGS
           :NAME-STRING
           "ssl10MemNotAnx"
           :LABEL
           "ssl10-Memory-not anx"
           :SCALE-NAME
           "Efficient, Confident Learning"
           :DESCRIPTION
           "Efficient learning time use, good memory, relaxed during exams. (3 items)"
           :SCALE-GROUP-NAME
           "acad-learning"
           :SCALE-QUESTIONS
           '(LRNMEMOR LRNTENSE LRNSEFIC)
           :MEAN-SCORE
           0.593
           :STANDARD-DEVIATION
           0.222
           :SAMPLE-N
           953
           :NUM-QUESTIONS
           3
           :HELP-PRIORITY
           1
           :HELP-INFO
           "Try the help links below to improve your study efficiency, concentration, and reduce test-anxiety"
           :HELP-LINKS
           '("LEARN.htm"
             "learning_&_study_skills.htm"
             "test_anxiety.htm"
             "concentration.htm")
           :PARENTS
           '(ACAD-LEARNING SCALE)))

(DEFCLASS SSL11NOTNONACADMOT
          (ACAD-LEARNING SCALE)
          NIL
          (:DEFAULT-INITARGS
           :NAME-STRING
           "ssl11NotNonAcadMot"
           :LABEL
           "ssl11NotNonAcadMot"
           :SCALE-NAME
           "College Internal Motivation"
           :DESCRIPTION
           "Internal Motivation--to be in college. Internal motives versus pleasing parents, making money, or being confused why in school. Financially self-supporting. Internal motivation for accomplishing any task--including a college degree--is associated with greater success and happiness. (4 items)"
           :SCALE-GROUP-NAME
           "acad-learning"
           :SCALE-QUESTIONS
           '(STUEXTMO STUMONEYNEW STUCONFU STUFINDE STUCAREE)
           :MEAN-SCORE
           0.593
           :STANDARD-DEVIATION
           0.222
           :SAMPLE-N
           953
           :NUM-QUESTIONS
           5
           :HELP-PRIORITY
           1
           :HELP-INFO
           "If youu scored low, re-examine your values and priorities, ask what you can personally gain from college (eg. personal competence and growth, professional knowledge, and future career and personal satisifaction and success."
           :HELP-LINKS
           '("c15-carp.htm"
             "time_management.htm"
             "life_goals_and_meaning.htm")
           :PARENTS
           '(ACAD-LEARNING SCALE)))

(DEFCLASS SSL12STDYTMAVAIL
          (ACAD-LEARNING SCALE)
          NIL
          (:DEFAULT-INITARGS
           :NAME-STRING
           "ssl12StdyTmAvail"
           :LABEL
           "ssl12Study time available-acmtime"
           :SCALE-NAME
           "Study Time Available"
           :DESCRIPTION
           "Not too much time spent working, with family or friends, or in other activities. Studying and class attendence gets top priority."
           :SCALE-GROUP-NAME
           "acad-learning"
           :SCALE-QUESTIONS
           '(ACMTIME)
           :MEAN-SCORE
           0.52
           :STANDARD-DEVIATION
           0.257
           :SAMPLE-N
           819
           :NUM-QUESTIONS
           1
           :HELP-PRIORITY
           1
           :HELP-INFO
           "     ==> You may be working or involved with other activites too many hours per week--with the unit load you are carrying--to be successful in college.  Discuss this with your advisor "
           :HELP-LINKS
           '("time_management.htm" "procrastination.htm")
           :PARENTS
           '(ACAD-LEARNING SCALE)))

(DEFCLASS SSL13VERBALAPT
          (ACAD-LEARNING SCALE)
          NIL
          (:DEFAULT-INITARGS
           :NAME-STRING
           "ssl13VerbalApt"
           :LABEL
           "ssl13-Verbal aptitude test score=stuverba"
           :SCALE-NAME
           "Verbal Aptitude Score"
           :DESCRIPTION
           "Self-reported verbal aptitude score. (1 item)"
           :SCALE-GROUP-NAME
           "acad-learning"
           :SCALE-QUESTIONS
           '(STUVERBA)
           :MEAN-SCORE
           0.774
           :STANDARD-DEVIATION
           0.217
           :SAMPLE-N
           1003
           :NUM-QUESTIONS
           1
           :HELP-PRIORITY
           0
           :HELP-INFO
           "Aptitude has both genetic and learning componenets.  You can increase your verbal aptitude through taking appropriate classes, studying, and improving learning methods."
           :HELP-LINKS
           '("learning_&_study_skills.htm"
             "writing_help.htm"
             "LEARN.htm")
           :PARENTS
           '(ACAD-LEARNING SCALE)))

(DEFCLASS SSL14MATHAPT
          (ACAD-LEARNING SCALE)
          NIL
          (:DEFAULT-INITARGS
           :NAME-STRING
           "ssl14MathApt"
           :LABEL
           "ssl14-Math aptitude test score=stumatha"
           :SCALE-NAME
           "Math Aptitude Score"
           :DESCRIPTION
           "Self-reported mathematics aptitude score. (1 item)"
           :SCALE-GROUP-NAME
           "acad-learning"
           :SCALE-QUESTIONS
           '(STUMATHA)
           :MEAN-SCORE
           0.729
           :STANDARD-DEVIATION
           0.233
           :SAMPLE-N
           1003
           :NUM-QUESTIONS
           1
           :HELP-PRIORITY
           0
           :HELP-INFO
           "Aptitude has both genetic and learning componenets.  You can increase your verbal aptitude through taking appropriate classes, studying, and improving learning methods."
           :HELP-LINKS
           '("learning_&_study_skills.htm" "LEARN.htm")
           :PARENTS
           '(ACAD-LEARNING SCALE)))

(DEFCLASS SINCAR
          (CAREER-INTEREST SCALE)
          NIL
          (:DEFAULT-INITARGS
           :NAME-STRING
           "sincar"
           :LABEL
           "s-Career-major interest areas"
           :SCALE-NAME
           "Overall College Major Interests"
           :DESCRIPTION
           "General career interests. Many of the individual questions correspond to separate schools, colleges, or collections of academic majors at large universities. Look at your scores on individual questions to find potential majors or minors. A high score on this overall scale may indicate that you are a person with many high interests and that you may want a career that allows for challenging mental activities and some variety over time. 
     NOTE: This test is meant only to suggest some possible academic majors you may show interest in, it is NOT MEANT TO BE AN ALL INCLUSIVE LIST. You should explore the complete catalog of majors at your univesity or college--especially if you have specialized interests or interests not represented in this scale. You might also consider a dual major or special major tailored to your interests."
           :SCALE-GROUP-NAME
           "career-interest"
           :SCALE-QUESTIONS
           '(CAR1CARG
             CAR1CARP
             CAR1INAT
             CARIBIOH
             CARISOCS
             CARIHELP
             CARIMATH
             CARIMED
             CARIWRIT
             CARIFNAR
             CARIETHN
             CARILEAR
             CARIEXPE
             CARIGENE
             CARINOIN
             CARILIT
             CARIRECP
             CARIPOLI
             CARIMIL6
             CARIMANU
             CARILANG
             CARIPHIL
             CARIBUSI
             CARIENGI
             CARIFAMC
             CARIWOMA
             CARICOM8
             CARINTE0)
           :MEAN-SCORE
           NIL
           :STANDARD-DEVIATION
           NIL
           :SAMPLE-N
           NIL
           :NUM-QUESTIONS
           29
           :HELP-PRIORITY
           1
           :HELP-INFO
           *CAR-PLAN
           :HELP-LINKS
           '("c15-carp.htm")
           :PARENTS
           '(CAREER-INTEREST SCALE)))

(DEFCLASS SINBUS
          (CAREER-INTEREST SCALE)
          NIL
          (:DEFAULT-INITARGS
           :NAME-STRING
           "sinbus"
           :LABEL
           "s-Business interests"
           :SCALE-NAME
           "Business-Related Interests"
           :DESCRIPTION
           "Areas of interest within the overall category."
           :SCALE-GROUP-NAME
           "career-interest"
           :SCALE-QUESTIONS
           '(CARIBMAR
             CARIBMAN
             CARIBINF
             CARIBFIN
             CARIBHRD
             CARIBACC
             CARISPBU)
           :MEAN-SCORE
           NIL
           :STANDARD-DEVIATION
           NIL
           :SAMPLE-N
           NIL
           :NUM-QUESTIONS
           7
           :HELP-PRIORITY
           NIL
           :HELP-INFO
           "Go to help-link below and/or see help information for College Major Interest Test: Overall Interests Scale"
           :HELP-LINKS
           '("c15-carp.htm")
           :PARENTS
           '(CAREER-INTEREST SCALE)))

(DEFCLASS SINENGR
          (CAREER-INTEREST SCALE)
          NIL
          (:DEFAULT-INITARGS
           :NAME-STRING
           "sinengr"
           :LABEL
           "s-Engineering major interests"
           :SCALE-NAME
           "Engineering-Related Interests"
           :DESCRIPTION
           "Areas of interest within the overall category."
           :SCALE-GROUP-NAME
           "career-interest"
           :SCALE-QUESTIONS
           '(CARIEENG
             CARIME
             CARICHE2
             CARICIVE
             CARIAERO
             CARIEITE
             CARICOM9
             CARIBCOM)
           :MEAN-SCORE
           NIL
           :STANDARD-DEVIATION
           NIL
           :SAMPLE-N
           NIL
           :NUM-QUESTIONS
           8
           :HELP-PRIORITY
           NIL
           :HELP-INFO
           "Go to help-link below and/or see help information for College Major Interest Test: Overall Interests Scale"
           :HELP-LINKS
           '("c15-carp.htm")
           :PARENTS
           '(CAREER-INTEREST SCALE)))

(DEFCLASS SINFINEA
          (CAREER-INTEREST SCALE)
          NIL
          (:DEFAULT-INITARGS
           :NAME-STRING
           "sinfinea"
           :LABEL
           "s-Fine art major interests"
           :SCALE-NAME
           "Fine Arts-Related Interests"
           :DESCRIPTION
           "Areas of interest within the overall category."
           :SCALE-GROUP-NAME
           "career-interest"
           :SCALE-QUESTIONS
           '(CARIMUSI
             CARIART
             CARIDRAM
             CARIDANC
             CARIPHOT
             CARINDDE
             CARINTE1)
           :MEAN-SCORE
           NIL
           :STANDARD-DEVIATION
           NIL
           :SAMPLE-N
           NIL
           :NUM-QUESTIONS
           7
           :HELP-PRIORITY
           NIL
           :HELP-INFO
           "Go to help-link below and/or see help information for College Major Interest Test: Overall Interests Scale"
           :HELP-LINKS
           '("c15-carp.htm")
           :PARENTS
           '(CAREER-INTEREST SCALE)))

(DEFCLASS SINHELP
          (CAREER-INTEREST SCALE)
          NIL
          (:DEFAULT-INITARGS
           :NAME-STRING
           "sinhelp"
           :LABEL
           "s-Helping profession major interests"
           :SCALE-NAME
           "Helping, Teaching, Counseling-Related Interests"
           :DESCRIPTION
           "Areas of interest within the overall category."
           :SCALE-GROUP-NAME
           "career-interest"
           :SCALE-QUESTIONS
           '(CARITEAC
             CARICOUN
             CARIEDUC
             CARIHADU
             CARIHCHI
             CARITVOC
             CARICOM4
             CARSOCWO
             CARK12TE
             CARMINIS)
           :MEAN-SCORE
           NIL
           :STANDARD-DEVIATION
           NIL
           :SAMPLE-N
           NIL
           :NUM-QUESTIONS
           10
           :HELP-PRIORITY
           NIL
           :HELP-INFO
           "Go to help-link below and/or see help information for College Major Interest Test: Overall Interests Scale"
           :HELP-LINKS
           '("c15-carp.htm")
           :PARENTS
           '(CAREER-INTEREST SCALE)))

(DEFCLASS SINLANG
          (CAREER-INTEREST SCALE)
          NIL
          (:DEFAULT-INITARGS
           :NAME-STRING
           "sinlang"
           :LABEL
           "s-Language major interests"
           :SCALE-NAME
           "Language-Related Interests"
           :DESCRIPTION
           "Areas of interest within the overall category."
           :SCALE-GROUP-NAME
           "career-interest"
           :SCALE-QUESTIONS
           '(CARIFREN
             CARIITAL
             CARIGERM
             CARIRUSS
             CARIJAPN
             CARICHIN
             CARICLAS
             CARISPAN
             CARIPOR)
           :MEAN-SCORE
           NIL
           :STANDARD-DEVIATION
           NIL
           :SAMPLE-N
           NIL
           :NUM-QUESTIONS
           9
           :HELP-PRIORITY
           NIL
           :HELP-INFO
           "Go to help-link below and/or see help information for College Major Interest Test: Overall Interests Scale"
           :HELP-LINKS
           '("c15-carp.htm")
           :PARENTS
           '(CAREER-INTEREST SCALE)))

(DEFCLASS SINMED
          (CAREER-INTEREST SCALE)
          NIL
          (:DEFAULT-INITARGS
           :NAME-STRING
           "sinmed"
           :LABEL
           "s-Medical major interests"
           :SCALE-NAME
           "Medically-Related Interests Scale"
           :DESCRIPTION
           "Areas of interest within the overall category."
           :SCALE-GROUP-NAME
           "career-interest"
           :SCALE-QUESTIONS
           '(CARIMD
             CARINURS
             CARIPTHE
             CARIHEAL
             CARIKINE
             CARICOM5
             CARMEDTE)
           :MEAN-SCORE
           NIL
           :STANDARD-DEVIATION
           NIL
           :SAMPLE-N
           NIL
           :NUM-QUESTIONS
           7
           :HELP-PRIORITY
           NIL
           :HELP-INFO
           "Go to help-link below and/or see help information for College Major Interest Test: Overall Interests Scale"
           :HELP-LINKS
           '("c15-carp.htm")
           :PARENTS
           '(CAREER-INTEREST SCALE)))

(DEFCLASS SINMILTC
          (CAREER-INTEREST SCALE)
          NIL
          (:DEFAULT-INITARGS
           :NAME-STRING
           "sinmiltc"
           :LABEL
           "s-Law, Milit Interests"
           :SCALE-NAME
           "Law, Law Enforcement, or Military-Related Interests"
           :DESCRIPTION
           "Areas of interest within the overall category."
           :SCALE-GROUP-NAME
           "career-interest"
           :SCALE-QUESTIONS
           '(CARILAW CARICRIM CARIMIL7)
           :MEAN-SCORE
           NIL
           :STANDARD-DEVIATION
           NIL
           :SAMPLE-N
           NIL
           :NUM-QUESTIONS
           3
           :HELP-PRIORITY
           NIL
           :HELP-INFO
           "Go to help-link below and/or see help information for College Major Interest Test: Overall Interests Scale"
           :HELP-LINKS
           '("c15-carp.htm")
           :PARENTS
           '(CAREER-INTEREST SCALE)))

(DEFCLASS INNATSCI
          (CAREER-INTEREST SCALE)
          NIL
          (:DEFAULT-INITARGS
           :NAME-STRING
           "inNatSci"
           :LABEL
           "s-Nat Sci Interests"
           :SCALE-NAME
           "Natural Science-Related Interests"
           :DESCRIPTION
           "Areas of interest within the overall category."
           :SCALE-GROUP-NAME
           "career-interest"
           :SCALE-QUESTIONS
           '(CARICHE3 CARIPHYS CARIGEOL CARIASTR CARIENVI)
           :MEAN-SCORE
           NIL
           :STANDARD-DEVIATION
           NIL
           :SAMPLE-N
           NIL
           :NUM-QUESTIONS
           5
           :HELP-PRIORITY
           NIL
           :HELP-INFO
           "Go to help-link below and/or see help information for College Major Interest Test: Overall Interests Scale"
           :HELP-LINKS
           '("c15-carp.htm")
           :PARENTS
           '(CAREER-INTEREST SCALE)))

(DEFCLASS SINSOCSC
          (CAREER-INTEREST SCALE)
          NIL
          (:DEFAULT-INITARGS
           :NAME-STRING
           "sinsocsc"
           :LABEL
           "s-Social science major interests"
           :SCALE-NAME
           "Social Science-Related Interests"
           :DESCRIPTION
           "Areas of interest within the overall category."
           :SCALE-GROUP-NAME
           "career-interest"
           :SCALE-QUESTIONS
           '(CARIPSYC
             CARISOCO
             CARIHIST
             CARIPOLS
             CARIECON
             CARGEOGR
             CARIAMER
             CARIANTR
             CARIANTH
             CARISPEE
             CARLING)
           :MEAN-SCORE
           NIL
           :STANDARD-DEVIATION
           NIL
           :SAMPLE-N
           NIL
           :NUM-QUESTIONS
           11
           :HELP-PRIORITY
           NIL
           :HELP-INFO
           "Go to help-link below and/or see help information for College Major Interest Test: Overall Interests Scale"
           :HELP-LINKS
           '("c15-carp.htm")
           :PARENTS
           '(CAREER-INTEREST SCALE)))

(DEFCLASS SINWOETH
          (CAREER-INTEREST SCALE)
          NIL
          (:DEFAULT-INITARGS
           :NAME-STRING
           "sinwoeth"
           :LABEL
           "s-Womens or ethnics studies mj int"
           :SCALE-NAME
           "Women and Ethnic Group-Related Interests"
           :DESCRIPTION
           "Areas of interest within the overall category."
           :SCALE-GROUP-NAME
           "career-interest"
           :SCALE-QUESTIONS
           '(CARIAIST CARIBSTU CARIMEXA CARIASAM CARIAMST CARIWSTU)
           :MEAN-SCORE
           NIL
           :STANDARD-DEVIATION
           NIL
           :SAMPLE-N
           NIL
           :NUM-QUESTIONS
           6
           :HELP-PRIORITY
           NIL
           :HELP-INFO
           "Go to help-link below and/or see help information for College Major Interest Test: Overall Interests Scale"
           :HELP-LINKS
           '("c15-carp.htm")
           :PARENTS
           '(CAREER-INTEREST SCALE)))

(DEFCLASS SINWRITE
          (CAREER-INTEREST SCALE)
          NIL
          (:DEFAULT-INITARGS
           :NAME-STRING
           "sinwrite"
           :LABEL
           "s-Writing major interests"
           :SCALE-NAME
           "Writing and Media-Related Interests"
           :DESCRIPTION
           "Areas of interest within the overall category."
           :SCALE-GROUP-NAME
           "career-interest"
           :SCALE-QUESTIONS
           '(CARIENGL CARIJOUR)
           :MEAN-SCORE
           NIL
           :STANDARD-DEVIATION
           NIL
           :SAMPLE-N
           NIL
           :NUM-QUESTIONS
           2
           :HELP-PRIORITY
           NIL
           :HELP-INFO
           "Go to help-link below and/or see help information for College Major Interest Test: Overall Interests Scale"
           :HELP-LINKS
           '("c15-carp.htm")
           :PARENTS
           '(CAREER-INTEREST SCALE)))

(DEFCLASS SEHAPPY
          (OUTCOME SCALE)
          NIL
          (:DEFAULT-INITARGS
           :NAME-STRING
           "sehappy"
           :LABEL
           "s-Overall happiness"
           :SCALE-NAME
           "Overall Happiness"
           :DESCRIPTION
           "Overall happiness in various life areas including home, career, family, romance, recreation, health, and direct questions about overall happiness for recent past, current, and expected future time periods (15items). An overall low score may indicate high unhappiness and depression. Check individual questions to identify areas of high stress, avoidance, and/or need for improvement or help. (15 items)"
           :SCALE-GROUP-NAME
           "outcome"
           :SCALE-QUESTIONS
           '(HAPCLFRN
             HAPCARNW
             HAPCARFU
             HAPFRIEN
             HAPAREA
             HAPWKREL
             HAPPE
             HAPRECRE
             HAPSEXRE
             HAPFAMIL
             HAPSELFD
             HAPSPIRI
             HAPYEAR
             HAP3YEAR
             HAPLIFE
             HAPEXPEC)
           :MEAN-SCORE
           ".600"
           :STANDARD-DEVIATION
           ".184"
           :SAMPLE-N
           3185
           :NUM-QUESTIONS
           15
           :HELP-PRIORITY
           2.0
           :HELP-INFO
           "Check areas where you are not scoring high. Also, check your HQ score. SHAQ factors such as self-esteem, emotional coping, self-management, interpersonal skills, etc. Use the helplinks to improve areas that can increase your happiness."
           :HELP-LINKS
           '("my-peek.htm" "index.html" "hhapchkl.htm")
           :PARENTS
           '(OUTCOME SCALE)))

(DEFCLASS SRDEPRES
          (OUTCOME SCALE)
          NIL
          (:DEFAULT-INITARGS
           :NAME-STRING
           "srdepres"
           :LABEL
           "s-LoDepression outcomes"
           :SCALE-NAME
           "Low Depression Symptoms and Treatment"
           :DESCRIPTION
           "Items were developed from the DSM-IV depression diagnosis criteria and written as self-assessment items.  The scale also asks the amount of psychotherapy and medication taken for depression. It was scored in reverse so that high scores would mean low depression. Reverse scored. (6 items)"
           :SCALE-GROUP-NAME
           "outcome"
           :SCALE-QUESTIONS
           '(RDEPFEEL RDEPTHOU RDEPDYSS RDEPMAJS RDEPMEDS RDEPTHER)
           :MEAN-SCORE
           ".599"
           :STANDARD-DEVIATION
           ".225"
           :SAMPLE-N
           2819
           :NUM-QUESTIONS
           6
           :HELP-PRIORITY
           2.0
           :HELP-INFO
           "If you are suffering from too much depression, then we strongly advise you to make learning how to find happiness and cope with depression and its causes a high priority in your life. Alternatives include reading self-help materials, learning from others who have learned to overcome problems similar to yours, and seeking professional help."
           :HELP-LINKS
           '("depression.htm" "my-peek.htm" "h85cdepr.htm")
           :PARENTS
           '(OUTCOME SCALE)))

(DEFCLASS SRANXIET
          (OUTCOME SCALE)
          NIL
          (:DEFAULT-INITARGS
           :NAME-STRING
           "sranxiet"
           :LABEL
           "s-LoAnxiety symp+treat outcomes"
           :SCALE-NAME
           "Anxiety Symptoms and Treatment"
           :DESCRIPTION
           "Items were developed from the DSM-IV anxiety disorder diagnosis criteria and written as self-assessment items. The scale also asks the amount of psychotherapy and medication taken for anxiety-related disorders. Included were phobias and some obsession and compulsion-related items. Reverse scored. (9 items)"
           :SCALE-GROUP-NAME
           "outcome"
           :SCALE-QUESTIONS
           '(RANXPERF
             RANXALLT
             RANXPSTD
             RANXSOCI
             RANXOCD
             RANXPHOB
             RANXPANI
             RANXTHER
             RANXMEDS)
           :MEAN-SCORE
           ".719"
           :STANDARD-DEVIATION
           ".183"
           :SAMPLE-N
           3298
           :NUM-QUESTIONS
           9
           :HELP-PRIORITY
           2.0
           :HELP-INFO
           "If you are suffering from too much anxiety or anxiety-related disorders, then we strongly advise you to make learning how to find happiness and cope with anxiety and its causes a high priority in your life. Alternatives include reading self-help materials, learning from others who have learned to overcome problems similar to yours, and seeking professional help."
           :HELP-LINKS
           '("anxiety.htm" "my-peek.htm" "h8hf2.htm")
           :PARENTS
           '(OUTCOME SCALE)))

(DEFCLASS SRANGAGG
          (OUTCOME SCALE)
          NIL
          (:DEFAULT-INITARGS
           :NAME-STRING
           "srangagg"
           :LABEL
           "s-LoAnger-aggression outcomes"
           :SCALE-NAME
           "Low Anger-Aggression"
           :DESCRIPTION
           "Items include frequency of losing temper, name-calling/yelling, aggressive acts, and thoughts about getting even. Anger-related problems--such as aggressive,  threatening, dominating, violent, or abusive behavior. Often accompanied by feelings of loneliness, being unloved, not being understood, or persecution. Reverse scored. (5 items)"
           :SCALE-GROUP-NAME
           "outcome"
           :SCALE-QUESTIONS
           '(RANGFEEL RANGYELL RANGDOMI RANGTHOU RANGDEST)
           :MEAN-SCORE
           ".772"
           :STANDARD-DEVIATION
           ".163"
           :SAMPLE-N
           3262
           :NUM-QUESTIONS
           5
           :HELP-PRIORITY
           2.0
           :HELP-INFO
           "If you have any of these problems, then we strongly advise you to make a high priority of reducing your anger and replacing aggressive behavior with assertive, diplomatic, and understanding behavior. Learn to realize that every moment of anger is a moment less of being happy and that every time that you behave aggressively toward someone, it may reduce their caring or respect for you--leading eventually to their rejecting you. You may be blind to how much your hostility or dominance is at the root of many other oproblems that seem unrelated to anger (such as problems in relationships, career advancement, etc.).  Try learning how to find peace and happiness and make coping with anger and hostile behavior a top priority in your life. Use our links to interpersonal skills and assertive conflict resolution as a start."
           :HELP-LINKS
           '("b-anger.htm" "my-peek.htm")
           :PARENTS
           '(OUTCOME SCALE)))

(DEFCLASS SRELHLTH
          (OUTCOME SCALE)
          NIL
          (:DEFAULT-INITARGS
           :NAME-STRING
           "srelhlth"
           :LABEL
           "s-Health outcomes"
           :SCALE-NAME
           "Physical Health"
           :DESCRIPTION
           "General indicators of your physical health.  Frequency of illness, alcohol and drug use, weight, and conditioning estimates. (6 items)"
           :SCALE-GROUP-NAME
           "outcome"
           :SCALE-QUESTIONS
           '(RHLFREQI RHLALCOH RHLSMOKE RHLDRUGS RHLPHYSI RHLWEIGH)
           :MEAN-SCORE
           ".702"
           :STANDARD-DEVIATION
           ".133"
           :SAMPLE-N
           3081
           :NUM-QUESTIONS
           6
           :HELP-PRIORITY
           1
           :HELP-INFO
           "Research has conistently shown that your daily eating, exercise, addicitve, stress-related, and other health-related habits can have a huge effect on your health over a period of years.  Moderate to vigorous daily exercise, good nutrition, not smoking or using drugs, 7-8 hours sleep/night, keeping weight down, having a minimally stressful, happy life, and not engaging is physically risky activities have all been shown to be important for long-term physical health. If you are unsure of what is healthy exercise, nutrician, etc., begin reading to find out.  Your life may depend upon it."
           :HELP-LINKS
           '("health tips.htm")
           :PARENTS
           '(OUTCOME SCALE)))

(DEFCLASS SRPEOPLE
          (OUTCOME SCALE)
          NIL
          (:DEFAULT-INITARGS
           :NAME-STRING
           "srpeople"
           :LABEL
           "s-Relationship outcomes"
           :SCALE-NAME
           "Interpersonal Relations"
           :DESCRIPTION
           "Number and quality of friends, happiness in marital-like relationship, and work relationships. (7 items) "
           :SCALE-GROUP-NAME
           "outcome"
           :SCALE-QUESTIONS
           '(RPEHAPFR
             RPEHMARR
             RPENETW
             RPECLFRN
             RPENUMFR
             RPENUMCL
             RPECOMMI)
           :MEAN-SCORE
           ".521"
           :STANDARD-DEVIATION
           ".153"
           :SAMPLE-N
           2673
           :NUM-QUESTIONS
           7
           :HELP-PRIORITY
           1.5
           :HELP-INFO
           "If you haven't had the kind of romantic, friendship, family, or professional relationships you would prefer, then it is possible to learn how to improve your interpersonal skills and change your habits to make a even dramatic improvements. Many others have had remarkable success by setting goals to improve their relationships then reading, observing successful role-models, taking classes or counseling, and/or practicing new ways of thinking and acting."
           :HELP-LINKS
           '("conversational_skills.htm"
             "assertion_training.htm"
             "overcoming_loneliness.htm")
           :PARENTS
           '(OUTCOME SCALE)))

(DEFCLASS SSWVGRATPT
          (SWORLDVIEW SUBSCALE)
          NIL
          (:DEFAULT-INITARGS
           :NAME-STRING
           "sswvgratpt"
           :LABEL
           "sswv-Grateful  abundance beliefs"
           :SCALE-NAME
           "Grateful Abundance Beliefs"
           :DESCRIPTION
           "High gratitude for life and whatever one has; high proportion of positive thoughts. (5 items). Had best correlation with overall happiness of any scale (0.722). Also correlated 0.574 with low depression, 0.445 with low anxiety, and 0.356 with low anger/aggression."
           :SCALE-QUESTIONS
           '(TBVGRATI WOVABUND WOVGRATE)
           :MEAN-SCORE
           ".668"
           :STANDARD-DEVIATION
           ".198"
           :SAMPLE-N
           3200
           :NUM-QUESTIONS
           5
           :HELP-PRIORITY
           1
           :HELP-INFO
           "Having low expectations of what you will receive and being grateful for your life and all you do receive is a strong underlying basis for positive thinking and happiness."
           :HELP-LINKS
           '("h44defic.htm" "h4world.htm" "h45strea.htm")
           :PARENTS
           '(SWORLDVIEW SUBSCALE)))

(DEFCLASS SSWVOPTIMS
          (SWORLDVIEW SUBSCALE)
          NIL
          (:DEFAULT-INITARGS
           :NAME-STRING
           "sswvoptims"
           :LABEL
           "sswv-Optimism about self and world"
           :SCALE-NAME
           "Optimism"
           :DESCRIPTION
           "Optimism about self and the world. Good forces in control. Optimism increases motivation, energy, and positive thoughts. (3 items). Correlated .543with happiness, .354 with low depression, .284 with low anxiety, and .265 with low anger/aggression."
           :SCALE-GROUP-NAME
           "sworldview"
           :SCALE-QUESTIONS
           '(WOVPROGR WOVGOODF WOVMYLIF WOVPOSTH)
           :MEAN-SCORE
           "641"
           :STANDARD-DEVIATION
           ".196"
           :SAMPLE-N
           3200
           :NUM-QUESTIONS
           4
           :HELP-PRIORITY
           1
           :HELP-INFO
           "Believing that the world, your local world, and your personal life are under the control of positive forces moving in a positive direction is another basic belief system that increases happiness and success."
           :HELP-LINKS
           '("h4world.htm")
           :PARENTS
           '(SWORLDVIEW SUBSCALE)))

(DEFCLASS SSWVENTIT
          (SWORLDVIEW SUBSCALE)
          NIL
          (:DEFAULT-INITARGS
           :NAME-STRING
           "sswventit"
           :LABEL
           "sswv-NotEntitlement beliefs"
           :SCALE-NAME
           "No Entitlment Beliefs"
           :DESCRIPTION
           "Not believing that person owed either the basic necessities or a high standard of living. Don't feel entitled to anything in life. Belief all we receive is a bonus.. (2 items). Correlated .157 with happiness, 164, with low depression,.185 with low anxiety, and  .266 with low anger/aggression."
           :SCALE-GROUP-NAME
           "sworldview"
           :SCALE-QUESTIONS
           '(TBVENTIT WOVNFAIR WOVINJUR WOVENTIT)
           :MEAN-SCORE
           ".496"
           :STANDARD-DEVIATION
           ".208"
           :SAMPLE-N
           3162
           :NUM-QUESTIONS
           0
           :HELP-PRIORITY
           1
           :HELP-INFO
           "People "
           :HELP-LINKS
           '("h44defic.htm")
           :PARENTS
           '(SWORLDVIEW SUBSCALE)))

(DEFCLASS SSSWNONCONT
          (STBSLFWO SUBSCALE)
          NIL
          (:DEFAULT-INITARGS
           :NAME-STRING
           "ssswNonCont"
           :LABEL
           "sssw-Not conting or dysf SelfWorth"
           :SCALE-NAME
           "Unconditional Self-Worth"
           :DESCRIPTION
           "Self-worth based upon being human and internal qualities--not based upon being liked, strong, the best, living by the rules, being a winner, or any other conditional or external factor. (6 items). "
           :SCALE-GROUP-NAME
           "stbslfwo"
           :SCALE-QUESTIONS
           '(TBVOTHFI TBVLIKED TBVWEAK TBVBEST TBVRULES TBVWINNE)
           :MEAN-SCORE
           ".655"
           :STANDARD-DEVIATION
           "165"
           :SAMPLE-N
           3246
           :NUM-QUESTIONS
           6
           :HELP-PRIORITY
           1
           :HELP-INFO
           "Improving unconditional self-worth can reduced anxiety about what others think of you, about being successful, or many other frequent causes of anxiety and depression."
           :HELP-LINKS
           '("h5self.htm")
           :PARENTS
           '(STBSLFWO SUBSCALE)))

(DEFCLASS SSSWHAPALLGRAT
          (STBSLFWO SUBSCALE)
          NIL
          (:DEFAULT-INITARGS
           :NAME-STRING
           "ssswHapAllGrat"
           :LABEL
           "sssw-HigherSelf--MaxLoveHapBal-Grat"
           :SCALE-NAME
           "Balanced Love-Happiness Priorities"
           :DESCRIPTION
           "Value love and happiness for self and all others, gratitude, and make decisions to maximize happiness balancing it across time and people.(5 items). Correlated .567 with happiness, .328, with low depression,.247 with low anxiety, and  .360 with low anger/aggression."
           :SCALE-GROUP-NAME
           "stbslfwo"
           :SCALE-QUESTIONS
           '(TBVBALAN TBVHAPCA TBVGRATI THVUNCON THVSELFW)
           :MEAN-SCORE
           ".573"
           :STANDARD-DEVIATION
           ".172"
           :SAMPLE-N
           3246
           :NUM-QUESTIONS
           5
           :HELP-PRIORITY
           1
           :HELP-INFO
           "Self-worth is loving and accepting yourself and others.  Valuing happiness and health are an important aspect of self-worth. See help-links."
           :HELP-LINKS
           '("h1hap.htm" "h5self.htm")
           :PARENTS
           '(STBSLFWO SUBSCALE)))

(DEFCLASS SSSWACALLSELF
          (STBSLFWO SUBSCALE)
          NIL
          (:DEFAULT-INITARGS
           :NAME-STRING
           "ssswAcAllSelf"
           :LABEL
           "sssw-Accept all of self  1"
           :SCALE-NAME
           "Self-Acceptance"
           :DESCRIPTION
           "Accepting and valuing all parts of oneself including dysfunctional parts and parts not consistent with overall self-image, values, etc. even though may be trying to change them. Not anger at self parts or repression of them.(1 item). "
           :SCALE-GROUP-NAME
           "stbslfwo"
           :SCALE-QUESTIONS
           '(THVSELFA)
           :MEAN-SCORE
           ".343"
           :STANDARD-DEVIATION
           ".216"
           :SAMPLE-N
           3246
           :NUM-QUESTIONS
           1
           :HELP-PRIORITY
           1
           :HELP-INFO
           "Freud first demonstrated--and psychology has confirmed--that rejected or repressed parts of yourself can cause internal conflict, negative emotions, and dysfunctional behavior. Use help-links to learn methods for accepting all parts of yourself."
           :HELP-LINKS
           '("h53accep.htm" "h32decis.htm" "h23explo.htm")
           :PARENTS
           '(STBSLFWO SUBSCALE)))

(DEFCLASS SSIEAUTONY
          (SIECONTR SUBSCALE)
          NIL
          (:DEFAULT-INITARGS
           :NAME-STRING
           "ssieautony"
           :LABEL
           "ssie Autonomy  independence"
           :SCALE-NAME
           "Relationship Autonomy"
           :DESCRIPTION
           "Autonomy, independence from being controlled by others.  Belief in taking care of self, controlling own happiness, not dependent upon one person (3 items). Correlated .553 with happiness, .438, with low depression,.434 with low anxiety, and  .367 with low anger/aggression."
           :SCALE-GROUP-NAME
           "siecontr"
           :SCALE-QUESTIONS
           '(IECSELFS IECICONT IECDEPEN)
           :MEAN-SCORE
           ".702"
           :STANDARD-DEVIATION
           ".211"
           :SAMPLE-N
           2690
           :NUM-QUESTIONS
           3
           :HELP-PRIORITY
           1
           :HELP-INFO
           "Being internally controlled by your strong values, beliefs, and habits/skills helps one persist in the face of negativism, disapproval, and rejection by others.  The mature autonomous person carefully considers the opinions, desires, and effects on others; then makes the final decision considering those factors along with his/her own perspective. Integrity and taking ultimate responsibility for his/her own acts is normally a top value for the autonomous person."
           :HELP-LINKS
           '("h6intern.htm")
           :PARENTS
           '(SIECONTR SUBSCALE)))

(DEFCLASS SSIENCODEP
          (SIECONTR SUBSCALE)
          NIL
          (:DEFAULT-INITARGS
           :NAME-STRING
           "ssiencodep"
           :LABEL
           "ssie-Not codependent"
           :SCALE-NAME
           "Not Codependent"
           :DESCRIPTION
           "Not codependent or taken advantage of by others you help. Not care for others and neglect self or give too much more than others do for you. (3 items)Correlated .213 with happiness, .230, with low depression,.283 with low anxiety, and  .243 with low anger/aggression."
           :SCALE-GROUP-NAME
           "siecontr"
           :SCALE-QUESTIONS
           '(IECCOFEE IECCOPRB)
           :MEAN-SCORE
           ".538"
           :STANDARD-DEVIATION
           ".238"
           :SAMPLE-N
           2690
           :NUM-QUESTIONS
           2
           :HELP-PRIORITY
           1
           :HELP-INFO
           "Some caring people believe that they should put their own needs below that of others, give so much trying to help people who have dysfunctional or addictive habits that they mar their own lives."
           :HELP-LINKS
           '("h6intern.htm")
           :PARENTS
           '(SIECONTR SUBSCALE)))

(DEFCLASS SSIENOTHER
          (SIECONTR SUBSCALE)
          NIL
          (:DEFAULT-INITARGS
           :NAME-STRING
           "ssienother"
           :LABEL
           "ssie-Not care-provider for other"
           :SCALE-NAME
           "Control Own Emotions Beliefs"
           :DESCRIPTION
           "Belief that person has primary/direct control of own happiness and other emotions--not controlled by primarily heredity, environment, or others (2 Items)."
           :SCALE-GROUP-NAME
           "siecontr"
           :SCALE-QUESTIONS
           '(IECPEOPL IECGENET)
           :MEAN-SCORE
           ".565"
           :STANDARD-DEVIATION
           ".214"
           :SAMPLE-N
           2690
           :NUM-QUESTIONS
           2
           :HELP-PRIORITY
           1
           :HELP-INFO
           "The primary direct cause of emotions is one's cognitive system--values, beliefs, thoughts, and perceptions. External events interact with those mental structures to produce emotions.  Learn how to change both internal and external sources of happiness to change your emotions."
           :HELP-LINKS
           '("h2choose.htm")
           :PARENTS
           '(SIECONTR SUBSCALE)))

(DEFCLASS SSB2ETHIC
          (SETHBEL SUBSCALE)
          NIL
          (:DEFAULT-INITARGS
           :NAME-STRING
           "ssb2Ethic"
           :LABEL
           "ssb2-Ethics grounded in abstract absolutes"
           :SCALE-NAME
           "Abstract Absolutes-Grounded Ethics"
           :DESCRIPTION
           "Ethics based upon abstract absolutes versus relativism. Philosophical beliefs guide daily life. Believe we are ethically responsible even if bad genes or environment. Science/reason alone not enough to guide ethics. (4 items). Correlated .346 with happiness, .266, with low depression,.294 with low anxiety, and  .373 with low anger/aggression."
           :SCALE-GROUP-NAME
           "sethbel"
           :SCALE-QUESTIONS
           '(TB2RELAT TBV2NOTR TB2REASO TBV2CORE)
           :MEAN-SCORE
           ".672"
           :STANDARD-DEVIATION
           ".150"
           :SAMPLE-N
           2366
           :NUM-QUESTIONS
           4
           :HELP-INFO
           "Explore the foundations of your ethical beliefs. Do you know what your top value/goal?  Do you rely on a religion or a certain philosophy as your ethical foundation? What are its basic ethical principles? Do you say that your family or other group is your top value? If so, what would you do if you lost them all?"
           :HELP-LINKS
           '("life_goals_and_meaning.htm"
             "h3hiself.htm"
             "h13topgo.htm")
           :PARENTS
           '(SETHBEL SUBSCALE)))

(DEFCLASS SSB2FORGIV
          (SETHBEL SUBSCALE)
          NIL
          (:DEFAULT-INITARGS
           :NAME-STRING
           "ssb2Forgiv"
           :LABEL
           "ssb2-Forgiving-egalitarian"
           :SCALE-NAME
           "Forgiveness"
           :DESCRIPTION
           "Highly forgiving of others, egalitarian/democratic beliefs. Forgiveness based upon inner qualities not based upon good works.  Not believe bad only happens to bad (2 items).  Correlated .282 with happiness, .216, with low depression,.294 with low anxiety, and  .378 with low anger/aggression."
           :SCALE-GROUP-NAME
           "sethbel"
           :SCALE-QUESTIONS
           '(TB2PUNIS TB2GDWRK)
           :MEAN-SCORE
           ".751"
           :STANDARD-DEVIATION
           ".192"
           :SAMPLE-N
           2366
           :NUM-QUESTIONS
           2
           :HELP-PRIORITY
           1
           :HELP-INFO
           "Learning to forgive yourself and others is a key to self-worth, happiness, and close interpersonal relations."
           :HELP-LINKS
           '("h53accep.htm" "h23explo.htm" "h51worth.htm")
           :PARENTS
           '(SETHBEL SUBSCALE)))

(DEFCLASS SSB2IDGRND
          (SETHBEL SUBSCALE)
          NIL
          (:DEFAULT-INITARGS
           :NAME-STRING
           "ssb2IDgrnd"
           :LABEL
           "ssb2-Identify with abstract whole"
           :SCALE-NAME
           "Identification With Humanity"
           :DESCRIPTION
           "Identify with abstract whole such as all humanity vs. a specific group (eg. family) or a specific role.(2 items). Correlated .258 with happiness and  .214 with low anger/aggression."
           :SCALE-GROUP-NAME
           "sethbel"
           :SCALE-QUESTIONS
           '(TB2IDHUM TB2MOVEM)
           :MEAN-SCORE
           ".412"
           :STANDARD-DEVIATION
           ".165"
           :SAMPLE-N
           2366
           :NUM-QUESTIONS
           2
           :HELP-INFO
           "Identification primarily with all humanity is not only is consistent with the advice of great philosophers and religious leaders, but also increases caring for all people, self-acceptance, and less dependence (and control by) family, friends, or other groups."
           :HELP-LINKS
           '("h3hiself.htm")
           :PARENTS
           '(SETHBEL SUBSCALE)))

(DEFCLASS SSB2GRNDMNG
          (SETHBEL SUBSCALE)
          NIL
          (:DEFAULT-INITARGS
           :NAME-STRING
           "ssb2GrndMng"
           :LABEL
           "ssb2-Meaning from abstract absolutes"
           :SCALE-NAME
           "Abstract Principles-Entities Ethics"
           :DESCRIPTION
           "Base meaning on abstract principles such as integrity, honesty, God, Nature, etc. instead of particular objects, events, or situational factors (eg. money, career, home, or other people). Correlated .256 with happiness, .225, with low depression,.264 with low anxiety, and  .277 with low anger/aggression."
           :SCALE-GROUP-NAME
           "sethbel"
           :SCALE-QUESTIONS
           '(TB2GROUM TB2SELFM)
           :MEAN-SCORE
           ".624"
           :STANDARD-DEVIATION
           ".204"
           :SAMPLE-N
           2366
           :NUM-QUESTIONS
           2
           :HELP-INFO
           "One advantage of basing beliefs and behavior upon abstract and mental values that it provides immunity from anxiety over external events because you have so much more direct control over mental events than external events."
           :HELP-LINKS
           '("h13topgo.htm")
           :PARENTS
           '(SETHBEL SUBSCALE)))

(DEFCLASS SSB2INRGOOD
          (SETHBEL SUBSCALE)
          NIL
          (:DEFAULT-INITARGS
           :NAME-STRING
           "ssb2InrGood"
           :LABEL
           "ssb2-Inner goodness in all"
           :SCALE-NAME
           "Inner Goodness In All"
           :DESCRIPTION
           "Belief in basic inner value and goodness in all people. Goodness depends more on attitude than behavior. (2 items). Correlated .327 with happiness and  .226 with low anger/aggression."
           :SCALE-GROUP-NAME
           "sethbel"
           :SCALE-QUESTIONS
           '(TB2GDATT TB2ALLGD)
           :MEAN-SCORE
           ".546"
           :STANDARD-DEVIATION
           ".182"
           :SAMPLE-N
           2366
           :NUM-QUESTIONS
           2
           :HELP-INFO
           "Think about how all newborn babies have inherent worth, and how at least some of that value persists even though a person may learn dysfunctional beliefs and behaviors. Consider the arguments of the great philosophers and religions that value all human beings."
           :HELP-LINKS
           '("h51worth.htm")
           :PARENTS
           '(SETHBEL SUBSCALE)))

(DEFCLASS SSB2NOASTR
          (SETHBEL SUBSCALE)
          NIL
          (:DEFAULT-INITARGS
           :NAME-STRING
           "ssb2noAstr"
           :LABEL
           "ssb2-Not belief in astrology. (1 item)"
           :SCALE-NAME
           "Not Astrology Belief"
           :DESCRIPTION
           "Does not believe in astrology"
           :SCALE-GROUP-NAME
           "sethbel"
           :SCALE-QUESTIONS
           '(TBV2ASTR)
           :MEAN-SCORE
           ".718"
           :STANDARD-DEVIATION
           ".242"
           :SAMPLE-N
           2366
           :NUM-QUESTIONS
           1
           :HELP-INFO
           "Science rejects astrology and any idea that stars' alignments have any significant effect on human behavior or history. The main problem with believing in astrology or even reading forecasts is that it distracts people from attending to the real factors that are influencing their lives and may cause them to make bad decisions based upon these unreliable predictions instead of using their own judgement. Relying on astrology may come from low self-confidence in one's own judgement."
           :HELP-LINKS
           '("h54confi.htm" "h6intern.htm")
           :PARENTS
           '(SETHBEL SUBSCALE)))

(DEFCLASS SSB2LIFAD
          (SETHBEL SUBSCALE)
          NIL
          (:DEFAULT-INITARGS
           :NAME-STRING
           "ssb2lifad"
           :LABEL
           "ssb2-Belief in LifeAfterDeath1"
           :SCALE-NAME
           "Life After Death Belief"
           :DESCRIPTION
           "Belief in life after death. (1 item)"
           :SCALE-GROUP-NAME
           "sethbel"
           :SCALE-QUESTIONS
           '(TB2LIFAD)
           :MEAN-SCORE
           ".606"
           :STANDARD-DEVIATION
           ".270"
           :SAMPLE-N
           2366
           :NUM-QUESTIONS
           1
           :HELP-INFO
           "Belief in life after death may lower people's fear of death and illness.  However, it may also cause people to disregard their own welfare thinking that they will be rewarded in heaven (extreme example is suicide bombers)."
           :HELP-LINKS
           'NIL
           :PARENTS
           '(SETHBEL SUBSCALE)))

(DEFCLASS SSWFSOCIAL
          (SGRFEARS SUBSCALE)
          NIL
          (:DEFAULT-INITARGS
           :NAME-STRING
           "sswfsocial"
           :LABEL
           "sswf-Not not-social or alone"
           :SCALE-NAME
           "Low Social Fears"
           :DESCRIPTION
           "Low fear of being unwanted, alone, unloved, etc. (4 items). Correlated .492 with happiness, .444, with low depression,.366 with low anxiety, and  .275 with low anger/aggression."
           :SCALE-GROUP-NAME
           "sgrfears"
           :SCALE-QUESTIONS
           '(WOVALONE WOVNOLOV WOVLIKED WOVPROBL)
           :MEAN-SCORE
           ".550"
           :STANDARD-DEVIATION
           ".229"
           :SAMPLE-N
           3162
           :NUM-QUESTIONS
           4
           :HELP-PRIORITY
           1
           :HELP-INFO
           "People-related fears such as fear of what others think about you or fears of rejection, being unloved, or being alone can underlie a great deal of unhappiness, anxiety, depression, and dysfunctional behavior. Try our help-links."
           :HELP-LINKS
           '("h43dark.htm" "c-rejct.htm" "h6intern.htm")
           :PARENTS
           '(SGRFEARS SUBSCALE)))

(DEFCLASS SSWFSELF
          (SGRFEARS SUBSCALE)
          NIL
          (:DEFAULT-INITARGS
           :NAME-STRING
           "sswfself"
           :LABEL
           "sswf-Not self-related fears"
           :SCALE-NAME
           "Low Self-Related Fears"
           :DESCRIPTION
           "Confidence can overcome worst fears/problems. Low fear of being overwhelmed by personal problems. (3 items)"
           :SCALE-GROUP-NAME
           "sgrfears"
           :SCALE-QUESTIONS
           '(WOVPERSO WOVDISCO WOVOVERC)
           :MEAN-SCORE
           ".625"
           :STANDARD-DEVIATION
           ".193"
           :SAMPLE-N
           3162
           :NUM-QUESTIONS
           3
           :HELP-PRIORITY
           1
           :HELP-INFO
           "First try to clarify what your fears are, then use self-help or professional help to reduce them."
           :HELP-LINKS
           '("h43dark.htm" "h5self.htm" "h23explo.htm")
           :PARENTS
           '(SGRFEARS SUBSCALE)))

(DEFCLASS SSWFPOVFAI
          (SGRFEARS SUBSCALE)
          NIL
          (:DEFAULT-INITARGS
           :NAME-STRING
           "sswfpovfai"
           :LABEL
           "sswf-Not poverty-failure fears"
           :SCALE-NAME
           "Low Failure-Poverty Fears"
           :DESCRIPTION
           "Low fear of poverty, failure, lack of career success. (3 items)"
           :SCALE-GROUP-NAME
           "sgrfears"
           :SCALE-QUESTIONS
           '(WOVHAPPY WOVPOOR WOVSUCCE)
           :MEAN-SCORE
           ".576"
           :STANDARD-DEVIATION
           ".227"
           :SAMPLE-N
           3162
           :NUM-QUESTIONS
           3
           :HELP-PRIORITY
           1
           :HELP-INFO
           "Being afraid of poverty, failure, a life-style below one's expectations, or similar fears can make life more miserable for someone who has done well than someone who doesn't have those fears and has much less.  Face those fears directly and develop new ways of thinking about them such as Alternative Goals and Plans."
           :HELP-LINKS
           '("h43dark.htm" "h23explo.htm" "h5self.htm")
           :PARENTS
           '(SGRFEARS SUBSCALE)))

(DEFCLASS SSWFILLDEA
          (SGRFEARS SUBSCALE)
          NIL
          (:DEFAULT-INITARGS
           :NAME-STRING
           "sswfilldea"
           :LABEL
           "sswf-Not illness-death fears"
           :SCALE-NAME
           "Low Illness or Death Fears"
           :DESCRIPTION
           "Low fear of illness or death. (2 items)"
           :SCALE-GROUP-NAME
           "sgrfears"
           :SCALE-QUESTIONS
           '(WOVILL WOVDEATH)
           :MEAN-SCORE
           ".702"
           :STANDARD-DEVIATION
           ".236"
           :SAMPLE-N
           3162
           :NUM-QUESTIONS
           2
           :HELP-PRIORITY
           1
           :HELP-INFO
           "Philosophers have proposed that humans' fear of death (and serious illness) is an underlying cause of human misery.  Death and the possiblity of serious illness is something we all face.  Learning to minimize those fears can bring greater peace to daily life--especially if we have a more immediate threat of death or illness."
           :HELP-LINKS
           '("h43dark.htm")
           :PARENTS
           '(SGRFEARS SUBSCALE)))

(DEFCLASS SSSCLEARN
          (SSLFCONF SUBSCALE)
          NIL
          (:DEFAULT-INITARGS
           :NAME-STRING
           "sssclearn"
           :LABEL
           "sssc-SelfConf-Learning"
           :SCALE-NAME
           "Learning Confidence"
           :DESCRIPTION
           "Confidence in own intelligence, learning, study skills, analytical thinking, synthesis, research methodology, computer-related, and critical thinking. (7 items)"
           :SCALE-GROUP-NAME
           "sslfconf"
           :SCALE-QUESTIONS
           '(SLFLEARN
             SLFCRITT
             SLFRESEA
             SLFANALY
             SLFSYNTH
             SLFCOMPU
             SLFIQ)
           :MEAN-SCORE
           ".801"
           :STANDARD-DEVIATION
           ".143"
           :SAMPLE-N
           3225
           :NUM-QUESTIONS
           7
           :HELP-INFO
           "It is human intelligence and ability to learn and adapt that separates us most from the lower animals.  Research shows that people who have better learning skills tend to be happier and more successful. The help-links below only cover a limited set of learning skills, but are a place to start."
           :HELP-LINKS
           '("learning_&_study_skills.htm" "LEARN.htm")
           :PARENTS
           '(SSLFCONF SUBSCALE)))

(DEFCLASS SSSCCOPOPT
          (SSLFCONF SUBSCALE)
          NIL
          (:DEFAULT-INITARGS
           :NAME-STRING
           "sssccopopt"
           :LABEL
           "sssc-SelfConf-PosAchCopeRelate"
           :SCALE-NAME
           "Achievement Confidence"
           :DESCRIPTION
           "Confidence/skills of optimistic-assertive engagement for both people and nonpeople tasks. Achievement motivation, work habits, emotional control, optimism, self-disclosure, and caring conflict resolution. (6 items)"
           :SCALE-GROUP-NAME
           "sslfconf"
           :SCALE-QUESTIONS
           '(SLFSELF4 SLFCOPE SLFSELF5 SLFCONFL SLFOPTIM SLFFRIEN)
           :MEAN-SCORE
           ".623"
           :STANDARD-DEVIATION
           ".201"
           :SAMPLE-N
           3225
           :NUM-QUESTIONS
           6
           :HELP-PRIORITY
           1
           :HELP-INFO
           "Engaging is tasks with enthusiasm and committment to excellence improves happiness, success, and relationships."
           :HELP-LINKS
           '("patsm96.htm"
             "concentration.htm"
             "h-app-e-InterpersonalSkills.htm")
           :PARENTS
           '(SSLFCONF SUBSCALE)))

(DEFCLASS SSSCSMSMSD
          (SSLFCONF SUBSCALE)
          NIL
          (:DEFAULT-INITARGS
           :NAME-STRING
           "ssscsmsmsd"
           :LABEL
           "sssc-SelfConf-self control discipline  develop"
           :SCALE-NAME
           "Self-Management Confidence"
           :DESCRIPTION
           "Confidence/skills in self control, self-discipline, and self-development. Good decision-making and planning, time-management in all areas of self-development/change, finances, self-discipline, health, etc. (7 items)."
           :SCALE-GROUP-NAME
           "sslfconf"
           :SCALE-QUESTIONS
           '(SLFDECMA
             SLFTIMEM
             SLFSELFM
             SLFACHAN
             SLFMANA6
             SLFHEAL3
             SLFINDEP)
           :MEAN-SCORE
           ".657"
           :STANDARD-DEVIATION
           ".191"
           :SAMPLE-N
           3225
           :NUM-QUESTIONS
           7
           :HELP-PRIORITY
           1
           :HELP-INFO
           "The self-management skills taught in the link below have been shown to be keys to both success and happiness because they help you get control of your life and keep your actions more in line with your values and goals."
           :HELP-LINKS
           '("time_management.htm" "wsps.htm")
           :PARENTS
           '(SSLFCONF SUBSCALE)))

(DEFCLASS SSSCINTERP
          (SSLFCONF SUBSCALE)
          NIL
          (:DEFAULT-INITARGS
           :NAME-STRING
           "ssscinterp"
           :LABEL
           "sssc-SelfConf-Career interpersonal skills"
           :SCALE-NAME
           "Career-Related Interpersonal Confidence"
           :DESCRIPTION
           "Confidence/skills in career-related interpersonal skills.  Managing others, persuasion, meeting people, public speaking, and adaptability (7 items). "
           :SCALE-GROUP-NAME
           "sslfconf"
           :SCALE-QUESTIONS
           '(SLFADAPT
             SLFMEETP
             SLFPERSU
             SLFMANA7
             SLFBUSAN
             SLFSPEAK
             SLFJOBSE)
           :MEAN-SCORE
           ".657"
           :STANDARD-DEVIATION
           ".188"
           :SAMPLE-N
           3225
           :NUM-QUESTIONS
           7
           :HELP-PRIORITY
           1
           :HELP-INFO
           "Improving basic interpersonal skills can improve almost all aspects of peoples' lives--from career to personal to romantic."
           :HELP-LINKS
           '("assertion_training.htm"
             "developing_intimacy.htm"
             "conversational_skills.htm")
           :PARENTS
           '(SSLFCONF SUBSCALE)))

(DEFCLASS SSSCALLHELP
          (SSLFCONF SUBSCALE)
          NIL
          (:DEFAULT-INITARGS
           :NAME-STRING
           "ssscallhelp"
           :LABEL
           "sssc-SelfConf-Helping skills"
           :SCALE-NAME
           "Helping Skills Confidence"
           :DESCRIPTION
           "Confidence/skills for counseling or teaching others.  Knowledge of philosophy, religion, and social science and helping, counseling, teaching interpersonal skills. (6 Items)"
           :SCALE-GROUP-NAME
           "sslfconf"
           :SCALE-QUESTIONS
           '(SLFSOCSC SLFPHILR SLFLIBAR SLFEDUCH SLFLISTE SLFHELPS)
           :MEAN-SCORE
           ".740"
           :STANDARD-DEVIATION
           ".168"
           :SAMPLE-N
           3225
           :NUM-QUESTIONS
           6
           :HELP-INFO
           "Helping skills are not only vital for people counseling and teaching others (in professional or personal situations), but can be very useful for other types of professional and personal relationships--especially chose and romantic relationships."
           :HELP-LINKS
           '("c14-lisn.htm" "h23explo.htm")
           :PARENTS
           '(SSLFCONF SUBSCALE)))

(DEFCLASS SSSCSCIENCE
          (SSLFCONF SUBSCALE)
          NIL
          (:DEFAULT-INITARGS
           :NAME-STRING
           "ssscscience"
           :LABEL
           "sssc-SelfConf-Natural science"
           :SCALE-NAME
           "Natural Science Confidence"
           :DESCRIPTION
           "Confidence/skills in natural science knowledge and reasoning including physics, chemistry, biology, and engineering (4 items)."
           :SCALE-GROUP-NAME
           "sslfconf"
           :SCALE-QUESTIONS
           '(SLFBIOSC SLFNATSC SLFHEAL2 SLFENGIN)
           :MEAN-SCORE
           ".583"
           :STANDARD-DEVIATION
           ".201"
           :SAMPLE-N
           3225
           :NUM-QUESTIONS
           4
           :HELP-INFO
           "Knowledge of natural sciences is useful in many everday situations from understanding how your car or computer works to understanding your health and our environment."
           :HELP-LINKS
           'NIL
           :PARENTS
           '(SSLFCONF SUBSCALE)))

(DEFCLASS SSSCARTCRE
          (SSLFCONF SUBSCALE)
          NIL
          (:DEFAULT-INITARGS
           :NAME-STRING
           "ssscartcre"
           :LABEL
           "sssc-SelfConf-Art  creative"
           :SCALE-NAME
           "Creative and Artistic Confidence"
           :DESCRIPTION
           "Fine and performing arts, and creative thinking (3 items)"
           :SCALE-GROUP-NAME
           "sslfconf"
           :SCALE-QUESTIONS
           '(SLFCREAT SLFPERFA SLFFINEA)
           :MEAN-SCORE
           ".659"
           :STANDARD-DEVIATION
           ".204"
           :SAMPLE-N
           3225
           :NUM-QUESTIONS
           3
           :HELP-INFO
           "Being creative means looking at problems from new perspectives and finding new solutions.  This general skill can help generate success in almost all life endeavors.  For non-professionals knowledge and appreiciation of art can make life and entertainment much more interesting and fun."
           :HELP-LINKS
           'NIL
           :PARENTS
           '(SSLFCONF SUBSCALE)))

(DEFCLASS SSSMTIMEMANGOALSET
          (SSELFMAN SUBSCALE)
          NIL
          (:DEFAULT-INITARGS
           :NAME-STRING
           "sssmTimeManGoalSet"
           :LABEL
           "sssm-Time management-OPATSM"
           :SCALE-NAME
           "Self-Management Skills and Habits"
           :DESCRIPTION
           "Using a good self-management system. Time management/goal-setting/decision-making  Frequent sessions prioritizing goals and writing daily task lists for each life area. Breaking large projects into organized, scheduled tasks. (5 items)"
           :SCALE-GROUP-NAME
           "sselfman"
           :SCALE-QUESTIONS
           '(SMTFUTUR SMTPTODO SMTGOALS SMTSCHD SMT2DTOD)
           :MEAN-SCORE
           ".505"
           :STANDARD-DEVIATION
           ".220"
           :SAMPLE-N
           2127
           :NUM-QUESTIONS
           5
           :HELP-INFO
           "Having a proven system for setting goals and priorities, planning, and managing large and daily tasks is a key component of success and happiness. (See research above). The link below describes the elements of one proven self-management system."
           :HELP-LINKS
           '("h9patsm.htm")
           :PARENTS
           '(SSELFMAN SUBSCALE)))

(DEFCLASS SSSMACCOMPLORUSH
          (SSELFMAN SUBSCALE)
          NIL
          (:DEFAULT-INITARGS
           :NAME-STRING
           "sssmAccompLoRush"
           :LABEL
           "sssm-Busy,accomplishment,efficient"
           :SCALE-NAME
           "Efficient Accomplishement"
           :DESCRIPTION
           "Accomplishment: busy, efficient task completion without feeling too rushed or pressured.  (2 items)"
           :SCALE-GROUP-NAME
           "sselfman"
           :SCALE-QUESTIONS
           '(SMTBUSY SMTACMPL)
           :MEAN-SCORE
           ".494"
           :STANDARD-DEVIATION
           ".222"
           :SAMPLE-N
           2127
           :NUM-QUESTIONS
           2
           :HELP-PRIORITY
           1
           :HELP-INFO
           "Efficient task accomplishment is often one outcome of a good time-management system.  However, it also comes from looking at all tasks--especially repetitive tasks from a system point-of-view to find new efficiencies that can save time, money, and heartache. Not feeling overwhelmed or pressured comes partly from being well-organized and partly from dealing with underlying fears related to feared possible outcomes of not adequately completing the tasks."
           :HELP-LINKS
           '("h9patsm.htm" "possi.htm" "h23explo.htm")
           :PARENTS
           '(SSELFMAN SUBSCALE)))

(DEFCLASS SSSMSELFDEVEL
          (SSELFMAN SUBSCALE)
          NIL
          (:DEFAULT-INITARGS
           :NAME-STRING
           "sssmSelfDevel"
           :LABEL
           "sssm-Self-develop, take advice,habit chng"
           :SCALE-NAME
           "Self-development Skills and Habits"
           :DESCRIPTION
           "Self-development habits and skills including taking advice and self-change program(s).(3 Items)"
           :SCALE-GROUP-NAME
           "sselfman"
           :SCALE-QUESTIONS
           '(SMTSDEVE SMTGHELP SMTHABCH)
           :MEAN-SCORE
           ".647"
           :STANDARD-DEVIATION
           ".214"
           :SAMPLE-N
           1936
           :NUM-QUESTIONS
           3
           :HELP-PRIORITY
           1
           :HELP-INFO
           "Completing SHAQ is a good beginning to self-development.  It gives you feedback on many clearly defined values, beliefs, skills, and habits that you can think about and decide if you want to make changes.  The help-links provided give you one place to start for each."
           :HELP-LINKS
           '("index.html" "self-helpLinks.htm")
           :PARENTS
           '(SSELFMAN SUBSCALE)))

(DEFCLASS SSSMHEALTHHABS
          (SSELFMAN SUBSCALE)
          NIL
          (:DEFAULT-INITARGS
           :NAME-STRING
           "sssmHealthHabs"
           :LABEL
           "sssmHealthHabits"
           :SCALE-NAME
           "Health Habits"
           :DESCRIPTION
           "Health habits. Research has shown that your nutritional, exercise, sleep, substance abuse, safety and risk-taking habits, and stress management can have very large effects upon your health and life span. (3 Items)"
           :SCALE-GROUP-NAME
           "sselfman"
           :SCALE-QUESTIONS
           '(SMTEXERC SMTEATH SMTSLEEP)
           :MEAN-SCORE
           ".558"
           :STANDARD-DEVIATION
           ".176"
           :SAMPLE-N
           2127
           :NUM-QUESTIONS
           3
           :HELP-PRIORITY
           1
           :HELP-INFO
           "Learning and practicing good health habits is one of the simplest and best ways to have a long, healthy, and happy life."
           :HELP-LINKS
           '("health tips.htm"
             "weight_control.htm"
             "substance_abuse.htm")
           :PARENTS
           '(SSELFMAN SUBSCALE)))

(DEFCLASS SSCPPROBSOLV
          (SEMOTCOP SUBSCALE)
          NIL
          (:DEFAULT-INITARGS
           :NAME-STRING
           "sscpProbSolv"
           :LABEL
           "sscp-Prob solve talk,selfexpl,expect"
           :SCALE-NAME
           "Emotional Coping Using Problem-Solving"
           :DESCRIPTION
           "When upset, face problem now and use positive problem-solving to overcome it. Face, explore, and discuss problems. (4 items)"
           :SCALE-GROUP-NAME
           "semotcop"
           :SCALE-QUESTIONS
           '(COPPSOLV COPTALKS COPEXPEC COPSELFE)
           :MEAN-SCORE
           ".599"
           :STANDARD-DEVIATION
           ".182"
           :SAMPLE-N
           3273
           :NUM-QUESTIONS
           4
           :HELP-PRIORITY
           1
           :HELP-INFO
           "Learn to focus on rising above the problem and current feelings and using good problem-solving methods to accept the reality of the situation and solve the problem with some sort of a solution that helps in the immediate situation. Also, begin to think about long-term solutions when you have time. When you start to get dysfunctional thoughts, remind yourself of their distructive consequences and re-focus on positive thoughts, solutions, and actions."
           :HELP-LINKS
           '("h8hf2.htm" "wsps.htm" "concentration.htm")
           :PARENTS
           '(SEMOTCOP SUBSCALE)))

(DEFCLASS SSCPPOSTHOUGHTS
          (SEMOTCOP SUBSCALE)
          NIL
          (:DEFAULT-INITARGS
           :NAME-STRING
           "sscpPosThoughts"
           :LABEL
           "sscp-Pos thoughts-phil, pep talk"
           :SCALE-NAME
           "Emotional Coping Using Positive Thoughts"
           :DESCRIPTION
           "When upset, think positive thoughts.  Positive; not critical, punitive, or negative thoughts in response to negative emotions. (2 items)"
           :SCALE-GROUP-NAME
           "semotcop"
           :SCALE-QUESTIONS
           '(COPNEGTH COPPEPTA)
           :MEAN-SCORE
           ".477"
           :STANDARD-DEVIATION
           ".204"
           :SAMPLE-N
           3273
           :NUM-QUESTIONS
           2
           :HELP-PRIORITY
           1
           :HELP-INFO
           "Develop a positive belief system/philosophy that you can use to generate positive thoughts when you need them. Practice viewing the problem/situation from a more positive perspective, help others do the same, confront negative thoughts, and schedule them for a later time to deal with in depth when you are out of the situation. Give yourself pep talks, seek input only from people who can really help--avoid those who interfere."
           :HELP-LINKS
           '("h8hf2.htm")
           :PARENTS
           '(SEMOTCOP SUBSCALE)))

(DEFCLASS SSCPPOSACTS
          (SEMOTCOP SUBSCALE)
          NIL
          (:DEFAULT-INITARGS
           :NAME-STRING
           "sscpPosActs"
           :LABEL
           "sscp-Pos acts,fun,exercise"
           :SCALE-NAME
           "Emotional Coping Using Positive Activities"
           :DESCRIPTION
           "When upset, do positive, constructive activities such as complete problem-related or other involving tasks, have fun, exercise, etc. (2 items)"
           :SCALE-GROUP-NAME
           "semotcop"
           :SCALE-QUESTIONS
           '(COPFUN COPPE)
           :MEAN-SCORE
           ".457"
           :STANDARD-DEVIATION
           ".202"
           :SAMPLE-N
           3273
           :NUM-QUESTIONS
           2
           :HELP-PRIORITY
           1
           :HELP-INFO
           "Vigorous positive mental and physical activity reduces negative emotions and increases positive emotions.  Doing helpful tasks, involving, vigorous physical activity and absorging positive mental activity are very good to do along with problem-solving."
           :HELP-LINKS
           '("h87focus.htm" "h86optim.htm")
           :PARENTS
           '(SEMOTCOP SUBSCALE)))

(DEFCLASS SSCPNOBLAMEANGERWDRAW
          (SEMOTCOP SUBSCALE)
          NIL
          (:DEFAULT-INITARGS
           :NAME-STRING
           "sscpNoBlameAngerWDraw"
           :LABEL
           "sscp-Not anger,blame,withdraw"
           :SCALE-NAME
           "Emotional Coping Without Blaming"
           :DESCRIPTION
           "When upset, don't get angry, too critical, or blame self or others or withdraw. (5 items)"
           :SCALE-GROUP-NAME
           "semotcop"
           :SCALE-QUESTIONS
           '(COPEMOTA COPBLAME COPWDRW COPNEGPH COPSELFB)
           :MEAN-SCORE
           ".580"
           :STANDARD-DEVIATION
           ".202"
           :SAMPLE-N
           3273
           :NUM-QUESTIONS
           5
           :HELP-PRIORITY
           1
           :HELP-INFO
           "Anger and aggression hurts you more than anyone.  It undermines relationships and one's love of oneself. Hositility is trying to change the unchangeable. You must peacefully accept the past or inevitable (or even its possibility) no matter how bad it is if you are to get control of your emotions. If you get frustrated or angry, find positive ways of channeling the anger. Vigorous activity can be a therapeutic part of the program."
           :HELP-LINKS
           '("h8hf2.htm" "h86optim.htm" "b-anger.htm")
           :PARENTS
           '(SEMOTCOP SUBSCALE)))

(DEFCLASS SSCPNOTSMOKDRUGMED
          (SEMOTCOP SUBSCALE)
          NIL
          (:DEFAULT-INITARGS
           :NAME-STRING
           "sscpNotSmokDrugMed"
           :LABEL
           "sscp-Not smoke,drugs"
           :SCALE-NAME
           "Emotional Coping Without Substance Abuse"
           :DESCRIPTION
           "When upset, don't smoke, drink alcohol, or take drugs. (2 items)"
           :SCALE-GROUP-NAME
           "semotcop"
           :SCALE-QUESTIONS
           '(COPSMOKE COPDRUG)
           :MEAN-SCORE
           ".791"
           :STANDARD-DEVIATION
           ".262"
           :SAMPLE-N
           3273
           :NUM-QUESTIONS
           2
           :HELP-PRIORITY
           1
           :HELP-INFO
           "Eating, smoking, and taking drugs to relieve stress reinforces the addictive habit because they often immediately reduce stress!  However, it also strengthens the addictive habit and does nothing to solve any of the problems causing the stress. Try the help-links."
           :HELP-LINKS
           '("smoking.htm" "substance_abuse.htm")
           :PARENTS
           '(SEMOTCOP SUBSCALE)))

(DEFCLASS SSCPNOTEAT
          (SEMOTCOP SUBSCALE)
          NIL
          (:DEFAULT-INITARGS
           :NAME-STRING
           "sscpNotEat"
           :LABEL
           "sscp-Not eat 1"
           :SCALE-NAME
           "Emotional Coping Without Eating"
           :DESCRIPTION
           "When upset, don't eat to feel better. (1 item)"
           :SCALE-GROUP-NAME
           "semotcop"
           :SCALE-QUESTIONS
           '(COPCOPEA)
           :MEAN-SCORE
           ".665"
           :STANDARD-DEVIATION
           ".284"
           :SAMPLE-N
           3273
           :NUM-QUESTIONS
           1
           :HELP-PRIORITY
           1
           :HELP-INFO
           "Eating that reduces stress reinforces eating and may contribute significantly to being overweight."
           :HELP-LINKS
           '("weight_control.htm")
           :PARENTS
           '(SEMOTCOP SUBSCALE)))

(DEFCLASS HAPSDMEANSPIRITSS
          (SEHAPPY SUBSCALE)
          NIL
          (:DEFAULT-INITARGS
           :NAME-STRING
           "hapSDMeanSpiritSS"
           :LABEL
           "ssh-SelfDevel, meaning/spiritualHap"
           :SCALE-NAME
           "Spiritual and Mental Life Happiness"
           :DESCRIPTION
           "Happiness in your self-development, spiritual life, and life meaning"
           :SCALE-GROUP-NAME
           "sehappy"
           :SCALE-QUESTIONS
           '(HAPSELFD HAPSPIRI)
           :MEAN-SCORE
           0.6132
           :STANDARD-DEVIATION
           0.25
           :SAMPLE-N
           3185
           :NUM-QUESTIONS
           2
           :HELP-PRIORITY
           1
           :HELP-INFO
           "Happiness is the result of other factors. A strong philosophy and spiritual life and self-development are key areas for overall happiness. Examine all results on the HQ scales."
           :HELP-LINKS
           '("life_goals_and_meaning.htm" "h3hiself.htm")
           :PARENTS
           '(SEHAPPY SUBSCALE)))

(DEFCLASS HAPCAREEREXSS
          (SEHAPPY SUBSCALE)
          NIL
          (:DEFAULT-INITARGS
           :NAME-STRING
           "hapCareerExSS"
           :LABEL
           "ssh-Career happiness"
           :SCALE-NAME
           "Career Happiness"
           :DESCRIPTION
           "Happiness in your career, work, or school"
           :SCALE-GROUP-NAME
           "sehappy"
           :SCALE-QUESTIONS
           '(HAPCARFU HAPCARNW)
           :MEAN-SCORE
           0.61
           :STANDARD-DEVIATION
           0.25
           :SAMPLE-N
           3185
           :NUM-QUESTIONS
           2
           :HELP-PRIORITY
           1
           :HELP-INFO
           "Happiness is the result of other factors. Examine HQ scales for ways you can improve your happiness."
           :HELP-LINKS
           '("index.html" "self-helpLinks.htm" "c15-carp.htm")
           :PARENTS
           '(SEHAPPY SUBSCALE)))

(DEFCLASS HAPRECPESS
          (SEHAPPY SUBSCALE)
          NIL
          (:DEFAULT-INITARGS
           :NAME-STRING
           "hapRecPESS"
           :LABEL
           "ssh-Recreation PhysAct happiness"
           :SCALE-NAME
           "Recreation and Physical Activity Happiness"
           :DESCRIPTION
           "Happiness in your recreation and physical activity."
           :SCALE-GROUP-NAME
           "sehappy"
           :SCALE-QUESTIONS
           '(HAPPE HAPRECRE)
           :MEAN-SCORE
           0.559
           :STANDARD-DEVIATION
           0.248
           :SAMPLE-N
           3185
           :NUM-QUESTIONS
           2
           :HELP-PRIORITY
           1
           :HELP-INFO
           "Happiness is the result of other factors. Examine your results on the HQ scales for ways you can improve your happiness."
           :HELP-LINKS
           '("index.html" "self-helpLinks.htm" "c15-carp.htm")
           :PARENTS
           '(SEHAPPY SUBSCALE)))

(DEFCLASS HAPAREASS
          (SEHAPPY SUBSCALE)
          NIL
          (:DEFAULT-INITARGS
           :NAME-STRING
           "hapAreaSS"
           :LABEL
           "ssh-LivingArea happiness"
           :SCALE-NAME
           "Living Area Happiness"
           :DESCRIPTION
           "Happiness living in your area."
           :SCALE-GROUP-NAME
           "sehappy"
           :SCALE-QUESTIONS
           '(HAPAREA)
           :MEAN-SCORE
           0.6
           :STANDARD-DEVIATION
           0.25
           :SAMPLE-N
           3185
           :NUM-QUESTIONS
           1
           :HELP-PRIORITY
           1
           :HELP-INFO
           "Happiness is the result of other factors. Examine your results on the HQ scales for ways you can improve your happiness."
           :HELP-LINKS
           '("index.html" "self-helpLinks.htm" "c15-carp.htm")
           :PARENTS
           '(SEHAPPY SUBSCALE)))

(DEFCLASS HAPFAMSS
          (SEHAPPY SUBSCALE)
          NIL
          (:DEFAULT-INITARGS
           :NAME-STRING
           "hapFamSS"
           :LABEL
           "ssh-Family happiness"
           :SCALE-NAME
           "Family Happiness"
           :DESCRIPTION
           "Happiness in your family life."
           :SCALE-GROUP-NAME
           "sehappy"
           :SCALE-QUESTIONS
           '(HAPFAMIL)
           :MEAN-SCORE
           0.64
           :STANDARD-DEVIATION
           0.272
           :SAMPLE-N
           3185
           :NUM-QUESTIONS
           1
           :HELP-PRIORITY
           1
           :HELP-INFO
           "Happiness is the result of other factors. Examine your results on the HQ scales for ways you can improve your happiness."
           :HELP-LINKS
           '("index.html" "self-helpLinks.htm" "c15-carp.htm")
           :PARENTS
           '(SEHAPPY SUBSCALE)))

(DEFCLASS HAPROMSS
          (SEHAPPY SUBSCALE)
          NIL
          (:DEFAULT-INITARGS
           :NAME-STRING
           "hapRomSS"
           :LABEL
           "ssh-Romantic happiness"
           :SCALE-NAME
           "Romantic Happiness"
           :DESCRIPTION
           "Happiness in your romantic life."
           :SCALE-GROUP-NAME
           "sehappy"
           :SCALE-QUESTIONS
           '(HAPSEXRE)
           :MEAN-SCORE
           0.461
           :STANDARD-DEVIATION
           0.303
           :SAMPLE-N
           3185
           :NUM-QUESTIONS
           1
           :HELP-PRIORITY
           1
           :HELP-INFO
           "Happiness is the result of other factors. Examine your results on the HQ scales for ways you can improve your happiness-especially the ones related to interpersonal relationships."
           :HELP-LINKS
           '("conversational_skills.htm" "developing_intimacy.htm")
           :PARENTS
           '(SEHAPPY SUBSCALE)))

(DEFCLASS HAPFRIENDSSS
          (SEHAPPY SUBSCALE)
          NIL
          (:DEFAULT-INITARGS
           :NAME-STRING
           "hapFriendsSS"
           :LABEL
           "ssh-Friends happiness"
           :SCALE-NAME
           "Friendship Happiness"
           :DESCRIPTION
           "Happiness in your friendships"
           :SCALE-GROUP-NAME
           "sehappy"
           :SCALE-QUESTIONS
           '(HAPCLFRN HAPFRIEN HAPWKREL)
           :MEAN-SCORE
           0.621
           :STANDARD-DEVIATION
           0.25
           :SAMPLE-N
           3185
           :NUM-QUESTIONS
           3
           :HELP-PRIORITY
           1
           :HELP-INFO
           "Happiness is the result of other factors. Examine your results on the HQ scales for ways you can improve your happiness-especially the ones related to interpersonal relationships."
           :HELP-LINKS
           '("conversational_skills.htm"
             "developing_intimacy.htm"
             "overcoming_loneliness.htm")
           :PARENTS
           '(SEHAPPY SUBSCALE)))

(DEFCLASS HAPFUTURESS
          (SEHAPPY SUBSCALE)
          NIL
          (:DEFAULT-INITARGS
           :NAME-STRING
           "hapFutureSS"
           :LABEL
           "ssh-Expected future happiness"
           :SCALE-NAME
           "Expected Future Happiness"
           :DESCRIPTION
           "Overall expectation of future happiness. (1 item)"
           :SCALE-GROUP-NAME
           "sehappy"
           :SCALE-QUESTIONS
           '(HAPEXPEC)
           :MEAN-SCORE
           0.757
           :STANDARD-DEVIATION
           0.235
           :SAMPLE-N
           3185
           :NUM-QUESTIONS
           1
           :HELP-PRIORITY
           1
           :HELP-INFO
           "Happiness is the result of other factors. Examine your results on the HQ scales for ways you can improve your happiness."
           :HELP-LINKS
           '("index.html" "self-helpLinks.htm")
           :PARENTS
           '(SEHAPPY SUBSCALE)))

(DEFCLASS HAPPASTSS
          (SEHAPPY SUBSCALE)
          NIL
          (:DEFAULT-INITARGS
           :NAME-STRING
           "hapPastSS"
           :LABEL
           "ssh-Happy to 3yrs ago"
           :SCALE-NAME
           "Happiness to 3 Years Ago"
           :DESCRIPTION
           "Happiness up to 3 years ago. (1 item)"
           :SCALE-GROUP-NAME
           "sehappy"
           :SCALE-QUESTIONS
           '(HAPLIFE)
           :MEAN-SCORE
           0.609
           :STANDARD-DEVIATION
           0.261
           :SAMPLE-N
           3185
           :NUM-QUESTIONS
           1
           :HELP-PRIORITY
           1
           :HELP-INFO
           "Happiness is the result of other factors. Examine your results on the HQ scales for ways you can improve your happiness."
           :HELP-LINKS
           '("index.html" "self-helpLinks.htm")
           :PARENTS
           '(SEHAPPY SUBSCALE)))

(DEFCLASS HAPRECENTSS
          (SEHAPPY SUBSCALE)
          NIL
          (:DEFAULT-INITARGS
           :NAME-STRING
           "hapRecentSS"
           :LABEL
           "ssh-Happy recently"
           :SCALE-NAME
           "Past 3 Years Happiness"
           :DESCRIPTION
           "Happiness in the past 3 years.  (1 item)"
           :SCALE-GROUP-NAME
           "sehappy"
           :SCALE-QUESTIONS
           '(HAPYEAR HAP3YEAR)
           :MEAN-SCORE
           0.558
           :STANDARD-DEVIATION
           0.246
           :SAMPLE-N
           3185
           :NUM-QUESTIONS
           2
           :HELP-PRIORITY
           1
           :HELP-INFO
           "Happiness is the result of other factors. Examine your results on the HQ scales for ways you can improve your happiness. (2 items)"
           :HELP-LINKS
           '("index.html" "self-helpLinks.htm")
           :PARENTS
           '(SEHAPPY SUBSCALE)))

(DEFCLASS SSRECLOSEFRIENDS
          (SRPEOPLE SUBSCALE)
          NIL
          (:DEFAULT-INITARGS
           :NAME-STRING
           "ssreCloseFriends"
           :LABEL
           "ssre-CloseFriends"
           :SCALE-NAME
           "Close Friends"
           :DESCRIPTION
           "Relationship Outcome--Friendship Closeness. Quality of close friends. (2 items)"
           :SCALE-GROUP-NAME
           "srpeople"
           :SCALE-QUESTIONS
           '(RPENETW RPECLFRN)
           :MEAN-SCORE
           0.215
           :STANDARD-DEVIATION
           0.136
           :SAMPLE-N
           2673
           :NUM-QUESTIONS
           0
           :HELP-PRIORITY
           1
           :HELP-INFO
           "Close relationships are the result of other factors. Examine your HQ factors--especially interpersonal scales--for areas to improve.  Good listening skills, openness, honesty, trust, being able to resolve conflicts, and being a dependable friend are important for any close relationship."
           :HELP-LINKS
           '("conversational_skills.htm" "developing_intimacy.htm")
           :PARENTS
           '(SRPEOPLE SUBSCALE)))

(DEFCLASS SSREROMRELSUC
          (SRPEOPLE SUBSCALE)
          NIL
          (:DEFAULT-INITARGS
           :NAME-STRING
           "ssreRomRelSuc"
           :LABEL
           "ssre-RomanticRelationshipSuccess"
           :SCALE-NAME
           "Romantic Relationships"
           :DESCRIPTION
           "Success in romantic relationships"
           :SCALE-GROUP-NAME
           "srpeople"
           :SCALE-QUESTIONS
           '(RPEHMARR RPECOMMI)
           :MEAN-SCORE
           0.63
           :STANDARD-DEVIATION
           0.311
           :SAMPLE-N
           2673
           :NUM-QUESTIONS
           0
           :HELP-PRIORITY
           1
           :HELP-INFO
           "Good relationships are the result of other factors. Examine your HQ factors--especially interpersonal scales. See close relationship help comments."
           :HELP-LINKS
           '("conversational_skills.htm"
             "overcoming_loneliness.htm"
             "c-rejct.htm")
           :PARENTS
           '(SRPEOPLE SUBSCALE)))

(DEFCLASS SSRENUMFRIENDS
          (SRPEOPLE SUBSCALE)
          NIL
          (:DEFAULT-INITARGS
           :NAME-STRING
           "ssreNumFriends"
           :LABEL
           "ssre-NumFriends"
           :SCALE-NAME
           "Number of Friends"
           :DESCRIPTION
           "Relationship Outcome--Number of Friends.(2 items)"
           :SCALE-GROUP-NAME
           "srpeople"
           :SCALE-QUESTIONS
           '(RPENUMFR RPENUMCL)
           :MEAN-SCORE
           0.305
           :STANDARD-DEVIATION
           0.204
           :SAMPLE-N
           2673
           :NUM-QUESTIONS
           0
           :HELP-PRIORITY
           0
           :HELP-INFO
           "Do you have enough good friends and associates? If not, or if you feel shy or anxious about meeting new people, you can improve social skills and your confidence by trying some of the tips in the help links."
           :HELP-LINKS
           '("conversational_skills.htm"
             "overcoming_loneliness.htm"
             "c-rejct.htm")
           :PARENTS
           '(SRPEOPLE SUBSCALE)))

(DEFCLASS SSREHAPSUCFRS
          (SRPEOPLE SUBSCALE)
          NIL
          (:DEFAULT-INITARGS
           :NAME-STRING
           "ssreHapSucFrs"
           :LABEL
           "ssre-HappySuccessfulFriends"
           :SCALE-NAME
           "Happy, Successful Friends"
           :DESCRIPTION
           "Relationship Outcome--Happy, Successful Friends. (1 item)"
           :SCALE-GROUP-NAME
           "srpeople"
           :SCALE-QUESTIONS
           '(RPEHMARR RPECOMMI)
           :MEAN-SCORE
           0.623
           :STANDARD-DEVIATION
           0.232
           :SAMPLE-N
           2673
           :NUM-QUESTIONS
           1
           :HELP-PRIORITY
           1
           :HELP-INFO
           "Having happy, successful friends can have a positive influence on you and can also have other benefits."
           :HELP-LINKS
           '("conversational_skills.htm"
             "overcoming_loneliness.htm"
             "c-rejct.htm")
           :PARENTS
           '(SRPEOPLE SUBSCALE)))

(DEFCLASS SSDELODEPSYMP
          (SRDEPRES SUBSCALE)
          NIL
          (:DEFAULT-INITARGS
           :NAME-STRING
           "ssdeLoDepSymp"
           :LABEL
           "ssde-LoDepressionSymptoms"
           :SCALE-NAME
           "Low Depression Symptoms"
           :DESCRIPTION
           "Depression Outcome Subscale-Low clinical depression symptoms"
           :SCALE-GROUP-NAME
           "srdepres"
           :SCALE-QUESTIONS
           '(RDEPFEEL RDEPTHOU RDEPDYSS RDEPMAJS)
           :MEAN-SCORE
           0.515
           :STANDARD-DEVIATION
           0.255
           :SAMPLE-N
           2819
           :NUM-QUESTIONS
           4
           :HELP-PRIORITY
           1
           :HELP-INFO
           "See Depression main scale help information and help-links."
           :HELP-LINKS
           '("depression.htm" "my-peek.htm" "h85cdepr.htm")
           :PARENTS
           '(SRDEPRES SUBSCALE)))

(DEFCLASS SSDELODEPTREATS
          (SRDEPRES SUBSCALE)
          NIL
          (:DEFAULT-INITARGS
           :NAME-STRING
           "ssdeLoDepTreats"
           :LABEL
           "ssde-LoDepressionTreatments"
           :SCALE-NAME
           "Low Depression Treatments"
           :DESCRIPTION
           "Depression Outcome Subscale-Low clinical depression therapy and treatments"
           :SCALE-GROUP-NAME
           "srdepres"
           :SCALE-QUESTIONS
           '(RDEPMEDS RDEPTHER)
           :MEAN-SCORE
           0.767
           :STANDARD-DEVIATION
           0.286
           :SAMPLE-N
           2819
           :NUM-QUESTIONS
           2
           :HELP-PRIORITY
           1
           :HELP-INFO
           "See Depression main scale help information and help-links."
           :HELP-LINKS
           '("depression.htm" "my-peek.htm" "h85cdepr.htm")
           :PARENTS
           '(SRDEPRES SUBSCALE)))

(DEFCLASS SSAXLOPERFGENANX
          (SRANXIET SUBSCALE)
          NIL
          (:DEFAULT-INITARGS
           :NAME-STRING
           "ssaxLoPerfGenAnx"
           :LABEL
           "ssax-LoPerformanceAndGeneralAnxiety"
           :SCALE-NAME
           "Low General or Performance Anxiety"
           :DESCRIPTION
           "Low generaly anxiety or anxiety about performance"
           :SCALE-GROUP-NAME
           "sranxiet"
           :SCALE-QUESTIONS
           '(RANXPERF RANXALLT RANXPSTD RANXSOCI)
           :MEAN-SCORE
           0.573
           :STANDARD-DEVIATION
           0.237
           :SAMPLE-N
           3298
           :NUM-QUESTIONS
           4
           :HELP-PRIORITY
           1
           :HELP-INFO
           "See Anxiety main scale help information and help-links."
           :HELP-LINKS
           '("anxiety.htm" "my-peek.htm" "h8hf2.htm")
           :PARENTS
           '(SRANXIET SUBSCALE)))

(DEFCLASS SSAXLOWFEAROCD
          (SRANXIET SUBSCALE)
          NIL
          (:DEFAULT-INITARGS
           :NAME-STRING
           "ssaxLowFearOCD"
           :LABEL
           "ssax-LoFearsAndOCDsymptoms"
           :SCALE-NAME
           "Low Fears, Phobias, or OCD"
           :DESCRIPTION
           "Low fears, phobias, and obsessive-compulsive disorder symptoms"
           :SCALE-GROUP-NAME
           "sranxiet"
           :SCALE-QUESTIONS
           '(RANXOCD RANXPHOB RANXPANI)
           :MEAN-SCORE
           0.774
           :STANDARD-DEVIATION
           0.211
           :SAMPLE-N
           3298
           :NUM-QUESTIONS
           3
           :HELP-PRIORITY
           1
           :HELP-INFO
           "Basic fears OCD symptoms can usually be greatly reduced with good cognitive therapy and other methods you can learn. See the helplinks for a start."
           :HELP-LINKS
           '("anxiety.htm" "my-peek.htm" "h8hf2.htm")
           :PARENTS
           '(SRANXIET SUBSCALE)))

(DEFCLASS SSAXLOANXTREATS
          (SRANXIET SUBSCALE)
          NIL
          (:DEFAULT-INITARGS
           :NAME-STRING
           "ssaxLoAnxTreats"
           :LABEL
           "ssax-LoAnxietyTreatments"
           :SCALE-NAME
           "Low Anxiety Treatments"
           :DESCRIPTION
           "Low amount of anxiety disorder therapy or other treatments"
           :SCALE-GROUP-NAME
           "sranxiet"
           :SCALE-QUESTIONS
           '(RANXTHER RANXMEDS)
           :MEAN-SCORE
           0.832
           :STANDARD-DEVIATION
           0.259
           :SAMPLE-N
           3325
           :NUM-QUESTIONS
           0
           :HELP-PRIORITY
           1
           :HELP-INFO
           "See Anxiety main scale help information and help-links."
           :HELP-LINKS
           '("anxiety.htm" "my-peek.htm" "h8hf2.htm")
           :PARENTS
           '(SRANXIET SUBSCALE)))

(DEFCLASS SSHELONEGADDICTHABS
          (SRELHLTH SUBSCALE)
          NIL
          (:DEFAULT-INITARGS
           :NAME-STRING
           "ssheLoNegAddictHabs"
           :LABEL
           "sshe-LoNegAddictHabits"
           :SCALE-NAME
           "Low Addictive Habits"
           :DESCRIPTION
           "Health Outcome Subscale--Low addictive habits (smoking, alcohol, drugs). (3 items)"
           :SCALE-GROUP-NAME
           "srelhlth"
           :SCALE-QUESTIONS
           '(RHLALCOH RHLSMOKE RHLDRUGS)
           :MEAN-SCORE
           0.776
           :STANDARD-DEVIATION
           0.181
           :SAMPLE-N
           3081
           :NUM-QUESTIONS
           3
           :HELP-PRIORITY
           1
           :HELP-INFO
           "Addictive habits such as alcohol or substance abuse, smoking, and overeating can have very serious effect on all areas of happiness and success. If you have an addictive habit, your first concern should be to make eliminating the addictive behavior a top priority in your life.  Joining a 12-step program or getting professional treatment is almost a necessity for alcohol and substance abuse."
           :HELP-LINKS
           '("substance_abuse.htm"
             "smoking.htm"
             "weight_control.htm"
             "h31chang.htm")
           :PARENTS
           '(SRELHLTH SUBSCALE)))

(DEFCLASS SSHELOFREQILL
          (SRELHLTH SUBSCALE)
          NIL
          (:DEFAULT-INITARGS
           :NAME-STRING
           "ssheLoFreqIll"
           :LABEL
           "ssheLoFreqIll"
           :SCALE-NAME
           "Low Illness Frequency"
           :DESCRIPTION
           "Health Outcomes Subscale Low Frequency of Illness. (1 item)"
           :SCALE-GROUP-NAME
           "srelhlth"
           :SCALE-QUESTIONS
           '(RHLFREQI)
           :MEAN-SCORE
           0.659
           :STANDARD-DEVIATION
           0.245
           :SAMPLE-N
           3173
           :NUM-QUESTIONS
           1
           :HELP-PRIORITY
           1
           :HELP-INFO
           "Your health is perhaps your most precious resource.  Simple differences in people's daily health habits add together in time to create many years difference in health and longevity. "
           :HELP-LINKS
           '("health tips.htm")
           :PARENTS
           '(SRELHLTH SUBSCALE)))

(DEFCLASS SSHEPELOWEIGHT
          (SRELHLTH SUBSCALE)
          NIL
          (:DEFAULT-INITARGS
           :NAME-STRING
           "sshePELoWeight"
           :LABEL
           "sshePELoWeight"
           :SCALE-NAME
           "Physical Exercise, Low Weight"
           :DESCRIPTION
           "Health Outcome Subscale--physical excercise, low weight.(2 items)"
           :SCALE-GROUP-NAME
           "srelhlth"
           :SCALE-QUESTIONS
           '(RHLPHYSI RHLWEIGH)
           :MEAN-SCORE
           0.683
           :STANDARD-DEVIATION
           0.272
           :SAMPLE-N
           3173
           :NUM-QUESTIONS
           0
           :HELP-PRIORITY
           1
           :HELP-INFO
           "Adequate physical exercise and health eating habits are major causes of health and longevity."
           :HELP-LINKS
           '(WEIGHT_CONTROL.HTM)
           :PARENTS
           '(SRELHLTH SUBSCALE)))

(DEFCLASS ACAD-LEARNING-MAQS
          (MULTI-ANSWER-SCALE)
          NIL
          (:DEFAULT-INITARGS
           :NAME-STRING
           "Acad-Learning-MAQs"
           :LABEL
           "Acad-Learning MultAnsQuests"
           :SCALE-NAME
           "Academic/Learning Multi-Answer Questions"
           :DESCRIPTION
           "Learning-Academic Success Other Questions"
           :SCALE-QUESTIONS
           '(STUCOLLE STUMAJOR STUSPECI STURESID STGPATRE STURESOURCE)
           :MEAN-SCORE
           NIL
           :STANDARD-DEVIATION
           NIL
           :SAMPLE-N
           NIL
           :NUM-QUESTIONS
           0
           :HELP-PRIORITY
           NIL
           :HELP-INFO
           "Study your answers for insight, and check learning-related helplinks."
           :HELP-LINKS
           NIL
           :PARENTS
           '(MULTI-ANSWER-SCALE)))

(DEFCLASS SUSERFEEDBACK
          (SCALE)
          NIL
          (:DEFAULT-INITARGS
           :NAME-STRING
           "sUserFeedback"
           :LABEL
           "User Feedback"
           :SCALE-NAME
           "sUserFeedback"
           :DESCRIPTION
           "User Feedback--1 item"
           :SCALE-QUESTIONS
           '(USERRATE)
           :MEAN-SCORE
           NIL
           :STANDARD-DEVIATION
           NIL
           :SAMPLE-N
           NIL
           :NUM-QUESTIONS
           1
           :PARENTS
           '(SCALE)))

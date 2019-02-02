;;********************************* H-SHAQ.lisp *******************************
;;
;; FILE ON SHAQ GOALS, FORMAT, TIPS, TASKS
;;
(in-package "CL-USER")

;;put in all key files
;;  (my-config-editor-after-start)

;;QUESTIONS FORMAT
;;(setf quest-sym '(0-quest-num 1-quest-sym  2-read-name 3-data-name 4-class-or-classlist 5-quest-string 6-subscale-sym-or-list 7-scale-sym-or-list  8-quest-score  8-helpInfo 9-helpLinks 10-helpResources 11-FrAnswerPanel 12-frameTitle  13-frameDimWidth  14-frameDimHeight  15-quest-property-list))
;;NOTE: where PROPERTY-LIST is FORMAT '((key . value))
;;NOTE:: IF A VALUE IS NIL, THEN THE CLASS DEFAULT IS USED
;;
;;original java example
;;    PCategory inrSrq10EncDifDec = new PCategory("inrSrq10EncDifDec",4, inrSrq10EncDifDecQ, "int",  FrAnswerPanel.LikeUs7,questionInstancesArray, frameTitle, frameDimWidth, frameDimHeight);
;;questionInstancesArray[3] = inrSrq10EncDifDec;
;;old modified
;;(SETF BeAlone   '("BeAlone" 1  BeAloneQ  "int" inrSrq9OwnFriends  FrAnswerPanel.LikeUs7Reverse questionInstancesArray  frameTitle  frameDimWidth  frameDimHeight) 

;;TEMPLATES
;;
;;SLOTS
   (
    :initarg :
    :accessor 
    :documentation "
    )

;; PERSIM CLASS TEMPLATE
;;
(defclass class (superclass1 superclass2)
  ;;put any new slots inside the parens below, it must be there to avoid error
  () 
  (:default-initargs
   :name
   :read-name
;;   :updated
;;  :previous-names
   :class-description
;;   :is-scale-p
;;  :scales
   :subscales
   :classInstance
   :frameTitle
;;   :frameDimWidth
;;   :frameDimHeight
;;   :totalQuestions
;;   :firingOrderList
;;   :question-list
;;   :FrAnswerPanel
   :isFramesCreated nil
;;   :MakeFrQuJRadioButtonsInstance
;;   :helpInfo
;;   :helpLinks
;;   :helpResources
   ;;end default-initargs
   )
  ;; class options
  ( :documentation  "class doc here")
  ;;end class
  )

:;class instance template
(defparameter  *    (make-instance ' 
                                           :name  "*class-inst"                                      
                                     ;;   :class-description  "This is class description"
                                      ;;    :scales  '(*s1 *s2 *s3)  
                                       ;;   :subscales '(*ss1  *ss2 *ss3)
                                       )
|#



#|
(setf test-pl '((key1 . value1)(key2 . value2))
      testkv '(key3 . value3))
works as so:
CL-USER 2 > (car testkv) => KEY3
CL-USER 3 > (cdr testkv) => VALUE3
CL-USER 4 > (caar test-pl) => KEY1
CL-US ER 5 > (cdr (second test-pl)) => VALUE2
|#


;;DATA OUTPUT STRING (FOR SENDING TO DATAFILE)
;;(format nil (~A, ~A, ~A, ~A, ~A) quest-sym-string quest-qscore scale-sym subscale-sym quest-num)

;;DATA RESULTS STRING (FOR SENDING TO USER-FILE)
;;XXX TO DO

;;ORGANIZE FILES BY PERSIM SYSTEMS--MAJOR SCALES


;;xxx   ---------------------------------- SCALE AND CLASS STRUCTURE ---------------------
#|

Description of The Main SHAQ Scales

The main 16 SHAQ scales hypothesized to be causally related to happiness and related emotions are listed below, and all SHAQ items may be seen on my website.  Some of these concepts/domains have already been partially describe above. They are divided into four major content domains. In addition the Cronbach Alpha 

Core beliefs, and themes
1.	Positive World View. Optimism about the future of the world and own life, lack of entitlement thinking, plus daily positive versus negative thoughts. (9 items). Cronbach α = .805.   Or divide into two subscales:
a.	Grateful abundance beliefs (Grateful, sswv.Grateful). High gratitude for life and whatever one has;  no belief in entitlement. High proportion of positive thoughts (6 items).  Cronbach α =  = 751
b.	Optimism (Optimism,  sswv.Optimism ).  Optimism about self and world. Good forces in control (3 items). Cronbach α = ..762.

2.	Unconditional Worth of Self and Others.  Degree to which one accepts/values all parts of ones’ self and others no matter what their individual characteristics and behaviors have been.  It also has items related to unconditional gratitude for life. (13 items). Cronbach α = .795.  Divides into following three subscales.
a.	Non  contingent or dysfunctional  self-worth (NoContSW, ssswNonCont).  Self-worth not based upon being liked, strong, the best, living by the rules, or being a winner (7 items).  Cronbach α =  .821.
b.	Balanced love-happiness gratitude  (LoHapGr, ssswHapAllGrat ).  Love and happiness for self and all others, gratitude, and make decisions to maximize happiness balancing it across time and people.  This scale’s meaning is also at the heart of my concept of Higher Self.   (5 Items). Cronbach α = .787.
c.	Accept all of self  (AccSelf, ssswAcAllSelf).  Accept all parts of self (1 item).  

3.	Internal Control. Degree of self-sufficiency and responsibility one takes for his/her own life, health, and happiness without undo influence of others.  (7 items). Cronbach α =  .707.  I-E scale can be divided into three subscales below.
a.	Autonomy, independence (Autonomy, ssieautony).  Belief in taking care of self, controlling own happiness, not dependent upon one person (3 items).  Cronbach α = .680.
b.	Not codependent (NotCodep, ssiencodep). Not care for others above self or care more for another than they do for self (3 items). Cronbach α = .682.
c.	Not external control (NotExtrC, ssienother).  Belief that happiness not controlled by heredity or others. (2 Items). Cronbach α =  = .505.

4. Absolute-Grounded Integrated Ethics..Ethics philosophers and religions agree on many general principles. I attempted to pick a few themes I thought might be important for this scale which bases a person’s ethics more on absolute principles and wholes such as humanity, nature, or God than on self, family, or any group.  It judges people even more on their inner qualities and assumes some basic inner goodness and inherent value in all people. In addition, I included questions about astrology (very much frowned upon by philosophers, scientists, and religion) and life after death, which is believed by many approaches and people.  Some people base their ethics on the reward of heaven  (14 items). Cronbach α = .746. This scale can be divided into five subscales and the above two items.
a.	Ethics based upon absolutes (AbsoEth, ssb2.Ethics grounded in abstract absolutes versus relativism. Philosophical beliefs guide daily life, ethically responsible even if bad genes or environment, science/reason alone not enough to guide ethics (4 items). Cronbach α = 598.
b.	Forgiving, egalitarian ethics (ForgivEth, ssb2Forgiv). Forgiveness based upon inner qualities not based upon good works.  Not believe bad only happens to bad (2 items).  Cronbach α = .634.
c.	Identify with humanity (HumIDEth, ssb2IDgrnd)  Identify with humanity over family or any group. (2 items). Cronbach α = .480.
d.	Meaning from abstract absolutes (AbsMeanE, ssb2GrndMng).  Primary  ethics meaning from abstract absolutes (e.g. God, Nature); not from self or others  (2 items). Cronbach α = .316.
e.	Value inner goodness (InrGood, ssb2InrGood). Inner goodness in all, goodness depends more on attitude (2 items). Cronbach α = .563.
f.	Not astrology belief  (NoAstrol, ssb2noAstr). Not belief in astrology (1 item).
g.	Life after death belief (EverLife, ssb2lifad). (1 item).

Life Values and Themes
1.	HigherSelf (HighSlfV, T1HigherSelf). Values self happiness, integrity, development, learning, discipline, self-sufficiency, independence, balance, and strong philosophy of life. (10 items). Cronbach α = .916.
2.	Non-Family Social Intimacy (IntimVal, T2SocIntimNoFamScale). Values intimacy, romance and being liked, respected, and supported.  Dislikes conflict (6 items). Cronbach α = .871.
3.	Family Care (FamilyVa, T3FamCareScale).Values family and parents  Care-giving.  (3 items). Cronbach α = .795.
4.	Success-Status (SucStatVa, T4SuccessStatusMater). Values education, success, high income and possessions, respect, status, being a CEO, and completing important goals. (8 items). Cronbach α = .891.
5.	Goodness-Idealism-Order (IdealOrd, T5OrderPerfectGood). Values goodness, beauty, idealism, orderliness, perfection, organization, justice, simplicity, cleanliness (7 items).  Cronbach α = .875.
6.	God-Spirituality-Religion (SpiritGd, T6GodSpiritRelig). Values spiritual intimacy, God, religion, obedience to God (4 items). Cronbach α = .934.
7.	Impact-giving-challenge-exploration (ImpactEx, T7ImpactChallengeExplor).Values giving, impact on world, mental challenge, exploration, uniqueness, and diversity (6 items). Cronbach α = .858.
8.	Attention-Adventure-Play (AdvntPlay, T8AttentionFunEasy). Values adventure, play, attention, fun, effortlessness (4 items).  Cronbach α = .777.
9.	Value Self-All Unconditionally (UncondVa, T9ValueSelfAllUncond). Unconditional valuing of self and others (2 items). Cronbach α = .601.
10.	Overcome Problems-Accept Self (OvercomP, T10OvercmProbAcceptSelf). Values overcoming problems, self-protection, and personal healing (2 items).  Cronbach α = .600.
11.	Duty-Punctuality (DutyPunc, T11DutyPunctual). Values duty, obligation, and punctuality (2 items).  Cronbach α = .640.


Self-oriented life skill areas
1.	Self-Rated Confidence, Knowledge, and Skills.  A comprehensive list of knowledge and skills areas was developed, and subjects were asked to rate their own confidence in each of these.  It is assumed that the ratings reflect a combination of actual knowledge and skills and confidence level. It is also assumed that these items would correlate highly with Bandura’s highly useful self-efficacy expectations items; but no research was done to test this hypothesis.  (41 items). Cronbach α =  .955.  Can divide into the following seven subscales.

a.	Learning Self-Confidence (LearnSC, sssclearn ) Confidence in own intelligence, learning, study skills, analytical thinking, synthesis, research methodology, computer-related, and critical thinking (7 items).   Cronbach α = .891.
b.	Optimistic-assertive task and person engagement SC (AssertSC, sssccopopt). Achievement motivation, work habits, emotional control, optimism, self-disclosure, and caring conflict resolution (6 items).  Cronbach α = .860
c.	Self management (SlfManSC, ssscsmsmsd ). Self-management of decision-making/planning, time-management, self-development/change, finances, self-discipline, and health (7 items). Cronbach α = .884.
d.	Career Interpersonal SC (CarIntSC, ssscinterp ). Managing others, persuasion, meeting people, public speaking, and adaptability (7 items).  Cronbach α = .864.
e.	Helping Counseling SC  (HelpSC, ssscallhelp ). Knowledge of philosophy, religion, and social science and helping, counseling, teaching interpersonal skills. (6 Items). Cronbach α =  .843.
f.	Natural Science SC  (NatSciSC, ssscscience ). Natural science, biology, and engineering (4 items). Cronbach α = .815.
g.	Art and Creative SC (ArtCreSC, ssscartcre). Fine and performing arts, and creative thinking  (3 items). Cronbach α = .758.

2	Self-management Skills. Skills related to self-care, decision-making, goal-setting, and time-management including leading a balanced life attending to all main need/value areas. Many items are based upon my O-PATSM time-management system, used on hundreds of students who reported high consumer ratings. (See www.csulb.edu/~tstevens/opatsm.htm?) It had very good validating evidence from earlier LSQ studies. (15 items). Cronbach α =  .871.
a.	Time-management (TimeMan , sssmTimeManGoalSet).  Time management –Frequent sessions prioritizing goals and writing daily task lists for each life area. Breaking large projects into organized, scheduled tasks  (5 items).  Cronbach α = .827.
b.	Accomplishment (Accompt, sssmAccompLoRush )  Busy, efficient task completion without feeling too rushed or pressured  (2 items). Cronbach  α= .507.
c.	Self-development (SlfDevel,  sssmSelfDevel). Self-development habits and skills including taking advice and self-change program(s) (3 Items). Cronbach α = .754.
d.	Self-health care (SlfHelth, sssmHealthHabs)  Self-care health—exercise,diet,sleep. (3 Items). Cronbach α =  .574.


2.	Emotional Coping. Proportion of the time one makes a particular positive or negative coping response to a negative emotional state. It had very good validating evidence from earlier LSQ studies. (20 items). Cronbach α =  .850. The scale can be divided into the following five subscales with the eating item left over.
a.	Problem-solving coping responses (PrbSlvCR, sscpProbSolv). Face, explore, discuss problems (4 items). Cronbach α =  .692.
b.	Positive thoughts CR (PosThCR, sscpPosThoughts).  Positive; not critical, punitive, or negative thoughts in response to negative emotions (2 items). Cronbach α = .517.
c.	Positive actions CR (PosActCR, sscpPosActs).  Fun, involving, or vigorous activities when upset (2 items). Cronbach α = .542.
d.	Not critical or angry CR (NoAngCR, sscpNoBlameAngerWDraw).  Not critical, blaming, or angry toward self or others and not withdraw from others in response to negative emotions (5 items).  Cronbach α =  .771.
e.	Not smoke or drugs CR (NoSmDrCR, sscpNotSmokDrugMed).  No smoking, drinking, or taking medication in response to being upset (2 items). Cronbach α =  .607.
f.	Not eating CR (NotEatCR, sscpNotEat).  Avoid eating as a response to being upset versus eat when upset (1 item).

4. (Low) Greatest Fears (LoGrFear).. Low degree of common major fears such as illness, poverty, death, failure, rejection, and confidence in ability to overcome fears or circumstances.  (12 items). Cronbach α =  .864. Or may be divided into three subscales.
	a. (Low)  Social fears (LoSocFr, sswfsocial).  Low fear .of being unwanted, alone, unloved, etc.. (4 items). . Cronbach α = .818
	b. (Low) Self-related fears (LoSelfFr, sswfself). Confidence can overcome worst fears/problems. Low fear of being overwhelmed by personal problems (3 items).  Cronbach α = .502.
	c. (Low) Failure-poverty fear (LoFailFr, sswfpovfai).  Low fear of poverty, failure, lack of career success. (3 items).  Cronbach α = .800.
	d. (Low) Illness-death fear (LoDeIlFr, sswfilldea).  Low fear of illness or death. (2 items). Cronbach α =  .726.



Interpersonal-oriented life skill areas (from the Stevens Relationship Questionnaire)

These interpersonal scales were part of the Stevens Relationship Questionnaire (SRQ) and have previous validating evidence from an earlier study.   Correlations with the Locke-Wallace Marital Adjustment Scale were taken for 96 subjects in marital or marital-like relationships and other validating measures were used.  Results were very encouraging, so these SHAQ scales are almost identical to the SRQ scales. Most items on these scales were originally taken from materials I had developed for assertion training and marital relationship workshops and had been clinically tested on hundreds of consumers.  Much of the 10 experimental studies on Self-Instructional Mediated Life Skills Learning Modules also tested some aspect of assertion and intimacy training-related skills. All 10 studies had positive results.

Interpersonal Values, Beliefs, Skills
Even though the SRQ scales had been very useful, I decided that they obscured too much information, and decided to use a theoretical  analysis combined with a Factor Analysis of the SRQ scales and create a set of new scales based upon that analysis.  The new analysis kept the Liberated Roles and Romantic scales as is.  Otherwise it approximately broke the combined Assertive Conflict and Intimacy scales into several subscales and broke the Independent Intimacy scale into subscales.  The result is nine scales instead of five thus adding predictive power; and I also think the scales are more easily interpreted.
1.	Democratic, assertive communication and conflict resolution (AssertCR, IntSS1a).  Seeks win-win solutions to conflicts, with clear, caring, understanding, non-defensive, calm, persistent, honest, friendly, non-threatening behaviors  (13 items). Cronbach α = .909.
2.	Open, Honest Communication and Goal Harmony  (OpenCm, IntSS1b). Reveal most private and sensitive thoughts and feelings regularly,  shared goals, and feelings of relationship commitment (10 items). Cronbach α = .888.
3.	Close, Romantic Interactions (Romantic,  IntSS2).  Romantic attraction, playful, romantic surprises, fantasize about partner, go to romantic places, have special celebrations together  (7 items). Cronbach α = .879.
4.	Liberated Roles (LiberRol,  IntSS3).  Equality in decisions, roles, chores/tasks, career priority, some non-stereotypical role behaviors (7 items). Cronbach α = .844.
5.	Valuing Partner--Love and Respect for Partner.  (LoveRes,  IntSS4).  Love, respect, cheerfully do favors for,  praise more than criticize partner. Feel free when partner home, feel committed not trapped (9 items). Cronbach α = .813.
6.	Relationship Independence-Autonomy (IndepRel, IntSS5).  Autonomy within committed relationship.  Partners feeling encouraged and free to pursue own interests and friendships.  Each enjoy being alone, having partially separate funds, and believing they could be happy with another person if necessary. Value individual happiness over marriage per se. (11 items). Cronbach α = .766.
7.	Positive, Supportive Communication (PosSupCm, IntSS6).   Supportive of partner even during disagreements, rarely use negative labels, exaggerations, threats, anger.  If one partner gets angry, other usually uses deescalating response (7 items). Cronbach α = .777.
8.	Collaborative, Non-Manipulative Relationship (Collabor, IntSS7). Neither partner manipulating or controlling.  Partners feel safe revealing weaknesses. Can work together or teach each other effectively (7 items). Cronbach α = .781.
9.	Separateness  (Separate,  IntSS8).  Spending weekends alone OK.  Not consult for small decisions  (2 items). Cronbach α = .661.


Learning Skills and Academic-Related Scales

Several academic scales were created.  An initial interest in SHAQ was to use it for college students in ways similar to the way that the LSQ had been used so successfully with University 100 students.  However, conditions changed at CSULB, and SHAQ hasn’t so far had the large numbers of University 100 students completing it that the LSQ did even though SHAQ is far more convenient and thorough.
It could be used by almost any university in the world.

1.	Time efficient and confident study versus learning disability (ConfEffc, ssl1aConfidEfficStudyTest)  Think that tests and grades reflect abilities (versus smarter than test).. Not need more time for tests and assignments (8 items). Cronbach α = .859.
2.	Not Study-Avoidant (NoAvoidS, ssl1bConfidNotAvoidStudy).  Not slower or more anxious about beginning assignments, reading, or writing than other students. Feel like college capable (5 items).  Cronbach α = ..669.
3.	Positive Campus Life Attitudes (CampsLif, ssl2SatisCampusFacFriendsGrdes).  Look forward to classes, campus activities. Enjoy students and instructors. Happy with campus and grades (8 items).  Cronbach α = .902.
4.	Writing Skills-Confidence (WriteCon, ssl3WritingSkills). Good at organizing papers and writing.  No vision problems. (4 items).  Cronbach α = .818.
5.	Struggle to Build Mental Structures (MentStru, ssl4BldMentalStruct). Study alone, struggle with difficult material, attempt to build own theories and associations. Make boring material interesting (7 items).  Cronbach α = n.834.
6.	Basic Study Skills (StudySkl, ssl5BasicStudySkills).  Preview, outline, review assignments; take good notes; good concentration; create visual map; review material at least 3 times for exam (6 items).  Cronbach α = .811.
7.	Degree Motivated (DegrMotv, ssl6SelfmanAcadGoals). Motivated and confident will degree and won’t drop out. Not confused about goals and confident of finances (5 items). Cronbach α = .818.
8.	Math-Science Seek Principles (SeekPrin, ssl7MathSciPrinc). Enjoy and good in math, and seek to understand basic principles in math and science  (2 items).  Cronbach α = .628.
9.	Good Study Environment  (StudEnvr, ssl8StudyEnvir). Homework encouraged by family, friends; not chores conflict; good place to study; and time available to study (3 items).  Cronbach α = .516.
10.	Attendance and Persistence (Attend, ssl9AttendHW). Attend classes, never drop classes, and manage study time well (3 items).  Cronbach α = .702.
11.	Efficient, Confident Learning  (EfficLrn, ssl10MemNotAnx). Efficient learning time use, good memory, relaxed during exams (3 items).  Cronbach α = .732.
12.	Internal motivation to be in college (IntMotiv, ssl11NotNonAcadMot)  Internal motives versus pleasing parents, making money, or being confused why in school. Financially self-supporting (4 items). Cronbach α = .473.

The following two aptitude items were user estimate items, and not scales.
13.	Verbal Aptitude test score estimate (ssl12). (1 item). 
14.	Math Aptitude test score estimate.(ssl13). (1 item).


SHAQ College Major Interest Scales
Briefly describe but don’t do much with.  


SHAQ Scales and Scoring.  Discuss types of scales, 0-1 scoring relative scoring, put here or under content validity below.

ORIGINAL SCALES
Number of main-original scales (without values/themes) = 8

Number of new themes/values = 11

(original values/themes = 4)

Original SRQ/Interpersonal scales = 5.

Original Learning scales = 5




NEW SCALES
New Themes plus all major subscales (not incl Interpersonal) = 47 scales.

Interpersonal subscales =9

Main plus Interpersonal = 56 scales.

Acad Success Subscales 12 + 2 items.

All (except career) subscales/predictors = 70.

Redundant scales:  HigherSelf,  


The outcome items and scales used to validate SHAQ 

Several scales and numerous items were written to validate SHAQ’s main scales and items.  These scales include the Overall Happiness Scale, the (Low) Depression Scale, the (Low) Anxiety Scale, the (Low) Anger and Aggression Scale, the Interpersonal Relations Outcomes Scale, and the Health Outcomes Scale.  In addition, a number of items were seen as important outcome measures.  These items include highest annual salary, educational attainment, grade averages, occupational status, etc.  The first three and fifth scales will be described in more detail, since they are more central to the current paper.

1. The Overall Happiness (OvHap) Scale. A 7-point scale measured happiness in various life areas such as home, career, family, romance, recreation, health, and direct questions about overall happiness for recent past, current, and expected future times. (15 ( items). Cronbach α = .919.

2. The (Low) Depression (LoDep) Scale.  Items were developed from the DSM-IV depression diagnosis criteria and written as self-assessment items.  The scale also asks about the amount of psychotherapy and medication taken for depression. (6 items).  Cronbach α =.828.

3. The (Low) Anxiety  (LoAnx) Scale.  Items were developed from the DSM-IV anxiety disorder  diagnosis criteria and written as self-assessment items. The scale also asks about the amount of psychotherapy and medication taken for anxiety-related disorders. Included were phobias and some obsession and compulsion-related items. (9 items). Cronbach α = .790.

4. The (Low) Anger-Aggression (LoAng) Scale.  Items were developed from ???? ( 5 items). Cronbach α = .850. 

5. The Interpersonal Relations Outcomes (IntRelOut) Scale.  Number and quality of friends, happiness in marital-like relationship, work relationships, etc. (7 items).  Cronbach α =.698.  This is not a well-unified scale, but consists of a collection of related relationship items that are each important.
/
6. Physical Health (PhyHlth) Scale.  Frequency of illness, alcohol and drug use, weight, and conditioning estimate. ( 6 items). Cronbach α =.544.  This obviously is not a unified scale, but it is a collection of important health behaviors and outcomes.


Biographical Items 
|#





;; FROM MY PAPER, ETC AND DATA -----------------------------------
;;
#|
Description of the SHAQ Scales

The SHAQ scales hypothesized to be causally related to happiness and related emotions are listed below, and all SHAQ items may be seen on my website.  Some of these concepts/domains have already been partially describe above. They are divided into four major content domains. In addition the Cronbach alpha is listed for each scale and subscale.  Each scale is presented with short variable labels.


Life Values and Themes

The 11 Value-Themes scales are the result of a factor and logical analysis of the original four scales—Achievement-Status; Social-Family Related; Internal-Intrinsic; and Non-Dysfunctional Values-Themes.  Data from this factor analysis and all other factor analytic studies will not be presented in this article because of the added complexity.  The data will eventually be posted on my website.
1.	Higher Self (HighSlfV, T1HigherSelf). Values self happiness, integrity, development, learning, discipline, self-sufficiency, independence, balance, and strong philosophy of life. (See www.csulb.edu/~tstevens/h3hiself.htm, Chapter 3, 10 items). Cronbach α = .916. 
2.	Non-Family Social Intimacy (IntimVal, T2SocIntimNoFamScale). Values intimacy, romance and being liked, respected, and supported.  Dislikes conflict (6 items). Cronbach α = .871.
3.	Family Care (FamilyVa, T3FamCareScale).Values family and parents. Care-giving.  (3 items). Cronbach α = .795.
4.	Success-Status (SucStatVa, T4SuccessStatusMater). Values education, success, high income and possessions, respect, status, being a CEO, and completing important goals. (8 items). Cronbach α = .891.
5.	Goodness Idealism Order (IdealOrd, T5OrderPerfectGood). Values goodness, beauty, idealism, orderliness, perfection, organization, justice, simplicity, cleanliness (7 items).  Cronbach α = .875.
6.	God Spirituality Religion (SpiritGd, T6GodSpiritRelig). Values spiritual intimacy, God, religion, obedience to God (4 items). Cronbach α = .934.
7.	Impact Giving Challenge Exploration (ImpactEx, T7ImpactChallengeExplor).Values giving, impact on world, mental challenge, exploration, uniqueness, and diversity (6 items). Cronbach α = .858.
8.	Attention Adventure Play (AdvntPlay, T8AttentionFunEasy). Values adventure, play, attention, fun, effortlessness (4 items).  Cronbach α = .777.
9.	Value Self-All Unconditionally (UncondVa, T9ValueSelfAllUncond). Unconditional valuing of self and others (2 items). Cronbach α = .601.
10.	Overcome Problems--Accept Self (OvercomP, T10OvercmProbAcceptSelf). Values overcoming problems, self-protection, and personal healing (2 items).  Cronbach α = .600.
11.	Duty Punctuality (DutyPunc, T11DutyPunctual). Values duty, obligation, and punctuality (2 items).  Cronbach α = .640.

Core Beliefs and Fears

These scales are almost exactly from items originally presented in the book and were supported by factor analytic study.
1.	Positive World View. Optimism about the future of the world and own life, lack of entitlement thinking, plus daily positive versus negative thoughts (see www.csulb.edu/~tstevens/h4world.htm, Chapter 4, 10 items). Cronbach α = .808. It divides into the following three subscales.
a.	Grateful abundance beliefs (Grateful, sswvGrateful). High gratitude for life and whatever one has; high proportion of positive thoughts (5 items).  Cronbach α =  .806
b.	Optimism (Optimism,  sswvOptimism ).  Optimism about self and world. Good forces in control (3 items). Cronbach α =.762.
c.	Not Entitlement Beliefs (NoEntitl, sswvNoEntitl).  Not believing that person owed either the basic necessities or a high standard of living (2 items).  Cronbach α = .630.

2.	Self-Worth Scale (Unconditional Worth of Self and Others).  Degree to which one accepts/values all parts of one’s self and others not contingent on others’ individual characteristics or behaviors. It also has items related to unconditional gratitude for life. My definition of self-worth is the unconditional aspect of self-esteem. It differs from self-confidence (see below) which is the aspect conditional upon success or other factors.  (See www.csulb.edu/~tstevens/h5self.htm,  Chapter 5, 12 items). Cronbach is α = .778.  Three subscales.
a.	Non-contingent or dysfunctional self-worth (NoContSW, ssswNonCont).  Self-worth not based upon being liked, strong, the best, living by the rules, or being a winner (6 items).  Cronbach α = .802.
b.	Balanced love-happiness gratitude (LoHapGr, ssswHapAllGrat ).  Love and happiness for self and all others, gratitude, and make decisions to maximize happiness balancing it across time and people.  This scale’s meaning is also overlaps with my concept of Higher Self.   (5 Items). Cronbach α = .787.
c.	Accept all of self  (AccSelf, ssswAcAllSelf).  Accept all parts of self (1 item).  

3.	Internal Control. Degree of self-sufficiency and responsibility one takes for his/her own life, health, and happiness without undue influence from others (See www.csulb.edu/~tstevens/h6intern.htm, Chapter 7, 7 items). Cronbach α = .707.  Three subscales.
a.	Autonomy, independence (Autonomy, ssieautony).  Belief in taking care of self, controlling own happiness, not dependent upon one person (3 items).  Cronbach α = .680.
b.	Not codependent (NotCodep, ssiencodep). Not care for others above self or care more for another than they do for self (3 items). Cronbach α = .682.
c.	Not external control (NotExtrC, ssienother).  Belief that happiness not controlled by heredity or others (2 Items). Cronbach α =.505.

4.	Absolute-Grounded Integrated Ethics..Ethics philosophers and religions agree on many general principles. I attempted to pick a few themes I thought might be important for this scale which bases a person’s ethics more on absolute principles and wholes such as humanity, nature, or God than on self, family, or any group.  It judges people even more on their inner qualities and assumes some basic inner goodness and inherent value in all people. In addition, I included questions about astrology (very much frowned upon by philosophers, scientists, and religion) and life after death, which is believed by many approaches and people.  Some people base their ethics on the reward of heaven. (14 items). Cronbach α = .746. Five subscales.
a.	Ethics based upon absolutes (AbsoEth, ssb2.Ethics grounded in abstract absolutes versus relativism. Philosophical beliefs guide daily life. Ethically responsible even if bad genes or environment. Science/reason alone not enough to guide ethics. (4 items). Cronbach α = 598.
b.	Forgiving, egalitarian ethics (ForgivEth, ssb2Forgiv). Forgiveness based upon inner qualities not based upon good works.  Not believe bad only happens to bad (2 items).  Cronbach α = .634.
c.	Identify with humanity (HumIDEth, ssb2IDgrnd) Identify with humanity more than family or any group. (2 items). Cronbach α = .480.
d.	Meaning from abstract absolutes (AbsMeanE, ssb2GrndMng).  Primary ethics meaning from abstract absolutes (e.g. God, Nature); not from self or other people.  (2 items). Cronbach α = .316.
e.	Value inner goodness (InrGood, ssb2InrGood). Inner goodness in all, goodness depends more on attitude (2 items). Cronbach α = .563.
f.	Not astrology belief (NoAstrol, ssb2noAstr). Not belief in astrology (1 item).
g.	Life after death belief (EverLife, ssb2lifad). (1 item).



5.	Low Greatest Fears (LoGrFear).  Low degree of common major fears such as illness, poverty, death, failure, rejection, and confidence in ability to overcome fears or circumstances. Fears are interesting to people per se. However, I think that people’s greatest fears reflect their top values and goals in life and are related to their success in philosophical and practical cognitive structuring of those basic life issues we all face. The underlying fear is usually that their greatest values/goals will be unsatisfied (Chapter 4, 12 items). Cronbach α = .864. Four subscales.
a.	Low social fears (LoSocFr, sswfsocial).  Low fear .of being unwanted, alone, unloved, etc. (4 items).  Cronbach α = .818.
b.	Low self-related fears (LoSelfFr, sswfself). Confidence can overcome worst fears/problems. Low fear of being overwhelmed by personal problems (3 items).  Cronbach α = .502.
c.	Low failure-poverty fear (LoFailFr, sswfpovfai).  Low fear of poverty, failure, lack of career success. (3 items).  Cronbach α = .800.
d.	Low illness-death fear (LoDeIlFr, sswfilldea).  Low fear of illness or death. (2 items). Cronbach α = .726.


Self-Oriented Life Skill Areas

The following scales cover cognitive-behavioral skill areas that I believe are important to happiness and life success.  The Self-Confidence scale is largely an overview consisting of items each covering broad skill areas.   The subsequent scales cover key areas in more detail. Interpersonal and learning-academic skill areas are covered in later sections.

1.	Self-Confidence.  A list of knowledge and skills areas was developed, and subjects were asked to rate their own confidence/skills for each area. The Self-Confidence scale measures the contingent, efficacy aspect of self-esteem.  This scale has emerged as a separate factor from the other main scales in factor analytic studies.  I assume that the scale’s self-report ratings reflect a combination of actual knowledge and skill and of confidence level. I also assumed that these scales measure something similar to Bandura’s (1982, 1997, 2000) concept of self-efficacy. (Chapter 5, 41 items). Cronbach α = .955.  Seven subscales.
a.	Learning Self-Confidence (LearnSC, sssclearn).  Confidence in own intelligence, learning, study skills, analytical thinking, synthesis, research methodology, computer-related, and critical thinking (7 items).  Cronbach α = .891.
b.	Optimistic-assertive task and person engagement SC.  (AssertSC, sssccopopt). Achievement motivation, work habits, emotional control, optimism, self-disclosure, and caring conflict resolution (6 items). Cronbach α = .860.
c.	Self management (SlfManSC, ssscsmsmsd ). Self-management of decision-making/planning, time-management, self-development/change, finances, self-discipline, and health (7 items). Cronbach α = .884.
d.	Career Interpersonal SC (CarIntSC, ssscinterp). Managing others, persuasion, meeting people, public speaking, and adaptability (7 items).  Cronbach α = .864.
e.	Helping Counseling SC (HelpSC, ssscallhelp).  Knowledge of philosophy, religion, and social science and helping, counseling, teaching interpersonal skills. (6 Items). Cronbach α = .843.
f.	Natural Science SC  (NatSciSC, ssscscience). Natural science, biology, and engineering (4 items). Cronbach α = .815.
g.	Art and Creative SC (ArtCreSC, ssscartcre). Fine and performing arts, and creative thinking (3 items). Cronbach α = .758.
2.	Self-management Skills. Skills related to self-care, decision-making, goal-setting, and time-management including leading a balanced life and attending to all main need/value areas. Many items are based upon my OPATSM time-management system, used on hundreds of students who reported high consumer ratings. (See www.csulb.edu/~tstevens/h9patsm.htm) It had good validating evidence from earlier LSQ studies. (Chapter 9, 15 items). Cronbach α = .871. Four subscales.
a.	Time-management (TimeMan , sssmTimeManGoalSet).  Time management/goal-setting/decision-making –Frequent sessions prioritizing goals and writing daily task lists for each life area. Breaking large projects into organized, scheduled tasks (5 items).  Cronbach α = .827.
b.	Accomplishment (Accompt, sssmAccompLoRush ).  Busy, efficient task completion without feeling too rushed or pressured  (2 items). Cronbach α= .507.
c.	Self-development (SlfDevel, sssmSelfDevel). Self-development habits and skills including taking advice and self-change program(s) (3 Items). Cronbach α = .754.
d.	Self-health care (SlfHelth, sssmHealthHabs). Self-care health—exercise, diet, sleep. (3 Items). Cronbach α = .574.





3.	Emotional Coping. Proportion of the time the user makes a particular positive or negative coping response to a negative emotional state. It had very good validating evidence from earlier LSQ studies (See www.csulb.edu/~tstevens/h8hf2.htm,  Chapter 8, 20 items). Cronbach α = .850. Six subscales.
a.	Problem-solving coping responses (PrbSlvCR, sscpProbSolv). Face, explore, and discuss problems (4 items). Cronbach α = .692.
b.	Positive thoughts CR (PosThCR, sscpPosThoughts).  Positive; not critical, punitive, or negative thoughts in response to negative emotions (2 items). Cronbach α = .517.
c.	Positive actions CR (PosActCR, sscpPosActs).  Fun, involving, or vigorous activities when upset (2 items). Cronbach α = .542.
d.	Not critical or angry CR (NoAngCR, sscpNoBlameAngerWDraw).  Not critical, blaming, or angry toward self or others and not withdraw from others in response to negative emotions (5 items).  Cronbach α =  .771.
e.	Not smoke or drugs CR (NoSmDrCR, sscpNotSmokDrugMed).  No smoking, drinking, or taking medication in response to being upset (2 items). Cronbach α = .607.
f.	Not eating CR (NotEatCR, sscpNotEat).  Avoid eating as a response to being upset versus eat when upset (1 item).


Interpersonal Values, Beliefs, and Skills (from the Stevens Relationship Questionnaire)
  The new analysis resulted in leaving the Liberated Roles and Romantic scales unchanged.    However, I broke the combined Assertive Conflict, Intimacy  and Independent Intimacy scales into new scales.  The result is nine scales instead of five--thus adding specificity and predictive power. The new scales are also more easily interpreted. (Start with www.csulb.edu/~tstevens/assertion_training.htm.) 

(AssertCR, IntSS1a)
"1. Democratic, assertive communication and conflict resolution (AssertCR, IntSS1a).  Seeks win-win solutions to conflicts, with clear, caring, understanding, non-defensive, calm, persistent, honest, friendly, non-threatening behaviors (13 items). Cronbach α = .909."
 (OpenCm, IntSS1b).
"2. Open, Honest Communication and Goal Harmony  (OpenCm, IntSS1b). Reveal most private and sensitive thoughts and feelings regularly, shared goals, and feelings of relationship commitment (10 items). Cronbach α = .888."
 (Romantic,  IntSS2)
"3. Close, Romantic Interactions (Romantic,  IntSS2).  Romantic attraction, playful, romantic surprises, fantasize about partner, go to romantic places, have special celebrations together  (7 items). Cronbach α = .879.
(LiberRol,  IntSS3)
"4. Liberated Roles (LiberRol,  IntSS3).  Equality in decisions, roles, chores/tasks, career priority, some non-stereotypical role behaviors (7 items). Cronbach α = .844."
 (LoveRes,  IntSS4)
"5. Valuing Partner--Love and Respect for Partner.  (LoveRes,  IntSS4).  Love, respect, cheerfully do favors for,  praise more than criticize partner. Feel free when partner home, feel committed not trapped (9 items). Cronbach α = .813."
 (IndepRel, IntSS5)
"6. Relationship Independence-Autonomy (IndepRel, IntSS5).  Autonomy within committed relationship.  Partners feeling encouraged and free to pursue own interests and friendships.  Each enjoy being alone, having partially separate funds, and believing they could be happy with another person if necessary. Value individual happiness over marriage per se. (11 items). Cronbach α = .766."
(PosSupCm, IntSS6)
"7. Positive, Supportive Communication (PosSupCm, IntSS6).   Supportive of partner even during disagreements, rarely use negative labels, exaggerations, threats, anger.  If one partner gets angry, other usually uses deescalating response (7 items). Cronbach α = .777."
 (Collabor, IntSS7)
"8. Collaborative, Non-Manipulative Relationship (Collabor, IntSS7). Neither partner manipulating or controlling.  Partners feel safe revealing weaknesses. Can work together or teach each other effectively (7 items). Cronbach α = .781."
(Separate,  IntSS8)
"9. Separateness  (Separate,  IntSS8).  Spending weekends alone OK.  Not consult for small decisions  (2 items). Cronbach α = .661."


Academic-Success Related Scales

Several academic scales were created after factor analysis of the original five scales of Learning and Study Skills,  Learning Skill Areas, Learning Disabilities, Academic Motivation, and Academic Satisfaction.  The following 12 scales and 2 self-report aptitude items are more independent and specific. (See www.csulb.edu/~tstevens/LEARN.htm.)

1.	Time Efficient and Confident Study--versus learning disability (ConfEffc, ssl1aConfidEfficStudyTest)  Think that tests and grades reflect abilities (versus smarter than test). Not need more time for tests and assignments (8 items). Cronbach α = .859.
2.	Not Study Avoidant (NoAvoidS, ssl1bConfidNotAvoidStudy).  Not slower or more anxious about beginning assignments, reading, or writing than other students. Feel like college capable (5 items).  Cronbach α = .669.
3.	Positive Campus Life Attitudes (CampsLif, ssl2SatisCampusFacFriendsGrdes).  Look forward to classes, campus activities. Enjoy students and instructors. Happy with campus and grades (8 items).  Cronbach α = .902.
4.	Writing Skills-Confidence (WriteCon, ssl3WritingSkills). Good at organizing papers and writing.  No vision problems (added due to factor analysis). (4 items).  Cronbach α = .818.
5.	Build Mental Structures (MentStru, ssl4BldMentalStruct). Study alone, struggle with difficult material, attempt to build own theories and associations. Make boring material interesting (7 items).  Cronbach α = .834.
6.	Basic Study Skills (StudySkl, ssl5BasicStudySkills). Preview, outline, review assignments; take good notes; good concentration; create visual map; review material at least 3 times for exam (6 items).  Cronbach α = .811.
7.	Degree Motivated (DegrMotv, ssl6SelfmanAcadGoals). Motivated and confident will degree and won’t drop out. Not confused about goals and confident of finances (5 items). Cronbach α = .818.
8.	Math-Science Seek Principles (SeekPrin, ssl7MathSciPrinc). Enjoy and good in math, and seek to understand basic principles in math and science (2 items).  Cronbach α = .628.
9.	Study Environment (StudEnvr, ssl8StudyEnvir). Homework encouraged by family, friends; not chores conflict; good place to study; and time available to study (3 items).  Cronbach α = .516.
10.	Attendance and Persistence (Attend, ssl9AttendHW). Attend classes, never drop classes, and manage study time well (3 items).  Cronbach α = .702.
11.	Efficient, Confident Learning (EfficLrn, ssl10MemNotAnx). Efficient learning time use, good memory, relaxed during exams (3 items).  Cronbach α = .732.
12.	Internal Motivation--to be in college (IntMotiv, ssl11NotNonAcadMot). Internal motives versus pleasing parents, making money, or being confused why in school. Financially self-supporting (4 items). Cronbach α = .473.

The following two aptitude items were user estimate items, and not scales.
13.	Verbal Aptitude test score estimate (ssl12). (1 item). 
14.	Math Aptitude test score estimate.(ssl13). (1 item).


SHAQ College Major Interest Scales

Many college students are confused about what academic major they wish to pursue.  To help them narrow the field for investigation, I designed these college major interest scales. The college major  interest scales divided common academic major areas into sets—using typical groupings in universities (CSULB specifically) and groupings by the Strong Interest Inventory as a basis.  The result was the following 11 major interest scales: s.Business major interests, s.Engineering major interests, s.Fine art major interests, s.Helping profession major interests, s.Languagemajor interests, s.Medical major interests, s.Military major interests, s.Natural science major interests, s.Social science major interests, s.Womens or ethnics studies, s.Writing major interests.  I will not examine them in this article.  More research needs to be done on them.


The Outcome Scales and Items for Validating SHAQ 

Several scales and numerous items were written to validate SHAQ’s main scales and items.  These scales include the Overall Happiness Scale, the Low Depression Scale, the Low Anxiety Scale, the Low Anger and Aggression Scale, the Interpersonal Relations Outcomes Scale, and the Health Outcomes Scale.  In addition, a number of items were seen as important outcome measures.  These items include highest annual salary, educational attainment, grade averages, and occupational status. The first three and fifth scales will be described in more detail, since they are more central to the current paper.

1. The Overall Happiness (OvHap) Scale. A 7-point scale measured happiness in various life areas including home, career, family, romance, recreation, health, and direct questions about overall happiness for recent past, current, and expected future time periods (15items). Cronbach α = .919.

2. The Low Depression (LoDep) Scale.  Items were developed from the DSM-IV depression diagnosis criteria and written as self-assessment items.  The scale also asks the amount of psychotherapy and medication taken for depression. It was scored in reverse so that high scores would mean low depression (6 items).  Cronbach α =.828.

3. The Low Anxiety (LoAnx) Scale.  Items were developed from the DSM-IV anxiety disorder diagnosis criteria and written as self-assessment items. The scale also asks the amount of psychotherapy and medication taken for anxiety-related disorders. Included were phobias and some obsession and compulsion-related items. Reverse scored. (9 items). Cronbach α = .790.

4. The Low Anger-Aggression (LoAng) Scale.  Items include frequency of losing temper, name-calling/yelling, aggressive acts, and thoughts about getting even. Reverse scored. (5 items). Cronbach α = .850. 

5. The Interpersonal Relations Outcomes (IntRelOut) Scale.  Number and quality of friends, happiness in marital-like relationship, and work relationships (7 items).  Cronbach α =.698.  This is not a well-unified scale, but consists of a collection of related relationship items that are each important.

6. Physical Health (PhyHlth) Scale.  Frequency of illness, alcohol and drug use, weight, and conditioning estimates. (6 items). Cronbach α =.544.  This is not a unified scale, but it is a collection of important health behaviors and outcomes.


Biographical Items 

Basic personal and educational information was collected to help identify the characteristics of the sample and to discover important relationships between biographical variables and other variables.  Highest career income and educational achievements were used as outcome measures for subjects with ages greater than 25 or 30 years.


Refinement of Scales and Development of the SHAQ Subscales—Number of Scales and Subscales

Originally SHAQ itself (no biographical items or outcome scales) consisted of 4 value-theme scales, 8 main self belief-skill scales, 5 interpersonal scales (from SRQ), and 5 learning-academic scales; for a total of 22 scales.  In addition, a college major-career interest questionnaire of 11 scales had been included for those who wanted to add it. 

The original 22 scales have proved to be useful; however, only the 8 main self belief-skill scales are unchanged. Factor analyses validated the factorial utility of the original 8 main scales and validated separating the value-theme, interpersonal, and learning-academic scales into separate sets. Further factor and logical analyses led to a restructuring of the original 4 value-theme, 5 interpersonal, and 5 learning-academic sets of scales. The 4 value-theme scales grew to a new set of 11 scales, the original 5 interpersonal scales grew to 9, and the original 5 learning-academic scales grew to 14.  Additionally, I used factorial-theoretical analyses to create 36 subscales from the original 8 main self belief-skill scales to give more specified-concrete scales.  The entire process involved a number of factor analytic studies, and goes beyond the scope of this article. 

SHAQ has a grand total of  70 independent scales/subscales. The SHAQ experience also includes biographical items, 6 outcome scales, and potentially 11 major-career choice scales. Subjects’ goals and choices determine scales administered. In addition two redundant scales overlap other scales, but are of special interest.  One scale is the Higher Self scale that consists of items fitting the description of Higher Self in Chapter 3, and one is the Forgiveness scale.  The original value-theme, SRQ interpersonal, and academic scales are not described in this body, but are described in the Appendices.  


The Happiness Quotient (HQ) Composite Scale

Dyer (1976) coined the term, “Happiness IQ.”  I wanted to summarize this complex maze of SHAQ scales for both users and researchers.  Therefore, I created the Happiness Quotient (HQ).  The HQ is a simple formula for estimating one’s overall ability to achieve happiness.  The HQ is the linear combination of the 56 non-academic SHAQ scales.  The weights are the correlations of the individual scales with happiness.   One use of the HQ is to give users feedback about their progress developing success and happiness-related attributes.  Users may examine the components of their HQ score to see strengths and areas needing improvement.  They may even look at individual questions and follow Internet links to help them develop those areas. Since the questions were designed to be face-valid, clear, learnable items, question/score examination can be very useful. 
|#



#|
Description of the SHAQ Scales

The SHAQ scales hypothesized to be causally related to happiness and related emotions are listed below, and all SHAQ items may be seen on my website.  Some of these concepts/domains have already been partially describe above. They are divided into four major content domains. In addition the Cronbach alpha is listed for each scale and subscale.  Each scale is presented with short variable labels.


Life Values and Themes

The 11 Value-Themes scales are the result of a factor and logical analysis of the original four scales—Achievement-Status; Social-Family Related; Internal-Intrinsic; and Non-Dysfunctional Values-Themes.  Data from this factor analysis and all other factor analytic studies will not be presented in this article because of the added complexity.  The data will eventually be posted on my website.
1.	Higher Self (HighSlfV, T1HigherSelf). Values self happiness, integrity, development, learning, discipline, self-sufficiency, independence, balance, and strong philosophy of life. (See www.csulb.edu/~tstevens/h3hiself.htm, Chapter 3, 10 items). Cronbach α = .916. 
2.	Non-Family Social Intimacy (IntimVal, T2SocIntimNoFamScale). Values intimacy, romance and being liked, respected, and supported.  Dislikes conflict (6 items). Cronbach α = .871.
3.	Family Care (FamilyVa, T3FamCareScale).Values family and parents. Care-giving.  (3 items). Cronbach α = .795.
4.	Success-Status (SucStatVa, T4SuccessStatusMater). Values education, success, high income and possessions, respect, status, being a CEO, and completing important goals. (8 items). Cronbach α = .891.
5.	Goodness Idealism Order (IdealOrd, T5OrderPerfectGood). Values goodness, beauty, idealism, orderliness, perfection, organization, justice, simplicity, cleanliness (7 items).  Cronbach α = .875.
6.	God Spirituality Religion (SpiritGd, T6GodSpiritRelig). Values spiritual intimacy, God, religion, obedience to God (4 items). Cronbach α = .934.
7.	Impact Giving Challenge Exploration (ImpactEx, T7ImpactChallengeExplor).Values giving, impact on world, mental challenge, exploration, uniqueness, and diversity (6 items). Cronbach α = .858.
8.	Attention Adventure Play (AdvntPlay, T8AttentionFunEasy). Values adventure, play, attention, fun, effortlessness (4 items).  Cronbach α = .777.
9.	Value Self-All Unconditionally (UncondVa, T9ValueSelfAllUncond). Unconditional valuing of self and others (2 items). Cronbach α = .601.
10.	Overcome Problems--Accept Self (OvercomP, T10OvercmProbAcceptSelf). Values overcoming problems, self-protection, and personal healing (2 items).  Cronbach α = .600.
11.	Duty Punctuality (DutyPunc, T11DutyPunctual). Values duty, obligation, and punctuality (2 items).  Cronbach α = .640.

Core Beliefs and Fears

These scales are almost exactly from items originally presented in the book and were supported by factor analytic study.
1.	Positive World View. Optimism about the future of the world and own life, lack of entitlement thinking, plus daily positive versus negative thoughts (see www.csulb.edu/~tstevens/h4world.htm, Chapter 4, 10 items). Cronbach α = .808. It divides into the following three subscales.
a.	Grateful abundance beliefs (Grateful, sswvGrateful). High gratitude for life and whatever one has; high proportion of positive thoughts (5 items).  Cronbach α =  .806
b.	Optimism (Optimism,  sswvOptimism ).  Optimism about self and world. Good forces in control (3 items). Cronbach α =.762.
c.	Not Entitlement Beliefs (NoEntitl, sswvNoEntitl).  Not believing that person owed either the basic necessities or a high standard of living (2 items).  Cronbach α = .630.

2.	Self-Worth Scale (Unconditional Worth of Self and Others).  Degree to which one accepts/values all parts of one’s self and others not contingent on others’ individual characteristics or behaviors. It also has items related to unconditional gratitude for life. My definition of self-worth is the unconditional aspect of self-esteem. It differs from self-confidence (see below) which is the aspect conditional upon success or other factors.  (See www.csulb.edu/~tstevens/h5self.htm,  Chapter 5, 12 items). Cronbach is α = .778.  Three subscales.
a.	Non-contingent or dysfunctional self-worth (NoContSW, ssswNonCont).  Self-worth not based upon being liked, strong, the best, living by the rules, or being a winner (6 items).  Cronbach α = .802.
b.	Balanced love-happiness gratitude (LoHapGr, ssswHapAllGrat ).  Love and happiness for self and all others, gratitude, and make decisions to maximize happiness balancing it across time and people.  This scale’s meaning is also overlaps with my concept of Higher Self.   (5 Items). Cronbach α = .787.
c.	Accept all of self  (AccSelf, ssswAcAllSelf).  Accept all parts of self (1 item).  

3.	Internal Control. Degree of self-sufficiency and responsibility one takes for his/her own life, health, and happiness without undue influence from others (See www.csulb.edu/~tstevens/h6intern.htm, Chapter 7, 7 items). Cronbach α = .707.  Three subscales.
a.	Autonomy, independence (Autonomy, ssieautony).  Belief in taking care of self, controlling own happiness, not dependent upon one person (3 items).  Cronbach α = .680.
b.	Not codependent (NotCodep, ssiencodep). Not care for others above self or care more for another than they do for self (3 items). Cronbach α = .682.
c.	Not external control (NotExtrC, ssienother).  Belief that happiness not controlled by heredity or others (2 Items). Cronbach α =.505.

4.	Absolute-Grounded Integrated Ethics..Ethics philosophers and religions agree on many general principles. I attempted to pick a few themes I thought might be important for this scale which bases a person’s ethics more on absolute principles and wholes such as humanity, nature, or God than on self, family, or any group.  It judges people even more on their inner qualities and assumes some basic inner goodness and inherent value in all people. In addition, I included questions about astrology (very much frowned upon by philosophers, scientists, and religion) and life after death, which is believed by many approaches and people.  Some people base their ethics on the reward of heaven. (14 items). Cronbach α = .746. Five subscales.
a.	Ethics based upon absolutes (AbsoEth, ssb2.Ethics grounded in abstract absolutes versus relativism. Philosophical beliefs guide daily life. Ethically responsible even if bad genes or environment. Science/reason alone not enough to guide ethics. (4 items). Cronbach α = 598.
b.	Forgiving, egalitarian ethics (ForgivEth, ssb2Forgiv). Forgiveness based upon inner qualities not based upon good works.  Not believe bad only happens to bad (2 items).  Cronbach α = .634.
c.	Identify with humanity (HumIDEth, ssb2IDgrnd) Identify with humanity more than family or any group. (2 items). Cronbach α = .480.
d.	Meaning from abstract absolutes (AbsMeanE, ssb2GrndMng).  Primary ethics meaning from abstract absolutes (e.g. God, Nature); not from self or other people.  (2 items). Cronbach α = .316.
e.	Value inner goodness (InrGood, ssb2InrGood). Inner goodness in all, goodness depends more on attitude (2 items). Cronbach α = .563.
f.	Not astrology belief (NoAstrol, ssb2noAstr). Not belief in astrology (1 item).
g.	Life after death belief (EverLife, ssb2lifad). (1 item).



5.	Low Greatest Fears (LoGrFear).  Low degree of common major fears such as illness, poverty, death, failure, rejection, and confidence in ability to overcome fears or circumstances. Fears are interesting to people per se. However, I think that people’s greatest fears reflect their top values and goals in life and are related to their success in philosophical and practical cognitive structuring of those basic life issues we all face. The underlying fear is usually that their greatest values/goals will be unsatisfied (Chapter 4, 12 items). Cronbach α = .864. Four subscales.
a.	Low social fears (LoSocFr, sswfsocial).  Low fear .of being unwanted, alone, unloved, etc. (4 items).  Cronbach α = .818.
b.	Low self-related fears (LoSelfFr, sswfself). Confidence can overcome worst fears/problems. Low fear of being overwhelmed by personal problems (3 items).  Cronbach α = .502.
c.	Low failure-poverty fear (LoFailFr, sswfpovfai).  Low fear of poverty, failure, lack of career success. (3 items).  Cronbach α = .800.
d.	Low illness-death fear (LoDeIlFr, sswfilldea).  Low fear of illness or death. (2 items). Cronbach α = .726.


Self-Oriented Life Skill Areas

The following scales cover cognitive-behavioral skill areas that I believe are important to happiness and life success.  The Self-Confidence scale is largely an overview consisting of items each covering broad skill areas.   The subsequent scales cover key areas in more detail. Interpersonal and learning-academic skill areas are covered in later sections.

1.	Self-Confidence.  A list of knowledge and skills areas was developed, and subjects were asked to rate their own confidence/skills for each area. The Self-Confidence scale measures the contingent, efficacy aspect of self-esteem.  This scale has emerged as a separate factor from the other main scales in factor analytic studies.  I assume that the scale’s self-report ratings reflect a combination of actual knowledge and skill and of confidence level. I also assumed that these scales measure something similar to Bandura’s (1982, 1997, 2000) concept of self-efficacy. (Chapter 5, 41 items). Cronbach α = .955.  Seven subscales.
a.	Learning Self-Confidence (LearnSC, sssclearn).  Confidence in own intelligence, learning, study skills, analytical thinking, synthesis, research methodology, computer-related, and critical thinking (7 items).  Cronbach α = .891.
b.	Optimistic-assertive task and person engagement SC.  (AssertSC, sssccopopt). Achievement motivation, work habits, emotional control, optimism, self-disclosure, and caring conflict resolution (6 items). Cronbach α = .860.
c.	Self management (SlfManSC, ssscsmsmsd ). Self-management of decision-making/planning, time-management, self-development/change, finances, self-discipline, and health (7 items). Cronbach α = .884.
d.	Career Interpersonal SC (CarIntSC, ssscinterp). Managing others, persuasion, meeting people, public speaking, and adaptability (7 items).  Cronbach α = .864.
e.	Helping Counseling SC (HelpSC, ssscallhelp).  Knowledge of philosophy, religion, and social science and helping, counseling, teaching interpersonal skills. (6 Items). Cronbach α = .843.
f.	Natural Science SC  (NatSciSC, ssscscience). Natural science, biology, and engineering (4 items). Cronbach α = .815.
g.	Art and Creative SC (ArtCreSC, ssscartcre). Fine and performing arts, and creative thinking (3 items). Cronbach α = .758.
2.	Self-management Skills. Skills related to self-care, decision-making, goal-setting, and time-management including leading a balanced life and attending to all main need/value areas. Many items are based upon my OPATSM time-management system, used on hundreds of students who reported high consumer ratings. (See www.csulb.edu/~tstevens/h9patsm.htm) It had good validating evidence from earlier LSQ studies. (Chapter 9, 15 items). Cronbach α = .871. Four subscales.
a.	Time-management (TimeMan , sssmTimeManGoalSet).  Time management/goal-setting/decision-making –Frequent sessions prioritizing goals and writing daily task lists for each life area. Breaking large projects into organized, scheduled tasks (5 items).  Cronbach α = .827.
b.	Accomplishment (Accompt, sssmAccompLoRush ).  Busy, efficient task completion without feeling too rushed or pressured  (2 items). Cronbach α= .507.
c.	Self-development (SlfDevel, sssmSelfDevel). Self-development habits and skills including taking advice and self-change program(s) (3 Items). Cronbach α = .754.
d.	Self-health care (SlfHelth, sssmHealthHabs). Self-care health—exercise, diet, sleep. (3 Items). Cronbach α = .574.





3.	Emotional Coping. Proportion of the time the user makes a particular positive or negative coping response to a negative emotional state. It had very good validating evidence from earlier LSQ studies (See www.csulb.edu/~tstevens/h8hf2.htm,  Chapter 8, 20 items). Cronbach α = .850. Six subscales.
a.	Problem-solving coping responses (PrbSlvCR, sscpProbSolv). Face, explore, and discuss problems (4 items). Cronbach α = .692.
b.	Positive thoughts CR (PosThCR, sscpPosThoughts).  Positive; not critical, punitive, or negative thoughts in response to negative emotions (2 items). Cronbach α = .517.
c.	Positive actions CR (PosActCR, sscpPosActs).  Fun, involving, or vigorous activities when upset (2 items). Cronbach α = .542.
d.	Not critical or angry CR (NoAngCR, sscpNoBlameAngerWDraw).  Not critical, blaming, or angry toward self or others and not withdraw from others in response to negative emotions (5 items).  Cronbach α =  .771.
e.	Not smoke or drugs CR (NoSmDrCR, sscpNotSmokDrugMed).  No smoking, drinking, or taking medication in response to being upset (2 items). Cronbach α = .607.
f.	Not eating CR (NotEatCR, sscpNotEat).  Avoid eating as a response to being upset versus eat when upset (1 item).


Interpersonal Values, Beliefs, and Skills (from the Stevens Relationship Questionnaire)

These interpersonal scales were part of the Stevens Relationship Questionnaire (SRQ) and have previous validating evidence from an earlier study discussed above  Most items on these scales were originally taken from materials I had developed for assertion training and marital relationship workshops and had been clinically tested on hundreds of consumers.  Much of the 10 experimental studies on Self-Instructional Mediated Life Skills Learning Modules also tested some aspect of assertion and intimacy training-related skills. All 10 studies had positive results.
Even though the SRQ scales had been very useful, I decided that they obscured too much information, and decided to use a theoretical analysis combined with a factor analysis of the SRQ scales and create a set of new scales.  The new analysis resulted in leaving the Liberated Roles and Romantic scales unchanged.    However, I broke the combined Assertive Conflict, Intimacy  and Independent Intimacy scales into new scales.  The result is nine scales instead of five--thus adding specificity and predictive power. The new scales are also more easily interpreted. (Start with www.csulb.edu/~tstevens/assertion_training.htm.)
1.	Democratic, assertive communication and conflict resolution (AssertCR, IntSS1a).  Seeks win-win solutions to conflicts, with clear, caring, understanding, non-defensive, calm, persistent, honest, friendly, non-threatening behaviors (13 items). Cronbach α = .909. 
2.	Open, Honest Communication and Goal Harmony  (OpenCm, IntSS1b). Reveal most private and sensitive thoughts and feelings regularly, shared goals, and feelings of relationship commitment (10 items). Cronbach α = .888.
3.	Close, Romantic Interactions (Romantic,  IntSS2).  Romantic attraction, playful, romantic surprises, fantasize about partner, go to romantic places, have special celebrations together  (7 items). Cronbach α = .879.
4.	Liberated Roles (LiberRol,  IntSS3).  Equality in decisions, roles, chores/tasks, career priority, some non-stereotypical role behaviors (7 items). Cronbach α = .844.
5.	Valuing Partner--Love and Respect for Partner.  (LoveRes,  IntSS4).  Love, respect, cheerfully do favors for,  praise more than criticize partner. Feel free when partner home, feel committed not trapped (9 items). Cronbach α = .813.
6.	Relationship Independence-Autonomy (IndepRel, IntSS5).  Autonomy within committed relationship.  Partners feeling encouraged and free to pursue own interests and friendships.  Each enjoy being alone, having partially separate funds, and believing they could be happy with another person if necessary. Value individual happiness over marriage per se. (11 items). Cronbach α = .766.
7.	Positive, Supportive Communication (PosSupCm, IntSS6).   Supportive of partner even during disagreements, rarely use negative labels, exaggerations, threats, anger.  If one partner gets angry, other usually uses deescalating response (7 items). Cronbach α = .777.
8.	Collaborative, Non-Manipulative Relationship (Collabor, IntSS7). Neither partner manipulating or controlling.  Partners feel safe revealing weaknesses. Can work together or teach each other effectively (7 items). Cronbach α = .781.
9.	Separateness  (Separate,  IntSS8).  Spending weekends alone OK.  Not consult for small decisions  (2 items). Cronbach α = .661.


Academic-Success Related Scales

Several academic scales were created after factor analysis of the original five scales of Learning and Study Skills,  Learning Skill Areas, Learning Disabilities, Academic Motivation, and Academic Satisfaction.  The following 12 scales and 2 self-report aptitude items are more independent and specific. (See www.csulb.edu/~tstevens/LEARN.htm.)

1.	Time Efficient and Confident Study--versus learning disability (ConfEffc, ssl1aConfidEfficStudyTest)  Think that tests and grades reflect abilities (versus smarter than test). Not need more time for tests and assignments (8 items). Cronbach α = .859.
2.	Not Study Avoidant (NoAvoidS, ssl1bConfidNotAvoidStudy).  Not slower or more anxious about beginning assignments, reading, or writing than other students. Feel like college capable (5 items).  Cronbach α = .669.
3.	Positive Campus Life Attitudes (CampsLif, ssl2SatisCampusFacFriendsGrdes).  Look forward to classes, campus activities. Enjoy students and instructors. Happy with campus and grades (8 items).  Cronbach α = .902.
4.	Writing Skills-Confidence (WriteCon, ssl3WritingSkills). Good at organizing papers and writing.  No vision problems (added due to factor analysis). (4 items).  Cronbach α = .818.
5.	Build Mental Structures (MentStru, ssl4BldMentalStruct). Study alone, struggle with difficult material, attempt to build own theories and associations. Make boring material interesting (7 items).  Cronbach α = .834.
6.	Basic Study Skills (StudySkl, ssl5BasicStudySkills). Preview, outline, review assignments; take good notes; good concentration; create visual map; review material at least 3 times for exam (6 items).  Cronbach α = .811.
7.	Degree Motivated (DegrMotv, ssl6SelfmanAcadGoals). Motivated and confident will degree and won’t drop out. Not confused about goals and confident of finances (5 items). Cronbach α = .818.
8.	Math-Science Seek Principles (SeekPrin, ssl7MathSciPrinc). Enjoy and good in math, and seek to understand basic principles in math and science (2 items).  Cronbach α = .628.
9.	Study Environment (StudEnvr, ssl8StudyEnvir). Homework encouraged by family, friends; not chores conflict; good place to study; and time available to study (3 items).  Cronbach α = .516.
10.	Attendance and Persistence (Attend, ssl9AttendHW). Attend classes, never drop classes, and manage study time well (3 items).  Cronbach α = .702.
11.	Efficient, Confident Learning (EfficLrn, ssl10MemNotAnx). Efficient learning time use, good memory, relaxed during exams (3 items).  Cronbach α = .732.
12.	Internal Motivation--to be in college (IntMotiv, ssl11NotNonAcadMot). Internal motives versus pleasing parents, making money, or being confused why in school. Financially self-supporting (4 items). Cronbach α = .473.

The following two aptitude items were user estimate items, and not scales.
13.	Verbal Aptitude test score estimate (ssl12). (1 item). 
14.	Math Aptitude test score estimate.(ssl13). (1 item).


SHAQ College Major Interest Scales

Many college students are confused about what academic major they wish to pursue.  To help them narrow the field for investigation, I designed these college major interest scales. The college major  interest scales divided common academic major areas into sets—using typical groupings in universities (CSULB specifically) and groupings by the Strong Interest Inventory as a basis.  The result was the following 11 major interest scales: s.Business major interests, s.Engineering major interests, s.Fine art major interests, s.Helping profession major interests, s.Languagemajor interests, s.Medical major interests, s.Military major interests, s.Natural science major interests, s.Social science major interests, s.Womens or ethnics studies, s.Writing major interests.  I will not examine them in this article.  More research needs to be done on them.


The Outcome Scales and Items for Validating SHAQ 

Several scales and numerous items were written to validate SHAQ’s main scales and items.  These scales include the Overall Happiness Scale, the Low Depression Scale, the Low Anxiety Scale, the Low Anger and Aggression Scale, the Interpersonal Relations Outcomes Scale, and the Health Outcomes Scale.  In addition, a number of items were seen as important outcome measures.  These items include highest annual salary, educational attainment, grade averages, and occupational status. The first three and fifth scales will be described in more detail, since they are more central to the current paper.

1. The Overall Happiness (OvHap) Scale. A 7-point scale measured happiness in various life areas including home, career, family, romance, recreation, health, and direct questions about overall happiness for recent past, current, and expected future time periods (15items). Cronbach α = .919.

2. The Low Depression (LoDep) Scale.  Items were developed from the DSM-IV depression diagnosis criteria and written as self-assessment items.  The scale also asks the amount of psychotherapy and medication taken for depression. It was scored in reverse so that high scores would mean low depression (6 items).  Cronbach α =.828.

3. The Low Anxiety (LoAnx) Scale.  Items were developed from the DSM-IV anxiety disorder diagnosis criteria and written as self-assessment items. The scale also asks the amount of psychotherapy and medication taken for anxiety-related disorders. Included were phobias and some obsession and compulsion-related items. Reverse scored. (9 items). Cronbach α = .790.

4. The Low Anger-Aggression (LoAng) Scale.  Items include frequency of losing temper, name-calling/yelling, aggressive acts, and thoughts about getting even. Reverse scored. (5 items). Cronbach α = .850. 

5. The Interpersonal Relations Outcomes (IntRelOut) Scale.  Number and quality of friends, happiness in marital-like relationship, and work relationships (7 items).  Cronbach α =.698.  This is not a well-unified scale, but consists of a collection of related relationship items that are each important.

6. Physical Health (PhyHlth) Scale.  Frequency of illness, alcohol and drug use, weight, and conditioning estimates. (6 items). Cronbach α =.544.  This is not a unified scale, but it is a collection of important health behaviors and outcomes.


Biographical Items 

Basic personal and educational information was collected to help identify the characteristics of the sample and to discover important relationships between biographical variables and other variables.  Highest career income and educational achievements were used as outcome measures for subjects with ages greater than 25 or 30 years.


Refinement of Scales and Development of the SHAQ Subscales—Number of Scales and Subscales

Originally SHAQ itself (no biographical items or outcome scales) consisted of 4 value-theme scales, 8 main self belief-skill scales, 5 interpersonal scales (from SRQ), and 5 learning-academic scales; for a total of 22 scales.  In addition, a college major-career interest questionnaire of 11 scales had been included for those who wanted to add it. 

The original 22 scales have proved to be useful; however, only the 8 main self belief-skill scales are unchanged. Factor analyses validated the factorial utility of the original 8 main scales and validated separating the value-theme, interpersonal, and learning-academic scales into separate sets. Further factor and logical analyses led to a restructuring of the original 4 value-theme, 5 interpersonal, and 5 learning-academic sets of scales. The 4 value-theme scales grew to a new set of 11 scales, the original 5 interpersonal scales grew to 9, and the original 5 learning-academic scales grew to 14.  Additionally, I used factorial-theoretical analyses to create 36 subscales from the original 8 main self belief-skill scales to give more specified-concrete scales.  The entire process involved a number of factor analytic studies, and goes beyond the scope of this article. 

SHAQ has a grand total of  70 independent scales/subscales. The SHAQ experience also includes biographical items, 6 outcome scales, and potentially 11 major-career choice scales. Subjects’ goals and choices determine scales administered. In addition two redundant scales overlap other scales, but are of special interest.  One scale is the Higher Self scale that consists of items fitting the description of Higher Self in Chapter 3, and one is the Forgiveness scale.  The original value-theme, SRQ interpersonal, and academic scales are not described in this body, but are described in the Appendices.  


The Happiness Quotient (HQ) Composite Scale

Dyer (1976) coined the term, “Happiness IQ.”  I wanted to summarize this complex maze of SHAQ scales for both users and researchers.  Therefore, I created the Happiness Quotient (HQ).  The HQ is a simple formula for estimating one’s overall ability to achieve happiness.  The HQ is the linear combination of the 56 non-academic SHAQ scales.  The weights are the correlations of the individual scales with happiness.   One use of the HQ is to give users feedback about their progress developing success and happiness-related attributes.  Users may examine the components of their HQ score to see strengths and areas needing improvement.  They may even look at individual questions and follow Internet links to help them develop those areas. Since the questions were designed to be face-valid, clear, learnable items, question/score examination can be very useful. 




SHAQ Scales and Scoring

Almost all items and all scale scores range in value from 0 to 1.  Items typically were scored on 7 to 13 point scales.  The individual item scores were each divided by the number of scale points. Similarly, the raw scale scores were divided by the number of scale items.  This relative score for both items and scales allowed a more interesting comparison across items and scales.  For example a score of 3 on a 7 point scale is not the same as a score of 3 on an 11 point scale. In the first case the relative score would be 3/7 and in the second it would be 3/11--revealing that difference.  Similar types of items or items on the same scale usually used the same rating scale.
|#
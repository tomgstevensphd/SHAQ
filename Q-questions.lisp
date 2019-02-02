;; *********************** Q-questions.lisp *********************
;;
;;                           (ALL LISP FORMATED SHAQ QUESTIONS)
;;
;; THESE HAVE BEEN MANUALLY EDITED TO CORRECT PROBLEMS
;;
;;   DO NOT DELETE THIS VERSION!!

;;FORMAT--SEE DOCUMENATION IN DEFPARMETER
;;
;; *ALL-SHAQ-QUESTIONS
;;
;;ddd
(defparameter *all-SHAQ-questions
  #| "FORMAT:  SINGLE-SELECTION Qs: XXX-INSTR (1st item goes in title position of frame, 2nd goes in instr part of frame) qvarQ is the actual question going in the lower box.  
All SHAQ questions with NEW-SPSS variable symbols for names, converted by (convert-java-to-spss-quest-names) function. THEN MANUALLY EDITED to replace bio variables with new names."|#
  '( ( ID ;;special text-answer etc question frame
       (CASENUMQ NO-QUEST-STRING-FOUND)
       (CASETYPEQ NO-QUEST-STRING-FOUND)
       (SOURCEFILEQ NO-QUEST-STRING-FOUND)
       (FILEDATEQ NO-QUEST-STRING-FOUND)
       (INSTRQ NO-QUEST-STRING-FOUND)
       (RESRQ NO-QUEST-STRING-FOUND)
       (NAMEQ NO-QUEST-STRING-FOUND)
       (IDNUMQ NO-QUEST-STRING-FOUND)
       (SEXQ NO-QUEST-STRING-FOUND)
       (AGEQ NO-QUEST-STRING-FOUND)
       (EMAILQ NO-QUEST-STRING-FOUND)
       (ZIPCODEQ NO-QUEST-STRING-FOUND)
       (NATIONQ NO-QUEST-STRING-FOUND)
       (HRSWORKQ NO-QUEST-STRING-FOUND)
       )
     ( UTYPE  ;;multi-selection question
       (TKNOWMORQ NO-QUEST-STRING-FOUND)
       (TEXPERIEQ NO-QUEST-STRING-FOUND)
       (TWANTTHOQ NO-QUEST-STRING-FOUND)
       (TWANTSPEQ NO-QUEST-STRING-FOUND)
       (TWORKNGAQ NO-QUEST-STRING-FOUND)
       (TU100STUQ NO-QUEST-STRING-FOUND)
       (TCSULBSTQ NO-QUEST-STRING-FOUND)
       (TOTHERSTQ NO-QUEST-STRING-FOUND)
       (TCOLSTUQ NO-QUEST-STRING-FOUND)
       (TINSTRUCQ NO-QUEST-STRING-FOUND)
       (TCOLFACAQ NO-QUEST-STRING-FOUND)
       (TWANTHELQ NO-QUEST-STRING-FOUND)
       (WANTSPQQ NO-QUEST-STRING-FOUND)
       (WANTSPQQ NO-QUEST-STRING-FOUND)
       )
     ( UGOALS  ;;multi-selection question
       (GSUCHAPQ NO-QUEST-STRING-FOUND)
       (GACADSUCQ NO-QUEST-STRING-FOUND)
       (GEMOCOPQ NO-QUEST-STRING-FOUND)
       (GSLFESTQ NO-QUEST-STRING-FOUND)
       (GPROCRSTQ NO-QUEST-STRING-FOUND)
       (GTIMEMANQ NO-QUEST-STRING-FOUND)
       (GRELATQ NO-QUEST-STRING-FOUND)
       (GMEETPEOQ NO-QUEST-STRING-FOUND)
       (GLONELYFQ NO-QUEST-STRING-FOUND)
       (GEXVALUSQ NO-QUEST-STRING-FOUND)
       (GDEPRESQ NO-QUEST-STRING-FOUND)
       (GANXFEARQ NO-QUEST-STRING-FOUND)
       (GAGGRANGQ NO-QUEST-STRING-FOUND)
       (GCOMPLTAQ NO-QUEST-STRING-FOUND)
       (GCARPLANQ NO-QUEST-STRING-FOUND)
       (GNOTTAKEQ NO-QUEST-STRING-FOUND)
       (GCARONLYQ NO-QUEST-STRING-FOUND)
       (SPERSBIOQ NO-QUEST-STRING-FOUND)
       (SVEMAAPTQ NO-QUEST-STRING-FOUND)
       (SVEMAAPTQ NO-QUEST-STRING-FOUND)
       )
#|( INDEP-INT
       (INR-INSTR  ("INSTRUCTIONS:  Apply this question to your closest relationship." "If you are married or in a close romantic relationship, apply it to that relationship. OR, you may apply it to an imagined future relationship. OR, if you want help working on a particular relationship, answer how the question applies to that relationship."))
       (INRBEALNORIGQ NO-QUEST-STRING-FOUND)
       (INRBEALNQ ( "It is NOT ok for one partner to go away for a weekend by themselves to think and be alone.") INR-INSTR  INRSRQ2BEALONEQ)
)|#
     ;;BBB
     ( BIO3EDUC
       (BIO3EDUC-INSTR ("Education Level" ))
       (BIO3EDUCQ ("Your Highest Education Completed:")BIO3EDUC-INSTR)
       (BIOHSGPAQ ("Your high school grade average?")BIO3EDUC-INSTR)
       (BIOCOLLEQ ("Your overall college grade average?")BIO3EDUC-INSTR)
       )
     ( BIO4JOB  ;;multi-selection question
       (BIO4JOBQ NO-QUEST-STRING-FOUND)
       (STUDENTQ NO-QUEST-STRING-FOUND)
       (MANAGERQ NO-QUEST-STRING-FOUND)
       (PROPEOPQ NO-QUEST-STRING-FOUND)
       (PROTECHQ NO-QUEST-STRING-FOUND)
       (CONSULTAQ NO-QUEST-STRING-FOUND)
       (EDUCATORQ NO-QUEST-STRING-FOUND)
       (SALESQ NO-QUEST-STRING-FOUND)
       (TECHNICIQ NO-QUEST-STRING-FOUND)
       (CLERICALQ NO-QUEST-STRING-FOUND)
       (SERVICEQ NO-QUEST-STRING-FOUND)
       (OWNBUS10Q NO-QUEST-STRING-FOUND)
       (OTHRSFEMQ NO-QUEST-STRING-FOUND)
       )
     (BI07LANG  ;;multi-selection question
       (LANGQ NO-QUEST-STRING-FOUND)
       )
     (BIO1ETHN  ;;multi-selection question
       (ETHNICQ NO-QUEST-STRING-FOUND)
       )
     (BIORELAF  ;;multi-selection question
       (BIORELAFQ NO-QUEST-STRING-FOUND)
       )
     (NO-SCALE
      (NO-SCALE-INSTR ("Other Questions" "Please be as accurate as you can."))
      (BIO5INCOQ ("Your Highest personal income for one year.") NO-SCALE-INSTR BIO5INCOQ)
       )
     (STUCOLLE  
      (STUCOLLE-INSTR ("Check the best answer:"))
      (STUCOLLEQ ("What school do you attend?" ) STUCOLLE-INSTR)
      )
     (STUMAJOR ;;multi-selection question
      (STUMAJORQ  )
      )
  ;;   (STUSPECI ;;multi-selection question
   ;;   (STUSPECIQ  ("Check ALL that apply to you")  -INSTR  stuSpecialStatusQ)
   ;;   )
  ;;   (STURESID ;;multi-selection question
  ;;    (STURESIDQ  ("Your home situation")  -INSTR  stuResidenceQ)
  ;;    )
     (STU-DATA  ;;SINGLE-ITEM SINGLE-R
                ;;ADD ORIGINAL QNAMES HERE SSS  uses new syms
                ;;MODEL
                ;;   (CREQWINQ ("My partner and I \"win\" long disagreements/arguments about equally often.") CR-INSTR  CRSRQ58EQWINQ)
                (STU-DATA-INSTR ("Education-Related Questions"))
                (STPAREDQ ("What was the highest level of education reached by EITHER of your PARENTS?")  STU-DATA-INSTR stuParentsEducQ )
 
                ( STUCOLLEQ  ("What school do you attend?")  STU-DATA-INSTR  stuCollegeAttendingQ)
                ( STUCLASSQ  ("What is your current class level?")  STU-DATA-INSTR  stuClassLevelQ )
                (STUDEGREQ ("What is your ultimate educational objective?")  STU-DATA-INSTR stuDegreeObjectiveQ )
                (STUSEMESQ   ("How many units are you currently enrolled in?")  STU-DATA-INSTR stuSemesterUnitsQ )
                (STMAJGPAQ  ("What is your grade average in your major field of study?")  STU-DATA-INSTR stuMajorGPAQ )
                (STACADSTQ ("What is your current academic status?")  STU-DATA-INSTR  stuAcademicStatusQ)
                )
     (STGPATRE
      (STGPATREQ  ("What best describes your GRADE AVERAGE TREND or changes?")  STU-DATA-INSTR  stuGPATrendQ )
      )
     (STUAPT
      (STUAPT-INSTR ("Your Aptitude Test Scores:"))
         (STUVERBAQ  ("In which percentile range were your VERBAL APTITUDE (SAT, ACT) scores?")  STUAPT-INSTR stuVerbalAptQ )
      (STUMATHAQ ("In which percentile range were your MATH APTITUDE (SAT, ACT)scores?")  STUAPT-INSTR stuMathAptQ )
      )
    (STUFEEL
     (STUFEEL-INSTR ("Education-Related Questions" "Describe your educational experience."))
     (STULOOKFQ ("I really look forward to coming to campus.") STUFEEL-INSTR stuLookForwardQ)
     (STULIKEIQ ("I like my instructors very much and feel that I can talk freely with at least one of them.") STUFEEL-INSTR stuLikeInstrQ)
     (STUCOMFOQ ( "I feel extremely comfortable with the faculty and students in my major.") STUFEEL-INSTR stuComfortableQ)
     (STUFRIENQ ("I have current school-related friends that I enjoy being with.") STUFEEL-INSTR stuFriendsQ)
     (STUEXTMOQ ("Meeting expectations of my parents or others is the most important reason I am in school.") STUFEEL-INSTR stuExtMotivQ)
     (STULOOKFQ ("I really look forward to coming to campus.") STUFEEL-INSTR )
     (STUCAREEQ ("I am in school primariy to get the job/career I want.") STUFEEL-INSTR stuCareerMotivQ)
     (STUMONEYNEWQ ("Making more money is the main reason I'm in school.") STUFEEL-INSTR stuCareerMotivQ)
#| ORIGINAL VERSION    (STUMONEYQ ("I wouldn't be in school if I could make as much money without it.") STUFEEL-INSTR stuCareerMotivQ)|#
     (STUCONFUQ ("I don't know why I am in school or what I want from an education.") STUFEEL-INSTR stuConfusedQ)
     (STUFINDEQ ("Which statement describes your financial support best?") STUFEEL-INSTR stuFinDependQ)
    (STUEACTRQ ("I am enjoying life and having fun while in school.") STUFEEL-INSTR stuEACTREGfunQ)
    (STHAPCOLQ ("Overall how happy are you with your college experience?") STUFEEL-INSTR stuHappyCollegeQ)
     (STHAPGPAQ ("Overall, I am happy with my grades and what I am learning.") STUFEEL-INSTR stuHappyGradesQ)
     (STUENJOYQ ("I really enjoy all my learning classes and homework.") STUFEEL-INSTR  stuEnjoyLearnQ)  ;;added manually
#|     (STUSUPPORTIVEQ  "At least one person on campus is very supportive and I can count on that person to help me if I need it.") STUFEEL-INSTR stuSupportiveQ);;added manually--not on any old scale??|#
 )

     ( STU-ACMOTIV
       (ACM-INSTR ("Learning-Academic Questions:"   "Honest answers give you the most accurate results."))
     (ACMSTUDYQ ("On average, how many hours do you study outside class for each hour in class?") ACM-INSTR ACMSTUDYQ)
     ;;  (ACMSTUDYQ  ("Check ALL that INTERFERE significantly with your learning or grades.") ACM-INSTR ACMAFFECTGRADESQ)
       ;;added below from java
       ;;  (ACMAFFECTGRADESQ "Check ALL that interfere significantly with your learning or grades.") ACM-INSTR
       (ACMNDROPQ ("I almost never drop a course or take an incomplete(or wouldn't if you've not taken any.)") ACM-INSTR ACMNDROPCOURSESQ)
       (ACMATTENQ ("I almost never miss a class, and my activities rarely interfere with my schoolwork.") ACM-INSTR ACMATTENDCLASSQ)
       (ACMEFAMLQ ("Others where I live RARELY expect me to help them, do chores, or socialize with them if it interferes with my studies.") ACM-INSTR ACMEFAMLDEMANDSQ)
       (ACMESOCSQ ("My family and friends very strongly encourage my studying and doing well in school.") ACM-INSTR ACMESOCSTUDYQ)
       (ACMCONCEQ ("When I start working on a task or problem, reading an assignment, or writing, my concentration is so great and I get so involved that almost nothing can distract me.") ACM-INSTR ACMCONCENTRATEQ)
       (ACMTIMEQ ("My schedule gives me so little time to study that it seriously affects my grades.") ACM-INSTR ACMTIMEQ)
       (ACMTIMEORIGQ ("My schedule gives me so little time to study that it seriously affects my grades.") ACM-INSTR ACMTIMEQ)
       (ACMSELFSQ ("I am able to manage my college life extremely well myself--with little or no help or support from others.") ACM-INSTR ACMSELFSUFFICIENTQ)
       (ACMCOMPLQ ("Confidence that you will complete your college degree.") ACM-INSTR ACMCOMPLETECOL1Q)
       (ACMQUITCQ ("There is almost no possibility that I will drop out of college during the next year.") ACM-INSTR ACMQUITCOLQ)
       (ACMFINANQ ("Confidence that you have adequate financial means to complete college. ") ACM-INSTR ACMFINANCIALQ)
       (ACMDEGREQ  ("I have been so highly motivated to get the college degree I seek for so long that almost nothing could stop me now.") ACM-INSTR ACMDEGREMOTIVATIO) ;; NO-QUEST-STRING-FOUND)
       ;;added from java match??
       ;;(ACMDEGREMOTIVATIO "I have been so highly motivated to get the college degree I seek for so long that almost nothing could stop me now.") ACM-INSTR
       )

     (STU-LRN
       (LRNESTUDQ ("I have a good place where I can study as much as I want with minimal distractions.") ACM-INSTR LRNESTUDYPLACEQ)
       (LRNTXOVEQ ( "Whenever I read a chapter in a text, I always do the following:
 1-Get an OVERVIEW OF THE CHAPTER FIRST
 2-Actively try to get the main point of each paragraph or section.
 3-Summarize what I have learned when I finish a major section or chapter.") ACM-INSTR LRNTXOVERVIEWQ)
       (LRNTXUNDQ ("Whenever I don't understand something I am reading,  I almost never just continue reading. Instead I look up parts I don't know, visualize it, or think about it until I understand it.") ACM-INSTR LRNTXUNDERSTANDQ)
       (LRNTSREVQ ("In studying for a big exam, I always review ALL of the assigned material AT LEAST 3 TIMES within 2 days of the exam.") ACM-INSTR  LRNTSREVIEWQ)
       (LRNMAPQ ("I almost always create some type of visual overview (or \"map\") of my text chapters.") ACM-INSTR LRNMAPQ)
       (LRNTEXTNQ ("In math or science courses, I focus my energy on understanding the basic principles--not just getting answers to problems.") ACM-INSTR LRNTEXTNOTPROBSQ)
       (LRNINTERQ ("If I find a text boring, I almost always find ways of making it interesting.") ACM-INSTR LRNINTERESTQ)
       (LRNROTEQ ("Every time I go over material I try to view it a new way instead of using rote memory methods.") ACM-INSTR LRNROTEQ)
       (LRNASSOCQ ("I try to associate new material with as many things in my own experiences as I can.") ACM-INSTR LRNASSOCQ)
       (LRNSTRUGQ ("When I am reading and come to a part that is very difficult to understand, I almost never just go on. Instead I almost always struggle with it until I understand it well.") ACM-INSTR LRNSLTNSTRUGGLEQ)
       (LRNTHEORQ ("I enjoy learning about theories and enjoy building my own theories about what I am learning in class.") ACM-INSTR LRNTHEORYQ)
       (LRNALONEQ ("I am satisfied with the result of my studying in relation to the time I spend at it.") ACM-INSTR LRNSEFICICIENCYQ)
       (LRNMATHQ ("I enjoy math and don't seem to have any great difficulty in doing problems correctly.") ACM-INSTR LRNMATHQ)
       (LRNWRPAPQ ("I make \"A\"s on almost all of the term papers I write and almost all of the essay tests that I take.") ACM-INSTR LRNWRITESKILLSQ)
       (LRNTXOUTQ ("When I read my textbooks, I almost always underline, make notes, outline, or summarize as I am reading.") ACM-INSTR LRNTEXTOUTLINEQ)
       (LRNNOTESQ ("I am satisfied with the way I take notes in class and with their usefulness to me as I study for my tests.") ACM-INSTR LRNNOTESQ)
       (LRNWRSKLQ  ("I am satisfied with all my writing skills such as spelling, grammar, and punctuation.") ACM-INSTR  LRNWRITESKILLSQ) ;; NO-QUEST-STRING-FOUND)
       ;;java match?    (LRNWRITESKILLSQ "I am satisfied with all my writing skills such as spelling, grammar, and punctuation.") ACM-INSTR
       (LRNSEEQ ("I don't seem to have any visual problems when I read.") ACM-INSTR LRNSEEQ)
       (LRNVOCABQ ("As I read my textbooks and outside reading for my classes, I don't seem to have any problems with the vocabulary or in understanding the writer's thought patterns.") ACM-INSTR LRNVOCABQ)
       (LRNSREADQ ("I think that I read slower than most of my classmates.") ACM-INSTR LRNSREADQ)
       (LRNMEMORQ ("I don't seem to have any difficulty in remembering new terms, formulas, or facts.") ACM-INSTR LRNMEMORQ)
       (LRNTENSEQ ("I rarely feel tense during my examinations.") ACM-INSTR LRNTENSEQ)
       (LRNSEFICQ ("I am satisfied with the result of my studying in relation to the time I spend at it.") ACM-INSTR LRNSEFICICIENCYQ)
       (LRNWRORGQ ("When I write, I don't have any great difficulty in organizing what I want to say.") ACM-INSTR LRNWRORGANIZATIO) ;; NO-QUEST-STRING-FOUND)
       ;;java match?      (LRNWRORGANIZATIO "When I write, I don't have any great difficulty in organizing what I want to say.") ACM-INSTR
       (LRNUNASNQ ("Do you have a great deal of difficulty understanding assignments and beginning them?") ACM-INSTR LRNUNASNMENTSQ)
       (LRNCOLMTQ ("Were you ever made to feel that you were not college material?") ACM-INSTR LRNCOLMTERALQ)
       (LRNKNOWTQ ("Do you feel that you know the material, but are unable to do well on a test?") ACM-INSTR LRNKNOWTESTBADQ)
       (LRNPROOFQ ("Would you feel very unsure about turning in a paper that has been proofread by someone else?") ACM-INSTR LRNPROOFPAPERQ)
       (LRNRREADQ ("Do you usually have to read textbooks 2-3 times or more to make sense of them?") ACM-INSTR LRNRREADTEXTSQ)
       (LRNEFFICQ ("I am satisfied with the result of my studying in relation to the time I spend at it.") ACM-INSTR LRNSEFICICIENCYQ)
       (LRNTESTTQ ("Could you do better on tests if you were allowed a lot more time?") ACM-INSTR LRNTESTTMORETIMEQ)
       (LRNTIMASQ ("Do you spend too much time on one assignment which causes you to not complete other assignments?") ACM-INSTR LRNTIMASSIGNSQ)
       (LRNTIREDQ ("Does reading for one hour make you very tired?") ACM-INSTR LRNTIREDREADQ)
       (LRNTANXIQ ("Do you feel more anxiety about tests than most of your classmates?") ACM-INSTR LRNTANXIETYQ)
       (LRNSMARTQ ("Do you feel that you're a lot smarter than your grades indicate?") ACM-INSTR LRNSMARTERTHANGRADESQ)
       (LRNAREADQ ("Do you avoid reading so much that it is a big problem?") ACM-INSTR LRNAREADQ)
       (LRNRSLOWQ ("Do you generally read much slower than other people?") ACM-INSTR LRNRSLOWREADQ)
       )
( THEMES
       (THM-INSTR ("LIFE THEMES and VALUES:" "HOW IMPORTANT is this is to you?"))
       (THM1ACHQ (  "Being the best at whatever I do (example: making top grades). Achieving more than most other people.") THM-INSTR  THM1ACHQ)
       (THM3EDUCQ ("EDUCATION: Earning at least a bachelor's or higher degree--preferably a master's or doctorate and making top grades.") THM-INSTR  THM3EDUCQ)
       (THM4MONEQ ("INCOME: Making a lot of money, preferably becoming a millionaire, or multimillionaire.") THM-INSTR  THM4MONEYQ)
       (THM25POSQ ("POSSESSIONS: Having top quality (expensive) possessions--home, car, electronics, jewelry, etc.") THM-INSTR  THM25POSSESSQ)
       (THM26SUCQ ("SUCCESS: Being extremely successful in my career--rising to the top in it.") THM-INSTR  THM26SUCCESSQ)
       (THMIMPACQ ("IMPACT: Having a major impact on changing the world to make it a better place.") THM-INSTR  THM27CHANGEWORLDQ)
       (THM28CREQ ("CREATION: Creating something that I feel is a major contribution (e.g. invention, bridge, book, house, work of art, etc.).") THM-INSTR  THM28CREATEQ)
       (THM30CEOQ ("POWER: Being president, CEO, owner, etc. of an important organization OR having a great amount of influence or control over others.") THM-INSTR  THM30CEOQ)
       (THM33GOAQ ("COMPLETION and ACHIEVEMENT: Accomplish all my important goals.") THM-INSTR  THM33GOALSQ)
       (THM8ROMAQ ( "LOVE-ROMANCE: Having a wonderful, romantic marriage/relationship.") THM-INSTR  THM8ROMANCEQ)
       (THM12PLEQ ("PLEASING: Pleasing others, avoiding conflict, keeping relationships pleasant.") THM-INSTR  THM12PLEASEQ)
       (THMRESPEQ ("RESPECT: Being highly respected by others, and being seen as an important, successful, and/or good person by others.") THM-INSTR  THM15RESPECTQ)
       (THM20INTQ ("INTIMACY: Having a few extremely close and long-term relationships.") THM-INSTR  THM20INTIMACYQ)
       (THMLIKEDQ ("WELL-LIKED: Being well liked by everyone. Having many friends and networking with many others.") THM-INSTR  THM21NETWORKQ)
       (THMCAREGQ ("CARE-GIVING: Be a good parent, or take care of others in need.") THM-INSTR  THM31CAREGIVERQ)
       (THMSUPPOQ ("EMOTIONAL SUPPORT: Having people in my life to support me if I'm upset or having a problem.") THM-INSTR  THMVSUPRTQ)
       (THMATTENQ ("ATTENTION: Being the center of attention, entertaining others, or performing in front of groups.") THM-INSTR  THMATTENTIO);; NO-QUEST-STRING-FOUND)
       ;;java match? (THMATTENTIO "ATTENTION: Being the center of attention, entertaining others, or performing in front of groups.") THM-INSTR 
       (THMFAMILQ ("FAMILY: Family members and family matters, events, traditions, etc.") THM-INSTR  THMFAMILYQ)
       (THMRECOGQ ("RECOGNITION: Having respect, recognition, status, position, and/or other signs of success.") THM-INSTR  THMRECOGNITIO) ;; NO-QUEST-STRING-FOUND)
       ;;java match (THMRECOGNITIO "RECOGNITION: Having respect, recognition, status, position, and/or other signs of success.") THM-INSTR 
       (THMPHURTQ (  "PERSONAL HEALING: Overcoming past family or personal problems that have hurt me in the past.") THM-INSTR  THM16HURTQ)
       (THMOBGODQ ("OBEDIENCE: Obeying God and living according to His commands and rules.") THM-INSTR  THM17GODRULESQ)
       (THMPARLVQ ("PARENTAL LOVE and RESPECT: Being respected and loved by my parent(s) or other authorities.") THM-INSTR  THM18PARENTRESPECTQ)
       (THMSPROTQ ("SELF-PROTECTION: Protecting myself from others and the harm they have done to me or may do to me.") THM-INSTR  THM24PROTECTQ)
       (THMPUNCTQ ("PUNCTUALITY: Being on time, timeliness.") THM-INSTR  THMPUNCTUALITYQ)
       (THMOBLIGQ ("DUTY and OBLIGATION, obeying the rules and expectations of one's family or group--even if it goes against one's own happiness.") THM-INSTR  THMOBLIGATIO) ;;NO-QUEST-STRING-FOUND)
       ;;java match (THMOBLIGATIO "DUTY and OBLIGATION, obeying the rules and expectations of one's family or group--even if it goes against one's own happiness.") THM-INSTR 
       (THM5ADVEQ ("ADVENTURE: Having a life of adventure and excitement with many new experiences.") THM-INSTR  THM5ADVENTQ)
       (THM6LEARQ ("LEARNING: Learning, self-development, and growing to be the best I can be.") THM-INSTR  THM6LEARNQ)
       (THM9SHAPQ ("SELF-HAPPINESS: Living the happiest life I can.") THM-INSTR  THM9HAPPYQ)
       (THM10OTHQ ("GIVING: Contributing to others' health/happiness and making the world a better place.") THM-INSTR  THM10OTHHAPQ)
       (THMRELGDQ  ("SPIRITUAL INTIMACY: Having a very close relationship with God.") THM-INSTR THM13RELGODQ) ;;NO-QUEST-STRING-FOUND)
       ;;java match? (THM13RELGODQ "SPIRITUAL INTIMACY: Having a very close relationship with God.") THM-INSTR 
       (THM14INDQ ("INDEPENDENCE: Being independent, and living according to my own values and dreams.") THM-INSTR  THM14INDEPQ)
       (THM22BODQ ("HEALTH: Having an exceptionally healthy body and living to be 100--by exceptional nutrition, exercise, no use of drugs or smoking, etc.") THM-INSTR  THM22BODYQ)
       (THM23BALQ ("BALANCE: Having balance in my life--even at the cost of not achieving as much in my career or any other area.") THM-INSTR  THM23BALANCEQ)
       (THMORDERQ ("ORDERLINESS: Having good organization or logical order, being systematic, etc.") THM-INSTR  THMORDERLYQ)
       (THMMENCHQ ("MENTAL CHALLENGE: Be mentally challenged with difficult and/or creative mental tasks.") THM-INSTR  THM32MENTALCHALQ)
       (THM34EXPQ ("EXPLORATION: Exploring the unknown, seeking the answers to mysteries.") THM-INSTR  THM34EXPLOREQ)
       (THMCOMPCQ ("COMPETENCE: Being the best I can be and achieving the most competence I can at whatever I do.") THM-INSTR  THM35COMPETENCEQ)
       (THMINTEGQ ("INTEGRITY: Having integrity; pursuing my own values, beliefs, and goals above what others think; being honest with myself and others; etc.") THM-INSTR  THM36INTEGRITYQ)
       (THMPHILQ ("PERSONAL PHILOSOPHY: Developing a positive, well thought out personal belief system and living according to those beliefs.") THM-INSTR  THMPHILQ)
       (THMCLEANQ ("PLEASING: Pleasing others, avoiding conflict, keeping relationships pleasant.") THM-INSTR  THM12PLEASEQ)
       (THMWHOLEQ ("WHOLENESS (unity, integration, organization, simplicity, etc.).") THM-INSTR  THMWHOLENESSQ)
       (THMPERFEQ ("PERFECTION and idealism for self, others, nature." ) THMPERFECTIO) ;;NO-QUEST-STRING-FOUND)
       ;;java match? (THMPERFECTIO "PERFECTION and idealism for self, others, nature.") THM-INSTR 

       (THMJUSTIQ ("JUSTICE (fairness, getting what one has earned or deserved).") THM-INSTR  THMJUSTICEQ)
       (THMSIMPLQ ("SIMPLICITY.") THM-INSTR  THMSIMPLICITYQ)
       (THMBEAUTQ ("BEAUTY of all types in all things.") THM-INSTR  THMBEAUTYQ)
       (THMGOODNQ ("GOODNESS and functionality (versus dysfunctional, evil, or harmful).") THM-INSTR  THMGOODNESSQ)
       (THMUNIQUQ ("UNIQUENESS and DIVERSITY (idiosyncrasy, individuality, variety, novelty).") THM-INSTR  THMUNIQUEQ)
       (THMCREATQ ("CREATIVENESS: Producing new, original ideas, art, objects, actions, etc.") THM-INSTR  THMCREATIVEQ)
       (THMEFORTQ ("EFFORTLESSNESS (ease, grace, beautifully functioning).") THM-INSTR  THMEFORTLESSQ)
       (THMPLAYFQ ("FUN and PLAYFULNESS (fun, joy, amusement, humor).") THM-INSTR  THMPLAYFULQ)
       (THMSESUFQ ("SELF-SUFFICIENCY (autonomy, independence, environment-transcending, taking care of oneself, separateness, living by own laws).") THM-INSTR  THMSELFSUFFICIENTQ)
       (THMSEDISQ ("SELF-DISCIPLINE, self-control, control over one's own thoughts, emotions, and actions to be consistent with one's highest values and goals.") THM-INSTR  THMSELFDISCIPLINEQ)
       (THMSPIRIQ ("GOD and/or SPIRITUALITY: A rich spiritual life that is the center of my life.") THM-INSTR  THMSPIRITGODQ)
       (THMRELIGQ ("RELIGION and the church or religious group to which I belong.") THM-INSTR  THMRELIGIO)  ;; NO-QUEST-STRING-FOUND)
       ;;java match? (THMRELIGIO "RELIGION and the church or religious group to which I belong.") THM-INSTR 
       (THMUNCONQ ("UNCONDITIONAL LOVE: Unconditionally loving myself and everyone in the world.") THM-INSTR  THMUNCONDITLOVEQ)
       )
     ( TBV
       (TBV-INSTR ("Important Beliefs Questions:" "To what degree do you believe the following."))
       (TBVOTHFIQ ("I should always put other people's needs before my own.") TBV-INSTR  TBVOTHERSFIRSTQ)
       (TBVLIKEDQ ("I should be loved or liked by everyone I meet.") TBV-INSTR  TBVLIKEDBYALLQ)
       (TBVWEAKQ ("I am weak and dependent on strong people for my happiness.") TBV-INSTR  TBVWEAKQ)
       (TBVBESTQ ("I must be the best at everything I do.") TBV-INSTR  TBVBESTQ)
       (TBVENTITQ ("I am entitled to a good life, and people I care for should try to help meet my needs.") TBV-INSTR  TBVENTITLEDQ)
       (TBVRULESQ ("We must run our lives by rules, and people who break those rules must be severely punished or we will have chaos.") TBV-INSTR  TBVRULESPUNISHQ)
       (TBVWINNEQ ("There are winners and losers. If you are not strong and take advantage of others before they take advantage of you and you will be a loser.") TBV-INSTR  TBVWINNERSQ)
       (TBVBALANQ ("I try to properly balance present with future happiness and balance my own with others' happiness-- a key to inner harmony.") TBV-INSTR  TBVBALANCEFUTUREQ)
       (TBVHAPCAQ ("For every decision I make--especially big ones--I attempt to estimate which alternative will lead to the greatest happiness and choose that alternative.") TBV-INSTR  TBVHAPCALCQ)
       (TBVGRATIQ ("I am grateful for the gift of life. I was given the gift of life and the opportunity to create a happy life for myself. I did not earn or deserve life or this opportunity--so I will not complain about not having what others do or not getting what I want or need.") TBV-INSTR  TBVGRATITUDEQ)
       (THVSELFAQ ("There are one or more aspects (or parts) of myself that I have a hard time accepting or do not like.") TBV-INSTR  THVSELFACCEPTQ)
       (THVSELFAORIGQ ("There are one or more aspects (or parts) of myself that I have a hard time accepting or do not like.") TBV-INSTR  THVSELFACCEPTQ)
       (THVUNCONQ ("I value all people unconditionally just because they are human. Attributes such as background, ethnicity, social group, income, accomplishments, and even their personality or morality aren't relevant to their basic value as humans.") TBV-INSTR  THVUNCONDCAREQ)
       (THVSELFWQ ("I could love myself and value my own happiness unconditionally no matter what mistakes or bad things I may do.") TBV-INSTR  THVSELFWORTHQ)
       )
     ( IE
       (IE-INSTR ("Important Beliefs Questions:" "To what degree do you believe the following:"))
       (IECSELFSQ ("I am extremely good at taking care of myself and any problems I might run into.") IE-INSTR  IECSELFSUFFICIENTQ)
       (IECICONTQ ("Relative to outside forces like destiny, other people, luck, fate, God, government, organizations, and anything else, I am the one who has by far the greatest amount of control over my own life and happiness.") IE-INSTR  IECILOFCIVSEQ)
       (IECGENETQ ("Genetics and my biology are primarily responsible for my personality and my emotional reactions.") IE-INSTR  IECGENETICQ)
       (IECPEOPLQ ("People in my life are primarily responsible for my personality and my emotional reactions.") IE-INSTR  IECPEOPLEQ)
       (IECDEPENQ ("I am very dependent upon someone (parent, spouse, etc.) to support or take care of me (emotionally, financially, socially, etc.).") IE-INSTR  IECDEPENDENTQ)
       (IECCOFEEQ ("I worry more about caring for someone else's needs or feelings than my own (e.g. family member(s), lover, friend(s), etc.).") IE-INSTR  IECCODEPENDENTQ)
       (IECCOPRBQ ("I worry a great deal about taking care of someone with a serious problem (e.g. illness, an addiction, a psychological disorder, etc.") IE-INSTR  IECCODEPPROBLEMQ)
       )
     ( WORLDVIEW
       (WOV-INSTR ("Important Beliefs Questions:" "To what degree do you believe the following."))
       (WOV-INSTR2 ("Important Beliefs Questions:" "Percent of the time that you do the following."))
       (WOVPROGRQ ("The world will gradually improve in most important respects (materially, socially, environmentally, spiritually, etc.).") WOV-INSTR  WOVPROGRESSQ)
       (WOVGOODFQ ("The world is controlled by forces beneficial to humans (and me).") WOV-INSTR  WOVGOODFORCESQ)
       (WOVMYLIFQ ("My life will generally improve.") WOV-INSTR  WOVMYLIFEQ)
       (WOVNFAIRQ ("Life has been extremely unfair to me.") WOV-INSTR  WOVLIFENOTFAIRQ)
       (WOVENTITQ ("I am entitled to the basic necessities of life such as good health care, good income, people caring for me, etc.") WOV-INSTR  WOVENTITLEDQ)
       (WOVINJURQ ("Someone has injured me so much that it has ruined my life.") WOV-INSTR  WOVINJUREDQ)
       (WOVABUNDQ ("I have all I need to be happy.") WOV-INSTR  WOVABUNDANCEQ)
       (WOVGRATEQ ("I am extremely grateful for having so much.") WOV-INSTR  WOVGRATEFULQ)
       (WOVPOSTHQ ("Percent of the time you have positive thoughts VERSUS negative thoughts.") WOV-INSTR2  WOVPOSTHOUGHTSPERCENTQ)

       ;;WORST FEARS QUESTIONS
       (WOV-INSTR3 ("Your Worst Fears" "How much fear or anxiety do you have about. . ."))
       (WOVHAPPYQ (  "Fear of not getting a job or career you will be happy with.") WOV-INSTR3 WOVHAPPYCAREERQ)
       (WOVPOORQ ("Fear of not having enough income or money.") WOV-INSTR3 WOVPOORQ)
       (WOVILLQ ("Fear of having a serious illness.") WOV-INSTR3 WOVILLQ)
       (WOVDEATHQ ("Fear of death.") WOV-INSTR3 WOVDEATHQ)
       (WOVALONEQ ("Fear of being alone.") WOV-INSTR3 WOVALONEQ)
       (WOVNOLOVQ ("Fear of not ever having a good marriage and/or family life.") WOV-INSTR3 WOVNOLOVEQ)
       (WOVLIKEDQ ("Fear of not having close enough friends.") WOV-INSTR3 WOVLIKEDQ)
       (WOVPERSOQ ("Fear of not becoming the kind of person you want to be.") WOV-INSTR3 WOVPERSO) ;; NO-QUEST-STRING-FOUND)
       ;;java match (WOVPERSO "Fear of not becoming the kind of person you want to be.") WOV-INSTR3
       (WOVPROBLQ ("Fear of never overcoming some personal, psychological, or other type of problem.") WOV-INSTR3 WOVPROBLEMQ)
       (WOVDISCOQ ("Fear that something about you will be discovered, punished, or made public.") WOV-INSTR3 WOVDISCOVEREDQ)
       (WOVSUCCEQ ("Fear of not obtaining the academic or career success you want.") WOV-INSTR3 WOVSUCCESSQ)
       (WOVOVERCQ ("Degree of belief that even if your worst fear(s) happened, you could learn how to be happy.") WOV-INSTR3 WOVOVERCOMEFEARQ)
       )
     ( SELF-CONF
       (SELF-CONF-INSTR  ("Self-Confidence Questions" "CONFIDENCE in your abililities, skills, knowledge, and motivation in this area."))
       (SLFLEARNQ ("Learning and study skills") SELF-CONF-INSTR  SLFLEARNSKILLQ)
       (SLFCRITTQ ("Critical thinking and logic--ability to examine statements critically and think logically") SELF-CONF-INSTR  SLFCRITTHINKQ)
       (SLFRESEAQ ("Research and methodology") SELF-CONF-INSTR  SLFRESEARCHQ)
       (SLFANALYQ ("Analytical thinking--ability to conceptually break wholes into component parts") SELF-CONF-INSTR  SLFANALYSISQ)
       (SLFSYNTHQ ("Synthesis--ability to put confusing pieces together into meaningful wholes") SELF-CONF-INSTR  SLFSYNTHESISQ)
       (SLFCREATQ ("Critical thinking and logic--ability to examine statements critically and think logically") SELF-CONF-INSTR  SLFCRITTHINKQ)
       (SLFCOMPUQ ("Computer-related skills") SELF-CONF-INSTR  slfComputerQ)
       (SLFBIOSCQ ( "Biological Science") SELF-CONF-INSTR  SLFBIOSCIQ)
       (SLFNATSCQ ("Natural Science (physics, chemistry, etc.)") SELF-CONF-INSTR  SLFNATSCIQ)
       (SLFLIBARQ ("Liberal Arts (literature, history, English, languages, etc.)") SELF-CONF-INSTR  SLFLIBARTSQ)
       (SLFSOCSCQ ("Behavioral and Social Sciences (psychology, sociology, political science, etc.)") SELF-CONF-INSTR  SLFSOCSCIQ)
       (SLFPHILRQ ("Philosophy and/or Religion
") SELF-CONF-INSTR  SLFPHILRELQ)
       (SLFPERFAQ ("Performing Arts (music, dance, theatre arts, etc.)") SELF-CONF-INSTR  SLFPERFARTQ)
       (SLFFINEAQ ("Fine Arts (art, design, etc.)") SELF-CONF-INSTR  SLFFINEARTQ)
       (SLFBUSANQ ("Business or Management") SELF-CONF-INSTR  SLFBUSANDMANAGEQ)
       (SLFHEAL2Q  ("Health or Medicine") SELF-CONF-INSTR  SLFHEALTHMEDQ)
       (SLFENGINQ ("Engineering or Technical") SELF-CONF-INSTR  SLFENGINQ)
       (SLFEDUCHQ ("Education, Counseling, or Helping-Related") SELF-CONF-INSTR  SLFEDUCHELPQ)
       (SLFIQQ ("Overall intelligence (IQ)") SELF-CONF-INSTR  SLFIQQ)
       (SLFDECMAQ ("Life and career decision-making and planning") SELF-CONF-INSTR  SLFDECMAKINGQ)
       (SLFTIMEMQ ("Time management") SELF-CONF-INSTR  SLFTIMEMANAGEMENTQ)
       (SLFCOPEQ ("Emotional coping skills--ability to prevent and overcome negative emotions effectively") SELF-CONF-INSTR  SLFCOPEQ)
       (SLFSELF4Q ("Self-motivation--ability to motivate yourself to do unpleasant tasks even under adverse conditions") SELF-CONF-INSTR  SLFSELFMOTIVQ)
       (SLFSELFMQ ("Self-disclosure--ability and practice of sharing openly innermost feelings and intimate information with close friends and family") SELF-CONF-INSTR  SLFSELFDISCLOSEQ)
       (SLFACHANQ ("Task or achievement motivation and work habits--highly focused and productive work habits.") SELF-CONF-INSTR  SLFACHANDWORKQ)
       (SLFMANA6Q ("Managing finances and money") SELF-CONF-INSTR  SLFMANAGEMONEYQ)
       (SLFHEAL3Q ("Health or Medicine") SELF-CONF-INSTR  SLFHEALTHMEDQ)
       (SLFMEETPQ ("Meeting people and talking to strangers") SELF-CONF-INSTR  SLFMEETPEOPLEQ)
       (SLFLISTEQ ("Empathetic listening skills--ability and practice of understanding inner meaning of what others say") SELF-CONF-INSTR  SLFLISTENINGQ)
       (SLFSELF5Q ("Self-disclosure--ability and practice of sharing openly innermost feelings and intimate information with close friends and family") SELF-CONF-INSTR  SLFSELFDISCLOSEQ)
       (SLFCONFLQ ("Conflict resolution skills--ability to calmly and effectively resolve interpersonal conflict situations") SELF-CONF-INSTR  SLFCONFLICTRESOLQ)
       (SLFPERSUQ ("Persuasion skills--ability to influence others") SELF-CONF-INSTR  SLFPERSUASIONQ)
       (SLFMANA7Q ("Management and leadership skills") SELF-CONF-INSTR  SLFMANAGESKILLQ)
       (SLFHELPSQ ("Helping and teaching skills") SELF-CONF-INSTR  SLFHELPSKILLQ)
       (SLFSPEAKQ ("Public speaking skills") SELF-CONF-INSTR  SLFSPEAKSKILLQ)
       (SLFJOBSEQ ("Job search and interviewing skills") SELF-CONF-INSTR  SLFJOBSEARCHQ)
       (SLFADAPTQ ("Very adaptable, flexible, and resourceful--ability to rapidly adapt to and be successful in almost any situation.") SELF-CONF-INSTR  SLFADAPTQ)
       (SLFHAPPYQ ("\"Happiness IQ\"--knowledge and ability of how to make yourself happy in any possible situation and overall.") SELF-CONF-INSTR  SLFHAPPYIQQ)
       (SLFOPTIMQ ("Time management") SELF-CONF-INSTR  SLFTIMEMANAGEMENTQ)
       (SLFFRIENQ ("Very caring, friendly, and outgoing person overall.") SELF-CONF-INSTR  SLFFRIENDLYQ)
       (SLFINDEPQ ("Very strong, independent, self-disciplined person overall.") SELF-CONF-INSTR  SLFINDEPENDENTQ)
       )
     ( SM
       (SM-INSTR ("Self-Management Questions:"   "Honest answers give you the most accurate results."))
       (SMTBUSYQ ("I rarely get upset about being too rushed, having too many things to do, or not having any time to relax.") SM-INSTR  SMTBUSYQ)
       (SMTFUTURQ ("I spend a lot of time thinking about the future, making plans, and working toward completing distant goals.") SM-INSTR SMTFUTUREPLA) ;; NO-QUEST-STRING-FOUND)
       ;;java match? (SMTFUTUREPLA "I spend a lot of time thinking about the future, making plans, and working toward completing distant goals.") SM-INSTR 
       (SMTEXERCQ ("Frequency that you get vigorous exercise for a minimum of 20 minutes:") SM-INSTR  SMTEXERCIZEQ)
       (SMTEATHQ ("I eat a very healthy diet, (vitamins, minerals, balanced meals, fiber, low fat, etc.) do not drink excessively, smoke, or take drugs.") SM-INSTR  SMTEATHQ)
       (SMTSLEEPQ ("Number of hours I average sleeping per night:") SM-INSTR  SMTSLEEPQ)
       (SMTSDEVEQ ("I have been successful in consciously planning and greatly improving a number of important aspects of myself such as my interpersonal relations, coping with my emotions, self-discipline, smoking, overeating, or study habits.") SM-INSTR  SMTSDEVELOPMENTQ)
       (SMTNPROCQ ("If I am facing a task or assignment that is very boring, very confusing, or very frustrating, I will almost always start it without any procrastination and continue to work diligently until it is completed at a high level of quality.") SM-INSTR  SMTNPROCRASTINATEQ)
       (SMTPTODOQ ("I make a PRIORITIZED TASK LIST which covers to-do's from my school, work, social, recreation, and other areas of my life at least once per week.") SM-INSTR  SMTPTODOQ)
       (SMTGOALSQ ("At least twice a year I spend several hours making a list of GOALS and SPECIFIC OBJECTIVES for myself for each area of my life and use these goals/objectives regularly during the year planning my weekly activities at least twice per year.") SM-INSTR  SMTGOALSQ)
       (SMTSCHDQ ("I make a WEEKLY SCHEDULE of how I want to spend my time during the week--scheduling times for classes, study, friends, work, recreation, and other important activities. I use this schedule weekly.") SM-INSTR  SMTSCHDQ)
       (SMT2DTODQ ("I make a COMPREHENSIVE SCHEDULE of ALL ASSIGNMENTS and PROJECTS and their DUE DATES for the ENTIRE semester, quarter, year, etc., and regularly use that schedule to see what I need to do next.") SM-INSTR  SMT2DTODOQ)
       (SMTACMPLQ ("I am extremely busy with many things to do, but feel that I am accomplishing a great deal in most of my life areas, enjoy my life a great deal, and rarely feel under too much pressure from too many things to do.") SM-INSTR  SMTACMPLQ)
       (SMTGHELPQ ("I work on self-improvement regularly by reading, counseling, taking non-required classes, or other activities to consciously improve myself.") SM-INSTR  SMTGHELPQ)
       (SMTBALANQ ("I would say that I lead a very balanced lifestyle. I have time and energy for my school, my work, friends and family, the opposite sex, relaxation, physical activity, my spiritual life, and recreation.  In addition, almost all of these life areas are providing me with a great deal of satisfaction.") SM-INSTR  SMTBALANCEQ)
       (SMTHABCHQ ("If I get good advice from reading or another person, I almost always make a conscious effort to follow that advice and even change life-long habits.") SM-INSTR  SMTHABCHGQ)
       )
     ( COPE
       (COPE-INSTR ("Emotional Coping Questions" "When upset, percent of the time you ___________"))
       (COPE-INSTR2 ("Emotional Coping Questions")) ;; ("COPING Questions:" "Honest answers give the most accurate results."))      
       (COPNEGTHQ ("Worry, think negative thoughts, think of problems without thinking of good solutions") COPE-INSTR  COPNEGTHINKINGQ)
       (COPCOPEAQ ("Eat.") COPE-INSTR  COPCOPEATQ)
       (COPPSOLVQ ("Face the problem directly, think about what caused the feelings, think of possible solutions, and take action to solve the underlying problem.") COPE-INSTR  COPPSOLVEQ)
       (COPEMOTAQ ("Outwardly express anger by losing your temper, crying, damaging something, or getting even.") COPE-INSTR  COPEMOTAGGRESSQ)
       (COPAVOPSQ ("Avoid thinking about problems by sleeping, keeping busy, or putting it off.") COPE-INSTR  COPAVOIDQ)
       (COPBLAMEQ ("Think about whose fault it is, blame yourself, or blame others.") COPE-INSTR  COPBLAMEQ)
       (COPWDRWQ ( "Withdraw from others, feel hurt, hold your emotions in, feel sorry for yourself.") COPE-INSTR  COPWDRWQ)
       (COPFUNQ ( "Do something involving or fun to get rid of the feelings (listen to music, read, socialize, shop, walk, etc.") COPE-INSTR  COPFUNQ)
       (COPTALKSQ ("Talk to someone else about the problem/feelings (friend, family member, counselor, etc.)") COPE-INSTR  COPTALKSOMEONEQ)
       (COPPEPTAQ ("Think about positive thoughts and goals and/or give yourself a pep talk.") COPE-INSTR  COPPEPTALKQ)
       (COPSMOKEQ ("Smoke a cigarette or tobacco product.") COPE-INSTR  COPSMOKEQ)
       (COPDRUGQ ( "Drink an alcoholic beverage, take street drugs, or use prescribed medication.") COPE-INSTR  COPDRUGQ)
       (COPPEQ ("Think about positive thoughts and goals and/or give yourself a pep talk.") COPE-INSTR  COPPEPTALKQ)
       (COPNEGPHQ ("Think of the problem from a very critical or punitive point of view. (Examples: \"I must not make mistakes.\" or \"God may send me to Hell\")") COPE-INSTR  COPNEGPHILQ)
       (COPSELFBQ ("Get angry at yourself, think negative thoughts about yourself, or call yourself names.") COPE-INSTR  COPSELFBLAMEQ)
       (COPPOSPHQ ("Think of the problem from a constructive (philosophical or religious?) point of view that makes you feel better.") COPE-INSTR  COPPOSPHILQ)
       (COPEXPECQ ("Examine your underlying expectations of yourself (or others) and reset them to more realistic levels.") COPE-INSTR  COPEXPECTATIONSQ)
       (COPHAPPYQ ("Tell yourself that you can be happy no matter what happens.") COPE-INSTR  COPHAPPYQ)
       (COPAVOATQ ("How often have you missed work, school, or other important activities because you were so upset (anxious, depressed, etc.) that you couldn't cope.")COPE-INSTR2  COPAVOIDFREQQ)
       (COPSELFEQ ("How much do you enjoy exploring and analyzing your feelings, thoughts, beliefs, and memories.")COPE-INSTR2  COPSELFEXPLOREQ)
       )
     
     ( ASSERTCR
       (CR-INSTR  ("Relationship Questions" "Apply this question to your closest relationship: marriage or close romantic relationship, OR apply the question to an imagined future relationship, OR to another valued relationship."))
       ;;was PLURAL:  "ALL QUESTIONS ON THIS SCALE: " "  Apply all questions on this scale to your closest relationship. If you are married or in a close romantic relationship, apply them to that relationship. OR, you may apply them to an imagined future relationship.  OR, if you want help in working on a particular relationship, answer according to how the questions apply to that relationship."
       (CR1ISSUEQ (  "When my partner and I have a discussion or argument, we almost always stay on one issue at a time.") CR-INSTR  CRSRQ19ISSUEQ)
       (CRRESOLVQ ("My partner and I rarely argue about the same issue more than once.") CR-INSTR  CRSRQ26FINISHQ)
       (CRNTHREAQ ("I almost never make threats about what I will do if my partner takes a certain action.") CR-INSTR  CRSRQ29THREATSQ)
       (CRUNDERLQ ("We usually discuss what is really bothering us (the underlying issues) instead of the surface issues.") CR-INSTR  CRSRQ30REALQ)
       (CRTKLONGQ ("One partner usually talks a long time before the other partner has a chance.") CR-INSTR  CRSRQ32ONETALKQ)
       (CRNNEGLBQ ("I rarely use negative labels or call others (such as 'dumb,' 'dependent,' 'weak,' 'selfish,' 'inconsiderate') even when we are angry with each other.") CR-INSTR  CRSRQ33RARENEGQ)
       (CRTEWEAKQ ("I do not really feel very comfortable telling my partner about my weaknesses or something I have done wrong.") CR-INSTR  CRSRQ34NOWEAKQ)
       (CRWINWINQ ("When making an important decision, we almost always discuss it until we find a solution with which we are both happy.") CR-INSTR  CRSRQ35WINWINQ)
       (CRLONGTKQ ("Sometimes when we are trying to resolve a difficult problem, we almost always keep going until we reach a solution (even if we have to discuss it for hours or the next day).") CR-INSTR  CRSRQ36LONGTALKQ)
       (CREXAGGRQ ("I frequently use words like \"always,\" \"never,\" or other exaggerations.") CR-INSTR  CRSRQ37EXAGGERATEQ)
       (CRMANIPUQ ("I frequently feel as if my partner is manipulating me or that I am manipulating my partner.") CR-INSTR  CRSRQ38PARTMANIPQ)
       (CRSUMMARQ ("When discussing important issues my partner and I usually repeat back a summary of what the other has said to make sure we understand it.") CR-INSTR  CRSRQ39LISTENQ)
       (CRCPRAISQ ("Even during a disagreement, my partner and I frequently laugh and praise each other.") CR-INSTR  CRSRQ40PRAISEQ)
       (CRBOASSRQ ("My partner and I are both very assertive(positive, firm, and diplomatic).") CR-INSTR  CRSRQ43BOTHASSERTQ)
       (CROPHONEQ ("Our communication is extremely open, nondefensive, and honest.") CR-INSTR  CRSRQ45OPENQ)
       (CRREPRAIQ ("Overall, my partner gives me a lot more criticism than praise.") CR-INSTR  CRSRQ47PARTCRITQ)
       (CRTEACHQ ("If one of us tries to teach the other something, we usually end up having some hard feelings.") CR-INSTR  CRSRQ56TEACHQ)
       (CRIFAVORQ ("If my partner asks me to do me a favor, I almost always do it cheerfully.") CR-INSTR  CRSRQ57FAVORQ)
       (CRIFOLUPQ ("I almost always do what I tell my partner I will do.") CR-INSTR  CRSRQ59FOLLOWUPQ)
       (CRANGANGQ ("If my partner gets angry at me, I usually get angry or defensive back.") CR-INSTR  CRSRQ60ANGERBACKQ)
       (CRIPRAISQ ("Overall, I criticize my partner quite a bit more than I praise him/her.") CR-INSTR  CRSRQ67CRITICALQ)
       (CRANGRESQ ("If I lose my temper at my partner, he/she will almost always tell me about it in a firm, diplomatic way without losing his/her temper. I do the same when she/he loses her/his temper.") CR-INSTR  CRSRQ68ANGERRESQ)
       (CRTLKMORQ ("In our conversations, one partner usually talks quite a bit more than the other.") CR-INSTR  CRSRQ31EQTALKQ)
       (CREQWINQ ("My partner and I \"win\" long disagreements/arguments about equally often.") CR-INSTR  CRSRQ58EQWINQ)
       )
     ( INTIMACY
       (INT-INSTR  ("Relationship Questions" "Apply this question to your closest relationship: marriage or close romantic relationship, OR apply the question to an imagined future relationship, OR to another valued relationship."))
       (INSTSHLPQ ("If I am under more stress than usual, my partner will usually do extra things for me.") INT-INSTR  INTSRQ6EXTRAQ)
       (INTCOMITQ ("A long term commitment (would) cause(s) me to feel trapped.") INT-INSTR  INTSRQ7COMMITQ)
       (INTUNDRLQ ("We usually discuss what is really bothering us (the underlying issues) instead of the surface issues.") INT-INSTR  INTSRQ30REALQ)
       (INTTELALQ ("I have told my partner almost everything about myself.") INT-INSTR  INTSRQ8TELLALLQ)
       (INTSMGOAQ ("My partner and I strongly agree on most long term goals.") INT-INSTR  INTSRQ18LIKEGOALSQ)
       (INTEQDECQ ("Overall, my partner and I are equal in how much influence we have in decisions.") INT-INSTR  INTSRQ20EQDISCUSSQ)
       (INTIOPENQ ("When I discuss an important issue with my partner, I go ahead and tell my partner almost exactly what I am thinking and feeling--even though it might upset him/her. My partner does the same.") INT-INSTR  INTSRQ21OPENISSUEQ)
       (INTWEOPNQ ("Our communication is extremely open, nondefensive, and honest.") INT-INSTR  INTSRQ45NONDEFQ)
       (INTDAILYQ ("Almost every day my partner and I each share our FEELINGS about events happening that day.") INT-INSTR  INTSRQ46OPENFEELQ)
       (INTRESPTQ ("I respect my partner more than almost anyone else I know.") INT-INSTR  INTSRQ50RESPECTQ)
       (INTALLOPQ ("My partner and I talk very openly and freely about specifically what we like and dislike about even the most sensitive areas of our relationship (e.g. what we really think of each other, sexual relations, finances, secrets.") INT-INSTR  INTSRQ53OPENSEXTKQ)
       (INTWKTOGQ ("My partner and I do NOT enjoy working at the same task together.") INT-INSTR  INTSRQ55MUTTASKQ)
       (INTKNPFEQ ("I frequently do not know what my partner really wants or feels.") INT-INSTR  INTSRQ61KNOWFEELQ)
       (INTLSQPRQ ("I frequently tell others about their positive characteristics and about how much I like, love, or respect my partner.") INT-INSTR  INTLSQPRASE44Q)
       (INTLOVEQ ("I love (care for) my partner very much.") INT-INSTR  INTLOVEQ)
       )
     ( INDEP-INT
       (INR-INSTR  ("Relationship Questions" "Apply this question to your closest relationship: marriage or close romantic relationship, OR apply the question to an imagined future relationship, OR to another valued relationship."))
       (INRBEALNQ ( "It is NOT ok for one partner to go away for a weekend by themselves to think and be alone.") INR-INSTR  INRSRQ2BEALONEQ)
   ;;    (INALCNSTORIGQ ("One should always consult with their partner before making even small decisions.") INR-INSTR  INRSRQ3CONSULTQ)
   (INALCNSTQ ("One should always consult with their partner before making even small decisions.") INR-INSTR  INRSRQ3CONSULTQ)
       (INRFRIENQ ("My partner has close friends of his/her same sex with whom he/she has frequent social contact outside work.") INR-INSTR  INRSRQ9OWNFRIENDSQ)
       (INDIFDECQ ("If my partner makes a decision concerning his/her own personal matters, and I do not agree with it, I almost always am supportive and encouraging to my partner.") INR-INSTR  INRSRQ10ENCDIFDECQ)
       (INRLUNCHQ ("It is ok for one partner to go out to lunch alone with an attractive friend of the opposite sex.") INR-INSTR  INRSRQ11LUNCHQ)
       (INRINHAPQ ("The (marriage) relationship is more important than the happiness of one partner.") INR-INSTR  INRSRQ15INDHAPQ)
       (INNEVARGQ ("Partners should never argue or disagree if they are to have a truly happy relationship.") INR-INSTR  INRSRQ16NEVARGUEQ)
       (INRIGROWQ ("I would end my relationship if staying in it meant that I could not grow as a person.") INR-INSTR  INRSRQ17ENDQ)
       (INRSAYWEQ ("When I refer to myself, I frequently say 'we' (meaning my partner and I).") INR-INSTR  INRSRQ24SAYWEQ)
       (INCOMTWOQ ("One of us frequently worries about whether the other is really committed to this relationship.") INR-INSTR  INRSRQ25COMMITWORRYQ)
       (INDIFGOAQ ("It is OK for my partner and I to have some goals which are not the same.") INR-INSTR  INRSRQ28DIFGOALOKQ)
       (INFINDANQ ("If I did not have my partner, I would think I could find another partner with whom I could be very happy.") INR-INSTR  INRSRQ41FINDANOTHERQ)
       (INENALONQ ("I find that I can't really enjoy myself very much if I go someplace without my partner.") INR-INSTR  INRSRQ44ENJOYALONEQ)
       (INOKALONQ ("I don't know how I could be happy if I didn't have my partner.") INR-INSTR  INRSRQ48HAPALONEQ)
       (INRHATEAQ ("I hate to be alone for even a short time.") INR-INSTR  INRSRQ49FEARALONEQ)
       (INRFREEHQ ("I feel free to do whatever I want at home whether or not my partner is there.") INR-INSTR  INRSRQ51FREEATHOMEQ)
     (INSEPINTQ ("I am glad that my partner has some recreational activities and interests apart from me.")  INR-INSTR  INRSRQ63PARTINTERESTSQ)
     (INRMONEYQ ("My partner and I each have our own funds from which to buy personal things without consulting the other.") INR-INSTR INRSRQ64OWNFUNDSQ)
       )
     ( ROM
       (ROM-INSTR  ("Relationship Questions" "Apply this question to your closest relationship: marriage or close romantic relationship, OR apply the question to an imagined future relationship, OR to another valued relationship."))
       (ROMSURPRQ ( "I do something different to surprise my partner such as buy flowers, leave a love note, or buy a present for no special event at least once a week.") ROM-INSTR  ROMSRQ1SURPRISEQ)
       (ROMFANTAQ ("I frequently fantasize about my partner.") ROM-INSTR  ROMSRQ4FANTASIZEQ)
       (ROMCELEBQ ("My partner and I celebrate special days together almost once a month.") ROM-INSTR  ROMSRQ5CELEBRQ)
       (ROMPLACEQ ("My partner and I go out to romantic places just to be alone together at least once a week.") ROM-INSTR  ROMSRQ12ROMPLACESQ)
       (ROMATTRAQ ("I am extremely attracted to my partner sexually.") ROM-INSTR  ROMSRQ13ATTRACTQ)
       (ROMPLAYFQ ("My partner and I both enjoy playful interactions with each other several times per week.") ROM-INSTR  ROMSRQ14PLAYQ)
       (ROMCHARMQ ("My partner is extremely charming and romantic.") ROM-INSTR  ROMSRQ42CHARMQ)
       )
     ( LIBROLE
       (LRO-INSTR  ("Relationship Questions" "Apply this question to your closest relationship: marriage or close romantic relationship, OR apply the question to an imagined future relationship, OR to another valued relationship."))
       (LROMTASKQ ( "There are certain tasks that are MORE the man's responsibility, such as providing economic support, taking care of the car, etc.") LRO-INSTR  LROSRQ22MTASKSQ)
       (LROFTASKQ ("There are certain tasks that are MORE the woman's responsibility, such as cleaning house, fixing meals, etc.") LRO-INSTR  LROSRQ23FTASKSQ)
       (LRMFINALQ ("The man should make the final decision.") LRO-INSTR  LROSRQ27FINALDECQ)
       (LROEMBARQ ("I would feel embarrassed if my partner did something considered more characteristic of the opposite sex in front of other people (such as a woman working on the car or a man crying).") LRO-INSTR  LROSRQ52EMBARQ)
       (LROMSTROQ ("I want a relationship in which the man is stronger and more decisive than the woman.") LRO-INSTR  LROSRQ54MSTRONGERQ)
       (LROEQINCQ ("The man and woman should be equally responsible for providing an income for the couple or family.") LRO-INSTR  LROSRQ65EQINCOMEQ)
       (LRCARCONQ ("If the man and woman have a career conflict in which one has to quit his/her job, the woman should be the one to quit.") LRO-INSTR  LROSRQ66FQUITJOBQ)
       )
     ( HAP
       (HAP-INSTR ("Overall Happiness Questions"   "Degree that you are happy with ... "))
       (HAPAREAQ ("Happiness with living in this area, with the home in which I live, and feeling at home here.") HAP-INSTR  HAPAREAQ)
       (HAPCLFRNQ ("Happiness with the number and closeness of my friendships, and I see them as often enough.") HAP-INSTR  HAPCLFR) ;;NO-QUEST-STRING-FOUND)
       ;;java match?      (HAPCLFR "Happiness with the number and closeness of my friendships, and I see them as often enough.") HAP-INSTR 
       (HAPCARNWQ ("Happiness with my career now.") HAP-INSTR  HAPCAREERQ)
       (HAPCARFUQ ("Happiness with expectations for future career success and happiness.") HAP-INSTR  HAPCAREEREXPECTQ)
       (HAPFRIENQ ("Happiness with friendships.") HAP-INSTR  HAPFRIENDSQ)
       (HAPWKRELQ ("Happiness with relationships at work, school, or job-like setting.") HAP-INSTR  HAPWORKRELSQ)
       (HAPPEQ ("Happiness with my physical activity area of my life.") HAP-INSTR  HAPPEQ)
       (HAPRECREQ ("Happiness with my recreation.") HAP-INSTR  HAPRECREATIO) ;;NO-QUEST-STRING-FOUND)
       ;;java match?      (HAPRECREATIO "Happiness with my recreation.") HAP-INSTR 
       (HAPSEXREQ ("Happiness with the sexual/romantic relationship area of my life.") HAP-INSTR  HAPSEXRELQ)
       (HAPFAMILQ ("Happiness with my family relationships.") HAP-INSTR  HAPFAMILYQ)
       (HAPSELFDQ ("Happiness with the kind of person I am and with my personal growth/development.") HAP-INSTR  HAPSELFDEVELQ)
       (HAPSPIRIQ ("Happiness with having a meaningful life and with my spiritual or religious life.") HAP-INSTR  HAPSPIRITUALQ)
       (HAPYEARQ ("Overall happiness during the past year.") HAP-INSTR  HAPYEARQ)
       (HAP3YEARQ ("Overall happiness during the past year.") HAP-INSTR  HAPYEARQ)
       (HAPLIFEQ ("Overall happiness during my entire life up to 3 years ago.") HAP-INSTR  HAPLIFEQ)
       (HAPEXPECQ ("Overall happiness expected in the future.") HAP-INSTR  HAPEXPECTQ)
       )
     ( RHEALTH
       (RHL-INSTR ("Health Questions"
"What best describes your health and your habits?"))
       (RHLFREQIQ ("How often did you get sick the past 3 years?") RHL-INSTR  RHLFREQILLNESSQ)
       (RHLALCOHQ ("How many drinks of alcohol do you average?") RHL-INSTR  RHLALCOHOLQ)
       (RHLSMOKEQ ("How often do you use cigarettes or other tobacco products?") RHL-INSTR  RHLSMOKEQ)
       (RHLDRUGSQ ("How many often do you take illegal drugs on average?") RHL-INSTR  RHLDRUGSQ)
       (RHLPHYSIQ ("How would you describe your physical conditioning?") RHL-INSTR RHLPHYSICALCONDITIO) ;; NO-QUEST-STRING-FOUND)
       ;;java match? (RHLPHYSICALCONDITIO "How would you describe your physical conditioning?") RHL-INSTR 
       (RHLWEIGHQ ("How would you describe your weight?") RHL-INSTR  RHLWEIGHTQ) ;; NO-QUEST-STRING-FOUND)
       ;;java match? (RHLWEIGHTQ "How would you describe your weight?") RHL-INSTR 
       )
     ( RPEOPLE
       (RPE-INSTR ("Relationship Questions"  "Honest answers give better results."))
       (RPEHAPFRQ ("Almost all of my good friends are very successful and happy in almost every area of their lives including school and interpersonal relationships.") RPE-INSTR  RPEHAPFRIENDSQ)
       (RPEHMARRQ ("I have (or have had) a very happy marital -- or marital-like relationship with someone for an extended period of time.") RPE-INSTR  RPEHMARRQ)
       (RPENETWQ ("I have developed an extensive, close network of friends and career-related persons with whom I share support and information.") RPE-INSTR  RPENETWQ)
       (RPECLFRNQ ( "In my life I have had a number of extremely close friends with whom I could discuss my innermost secrets, weaknesses, and problems.") RPE-INSTR  RPECLFR );;NO-QUEST-STRING-FOUND)
       ;;java match? (RPECLFR "In my life I have had a number of extremely close friends with whom I could discuss my innermost secrets, weaknesses, and problems.") RPE-INSTR 
       (RPENUMFRQ ("Approximate number of friends in general with whom you interact socially -- outside of work or school settings--at least once a month.") RPE-INSTR  RPENUMFRIENDSQ)
       (RPENUMCLQ ("Approximate number of EXTREMELY CLOSE friendships with which you are VERY SATISFIED.") RPE-INSTR  RPENUMCLOSEFRIENDSQ)
       (RPECOMMIQ ( "Degree of commitment to an intimate(romantic) relationship (lasting at least 3 months)") RPE-INSTR  RPECOMMITQ) ;; NO-QUEST-STRING-FOUND)
       ;;java match? (RPECOMMITQ "Degree of commitment to an intimate(romantic) relationship (lasting at least 3 months)") RPE-INSTR 
       )
     ( RDEP
       (RDEP-INSTR ("Unhappiness and Depression Questions" "Honesty is important for valid results."))
       (RDEP-INSTR2 ("Unhappiness and Depression Questions" "Honesty is important for valid results.")) 
       (RDEPFEELQ ("I often feel sad, apathetic, listless, or depressed.") RDEP-INSTR  RDEPFEELINGQ)
       (RDEPTHOUQ ("I often feel worthless, very guilty, or think very negative thoughts about my future, the world, death, or myself.") RDEP-INSTR  RDEPTHOUGHTQ)
       (RDEPDYSSQ ("If you have felt depressed and had 2 or more of the following symptoms regularly, how long have you had them?
  * feel sad, unhappy, or depressed most of the day for most days
  * feel low energy, tiredness most of the time
  * have poor concentration and trouble making decisions
  * feel hopeless or doomed
  * have feelings of low self-esteem
  * have poor appetite or overeat
  * sleep too little or too much most of the time.") RDEP-INSTR  RDEPDYSSYMPTOMSQ)
       (RDEPMAJSQ ("How many times for 2 or more weeks at a time, have you had 5 (or more) of the following symptoms:
 * feel very depressed
 * have markedly less interest or pleasure in almost all daily activities
 * diminished ability to concentrate or think
 * feel worthless and/or very guilty
 * not be able to sleep or sleep much more than usual
 * have very low energy
 * significant weight loss or gain (without effort)
 * move much more slowly (motor retardation) or quickly (agitation) than usual
 * have recurring thoughts of death or suicidal thoughts") RDEP-INSTR  RDEPMAJSYMPTOMSQ)
       
       (RDEPMEDSQ ("Length of time that you have been prescribed medication for depression.") RDEP-INSTR2  RDEPMEDSQ)
       (RDEPTHERQ ("Amount of counseling or psychotherapy for depression.") RDEP-INSTR2  RDEPTHERAPYQ)
       )
     ( RANX
       (RANX-INSTR ("Anxiety Related Questions" "Degree/accuracy this statement describes you."))
       (RANX-INSTR2 ("Anxiety Related Questions" "Give your best estimate."))
       (RANXPERFQ ("Do you feel excessively nervous or anxious when speaking or performing in front of others.") RANX-INSTR  RANXPERFORMQ)
       (RANXALLTQ ("Do you worry or feel nervous or anxious almost all of the time?") RANX-INSTR  RANXALLTIMEQ)
       (RANXPSTDQ ("Do you suffer from post-traumatic stress symptoms?

[Were you ever exposed to some life-threatening, abusive, or shocking traumatic event(s) where you felt extremely frightened and helpless AND still have frequent episodes of flashbacks, numbness, detachment, distress, avoidance of similar situations, or other symptoms that significantly interfere in your life?]") RANX-INSTR  RANXPSTDQ)
       (RANXSOCIQ ("Do you feel very nervous or anxious almost any time you are with other people?") RANX-INSTR  RANXSOCIALQ)
       (RANXOCDQ ("How many times have you had a lasting problem with obsessions or compulsions?

[Obsessions definition: recurring, uncontrollable thoughts or images that you cannot get out of your mind, and cause distress.
Compulsions definition: repeating outward or mental acts (e.g. washing, ordering, checking, praying, counting, repeating words) because one feels compelled to.
Both obsessions and compulsions are usually not realistically connected to any immediate outside problem or are excessive.]") RANX-INSTR  RANXOCDQ)
       (RANXPHOBQ ("How many genuine phobias do you think you have?

[Phobia definition: repeated intense, excessive, and unreasonable fear or anxiety elicited by a specific object, animal, or situation. Or, do you have a fear of almost all social contact?]") RANX-INSTR  RANXPHOBIAQ)
       (RANXPANIQ ("About how many genuine panic attacks have you had during the past 5 years?

[Panic attack definition: four or more of the following symptoms together for 10 minutes or more:
   pounding heart; trembling; trouble breathing; chest pain; feeling dizzy;    feeling detached or numb; plus fears of dying, going crazy, or losing control]") RANX-INSTR  RANXPANICQ)
       (RANXMEDSQ ("Length of time that you have been prescribed medication for anxiety, obsessions/compulsions, phobias, or panic disorder.") RANX-INSTR  RANXMEDSQ)
       (RANXTHERQ ("Amount of counseling or psychotherapy for excessive stress, anxiety, obsessions/compulsions, phobias, or panic disorder.") RANX-INSTR  RANXTHERAPYQ)
       )
     ( RANG
       (RANG-INSTR ("Anger Related Questions" "Degree/accuracy this statement describes you. Honesty is very important for helpful results." ))
       (RANG-INSTR2 ("Anger Related Questions"  "Give your best estimate.  Honesty is very important for helpful results."))
       (RANGFEELQ ("How often do you get angry and lose your temper?") RANG-INSTR2  RANGFEELINGQ)
       (RANGYELLQ ("How often do you yell at someone or call someone hurtful names?") RANG-INSTR2  RANGYELLQ)
       (RANGDOMIQ ("How often do you get someone to do what you want by criticizing them, out-talking them, getting angry, or threatening them.") RANG-INSTR2  RANGDOMINATEQ)
       (RANGTHOUQ ("How often do you think about getting even with someone who has hurt you?") RANG-INSTR2  RANGTHOUGHTSQ)
       (RANGDESTQ ("How often do you damage objects or property, hurt animals or people purposely, or break the law?") RANG-INSTR2  RANGDESTROYQ)
       )
     ( REMOT
       )
     ( TB2
       (TB2-INSTR ("Important Beliefs Questions" "To what degree do you believe the following."))
       (TB2RELATQ ("There is no 'absolute' right and wrong or good or bad--it depends upon factors like your point of view, the situation, or one's cultural background.") TB2-INSTR  TBV2RELGOODQ)
       (TB2PUNISQ ("We must run our lives by rules, and people who break those rules must be severely punished or we will have chaos.") TB2-INSTR TBVRULESPUNISHQ) ;; NO-QUEST-STRING-FOUND)
       ;;java match? (TBVRULESPUNISHQ "We must run our lives by rules, and people who break those rules must be severely punished or we will have chaos.") TB2-INSTR 
       (TBV2NOTRQ ("If a person has a bad environement and/or genetics, they aren't really responsible for what they do.") TB2-INSTR  TBV2NOTRESPONSIBLEQ)
       (TB2GROUMQ ("One group in my life (such as my family, nation, culture, or religion) is so important that I would be almost nothing without them. Life wouldn't be worth living.") TB2-INSTR  TBV2GROUPMEANINGQ)
       (TB2SELFMQ ("Life has no meaning in itself, any meaning must be supplied by the individual.") TB2-INSTR  TBV2SELFMEANINGQ)
       (TB2GDWRKQ ("People can only be completely forgiven and guilt-free if they are good enough (do enough of the right things).") TB2-INSTR  TBV2GOODWORKSQ)
       (TB2GDATTQ ("Goodness (or being forgiven) depends much more on attitude than good deeds.") TB2-INSTR  TBV2GOODATTITUDEQ)
       (TB2ALLGDQ ("There is a lot of good in all people no matter what they believe or have done.") TB2-INSTR  TBV2ALLGOODQ)
       (TB2REASOQ ("If society would base everything upon reason and science, we would have nothing to worry about.") TB2-INSTR  TBV2REASO) ;;  NO-QUEST-STRING-FOUND)
       ;;java match? (TBV2REASO "If society would base everything upon reason and science, we would have nothing to worry about.") TB2-INSTR 
       (TBV2ASTRQ ("I believe in phenomena like communicating with spirits of the deceased, seeing into the future, and astrology.") TB2-INSTR  TBV2ASTROLOGYQ)
       (TB2IDHUMQ ("I identify with all humanity more than any single group.") TB2-INSTR  TBV2IDHUMANITYQ)
       (TB2LIFADQ ("I believe in some form of life after death.") TB2-INSTR  TBV2LIFEAFDEATHQ)
       (TB2MOVEMQ ("Being part of a progressive movement is more important to me than my family or any other group.") TB2-INSTR  TBV2MOVEMENTQ)
       (TBV2COREQ ("Despite some doubts, I have a set of strong core beliefs [about God, Nature, Humanity, Right and Wrong, Myself etc.] that I use daily to guide me in all aspects of life.") TB2-INSTR  TBV2COREBELIEFSQ)
       )
     (CARGEN
      ;;FIXED I switched CAR1CARPQ and  (CAR1CARGQ  data NO-QUEST-STRING-FOUND
      (CAR-INSTR ("Career or College Major Interests Questions" "Degree/Accuracy this describes you."))
      ( CAR1CARGQ  ("I feel extremely satisfied about my career decision.  I have a clear career goal and plan for reaching that goal. My plan has a very high probability for success.") CAR-INSTR  CAR1CARGOALQ)
      (CAR1CARPQ ("I have spent a great deal of time going through the process of reaching a career decision doing things such as reading about careers, interviewing others, taking interest tests, thinking about what I want, and getting related work experience.") CAR-INSTR  CAR1CARPRIORITYQ) ;;matched wrong question for CAR1CARGOALQ
      ;;java match? (CAR1CARPRIORITYQ "I have spent a great deal of time going through the process of reaching a career decision doing things such as reading about careers, interviewing others, taking interest tests, thinking about what I want, and getting related work experience.") CAR-INSTR 
      (CAR1INATQ ("I really enjoy natural science classes like chemistry, physics, or geology and am considering a career involving some aspect of natural science.") CAR-INSTR  CAR1INATSCIQ)
      (CARIBIOHQ ("I really enjoy subjects like biology and am considering a career which might involve a lot of knowledge of biological science. I am considering a major or minor in BIOLOGY, MICROBIOLOGY, or another biological science.") CAR-INSTR  CARIBIOHEALTHSCIQ)
      (CARISOCSQ ("I really enjoy learning about myself or other people. I enjoy classes like psychology, sociology, anthropology, economics, or geography. I am considering a career where understanding people, groups, economics, OR cultures may be important.") CAR-INSTR  CARISOCSCIQ)
      (CARIHELPQ ("I really enjoy helping people and am considering a career in a 'helping profession' such as counseling, teaching, or social work.") CAR-INSTR  CARIHELPQ)
      (CARIMATHQ ("I love math, am very good at it, and am considering a career in which math might play an important part.") CAR-INSTR  CARIMATHQ)
      (CARIMEDQ ("I am considering a career in a medical or health-related field. Or I might like a career related to physical education, physical therapy, pharmacy, audiology, speech therapy or some other field which requires a lot of knowledge about biology or the human body.") CAR-INSTR  CARIMEDQ)
      (CARIWRITQ ("I love to write and am considering a career in which writing would be very important. OR I have an interest in journalism or radio, TV, or film production.") CAR-INSTR  CARIWRITEQ)
      (CARIFNARQ ("I have a serious interest in an art-related field such as art, design, music, dance, photography, or theatre arts.") CAR-INSTR  CARIFNARTQ)
      (CARIETHNQ ("I am extremely interested in studying about an ethnic group, about women, or about ancient or current cultures.") CAR-INSTR  CARIETHNICQ)
      (CARILEARQ ( "I love learning through reading, taking classes, or any other way I can. I might eventually want to get a masters degree or doctorate.") CAR-INSTR  CARILEAR) ;;NO-QUEST-STRING-FOUND)
      ;;java match? (CARILEAR "I love learning through reading, taking classes, or any other way I can. " "I might eventually want to get a masters degree or doctorate.") CAR-INSTR 
      (CARIEXPEQ ("I would love to specialize and be an expert at something.  I tend to get passionate interests about one interest area at a time for months or  years. I am considering a career where I might become an expert at something that requires intense study or an advanced degree.") CAR-INSTR  CARIEXPERTQ)
      (CARIGENEQ ("I enjoy a large variety of activities. I would like a career where I have a little knowledge about many things. I might rather have a more general degree like a general business, social science, or liberal arts degree that can give me a wide variety of career options.") CAR-INSTR  CARIGENERALQ)
      (CARINOINQ ("I have never been very interested in school, any particular subject in school, or any particular career that I know of. I feel very confused about what major or career I want.") CAR-INSTR  CARINOINTERESTQ)
      (CARILITQ ("I enjoy reading and literature of many types. I am considering a field like history or literature.") CAR-INSTR  CARILITQ)
      (CARIRECPQ ("I really enjoy sports, recreational activiites, and helping others enjoy  them. I am considering a career in a physical education, sports, or recreation-related field.") CAR-INSTR  CARIRECPEQ)
      (CARIPOLIQ ("I enjoy learning about law, politics, or government and am considering a career where these subjects may be important.") CAR-INSTR  CARIPOLITICSQ)
      (CARIMIL6Q ("Law enforcement, the legal profession, probation, or the military are careers I have an interest in.") CAR-INSTR  CARIMILTARYLAWENFORCEQ)
      (CARIMANUQ ("I really enjoy working with machines, electronics, computers, aircraft, medical equipment, construction, or other activities where I can work with my hands and see something I made or repaired. I am less interested in designing these or working behind a desk. I might prefer a technical career which requires only a one- or two-year technical degree at a community college or a technical school.") CAR-INSTR  CARIMANUALACTSQ)
      (CARILANGQ ("I really enjoy other countries and learning foreign languages. I am considering majoring or minoring in a foreign language.") CAR-INSTR  CARILANGUAGEQ)
      (CARIPHILQ ("I really enjoy philosophy and/or the study of religion. I may want PHILOSOPHY or RELIGION as a major or a minor for my career and/or personal benefit.") CAR-INSTR  CARIPHILANDRELQ)
      (CARIBUSIQ ("I expect to work in a business setting or am considering a major or minor in a business-related career.") CAR-INSTR  CARIBUSINESSQ)
      (CARIENGIQ ("I am interested in science and/or technical things, math, computers, medical equipment, machines, airplanes, electronics, buildings or public works projects. I might like to build or design things or work with computers. I am considering a career in engineering, engineering technology, computers, architecture, or a related field.") CAR-INSTR  CARIENGINEERQ)
      (CARIFAMCQ ("I have a very high interest in one or more of the following--child development, consumer affairs, fashion merchandising, textiles and clothing, nutrition, food industries, gerontology, or teaching home economics or family and consumer affairs. I might be interested in one of these areas as a major or minor in a FAMILY AND CONSUMER SCIENCES area.") CAR-INSTR  CARIFAMCONSCIQ)
      (CARIWOMAQ ("I might be interested in majoring or minoring in Women's Studies or studies of a special ethnic group such as Asian or Asian-American Studies, Mexican-American Studies, Black Studies, or Native American Studies.") CAR-INSTR  CARIWOMANETHNICQ)
      (CARICOM8Q ("I enjoy working on a computer, learning about software and hardware, and think that I might enjoy a job in a computer-related field where I spend a lot of time designing software or hardware, or working with computers, computer networks, the Internet, or managing others who work with computers.") CAR-INSTR  CARICOMPUTERQ)
      (CARINTE0Q ("I might like to have a major that combined two or three other major areas of my choosing. I might like to inquire about designing such a major that fits my particular interests. [Most universities offer such majors under titles like 'Special Major', 'Interdisciplinary Studies', or 'Liberal Arts.']") CAR-INSTR  CARINTERDISCSTQ)
      )
     ( CARBUS
       (CARIBMARQ ("I enjoy selling or planning how to market things and am considering a career in sales, marketing, market research, or some other form of merchandising. I am considering MARKETING as a major or minor.") CAR-INSTR  CARIBMARKETINGQ)
       (CARIBMANQ ("I think I would like being an executive or manager in charge of other people and responsible for a work-group or business. I am considering a career in management or MANAGEMENT as a major or minor.") CAR-INSTR  CARIBMANAGEMENTQ)
       (CARIBINFQ ("I enjoy working with computers, and think I would like a career related to business applications of computers. I am considering BUSINESS INFORMATION SYSTEMS as a major or minor department.") CAR-INSTR  CARIBINFORMSYSTEMSQ)
       (CARIBFINQ ("I enjoy dealing with money, finance, economics, real estate, and/or business law issues. I am considering a career in a field related to one of these interests. I am considering a major or minor in the FINANCE department.") CAR-INSTR  CARIBFINANCEQ)
       (CARIBHRDQ ("I would like teaching and helping people in a business setting and am considering work in personnel, training, or human resource development. I am considering a major or minor in HUMAN RESOURCES MANAGEMENT.") CAR-INSTR  CARIBHRDQ)
       (CARIBACCQ ("I would like to work with numbers and do precise, detailed work. I might enjoy working with auditing or tax-related issues.  I am considering a career, major, or minor in ACCOUNTING or a related field.") CAR-INSTR  CARIBACCTOUNTINGQ)
       (CARISPBUQ ("I would greatly value developing my speech, communication, or public relations skills to high level and am considering a career where those skills may be very important. I am considering a major or minor in the SPEECH COMMUNICATION department.") CAR-INSTR  CARISPBUSQ)
       )
     ( CARENGR
       (CARIEENGQ ("I enjoy complex math and might enjoy designing complex electronic systems such as computers.  I am considering a career in electrical or electronic engineering or its option in biomedical engineering.") CAR-INSTR  CARIEENGQ)
       (CARIMEQ ("I enjoy design and am interested in the workings of complex mechanical  things. I am considering a career in mechanical engineering or in one of its options of industrial-management engineering, materials engineering, or ocean engineering.") CAR-INSTR  CARIMEQ)
       (CARICHE2Q ("I enjoy chemistry and also designing things. I am considering a career in chemical engineering.") CAR-INSTR  CARICHEMENGQ)
       (CARICIVEQ ("I think I would enjoy designing things like civil works projects, buildings, or other large projects. I am considering civil engineering as a career.") CAR-INSTR  CARICIVENGQ)
       (CARIAEROQ ("I am very interested in aerospace-related engineering and am considering a career as an aerospace engineer.") CAR-INSTR  CARIAEROENGQ)
       (CARIEITEQ ("I am interested in an engineering-related field, but am not as interested in complex math or designing systems as I am in technical aspects of one or more of the following--construction management, electronics, manufacturing, or quality assurance. I might be interested in an ENGINEERING TECHNOLOGY major.") CAR-INSTR  CARIEITECHQ)
       (CARICOM9Q ("I love math, programming, and computer software design, but am less interested in the electronic circuits and hardware of computers.  I am considering (engineering) computer science as a major.") CAR-INSTR  CARICOMPSCIENGRQ)
       (CARIBCOMQ ("I really enjoy working with computers. But I would prefer a business environment more than an engineering, science, or mathematical environment. I might consider getting a major in business with an emphasis in computers or INFORMATION SYSTEMS.") CAR-INSTR  CARIBCOMPUTERQ)
       )
     ( CARFINE
       (CARIMUSIQ ("I love music and am considering a music-related career or a major or minor in MUSIC.") CAR-INSTR  CARIMUSICQ)
       (CARIARTQ ("I love art and am considering an art-related or design-related career or am considering a major in ART.") CAR-INSTR  CARIARTQ)
       (CARIDRAMQ ("I love to act and be in plays and am considering professional acting as a career or considering a major or minor in THEATER ARTS.") CAR-INSTR  CARIDRAMAQ)
       (CARIDANCQ ("I love to dance and am considering a career in which dance might play an important part or a major or minor in DANCE.") CAR-INSTR  CARIDANCQ)
       (CARIPHOTQ ("I have an interest in becoming a photojournalist and would consider a major or minor in PHOTOGRAPHY or PHOTOJOURNALISM.") CAR-INSTR  CARIPHOTJOURNALISMQ)
       (CARINDDEQ ( "I love to draw and design functional things. I would consider a major in DESIGN or INDUSTRIAL DESIGN.") CAR-INSTR  CARINDDESIG) ;; NO-QUEST-STRING-FOUND)
       #|       ;;java match? (CARINDDESIG "I love to draw and design functional things. I would consider a major in " "DESIGN or INDUSTRIAL DESIGN.") CAR-INSTR |#
       (CARINTE1Q ( "I love to decorate and would like to design interiors for homes or businesses. I would consider a major in INTERIOR DESIGN.") CAR-INSTR  CARINTERIORDESIG );;NO-QUEST-STRING-FOUND)
       )
     ( CARHELP
       (CARITEACQ ("I enjoy teaching groups of people and am considering a career where teaching might be an important part of my job.") CAR-INSTR  CARITEACHQ)
       (CARICOUNQ ("I enjoy helping people one-on-one and am considering a career in a counseling-related field such as becoming a psychologist or psychiatrist, a school counselor or psychologist, or a social worker.  I know that these all require graduate degrees, and some require psychology as a major. I am considering a major in PSYCHOLOGY (which will also give me the most flexibility in choosing what type of counseling I want to pursue later.)") CAR-INSTR  CARICOUNSELINGQ)
       (CARIEDUCQ ("I would strongly like to work in an educational setting such as a public school or university.") CAR-INSTR  CARIEDUCSETTINGQ)
       (CARIHADUQ ("I would especially enjoy a career helping ADULTS.") CAR-INSTR  CARIHADULTQ)
       (CARIHCHIQ ("I would especially enjoy a career helping CHILDREN or TEENAGERS.") CAR-INSTR  CARIHCHILDQ)
       (CARITVOCQ ("I would enjoy teaching vocational or shop courses. I am considering vocational education as a major.") CAR-INSTR  CARITVOCATIONALQ)
       (CARICOM4Q ("I would be interested in a career helping people with their speech or helping persons with hearing impairments. I might want a major leading to a career in audiology or speech therapy such as COMMUNICATIVE DISORDERS.") CAR-INSTR  CARICOMDISORDERSQ)
       (CARSOCWOQ ("I know that I want to be a social worker and work with public agencies helping people with various types of disabilities or who are in need of help. I know that most jobs are with the government and think I would enjoy working as part of a larger organization dedicated to helping people even though there may be a lot of paperwork, etc. I am considering a major in psychology, sociology, social work, or a related field.") CAR-INSTR  CARSOCWORKQ)
       (CARK12TEQ ("I think that I might like to teach in public or private schools in a grade level between Kindergarten and College (K-12). I am interested in a major that leads to a teaching credential.

[In California getting a teaching credential usually means getting a special degree in Liberal Studies for elementary teaching or obtaining one of a select number of majors for teaching high school. Go to your local College or School of Education for more information.]") CAR-INSTR  CARK12TEACHQ)
       (CARMINISQ ("I am considering a career in church work or as a minister, priest, rabbi, or other religious leader. Or, I am interested in learning more about or teaching about religion. I am considering a degree in RELIGION, RELIGIOUS STUDIES, or PHILOSOPHY. Or, I am considering a different kind of major such as psychology or sociology that could help me be more effective helping people.") CAR-INSTR  CARMINISTERQ)
       )
     ( CARLANG
       (CARIFRENQ ("I am very interested in learning or teaching French or considering FRENCH as a major.") CAR-INSTR  CARIFRENCHQ)
       (CARIITALQ ( "I am very interested in learning or teaching Italian or am considering ITALIAN as a major.") CAR-INSTR  CARIITALIA ) ;;NO-QUEST-STRING-FOUND)
       ;;java match? (CARIITALIA "I am very interested in learning or teaching Italian or am considering ITALIAN as a major.") CAR-INSTR 
       (CARIGERMQ ( "I am very interested in learning or teaching German or am considering GERMAN as a major.") CAR-INSTR  CARIGERMA) ;;NO-QUEST-STRING-FOUND)
       ;;java match? (CARIGERMA "I am very interested in learning or teaching German or am considering GERMAN as a major.") CAR-INSTR 
       (CARIRUSSQ ( "I am very interested in learning or teaching Russian or am considering RUSSIAN as a major.") CAR-INSTR  CARIRUSSIA) ;;NO-QUEST-STRING-FOUND)
       ;;java match? (CARIRUSSIA "I am very interested in learning or teaching Russian or am considering RUSSIAN as a major.") CAR-INSTR 
       (CARIJAPNQ ("I am very interested in learning or teaching Japanese or am considering JAPANESE as a major.") CAR-INSTR  CARIJAPNESEQ)
       (CARICHINQ ( "I am very interested in learning or teaching Chinese or am considering CHINESE as a major.") CAR-INSTR  CARICHI ) ;;NO-QUEST-STRING-FOUND)
       ;;java match? (CARICHI "I am very interested in learning or teaching Chinese or am considering CHINESE as a major.") CAR-INSTR 
       (CARICLASQ ("I am very interested in ancient Greece or Rome and in learning those languages.  I am considering a major in CLASSICS.") CAR-INSTR  CARICLASCSQ)
       (CARISPANQ ("I am very interested in learning or teaching Spanish or am considering SPANISH  as a major.") CAR-INSTR  CARISPANISHQ)
       (CARIPORQ ("I am very interested in learning or teaching Portuguese or am considering PORTUGUESE as a major.") CAR-INSTR  CARIPORTUGUESEQ)
       )
     ( CARMED
       (CARIMDQ ("I am considering becoming a physician and have high ability in science. I may want to consider a major in a biological or chemical science with a minor in the other.") CAR-INSTR  CARIMDQ)
       (CARINURSQ ("I am considering nursing or a related career or a major in NURSING.

[Obtaining an RN (Registered Nurse) certificate usually only requires a 2-year degree, However, you may prefer a 4-year bachelor's degree in nursing to advance your knowledge or career.]") CAR-INSTR  CARINURSEQ)
       (CARIPTHEQ ("I like helping one-on-one and working with the body. I am considering becoming a physical therapist and would consider a major in a pre-physical therapy major such as Kinesiology.") CAR-INSTR  CARIPTHERAPYQ)
       (CARIHEALQ ("I am extremely interested in health science, health education, and/or health administration. I am considering a career in one of these fields or a degree in HEALTH SCIENCE or HEALTH CARE ADMINISTRATION.") CAR-INSTR  CARIHEALTHQ)
       (CARIKINEQ ("I am interested in studying the human body, its overall movement and function, physical therapy, athletic training, or physical education.  I might be interested in a major in Kinesiology or in a major leading to physical therapy.") CAR-INSTR  CARIKINESOLOGYQ)
       (CARICOM5Q ("I would be interested in a career helping people with their speech or helping persons with hearing impairments. I might want a major leading to a career in audiology or speech therapy such as COMMUNICATIVE DISORDERS.") CAR-INSTR  CARICOMDISORDERSQ)
       (CARMEDTEQ ("I might prefer to work in a specialized medically-related field working directly with patients such as a technician working with medical imaging, X-rays, dental assistance, nursing, or some other similar field that only requires one to two years at a technical school or community college.") CAR-INSTR  CARMEDTECHQ)
       )
     ( CARLAW
       (CARILAWQ ("I am considering becoming a lawyer in criminal law (defense, prosecution, etc.). I think that I might prefer to get an undergraduate degree or minor in CRIMINAL JUSTICE.") CAR-INSTR  CARILAWQ)
       (CARICRIMQ ("I am considering working in a law enforcement field, within probation, or withi
 another aspect of the legal system. I might be interested in a CRIMINAL JUSTICE major or minor.") CAR-INSTR  CARICRIMQ)
       (CARIMIL7Q ("I am considering joining one of the military services or am considering a career in the military. I might be interested in a MILITARY SCIENCE or related major or minor, or I might want to major i
 some other field and join the military later.") CAR-INSTR  CARIMILT2Q)
       )
     ( CARNATSCI
       (CARICHE3Q ("I enjoy chemistry and am considering a career requiring a lot of knowledge of chemistry (such as chemistry or medicine) or am considering CHEMISTRY, BIOCHEMISTRY, or a related field as a major or minor.") CAR-INSTR  CARICHEMQ)
       (CARIPHYSQ ("I enjoy physics and am considering a career requiring a lot of knowledge of physics or PHYSICS as a major or minor.") CAR-INSTR  CARIPHYSICSQ)
       (CARIGEOLQ ("I enjoy geology or study of the environment and am considering or GEOLOGY as a major or minor.") CAR-INSTR  CARIGEOLOGYQ)
       (CARIASTRQ ("I enjoy astronomy and math am considering a career requiring a lot of knowledge of astronomy or ASTRONOMY as a major or minor.") CAR-INSTR  CARIASTRONOMYQ)
       (CARIENVIQ ("I enjoy studying the environment, pollution, and/or ways to make the environment cleaner and safer. I might be interested in a major or minor in earth science or environmental studies.") CAR-INSTR  CARIENVIRSCIQ)
       )
     ( CARBESCI
       (CARIPSYCQ ("I am extremely interested in learning about myself and understanding people in depth. I am considering a career where working with people or am considering a major or minor in PSYCHOLOGY.") CAR-INSTR  CARIPSYCHQ)
       (CARISOCOQ ("I am extremely interested in learning about groups and society. I am considering a career where knowledge of groups and society would be very important, or a SOCIOLOGY major or minor.") CAR-INSTR  CARISOCOLOGYQ)
       (CARIHISTQ ("I am extremely interested in history, or am considering a major or minor in HISTORY.") CAR-INSTR  CARIHISTQ)
       (CARIPOLSQ ("I am extremely interested in law, politics, and/or studying political systems. I might like to work in public administration, in government or politics, or become an attorney. I am considering a major or minor in POLITICAL SCIENCE or an advanced degree in public administration.") CAR-INSTR  CARIPOLSCQ)
       (CARIECONQ ( "I am extremely interested in studying the economic behavior of people and/or the  economy as a whole. I am considering a major or minor in ECONOMICS.") CAR-INSTR  CARIECO) ;;NO-QUEST-STRING-FOUND)
       ;;java match? (CARIECO "I am extremely interested in studying the economic behavior of people and/or the  economy as a whole. I am considering a major or minor in ECONOMICS.") CAR-INSTR 
       (CARGEOGRQ ("I enjoy studying physical and cultural aspects of various countries or geographic regions. In addition I may enjoy studying topics like climates, mapping, urban life, etc. I might like to major or minor in GEOGRAPHY.") CAR-INSTR  CARGEOGRAPHYQ)
       (CARIAMERQ ("I am extremely interested in studying the United States and might like to major or minor in American Studies.") CAR-INSTR  CARIAMERSTQ)
       (CARIANTRQ ("Studying humans and various cultures (including ancient ones) in our many social, cultural, and biological aspects is fascinating to me.  I might enjoy majoring or minoring in ANTHROPOLOGY.") CAR-INSTR  CARIANTROQ)
       (CARIANTHQ ("I am very interested in studying cultures in general and cultures as a whole for both the past and present from a variety of viewpoints. I am considering ANTHROPOLOGY as a major or minor.") CAR-INSTR  CARIANTHROPOLOGYQ)
       (CARISPEEQ ("I am extremely interested in learning about groups and society. I am considering a career where knowledge of groups and society would be very important, or a SOCIOLOGY major or minor.") CAR-INSTR  CARISOCOLOGYQ)
       (CARLINGQ ("I like social science, research and theory, and find the study of speech and language fascinating. I might like a major or minor in LINGUISTICS.") CAR-INSTR  CARLINGQ)
       )
     ( CARETHNIC
       (CARIAISTQ ("I have a very high interest in American Indian culture and studies and might consider it as a major or minor.") CAR-INSTR  CARIAISTUDIESQ)
       (CARIBSTUQ ("I have a very high interest in American Indian culture and studies and might consider it as a major or minor.") CAR-INSTR  CARIAISTUDIESQ)
       (CARIMEXAQ ("I have a very high interest in Mexican-American culture and studies.") CAR-INSTR  CARIMEXAMERSTUDIESQ)
       (CARIASAMQ ("I have a very high interest in Asian-American culture and studies.") CAR-INSTR  CARIASAMQ)
       (CARIAMSTQ ("I have a very high interest in studying the American culture as a whole from a variety of viewpoints and disciplines. I might consider AMERICAN STUDIES as a major or minor.") CAR-INSTR  CARIAMSTQ)
       (CARIWSTUQ ("I am very interested in studying women--their history, experience, and sex-roles--from a variety of viewpoints. I might be interested in WOMEN'S STUDIES as a major or minor.") CAR-INSTR  CARIWSTUDIESQ)
       )
     ( CARWRITE
       (CARIENGLQ ("I highly enjoy writing, English literature, and/or possibly teaching English, and am considering ENGLISH or as a major or minor.") CAR-INSTR  CARIENGLITQ)
       (CARIJOURQ ("I am considering working for a newspaper or other news media as a journalist or photojournalist; OR I might want to teach journalism; OR  I might want to work in public relations. I am considering JOURNALISM as a major or minor.") CAR-INSTR  CARIJOURNALISMQ)
       )  
     (USER-FEEDBACK  
      (USERRATE-INSTR ("Your Overall Rating of SHAQ" "Degree/Accuracy this describes you."))
      (USERRATEQ ("How interesting and beneficial overall would you rate your experience taking SHAQ?

   ADDITIONAL COMMENTS:  
   ==> WE WELCOME YOUR COMMENTS VIA EMAIL:
    If you have suggestions for correcting errors or  improving SHAQ in any way,
    Email to Dr. Tom Stevens at:  tstevens@csulb.edu" )  USERRATE-INSTR USERRATEQ)
      )
     )
  "FORMAT:  SINGLE-SELECTION Qs: XXX-INSTR (1st item goes in title position of frame, 2nd goes in instr part of frame) qvarQ is the actual question going in the lower box.  
 All SHAQ questions with NEW-SPSS variable symbols for names, converted by (convert-java-to-spss-quest-names) function. THEN MANUALLY EDITED to replace bio variables with new names."
  )

;;CONVERTED BY  (convert-shaq-question-files *all-shaq2000-question-files  :print-to-sum-files-p t  :print-to-match-file-p nil ) 

#|
;;Format within each sublist is:
   (STRING-VARS
    Filename-string
;; then for each question
    Question symbol (note: some don't have a Q or may miss part of ending??)
    Question String
    ;;REST OF FILE QUESTIONS
    )
|#

#| ------------------------------ QUESTIONS WITH JAVA NAMES -------------
;; *ALL-SHAQ-QUESTIONS
;;
;;ddd
(defparameter *all-shaq-questions
  ;;All SHAQ questions converted from original java files by  (convert-shaq-question-files *all-shaq2000-question-files  :print-to-sum-files-p t  :print-to-match-file-p nil )
  '(
    (STRING-VARS
     "RealPeopleSex.java"
     (RPESATISFIEDRELQ "Overall, I am extremely satisfied with my relationship with my partner.")
     (RPEFU "My partner and I have have fun together:")
     (RPEARGUEQ "My partner and I have arguments for at least several minutes:")
     )
    (STRING-VARS
     "RealPeople.java"
     (RPECOMMITQ "Degree of commitment to an intimate(romantic) relationship (lasting at least 3 months)")
     (RPEHAPFRIENDSQ "Almost all of my good friends are very successful and happy in almost every area of their lives including school and interpersonal relationships.")
     (RPEHMARRQ "I have (or have had) a very happy marital -- or marital-like relationship with someone for an extended period of time.")
     (RPENETWQ "I have developed an extensive, close network of friends and career-related persons with whom I share support and information.")
     (RPECLFR "In my life I have had a number of extremely close friends with whom I could discuss my innermost secrets, weaknesses, and problems.")
     (RPECLFAMQ "I feel extremely close with the members of the family I grew up in.")
     (RPENUMFRIENDSQ "Approximate number of friends in general with whom you interact socially -- outside of work or school settings--at least once a month.")
     (RPENUMCLOSEFRIENDSQ "Approximate number of EXTREMELY CLOSE friendships with which you are VERY SATISFIED.")

     )
    (STRING-VARS
     "RealHealth.java"
     (RHLSMOKE.HELPINFO "Smoking leads to poor health and early death.  It may also used to avoid coping with deeper problems." "Stop smoking programs can be very effective.")
     (RHLFREQILLNESSQ "How often did you get sick the past 3 years?")
     (RHLPHYSICALCONDITIO "How would you describe your physical conditioning?")
     (RHLWEIGHTQ "How would you describe your weight?")
     (RHLALCOHOLQ "How many drinks of alcohol do you average?")
     (RHLSMOKEQ "How often do you use cigarettes or other tobacco products?")
     (RHLDRUGSQ "How many often do you take illegal drugs on average?")

     )
    (STRING-VARS
     "RealDepression.java"
     (RDEPMAJSYMPTOMSQ "How many times for 2 or more weeks at a time, have you had 5 (or more) of the following symptoms:
" "  * feel very depressed
" "  * have markedly less interest or pleasure in almost all daily activities
" "  * diminished ability to concentrate or think
" "  * feel worthless and/or very guilty
" "  * not be able to sleep or sleep much more than usual
" "  * have very low energy
" "  * significant weight loss or gain (without effort)
" "  * move much more slowly (motor retardation) or quickly (agitation) than usual
" "  * have recurring thoughts of death or suicidal thoughts")
     (RDEPMEDSQ "Length of time that you have been prescribed medication for depression.")
     (RDEPTHERAPYQ "Amount of counseling or psychotherapy for depression.")
     (RDEPFEELINGQ "I often feel sad, apathetic, listless, or depressed.")
     (RDEPTHOUGHTQ "I often feel worthless, very guilty, or think very negative thoughts about my future, the world, death, or myself.")
     (RDEPDYSSYMPTOMSQ "If you have felt depressed and had 2 or more of the following symptoms regularly, " "  how long have you had them?
" "  * feel sad, unhappy, or depressed most of the day for most days
" "  * feel low energy, tiredness most of the time
" "  * have poor concentration and trouble making decisions
" "  * feel hopeless or doomed
" "  * have feelings of low self-esteem
" "  * have poor appetite or overeat
" "  * sleep too little or too much most of the time.")

     )
    (STRING-VARS
     "RealAnxiety.java"
     (RANXPSTDQ "Do you suffer from post-traumatic stress symptoms?

" "[Were you ever exposed to some life-threatening, abusive, or shocking traumatic event(s) " "where you felt extremely frightened and helpless AND still have frequent " "episodes of flashbacks, numbness, detachment, distress, avoidance of similar " "situations, or other symptoms that significantly interfere in your life?]")
     (RANXALLTIMEQ "Do you worry or feel nervous or anxious almost all of the time?")
     (RANXPERFORMQ "Do you feel excessively nervous or anxious when speaking or performing in front of others.")
     (RANXSOCIALQ "Do you feel very nervous or anxious almost any time you are with other people?")
     (RANXOCDQ "How many times have you had a lasting problem with obsessions or compulsions?

" "[Obsessions definition: recurring, uncontrollable thoughts or images that you cannot get out of your mind, and cause distress. Compulsions definition: repeating outward or mental acts (e.g. washing, ordering, checking, praying, counting, repeating words) because one feels compelled to.
" "Both obsessions and compulsions are usually not realistically connected to any immediate outside problem or are excessive.]")
     (RANXPHOBIAQ "How many genuine phobias do you think you have?

" "[Phobia definition: repeated intense, excessive, and unreasonable fear or anxiety elicited by a specific object, animal, or situation. Or, do you have a fear of almost all social contact?]")
     (RANXPANICQ "About how many genuine panic attacks have you had during the past 5 years?

" " [Panic attack definition: four or more of the following symptoms together for 10 minutes or more:
" "  pounding heart; trembling; trouble breathing; chest pain; feeling dizzy; " "  feeling detached or numb; plus fears of dying, going crazy, or losing control]")
     (RANXMEDSQ "Length of time that you have been prescribed medication for anxiety, obsessions/compulsions, phobias, or panic disorder.")
     (RANXTHERAPYQ "Amount of counseling or psychotherapy for excessive stress, anxiety, obsessions/compulsions, phobias, or panic disorder.")

     )
    (STRING-VARS
     "RealAnger.java"
     (RANGFEELINGQ "How often do you get angry and lose your temper?")
     (RANGYELLQ "How often do you yell at someone or call someone hurtful names?")
     (RANGDOMINATEQ "How often do you get someone to do what you want by criticizing them, out-talking them, " "getting angry, or threatening them.")
     (RANGTHOUGHTSQ "How often do you think about getting even with someone who has hurt you?")
     (RANGDESTROYQ "How often do you damage objects or property, hurt animals or people purposely, or break the law?")

     )
    (STRING-VARS
     "RealAchievement.java"

     )
    (STRING-VARS
     "iWorldviewFears.java"
     (WOVHAPPYCAREERQ "INSTRUCTIONS: For the next set of questions, please respond according you how much fear or anxiety you have about each item.

" "Fear of not getting a job or career you will be happy with.")
     (WOVSUCCESSQ "Fear of not obtaining the academic or career success you want.")
     (WOVPOORQ "Fear of not having enough income or money.")
     (WOVILLQ "Fear of having a serious illness.")
     (WOVDEATHQ "Fear of death.")
     (WOVALONEQ "Fear of being alone.")
     (WOVNOLOVEQ "Fear of not ever having a good marriage and/or family life.")
     (WOVLIKEDQ "Fear of not having close enough friends.")
     (WOVPERSO "Fear of not becoming the kind of person you want to be.")
     (WOVPROBLEMQ "Fear of never overcoming some personal, psychological, or other type of problem.")
     (WOVDISCOVEREDQ "Fear that something about you will be discovered, punished, or made public.")
     (WOVOVERCOMEFEARQ "Degree of belief that even if your worst fear(s) happened, you could learn how to be happy.")

     )
    (STRING-VARS
     "iWorldview.java"
     (WOVPROGRESSQ "The world will gradually improve in most important respects (materially, socially, environmentally, spiritually, etc.).")
     (WOVGOODFORCESQ "The world is controlled by forces beneficial to humans (and me).")
     (WOVMYLIFEQ "My life will generally improve.")
     (WOVLIFENOTFAIRQ "Life has been extremely unfair to me.")
     (WOVENTITLEDQ "I am entitled to the basic necessities of life such as good health care, good income, people caring for me, etc.")
     (WOVINJUREDQ "Someone has injured me so much that it has ruined my life.")
     (WOVABUNDANCEQ "I have all I need to be happy.")
     (WOVGRATEFULQ "I am extremely grateful for having so much.")
     (WOVPOSTHOUGHTSPERCENTQ "Percent of the time you have positive thoughts VERSUS negative thoughts.")

     )
    (STRING-VARS
     "iTopBV2.java"
     (TBV2RELGOODQ "There is no 'absolute' right and wrong or good or bad--it depends upon factors like your point of view, the situation, or one's cultural background.")
     (TBV2BADTOSI "Bad things only happen to people because of something bad they have done.")
     (TBV2NOTRESPONSIBLEQ "If a person has a bad environement and/or genetics, they aren't really responsible for what they do.")
     (TBV2GROUPMEANINGQ "One group in my life (such as my family, nation, culture, or religion) is so " "important that I would be almost nothing without them. Life wouldn't be worth living.")
     (TBV2SELFMEANINGQ "Life has no meaning in itself, any meaning must be supplied by the individual.")
     (TBV2GOODWORKSQ "People can only be completely forgiven and guilt-free if they are good enough (do enough of the right things).")
     (TBV2GOODATTITUDEQ "Goodness (or being forgiven) depends much more on attitude than good deeds.")
     (TBV2ALLGOODQ "There is a lot of good in all people no matter what they believe or have done.")
     (TBV2REASO "If society would base everything upon reason and science, we would have nothing to worry about.")
     (TBV2ASTROLOGYQ "I believe in phenomena like communicating with spirits of the deceased, seeing into the future, and astrology.")
     (TBV2IDHUMANITYQ "I identify with all humanity more than any single group.")
     (TBV2LIFEAFDEATHQ "I believe in some form of life after death.")
     (TBV2MOVEMENTQ "Being part of a progressive movement is more important to me than my family or any other group.")
     (TBV2COREBELIEFSQ "Despite some doubts, I have a set of strong core beliefs [about God, Nature, Humanity, Right and Wrong, Myself etc.] " "that I use daily to guide me in all aspects of life.")

     )
    (STRING-VARS
     "iTopBV.java"
     (TBVGRATITUDEQ "I am grateful for the gift of life. I was given the gift of life and the opportunity to create a happy life for myself. I did not earn or deserve life or this opportunity--so I will not complain about not having what others do or not getting what I want or need.")
     (TBVRESPONSIBLEQ "I am the person most responsible for my own happiness and for all my emotions, and I can learn to control them.")
     (TBVBALANCEFUTUREQ "I try to properly balance present with future happiness and balance my own with others' happiness-- a key to inner harmony.")
     (TBVHAPCALCQ "For every decision I make--especially big ones--I attempt to estimate which alternative will lead to the greatest happiness and choose that alternative.")
     (THVSELFACCEPTQ "There are one or more aspects (or parts) of myself that I have a hard time accepting or do not like.")
     (THVUNCONDCAREQ "I value all people unconditionally just because they are human. Attributes such as background, ethnicity, social group, income, " "accomplishments, and even their personality or morality aren't relevant to their basic value as humans.")
     (THVSELFWORTHQ "I could love myself and value my own happiness unconditionally no matter what mistakes or bad things I may do.")
     (TBVOTHERSFIRSTQ "I should always put other people's needs before my own.")
     (TBVLIKEDBYALLQ "I should be loved or liked by everyone I meet.")
     (TBVWEAKQ "I am weak and dependent on strong people for my happiness.")
     (TBVBESTQ "I must be the best at everything I do.")
     (TBVENTITLEDQ "I am entitled to a good life, and people I care for should try to help meet my needs.")
     (TBVRULESPUNISHQ "We must run our lives by rules, and people who break those rules must be severely punished or we will have chaos.")
     (TBVWINNERSQ "There are winners and losers. If you are not strong and take advantage of others before they take advantage of you and you will be a loser.")
     (TBVEMPATHYFORGIVEQ "I seek to have understanding, empathy, acceptance, and forgiveness of myself and others--no matter what someone has done to harm me.")

     )
    (STRING-VARS
     "iSelf2.java"
     (SLFINNERCONFLICTQ "I feel extremely peaceful with very little internal conflict most of the time.")
     (SLFINVOLVEDANDMEANINGQ "I feel extremely involved (and find extremely meaningful) almost all of my activities (versus uninvolved/bored)")
     (SLFPROBLEMCENTERQ "I often get so involved in what I am doing that I forget time and almost nothing can distract me.")
     (SLFFRESHNESSQ "My life seems to be constantly filled with fascinating new experiences and challenges.")
     (SLFPEAKEXPERQ "I often feel extremely happy and at one with the world.")
     (SLFUNHOSTILEHUMORQ "I have a good sense of humor that never makes fun of other people.")
     (SLFSELFCAREQ "I take good care of myself in every area of my life--career, material, interpersonal, emotional, health, spiritual, recreation, etc.")
     (SLFACCEPTSELFQ "I accept and like everything about myself. Even though I am not perfect and make mistakes, I am not ashamed of any aspect of myself.")
     (SLFTHICKSKI "People can say anything about me or call me any name and I can still feel OK about myself. Criticism has little negative effect on me")
     (SLFCRITICISMRESPQ "If someone criticizes me, I almost always listen calmly, carefully weigh what they say, respond kindly, and work on changing myself if needed")
     (SLFBODYQ "I am extremely happy with my body and my appearance")

     )
    (STRING-VARS
     "iSelf.java"
     (SLFINNERCONFLICTQ "I feel extremely peaceful with very little internal conflict most of the time.")
     (SLFINVOLVEDANDMEANINGQ "I feel extremely involved (and find extremely meaningful) almost all of my activities (versus uninvolved/bored)")
     (SLFPROBLEMCENTERQ "I often get so involved in what I am doing that I forget time and almost nothing can distract me.")
     (SLFFRESHNESSQ "My life seems to be constantly filled with fascinating new experiences and challenges.")
     (SLFPEAKEXPERQ "I often feel extremely happy and at one with the world.")
     (SLFUNHOSTILEHUMORQ "I have a good sense of humor that never makes fun of other people.")
     (SLFSELFCAREQ "I take good care of myself in every area of my life--career, material, interpersonal, emotional, health, spiritual, recreation, etc.")
     (SLFACCEPTSELFQ "I accept and like everything about myself. Even though I am not perfect and make mistakes, I am not ashamed of any aspect of myself.")
     (SLFTHICKSKI "People can say anything about me or call me any name and I can still feel OK about myself. Criticism has little negative effect on me")
     (SLFCRITICISMRESPQ "If someone criticizes me, I almost always listen calmly, carefully weigh what they say, respond kindly, and work on changing myself if needed")
     (SLFBODYQ "I am extremely happy with my body and my appearance")
     ("For each of the following questions,
" "Rate how much confidence you have in each type of knowledge and skill area.

")
     (SLFLEARNSKILLQ "Learning and study skills")
     (SLFCRITTHINKQ "Critical thinking and logic--ability to examine statements critically and think logically")
     (SLFRESEARCHQ)
     (SLFANALYSISQ "Analytical thinking--ability to conceptually break wholes into component parts")
     (SLFSYNTHESISQ "Synthesis--ability to put confusing pieces together into meaningful wholes")
     (SLFCREATIVEQ "Creative thinking and ability to produce creative ideas, projects, activities, etc.")
     (SLFCOMPUTERQ)
     (SLFBIOSCIQ)
     (SLFNATSCIQ "Natural Science \\(physics, chemistry, etc.)")
     (SLFLIBARTSQ "Liberal Arts \\(literature, history, English, languages, etc.)")
     (SLFSOCSCIQ "Behavioral and Social Sciences \\(psychology, sociology, political science, etc.)")
     (SLFPHILRELQ "Philosophy and/or Religio
")
     (SLFPERFARTQ "Performing Arts \\(music, dance, theatre arts, etc.)")
     (SLFFINEARTQ "Fine Arts \\(art, design, etc.)")
     (SLFBUSANDMANAGEQ)
     (SLFHEALTHMEDQ)
     (SLFENGINQ "Engineering or Technical")
     (SLFEDUCHELPQ "Education, Counseling, or Helping-Related")
     (SLFIQQ "Overall intelligence \\(IQ)")
     (SLFDECMAKINGQ "Life and career decision-making and planning")
     (SLFTIMEMANAGEMENTQ)
     (SLFCOPEQ "Emotional coping skills--ability to prevent and overcome negative emotions effectively")
     (SLFSELFDEVQ "Self-development--ability to change your own behavior, habits, and personality")
     (SLFSELFMOTIVQ "Self-motivation--ability to motivate yourself to do unpleasant tasks even under adverse conditions")
     (SLFACHANDWORKQ "Task or achievement motivation and work habits--highly focused and productive work habits.")
     (SLFMANAGEMONEYQ)
     (SLFHEALTHQ "Health-management--detailed knowledge about health and longevity factors and habit reflecting that knowledge")
     (SLFMEETPEOPLEQ "Meeting people and talking to strangers")
     (SLFLISTENINGQ "Empathetic listening skills--ability and practice of understanding inner meaning of what others say")
     (SLFSELFDISCLOSEQ "Self-disclosure--ability and practice of sharing openly innermost feelings and intimate information with close friends and family")
     (SLFCONFLICTRESOLQ "Conflict resolution skills--ability to calmly and effectively resolve interpersonal conflict situations")
     (SLFPERSUASIONQ "Persuasion skills--ability to influence others")
     (SLFMANAGESKILLQ "Management and leadership skills")
     (SLFHELPSKILLQ "Helping and teaching skills")
     (SLFSPEAKSKILLQ)
     (SLFJOBSEARCHQ "Job search and interviewing skills")
     (SLFOPTIMISMQ "Very optimistic, positive, highly motivated person overall.")
     (SLFFRIENDLYQ "Very caring, friendly, and outgoing person overall.")
     (SLFINDEPENDENTQ "Very strong, independent, self-disciplined person overall.")
     (SLFADAPTQ "Very adaptable, flexible, and resourceful--ability to rapidly adapt to and be successful in almost any situation.")
     (SLFHAPPYIQQ "\"Happiness IQ\"--knowledge and ability of how to make yourself happy in any possible situation and overall.")

     )
    (STRING-VARS
     "inWrite.java"
     (CARIENGLITQ "I highly enjoy writing, English literature, and/or possibly teaching English, and am considering ENGLISH or as a major or minor.")
     (CARIJOURNALISMQ "I am considering working for a newspaper or other news media as a journalist or photojournalist; OR I might want to teach journalism; OR  I might want to work in public relations. I am considering JOURNALISM as a major or minor.")
     (CARFILMELECMEDIAQ "I really enjoy creating and communicating and am considering a career in radio, video, film production; or am considering a major or minor in the FILM and ELECTRONIC MEDIA.")

     )
    (STRING-VARS
     "inWoEthnicSt.java"
     (CARIAISTUDIESQ "I have a very high interest in American Indian culture and studies and might consider it as a major or minor.")
     (CARIBSTUDIESQ "I have a very high interest in African-American culture and studies.")
     (CARIMEXAMERSTUDIESQ "I have a very high interest in Mexican-American culture and studies.")
     (CARIASAMQ "I have a very high interest in Asian-American culture and studies.")
     (CARIAMSTQ "I have a very high interest in studying the American culture as a whole from a variety of viewpoints and disciplines. I might consider AMERICAN STUDIES as a major or minor.")
     (CARIWSTUDIESQ "I am very interested in studying women--their history, experience, and sex-roles--from a variety of viewpoints. I might be interested in WOMEN'S STUDIES as a major or minor.")
     (CARIANTHROPOLOGYQ "I am very interested in studying cultures in general and cultures as a whole for both the past and present from a variety of viewpoints. I am considering ANTHROPOLOGY as a major or minor.")

     )
    (STRING-VARS
     "inSocSci.java"
     (CARIPSYCHQ "I am extremely interested in learning about myself and understanding people in depth. I am considering a career where working with people or am considering a major or minor in PSYCHOLOGY.")
     (CARISOCOLOGYQ "I am extremely interested in learning about groups and society. I am considering a career where knowledge of groups and society would be very important, or a SOCIOLOGY major or minor.")
     (CARIHISTQ "I am extremely interested in history, or am considering a major or minor in HISTORY.")
     (CARIPOLSCQ "I am extremely interested in law, politics, and/or studying political systems. I might " "like to work in public administration, in government or politics, or become an attorney. " "I am considering a major or minor in POLITICAL SCIENCE or an advanced degree in public administration.")
     (CARIECO "I am extremely interested in studying the economic behavior of people and/or the  economy as a whole. I am considering a major or minor in ECONOMICS.")
     (CARIAMERSTQ "I am extremely interested in studying the United States and might like to major or minor in American Studies.")
     (CARIANTROQ "Studying humans and various cultures (including ancient ones) in our many social, cultural, and biological aspects " "is fascinating to me.  I might enjoy majoring or minoring in ANTHROPOLOGY.")
     (CARISPEECHQ "Studying oral human communication in its various aspects (including persuasion, negotiation, public speaking, " "media, or business communication).  I might be interested in a Speech or Communication major or minor.")
     (CARGEOGRAPHYQ "I enjoy studying physical and cultural aspects of various countries or geographic regions. " "In addition I may enjoy studying topics like climates, mapping, urban life, etc. I might " "like to major or minor in GEOGRAPHY.")
     (CARLINGQ "I like social science, research and theory, and find the study of speech and language fascinating. " "I might like a major or minor in LINGUISTICS.")

     )
    (STRING-VARS
     "inNatSci.java"
     (CARICHEMQ "I enjoy chemistry and am considering a career requiring a lot of knowledge of chemistry (such as chemistry or medicine) or am considering CHEMISTRY, BIOCHEMISTRY, or a related field as a major or minor.")
     (CARIPHYSICSQ "I enjoy physics and am considering a career requiring a lot of knowledge of physics or PHYSICS as a major or minor.")
     (CARIGEOLOGYQ "I enjoy geology or study of the environment and am considering or GEOLOGY as a major or minor.")
     (CARIASTRONOMYQ "I enjoy astronomy and math am considering a career requiring a lot of knowledge of astronomy or ASTRONOMY as a major or minor.")
     (CARIENVIRSCIQ "I enjoy studying the environment, pollution, and/or ways to make the environment cleaner and safer. " "I might be interested in a major or minor in earth science or environmental studies.")

     )
    (STRING-VARS
     "inMiltCrim.java"
     (CARILAWQ "I am considering becoming a lawyer in criminal law (defense, prosecution, etc.). " "I think that I might prefer to get an undergraduate degree or minor in CRIMINAL JUSTICE.")
     (CARICRIMQ "I am considering working in a law enforcement field, within probation, or withi
 " "another aspect of the legal system. I might be interested in a CRIMINAL JUSTICE major or minor.")
     (CARIMILT2Q "I am considering joining one of the military services or am considering a career in the military. " "I might be interested in a MILITARY SCIENCE or related major or minor, or I might want to major i
 " "some other field and join the military later.")

     )
    (STRING-VARS
     "inMed.java"
     (CARIMDQ "I am considering becoming a physician and have high ability in science. " "I may want to consider a major in a biological or chemical science with a minor in the other.")
     (CARINURSEQ "I am considering nursing or a related career or a major in NURSING.

" "[Obtaining an RN (Registered Nurse) certificate usually only requires a 2-year degree, " "However, you may prefer a 4-year bachelor's degree in nursing to advance your knowledge or career.]")
     (CARIPTHERAPYQ "I like helping one-on-one and working with the body. I am considering becoming a physical therapist and " "would consider a major in a pre-physical therapy major such as Kinesiology.")
     (CARIHEALTHQ "I am extremely interested in health science, health education, and/or health administration. I am considering a career in one of these fields or a degree in HEALTH SCIENCE or HEALTH CARE ADMINISTRATION.")
     (CARIKINESOLOGYQ "I am interested in studying the human body, its overall movement and function, physical therapy, " "athletic training, or physical education.  I might be interested in a major in Kinesiology or i
 " "a major leading to physical therapy.")
     (CARICOMDISORDERSQ "I would be interested in a career helping people with their speech or helping persons with hearing impairments. " "I might want a major leading to a career in audiology or speech therapy such as COMMUNICATIVE DISORDERS.")
     (CARMEDTECHQ "I might prefer to work in a specialized medically-related field working directly with patients " "such as a technician working with medical imaging, X-rays, dental assistance, nursing, or " "some other similar field that only requires one to two years at a technical school or community college.")

     )
    (STRING-VARS
     "inLang.java"
     (CARIFRENCHQ "I am very interested in learning or teaching French or considering FRENCH as a major.")
     (CARIITALIA "I am very interested in learning or teaching Italian or am considering ITALIAN as a major.")
     (CARIGERMA "I am very interested in learning or teaching German or am considering GERMAN as a major.")
     (CARIRUSSIA "I am very interested in learning or teaching Russian or am considering RUSSIAN as a major.")
     (CARIJAPNESEQ "I am very interested in learning or teaching Japanese or am considering JAPANESE as a major.")
     (CARICHI "I am very interested in learning or teaching Chinese or am considering CHINESE as a major.")
     (CARICLASCSQ "I am very interested in ancient Greece or Rome and in learning those languages.  I am considering a major in CLASSICS.")
     (CARISPANISHQ "I am very interested in learning or teaching Spanish or am considering SPANISH  as a major.")
     (CARIPORTUGUESEQ "I am very interested in learning or teaching Portuguese or am considering PORTUGUESE as a major.")

     )
    (STRING-VARS
     "inHelp.java"
     (CARITEACHQ "I enjoy teaching groups of people and am considering a career where teaching might be an important part of my job.")
     (CARICOUNSELINGQ "I enjoy helping people one-on-one and am considering a career in a counseling-related field " "such as becoming a psychologist or psychiatrist, a school counselor or psychologist, or " "a social worker.  I know that these all require graduate degrees, and some require " "psychology as a major. I am considering a major in PSYCHOLOGY (which will also give me the " "most flexibility in choosing what type of counseling I want to pursue later.)")
     (CARIEDUCSETTINGQ "I would strongly like to work in an educational setting such as a public school or university.")
     (CARIHADULTQ "I would especially enjoy a career helping ADULTS.")
     (CARIHCHILDQ "I would especially enjoy a career helping CHILDREN or TEENAGERS.")
     (CARITVOCATIONALQ "I would enjoy teaching vocational or shop courses. I am considering vocational education as a major.")
     (CARICOMDISORDERSQ "I would be interested in a career helping people with their speech or helping persons with hearing impairments. " "I might want a major leading to a career in audiology or speech therapy such as communicative disorders.")
     (CARSOCWORKQ "I know that I want to be a social worker and work with public agencies helping people " "with various types of disabilities or who are in need of help. I know that most jobs are with the " "government and think I would enjoy working as part of a larger organization dedicated to helping people " "even though there may be a lot of paperwork, etc. I am considering a major in psychology, sociology, " "social work, or a related field.")
     (CARK12TEACHQ "I think that I might like to teach in public or private schools in a grade " "level between Kindergarten and College (K-12). I am interested in a major " "that leads to a teaching credential.

" "[In California getting a teaching credential usually means getting a special degree in Liberal " "Studies for elementary teaching " "or obtaining one of a select number of majors for teaching high school. Go to " "your local College or School of Education for more information.]")
     (CARMINISTERQ "I am considering a career in church work or as a minister, priest, rabbi, or " "other religious leader. Or, I am interested in learning more about or teaching about religion. " "I am considering a degree in RELIGION, RELIGIOUS STUDIES, or PHILOSOPHY. Or, I " "am considering a different kind of major such as psychology or sociology that could help me " "be more effective helping people.")

     )
    (STRING-VARS
     "inFineArt.java"
     (CARIMUSICQ "I love music and am considering a music-related career or a major or minor in MUSIC.")
     (CARIARTQ "I love art and am considering an art-related or design-related career or am considering a major in ART.")
     (CARIDRAMAQ "I love to act and be in plays and am considering professional acting as a career or considering a major or minor in THEATER ARTS.")
     (CARIDANCQ "I love to dance and am considering a career in which dance might play an important part or a major or minor in DANCE.")
     (CARIPHOTJOURNALISMQ "I have an interest in becoming a photojournalist and would consider a major or minor in PHOTOGRAPHY or PHOTOJOURNALISM.")
     (CARINDDESIG "I love to draw and design functional things. I would consider a major i
 " "DESIGN or INDUSTRIAL DESIGN.")
     (CARINTERIORDESIG "I love to decorate and would like to design interiors for homes or businesses. " "I would consider a major in INTERIOR DESIGN.")

     )
    (STRING-VARS
     "inEngr.java"
     (CARIEENGQ "I enjoy complex math and might enjoy designing complex electronic systems such as computers.  I am considering a career in electrical or electronic engineering or its option in biomedical engineering.")
     (CARIMEQ "I enjoy design and am interested in the workings of complex mechanical  things. I am considering a career in mechanical engineering or in one of its options of industrial-management engineering, materials engineering, or ocean engineering.")
     (CARICHEMENGQ "I enjoy chemistry and also designing things. I am considering a career in chemical engineering.")
     (CARICIVENGQ "I think I would enjoy designing things like civil works projects, buildings, or other large projects. I am considering civil engineering as a career.")
     (CARIAEROENGQ "I am very interested in aerospace-related engineering and am considering a career as an aerospace engineer.")
     (CARIEITECHQ "I am interested in an engineering-related field, but am not as interested in complex math or designing systems as I am in technical aspects of one or more of the following--construction management, electronics, manufacturing, or quality assurance. " "I might be interested in an ENGINEERING TECHNOLOGY major.")
     (CARICOMPSCIENGRQ "I love math, programming, and computer software design, but am less interested in the electronic circuits and hardware of computers.  I am considering (engineering) computer science as a major.")
     (CARIBCOMPUTERQ "I really enjoy working with computers. But I would prefer a business environment more than an engineering, science, or mathematical environment. " "I might consider getting a major in business with an emphasis in computers or INFORMATION SYSTEMS.")

     )
    (STRING-VARS
     "inCareer.java"
     (CAR1CARGOALQ "I feel extremely satisfied about my career decision.  I have a clear career goal and plan for reaching that goal. My plan has a very high probability for success.")
     (CAR1CARPRIORITYQ "I have spent a great deal of time going through the process of reaching a career decision doing things such as reading about careers, interviewing others, taking interest tests, thinking about what I want, and getting related work experience.")
     (CAR1INATSCIQ "I really enjoy natural science classes like chemistry, physics, or geology and am considering a career involving some aspect of natural science.")
     (CARIBIOHEALTHSCIQ "I really enjoy subjects like biology and am considering a career which might involve a lot of knowledge of biological science. " "I am considering a major or minor in BIOLOGY, MICROBIOLOGY, or another biological science.")
     (CARISOCSCIQ "I really enjoy learning about myself or other people. I enjoy classes like psychology, sociology, anthropology, economics, or geography. I am considering a career where understanding people, groups, economics, OR cultures may be important.")
     (CARIHELPQ "I really enjoy helping people and am considering a career in a 'helping profession' such as counseling, teaching, or social work.")
     (CARIMATHQ "I love math, am very good at it, and am considering a career in which math might play an important part.")
     (CARIMEDQ "I am considering a career in a medical or health-related field. " "Or I might like a career related to physical education, physical therapy, pharmacy, audiology, speech therapy or some other field which " "requires a lot of knowledge about biology or the human body.")
     (CARIWRITEQ "I love to write and am considering a career in which writing would be very important. OR I have an interest in journalism or radio, TV, or film production.")
     (CARIFNARTQ "I have a serious interest in an art-related field such as art, design, music, dance, photography, or theatre arts.")
     (CARIETHNICQ "I am extremely interested in studying about an ethnic group, about women, or about ancient or current cultures.")
     (CARILEAR "I love learning through reading, taking classes, or any other way I can. " "I might eventually want to get a masters degree or doctorate.")
     (CARIEXPERTQ "I would love to specialize and be an expert at something.  I tend to get passionate interests about one interest area at a time for months or  years. I am considering a career where I might " "become an expert at something that requires intense study or an advanced degree.")
     (CARIGENERALQ "I enjoy a large variety of activities. I would like a career where I have a little knowledge about many things. " "I might rather have a more general degree like a general business, social science, or liberal arts degree that " "can give me a wide variety of career options.")
     (CARINOINTERESTQ "I have never been very interested in school, any particular subject in school, or any particular career that I know of. I feel very confused about what major or career I want.")
     (CARILITQ "I enjoy reading and literature of many types. I am considering a field like history or literature.")
     (CARIRECPEQ "I really enjoy sports, recreational activiites, and helping others enjoy  them. I am considering a career in a physical education, sports, or recreation-related field.")
     (CARIPOLITICSQ "I enjoy learning about law, politics, or government and am considering a career where these subjects may be important.")
     (CARIMILTARYLAWENFORCEQ "Law enforcement, the legal profession, probation, or the military are careers I have an interest in.")
     (CARIMANUALACTSQ "I really enjoy working with machines, electronics, computers, aircraft, medical equipment, construction, or other activities " "where I can work with my hands and see something I made or repaired. I am less interested in designing " "these or working behind a desk. I might prefer a technical career which requires only a one- or two-year " "technical degree at a community college or a technical school.")
     (CARILANGUAGEQ "I really enjoy other countries and learning foreign languages. I am considering majoring or minoring in a foreign language.")
     (CARIPHILANDRELQ "I really enjoy philosophy and/or the study of religion. I may want PHILOSOPHY or RELIGION as a major or a minor for my career and/or personal benefit.")
     (CARIBUSINESSQ "I expect to work in a business setting or am considering a major or minor in a business-related career.")
     (CARIENGINEERQ "I am interested in science and/or technical things, math, computers, medical equipment, machines, airplanes, electronics, buildings or public works projects. I might like to build or design things or work with computers. " "I am considering a career in engineering, engineering technology, computers, architecture, or a related field.")
     (CARIFAMCONSCIQ "I have a very high interest in one or more of the following--child development, consumer affairs, fashion merchandising, textiles and clothing, nutrition, food industries, gerontology, or teaching home economics or family and consumer affairs. " "I might be interested in one of these areas as a major or minor in a FAMILY AND CONSUMER SCIENCES area.")
     (CARIWOMANETHNICQ "I might be interested in majoring or minoring in Women's Studies or studies of a special ethnic group such as Asian or Asian-American Studies, Mexican-American Studies, Black Studies, or Native American Studies.")
     (CARICOMPUTERQ "I enjoy working on a computer, learning about software and hardware, and think that I might enjoy " "a job in a computer-related field where I spend a lot of time designing software or hardware, or " "working with computers, computer networks, the Internet, or managing others who work with computers.")
     (CARINTERDISCSTQ "I might like to have a major that combined two or three other major areas of my choosing. " "I might like to inquire about designing such a major that fits my particular interests. " "[Most universities offer such majors under titles like 'Special Major', 'Interdisciplinary Studies', or 'Liberal Arts.']")

     )
    (STRING-VARS
     "inBus.java"
     (CARIBMARKETINGQ "I enjoy selling or planning how to market things and am considering a career in sales, marketing, market research, or some other form of merchandising. I am considering MARKETING as a major or minor.")
     (CARIBMANAGEMENTQ "I think I would like being an executive or manager in charge of other people and responsible for a work-group or business. I am considering a career in management or MANAGEMENT as a major or minor.")
     (CARIBINFORMSYSTEMSQ "I enjoy working with computers, and think I would like a career related to business applications of computers. I am considering BUSINESS INFORMATION SYSTEMS as a major or minor department.")
     (CARIBFINANCEQ "I enjoy dealing with money, finance, economics, real estate, and/or business law issues. I am considering a career in a field related to one of these interests. I am considering a major or minor in the FINANCE department.")
     (CARIBHRDQ "I would like teaching and helping people in a business setting and am considering work in personnel, training, or human resource development. I am considering a major or minor in HUMAN RESOURCES MANAGEMENT.")
     (CARIBACCTOUNTINGQ "I would like to work with numbers and do precise, detailed work. I might enjoy working with auditing or tax-related issues.  I am considering a career, major, or minor in ACCOUNTING or a related field.")
     (CARISPBUSQ "I would greatly value developing my speech, communication, or public relations skills to high level and am considering a career where those skills may be very important. I am considering a major or minor in the SPEECH COMMUNICATION department.")

     )
    (STRING-VARS
     "iLifeThemesSoc.java"
     (THM8ROMANCEQ "INSTRUCTIONS FOR Life Themes, Dreams, and Values:
" "  Answer each question according to how important that theme is to you.

" "LOVE-ROMANCE: Having a wonderful, romantic marriage/relationship.")
     (THM12PLEASEQ "PLEASING: Pleasing others, avoiding conflict, keeping relationships pleasant.")
     (THM15RESPECTQ "RESPECT: Being highly respected by others, and being seen as an important, successful, and/or good person by others.")
     (THM20INTIMACYQ "INTIMACY: Having a few extremely close and long-term relationships.")
     (THM21NETWORKQ "WELL-LIKED: Being well liked by everyone. Having many friends and networking with many others.")
     (THM31CAREGIVERQ "CARE-GIVING: Be a good parent, or take care of others in need.")
     (THMVSUPRTQ "EMOTIONAL SUPPORT: Having people in my life to support me if I'm upset or having a problem.")
     (THMATTENTIO "ATTENTION: Being the center of attention, entertaining others, or performing in front of groups.")
     (THMFAMILYQ "FAMILY: Family members and family matters, events, traditions, etc.")
     (THMRECOGNITIO "RECOGNITION: Having respect, recognition, status, position, and/or other signs of success.")

     )
    (STRING-VARS
     "iLifeThemesNeg.java"
     (THM16HURTQ "INSTRUCTIONS FOR Life Themes, Dreams, and Values:
" "  Answer each question according to how important that theme is to you.

" "PERSONAL HEALING: Overcoming past family or personal problems that have hurt me in the past.")
     (THM17GODRULESQ "OBEDIENCE: Obeying God and living according to His commands and rules.")
     (THM18PARENTRESPECTQ "PARENTAL LOVE and RESPECT: Being respected and loved by my parent\\(s) or other authorities.")
     (THM24PROTECTQ "SELF-PROTECTION: Protecting myself from others and the harm they have done to me or may do to me.")
     (THMPUNCTUALITYQ "PUNCTUALITY: Being on time, timeliness.")
     (THMOBLIGATIO "DUTY and OBLIGATION, obeying the rules and expectations of one's family or group--even if it goes against one's own happiness.")

     )
    (STRING-VARS
     "iLifeThemesAch.java"
     (THM1ACHQ "INSTRUCTIONS FOR Life Themes, Dreams, and Values:
" "  Answer each question according to how important that theme is to you.

" "QUESTION 1:  Being the best at whatever I do (example: making top grades). Achieving more than most other people.")
     (THM3EDUCQ "EDUCATION: Earning at least a bachelor's or higher degree--preferably a master's or doctorate and making top grades.")
     (THM4MONEYQ "INCOME: Making a lot of money, preferably becoming a millionaire, or multimillionaire.")
     (THM25POSSESSQ "POSSESSIONS: Having top quality \\(expensive) possessions--home, car, electronics, jewelry, etc.")
     (THM26SUCCESSQ "SUCCESS: Being extremely successful in my career--rising to the top in it.")
     (THM27CHANGEWORLDQ "IMPACT: Having a major impact on changing the world to make it a better place.")
     (THM28CREATEQ "CREATION: Creating something that I feel is a major contribution \\(e.g. invention, bridge, book, house, work of art, etc.).")
     (THM30CEOQ "POWER: Being president, CEO, owner, etc. of an important organization OR having a great amount of influence or control over others.")
     (THM33GOALSQ "COMPLETION and ACHIEVEMENT: Accomplish all my important goals.")

     )
    (STRING-VARS
     "iLifeThemes.java"
     (THM5ADVENTQ "INSTRUCTIONS FOR Life Themes, Dreams, and Values:
" "  Answer each question according to how important that theme is to you.

" "ADVENTURE: Having a life of adventure and excitement with many new experiences.")
     (THM6LEARNQ "LEARNING: Learning, self-development, and growing to be the best I can be.")
     (THM9HAPPYQ "SELF-HAPPINESS: Living the happiest life I can.")
     (THM10OTHHAPQ "GIVING: Contributing to others' health/happiness and making the world a better place.")
     (THM13RELGODQ "SPIRITUAL INTIMACY: Having a very close relationship with God.")
     (THM14INDEPQ "INDEPENDENCE: Being independent, and living according to my own values and dreams.")
     (THM22BODYQ "HEALTH: Having an exceptionally healthy body and living to be 100--by exceptional nutrition, exercise, no use of drugs or smoking, etc.")
     (THM23BALANCEQ "BALANCE: Having balance in my life--even at the cost of not achieving as much in my career or any other area.")
     (THMORDERLYQ "ORDERLINESS: Having good organization or logical order, being systematic, etc.")
     (THM32MENTALCHALQ "MENTAL CHALLENGE: Be mentally challenged with difficult and/or creative mental tasks.")
     (THM34EXPLOREQ "EXPLORATION: Exploring the unknown, seeking the answers to mysteries.")
     (THM36INTEGRITYQ "INTEGRITY: Having integrity; pursuing my own values, beliefs, and goals above what others think; being honest with myself and others; etc.")
     (THM35COMPETENCEQ "COMPETENCE: Being the best I can be and achieving the most competence I can at whatever I do.")
     (THM37TRUTHQ "HONESTY: Pursing the truth and honesty at almost all costs--even if it upsets people.")
     (THMPHILQ "PERSONAL PHILOSOPHY: Developing a positive, well thought out personal belief system and living according to those beliefs.")
     (THMCLEA "CLEANLINESS: Keeping everything clean, free of dirt, germs, pollution, etc.")
     (THMWHOLENESSQ "WHOLENESS (unity, integration, organization, simplicity, etc.).")
     (THMPERFECTIO "PERFECTION and idealism for self, others, nature.")
     (THMJUSTICEQ "JUSTICE (fairness, getting what one has earned or deserved).")
     (THMSIMPLICITYQ "SIMPLICITY.")
     (THMBEAUTYQ "BEAUTY of all types in all things.")
     (THMGOODNESSQ "GOODNESS and functionality (versus dysfunctional, evil, or harmful).")
     (THMUNIQUEQ "UNIQUENESS and DIVERSITY (idiosyncrasy, individuality, variety, novelty).")
     (THMCREATIVEQ "CREATIVENESS: Producing new, original ideas, art, objects, actions, etc.")
     (THMEFORTLESSQ "EFFORTLESSNESS (ease, grace, beautifully functioning).")
     (THMPLAYFULQ "FUN and PLAYFULNESS (fun, joy, amusement, humor).")
     (THMSELFSUFFICIENTQ "SELF-SUFFICIENCY (autonomy, independence, environment-transcending, taking care of oneself, separateness, living by own laws).")
     (THMSELFDISCIPLINEQ "SELF-DISCIPLINE, self-control, control over one's own thoughts, emotions, and actions to be consistent with one's highest values and goals.")
     (THMSPIRITGODQ "GOD and/or SPIRITUALITY: A rich spiritual life that is the center of my life.")
     (THMRELIGIO "RELIGION and the church or religious group to which I belong.")
     (THMUNCONDITLOVEQ "UNCONDITIONAL LOVE: Unconditionally loving myself and everyone in the world.")

     )
    (STRING-VARS
     "iIEcontrol2.java"
     (IECDECIDEQ "INSTRUCTIONS:  For this set of questions, check the approximate percentage of time that you do what is described:n
" "Make your own decisions and do what you want VERSUS let others make them for you or do what they want")
     (IECAPPROVALQ "Seek support or approval from others for an important decisio
")
     (IECEXPECTQ "Only worry about your own opinion of what you do VERSUS worry about what others think")
     (IECREBELQ "Feel like doing the opposite of what others want you to do--no matter what you really want")
     (IECGUILTQ "When there is a problem, percent of time you feel guilty, blame yourself, and get upset at yourself")
     (IECANGERQ "When there is a problem, percent of time you feel angry, blame others, and get upset at them")
     (IECSHOULDQ "Focus on what you SHOULD do VERSUS what you WANT to do")
     (IECENJOYALONEQ "I greatly enjoy being alone sometimes and do certain activities alone")
     (IECSELFHAPPYQ "I think that I can make myself happy without too much dependence on anyone else")
     (IECDEPENDENCESOURCESQ "Check any needs that you are very dependent upon another person to take care of for you:")

     )
    (STRING-VARS
     "iIEcontrol.java"
     (IECSELFSUFFICIENTQ "I am extremely good at taking care of myself and any problems I might run into.")
     (IECILOFCIVSEQ "Relative to outside forces like destiny, other people, luck, fate, God, government, organizations, and anything else, I am the one who has by far the greatest amount of control over my own life and happiness.")
     (IECGENETICQ "Genetics and my biology are primarily responsible for my personality and my emotional reactions.")
     (IECPEOPLEQ "People in my life are primarily responsible for my personality and my emotional reactions.")
     (IECDEPENDENTQ "I am very dependent upon someone (parent, spouse, etc.) to support or take care of me (emotionally, financially, socially, etc.).")
     (IECCODEPENDENTQ "I worry more about caring for someone else's needs or feelings than my own (e.g. family member(s), lover, friend(s), etc.).")
     (IECCODEPPROBLEMQ "I worry a great deal about taking care of someone with a serious problem (e.g. illness, an addiction, a psychological disorder, etc.")
     (IECDECIDEQ "Make your own decisions and do what you want VERSUS let others make them for you or do what they want")
     (IECAPPROVALQ "Seek approval from others for an important decisio
")
     (IECEXPECTQ "Only worry about your own opinion of what you do VERSUS worry about what others think")
     (IECREBELQ "Feel like doing the opposite of what others want you to do--no matter what you really want")
     (IECGUILTQ "When there is a problem, percent of time you feel guilty, blame yourself, and get upset at yourself")
     (IECANGERQ "When there is a problem, percent of time you feel angry, blame others, and get upset at them")
     (IECSHOULDQ "Focus on what you SHOULD do VERSUS what you WANT to do")
     (IECENJOYALONEQ "I greatly enjoy being alone sometimes and do certain activities alone")
     (IECSELFHAPPYQ "I think that I can make myself happy without too much dependence on anyone else")
     (IECDEPENDENCESOURCESQ "Check any needs that you are very dependent upon another person to take care of for you:")

     )
    (STRING-VARS
     "iCareer.java"

     )
    (STRING-VARS
     "iAchievement.java"

     )
    (STRING-VARS
     "iAcademicMotivation.java"
     (ACMAFFECTGRADESQ "Check ALL that interfere significantly with your learning or grades.")
     (ACMSTUDYTIMEQ "On average, how many hours do you study outside class for each hour in class?")
     (ACMCOMPLETECOL1Q "Confidence that you will complete your college degree.")
     (ACMFINANCIALQ "Confidence that you have adequate financial means to complete college. ")
     (ACMEFAMLDEMANDSQ "Others where I live RARELY expect me to help them, do chores, or socialize with them if it interferes with my studies.")
     (ACMESOCSTUDYQ "My family and friends very strongly encourage my studying and doing well in school.")
     (ACMTIMEQ "My schedule gives me so little time to study that it seriously affects my grades.")
     (ACMCONCENTRATEQ "When I start working on a task or problem, reading an assignment, or writing, my concentration is so great and I get so involved that almost nothing can distract me.")
     (ACMSELFSUFFICIENTQ "I am able to manage my college life extremely well myself--with little or no help or support from others")
     (ACMATTENDCLASSQ "I almost never miss a class, and my activities rarely interfere with my schoolwork.")
     (ACMNDROPCOURSESQ "I almost never drop a course or take an incomplete(or wouldn't if you've not taken any.)")
     (ACMQUITCOLQ "There is almost no possibility that I will drop out of college during the next year.")
     (ACMDEGREMOTIVATIO "I have been so highly motivated to get the college degree I seek for so long that almost nothing could stop me now.")

     )
    (STRING-VARS
     "eHappy.java"
     (HAPAREAQ "Happiness with living in this area, with the home in which I live, and feeling at home here.")
     (HAPCLFR "Happiness with the number and closeness of my friendships, and I see them as often enough.")
     (HAPCAREERQ "Happiness with my career now.")
     (HAPCAREEREXPECTQ "Happiness with expectations for future career success and happiness.")
     (HAPFRIENDSQ "Happiness with friendships.")
     (HAPWORKRELSQ "Happiness with relationships at work, school, or job-like setting.")
     (HAPFAMILYQ "Happiness with my family relationships.")
     (HAPPEQ "Happiness with my physical activity area of my life.")
     (HAPRECREATIO "Happiness with my recreation.")
     (HAPSEXRELQ "Happiness with the sexual/romantic relationship area of my life.")
     (HAPSELFDEVELQ "Happiness with the kind of person I am and with my personal growth/development.")
     (HAPSPIRITUALQ "Happiness with having a meaningful life and with my spiritual or religious life.")
     (HAPYEARQ "Overall happiness during the past year.")
     (HAP3YEARSQ "Overall happiness  1 to 3 years ago.")
     (HAPLIFEQ "Overall happiness during my entire life up to 3 years ago.")
     (HAPEXPECTQ "Overall happiness expected in the future.")

     )
    (STRING-VARS
     "bsWorkhabits.java"

     )
    (STRING-VARS
     "bsSelfManagement.java"
     (SMTBALANCEQ "I would say that I lead a very balanced lifestyle. I have time and energy for my school, my work, friends and family, the opposite sex, relaxation, physical activity, my spiritual life, and recreation.  In addition, almost all of these life areas are providing me with a great deal of satisfaction.")
     (SMTFUTUREPLA "I spend a lot of time thinking about the future, making plans, and working toward completing distant goals.")
     (SMTEXERCIZEQ "Frequency that you get vigorous exercise for a minimum of 20 minutes:")
     (SMTEATHQ "I eat a very healthy diet, (vitamins, minerals, balanced meals, fiber, low fat, etc.) do not drink excessively, smoke, or take drugs.")
     (SMTSLEEPQ "Number of hours I average sleeping per night:")
     (SMTSDEVELOPMENTQ "I have been successful in consciously planning and greatly improving a number of important aspects of myself such as my interpersonal relations, coping with my emotions, self-discipline, smoking, overeating, or study habits.")
     (SMTNPROCRASTINATEQ "If I am facing a task or assignment that is very boring, very confusing, or very frustrating, I will almost always start it without any procrastination and continue to work diligently until it is completed at a high level of quality.")
     (SMTPTODOQ "I make a PRIORITIZED TASK LIST which covers to-do's from my school, work, social, recreation, and other areas of my life at least once per week.")
     (SMTGOALSQ "At least twice a year I spend several hours making a list of GOALS and SPECIFIC OBJECTIVES for myself for each area of my life and use these goals/objectives regularly during the year planning my weekly activities at least twice per year.")
     (SMTSCHDQ "I make a WEEKLY SCHEDULE of how I want to spend my time during the week--scheduling times for classes, study, friends, work, recreation, and other important activities. I use this schedule weekly.")
     (SMT2DTODOQ "I make a COMPREHENSIVE SCHEDULE of ALL ASSIGNMENTS and PROJECTS and their DUE DATES for the ENTIRE semester, quarter, year, etc., and regularly use that schedule to see what I need to do next.")
     (SMTACMPLQ "I am extremely busy with many things to do, but feel that I am accomplishing a great deal in most of my life areas, enjoy my life a great deal, and rarely feel under too much pressure from too many things to do.")
     (SMTGHELPQ "I work on self-improvement regularly by reading, counseling, taking non-required classes, or other activities to consciously improve myself.")
     (SMTBUSYQ "I rarely get upset about being too rushed, having too many things to do, or not having any time to relax.")
     (SMTHABCHGQ "If I get good advice from reading or another person, I almost always make a conscious effort to " "follow that advice and even change life-long habits.")

     )
    (STRING-VARS
     "bsRomantic.java"
     (ROMSRQ1SURPRISEQ "INSTRUCTIONS FOR ALL QUESTIONS ON THIS SCALE:
" "  Apply all questions on this scale to your closest relationship. If you are married or in a close romantic relationship, apply them to that relationship. OR, you may apply them to an imagined future relationship.  OR, if you want help in working on a particular relationship, answer according to how the questions apply to that relationship.

" "Question 1. I do something different to surprise my partner such as buy flowers, leave a love note, or buy a present for no special event at least once a week.")
     (ROMSRQ4FANTASIZEQ "I frequently fantasize about my partner.")
     (ROMSRQ5CELEBRQ "My partner and I celebrate special days together almost once a month.")
     (ROMSRQ12ROMPLACESQ "My partner and I go out to romantic places just to be alone together at least once a week.")
     (ROMSRQ13ATTRACTQ "I am extremely attracted to my partner sexually.")
     (ROMSRQ14PLAYQ "My partner and I both enjoy playful interactions with each other several times per week.")
     (ROMSRQ42CHARMQ "My partner is extremely charming and romantic.")

     )
    (STRING-VARS
     "bsPersuasion.java"

     )
    (STRING-VARS
     "bsMeetingPeople.java"

     )
    (STRING-VARS
     "bsManagement.java"

     )
    (STRING-VARS
     "bsLiberatedRole.java"
     (LROSRQ22MTASKSQ "INSTRUCTIONS FOR ALL QUESTIONS ON THIS SCALE:
" "  Apply all questions on this scale to your closest relationship. If you are married or in a close romantic relationship, apply them to that relationship. OR, you may apply them to an imagined future relationship.  OR, if you want help in working on a particular relationship, answer according to how the questions apply to that relationship.

" "Question 1. There are certain tasks that are MORE the man's responsibility, such as providing economic support, taking care of the car, etc.")
     (LROSRQ23FTASKSQ "There are certain tasks that are MORE the woman's responsibility, such as cleaning house, fixing meals, etc.")
     (LROSRQ27FINALDECQ "The man should make the final decision.")
     (LROSRQ52EMBARQ "I would feel embarrassed if my partner did something considered more characteristic of the opposite sex in front of other people \\(such as a woman working on the car or a man crying).")
     (LROSRQ54MSTRONGERQ "I want a relationship in which the man is stronger and more decisive than the woman.")
     (LROSRQ65EQINCOMEQ "The man and woman should be equally responsible for providing an income for the couple or family.")
     (LROSRQ66FQUITJOBQ "If the man and woman have a career conflict in which one has to quit his/her job, the woman should be the one to quit.")
     (LROSRQ69TRADITQ "I believe in traditional male-female differences in roles in most areas of the relationship.")

     )
    (STRING-VARS
     "bsLearningDisable.java"
     (LRNUNASNMENTSQ "Do you have a great deal of difficulty understanding assignments and beginning them?")
     (LRNCOLMTERALQ "Were you ever made to feel that you were not college material?")
     (LRNKNOWTESTBADQ "Do you feel that you know the material, but are unable to do well on a test?")
     (LRNPROOFPAPERQ "Would you feel very unsure about turning in a paper that has been proofread by someone else?")
     (LRNRREADTEXTSQ "Do you usually have to read textbooks 2-3 times or more to make sense of them?")
     (LRNEFFICIENCYQ "Do you feel that you put in more time and effort on schoolwork than your classmates, but get similar or poorer grades?")
     (LRNTESTTMORETIMEQ "Could you do better on tests if you were allowed a lot more time?")
     (LRNTIMASSIGNSQ "Do you spend too much time on one assignment which causes you to not complete other assignments?")
     (LRNTIREDREADQ "Does reading for one hour make you very tired?")
     (LRNTANXIETYQ "Do you feel more anxiety about tests than most of your classmates?")
     (LRNSMARTERTHANGRADESQ "Do you feel that you're a lot smarter than your grades indicate?")
     (LRNAREADQ "Do you avoid reading so much that it is a big problem?")
     (LRNRSLOWREADQ "Do you generally read much slower than other people?")

     )
    (STRING-VARS
     "bsLearningAreas.java"
     (LRNWRITEPAPERSQ "I make \"A\"s on almost all of the term papers I write and almost all of the essay tests that I take.")
     (LRNTEXTOUTLINEQ "When I read my textbooks, I almost always underline, make notes, outline, or summarize as I am reading.")
     (LRNNOTESQ "I am satisfied with the way I take notes in class and with their usefulness to me as I study for my tests.")
     (LRNWRITESKILLSQ "I am satisfied with all my writing skills such as spelling, grammar, and punctuation.")
     (LRNSEEQ "I don't seem to have any visual problems when I read.")
     (LRNVOCABQ "As I read my textbooks and outside reading for my classes, I don't seem to have any problems with the vocabulary or in understanding the writer's thought patterns.")
     (LRNSREADQ "I think that I read slower than most of my classmates.")
     (LRNMEMORQ "I don't seem to have any difficulty in remembering new terms, formulas, or facts.")
     (LRNTENSEQ "I rarely feel tense during my examinations.")
     (LRNSEFICICIENCYQ "I am satisfied with the result of my studying in relation to the time I spend at it.")
     (LRNWRORGANIZATIO "When I write, I don't have any great difficulty in organizing what I want to say.")
     (LRNMATHQ "I enjoy math and don't seem to have any great difficulty in doing problems correctly.")

     )
    (STRING-VARS
     "bsLearning.java"
     (LRNESTUDYPLACEQ "I have a good place where I can study as much as I want with minimal distractions.")
     (LRNTXOVERVIEWQ \( "Whenever I read a chapter in a text, I always do the following:
" "  1-Get an OVERVIEW OF THE CHAPTER FIRST
" "  2-Actively try to get the main point of each paragraph or section.
" "  3-Summarize what I have learned when I finish a major section or chapter.")
     (LRNTXUNDERSTANDQ "Whenever I don't understand something I am reading,  I almost never just continue reading. Instead I look up parts I don't know, visualize it, or think about it until I understand it.")
     (LRNTSREVIEWQ "In studying for a big exam,
" "I always review ALL of the assigned material
" "AT LEAST 3 TIMES within 2 days of the exam.")
     (LRNMAPQ "I almost always create some type of visual overview \\(or \"map\") of my text chapters.")
     (LRNPROBSNOTTEXTQ "In math or science courses, I read the text quickly, and focus almost all of my energy on solving the problems")
     (LRNTEXTNOTPROBSQ "In math or science courses, I focus my energy on understanding the basic principles--not just getting answers to problems.")
     (LRNINTERESTQ "If I find a text boring, I almost always find ways of making it interesting.")
     (LRNROTEQ "Every time I go over material I try to view it a new way instead of using rote memory methods.")
     (LRNASSOCQ "I try to associate new material with as many things in my own experiences as I can.")
     (LRNSLTNSTRUGGLEQ "When I am reading and come to a part that is very difficult to understand, I almost never just go on. Instead I almost always struggle with it until I understand it well.")
     (LRNTHEORYQ "I enjoy learning about theories and enjoy building my own theories about what I am learning in class.")
     (LRNSTALNALONEQ "I almost always study alone or with minimal help from others, and when I get help from others it is only after I thoroughly wrestled with the problem myself.")
     (LRNSREADQ "I think that I read slower than most of my classmates.")

     )
    (STRING-VARS
     "bsIntimacy.java"
     (INTSRQ6EXTRAQ "INSTRUCTIONS FOR ALL QUESTIONS ON THIS SCALE:
" "  Apply all questions on this scale to your closest relationship. If you are married or in a close romantic relationship, apply them to that relationship. OR, you may apply them to an imagined future relationship.  OR, if you want help in working on a particular relationship, answer according to how the questions apply to that relationship.

" "Question 1.If I am under more stress than usual, my partner will usually do extra things for me.")
     (INTSRQ7COMMITQ "A long term commitment \\(would) cause\\(s) me to feel trapped.")
     (INTSRQ30REALQ "We usually discuss what is really bothering us \\(the underlying issues) instead of the surface issues.")
     (INTSRQ8TELLALLQ "I have told my partner almost everything about myself.")
     (INTSRQ18LIKEGOALSQ "My partner and I strongly agree on most long term goals.")
     (INTSRQ20EQDISCUSSQ "Overall, my partner and I are equal in how much influence we have in decisions.")
     (INTSRQ21OPENISSUEQ "When I discuss an important issue with my partner, I go ahead and tell my partner almost exactly what I am thinking and feeling--even though it might upset him/her. My partner does the same.")
     (INTSRQ45NONDEFQ "Our communication is extremely open, nondefensive, and honest.")
     (INTSRQ46OPENFEELQ "Almost every day my partner and I each share our FEELINGS about events happening that day.")
     (INTSRQ50RESPECTQ "I respect my partner more than almost anyone else I know.")
     (INTSRQ53OPENSEXTKQ "My partner and I talk very openly and freely about specifically what we like and dislike about even the most sensitive areas of our relationship \\(e.g. what we really think of each other, sexual relations, finances, secrets.")
     (INTSRQ55MUTTASKQ "My partner and I do NOT enjoy working at the same task together.")
     (INTSRQ61KNOWFEELQ "I frequently do not know what my partner really wants or feels.")
     (INTLOVEQ "I love \\(care for) my partner very much.")
     (INTLSQPRASE44Q "I frequently tell others about their positive characteristics and about how much I like, love, or respect my partner.")

     )
    (STRING-VARS
     "bsInterpersonal.java"
     (TBVEMPATHYFORGIVEQ "I seek to have understanding, empathy, acceptance, and forgiveness of myself and others--no matter what someone has done to harm me.")

     )
    (STRING-VARS
     "bsIndependentRel.java"
     (INRSRQ2BEALONEQ "INSTRUCTIONS FOR ALL QUESTIONS ON THIS SCALE:
" "  Apply all questions on this scale to your closest relationship. If you are married or in a close romantic relationship, apply them to that relationship. OR, you may apply them to an imagined future relationship. OR, if you want help in working on a particular relationship, answer according to how the questions apply to that relationship.

" "Question 1. It is NOT ok for one partner to go away for a weekend by themselves to think and be alone.")
     (INRSRQ3CONSULTQ "One should always consult with their partner before making even small decisions.")
     (INRSRQ9OWNFRIENDSQ "My partner has close friends of his/her same sex with whom he/she has frequent social contact outside work.")
     (INRSRQ10ENCDIFDECQ "If my partner makes a decision concerning his/her own personal matters, and I do not agree with it, I almost always am supportive and encouraging to my partner.")
     (INRSRQ11LUNCHQ "It is ok for one partner to go out to lunch alone with an attractive friend of the opposite sex.")
     (INRSRQ15INDHAPQ "The \\(marriage) relationship is more important than the happiness of one partner.")
     (INRSRQ16NEVARGUEQ "Partners should never argue or disagree if they are to have a truly happy relationship.")
     (INRSRQ17ENDQ "I would end my relationship if staying in it meant that I could not grow as a person.")
     (INRSRQ24SAYWEQ "When I refer to myself, I frequently say 'we' \\(meaning my partner and I).")
     (INRSRQ25COMMITWORRYQ "One of us frequently worries about whether the other is really committed to this relationship.")
     (INRSRQ28DIFGOALOKQ "It is OK for my partner and I to have some goals which are not the same.")
     (INRSRQ41FINDANOTHERQ "If I did not have my partner, I would think I could find another partner with whom I could be very happy.")
     (INRSRQ44ENJOYALONEQ "I find that I can't really enjoy myself very much if I go someplace without my partner.")
     (INRSRQ48HAPALONEQ "I don't know how I could be happy if I didn't have my partner.")
     (INRSRQ49FEARALONEQ "I hate to be alone for even a short time.")
     (INRSRQ51FREEATHOMEQ "I feel free to do whatever I want at home whether or not my partner is there.")
     (INRSRQ63PARTINTERESTSQ "I am glad that my partner has some recreational activities and interests apart from me.")
     (INRSRQ64OWNFUNDSQ "My partner and I each have our own funds from which to buy personal things without consulting the other.")

     )
    (STRING-VARS
     "bsEquality.java"

     )
    (STRING-VARS
     "bsEmotionManagement.java"
     (COPNEGTHINKING.HELPINFO "Habitual responding to stress by negative thinking undermines success and leads to guilt, passivity, and depression. " "Facing problems immediately with constructive thinking and problem-solving is usually the most functional approach.")
     (COPCOPEAT.HELPINFO "Habitual responding to stress by eating can cause food addictions and serious weight and health problems. " "Try involving or fun activities or other constructive coping methods instead.")
     (COPPSOLVE.HELPINFO "Facing problems and their underlying causes immediately with constructive thinking and problem-solving is usually the most functional approach." "Doing it more often may help eliminate negative feelings (like guilt or resentment) that persist and recur.")
     (COPEMOTAGGRESS.HELPINFO "Responding aggressively to stress can seriously damage and erode relationships and is a significant predictor of cardiovascular disease. " "Learning to deal with stressful situations more constructively can improve relationships and long-term health.")
     (COPAVOID.HELPINFO "Habitual responding to stress by avoiding the situation undermines success and leads to guilt, passivity, and depression. " "Facing problems immediately with constructive thinking and problem-solving is usually the most functional approach.")
     (COPBLAME.HELPINFO "Habitual responding to stress by blaming leads to negative thinking, conflict, and harms relationships. " "Blaming is unnecessary. Objectively looking for multiple causes from many sources (including yourself and others), respectful " "understanding, and constructive problem-solving are usually the most functional approaches.")
     (COPWDRW.HELPINFO "Habitual responding to stress by withdrawing from the situation undermines success and leads to guilt, passivity, and depression. " "Facing problems immediately with constructive thinking and problem-solving is usually the most functional approach.")
     (COPFUN.ALERTQUESTMESSAGE "Not using positive activities to cope may cause dysfunctional, negative thinking and activiites to fill the void." "Is this causing misery, wasted time, and low success in your life?")
     (COPTALKSOMEONE.HELPINFO "Discussing your problems with others doesn't mean that you are weak or can't make your own decisions. " "Wise people get ideas and feedback from competent and trusted others. Frequent openness about problems and feelings can be an ESSENTIAL ingrediant " "of an intimate relationship.")
     (COPTALKSOMEONE.ALERTQUESTMESSAGE "If people are available, not discussing problems with them can limit your perspective and seriously " "undermine intimate relationships such as marriage.")
     (COPPEPTALK.HELPINFO "Thinking of positive goals and making honest, positive statements about your situation, yourself, and others " "can help you overcome negative thinking and feel better.")
     (COPDRUG.HELPINFO "Using alcohol or drugs to cope with stress causes psychological addiction. All street drugs have been shown to " "have serious psychological and health consequences. Use is strongly corelated to lower success and happiness.")
     (COPPE.HELPINFO "Physical activities can biologically reduce negative emotions and lead to positive emotions and energy level. " "They also have powerful health benefits.")
     (COPNEGPHIL.HELPINFO "Harshly critical and negative labeling can reduce motivation and self-esteem and can lead to depression. " "Try examining underlying negative assumptions, beliefs, expectations, and philosophies. Replace them with more positive and constructive ones. " "Immerse yourself with people, books, organizations, and other inputs that help you think more positively.  Avoid those that encourage negative, self-destructive thinking.")
     (COPSELFBLAME.HELPINFO "Habitual self-blaming lowers motivation, self-esteem, and increases guilt and depression. " "Blaming is unnecessary. Objectively looking for multiple causes from many sources (including yourself and others), respectful understanding, and constructive problem-solving are usually the most functional approachs.")
     (COPPOSPHIL.HELPINFO "Reframing a negative thought or belief from a 'higher' perspective such as a philosophical, spiritual, or other positive one " "is one of the most powerful ways to get control of your emotions. Look at the problem from a broader and/or more positive point of view. " " Learning to think from your inner positive point of view can have a dramatic affect on your success and happiness.")
     (COPEXPECTATIONS.HELPINFO "Not meeting \\(or fear of not meeting) minimal expectations is a major cause of anxiety, anger, and depression. " "Learning to examine your assumed expectations of self and others is a powerful way to get control of your emotions and motivation.")
     (COPHAPPY.HELPINFO "Planning for the worst outcomes and telling yourself that you can find routes to happiness even if your worst fears come true " "is one of the most powerful ways to calm yourself and get control of your emotions.")
     ("For each of the following questions:
" "When you have NEGATIVE FEELINGS such as being UNHAPPY, ANXIOUS, ANGRY, ANXIOUS, or are under STRESS,n
" "check the estimated percent (0-100%) of the time you make the following RESPONSE:n
" "   >   ")
     ("Percent of the time WHEN YOUR FEEL UPSET that you:n
" "   >   ")
     (COPNEGTHINKINGQ "Worry, think negative thoughts, think of problems without thinking of good solutions")
     (COPCOPEATQ "Eat.")
     (COPPSOLVEQ "Face the problem directly, think about what caused the feelings, think of possible solutions, and take action to solve the underlying problem.")
     (COPEMOTAGGRESSQ "Outwardly express anger by losing your temper, crying, damaging something, or getting even.")
     (COPAVOIDQ "Avoid thinking about problems by sleeping, keeping busy, or putting it off.")
     (COPBLAMEQ "Think about whose fault it is, blame yourself, or blame others.")
     (COPWDRWQ \\ \(COPEINSTRUCTIONS2 "Withdraw from others, feel hurt, hold your emotions in, feel sorry for yourself.")
     (COPFUNQ \\ \(COPEINSTRUCTIONS2 "Do something involving or fun to get rid of the feelings (listen to music, read, socialize, shop, walk, etc.")
     (COPTALKSOMEONEQ "Talk to someone else about the problem/feelings (friend, family member, counselor, etc.)")
     (COPPEPTALKQ "Think about positive thoughts and goals and/or give yourself a pep talk.")
     (COPSMOKEQ "Smoke a cigarette or tobacco product.")
     (COPDRUGQ \\ \(COPEINSTRUCTIONS2 "Drink an alcoholic beverage, take street drugs, or use prescribed medication.")
     (COPPEQ \\ \(COPEINSTRUCTIONS2 "Participate in a vigorous physical activity (e.g., tennis, running, exercise, dancing, aerobics, etc.")
     (COPNEGPHILQ "Think of the problem from a very critical or punitive point of view. (Examples: \"I must not make mistakes.\" or \"God may send me to Hell\").")
     (COPPOSPHILQ "Think of the problem from a constructive (philosophical or religious?) point of view that makes you feel better.")
     (COPSELFBLAMEQ "Get angry at yourself, think negative thoughts about yourself, or call yourself names.")
     (COPEXPECTATIONSQ "Examine your underlying expectations of yourself (or others) and reset them to more realistic levels.")
     (COPHAPPYQ "Tell yourself that you can be happy no matter what happens.")
     (COPSELFEXPLOREQ "How much do you enjoy exploring and analyzing your feelings, thoughts, beliefs, and memories.")
     (COPAVOIDFREQQ "How often have you missed work, school, or other important activities because you were so upset (anxious, depressed, etc.) that " "you couldn't cope.")
     (SERIOUSALERTMESSAGE "This is a dysfunctional way to respond to stress; your frequence of usage may seriously affect your relationships, success, and happiness.")
     (PUBLIC STATIC FINAL STRING NEGTALKALERTMESSAGE "Your answer indicates that you may have a problem overcoming negative thoughts and feelings. " "Not using positive self-talk to overcome negativism can lead to significant problems with depression or anger.")
     (POSTECHNIQUEALERTMESSAGE "Not using this powerful technique often enough can undermine your ability to control your emotions.")

     )
    (STRING-VARS
     "bsAssertiveCR.java"
     (CRSRQ19ISSUEQ "INSTRUCTIONS FOR ALL QUESTIONS ON THIS SCALE:
" "  Apply all questions on this scale to your closest relationship. If you are married or in a close romantic relationship, apply them to that relationship. OR, you may apply them to an imagined future relationship. OR, if you want help in working on a particular relationship, answer according to how the questions apply to that relationship.

" "Question 1. When my partner and I have a discussion or argument, we almost always stay on one issue at a time.")
     (CRSRQ26FINISHQ "My partner and I rarely argue about the same issue more than once.")
     (CRSRQ29THREATSQ "I almost never make threats about what I will do if my partner takes a certain action.")
     (CRSRQ30REALQ "We usually discuss what is really bothering us \\(the underlying issues) instead of the surface issues.")
     (CRSRQ32ONETALKQ "One partner usually talks a long time before the other partner has a chance.")
     (CRSRQ33RARENEGQ "I rarely use negative labels or call others \\(such as 'dumb,' 'dependent,' 'weak,' 'selfish,' 'inconsiderate') even when we are angry with each other.")
     (CRSRQ34NOWEAKQ "I do not really feel very comfortable telling my partner about my weaknesses or something I have done wrong.")
     (CRSRQ35WINWINQ "When making an important decision, we almost always discuss it until we find a solution with which we are both happy.")
     (CRSRQ36LONGTALKQ "Sometimes when we are trying to resolve a difficult problem, we almost always keep going until we reach a solution \\(even if we have to discuss it for hours or the next day).")
     (CRSRQ37EXAGGERATEQ "I frequently use words like \"always,\" \"never,\" or other exaggerations.")
     (CRSRQ38PARTMANIPQ "I frequently feel as if my partner is manipulating me or that I am manipulating my partner.")
     (CRSRQ39LISTENQ "When discussing important issues my partner and I usually repeat back a summary of what the other has said to make sure we understand it.")
     (CRSRQ40PRAISEQ "Even during a disagreement, my partner and I frequently laugh and praise each other.")
     (CRSRQ43BOTHASSERTQ "My partner and I are both very assertive\\(positive, firm, and diplomatic).")
     (CRSRQ45OPENQ "Our communication is extremely open, nondefensive, and honest.")
     (CRSRQ47PARTCRITQ "Overall, my partner gives me a lot more criticism than praise.")
     (CRSRQ56TEACHQ "If one of us tries to teach the other something, we usually end up having some hard feelings.")
     (CRSRQ57FAVORQ "If my partner asks me to do me a favor, I almost always do it cheerfully.")
     (CRSRQ59FOLLOWUPQ "I almost always do what I tell my partner I will do.")
     (CRSRQ60ANGERBACKQ "If my partner gets angry at me, I usually get angry or defensive back.")
     (CRSRQ67CRITICALQ "Overall, I criticize my partner quite a bit more than I praise him/her.")
     (CRSRQ68ANGERRESQ "If I lose my temper at my partner, he/she will almost always tell me about it in a firm, diplomatic way without losing his/her temper. I do the same when she/he loses her/his temper.")
     (CRSRQ31EQTALKQ "In our conversations, one partner usually talks quite a bit more than the other.")
     (CRSRQ58EQWINQ "My partner and I \"win\" long disagreements/arguments about equally often.")

     )
    )
  "All SHAQ questions converted from original java files by  (convert-shaq-question-files *all-shaq2000-question-files  :print-to-sum-files-p t  :print-to-match-file-p nil )"
  )
|#


#|
 ;; OLD STUDENT ETC SECTION
     
       (STU-STATUSQ NO-QUEST-STRING-FOUND)
       (COOTHERQ NO-QUEST-STRING-FOUND)
       (STUCLASSQ NO-QUEST-STRING-FOUND)
       (STUDEGREQ NO-QUEST-STRING-FOUND)
       )
     ( STU-MAJOR ;;multi-selection
       (STUMAJORQ NO-QUEST-STRING-FOUND)
       (MLIBARTQ NO-QUEST-STRING-FOUND)
       (MSOCSCIQ NO-QUEST-STRING-FOUND)
       (MBIOLSCIQ NO-QUEST-STRING-FOUND)
       (MARTQ NO-QUEST-STRING-FOUND)
       (MNATSCIQ NO-QUEST-STRING-FOUND)
       (MBUSQ NO-QUEST-STRING-FOUND)
       (MENGINRQ NO-QUEST-STRING-FOUND)
       (MEDUCATQ NO-QUEST-STRING-FOUND)
       (MMEDICALQ NO-QUEST-STRING-FOUND)
       (MOTCOMPUQ NO-QUEST-STRING-FOUND)
       (MOTHTECHQ NO-QUEST-STRING-FOUND)
       (MRECRPEQ NO-QUEST-STRING-FOUND)
       (MDOESNAQ NO-QUEST-STRING-FOUND)
       (MUNDECIDQ NO-QUEST-STRING-FOUND)
       )
     ( STU-SPECIAL
       (STUSPECIQ NO-QUEST-STRING-FOUND)
       (STRANCCQ NO-QUEST-STRING-FOUND)
       (STRAN4YRQ NO-QUEST-STRING-FOUND)
       (SADULTREQ NO-QUEST-STRING-FOUND)
       (SEOPQ NO-QUEST-STRING-FOUND)
       (SUSIMMIGQ NO-QUEST-STRING-FOUND)
       (SVISAQ NO-QUEST-STRING-FOUND)
       (SHONORQ NO-QUEST-STRING-FOUND)
       (SVISASTUQ NO-QUEST-STRING-FOUND)
       (SDISABLDQ NO-QUEST-STRING-FOUND)
       (SOUTOFSTQ NO-QUEST-STRING-FOUND)
       (SMILITARQ NO-QUEST-STRING-FOUND)
       (SATHLETEQ NO-QUEST-STRING-FOUND)
       (SNONEQ NO-QUEST-STRING-FOUND)
       (STURESIDQ NO-QUEST-STRING-FOUND)
       )
     ( STU-LIVING
       (RSINWPARQ NO-QUEST-STRING-FOUND)
       (RSINDORMQ NO-QUEST-STRING-FOUND)
       (RSINWCHLQ NO-QUEST-STRING-FOUND)
       (RSINOTHRQ NO-QUEST-STRING-FOUND)
       (RMARWOCHQ NO-QUEST-STRING-FOUND)
       (RMARWCHLQ NO-QUEST-STRING-FOUND)
       (RMARLIKEQ NO-QUEST-STRING-FOUND)
       (ROTHERQ NO-QUEST-STRING-FOUND)
       )
     ( STU-MISC
       (STUSEMESQ NO-QUEST-STRING-FOUND)
       (STMAJGPAQ NO-QUEST-STRING-FOUND)
       (STACADSTQ NO-QUEST-STRING-FOUND)
       )
     ( STU-TREND
       (STGPATREQ NO-QUEST-STRING-FOUND)
       (TRCONHIQ NO-QUEST-STRING-FOUND)
       (TRINCRYRQ NO-QUEST-STRING-FOUND)
       (TRINCYRUQ NO-QUEST-STRING-FOUND)
       (TRINCYRSQ NO-QUEST-STRING-FOUND)
       (TRGRADINQ NO-QUEST-STRING-FOUND)
       (TRCONAVEQ NO-QUEST-STRING-FOUND)
       (TRDECYRUQ NO-QUEST-STRING-FOUND)
       (TRDECYRQ NO-QUEST-STRING-FOUND)
       (TRCONLOWQ NO-QUEST-STRING-FOUND)
       (TRUPANDDQ NO-QUEST-STRING-FOUND)
       (TROTHERQ NO-QUEST-STRING-FOUND)
       )
     ( STU-APT
       (STUVERBAQ NO-QUEST-STRING-FOUND)
       (STUMATHAQ NO-QUEST-STRING-FOUND)
       )
     ( STU-FEEL
       (STULOOKFQ NO-QUEST-STRING-FOUND)
       (STULIKEIQ NO-QUEST-STRING-FOUND)
       (STUCOMFOQ NO-QUEST-STRING-FOUND)
       (STUFRIENQ NO-QUEST-STRING-FOUND)
       (STUEXTMOQ NO-QUEST-STRING-FOUND)
       (STUENJOYQ NO-QUEST-STRING-FOUND)
       (STUCAREEQ NO-QUEST-STRING-FOUND)
       (STUMONEYQ NO-QUEST-STRING-FOUND)
       (STUCONFUQ NO-QUEST-STRING-FOUND)
       (STUFINDEQ NO-QUEST-STRING-FOUND)
       (STUEACTRQ NO-QUEST-STRING-FOUND)
       (STHAPCOLQ NO-QUEST-STRING-FOUND)
       (STHAPGPAQ NO-QUEST-STRING-FOUND)
       )
     ( STU-TIME
       (ACMAFFECQ NO-QUEST-STRING-FOUND)
       (AFINANCQ NO-QUEST-STRING-FOUND)
       (AFAMPRESQ NO-QUEST-STRING-FOUND)
       (AFAMRESPQ NO-QUEST-STRING-FOUND)
       (AWORKTIMQ NO-QUEST-STRING-FOUND)
       (AWRKPRESQ NO-QUEST-STRING-FOUND)
       (ARELPROBQ NO-QUEST-STRING-FOUND)
       (ALONELIQ NO-QUEST-STRING-FOUND)
       (AHOMSTPLQ NO-QUEST-STRING-FOUND)
       (ASCHSTPLQ NO-QUEST-STRING-FOUND)
       (ACOMPAVLQ NO-QUEST-STRING-FOUND)
       (AWRNGCLSQ NO-QUEST-STRING-FOUND)
       (AFACCONNQ NO-QUEST-STRING-FOUND)
       (ASTUCONNQ NO-QUEST-STRING-FOUND)
       (ALOWMOTVQ NO-QUEST-STRING-FOUND)
       (ATIMCONFQ NO-QUEST-STRING-FOUND)
       (APROCRASQ NO-QUEST-STRING-FOUND)
       )
|#
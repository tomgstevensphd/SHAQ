;;******************* SHAQ-all-scale-and-question-var-lists.lisp ***************
;;
;; FILE CONTAINS:
;;          ALL CURRENT SHAQ SCALE AND QUESTION VARIABLE LISTSo
;; 
;;; MODIFY *SHAQ-question-variable-lists TO INCLUDE NEW QUESTION NAMES
;;
;;these are the printed out and manually edited lists  (also see  Q-questions.lisp)
;;
;;

;;DISPLAY THE CONTENTS IN A WINDOW
;;(list-file-nested-lists "SHAQ-all-scale-and-question-var-lists" :add-defpar-newlines-p t)
;;(list-file-nested-lists "SHAQ-all-scale-and-question-var-lists" :add-defpar-newlines-p t :object-sym '*SHAQ-question-variable-lists)


;;---------------------------- *SHAQ-SCALE-DATA-VARS -----------------------------
;;XXX
;;
;;FOR ONLY NEW SCALES AND CALCULATION FUNCTIONS, 
;;    GO TO  SHAQ-new-scales.lisp
;;
;;   *SHAQ-MAIN-SCALE-VARIABLE-LISTS
;;
;;ddd
(defparameter *SHAQ-main-scale-variable-lists
#|"Does not include new scales and subscales. FROM 2009 SPSS VARS-LABELS
  List= (Variable   Label   Match-Java-spss-var? (NIL=couldn't find similar) quest-or-scale-match-list (note: scale list is symbol + label)"|#
  '(    ;;SCALES
      ("saachapt" "s-Acad achievements-aptsORIG" "spss-match" ("StudentBasicData2""Academic Motivation and Satisfaction Scale")) 
      ("samotsat" "s-Acad motivation-satis" "spss-match")
      ("samotiv" "s-Acad motivation-intention" "spss-match" NIL)
      ("samotivORIG" "s-Acad motivationORIG" NIL ("StudentBasicData""Academic Motivation Scale" ))
      ("slrnskls" "s-Learning skills & habits" "spss-match"  ("bsLearning" "Learning and Study Skills Scale."))
      ("slrnarea" "s-Strong learning areas" "spss-match"  ("bsLearningAreas" "Basic Academic Learning Factors Scale." ))
      ("slrndisb" "s-Learn disab-low confidence" "spss-match"  ("bsLearningDisable" "Potential Learning Disabilities Scale."))
      ("sselfman" "s-Self-management skills" "spss-match" ("bsSelfManagement" "Self Management Skills-A key HQ scale" ))
      ("semotcop" "s-Emotional coping skills" "spss-match"  ("bsEmotionManagement" "Emotional Coping Skills Scale-A key HQ scale" ))
      ("slithach" "s-Life theme--achievement" "spss-match" NIL)
      ("slithsoc" "s-Life theme--social" "spss-match" NIL)
      ("slithneg" "s-Life theme--obligation, negative" "spss-match" NIL)
      ("slithint" "s-Life theme--internal values" "spss-match" NIL)
      ("slithachORIG" "s-Life theme--achievementORIG" NIL  ("iLifeThemesAch" "Life Themes and Values Scale 1: Achievement, Success, and Material Values" ))
      ("slithsocORIG" "s-Life theme--socialORIG" NIL  ("iLifeThemesSoc" "Life Themes and Values Scale 2: Social and Interpersonal Values" ))
      ("slithnegORIG" "s-Life theme--obligation, negativeORIG" NIL   ("iLifeThemesNeg" "Life Themes and Values Scale 3: Authority and Rule-Orientation Values" ))
      ("slithintORIG" "s-Life theme--internal valuesORIG" NIL   ("iLifeThemes"  "Life Themes and Values Scale 4: Internal Mental or Spiritual Values" ))
      ("stbslfwo" "s-Self-worth beliefs" "spss-match"  ("iTopBV" "Unconditional Worth of Self and Others Scale-A key HQ scale" ))
      ("siecontr" "s-Int-Ext control beliefs" "spss-match"   ("iIEcontrol" "Internal External Control Scale-A key HQ scale" ))
      ("sworldvi" "s-Positive world view" "spss-match"  ("iWorldView" "Positive World View Scale-A key HQ scale" ))
      ("sgrfears" "s-Low greatest fears" "spss-match"   ("iWorldviewFears" "Greatest Fears Scale-A key HQ scale" ))
      ("sslfconf" "s-Self-confidence areas" "spss-match"   ("iSelf" "Self Acceptance, Skills, and Confidence Scale-A key HQ scale" ))
      ("sassert" "s-Assertive conflict resolution habits" "spss-match" ("bsAssertiveCR" 
      "Interpersonal Communication and Conflict Resolution Scale-A key HQ scale" ))
      ("sintimat" "s-Intimacy habits" "spss-match"  ("bsIntimacy" "Intimacy Scale-A key HQ scale" ))
      ("sindepre" "s-Independent intimacy habits" "spss-match"  ("bsIndependentRel" 
      "Relationship Independence Scale-A key HQ scale" ))
      ("sromantc" "s-Romantic habits" "spss-match"   ("bsRomantic"  "Romantic Relationship Habits Scale" ))
      ("slibrole" "s-Liberated role beliefs" "spss-match"  ("bsLiberatedRole" 
      "Liberated Relationship Roles Scale" ))
      ("sehappy" "s-Overall happiness" "spss-match"   ("eHappy" "Overall Happiness Scale"))
      ("srelhlth" "s-Health outcomes" "spss-match"   ("RealHealth"  "Physical Health Scale" ))
      ("srpeople" "s-Relationship outcomes" "spss-match"   ("RealPeople"  "Relationships Scale" ))
      ("srdepres" "s-LoDepression outcomes" "spss-match"   ("RealDepression" "Depression Symptoms and Treatment Scale" ))
      ("sranxiet" "s-LoAnxiety symp+treat outcomes" "spss-match"   ("RealAnxiety" "Anxiety Symptoms and Treatment Scale" ))
      ("srangagg" "s-LoAnger-aggression outcomes" "spss-match"   ("RealAnger" "Anger Symptoms and Treatment Scale" ))
      ("sb2ethic" "s-Ethical beliefs" "spss-match"  ("iTopBV2" "Life Beliefs Scale: Identity and Ethics" ))
      ("sincar" "s-Career-major interest areas" "spss-match"   ("inCareer" "College Major Interest Test: Overall Interests Scale" ))
      ("sinbus" "s-Business major interests" "spss-match"   ("inBus" 
     "College Major Interest Test: Business-Related Interests Scale" ))
      ("sinengr" "s-Engineering major interests" "spss-match"  ("inEngr" 
     "College Major Interest Test: Engineering-Related Interests Scale" ))
      ("sinfinea" "s-Fine art major interests" "spss-match"    ("inFineArt" 
     "College Major Interest Test: Fine Arts-Related Interests Scale"))
      ("sinhelp" "s-Helping profession major interests" "spss-match"("inHelp" 
     "College Major Interest Test: Helping/Teaching/Counseling-Related Interests Scale" ))
      ("sinlang" "s-Language major interests" "spss-match"   ("inLang" 
     "College Major Interest Test: Language-Related Interests Scale" ))
      ("sinmed" "s-Medical major interests" "spss-match"   ("inMed" 
     "College Major Interest Test: Medically-Related Interests Scale" ))
      ("sinmiltc" "s-Military major interests" "spss-match"   ("inMiltCrim" 
     "College Major Interest Test: Law Enforcement and Military-Related Interests Scale" ))
      ("sinnatsc" "s-Natural science major interests" "spss-match"   ("inNatSci" 
     "College Major Interest Test: Natural Science-Related Interests Scale" ))
      ("sinsocsc" "s-Social science major interests" "spss-match"   ("inSocSci" 
     "College Major Interest Test: Social Science-Related Interests Scale"   ))
      ("sinwoeth" "s-Womens or ethnics studies mj int" "spss-match"("inWoEthnicSt" 
     "College Major Interest Test: Women and Ethnic Group-Related Interests Scale"  ))
      ("sinwrite" "s-Writing major interests" "spss-match"  ("inWrite" 
     "College Major Interest Test: Writing and Media-Related Interests Scale" ))
      ))

  (defparameter *extra-unmatched-java-scales
    '(
   ("iIEcontrol2" "Internal External Control Scale Part 2: Behavior Frequency" )     
     ("iSelf2" "Self-Actualization Characteristics Scale" )
       ("RealPeopleSex" "Romantic Relationship Scale" )
         ("RealEmotions" "Brief Psychological-Emotional Problems Scale" )
       ))
  
  ;;ABOVE SCALES ALREADY MATCHED

;; SSS THESE FOLLOWING NEED TO BE MATCHED OR CHECKED??
;;xxx
;;  *SHAQ-NEW-SCALE-VARIABLE-LISTS
;;
;;ddd
(defparameter *SHAQ-new-scale-variable-lists
  '(
    (SPECIAL-SCALES
     ("sselfman14" "SM excules smtbalan")
     ("sbelstrg" "NOTUSED")
     ("sslfconf41" "SC includes slfhappy")
     ("HigherSelfScale" "Higher Self Beliefs")
     ("HiLoHigherSelfScale" ""))
    ;;SUBSCALES
    ;;MISC
    '(OLD-SM-SS
      ("smpatsm" "ssPatsmTime management habits")
      ("sranxsym" "ssax-AnxietySymptoms")
      ("smslfcar" "ssSelf-care and self-development")
      ("smeftask" "ssTask focus-accomplishment"))
    (SM-SS
     ("sssmTimeManGoalSet" "sssm-Time management-OPATSM")
     ("sssmAccompLoRush" "sssm-Busy,accomplishment,efficient")
     ("sssmHealthHabs" "sssm-Self health care--exercise diet sleep")
     ("sssmSelfDevel" "sssm-Self-develop, take advice,habit chng"))
    (OLD-COPE-SS
     ("cpposcop" "ssPositive  thoughtful coping")
     ("cpavdneg" "ssNot negative  blaming  avoidant coping")
     ("cpnsubst" "ssNot substance use coping")
     ("cpeatnag" "ssNot eating or aggressive coping"))
    (COPE-SS
     ("sscpProbSolv" "sscp-Prob solve talk selfexpl expect")
     ("sscpPosThoughts" "sscp-Pos thoughts-phil, pep talk")
     ("sscpPosActs" "sscp-Pos acts fun exercise")
     ("sscpNoBlameAngerWDraw" "sscp-Not anger blame withdraw")
     ("sscpNotSmokDrugMed" "sscp-Not smoke drugs")
     ("sscpNotEat" "sscp-Not eat 1"))
    (WORLDVIEW-SS
     ("sswvgratpt" "sswv-Grateful  abundance beliefs")
     ("sswvoptims" "sswv-Optimism about self and world")
     ("sswventit" "sswv-NotEntitlement beliefs"))
    (IE-SS
     ("ssieautony" "ssie Autonomy  independence")
     ("ssiencodep" "ssie-Not codependent")
     ("ssienother" "ssie-Not care-provider for other"))
    (SELF-WORTH-SS
     ("ssswNonCont" "sssw-Not cont or dysf SelfWorth")
     ("ssswHapAllGrat" "sssw-HigherSelf--MaxLoveHapBal-Grat")
     ("ssswAcAllSelf" "sssw-Accept all of self 1"))
    (BELIEFS-SS
     ("ssb2Ethic" "ssb2-Ethics grounded in abstract absolutes")
     ("ssb2Forgiv" "ssb2-Forgiving-egalitarian")
     ("ssb2IDgrnd" "ssb2-Identify with abstract whole")
     ("ssb2GrndMng" "ssb2-Meaning from abstract absolutes")
     ("ssb2InrGood" "ssb2-Inner goodness in all")
     ("ssb2noAstr" "ssb2-Not belief in astrology 1")
     ("ssb2lifad" "ssb2-Belief in LifeAfterDeath 1")
     ("sstb3Forgive" "ssb3-Forgiving-not punative"))
    (WORST-FEARS-SS
     ("sswfsocial" "sswf-Not not social or alone")
     ("sswfself" "sswf-Not self-related fears")
     ("sswfpovfai" "sswf-Not poverty-failure fears")
     ("sswfilldea" "sswf-Not illness-death fears"))
    (SELF-SKILLS-CONF-SS
     ("sssclearn" "sssc-SelfConf-Learning")
     ("sssccopopt" "sssc-SelfConf-PosAchCopeRelate")
     ("ssscsmsmsd" "sssc-SelfConf-self control  discipline  develop")
     ("ssscinterp" "sssc-SelfConf-Career interpersonal skills")
     ("ssscallhelp" "sssc-SelfConf-Helping skills")
     ("ssscscience" "sssc-SelfConf-Natural science")
     ("ssscartcre" "sssc-SelfConf-Art  creative"))
    (NOT-USED
     ("sccopopt7" "NOTUSED-SelfConf-Pos emot cope wHapIQ")
     ("brationl" "NOTUSED ss-Beliefs-Rational functional")
     ("bhapswgr" "NOTUSEDss-Beliefs-Happiness self-worth gratitude")
     ("ballself" "NOTUSEDss-Beliefs-Accept all of self"))
    (VALUES-THEMES
     ("T1HigherSelf" "sT1-HigherSelf-Integrity  happy  balance devel discpn phil ")
     ("T2SocIntimNoFamScale" "sT2-SocialIntimacyNotFamily  love/rom  respect support agreeable")
     ("T3FamCareScale" "sT3-Family-EmotionalSupport and care giving parental love-respect")
     ("T4SuccessStatusMater" "sT4-SuccessStatusIncomeMaterialism")
     ("T5OrderPerfectGood" "sT5-OrderPerfectionGoodness cleanliness juatice simplicity punctual")
     ("T6GodSpiritRelig" "sT6-GodSpiritualReligion")
     ("T7ImpactChallengeExplor" "sT7-ImpactContributionMentalChallenge-exploration")
     ("T8AttentionFunEasy" "sT8-AttentionFunEasy  playful  adventure")
     ("T9ValueSelfAllUncond" "sT9-ValueSelf-AllUnconditionally")
     ("T10OvercmProbAcceptSelf" "sT10-OvercomeProblems-AcceptAllofSelf")
     ("T11DutyPunctual" "sT11-DutyPunctuality"))
    (NOT-USED2
     ("XT1HigherSelf" "OLDsT1-HigherSelf-Integrity  happy  balance devel discpn phil ")
     ("XT2aSocIntimNoFamScale" "OLDsT2a-SocialIntimacyNotFamily  love/rom  respect support agreeable")
     ("XT2bFamCareScale" "OLDsT2b-Family-EmotionalSupport and care giving parental love-respect")
     ("XT3SuccessStatusMater" "OLDsT3-SuccessStatusIncomeMaterialism")
     ("XT4OrderPerfectGood" "OLDsT4-OrderPerfectionGoodness cleanliness juatice simplicity punctual")
     ("XT5GodSpiritRelig" "OLDsT5-GodSpiritualReligion")
     ("XT6ImpactChallengeExplor" "OLDsT6-ImpactContributionMentalChallenge-exploration")
     ("XT7AttentionFunEasy" "sOLDT7-AttentionFunEasy  playful  adventure")
     ("XT8ValueSelfAllUncond" "OLDsT8-ValueSelf-AllUnconditionally")
     ("XT9OvercmProbAcceptSelf" "OLDsT9-OvercomeProblems-AcceptAllofSelf")
     ("XT10DutyPunctual" "OLDsT10-DutyPunctuality")
     ("XT11NotDysfBeliefsScale" "OLDsT11-NotDysfunctionalBeliefs-NOTentitled selfLast lovedbyAll weakDepndt")
     ("XT12HighSelfDecBalMaxHAbunScale" "OLDsT12-HigherSelfDecisions-maxHappy balanceSelfOthrs-PrestFutr Gratitude"))
    (INTERPER-SS
     ("IntSS1Assert" "IntSS1-Assertive Com-CR")
     ("IntSS2Romantc" "IntSS2-Romantic-same sromantc")
     ("IntSS3LibRole" "IntSS3-LiberatedRoles-same slibrole")
     ("IntSS4LoveRes" "IntSS4-Love Respect")
     ("IntSS5Indep" "IntSS5-Rel Independ")
     ("IntSS6PosSup" "IntSS6-Positive Supportive Com")
     ("IntSS7Collab" "IntSS7-Collaborative")
     ("IntSS8Separate" "IntSS8-Separate")
     ("IntSS1aAssertCR" "IntSS1a-AssertCR")
     ("IntSS1bOpenHon" "IntSS1b-Open Honest"))
    ;;OUTCOMES
    (HAP-SS
     ("hapCareerExSS" "ssh-Career happiness")
     ("hapFamSS" "ssh-Family happiness")
     ("hapFriendsSS" "ssh-Friends happiness")
     ("hapFutureSS" "ssh-Expected future happiness")
     ("hapPastSS" "ssh-Happy in past years")
     ("hapRecentSS" "ssh-Happy recently")
     ("hapRecPESS" "ssh-Recreation happiness")
     ("hapRomSS" "ssh-Romantic relation happiness")
     ("hapSDMeanSpiritSS" "ssh-Happy self-development/meaning"))
    (DEPRESS-SS
     ("ssdeLoDepSymp" "ssde-LoDepressionSymptoms")
     ("ssdeLoDepTreats" "ssde-LoDepressionTreatments")
     ("ssdeNODepTreat" "ssde-NO DepressionTreatment"))
    (ANXIETY-SS
     ("ssaxLoPerfGenAnx" "ssax-LoPerformanceAndGeneralAnxiety")
     ("ssaxLowFearOCD" "ssax-LoFearsAndOCDsymptoms")
     ("ssaxLoAnxTreats" "ssax-LoAnxietyTreatments")
     ("ssaxNOAnxTreat" "ssax-NO AnxietyTreatment"))
    (OTHER-SS
     ("ssheLoNegAddictHabs" "sshe-LoNegAddictHabits"))
    (INTERPER-OUTCOME-SS
     ("ssreCloseFirends" "ssre-CloseFriends")
     ("ssreRomRelSuc" "ssre-RomanticRelationshipSuccess")
     ("RegMainNeTh" ""))
    (HQ-SCALES
     ("HQRegMod" "")
     ("HQ" "")
     ("HQMaIntNTRegMod" "")
     ("HQMaIntNT" "")
     ("HQallRegMod" "")
     ("HQall" "")
     ("HQAllSSRegMod" "")
     ("HQallSS" "")
     ("SelfHQRegMod" "")
     ("SelfHQ" "")
     ("SelfHQtestRegMod" "")
     ("SelfHQtest" "")
     ("SelfHQtest2RegMod" "")
     ("SelfHQtest2" "")
     ("RelHQRegMod" "")
     ("RelHQ" "")
     ("AcadHQRegMod" "")
     ("AcadHQ" "")
     ("ssswNonCont2" "")
     ("bvalacal" "")
     ("bacallsf" "")
     ("sstbEthc" "")
     ("sstbBPow" "")
     ("sstbNoSp" "")
     ("ssb2NoUnseen" "")
     ("sscpNotEatSmokDrugMed" "")
     ("slrndis" ""))
    (ACAD-LEARN-SS
     ("ssl1ConfidEfficStudyTest" "ssl1-ConfidEfficStudyTest- ssl1-Confid efficient read-study-test")
     ("ssl1aTimeEfficTestConft" "ssl1a-Time effic-confid read-study-test")
     ("ssl1bConfidNotAvoidStudy" "ssl1b-Confid not avoid study")
     ("ssl2SatisCampusFacFriendsGrdes" "ssl2-Overall satis campus fac friends grades")
     ("ssl3WritingSkills" "ssl3-Writing skills")
     ("ssl4BldMentalStruct" "ssl4-Build Mental Structure")
     ("ssl5BasicStudySkills" "ssl5-BasicSS-Undrstnd review map outline notes")
     ("ssl6SelfmanAcadGoals" "ssl6-Selfman-acad goal intention")
     ("ssl7MathSciPrinc" "ssl7-MathSci-principles interest skills")
     ("ssl8StudyEnvir" "ssl8-Study home envir")
     ("ssl9AttendHW" "ssl9-Attend-doHW")
     ("ssl10MemNotAnx" "ssl10-Memory-not anx")
     ("ssl11NotNonAcadMot" "ss11-Not job  parent money motiv")
     ("ssl12StdyTmAvail" "ssl12Study time available-acmtime")
     ("ssl13VerbalApt" "ssl13-Verbal aptitude test score=stuverba")
     ("ssl14MathApt" "ssl14-Math aptitude test score=stumatha")
     (OTHER-SCALES
      ("MyHQnewSubscalesRegMod" "")
      ("HQnss" "")
      ("sssccopopt7" "")
      ("rawHQss" "rawHQss-AllScalesAndSubscales")
      ("HQss" ""))
     )))

;; ---------------------------- END SHAQ SCALE VARIABLE LISTS --------------------





;;XXX
;;DDD ------------------- *SHAQ-QUESTION-SYMBOL-LISTS ------------------------

;;ALSO CONTAINS SHAQ2000 SCALE SYMS AND SYM-STRINGS LISTS  *shaq2000-scales-syms AND *shaq2000-scales-sym-strings
;;ACTUAL STEPS TO GENERATE *SHAQ-question-symbol-lists
;; (After had done preliminary work generating *SHAQ-quest-variables-msl4 and 
;;           *all-shaq-pc-instances)
;; --> See files U-SHAQ-syms-labels-functions.lisp, U-SHAQ.lisp, U-java-to-lisp.lisp, can U-lists.lisp
;; STEP 1:  (progn (setf out nil) (multiple-value-setq (*testout-sls *testout-errors) (add-pc-instance-info *SHAQ-quest-variables-msl4 *all-shaq-pc-instances)))
;; STEP 2: PRINT  (progn (setf out nil) (setf *outputsp (print-nested-list *testout-sls :stream t :incl-quotes-p t)))
;;
;;


;;xxx ------------------- *SHAQ-QUESTION-VARIABLE-LISTS --------------------------
;;*SHAQ-ALL-QUESTION-CATEGORIES-LIST
;;
;;ddd
(defparameter *shaq-all-question-categories-list
  '((ID)(UTYPE) (UGOALS) (BIO3EDUC) (BIO4JOB) (BI07LANG) (BIO1ETHN) (BIORELAF) (STUCOLLE) (STUMAJOR) (STUSPECI) (STURESID) (STU-DATA) (STGPATRE) (STUAPT) (STUFEEL) (STURESOURCE) (STUACMOTIV) (SCALESSEL)
    (STU-LRN "Learning and Study Skills/Habits Scale")
    (SM "Self-Management Skills/Habits Scale") 
    (COPE "Emotional Coping Skills/Habits Scale")
    (THEMES "Top Life Themes and Values")
    (TBV "Important Life Beliefs Part 1")
    (TB2 "Important Life Beliefs Part 2")
    (IE "Internal versus External Control") 
    (WORLDVIEW "World View Beliefs") 
    (SELF-CONF "Self-Confidence and Life Skills") 
    (ASSERTCR "Assertion and Conflict Resolution Skills/Habits") 
    (INTIMACY "Intimacy Skills/Habits") 
    (INDEP-INT "Independent Intimacy Habits") 
    (ROM "Romantic Habits")
    (LIBROLE "Relationship Role Habits") 
    (HAP "Happiness and Well-Being") 
    (RHEALTH "Health and Health Habits") 
    (RPEOPLE "Relationship") 
    (RDEP "Depression") 
    (RANX "Anxiety") 
    (RANG "Anger and Aggression") ;;not used? (REMOT) 
    (CARGEN "Academic Major Interest Scales") (CARBUS "Business-Related") (CARENGR "Engineering-Related") (CARFINE "Fine Arts-Related") (CARHELP "Teaching and Helping Profession-Related") (CARLANG "Language, International-Related") (CARMED "Health and Medical-Related") (CARLAW "Law and Criminal Justice-Related") (CARNATSCI "Natural Science") (CARBESCI "Behavioral Science and Social-Related") (CARETHNIC "Ethnic or Women's Studies") (CARWRITE "English, Literature, or Writing-Related")
    )  "A list of all the categories in *SHAQ-question-variable-lists")

 
(defparameter *shaq-all-intro-question-categories
    '((ID UTYPE UGOALS BIO3EDUC BIO4JOB BI07LANG BIO1ETHN BIORELAF)
      ("Biographical Information:")))

(defparameter *shaq-values-beliefs-question-categories
    '((THEMES TBV TB2 IE WORLDVIEW )
      ("Values and Beliefs Scales:")))

(defparameter *shaq-life-skills-question-categories
    '((SM COPE SELF-CONF)
      ("Basic Life Skills and Self-Confidence Scales:")))

(defparameter *shaq-interpersonal-skills-question-categories
    '((ASSERTCR INTIMACY INDEP-INT ROM LIBROLE)
      ("Interpersonal Relationship Scales:")))

(defparameter *shaq-outcome-question-categories
    '((HAP RHEALTH RPEOPLE RDEP RANX RANG ) ;;not used REMOT
      ("Life Outcomes Scales:")))

(defparameter *shaq-academic-question-categories
  '((STUCOLLE STUMAJOR STUSPECI STURESID STU-DATA STGPATRE STUAPT STUFEEL STURESOURCE STUACMOTIV STU-LRN)
    ("Academic-Related Scales:")))

(defparameter *shaq-career-major-interest-question-categories
    '((CARGEN CARBUS CARENGR CARFINE CARHELP CARLANG CARMED CARLAW CARNATSCI CARBESCI CARETHNIC CARWRITE)
      ("Choice of Academic Major Scales:")))

(defparameter *shaq-all-scale-categories
  (append  (car *shaq-values-beliefs-question-categories)
          (car *shaq-values-beliefs-question-categories)
          (car *shaq-life-skills-question-categories)
          (car *shaq-interpersonal-skills-question-categories)
          (car *shaq-academic-question-categories)
          (car *shaq-outcome-question-categories)
          (car *shaq-career-major-interest-question-categories)
          )
  "All main scale categories (w/o labels) incl academic, interest, and outcome--NOT id, biog")

(defparameter *shaq-main-scale-categories
  (append  (car *shaq-values-beliefs-question-categories)
          (car *shaq-values-beliefs-question-categories)
          (car *shaq-life-skills-question-categories)
          (car *shaq-interpersonal-skills-question-categories)
          (car *shaq-academic-question-categories)
          (car *shaq-outcome-question-categories)
          )
  "All main scale categories (w/o labels) incl academic and outcome--NOT CAREER interest,  id, or biog")

(defparameter *shaq-HQ-scale-categories
  (append  (car *shaq-values-beliefs-question-categories)
          (car *shaq-values-beliefs-question-categories)
          (car *shaq-life-skills-question-categories)
          (car *shaq-interpersonal-skills-question-categories)
          (car *shaq-outcome-question-categories)
          )
  "All HQ scale categories (w/o labels)--don't incl academic and interest categories, nor  id, biog")

(defparameter  *run-individual-categories-list 
  NIL
  "If this list of Q-CATS  is created by or appended any place in SHAQ, then those questions will be added to the master selected-question-list that is used to run all the SHAQ questions. NOTE: These questions WILL BE RUN NO MATTER WHAT other conditions exist.")


;; SSS START HERE FINISH ADDING SPECIFIC QUEST HELP INFO

;;*SHAQ-QUESTION-VARIABLE-LISTS (qvar lists by categories)
;; FOR FORMAT, READ documnentation string below
;;
;;ddd
(defparameter *SHAQ-question-variable-lists
  #| "MASTER LIST OF QUESTION INFORMATION:
  QVAR FORMAT: :SINGLE-SELECTION: Eg.  ( \"rhlWeigh\" =qvar-name, 
 \"he-LoWeight\"=label;  \"spss-match\"=matched spss-var-name(or nil);\"rhlWeight\"=spssvar  (\"rhlWeight\" \"6\"  \"rhlweighQ\" \"int\"  \"rhlweighAnsArray\" \"questionInstancesArray\" \"frameTitle\" \"frameDimWidth\" \"frameDimHeight\"  \"RealHealth.java\") = old java def list
 (:help nil nil)= help, info, link
  QUESTION-SYMBOLS:  Up to date EXCEPT doesn't include NEW QUESTION SYMBOLS--to make one just take the FIRST string of each list and (my-make-symbol (format nil \"~AQ\" var-string)).  GET-QUEST-VAR-VALUES will return a list of (list  :label label :spss-match spss-match :java-var java-var :qnum qnum :q-name q-name :data-type data-type :answer-panel answer-panel :array array :frame-title frame-title :fr-width  fr-width :fr-height fr-height :java-file java-file). (Also see  Q-questions.lisp)
 FOR QVAR :MULTIPLE-SELECTION FORMAT: 
Eg. (UGOALS =qvar (same as category in MSQs);  First list= primary qvar list= ( \"ugoals\" =qvar string; \"UserGoals\"= qvar label;  NIL nil; (:TITLE (\"SHAQ CARES: Questionnaire Selection-Part 2\")   :QUEST (\"Your Self-Help GOALS: Check ...\")) = frame title, quest   (:help nil nil)= help info,link  NIL;  :MULTI-ITEM))
 first-answer-item-list= ( \"gsuchap\"= ans var =spss-var; \"g-Success-happiness\"= spss-label \"spss match\";  NIL;  (\"More success and happiness.\") = ans text.  (:help nil nil)  :MULTI-ITEM  (:XDATA :scales (HQ)) = xdata that can be used by shaq.
  )... deleted middle items.. Last item=  ( \"gnottake\" \"g-Not taking for self\" \"spss match\" NIL  (\"I'm NOT interested in SHAQ for my own self help.\") (:help nil nil) :MULTI-ITEM
 (:XDATA :scales NIL)))"|#
;;QQQ
;;DO NOT PPRINT THIS--MOVES LISTS TOO FAR IN
 '(
 (ID
 ( "CaseNum"
 "CaseNumOrigFile"
 "spss-match"
 NO-PC-INST-MATCH
 (:help nil nil)
  )
 ( "CaseType"
 ""
 "spss-match"
 NO-PC-INST-MATCH
 (:help nil nil)
  )
 ( "SourceFile"
 "Source files PARTnum"
 NIL
 NO-PC-INST-MATCH
 (:help nil nil)
  )
 ( "FileDate"
 "File Date"
 "spss-match"
 NO-PC-INST-MATCH
 (:help nil nil)
  )
 ( "Instr"
 "Instructor"
 "spss-match"
 NO-PC-INST-MATCH
 (:help nil nil)
  )
 ( "Resr"
 "Researcher"
 "spss-match"
 NO-PC-INST-MATCH
 (:help nil nil)
  )
 ( "Name"
 "Name"
 "spss-match"
 NO-PC-INST-MATCH
 (:help nil nil)
  )
 ( "UserID"
 "UserID"
 "spss-match?"
 NO-PC-INST-MATCH
 (:help nil nil)
  )
 ( "Sex"
 "Sex 1=M 2=F"
 "spss-match"
 NO-PC-INST-MATCH
 (:help nil nil)
  )
 ( "Age"
 "Age"
 "spss-match"
 NO-PC-INST-MATCH
 (:help nil nil)
  )
 ( "Email"
 "Email"
 "spss-match"
 NO-PC-INST-MATCH
 (:help nil nil)
  )
 ( "ZipCode"
 "ZipCode"
 "spss-match"
 NO-PC-INST-MATCH
 (:help nil nil)
  )
 ( "Nation"
 "Nation"
 "spss-match"
 NO-PC-INST-MATCH
 (:help nil nil)
  )
 ( "HrsWork"
 "HrsWork"
 "spss-match"
 NO-PC-INST-MATCH
 (:help nil nil)
  )
 ) 
;;older
#|( "UserType"
 "User characteristics/assessment choices"
 NIL
 (NIL)
 (:TITLE ("SHAQ CARES:
 Selection of Your Questionnaires-Part 1") 
  :QUEST ("Why are you taking SHAQ?"))
 (:help nil nil)
 NIL
 :MULTI-ITEM
  )|#
(UTYPE
 ( "utype"
  "UserType"
 NIL NIL
 (:TITLE ("SHAQ CARES:
 Selection of Your Questionnaires-Part 1") 
  :QUEST ( "  ==> FIND YOUR HAPPINESS QUOTIENT (HQ). 
         Research shows that 75% of people's overall happiness score is accounted for by the SHAQ HQ score (Stevens, 2009). Your HQ values, beliefs, and life skills may be powerful influences on your past, current, and future happiness. 
         HQ factors are CONTROLLABLE factors: you can choose to be happy by improving them. 
         ==> Why are you taking SHAQ?" ))
  (:help nil nil)
 NIL
 :MULTI-ITEM
  )
 ( "twanttho"
 "t-Want thorough assessment"
 "spss-match"
 NIL
 ("Want a thorough assessment and/or my Happiness Quotient (HQ) Score.")
 (:help nil nil)
 :MULTI-ITEM
 (:XDATA :scales (HQ))
  )
 ( "tknowmor"
 "t-Want to know of self"
 "spss match"
 NIL
 ("Want to understand myself better.")
 (:help nil nil)
 NIL
 :MULTI-ITEM
 (:XDATA :scales (HQ))
  )
 ( "twanthel"
 "t-Want help with problem"
 "spss match"
 NIL
 ("Want help with a general problem(s).")
 (:help nil nil)
 :MULTI-ITEM
 (:XDATA :scales (HQ))
  )
 ( "twantspe"
 "t-Want specific help"
 "spss match"
 NIL
 ("Want help for specific problem(s).")
 (:help nil nil)
 :MULTI-ITEM
 (:XDATA :scales NIL)
  )
 ( "texperie"
 "t-Experienced self-help user"
 "spss match"
 NIL
 ("Experienced self help user. ")
 (:help nil nil)
 :MULTI-ITEM
 (:XDATA :scales NIL)
  )
 ( "tprevshaq"
 "t-Previous SHAQ user"
 NIL
 NIL
 ("Previous SHAQ user.")
 (:help nil nil)
 :MULTI-ITEM
 (:XDATA :scales (PREVIOUS-USER))
  )
 ( "wantspq"
 "g-Specific questionnaire"
 "spss match"
 NIL
 ("I want to choose specific questionnaire(s).")
 (:help nil nil)
 :MULTI-ITEM
 (:XDATA :scales (SPECIFIC-QUESTS))
  )
 ( "tu100stu"
 "t-CSULB U100 student"
 "spss match"
 NIL
 ("I'm a CSULB student completing UNIV 100 assignment")
 (:help nil nil)
 :MULTI-ITEM
 (:XDATA :scales (HQ ACAD-LEARNING))
  )
 ( "tcsulbst"
 "t-CSULB other student"
 "spss match"
 NIL
 ("Other CSULB student.")
 (:help nil nil)
 :MULTI-ITEM
 (:XDATA :scales (ACAD-LEARNING))
  )
 ( "tcolstu"
 "t-Other college student"
 "spss match"
 NIL
 ("Other college student. ")
 (:help nil nil)
 :MULTI-ITEM
 (:XDATA :scales (ACAD-LEARNING))
  )
 ( "totherst"
 "t-Other student"
 "spss match"
 NIL
 ("Other type of student.")
 (:help nil nil)
 :MULTI-ITEM
 (:XDATA :scales (ACAD-LEARNING))
  )
 ( "tressub"
 "t-SHAQ research subject"
 NIL
 NIL
 ("Subject  in a SHAQ research project.")
 (:help nil nil)
 :MULTI-ITEM
  (:XDATA :scales NIL)
  )
 ( "tcolfaca"
 "t-College faculty-admin"
 "spss match"
 NIL
 ("College faculty member or administrator.")
 (:help nil nil)
 :MULTI-ITEM
  (:XDATA :scales NIL)
  )
 ( "u-none"
 "t-none of above"
 NIL
 NIL
 ("Other or None of above.")
 (:help nil nil)
 :MULTI-ITEM
  (:XDATA :scales NIL)
  )
 ) 

(UGOALS
 ( "ugoals"
  "UserGoals"
 NIL nil
 (:TITLE ("SHAQ CARES: 
Questionnaire Selection-Part 2")
 :QUEST ("Your Self-Help GOALS:

   * Check ALL that you want SHAQ to help with.

   * Check an HQ BOX if you want your HQ,
       HAPPINESS QUOTIENT Score.
"))
 (:help nil nil)
 NIL
 :MULTI-ITEM
  )
 ( "gsuchap"
 "g-Success-happiness"
 "spss match"
 NIL
 ("More success and happiness.")
 (:help nil nil)
 :MULTI-ITEM
 (:XDATA :scales (HQ))
  )
 ( "gemocop"
 "g-Emotional coping"
 "spss match"
 NIL
 ("Improve coping with emotions.")
 (:help nil nil)
 :MULTI-ITEM
 (:XDATA :scales (HQ))
  )
 ( "gslfest"
 "g-Self-esteem"
 "spss match"
 NIL
 ("More self esteem.")
 (:help nil nil)
 :MULTI-ITEM
(:XDATA :scales (VALUES-THEMES BELIEFS SKILLS-CONFIDENCE))
  )
 ( "gprocrst"
 "g-Procrastination"
 "spss match"
 NIL
 ("More self motivation or less procrastination.")
 (:help nil nil)
 :MULTI-ITEM
 (:XDATA :scales (VALUES-THEMES "siecontr" "sselfman" "semotcop"))
  )
 ( "gtimeman"
 "g-Time Management"
 "spss match"
 NIL
 ("Better time management or control of my life.")
 (:help nil nil)
 :MULTI-ITEM
 (:XDATA :scales ("sselfman" "semotcop"))
  )
 ( "grelat"
 "g-Relationships"
 "spss match"
 NIL
 ("Better marriage or relationships of any type. ")
 (:help nil nil)
 :MULTI-ITEM
 (:XDATA :scales (INTERPERSONAL))
  )
 ( "gmeetpeo"
 "g-Meeting people"
 "spss match"
 NIL
 ("Improve meeting people, dating more, etc..")
 (:help nil nil)
 :MULTI-ITEM
 (:XDATA :scales (INTERPERSONAL))
  )
 ( "glonelyf"
 "g-Loneliness"
 "spss match"
 NIL
 ("Overcoming loneliness, fear of being alone, or fear of rejection.")
 (:help nil nil)
 :MULTI-ITEM
 (:XDATA :scales (HQ))
  )
 ( "gexvalus"
 "g-Explore Values"
 "spss match"
 NIL
 ("Understanding myself and my motivation.")
 (:help nil nil)
 :MULTI-ITEM
 (:XDATA :scales (HQ))
  )
 ( "gdepres"
 "g-Depression"
 "spss match"
 NIL
 ("Coping with unhappiness, apathy, grief, or depression. ")
 (:help nil nil)
 :MULTI-ITEM
 (:XDATA :scales (HQ))
  )
 ( "ganxfear"
 "g-Anxiety-fears"
 "spss match"
 NIL
 ("Coping with stress, anxiety, fear, or guilt.")
 (:help nil nil)
 :MULTI-ITEM
 (:XDATA :scales (HQ))
  )
 ( "gaggrang"
 "g-Aggression-anger"
 "spss match"
 NIL
 ("Coping with anger or aggression.")
 (:help nil nil)
 :MULTI-ITEM
 (:XDATA :scales (HQ))
  )
 ( "gacadsuc"
 "g-Academic success"
 "spss match"
 NIL
 ("Better grades and/or academic success.")
 (:help nil nil)
 :MULTI-ITEM
 (:XDATA :scales ( ACAD-LEARNING ))
  )
 ( "gcomplta1"
 "g-Complete assessent"
 "spss match"
 NIL
 ("HQ score and complete SHAQ INCLUDING academic success & college-major choice (60-110 minutes?).")
 (:help nil nil)
 :MULTI-ITEM
 (:XDATA :scales (HQ ACAD-LEARNING CAREER-INTEREST))
  )
 ( "gcompltanomaj"
 "g-Complete assess-no major"
 "spss match"
 NIL
 ("HQ score and complete SHAQ EXCEPT major choice (45-100 minutes?).")
 (:help nil nil)
 :MULTI-ITEM
(:XDATA :scales (HQ ACAD-LEARNING))
  )
 ( "gcompltanoac"
 "g-Complete assessment-no acad"
 "spss match"
 NIL
 ("HQ score and complete SHAQ EXCEPT academic success & college-major choice (40-90 minutes?).")
 (:help nil nil)
 :MULTI-ITEM
 (:XDATA :scales (HQ ))
  )
 ( "gAcadOnly"
 "g-Academic-Learning Only"
 "spss match"
 NIL
 ("ACADEMIC SUCCESS ONLY (NO HQ or college-major choice).")
 (:help nil nil)
 :MULTI-ITEM
 (:XDATA :scales (ACAD-LEARNING))
  )
 ( "gcarplan"
 "g-Career planning"
 "spss match"
 NIL
 ("Help choosing a major or career (additional 10-20 minutes).")
 (:help nil nil)
 :MULTI-ITEM
 (:XDATA :scales ( CAREER-INTEREST))
  )
 ( "gcaronly"
 "g-Career help only"
 "spss match"
 NIL
 ("I ONLY want help choosing a college major.")
 (:help nil nil)
 :MULTI-ITEM
  (:XDATA :scales (CAREER-INTEREST))
  )
 ( "gnottake"
 "g-Not taking for self"
 "spss match"
 NIL
 ("I'm NOT interested in SHAQ for my own self help.")
 (:help nil nil)
 :MULTI-ITEM
 (:XDATA :scales NIL)
  )
 ) 
;;NEW QVAR ADDED
(SCALESSEL
 ("scalessel"
  "Direct-scales-selected"
  nil  nil  
  (:TITLE ( "Which SHAQ scales or sections do you want to complete?")
   :QUEST  ("If you want your Happiness Quotient (HQ) Score and the most benefit from SHAQ, then check HQ1, HQ2, or HQ3.
       *HQ1 includes all main scales.
       *HQ2 also includes the academic-success scales.
       *HQ3 also includes the career/academic-major interest scales.

   If you do NOT want your Happiness Quotient (HQ) Score and you DO want to select only one or more SHAQ scales/parts, then SELECT the SCALE(S) you want to complete. "))
  (:help nil nil)
  NIL
  :MULTI-ITEM
  )
 ("xhqonly"
  "sel-HQonly"
  nil nil 
  ("HQ1.HAPPINESS QUOTIENT Scales (Required for HQ)")
  (:help nil nil)
  :MULTI-ITEM
  (:XDATA :scales (HQ))
  )
 ("xhq-acad"
  "sel-HQ-ACAD"
  nil nil 
  ("HQ2.HQ Scales + ACADEMIC SUCCESS Scales")
  (:help nil nil)
  :MULTI-ITEM
  (:XDATA :scales (HQ ACAD-LEARNING ))
  )
 ("xhq-acad-car"
  "sel-HQ-ACAD"
  nil nil 
  ("HQ2.HQ Scales + ACAD SUCCESS + CAREER INTEREST")
  (:help nil nil)
  :MULTI-ITEM
  (:XDATA :scales (HQ ACAD-LEARNING CAREER-INTEREST))
  )
 ("xvalues-th"
  "sel-ValuesThemes"
  nil nil 
  ("1.Life Themes and Values Scales")
  (:help nil nil)
  :MULTI-ITEM
  (:XDATA :scales (VALUES-THEMES))
  )
 ("xworldview"
  "sel-Worldview"
  nil nil 
  ("2.World View Beliefs Scale")
  (:help nil nil)
  :MULTI-ITEM
  (:XDATA :scales ("sworldview" "sgrfears"))
  )
 ("xsel-f-bels"
  "sel-SelfLifeBel"
  nil nil 
  ("3.Self and Life Beliefs Scales")
  (:help nil nil)
  :MULTI-ITEM
  (:XDATA :scales ("stbslfwo"  "sethbel"))
  )
 ("xiecontrol"
  "sel-IEcontrol"
  nil nil 
  ("4.Internal vs. External Control of Your Life (IE) Scale")
  (:help nil nil)
  :MULTI-ITEM
  (:XDATA :scales ("siecontr"))
  )
 ("xselfconf"
  "sel-SelfConfidence"
  nil nil 
  ("5.Self-Confidence and Skills Scale")
  (:help nil nil)
  :MULTI-ITEM
  (:XDATA :scales ("sslfconf"))
  )
 ("xselfman"
  "sel-SelfManagmt"
  nil nil 
  ("6.Self-Management Skills/Habits Scale")
  (:help nil nil)
  :MULTI-ITEM
  (:XDATA :scales ("sselfman"))
  )
 ("xemotcop"
  "sel-emotcope"
  nil nil 
  ("7.Emotional Coping Skills/Habits Scale")
  (:help nil nil)
  :MULTI-ITEM
  (:XDATA :scales ("semotcop"))
  )
 ("xinterpers"
  "sel-interpers"
  nil nil 
  ("R1.INTERPERSONAL: Intimacy/Assertion/Problem-Solving")
  (:help nil nil)
  :MULTI-ITEM
  (:XDATA :scales (INTERPERSONAL))
  )
 #|          "R1.Assertion and Conflict-Resolution Skills/Habits" 
          "R2.Intimacy Skills/Habits" 
          "R3.Independent-Intimacy in Relationships Skills/Habits" 
          "R4.Relationship Role Beliefs/Habits" |#
 ("xacadlearn"
  "sel-Acad-Learn"
  nil nil 
  ("L1.LEARNING and ACADEMIC SUCCESS")
  (:help nil nil)
  :MULTI-ITEM
  (:XDATA :scales (ACAD-LEARNING))
  )

#|          "L1.Learning and Study Skills Scale"   
          "L2.Student Academic Motivation Scale"   
          "L3.Academic Major and Career Interest Scales" |#
 ("xcarint"
  "sel-career-int"
  nil nil 
  ("C1.CAREER or ACADEMIC MAJOR INTEREST")
  (:help nil nil)
  :MULTI-ITEM
  (:XDATA :scales (CAREER-INTEREST))
  )
 ("xsehappy"
  "sel-outc-happy"
  nil nil 
  ("O1.Overall Happiness Scale")
  (:help nil nil)
  :MULTI-ITEM
  (:XDATA :scales ("sehappy"))
  )
  ("xsrdepres"
  "sel-outc-depres"
  nil nil 
  ("O2.Depression Scale")
  (:help nil nil)
  :MULTI-ITEM
  (:XDATA :scales ("srdepres"))
  )
 ("xsranxiet"
  "sel-outc-anxiety"
  nil nil 
  ("O3.Anxiety Scale")
  (:help nil nil)
  :MULTI-ITEM
  (:XDATA :scales ("sranxiet"))
  )
 ("xsrangagg"
  "sel-outc-anger-aggr"
  nil nil 
  ("O4.Anger and Aggression Scale")
  (:help nil nil)
  :MULTI-ITEM
  (:XDATA :scales ("srangagg"))
  )
#|          "O5.Relationship Outcomes Scale" 
          "O6.Health Habits and Health Scale"|#
 ;;end scalessel
 )

(BIO3EDUC
 ( "bio3educ"
 "b-Highest education completed"
 "spss-match"
 ("bio3educ")
 ("bio3educ" "2" "bio3educQ" "int" "bio3educAnsArray"  "frameTitle" "frameDimWidth" "frHeight12"  "PersonBasicData.java")
 (:help nil nil)
 :SINGLE
 )
 ( "biohsgpa"
 "b-High school GPA"
 "spss-match"
 ("bioHSGPA" "bioCollegeGPA")
 ("biohsgpa" "2" "biohsgpaQ" "int" "GPAAnsArray"  "frameTitle" "frameDimWidth" "frHeight12"  "PersonBasicData.java")
 (:help nil nil)
 :SINGLE
  )
#| ( "rpecommi"
 "re-Degree of commit to 3 mo romantic"
 "spss-match"
 "rpeCommit"
 ("rpeCommit" "7" "rpecommiQ" "int" "rpeCommitAnsArray" "frameTitle" "frameDimWidth" "frHeight12"  "RealPeople.java")
 (:help nil nil)
  )|#
;;AAA
 ( "biocolle"
 "b-College GPA"
 "spss-match"
 ("bioCollegeGPA")
 ("biocolle" "3" "biocolleQ" "int" "GPAAnsArray"  "frameTitle" "frameDimWidth" "frHeight12"  "PersonBasicData.java")
 (:help nil nil)
 :SINGLE
  )
 )
(BIO4JOB
 ( "bio4job"
  "b-Primary occupation"
  "spss-match"
  ("bio4job")
  (:QUEST ("Select ALL of the following that best describe your primary OCCUPATION. 

   => If you have multiple occupations, choose all of them.") :TITLE ("YOUR OCCUPATION"))
  (:help nil nil)
  NIL
  :MULTI-ITEM
  )
 ( "student"
  "1-Student"
  "spss-match"
  NIL
  ("Student")
  NIL
  (:help nil nil)
  :MULTI-ITEM
  )
 ( "manager"
  "2-Manager"
  "spss-match" NIL
  ("Manager/executive")
  NIL
  (:help nil nil)
  :MULTI-ITEM
  )
 ( "propeop"
  "3-People professional"
  "spss-match"
  NIL
  ("People-related professional")
  (:help nil nil)
  :MULTI-ITEM
  )
 ( "protech"
  "4-Technical professional"
  "spss-match" nil
  ("Technical Professional")
  NIL
  (:help nil nil)
  :MULTI-ITEM
  )
 ( "consulta"
  "5-Consultant"
  NIL NIL
  ("Professional Consultant")
  NIL
  (:help nil nil)
  :MULTI-ITEM
  )
 ( "educator"
  "6-Educator"
  "spss-match" NIL
  ("Educator")
  NIL
  (:help nil nil)
  :MULTI-ITEM
  )
 ( "sales"
  "7-Sales"
  "spss-match" NIL
  ("Sales")
  NIL
  (:help nil nil)
  :MULTI-ITEM
  )
 ( "technici"
  "8-Other technical"
  "spss-match" NIL
  ("Technician")
  NIL
  (:help nil nil)
  :MULTI-ITEM
  )
 ( "clerical"
  "9-Clerical"
  "spss-match" NIL
  ("Clerical")
  NIL
  (:help nil nil)
  :MULTI-ITEM
  )
 ( "service"
  "10-Service"
  "spss-match" NIL
  ("Service employee")
  NIL
  (:help nil nil)
  :MULTI-ITEM
  )
 
 ( "ownbus10"
  "11-Own business"
  "spss-match" NIL
  ("Own business +10 employees")
  NIL
  (:help nil nil)
  :MULTI-ITEM
  )
 ( "othrsfem"
  "12-other occupation"
  "spss-match" NIL
  ("Other self-employed")
  NIL
  (:help nil nil)
  :MULTI-ITEM
  )
 ("other" 
  "13-Other" "spss-match"nil
  ("Other")
  NIL
  (:help nil nil)
  :MULTI-ITEM
  )
 :MULTI-ITEM
 ) 

(BIO7LANG
 ( "bio7lang"
 "b-Fluent languages"
 "spss-match" 
 ("bio7lang")
 (:TITLE ("LANGUAGE(S) YOU SPEAK")
 :QUEST ("Check ALL the languages you SPEAK FLUENTLY"))
 (:help nil nil)
 NIL
 :MULTI-ITEM
  )
 ( "lenglish"
 "lenglish"
 "spss-match" NIL
 ("English")
 (:help nil nil)  :MULTI-ITEM
  )
 ( "lspanish"
 "lspanish"
 "spss-match" NIL
 ("Spanish")
 (:help nil nil)  :MULTI-ITEM
  )
 ( "lvietnam"
 "lvietnam"
 "spss-match" NIL
 ("Vietnamese")
 (:help nil nil)  :MULTI-ITEM
  )
 ( "lcambodn"
 "lcambodn"
 "spss-match" NIL
 ("Cambodian")
 (:help nil nil)  :MULTI-ITEM
  )
 ( "lchinese"
 "lchinese"
 "spss-match" NIL
 ("Chinese" )
 (:help nil nil)  :MULTI-ITEM
  )
 ( "lkorean"
 "lkorean"
 "spss-match" NIL
 ("Korean")
 (:help nil nil)  :MULTI-ITEM
  )
 ( "lportugu"
 "lportugu"
 "spss-match" NIL
 ("Portuguese")
 (:help nil nil)  :MULTI-ITEM
  )
 ( "lgerman"
 "lgerman"
 "spss-match" NIL
 ("German")
 (:help nil nil)  :MULTI-ITEM
  )
 ( "lfrench"
 "lfrench"
 "spss-match" NIL
 ("French")
 (:help nil nil)  :MULTI-ITEM
  )
( "lmideast"
 "Middle-Eastern"
 "spss-match" NIL
 ("Middle-Eastern")
 (:help nil nil)  :MULTI-ITEM
  )
 ( "lothrasn"
 "lothrasn"
 "spss-match" NIL
 ("Other Asian")
 (:help nil nil)  :MULTI-ITEM
  )
 ( "lothreur"
 "lothreur"
 "spss-match" NIL
 ("Other European")
 (:help nil nil)  :MULTI-ITEM
  )
 ( "lother"
 "lother"
 "spss-match" NIL
 ("Other")
 (:help nil nil)  :MULTI-ITEM
  )
 :MULTI-ITEM
 ) 

(BIO1ETHN
 ( "bio1ethn"
 "Primary Ethnic Group"
 "spss-match" NIL
 ( :TITLE ("ETHNIC GROUP")
 :QUEST ("Which is your PRIMARY ETHNIC GROUP origin
    (May choose multiple if mixed ethnicity). "))
 (:help nil nil)
 NIL
 :MULTI-ITEM
  )
 ( "enortham"
 "enortham"
 "spss-match" NIL
 ("North America")
 (:help nil nil)  :MULTI-ITEM
  )
 ( "eafrica"
 "eafrica"
 "spss-match" NIL
 ("Africa")
 (:help nil nil)  :MULTI-ITEM
  )
 ( "enoreur"
 "enoreur"
 "spss-match" NIL
 ("Northern Europe")
 (:help nil nil)  :MULTI-ITEM
  )
 ( "esoueur"
 "esoueur"
 "spss-match" NIL
 ("Southern Europe")
 (:help nil nil)  :MULTI-ITEM
  )
 ( "mideast"
 "Middle-Eastern"
 "spss-match" NIL
 ("Middle-Eastern")
 (:help nil nil)  :MULTI-ITEM
  )
 ( "ecambodn"
 "ecambodn"
 "spss-match" NIL
 ("Cambodia")
 (:help nil nil)  :MULTI-ITEM
  )
 ( "echina"
 "echina"
 "spss-match" NIL
 ("China")
 (:help nil nil)  :MULTI-ITEM
  )
 ( "ekorea"
 "ekorea"
 "spss-match" NIL
 ("Korea")
 (:help nil nil)  :MULTI-ITEM
  )
 ( "ejapan"
 "ejapan"
 "spss-match" NIL
 ("Japan")
 (:help nil nil)  :MULTI-ITEM
  )
 ( "evietnam"
 "evietnam"
 "spss-match" NIL
 ("Vietnam")
 (:help nil nil)  :MULTI-ITEM
  )
 ( "eothrasn"
 "eothrasn"
 "spss-match" NIL
 ("Other Asian")
 (:help nil nil)  :MULTI-ITEM
  )
 ( "emexico"
 "emexico"
 "spss-match" NIL
 ("Mexico")
 (:help nil nil)  :MULTI-ITEM
  )
 ( "ecentram"
 "ecentram"
 "spss-match" NIL
 ("Central America")
 (:help nil nil)  :MULTI-ITEM
  )
 ( "esoutham"
 "esoutham"
 "spss-match" NIL
 ("South America")
 (:help nil nil)  :MULTI-ITEM
  )
 ( "epacific"
 "epacific"
 "spss-match" NIL
 ("Pacific Island")
 (:help nil nil)  :MULTI-ITEM
  )
 ( "eother"
 "eother"
 "spss-match" NIL
 ("Other")
 (:help nil nil)  :MULTI-ITEM
  )
 :MULTI-ITEM
 ) (
 BIORELAF
 ( "biorelaf"
 "bioRelAffiliation"
 "spss-match" nil
 ( :TITLE ("RELIGIOUS PREFERENCE")
  :QUEST ("What is your primary RELIGIOUS preference? 
   (May choose multiple.) "))
 (:help nil nil) 
  NIL :MULTI-ITEM
  )
 ( "catholic"
 "Catholic"
 "spss-match" NIL
 ("Catholic")
 (:help nil nil)
  )
 ( "jewish"
 "Jewish"
 "spss-match" NIL
 ("Jewish")
 (:help nil nil)
  )
 ( "latterd"
 "Latter Day Saints"
 "spss-match" NIL
 ("Latter Day Saints--Morman")
 (:help nil nil)
  )
 ( "buddhist"
 "Buddhist"
 "spss-match" NIL
 ("Buddhist" )
 (:help nil nil)
  )
( "islam"
 "Islam-Muslim"
 "spss-match" NIL
 NIL
 (:help nil nil)
  )
 ( "baptist"
 "Baptist"
 "spss-match" NIL
 ("Protestant--Baptist")
 (:help nil nil)
  )
 ( "methodst"
 "United Methodist"
 "spss-match" NIL
 ("Protestant--United Methodist")
 (:help nil nil)
  )
 ( "episcop"
 "Episopalian"
 "spss-match" NIL
 ("Protestant--Episcopal")
 (:help nil nil)
  )
 ( "lutheran"
 "Lutheran"
 "spss-match" NIL
 ("Protestant--Lutheran")
 (:help nil nil)
  )
 ( "presbyte"
 "Presbyterian"
 "spss-match" NIL
 ("Protestant--Presbyterian")
 (:help nil nil)
  )
 ( "proliber"
 "Other liberal"
 "spss-match" NIL
 ("Protestant--Other Liberal")
 (:help nil nil)
  )
 ( "profunda"
 "Other fundamentalist"
 "spss-match" NIL
 ("Protestant--Other Fundamentalist or Conservative")
 (:help nil nil)
  )
 ( "noaffil"
 "No affiliation"
 "spss-match" NIL
 ("No affiliation")
 (:help nil nil)
  )
 ( "agnostic"
 "Agnostic"
 "spss-match" NIL
 ("Agnostic or Atheist")
 (:help nil nil)
  )
 ( "othrnoan"
 "Other"
 "spss-match" NIL
 ("Other or prefer not to answer")
 (:help nil nil)
  )
 :MULTI-ITEM
 ) 

;;NOTE sFamily is a special frame, so title, quest etc REDUNDANT, but used in shaq results lookup. 
(SFAMILY
 ( "sFamily"
  "SibPosit-Parnts"
 NIL nil
 (:TITLE ("Information about your family situation")
 :QUEST ("What type of family were you primarily raised in?"))
 (:help nil nil)
 NIL
 :MULTI-SPECIAL-FRAME
  ;;the name of the frame interface
 frame-family-info
  )
 ( "OlderBrosN"
 "NumOlderBros"
 nil
 NIL
 ("Your number of OLDER Brothers (0 to ?)")
 (:help nil nil)
 :MULTI-ITEM)
 ( "OlderSisN"
 "NumOlderSis"
 nil
 NIL
 ("Your number of OLDER Sisters (0 to ?)")
 (:help nil nil)
 :MULTI-ITEM)
 ( "YoungerBrosN"
 "NumYoungerBros"
 nil
 NIL
 ("Your number of YOUNGER Brothers (0 to ?)")
 (:help nil nil)
 :MULTI-ITEM)
( "YoungerSisN"
 "NumYoungerSis"
 nil
 NIL
 ("Your number of YOUNGER Sisters (0 to ?)")
 (:help nil nil)
 :MULTI-ITEM)
( "Raised2Parents"
 "Raised2Parents"
 nil
 NIL
 ("Raised primarily by 2 PARENTS")
 (:help nil nil)
 :MULTI-ITEM)
( "SingleFparent"
 "SingleFparent"
 nil
 NIL
 ("Raised primarily by SINGLE MOM")
 (:help nil nil)
 :MULTI-ITEM)
 ( "SingleMparent"
 "SingleMparent"
 nil
 NIL
 ("Raised primarily by SINGLE DAD")
 (:help nil nil)
 :MULTI-ITEM)
( "RaisedNoParents"
 "RaisedNoParents"
 nil
 NIL
 ("Not raised by my parents")
 (:help nil nil)
 :MULTI-ITEM)
( "RaisedOther"
 "RaisedOther"
 nil
 NIL
 ("Raised by other than parents")
 (:help nil nil)
 :MULTI-ITEM)
;;end sFamily
)

;; NO-SCALE
(NO-SCALE
 ( "bio5inco"
  "b-Highest personal income"
  "spss-match" ("bio5income")
  ("bio5inco" 11 "bio5incoQ" "int" "bio5incoAnsArray"  "frameTitle" "frameDimWidth" "frameDimHeight" "PersonBasicData.java")
  (:help nil nil)
  :SINGLE
  )
 )

;; BASIC  STUDENT INFORMATION ---------------------------------------

(
 STUCOLLE
 ( "stucolle"
 "st-College attending"
 "spss-match" nil
 (:TITLE ("Education-Related Questions")
  :QUEST ("Check ALL the colleges that you currently attend:"))

#| WAS ("stuCollegeAttending" 2 STUCOLLEGEATTENDINGQ "int" "" BESTANSWERLABEL 13 NONSTANDARD STUCOLLEGEATTENDINGANSWERARRAY VALUES13TO1ARRAY "single" FRHEIGHT13)|#
 (:help nil nil)
 nil
 :MULTI-ITEM
  )
 ( "cocsulb"
 "CSULB"
 "spss-match" NIL
 ("California State University, Long Beach")
 (:help nil nil)
  )
 ( "cccsu"
 "CSU Campus"
 "spss-match" NIL
 ("Another Calif State University campus")
 (:help nil nil)
  )
 ( "coucal"
 "UC Campus"
 "spss-match" NIL
 ("Technical school")
 (:help nil nil)
  )
 ( "coopublc"
 "Other Public U"
 "spss-match" NIL
 ("A University of California campus")
 (:help nil nil)
  )
 ( "coprivca"
 "CA Private U"
 "spss-match" NIL
 ("A public university in another state")
 (:help nil nil)
  )
 ( "coprivot"
 "Other Private U"
 "spss-match" NIL
 ("Private university in California")
 (:help nil nil)
  )
 ( "cocacomc"
 "CA Com Col"
 "spss-match" NIL
 ("Community college in California")
 (:help nil nil)
  )
 ( "coothcc"
 "Other Com Col"
 "spss-match" NIL
 ("College or university in another nation")
 (:help nil nil)
  )
 ( "coothnat"
 "Other Nation Col"
 "spss-match" NIL
 ("College or university in another nation")
 (:help nil nil)
  )
 ( "coprgrad"
 "NonAff Grad Sch"
 "spss-match" NIL
 ("Graduate school independent of a college")
 (:help nil nil)
  )
 ( "cotech"
 "Tech Col"
 "spss-match" NIL
 ("Technical school")
 (:help nil nil)
  )
 ( "highsch"
 "HS"
 "spss-match" NIL
 ("High school")
 (:help nil nil)
  )
 ( "coother"
 "Other"
 "spss-match" NIL
 ("Unsure or Other")
 (:help nil nil)
  )
 ) 
(
 STUMAJOR
 ( "stumajor"
 "st-Major study area"
 "spss-match" nil
 (:TITLE ("Type of Academic Major")
  :QUEST ("What type(s) of academic major(s) do you have?")
  )
#| ("stuMajorType" 5 STUMAJORTYPEQ "int" "" BESTANSWERLABEL 14 NONSTANDARD STUMAJORTYPEANSWERARRAY VALUES14TO1ARRAY "single" FRHEIGHT13)|#
 (:help nil nil) nil
 :MULTI-ITEM
  )
 ( "mlibart"
 "Lib Art major"
 "spss-match" NIL
 ("Liberal arts (a language, history, etc.)")
 NIL
 (:help nil nil)
 :MULTI-ITEM
  )
 ( "msocsci"
 "Soc Sci major"
 "spss-match" NIL
 ("Social or behavioral science (psychology, sociology, etc.)")
 NIL
 (:help nil nil)
 :MULTI-ITEM
  )
 ( "mbiolsci"
 "Bio Sci major"
 "spss-match" NIL
 ("Biological science")
 NIL
 (:help nil nil)
 :MULTI-ITEM
  )
 ( "mart"
 "Art major"
 "spss-match" NIL
 ("Art")
 NIL
 (:help nil nil)
 :MULTI-ITEM
  )
 ( "mnatsci"
 "Nat Sci major"
 "spss-match" NIL
 ("Other natural science (physics, chemistry, etc.)")
 NIL
 (:help nil nil)
 :MULTI-ITEM
  )
 ( "mbus"
 "Bus major"
 "spss-match" NIL
 ("Business")
 NIL
 (:help nil nil)
 :MULTI-ITEM
  )
 ( "menginr"
 "Engr major"
 "spss-match" NIL
 ("Engineering")
 NIL
 (:help nil nil)
 :MULTI-ITEM
  )
 ( "meducat"
 "Educ major"
 "spss-match" NIL
 ("Education")
 NIL
 (:help nil nil)
 :MULTI-ITEM
  )
 ( "mmedical"
 "Medical major"
 "spss-match" NIL
 ("Medical or health-related")
 NIL
 (:help nil nil)
 :MULTI-ITEM
  )
 ( "motcompu"
 "Computer major"
 "spss-match" NIL
 ("Other computer-related")
 NIL
 (:help nil nil)
 :MULTI-ITEM
  )
 ( "mothtech"
 "Other tech majo"
 "spss-match" NIL
 ("Other technical")
 NIL
 (:help nil nil)
 :MULTI-ITEM
  )
 ( "mrecrpe"
 "Recr-PE major"
 "spss-match" NIL
 ("Recreation or physical education-related")
 NIL
 (:help nil nil)
 :MULTI-ITEM
  )
 ( "mdoesna"
 "Does not apply"
 "spss-match" NIL
 ("Does not apply")
 NIL
 (:help nil nil)
 :MULTI-ITEM
  )
 ( "mundecid"
 "Undecided"
 "spss-match" NIL
 ("Undecided or don't know")
 NIL
 (:help nil nil)
 :MULTI-ITEM
  )
 )
;;BBB
 (
 STUSPECI
 ( "stuspeci"
 "st-Special status"
 "spss-match" NIL
 ( :TITLE ("Student Situation")
 :QUEST ("Check ALL that apply to you."))
 (:help nil nil) nil 
 :MULTI-ITEM
  )
 ( "strancc"
 "Com college transfer"
 "spss-match" NIL
 ("Transfered from a community college to 4-year college")
 NIL
 (:help nil nil)
 :MULTI-ITEM
  )
 ( "stran4yr"
 "4yr college transfer"
 "spss-match" NIL
 ("Transfered from another 4-year college")
 NIL
 (:help nil nil)
 :MULTI-ITEM
  )
 ( "sadultre"
 "Returning adult"
 "spss-match" NIL
 ("Adult returning to school")
 NIL
 (:help nil nil)
 :MULTI-ITEM
  )
 ( "seop"
 "EOP"
 "spss-match" NIL
 ("EOP Student")
 NIL
 (:help nil nil)
 :MULTI-ITEM
  )
 ( "susimmig"
 "Immigrant"
 "spss-match" NIL
 ("U.S. Immigrant")
 NIL
 (:help nil nil)
 :MULTI-ITEM
  )
 ( "svisa"
 "Visa student"
 "spss-match" NIL
 ("Here on student Visa")
 NIL
 (:help nil nil)
 :MULTI-ITEM
  )
 ( "shonor"
 "Honors program"
 "spss-match" NIL
 ("In Honors program")
 NIL
 (:help nil nil)
 :MULTI-ITEM
  )
 ( "svisastu"
 "Visa student"
 "spss-match" NIL
 ("Visa Student")
 NIL
 (:help nil nil)
 :MULTI-ITEM
  )
 ( "sdisabld"
 "Disabled student"
 "spss-match" NIL
 ("Disabled student")
 NIL
 (:help nil nil)
 :MULTI-ITEM
  )
 ( "soutofst"
 "Out-of-state student"
 "spss-match" NIL
 ("Out of state student")
 NIL
 (:help nil nil)
 :MULTI-ITEM
  )
 ( "smilitar"
 "Military-active or vet"
 "spss-match" NIL
 ("Military--active or veteran")
 NIL
 (:help nil nil)
 :MULTI-ITEM
  )
 ( "sathlete"
 "Student athlete"
 "spss-match" NIL
 ("Athlete on college team")
 NIL
 (:help nil nil)
 :MULTI-ITEM
  )
 ( "snone"
 "None of above"
 "spss-match" NIL
 ("None of above")
 NIL
 (:help nil nil)
 :MULTI-ITEM
  )
 ) (
 STURESID
 ( "sturesid"
 "st-Residence"
 "spss-match" nil
 (:TITLE ("Your Living Situation")
 :QUEST ("Which item(s) best describe(s) your living situation?")) 
 (:help nil nil)  nil
 :MULTI-ITEM
  )
 ( "rsinwpar"
 "Live with parents"
 "spss-match" NIL
 ("SINGLE--Live WITH PARENTS")
 NIL
 (:help nil nil)
 :MULTI-ITEM
  )
 ( "rsindorm"
 "Live in dorms"
 "spss-match" NIL
 ("SINGLE--Live IN DORMS")
 NIL
 (:help nil nil)
 :MULTI-ITEM
  )
 ( "rsinwchl"
 "Single with children"
 "spss-match" NIL
 ("SINGLE caring for children")
 NIL
 (:help nil nil)
 :MULTI-ITEM
  )
 ( "rsinothr"
 "Single other"
 "spss-match" NIL
 ("SINGLE--Other situation")
 NIL
 (:help nil nil)
 :MULTI-ITEM
  )
 ( "rmarwoch"
 "Married without children"
 "spss-match" NIL
 ("MARRIED without children")
 NIL
 (:help nil nil)
 :MULTI-ITEM
  )
 ( "rmarwchl"
 "Married with children"
 "spss-match" NIL
 ("MARRIED with children")
 NIL
 (:help nil nil)
 :MULTI-ITEM
  )
 ( "rmarlike"
 "Marital like situation"
 "spss-match" NIL
 ("MARITAL-LIKE RELATIONSHIP")
 NIL
 (:help nil nil)
 :MULTI-ITEM
  )
 ( "rother"
 "Other"
 "spss-match" NIL
 ("OTHER")
 NIL
 (:help nil nil)
 :MULTI-ITEM
  )
 ) (
 STU-DATA
 ( "stpared"
 "b-Highest parents educ level"
 "spss-match" NIL
 ("stuParentsEduc" "1" "STUPARENTSEDUCQ" "int" STUPARENTSEDUC "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "StudentBasicData.java")
 (:help nil nil)
  )
 ( "stuclass"
 "st-Class level"
 "spss-match" NIL
 ("stuClassLevel" "3" "STUCLASSLEVELQ" "int" STUCLASSLEVEL "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "StudentBasicData.java")
 (:help nil nil)
  )
 ( "studegre"
 "st-Educ objective level"
 "spss-match" NIL
 ("stuDegreeObjective" 4 STUDEGREEOBJECTIVEQ "int" STUDEGREEOBJECTIVE "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "StudentBasicData.java")
 (:help nil nil)
  )
 ( "stusemes"
 "st-Units this semester"
 "spss-match" NIL
 ("stuSemesterUnits" 7 stusemesterunitsq "int" UNITS "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "StudentBasicData.java")
 (:help nil nil)
  )
 ( "stmajgpa"
 "st-Major GPA"
 "spss-match" NIL
 ("stuMajorGPA" 10 "stumajorgpaq" "int" GPA8AnsArray "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "StudentBasicData.java")
 (:help nil nil)
  )
 ( "stacadst"
 "st-AcadStatus"
 "spss-match" NIL
 ("stuAcademicStatus" 11 stuacademicstatusq "int" STUACADEMICSTATUS "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "StudentBasicData.java")
 (:help nil nil)
  )
 ) 
(STGPATRE
 ( "stgpatre"
 "st-GPA Trends"
 NIL NIL
 (:TITLE ("Education-Related Questions")
  :QUEST ("What best describes your GRADE AVERAGE TREND or changes?"))
#| ("stuGPATrend" 12 STUGPATRENDQ "int" STUGPATREND "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "StudentBasicData.java")|#
 (:help nil nil) NIL 
  :MULTI-ITEM
  )
 ( "trconhi"
 "Consistently high"
 "spss-match" NIL
 ("CONSISTENTLY HIGH (3.0-4.0)")
 NIL
 (:help nil nil)
 :MULTI-ITEM
  )
 ( "trincryr"
 "Increased after absence"
 "spss-match" NIL
 ("INCREASED significantly after an ABSENCE from school")
 NIL
 (:help nil nil)
 :MULTI-ITEM
  )
 ( "trincyru"
 "Increased past year or so"
 "spss-match" NIL
 ("INCREASED significantly within that past year or so")
 NIL
 (:help nil nil)
 :MULTI-ITEM
  )
 ( "trincyrs"
 "Increased a few sems ago"
 "spss-match" NIL
 ("INCREASED significantly a few semesters ago")
 NIL
 (:help nil nil)
 :MULTI-ITEM
  )
 ( "trgradin"
 "Gradually increased"
 "spss-match" NIL
 ("Was LOWER, but has GRADUALLY INCREASED.")
 NIL
 (:help nil nil)
 :MULTI-ITEM
  )
 ( "trconave"
 "Consistently average"
 "spss-match" NIL
 ("CONSISTENTLY AVERAGE (2.0-3.0)")
 NIL
 (:help nil nil)
 :MULTI-ITEM
  )
 ( "trdecyru"
 "Decreased a few sems ago"
 "spss-match" NIL
 ("DECREASED significantly a few semesters ago")
 NIL
 (:help nil nil)
 :MULTI-ITEM
  )
 ( "trdecyr"
 "Decreased past year or so"
 "spss-match" NIL
 ("DECREASED significantly within the past year or so")
 NIL
 (:help nil nil)
 :MULTI-ITEM
  )
 ( "trconlow"
 "Consistently low"
 "spss-match" NIL
 ("CONSISTENTLY LOW (less than 2.0)")
 NIL
 (:help nil nil)
 :MULTI-ITEM
  )
 ( "trupandd"
 "Up and down dramatically"
 "spss-match" NIL
 ("UP and DOWN dramatically in recent years")
 NIL
 (:help nil nil)
 :MULTI-ITEM
  )
 ( "trother"
 "Other"
 "spss-match" NIL
 ("Other")
 NIL
 (:help nil nil)
 :MULTI-ITEM
  )
 ) (
 STUAPT
 ( "stuverba"
 "st-Verbal aptitude scores"
 "spss-match" NIL
 ("stuVerbalApt" 14 "stuverbalaptQ" "int" PERCENTILE10 "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "StudentBasicData.java")
 (:help nil nil)
  )
 ( "stumatha"
 "st-Math aptitude scores"
 "spss-match" NIL
 ("stuMathApt" 15 "stumathaptQ" "int" PERCENTILE10 "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "StudentBasicData.java")
 (:help nil nil)
  )
 ) (
 STUFEEL
 ( "stulookf"
 "sa-Look forward to campus"
 "spss-match" 
 ("stuLookForward")
 ("stuLookForward" "21" "stuLookForwardQ" "int" "LikeMe7" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "StudentBasicData.java")
 (:help nil nil)
  )
 ( "stulikei"
 "sa-Like instructors-can talk"
 "spss-match"
 ("stuLikeInstr")
("stuLikeInstr" "22" "stuLikeInstrQ" "int" "LikeMe7" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "StudentBasicData.java")
 (:help *CONNECT-COL  na)
  )
 ( "stucomfo"
 "sa-Comfortable w/ area fac & students"
 "spss-match"
 ("stuComfortable" )
("stuComfortable" "23" "stuComfortableQ" "int" "LikeMe7" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "StudentBasicData.java")
 (:help nil nil)
  )
 ( "stufrien"
 "sa-Current school friends"
 "spss-match"
 ("stuFriends")
("stuFriends" "27" "stuFriendsQ" "int" "LikeMe7" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "StudentBasicData.java")
 (:help nil nil)
  )
 ( "stuextmo"
 "sa-NotParents expectations main motive"
 "spss-match"
 ("stuExtMotiv")
("stuExtMotiv" "25" "stuExtMotivQ" "int" "LikeMe7Reverse" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "StudentBasicData.java")
 (:help nil nil)
  )
 ( "stuenjoy"
 "sa-Enjoy learning, classes, homework"
 "spss-match"
 ("stuEnjoyLearn")
 ("stuEnjoyLearn" "21" "stuEnjoyLearnQ" "int" "LikeMe7" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "StudentBasicData.java")
 (:help nil nil)
  )
 ( "stucaree"
 "sa-Career-job main motive"
 "spss-match"
 ("stuCareerMotiv")
 ("stuCareerMotiv" "25" "stuCareerMotivQ" "int" "LikeMe7" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "StudentBasicData.java")
 (:help nil nil)
  )
 ( "stuMoneyNew"
 "sa-Money main motive"
 NIL
 NIL
 ("stuMoneyNew" "25" "stuMoneyNewQ" "int" "LikeMe7" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "StudentBasicData.java")
 (:help nil nil)
  )
#|OLD VERSION( "stumoney"
 "sa-NotMoney main motive"
 "spss-match"
 ("stuMoneyMotiv")
 ("stuMoneyMotiv" "25" "stuMoneynewQ" "int" "LikeMe7" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "StudentBasicData.java")
 (:help nil nil)
  )|#
 ( "stuconfu"
 "sa-NotConfused why I am in college"
 "spss-match"
 ( "stuConfused")
 ("stuConfused" "21" "stuConfusedQ" "int" "LikeMe7Reverse" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "StudentBasicData.java")
 (:help nil nil)
  )
#|( "stpared"
 "b-Highest parents educ level"
 "spss-match" NIL
 ("stuParentsEduc" "1" "STUPARENTSEDUCQ" "int" STUPARENTSEDUC "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "StudentBasicData.java")
 (:help nil nil)
  )|#
 ("stufinde"
 "sa-Financial support"
 "spss-match"
 ("stuFinDepend")
  ("stuFinDepend" "19" "stuFinDependQ" "int"  stuFinDepend  "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight StudentBasicData2.java")     
 (:help nil nil)
  )
 ( "stueactr"
 "sa-Enjoying life and fun in school"
 "spss-match"
 ("stuEACTREGfun")
 ("stuEACTREGfun" "6" "stuEACTREGfunQ" "int" "LikeMe7" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "StudentBasicData.java")
 (:help nil nil)
  )
 ( "sthapcol"
 "sa-Overall college exper happiness"
 "spss-match"
 ("stuHappyCollege")
 ("stuHappyCollege" "30" "stuHappyCollegeQ" "int" "LikeMe7" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "StudentBasicData.java")
 (:help nil nil)
  )
 ( "sthapgpa"
 "sa-Happiness with grades"
 "spss-match"
 ("stuHappyGrades")
 ("stuHappyGrades" "28" "stuHappyGradesQ" "int" "LikeMe7" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "StudentBasicData.java")
 (:help nil nil)
  )
 ) (
 STURESOURCE
 ("sturesource"     ;;WAS "acmaffec" CAUSED ERROR
 "am-All interference factors"
 "spss-match"  NIL
 (:TITLE ("Education-Related Questions")
 :QUEST ("Which items interfere with your studying and/or grades?"))
 (:help nil nil)
 NIL
 :MULTI-ITEM
  )
 ( "afinanc"
 "1-Financial worries"
 "spss-match" NIL
 ("Financial worries")
 NO-PC-INST-MATCH
 (:help nil nil)
  )
;;BBB
 ( "afampres"
 "2-Family pressures"
 "spss-match" NIL
 ("Family pressures")
 NO-PC-INST-MATCH
 (:help nil nil)
  )
 ( "afamresp"
 "3-Family responsibilities"
 "spss-match" NIL
 ("Family responsibilities")
 NO-PC-INST-MATCH
 (:help nil nil)
  )
 ( "aworktim"
 "4-Job time"
 "spss-match" NIL
 ("Time spent working in a job")
 NO-PC-INST-MATCH
 (:help nil nil)
  )
 ( "awrkpres"
 "5-Work pressures"
 "spss-match" NIL
 ("Family pressures")
 NO-PC-INST-MATCH
 (:help nil nil)
  )
 ( "arelprob"
 "6-Relationship problems"
 "spss-match" NIL
 ("Relationship problems")
 NO-PC-INST-MATCH
 (:help nil nil)
  )
 ( "aloneli"
 "7-Loneliness"
 "spss-match" NIL
 ("Loneliness")
 NO-PC-INST-MATCH
 (:help nil nil)
  )
 ( "ahomstpl"
 "8-No home study place"
 "spss-match" NIL
 ("No good place to study where I live")
 NO-PC-INST-MATCH
 (:help nil nil)
  )
 ( "aschstpl"
 "9-No school study place"
 "spss-match" NIL
 ("No good place to study at school")
 NO-PC-INST-MATCH
 (:help nil nil)
  )
 ( "acompavl"
 "10-Computer availability"
 "spss-match" NIL
 ("Lack of adequate computer availability")
 NO-PC-INST-MATCH
 (:help nil nil)
  )
 ( "awrngcls"
 "11-Wrong classes"
 "spss-match" NIL
 ("Taking the wrong classes")
 NO-PC-INST-MATCH
 (:help nil nil)
  )
 ( "afacconn"
 "12-Poor faculty connection"
 "spss-match" NIL
 ("Lack of connection with faculty")
 NO-PC-INST-MATCH
 (:help nil nil)
  )
 ( "astuconn"
 "13-Poor student connection"
 "spss-match" NIL
 ("Lack of connection with students")
 NO-PC-INST-MATCH
 (:help nil nil)
  )
 ( "alowmotv"
 "14-Low study motivation"
 "spss-match" NIL
 ("Low motivation to study")
 NO-PC-INST-MATCH
 (:help nil nil)
  )
 ( "atimconf"
 "15-Too many task conflicts"
 "spss-match" NIL
 ("Too many conflicting things to do")
 NO-PC-INST-MATCH
 (:help nil nil)
  )
 ( "aprocras"
 "16-Procrastination"
 "spss-match" NIL
 ("Procrastinate too much")
 NO-PC-INST-MATCH
 (:help *NPROC15 na)
  )
 ) 
 (STUACMOTIV
 ( "acmstudy"
 "Study time per class hour"
 "spss-match" 
 "acmStudyTime"
 ("acmStudyTime" "17,""acmStudyTimeQ"  "int" "acmstudyAnsArray"  "iAcademicMotivation.java")
 (:help *HRS-UNITS  na)
  )
 ( "acmndrop"
 "am-Never drop or take incomplete"
 "spss-match"
 "acmNDROPcourses"
 ("acmNDROPcourses" "30" "acmNDROPcoursesQ" "int" "LikeMe7" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "iAcademicMotivation.java")
 (:help *DROP-CLASSES na)
  )
 ( "acmatten"
 "am-Attendance & do homework"
 "spss-match"
 "acmATTENDclass"
 ("acmATTENDclass" "31" "acmATTENDclassQ" "int" "LikeMe7" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "iAcademicMotivation.java")
 (:help *ATTEND-CLASS na)
  )
 ( "acmefaml"
 "am-HW encouraged by fam & friends"
 "spss-match"
 "acmEFAMLDemands"
 ("acmEFAMLDemands" "2" "acmEFAMLDemandsQ" "int" "LikeMe7" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "iAcademicMotivation.java")
 (:help nil nil)
  )
 ( "acmesocs"
 "am-No chores if conflict w HW"
 "spss-match"
 "acmESOCSTudy"
 ("acmESOCSTudy" "3" "acmESOCSTudyQ" "int" "LikeMe7" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "iAcademicMotivation.java")
 (:help *EX-FAMILY-LOAD na)
  )
 ( "acmconce"
 "am-Great task-HW concentration"
 "spss-match"
 "acmCONCEntrate"
 ("acmCONCEntrate" "19" "acmCONCEntrateQ" "int" "LikeMe7" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "iAcademicMotivation.java")
 (:help "If you have a problem concentrating, see the help-link."  na)
  )
 ( "acmtime"
 "am-Time available to study"
 "spss-match"
 "acmTime"
 ("acmTime" "7" "acmTimeQ" "int" "LikeMe7Reverse" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "iAcademicMotivation.java")
 (:help nil nil)
  )
 #|( "acmtimeORIG"
 "am-Time available to study--should be reversed"
 NIL
 "acmTime"
 ("acmTime" "7" "acmTimeQ" "int" "LikeMe7Reverse" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "iAcademicMotivation.java")
 (:help nil nil)
  )|#
 ( "acmselfs"
 "am-Self-manage college life well"
 "spss-match"
 "acmSelfSufficient"
 ("acmSelfSufficient" "29" "acmSelfSufficientQ" "int" "LikeMe7" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "iAcademicMotivation.java")
 (:help nil nil)
  )
 ( "acmcompl"
 "am-Confident will complete degree"
 "spss-match"
 "acmCompleteCol1"
 ("acmCompleteCol1" "18" "acmCompleteCol1Q" "int" "Confidence7" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "iAcademicMotivation.java")
 (:help nil nil)
  )
 ( "acmquitc"
 "am-Won't drop out in year"
 "spss-match"
 "acmQUITCOL"
 ("acmQUITCOL" "13" "acmQUITCOLQ" "int" "LikeMe7" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "iAcademicMotivation.java")
 (:help nil nil)
  )
 ( "acmfinan"
 "am-Confidence school finances"
 "spss-match"
 "acmFinancial"
 ("acmFinancial" "19" "acmFinancialQ" "int" "Confidence7" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "iAcademicMotivation.java")
 (:help nil nil)
  )
 ( "acmdegre"
 "am-Motivation for degree"
 "spss-match"
 "acmDEGREmotivation"
 ("acmDEGREmotivation" "31" "acmDEGREmotivationQ" "int" "LikeMe7" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "iAcademicMotivation.java")
 (:help nil nil)
  )
 ) (
 STU-LRN
 ( "lrnestud"
 "lh-Good study place w/o distract"
 "spss-match"
 "lrnESTUDYplace"
 ("lrnESTUDYplace" "1" "lrnESTUDYplaceQ" "int" "LikeMe7" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "bsLearning.java")
 (:help nil nil)
  )
 ( "lrntxove"
 "lh-Prevew, points, review chapters"
 "spss-match"
 "lrnTXOVerview"
 ("lrnTXOVerview" "8" "lrnTXOVerviewQ" "int" "LikeMe7" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "bsLearning.java")
 (:help nil nil)
  )
 ( "lrntxund"
 "lh-Stop to understand readings"
 "spss-match"
 "lrnTXUNDerstand"
 ("lrnTXUNDerstand" "9" "lrnTXUNDerstandQ" "int" "LikeMe7" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "bsLearning.java")
 (:help nil nil)
  )
 ( "lrntsrev"
 "lh-Review 3 times before exam"
 "spss-match"
 "lrnTSREView"
 ("lrnTSREView" "10" "lrnTSREViewQ" "int" "LikeMe7" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "bsLearning.java")
 (:help nil nil)
  )
 ( "lrnmap"
 "lh-Create visual map of readings"
 "spss-match"
 "lrnMap"
 ("lrnMap" "11" "lrnMapQ" "int" "LikeMe7" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "bsLearning.java")
 (:help nil nil)
  )
 ( "lrntextn"
 "lh-Math science seek basic principles"
 "spss-match"
 "lrnTextNotProbs"
 ("lrnTextNotProbs" "12" "lrnTextNotProbsQ" "int" "LikeMe7" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "bsLearning.java")
 (:help nil nil)
  )
 ( "lrninter"
 "lh-If text boring, make interesting"
 "spss-match"
 "lrnInterest"
 ("lrnInterest" "13" "lrnInterestQ" "int" "LikeMe7" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "bsLearning.java")
 (:help nil nil)
  )
 ( "lrnrote"
 "lh-New view--not rote methods"
 "spss-match"
 "lrnRote"
 ("lrnRote" "14" "lrnRoteQ" "int" "LikeMe7" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "bsLearning.java")
 (:help nil nil)
  )
 ( "lrnassoc"
 "lh-Try to create associations"
 "spss-match"
 "lrnAssoc"
 ("lrnAssoc" "15" "lrnAssocQ" "int" "LikeMe7" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "bsLearning.java")
 (:help nil nil)
  )
 ( "lrnstrug"
 "lh-Struggle with difficult material"
 "spss-match"
 "lrnSLTNStruggle"
 ("lrnSLTNStruggle" "16" "lrnSLTNStruggleQ" "int" "LikeMe7" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "bsLearning.java")
 (:help nil nil)
  )
 ( "lrntheor"
 "lh-Build own theories"
 "spss-match"
 "lrnTHEORy"
 ("lrnTHEORy" "17" "lrnTHEORyQ" "int" "LikeMe7" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "bsLearning.java")
 (:help nil nil)
  )
 ( "lrnalone"
 "lh-Study alone-minimal help"
 "spss-match"
 "lrnSEFICiciency"
 ("lrnSEFICiciency" "10" "lrnSEFICiciencyQ" "int" "LikeMe7" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "bsLearningAreas.java")
 (:help nil nil)
  )
 ( "lrnmath"
 "la-Enjoy & good at math"
 "spss-match"
 "lrnMATH"
 ("lrnMATH" "12" "lrnMATHQ" "int" "LikeMe7" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "bsLearningAreas.java")
 (:help nil nil)
  )
 ( "lrnwrpap"
 "la-A's on term papers"
 "spss-match"
 "lrnWRITEskills"
 ("lrnWRITEpapers" "4" "lrnWRITEpapersQ" "int" "LikeMe7" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "bsLearningAreas.java")
 (:help nil nil)
  )
 ( "lrntxout"
 "la-Outline textbooks"
 "spss-match"
 "lrnTEXToutline"
 ("lrnTEXToutline" "2" "lrnTEXToutlineQ" "int" "LikeMe7" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "bsLearningAreas.java")
 (:help nil nil)
  )
 ( "lrnnotes"
 "la-Good class notes"
 "spss-match"
 "lrnNOTES"
 ("lrnNOTES" "3" "lrnNOTESQ" "int" "LikeMe7" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "bsLearningAreas.java")
 (:help nil nil)
  )
 ( "lrnwrskl"
 "la-Satisfied with writing skills"
 "spss-match"
 "lrnWRITEskills"
("lrnWRITEskills" "11" "lrnWRITEskillsQ" "int" "LikeMe7" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "bsLearningAreas.java")
 (:help nil nil)
  )
 ( "lrnsee"
 "la-No vision problems"
 "spss-match"
 "lrnSEE"
 ("lrnSEE" "5" "lrnSEEQ" "int" "LikeMe7" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "bsLearningAreas.java")
 (:help nil nil)
  )
 ( "lrnvocab"
 "la-No vocabulary problems reading"
 "spss-match"
 "lrnVOCAB"
 ("lrnVOCAB" "6" "lrnVOCABQ" "int" "LikeMe7" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "bsLearningAreas.java")
 (:help nil nil)
  )
 ( "lrnsread"
 "la-Not read slower"
 "spss-match"
 "lrnSREAD"
 ("lrnSREAD" "7" "lrnSREADQ" "int" "LikeMe7" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "bsLearningAreas.java")
 (:help nil nil)
  )
 ( "lrnmemor"
 "la-Memory for terms,formulas,facts"
 "spss-match"
 "lrnMEMOR"
 ("lrnMEMOR" "8" "lrnMEMORQ" "int" "LikeMe7" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "bsLearningAreas.java")
 (:help nil nil)
  )
 ( "lrntense"
 "la-Rarely tense in exams"
 "spss-match"
 "lrnTENSE"
 ("lrnTENSE" "9" "lrnTENSEQ" "int" "LikeMe7" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "bsLearningAreas.java")
 (:help nil nil)
  )
 ( "lrnsefic"
 "la-Learning time efficient"
 "spss-match"
 "lrnSEFICiciency"
 ("lrnSEFICiciency" "10" "lrnSEFICiciencyQ" "int" "LikeMe7" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "bsLearningAreas.java")
 (:help nil nil)
  )
 ( "lrnwrorg"
 "la-Organizing writing good"
 "spss-match"
 "lrnWRORGanization"
 ("lrnWRORGanization" "11" "lrnWRORGanizationQ" "int" "LikeMe7" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "bsLearningAreas.java")
 (:help nil nil)
  )
 ( "lrnunasn"
 "ld-Understand & begin assignments"
 "spss-match"
 "lrnUNASNments"
 ("lrnUNASNments" "1" "lrnUNASNmentsQ" "int" "LikeMe7Reverse" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "bsLearningDisable.java")
 (:help nil nil)
  )
 ( "lrncolmt"
 "ld-Not made to feel not college material"
 "spss-match"
 "lrnCOLMTeral"
 ("lrnCOLMTeral" "2" "lrnCOLMTeralQ" "int" "LikeMe7Reverse" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "bsLearningDisable.java")
 (:help nil nil)
  )
 ( "lrnknowt"
 "ld-Not know more than test"
 "spss-match"
 "lrnKNOWtestBad"
 ("lrnKNOWtestBad" "3" "lrnKNOWtestBadQ" "int" "LikeMe7Reverse" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "bsLearningDisable.java")
 (:help nil nil)
  )
 ( "lrnproof"
 "ld-Not unsure of un-proofed-by-other paper"
 "spss-match"
 "lrnPROOFpaper"
 ("lrnPROOFpaper" "4" "lrnPROOFpaperQ" "int" "LikeMe7Reverse" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "bsLearningDisable.java")
 (:help nil nil)
  )
 ( "lrnrread"
 "ld-Not read texts 2-3 times to make sense"
 "spss-match"
 "lrnRREADtexts"
 ("lrnRREADtexts" "5" "lrnRREADtextsQ" "int" "LikeMe7Reverse" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "bsLearningDisable.java")
 (:help nil nil)
  )
 ( "lrneffic"
 "ld-Not more time, lower grades"
 "spss-match"
 "lrnSEFICiciency"
 ("lrnSEFICiciency" "10" "lrnSEFICiciencyQ" "int" "LikeMe7" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "bsLearningAreas.java")
 (:help nil nil)
  )
 ( "lrntestt"
 "ld-Not test better if more time"
 "spss-match"
 "lrnTESTTMoreTime"
 ("lrnTESTTMoreTime" "7" "lrnTESTTMoreTimeQ" "int" "LikeMe7Reverse" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "bsLearningDisable.java")
 (:help nil nil)
  )
 ( "lrntimas"
 "ld-Not too much time on assignments"
 "spss-match"
 "lrnTIMASsigns"
 ("lrnTIMASsigns" "8" "lrnTIMASsignsQ" "int" "LikeMe7Reverse" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "bsLearningDisable.java")
 (:help nil nil)
  )
 ( "lrntired"
 "ld-Not reading 1 hour make tired"
 "spss-match"
 "lrnTIREDread"
 ("lrnTIREDread" "9" "lrnTIREDreadQ" "int" "LikeMe7Reverse" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "bsLearningDisable.java")
 (:help nil nil)
  )
 ( "lrntanxi"
 "ld-Not more anxiety about tests"
 "spss-match"
 "lrnTANXiety"
 ("lrnTANXiety" "10" "lrnTANXietyQ" "int" "LikeMe7Reverse" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "bsLearningDisable.java")
 (:help nil nil)
  )
 ( "lrnsmart"
 "ld-Not smarter than grades indicate"
 "spss-match"
 "lrnSMARTerThanGrades"
 ("lrnSMARTerThanGrades" "11" "lrnSMARTerThanGradesQ" "int" "LikeMe7Reverse" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "bsLearningDisable.java")
 (:help nil nil)
  )
 ( "lrnaread"
 "ld-Not problem avoiding reading"
 "spss-match"
 "lrnAREAD"
 ("lrnAREAD" "12" "lrnAREADQ" "int" "LikeMe7Reverse" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "bsLearningDisable.java")
 (:help nil nil)
  )
 ( "lrnrslow"
 "ld-Not slower reader"
 "spss-match"
 "lrnRSLOWread"
 ("lrnRSLOWread" "13" "lrnRSLOWreadQ" "int" "LikeMe7Reverse" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "bsLearningDisable.java")
 (:help nil nil)
  )
 ) (
 SM
 ( "smtbusy"
 "sm-Rarely upset about too rushed"
 "spss-match"
 "smtBUSY"
 ("smtBUSY" "13" "smtBUSYQ" "int" "LikeMe7" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "bsSelfManagement.java")
 (:help nil nil)
  )
 ( "smtfutur"
 "sm-Time planning and distant goals"
 "spss-match"
 "smtFUTURePlan"
 ("smtFUTURePlan" "2" "smtFUTURePlanQ" "int" "LikeMe7" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "bsSelfManagement.java")
 (:help nil nil)
  )
 ( "smtexerc"
 "sm-Exercise freq-20 mins"
 "spss-match"
 "smtExercize"
 ("smtExercize" "3" "smtExercizeQ" "int" "Freq12" "questionInstancesArray" "frameTitle" "frameDimWidth" "frHeight12;" "bsSelfManagement.java")
 (:help nil nil)
  )
 ( "smteath"
 "sm-Healthy diet"
 "spss-match"
 "smtEATH"
 ("smtEATH" "4" "smtEATHQ" "int" "LikeMe7" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "bsSelfManagement.java")
 (:help nil nil)
  )
 ( "smtsleep"
 "sm-Hours sleep"
 "spss-match"
 "smtSleep"
 ("smtSleep" "5" "smtSleepQ" "int" "NumberTo12" "questionInstancesArray" "frameTitle" "frameDimWidth" "frHeight12;" "bsSelfManagement.java")
 (:help nil nil)
  )
 ( "smtsdeve"
 "sm-Managed self-change"
 "spss-match"
 "smtSDEVelopment"
 ("smtSDEVelopment" "6" "smtSDEVelopmentQ" "int" "LikeMe7" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "bsSelfManagement.java")
 (:help nil nil)
  )
 ( "smtnproc"
 "sm-Start & complete big projects"
 "spss-match"
 "smtNPROCrastinate"
 ("smtNPROCrastinate" "7" "smtNPROCrastinateQ" "int" "LikeMe7" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "bsSelfManagement.java")
 (:help nil nil)
  )
 ( "smtptodo"
 "sm-To-do list--all areas"
 "spss-match"
 "smtPTODO"
 ("smtPTODO" "8" "smtPTODOQ" "int" "LikeMe7" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "bsSelfManagement.java")
 (:help nil nil)
  )
 ( "smtgoals"
 "sm-Objectives lists used"
 "spss-match"
 "smtGOALS"
 ("smtGOALS" "9" "smtGOALSQ" "int" "LikeMe7" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "bsSelfManagement.java")
 (:help nil nil)
  )
 ( "smtschd"
 "sm-Weekly schedule"
 "spss-match"
 "smtSCHD"
 ("smtSCHD" "10" "smtSCHDQ" "int" "LikeMe7" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "bsSelfManagement.java")
 (:help nil nil)
  )
 ( "smt2dtod"
 "sm-2-D to-do lists--assignments"
 "spss-match"
 "smt2DToDo"
 ("smt2DToDo" "10" "smt2DToDoQ" "int" "LikeMe7" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "bsSelfManagement.java")
 (:help nil nil)
  )
 ( "smtacmpl"
 "sm-High accomplishment, lo pressure"
 "spss-match"
 "smtACMPL"
 ("smtACMPL" "11" "smtACMPLQ" "int" "LikeMe7" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "bsSelfManagement.java")
 (:help nil nil)
  )
 ( "smtghelp"
 "sm-Regular self-development habits"
 "spss-match"
 "smtGHELP"
 ("smtGHELP" "12" "smtGHELPQ" "int" "LikeMe7" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "bsSelfManagement.java")
 (:help nil nil)
  )
 ( "smtbalan"
 "sm-Life area balance/satisfaction"
 "spss-match"
 "smtBALance"
 ("smtBALance" "1" "smtBALanceQ" "int" "LikeMe7" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "bsSelfManagement.java")
 (:help nil nil)
  )
 ( "smthabch"
 "sm-Take good advice--make changes"
 "spss-match"
 "smtHabChg"
 ("smtHabChg" "1" "smtHabChgQ" "int" "LikeMe7" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "bsSelfManagement.java")
 (:help nil nil)
  )
 ) (
 COPE
 ( "copnegth"
 "cp-Not worry, neg thoughts"
 "spss-match"
 "copNEGThinking"
 ("copNEGThinking" "2" "copNEGThinkingQ" "int" "PerCent6CopeReverse" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "bsEmotionManagement.java")
 (:help nil nil)
  )
 ( "copcopea"
 "cp-Not eat"
 "spss-match"
 "copCOPEat"
 ("copCOPEat" "1" "copCOPEatQ" "int" "PerCent6CopeReverse" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "bsEmotionManagement.java")
 (:help nil nil)
  )
 ( "coppsolv"
 "cp-Face & problem solve"
 "spss-match"
 "copPSolve"
 ("copPSolve" "3" "copPSolveQ" "int" "PerCent6Cope" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "bsEmotionManagement.java")
 (:help nil nil)
  )
 ( "copemota"
 "cp-Not outward anger"
 "spss-match"
 "copEMOTaggress"
 ("copEMOTaggress" "4" "copEMOTaggressQ" "int" "PerCent6CopeReverse" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "bsEmotionManagement.java")
 (:help nil nil)
  )
 ( "copavops"
 "cp-Not avoid thinking about-dealing w/problemNEW"
 "spss-match"
 "copAVOID"
 ("copAVOID" "5" "copAVOIDQ" "int" "PerCent6CopeReverse" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "bsEmotionManagement.java")
 (:help nil nil)
  )
 ( "copblame"
 "cp-Not blame others or self"
 "spss-match"
 "copBlame"
 ("copBlame" "6" "copBlameQ" "int" "PerCent6CopeReverse" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "bsEmotionManagement.java")
 (:help nil nil)
  )
 ( "copwdrw"
 "cp-Not withdraw from others"
 "spss-match"
 "copWDRW"
 ("copWDRW" "7" "copWDRWQ" "int" "PerCent6CopeReverse" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "bsEmotionManagement.java")
 (:help nil nil)
  )
 ( "copfun"
 "cp-Fun or involving activity"
 "spss-match"
 "copFUN"
 ("copFUN" "8" "copFUNQ" "int" "PerCent6Cope" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "bsEmotionManagement.java")
 (:help nil nil)
  )
 ( "coptalks"
 "cp-Talk about problem"
 "spss-match"
 "copTALKsomeone"
 ("copTALKsomeone" "9" "copTALKsomeoneQ" "int" "PerCent6Cope" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "bsEmotionManagement.java")
 (:help nil nil)
  )
 ( "coppepta"
 "cp-Positive thoughts-pep talk"
 "spss-match"
 "copPEPTalk"
 ("copPEPTalk" "10" "copPEPTalkQ" "int" "PerCent6Cope" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "bsEmotionManagement.java")
 (:help nil nil)
  )
 ( "copsmoke"
 "cp-Not smoke tobacco"
 "spss-match"
 "copSMOKe"
 ("copSMOKe" "11" "copSMOKeQ" "int" "PerCent6CopeReverse" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "bsEmotionManagement.java")
 (:help nil nil)
  )
 ( "copdrug"
 "cp-Not drink alcohol, street drugs,or meds"
 "spss-match"
 "copDRUG"
 ("copDRUG" "12" "copDRUGQ" "int" "PerCent6CopeReverse" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "bsEmotionManagement.java")
 (:help nil nil)
  )
 ( "coppe"
 "cp-Vigorous physical activity"
 "spss-match"
 "copPEPTalk"
 ("copPEPTalk" "10" "copPEPTalkQ" "int" "PerCent6Cope" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "bsEmotionManagement.java")
 (:help nil nil)
  )
 ( "copnegph"
 "cp-Not critical-punative thoughts"
 "spss-match"
 "copNegPhil"
 ("copNegPhil" "14" "copNegPhilQ" "int" "PerCent6CopeReverse" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "bsEmotionManagement.java")
 (:help nil nil)
  )
 ( "copselfb"
 "cp-Not anger at self"
 "spss-match"
 "copSelfBlame"
 ("copSelfBlame" "14" "copSelfBlameQ" "int" "PerCent6CopeReverse" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "bsEmotionManagement.java")
 (:help nil nil)
  )
 ( "copposph"
 "cp-Phil or religious viewpoint"
 "spss-match"
 "copPosPhil"
 ("copPosPhil" "15" "copPosPhilQ" "int" "PerCent6Cope" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "bsEmotionManagement.java")
 (:help nil nil)
  )
 ( "copexpec"
 "cp-Examine expectations"
 "spss-match"
 "copExpectations"
 ("copExpectations" "16" "copExpectationsQ" "int" "PerCent6Cope" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "bsEmotionManagement.java")
 (:help nil nil)
  )
 ( "cophappy"
 "cp-Think happy no matter what"
 "spss-match"
 "copHappy"
 ("copHappy" "17" "copHappyQ" "int" "PerCent6Cope" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "bsEmotionManagement.java")
 (:help nil nil)
  )
 ( "copavoat"
 "cp-Not miss work, school, etc-"
 "spss-match"
 "copAvoidFreq"
 ("copAvoidFreq" "19" "copAvoidFreqQ" "int" "Freq7Reverse" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "bsEmotionManagement.java")
 (:help nil nil)
  )
 ( "copselfe"
 "cp-Self-exploration enjoyment"
 "spss-match"
 "copSelfExplore"
 ("copSelfExplore" "18" "copSelfExploreQ" "int" "Priority9" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "bsEmotionManagement.java")
 (:help nil nil)
  )
 ) (
 THEMES
 ( "thm1ach"
 "ta-Being the best"
 "spss-match"
 "thm1Ach"
 ("thm1Ach" "1" "thm1AchQ" "int" "Priority10" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "iLifeThemesAch.java")
 (:help nil nil)
  )
 ( "thm3educ"
 "ta-Advanced degrees"
 "spss-match"
 "thm3Educ"
 ("thm3Educ" "3" "thm3EducQ" "int" "Priority10" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "iLifeThemesAch.java")
 (:help nil nil)
  )
 ( "thm4mone"
 "ta-Very high income"
 "spss-match"
 "thm4Money"
 ("thm4Money" "4" "thm4MoneyQ" "int" "Priority10" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "iLifeThemesAch.java")
 (:help nil nil)
  )
 ( "thm25pos"
 "ta-High quality possessions"
 "spss-match"
 "thm25Possess"
 ("thm25Possess" "25" "thm25PossessQ" "int" "Priority10" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "iLifeThemesAch.java")
 (:help nil nil)
  )
 ( "thm26suc"
 "ta-Career success"
 "spss-match"
 "thm26Success"
 ("thm26Success" "26" "thm26SuccessQ" "int" "Priority10" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "iLifeThemesAch.java")
 (:help nil nil)
  )
 ( "thmimpac"
 "ta-Impact-change world"
 "spss-match"
 "thm27ChangeWorld"
 ("thm27ChangeWorld" "27" "thm27ChangeWorldQ" "int" "Priority10" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "iLifeThemesAch.java")
 (:help nil nil)
  )
 ( "thm28cre"
 "ta-Creation-major contribution"
 "spss-match"
 "thm28Create"
 ("thm28Create" "28" "thm28CreateQ" "int" "Priority10" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "iLifeThemesAch.java")
 (:help nil nil)
  )
 ( "thm30ceo"
 "ta-Power-ceo, owner"
 "spss-match"
 "thm30CEO"
 ("thm30CEO" "30" "thm30CEOQ" "int" "Priority10" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "iLifeThemesAch.java")
 (:help nil nil)
  )
 ( "thm33goa"
 "ta-Complete all important goals"
 "spss-match"
 "thm33Goals"
 ("thm33Goals" "33" "thm33GoalsQ" "int" "Priority10" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "iLifeThemesAch.java")
 (:help nil nil)
  )
 ( "thm8roma"
 "ts-Love-romance"
 "spss-match"
 "thm8Romance"
 ("thm8Romance" "8" "thm8RomanceQ" "int" "Priority10" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "iLifeThemesSoc.java")
 (:help nil nil)
  )
 ( "thm12ple"
 "ts-Pleasing others-avoid conflict"
 "spss-match"
 "thm12Please"
 ("thm12Please" "12" "thm12PleaseQ" "int" "Priority10" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "iLifeThemesSoc.java")
 (:help nil nil)
  )
 ( "thmrespe"
 "ts-Respect from others"
 "spss-match"
 "thm15Respect"
 ("thm15Respect" "15" "thm15RespectQ" "int" "Priority10" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "iLifeThemesSoc.java")
 (:help nil nil)
  )
 ( "thm20int"
 "ts-Intimacy-close relationships"
 "spss-match"
 "thm20Intimacy"
 ("thm20Intimacy" "20" "thm20IntimacyQ" "int" "Priority10" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "iLifeThemesSoc.java")
 (:help nil nil)
  )
 ( "thmliked"
 "ts-Well-liked by many"
 "spss-match"
 "thm21Network"
 ("thm21Network" "21" "thm21NetworkQ" "int" "Priority10" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "iLifeThemesSoc.java")
 (:help nil nil)
  )
 ( "thmcareg"
 "ts-Care-giving-parent, others"
 "spss-match"
 "thm31Caregiver"
 ("thm31Caregiver" "31" "thm31CaregiverQ" "int" "Priority10" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "iLifeThemesSoc.java")
 (:help nil nil)
  )
 ( "thmsuppo"
 "ts-Emotional support from others"
 "spss-match"
 "thmVSUPRT"
 ("thmVSUPRT" "6" "thmVSUPRTQ" "int" "Priority10" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "iLifeThemesSoc.java")
 (:help nil nil)
  )
 ( "thmatten"
 "ts-Attention from others"
 "spss-match"
 "thmAttention"
 ("thmAttention" "11" "thmAttentionQ" "int" "Priority10" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "iLifeThemesSoc.java")
 (:help nil nil)
  )
 ( "thmfamil"
 "ts-Family"
 "spss-match"
 "thmFamily"
 ("thmFamily" "15" "thmFamilyQ" "int" "Priority10" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "iLifeThemesSoc.java")
 (:help nil nil)
  )
 ( "thmrecog"
 "ts-Recognition-respect,status,etc"
 "spss-match"
 "thmRecognition"
 ("thmRecognition" "16" "thmRecognitionQ" "int" "Priority10" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "iLifeThemesSoc.java")
 (:help nil nil)
  )
 ( "thmphurt"
 "td-Personal healing-overcome problems"
 "spss-match"
 "thm16Hurt"
 ("thm16Hurt" "16" "thm16HurtQ" "int" "Priority10" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "iLifeThemesNeg.java")
 (:help nil nil)
  )
 ( "thmobgod"
 "td-Obedience to God"
 "spss-match"
 "thm17GodRules"
 ("thm17GodRules" "17" "thm17GodRulesQ" "int" "Priority10" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "iLifeThemesNeg.java")
 (:help nil nil)
  )
 ( "thmparlv"
 "td-Parental love and respect"
 "spss-match"
 "thm18ParentRespect"
 ("thm18ParentRespect" "18" "thm18ParentRespectQ" "int" "Priority10" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "iLifeThemesNeg.java")
 (:help nil nil)
  )
 ( "thmsprot"
 "td-Self-protection"
 "spss-match"
 "thm24Protect"
 ("thm24Protect" "24" "thm24ProtectQ" "int" "Priority10" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "iLifeThemesNeg.java")
 (:help nil nil)
  )
 ( "thmpunct"
 "td-Punctuality"
 "spss-match"
 "thmPunctuality"
 ("thmPunctuality" "14" "thmPunctualityQ" "int" "Priority10" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "iLifeThemesNeg.java")
 (:help nil nil)
  )
 ( "thmoblig"
 "td-Obligation"
 "spss-match"
 "thmObligation"
 ("thmObligation" "35" "thmObligationQ" "int" "Priority10" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "iLifeThemesNeg.java")
 (:help nil nil)
  )
 ( "thm5adve"
 "ti-Adventure"
 "spss-match"
 "thm5Advent"
 ("thm5Advent" "5" "thm5AdventQ" "int" "Priority10" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "iLifeThemes.java")
 (:help nil nil)
  )
 ( "thm6lear"
 "ti-Learning, self-development"
 "spss-match"
 "thm6Learn"
 ("thm6Learn" "6" "thm6LearnQ" "int" "Priority10" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "iLifeThemes.java")
 (:help nil nil)
  )
 ( "thm9shap"
 "ti-Self-happiness"
 "spss-match"
 "thm9Happy"
 ("thm9Happy" "9" "thm9HappyQ" "int" "Priority10" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "iLifeThemes.java")
 (:help nil nil)
  )
 ( "thm10oth"
 "ti-Giving to others happiness, world"
 "spss-match"
 "thm10OthHap"
 ("thm10OthHap" "10" "thm10OthHapQ" "int" "Priority10" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "iLifeThemes.java")
 (:help nil nil)
  )
 ( "thmrelgd"
 "ti-Spiritual intimacy"
 "spss-match"
 "thmRecog"
 ("thmRecog" "16" "thmRecogQ" "int" "Priority10" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "iLifeThemesSoc.java")
 (:help nil nil)
  )
 ( "thm14ind"
 "ti-Independence"
 "spss-match"
 "thm14Indep"
 ("thm14Indep" "14" "thm14IndepQ" "int" "Priority10" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "iLifeThemes.java")
 (:help nil nil)
  )
 ( "thm22bod"
 "ti-Health and longevity"
 "spss-match"
 "thm22Body"
 ("thm22Body" "22" "thm22BodyQ" "int" "Priority10" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "iLifeThemes.java")
 (:help nil nil)
  )
 ( "thm23bal"
 "ti-Life balance"
 "spss-match"
 "thm23Balance"
 ("thm23Balance" "23" "thm23BalanceQ" "int" "Priority10" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "iLifeThemes.java")
 (:help nil nil)
  )
 ( "thmorder"
 "ti-Orderliness organization"
 "spss-match"
 "thmOrderly"
 ("thmOrderly" "22" "thmOrderlyQ" "int" "Priority10" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "iLifeThemes.java")
 (:help nil nil)
  )
 ( "thmmench"
 "ti-Mental Challenge"
 "spss-match"
 "thm32MentalChal"
 ("thm32MentalChal" "32" "thm32MentalChalQ" "int" "Priority10" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "iLifeThemes.java")
 (:help nil nil)
  )
 ( "thm34exp"
 "ti-Exploration find answers"
 "spss-match"
 "thm34Explore"
 ("thm34Explore" "34" "thm34ExploreQ" "int" "Priority10" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "iLifeThemes.java")
 (:help nil nil)
  )
 ( "thmcompc"
 "ti-Competence, best I can be"
 "spss-match"
 "thm35Competence"
 ("thm35Competence" "36" "thm35CompetenceQ" "int" "Priority10" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "iLifeThemes.java")
 (:help nil nil)
  )
 ( "thminteg"
 "ti-Integrity"
 "spss-match"
 "thm36Integrity"
 ("thm36Integrity" "35" "thm36IntegrityQ" "int" "Priority10" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "iLifeThemes.java")
 (:help nil nil)
  )
 ( "thmphil"
 "ti-Personal philosophy"
 "spss-match"
 "thmPHIL"
 ("thmPHIL" "7" "thmPHILQ" "int" "Priority10" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "iLifeThemes.java")
 (:help nil nil)
  )
 ( "thmclean"
 "ti-Cleanliness"
 "spss-match"
 "thm12Please"
 ("thm12Please" "12" "thm12PleaseQ" "int" "Priority10" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "iLifeThemesSoc.java")
 (:help nil nil)
  )
 ( "thmwhole"
 "ti-Wholeness"
 "spss-match"
 "thmWhole"
 ("thmWhole" "18" "thmWholeQ" "int" "Priority10" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "iLifeThemes.java")
 (:help nil nil)
  )
 ( "thmperfe"
 "ti-Perfection and idealism"
 "spss-match"
 "thmPerfe"
 ("thmPerfe" "19" "thmPerfeQ" "int" "Priority10" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "iLifeThemes.java")
 (:help nil nil)
  )
 ( "thmjusti"
 "ti-Justice"
 "spss-match"
 "thmJustice"
 ("thmJustice" "22" "thmJusticeQ" "int" "Priority10" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "iLifeThemes.java")
 (:help nil nil)
  )
 ( "thmsimpl"
 "ti-Simplicity"
 "spss-match"
 "thmSimplicity"
 ("thmSimplicity" "25" "thmSimplicityQ" "int" "Priority10" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "iLifeThemes.java")
 (:help nil nil)
  )
 ( "thmbeaut"
 "ti-Beauty"
 "spss-match"
 "thmBeauty"
 ("thmBeauty" "27" "thmBeautyQ" "int" "Priority10" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "iLifeThemes.java")
 (:help nil nil)
  )
 ( "thmgoodn"
 "ti-Goodness"
 "spss-match"
 "thmGoodness"
 ("thmGoodness" "28" "thmGoodnessQ" "int" "Priority10" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "iLifeThemes.java")
 (:help nil nil)
  )
 ( "thmuniqu"
 "ti-Uniqueness & diversity"
 "spss-match"
 "thmUnique"
 ("thmUnique" "29" "thmUniqueQ" "int" "Priority10" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "iLifeThemes.java")
 (:help nil nil)
  )
 ( "thmcreat"
 "ti-Creativeness"
 "spss-match"
 "thmCreative"
 ("thmCreative" "30" "thmCreativeQ" "int" "Priority10" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "iLifeThemes.java")
 (:help nil nil)
  )
 ( "thmefort"
 "ti-Effortlessness"
 "spss-match"
 "thmEfortless"
 ("thmEfortless" "31" "thmEfortlessQ" "int" "Priority10" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "iLifeThemes.java")
 (:help nil nil)
  )
 ( "thmplayf"
 "ti-Fun playfulness"
 "spss-match"
 "thmPlayful"
 ("thmPlayful" "32" "thmPlayfulQ" "int" "Priority10" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "iLifeThemes.java")
 (:help nil nil)
  )
 ( "thmsesuf"
 "ti-Self-sufficiency"
 "spss-match"
 "thmSelfSufficient"
 ("thmSelfSufficient" "34" "thmSelfSufficientQ" "int" "Priority10" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "iLifeThemes.java")
 (:help nil nil)
  )
 ( "thmsedis"
 "ti-Self-discipline"
 "spss-match"
 "thmSelfDiscipline"
 ("thmSelfDiscipline" "36" "thmSelfDisciplineQ" "int" "Priority10" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "iLifeThemes.java")
 (:help nil nil)
  )
 ( "thmspiri"
 "ti-God and/or spirituality"
 "spss-match"
 "thmSpiritGod"
 ("thmSpiritGod" "41" "thmSpiritGodQ" "int" "Priority10" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "iLifeThemes.java")
 (:help nil nil)
  )
 ( "thmrelig"
 "ti-Religion"
 "spss-match"
 "thmReligion"
 ("thmReligion" "42" "thmReligionQ" "int" "Priority10" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "iLifeThemes.java")
 (:help nil nil)
  )
 ( "thmuncon"
 "ti-Unconditional love of all people"
 "spss-match"
 "thmUnconditLove"
 ("thmUnconditLove" "43" "thmUnconditLoveQ" "int" "Priority10" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "iLifeThemes.java")
 (:help nil nil)
  )
 ) (
 TBV
 ( "tbvothfi"
 "bu-Not always others first"
 "spss-match"
 "tbvOthersFirst"
 ("tbvOthersFirst" "47" "tbvOthersFirstQ" "int" "Belief10Reverse" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "iTopBV.java")
 (:help nil nil)
  )
 ( "tbvliked"
 "bu-Not loved by all"
 "spss-match"
 "tbvLikedByAll"
 ("tbvLikedByAll" "48" "tbvLikedByAllQ" "int" "Belief10Reverse" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "iTopBV.java")
 (:help nil nil)
  )
 ( "tbvweak"
 "bu-Not weak and dependent"
 "spss-match"
 "tbvWeak"
 ("tbvWeak" "49" "tbvWeakQ" "int" "Belief10Reverse" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "iTopBV.java")
 (:help nil nil)
  )
 ( "tbvbest"
 "bu-Not must be best"
 "spss-match"
 "tbvBest"
 ("tbvBest" "50" "tbvBestQ" "int" "Belief10Reverse" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "iTopBV.java")
 (:help nil nil)
  )
 ( "tbventit"
 "bu-Not entitled to good life"
 "spss-match"
 "tbvEntitled"
 ("tbvEntitled" "51" "tbvEntitledQ" "int" "Belief10Reverse" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "iTopBV.java")
 (:help nil nil)
  )
 ( "tbvrules"
 "bu-Not if break rules--severe punishment"
 "spss-match"
 "tbvRulesPunish"
 ("tbvRulesPunish" "52" "tbvRulesPunishQ" "int" "Belief10Reverse" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "iTopBV.java")
 (:help nil nil)
  )
 ( "tbvwinne"
 "bu-Not winners and losers"
 "spss-match"
 "tbvWinners"
 ("tbvWinners" "53" "tbvWinnersQ" "int" "Belief10Reverse" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "iTopBV.java")
 (:help nil nil)
  )
 ( "tbvbalan"
 "bu-Balance present-future, self-others hap"
 "spss-match"
 "tbvBalanceFuture"
 ("tbvBalanceFuture" "45" "tbvBalanceFutureQ" "int" "Belief10" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "iTopBV.java")
 (:help nil nil)
  )
 ( "tbvhapca"
 "bu-Decisions-max happiness"
 "spss-match"
 "tbvHapCalc"
 ("tbvHapCalc" "46" "tbvHapCalcQ" "int" "Belief10" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "iTopBV.java")
 (:help nil nil)
  )
 ( "tbvgrati"
 "bu-Gratitude-abundance thinking"
 "spss-match"
 "tbvGratitude"
 ("tbvGratitude" "44" "tbvGratitudeQ" "int" "Belief10" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "iTopBV.java")
 (:help nil nil)
  )
 ( "thvselfa"
 "bu-Accept all parts of self"
 "spss-match"
 "thvSelfAccept"
 ("thvSelfAccept" "58" "thvSelfAcceptQ" "int" "Belief10Reverse" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight," "iTopBV.java")
 (:help nil nil)
  )
 #|( "thvselfaORIG"
 "ORIG-bu-Accept all parts of self"
 NIL
 "thvSelfAccept"
 ("thvSelfAccept" "58" "thvSelfAcceptQ" "int" "Belief10Reverse" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight," "iTopBV.java")
 (:help nil nil)
  )|#
 ( "thvuncon"
 "bu-Value all unconditionally"
 "spss-match"
 "thvUncondCare"
 ("thvUncondCare" "55" "thvUncondCareQ" "int" "Belief10" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight," "iTopBV.java")
 (:help nil nil)
  )
;;www
 ( "thvselfw"
 "bu-Value self unconditionally"
 "spss-match"
 "thvSelfW"
 ("thvSelfW" "56" "thvSelfWQ" "int" "Belief10" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight," "iTopBV.java")
 (:help nil nil)
  )
 ) (
 IE
 ( "iecselfs"
 "ie-Take care of self & probs"
 "spss-match"
 "iecSelfSufficient"
 ("iecSelfSufficient" "1" "iecSelfSufficientQ" "int" "LikeMe7" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "iIEcontrol.java")
 (:help nil nil)
  )
 ( "iecicont"
 "ie-I control life-happiness"
 "spss-match"
 "iecILOFCiVSe"
 ("iecILOFCiVSe" "2" "iecILOFCiVSeQ" "int" "Agree7" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "iIEcontrol.java")
 (:help nil nil)
  )
 ( "iecgenet"
 "ie-Not genetics-biology control my hap"
 "spss-match"
 "iecGenetic"
 ("iecGenetic" "3" "iecGeneticQ" "int" "Agree7Reverse" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "iIEcontrol.java")
 (:help nil nil)
  )
 ( "iecpeopl"
 "ie-Not others control my happiness"
 "spss-match"
 "iecPeople"
 ("iecPeople" "4" "iecPeopleQ" "int" "Agree7Reverse" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "iIEcontrol.java")
 (:help nil nil)
  )
 ( "iecdepen"
 "ie-Not dependent on one person"
 "spss-match"
 "iecDependent"
 ("iecDependent" "5" "iecDependentQ" "int" "LikeMe7Reverse" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "iIEcontrol.java")
 (:help nil nil)
  )
 ( "ieccofee"
 "ie-Not care for another above self"
 "spss-match"
 "iecCodependent"
 ("iecCodependent" "6" "iecCodependentQ" "int" "LikeMe7Reverse" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "iIEcontrol.java")
 (:help nil nil)
  )
 ( "ieccoprb"
 "ie-Not worry carrying for one's serious prob"
 "spss-match"
 "iecCodepProblem"
 ("iecCodepProblem" "7" "iecCodepProblemQ" "int" "LikeMe7Reverse" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "iIEcontrol.java")
 (:help nil nil)
  )
 ) (
 WORLDVIEW
 ( "wovprogr"
 "wv-World will improve"
 "spss-match"
 "wovProgress"
 ("wovProgress" "1" "wovProgressQ" "int" "Agree7" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "iWorldview.java")
 (:help nil nil)
  )
 ( "wovgoodf"
 "wv-Good forces control world"
 "spss-match"
 "wovGoodForces"
 ("wovGoodForces" "2" "wovGoodForcesQ" "int" "Agree7" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "iWorldview.java")
 (:help nil nil)
  )
 ( "wovmylif"
 "wv-My life will improve"
 "spss-match"
 "wovMyLife"
 ("wovMyLife" "3" "wovMyLifeQ" "int" "Agree7" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "iWorldview.java")
 (:help nil nil)
  )
 ( "wovnfair"
 "wv-Not life unfair to me"
 "spss-match"
 "wovLifeNotFair"
 ("wovLifeNotFair" "4" "wovLifeNotFairQ" "int" "Agree7Reverse" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight," "iWorldview.java")
 (:help nil nil)
  )
 ( "woventit"
 "wv-Not entitled to basic necessities"
 "spss-match"
 "wovEntitled"
 ("wovEntitled" "5" "wovEntitledQ" "int" "Agree7Reverse" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight," "iWorldview.java")
 (:help nil nil)
  )
 ( "wovinjur"
 "wv-Not one ruined my life"
 "spss-match"
 "wovInjured"
 ("wovInjured" "6" "wovInjuredQ" "int" "Agree7Reverse" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "iWorldview.java")
 (:help nil nil)
  )
 ( "wovabund"
 "wv-Have all I need to be happy"
 "spss-match"
 "wovAbundance"
 ("wovAbundance" "7" "wovAbundanceQ" "int" "Agree7" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight," "iWorldview.java")
 (:help nil nil)
  )
 ( "wovgrate"
 "wv-Extremely grateful"
 "spss-match"
 "wovGrateful"
 ("wovGrateful" "8" "wovGratefulQ" "int" "Agree7" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight," "iWorldview.java")
 (:help nil nil)
  )
 ( "wovposth"
 "wv-Percent of time positive thoughts"
 "spss-match"
 "wovPosThoughtsPerCent"
 ("wovPosThoughtsPerCent" "9" "wovPosThoughtsPerCentQ" "int" "Percent10" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "iWorldview.java")
 (:help nil nil)
  )
 ( "wovhappy"
 "wf-Not fear unhappy career"
 "spss-match"
 "wovHappyCareer"
 ("wovHappyCareer" "10" "wovHappyCareerQ" "int" "Fear7Reverse" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "iWorldviewFears.java")
 (:help nil nil)
  )
 ( "wovpoor"
 "wf-Not fear of poverty"
 "spss-match"
 "wovPoor"
 ("wovPoor" "12" "wovPoorQ" "int" "Fear7Reverse" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "iWorldviewFears.java")
 (:help nil nil)
  )
 ( "wovill"
 "wf-Not fear of illness"
 "spss-match"
 "wovIll"
 ("wovIll" "13" "wovIllQ" "int" "Fear7Reverse" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "iWorldviewFears.java")
 (:help nil nil)
  )
 ( "wovdeath"
 "wf-Not fear of death"
 "spss-match"
 "wovDeath"
 ("wovDeath" "14" "wovDeathQ" "int" "Fear7Reverse" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "iWorldviewFears.java")
 (:help nil nil)
  )
 ( "wovalone"
 "wf-Not fear of being alone"
 "spss-match"
 "wovAlone"
 ("wovAlone" "15" "wovAloneQ" "int" "Fear7Reverse" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "iWorldviewFears.java")
 (:help nil nil)
  )
 ( "wovnolov"
 "wf-Not fear of poor marriage-family"
 "spss-match"
 "wovNoLove"
 ("wovNoLove" "16" "wovNoLoveQ" "int" "Fear7Reverse" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "iWorldviewFears.java")
 (:help nil nil)
  )
 ( "wovliked"
 "wf-Not fear of not close friends"
 "spss-match"
 "wovLiked"
 ("wovLiked" "17" "wovLikedQ" "int" "Fear7Reverse" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "iWorldviewFears.java")
 (:help nil nil)
  )
 ( "wovperso"
 "wf-Not fear of not being person want"
 "spss-match"
 "wovPerson"
 ("wovPerson" "18" "wovPersonQ" "int" "Fear7Reverse" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "iWorldviewFears.java")
 (:help nil nil)
  )
 ( "wovprobl"
 "wf-Not fear of overcoming problem"
 "spss-match"
 "wovProblem"
 ("wovProblem" "19" "wovProblemQ" "int" "Fear7Reverse" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "iWorldviewFears.java")
 (:help nil nil)
  )
 ( "wovdisco"
 "wf-Not fear of something discovered"
 "spss-match"
 "wovDiscovered"
 ("wovDiscovered" "20" "wovDiscoveredQ" "int" "Fear7Reverse" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "iWorldviewFears.java")
 (:help nil nil)
  )
 ( "wovsucce"
 "wf-Not fear of lack acad-career success"
 "spss-match"
 "wovSuccess"
 ("wovSuccess" "11" "wovSuccessQ" "int" "Fear7Reverse" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "iWorldviewFears.java")
 (:help nil nil)
  )
 ( "wovoverc"
 "wf-Could be happy if worst fear happened"
 "spss-match"
 "wovOvercomeFear"
 ("wovOvercomeFear" "21" "wovOvercomeFearQ" "int" "Agree7" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "iWorldviewFears.java")
 (:help nil nil)
  )
 ) (
 SELF-CONF
 ( "slflearn"
 "sc-Learning and study skills"
 "spss-match"
 "slfLearnSkill"
 ("slfLearnSkill" "11" "slfLearnSkillQ" "int" "Confidence7" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight," "iSelf.java")
 (:help nil nil)
  )
 ( "slfcritt"
 "sc-Critical thinking and logic"
 "spss-match"
 "slfCritThink"
 ("slfCritThink" "2" "slfCritThinkQ" "int" "Confidence7" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "iSelf.java")
 (:help nil nil)
  )
 ( "slfresea"
 "sc-Research & methodology"
 "spss-match"
 "slfResearch"
 ("slfResearch" "3" "slfResearchQ" "int" "Confidence7" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "iSelf.java")
 (:help nil nil)
  )
 ( "slfanaly"
 "sc-Analytical thinking"
 "spss-match"
 "slfAnalysis"
 ("slfAnalysis" "4" "slfAnalysisQ" "int" "Confidence7" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "iSelf.java")
 (:help nil nil)
  )
 ( "slfsynth"
 "sc-Synthesis"
 "spss-match"
 "slfSynthesis"
 ("slfSynthesis" "5" "slfSynthesisQ" "int" "Confidence7" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "iSelf.java")
 (:help nil nil)
  )
 ( "slfcreat"
 "sc-Creative thinking-ideas"
 "spss-match"
 "slfCritThink"
 ("slfCritThink" "2" "slfCritThinkQ" "int" "Confidence7" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "iSelf.java")
 (:help nil nil)
  )
 ( "slfcompu"
 "sc-Computer-related"
 "spss-match"
 "slfComputer"
 ("slfComputer" "7" "slfComputerQ" "int" "Confidence7" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "iSelf.java")
 (:help nil nil)
  )
 ( "slfbiosc"
 "sc-Biological science"
 "spss-match"
 "slfBioSci"
 ("slfBioSci" "8" "slfBioSciQ" "int" "Confidence7" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "iSelf.java")
 (:help nil nil)
  )
 ( "slfnatsc"
 "sc-Natural science--physics, chem"
 "spss-match"
 "slfNatSci"
 ("slfNatSci" "9" "slfNatSciQ" "int" "Confidence7" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "iSelf.java")
 (:help nil nil)
  )
 ( "slflibar"
 "sc-Liberal arts"
 "spss-match"
 "slfLibArts"
 ("slfLibArts" "20" "slfLibArtsQ" "int" "Confidence7" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "iSelf.java")
 (:help nil nil)
  )
 ( "slfsocsc"
 "sc-Beh-social science"
 "spss-match"
 "slfSocSci"
 ("slfSocSci" "21" "slfSocSciQ" "int" "Confidence7" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "iSelf.java")
 (:help nil nil)
  )
 ( "slfphilr"
 "sc-Philosophy-religion"
 "spss-match"
 "slfPhilRel"
 ("slfPhilRel" "12" "slfPhilRelQ" "int" "Confidence7" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "iSelf.java")
 (:help nil nil)
  )
 ( "slfperfa"
 "sc-Performing arts"
 "spss-match"
 "slfPerfArt"
 ("slfPerfArt" "13" "slfPerfArtQ" "int" "Confidence7" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "iSelf.java")
 (:help nil nil)
  )
 ( "slffinea"
 "sc-Fine arts"
 "spss-match"
 "slfFineArt"
 ("slfFineArt" "14" "slfFineArtQ" "int" "Confidence7" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "iSelf.java")
 (:help nil nil)
  )
 ( "slfbusan"
 "sc-Business or management"
 "spss-match"
 "slfBusAndManage"
 ("slfBusAndManage" "15" "slfBusAndManageQ" "int" "Confidence7" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "iSelf.java")
 (:help nil nil)
  )
 ( "slfheal2"
 "sc-Health or medicine"
 "spss-match"
 "slfHealthMed"
 ("slfHealthMed" "16" "slfHealthMedQ" "int" "Confidence7" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight," "iSelf.java")
 (:help nil nil)
  )
 ( "slfengin"
 "sc-Engineering or technical"
 "spss-match"
 "slfEngin"
 ("slfEngin" "17" "slfEnginQ" "int" "Confidence7" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "iSelf.java")
 (:help nil nil)
  )
 ( "slfeduch"
 "sc-Educ,Counseling, or helping"
 "spss-match"
 "slfEducHelp"
 ("slfEducHelp" "18" "slfEducHelpQ" "int" "Confidence7" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "iSelf.java")
 (:help nil nil)
  )
 ( "slfiq"
 "sc-Intelligence"
 "spss-match"
 "slfIQ"
 ("slfIQ" "19" "slfIQQ" "int" "Confidence7" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "iSelf.java")
 (:help nil nil)
  )
 ( "slfdecma"
 "sc-Decision-making/planning"
 "spss-match"
 "slfDecMaking"
 ("slfDecMaking" "30" "slfDecMakingQ" "int" "Confidence7" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight," "iSelf.java")
 (:help nil nil)
  )
 ( "slftimem"
 "sc-Time management"
 "spss-match"
 "slfTimeManagement"
 ("slfTimeManagement" "31" "slfTimeManagementQ" "int" "Confidence7" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight," "iSelf.java")
 (:help nil nil)
  )
 ( "slfcope"
 "sc-Emotional coping skills"
 "spss-match"
 "slfCope"
 ("slfCope" "22" "slfCopeQ" "int" "Confidence7" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight," "iSelf.java")
 (:help nil nil)
  )
 ( "slfself4"
 "sc-Ach motivation-work habits, focus"
 "spss-match"
 "slfSelfMotiv"
 ("slfSelfMotiv" "24" "slfSelfMotivQ" "int" "Confidence7" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight," "iSelf.java")
 (:help nil nil)
  )
 ( "slfselfm"
 "sc-Self-motivation of unpleasant"
 "spss-match"
 "slfSelfDisclose"
 ("slfSelfDisclose" "40" "slfSelfDiscloseQ" "int" "Confidence7" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight," "iSelf.java")
 (:help nil nil)
  )
 ( "slfachan"
 "sc-Self-development/change"
 "spss-match"
 "slfAchAndWork"
 ("slfAchAndWork" "25" "slfAchAndWorkQ" "int" "Confidence7" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "iSelf.java")
 (:help nil nil)
  )
 ( "slfmana6"
 "sc-Managing finances"
 "spss-match"
 "slfManageMoney"
 ("slfManageMoney" "26" "slfManageMoneyQ" "int" "Confidence7" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight," "iSelf.java")
 (:help nil nil)
  )
 ( "slfheal3"
 "sc-Health detailed knowl & habits"
 "spss-match"
 "slfHealthMed"
 ("slfHealthMed" "16" "slfHealthMedQ" "int" "Confidence7" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight," "iSelf.java")
 (:help nil nil)
  )
 ( "slfmeetp"
 "sc-Meeting people"
 "spss-match"
 "slfMeetPeople"
 ("slfMeetPeople" "28" "slfMeetPeopleQ" "int" "Confidence7" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight," "iSelf.java")
 (:help nil nil)
  )
 ( "slfliste"
 "sc-Empathetic listening skills"
 "spss-match"
 "slfListening"
 ("slfListening" "29" "slfListeningQ" "int" "Confidence7" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight," "iSelf.java")
 (:help nil nil)
  )
 ( "slfself5"
 "sc-Self-disclosure"
 "spss-match"
 "slfSelfDisclose"
 ("slfSelfDisclose" "40" "slfSelfDiscloseQ" "int" "Confidence7" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight," "iSelf.java")
 (:help nil nil)
  )
 ( "slfconfl"
 "sc-Conflict resolution skills"
 "spss-match"
 "slfConflictResol"
 ("slfConflictResol" "41" "slfConflictResolQ" "int" "Confidence7" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight," "iSelf.java")
 (:help nil nil)
  )
 ( "slfpersu"
 "sc-Persuasion skills"
 "spss-match"
 "slfPersuasion"
 ("slfPersuasion" "32" "slfPersuasionQ" "int" "Confidence7" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight," "iSelf.java")
 (:help nil nil)
  )
 ( "slfmana7"
 "sc-Management-leadership skills"
 "spss-match"
 "slfManageSkill"
 ("slfManageSkill" "33" "slfManageSkillQ" "int" "Confidence7" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "iSelf.java")
 (:help nil nil)
  )
 ( "slfhelps"
 "sc-Helping-teaching skills"
 "spss-match"
 "slfHelpSkill"
 ("slfHelpSkill" "34" "slfHelpSkillQ" "int" "Confidence7" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight," "iSelf.java")
 (:help nil nil)
  )
 ( "slfspeak"
 "sc-Public speaking skills"
 "spss-match"
 "slfSpeakSkill"
 ("slfSpeakSkill" "35" "slfSpeakSkillQ" "int" "Confidence7" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "iSelf.java")
 (:help nil nil)
  )
 ( "slfjobse"
 "sc-Job search skills"
 "spss-match"
 "slfJobSearch"
 ("slfJobSearch" "36" "slfJobSearchQ" "int" "Confidence7" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "iSelf.java")
 (:help nil nil)
  )
 ( "slfadapt"
 "sc-Adaptable-success in any situation"
 "spss-match"
 "slfAdapt"
 ("slfAdapt" "37" "slfAdaptQ" "int" "Confidence7" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "iSelf.java")
 (:help nil nil)
  )
 ( "slfhappy"
 "sc-Happiness IQ"
 "spss-match"
 "slfHappyIQ"
 ("slfHappyIQ" "38" "slfHappyIQQ" "int" "Confidence7" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight," "iSelf.java")
 (:help nil nil)
  )
 ( "slfoptim"
 "sc-Optimism"
 "spss-match"
 "slfTimeManagement"
 ("slfTimeManagement" "31" "slfTimeManagementQ" "int" "Confidence7" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight," "iSelf.java")
 (:help nil nil)
  )
 ( "slffrien"
 "sc-Caring, friendly, outgoing"
 "spss-match"
 "slfFriendly"
 ("slfFriendly" "52" "slfFriendlyQ" "int" "LikeMe7" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "iSelf.java")
 (:help nil nil)
  )
 ( "slfindep"
 "sc-Strong, independent, self-disciplined"
 "spss-match"
 "slfIndependent"
 ("slfIndependent" "53" "slfIndependentQ" "int" "LikeMe7" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight," "iSelf.java")
 (:help nil nil)
  )
 ) (
 ASSERTCR
 ( "cr1issue"
 "cr-One issue at a time"
 "spss-match"
 "crSrq19Issue"
 ("crSrq19Issue" "1" "crSrq19IssueQ" "int" "LikeUs7" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "bsAssertiveCR.java")
 (:help nil nil)
  )
 ( "crresolv"
 "cr-Rarely repeat arguments of same issue"
 "spss-match"
 "crSrq26Finish"
 ("crSrq26Finish" "2" "crSrq26FinishQ" "int" "LikeUs7" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "bsAssertiveCR.java")
 (:help nil nil)
  )
 ( "crnthrea"
 "cr-I rarely make threats"
 "spss-match"
 "crSrq29Threats"
 ("crSrq29Threats" "3" "crSrq29ThreatsQ" "int" "LikeUs7" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "bsAssertiveCR.java")
 (:help nil nil)
  )
 ( "crunderl"
 "cr-Discuss underlying issues"
 "spss-match"
 "crSrq30Real"
 ("crSrq30Real" "4" "crSrq30RealQ" "int" "LikeUs7" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "bsAssertiveCR.java")
 (:help nil nil)
  )
 ( "crtklong"
 "cr-Not one talk long before other"
 "spss-match"
 "crSrq32OneTalk"
 ("crSrq32OneTalk" "5" "crSrq32OneTalkQ" "int" "LikeUs7Reverse" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "bsAssertiveCR.java")
 (:help nil nil)
  )
 ( "crnneglb"
 "cr-I rarely use negative labels"
 "spss-match"
 "crSrq33RareNeg"
 ("crSrq33RareNeg" "6" "crSrq33RareNegQ" "int" "LikeUs7" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "bsAssertiveCR.java")
 (:help nil nil)
  )
 ( "crteweak"
 "cr-Not uncomfortable about tell weakness"
 "spss-match"
 "crSrq34NoWeak"
 ("crSrq34NoWeak" "7" "crSrq34NoWeakQ" "int" "LikeUs7Reverse" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "bsAssertiveCR.java")
 (:help nil nil)
  )
 ( "crwinwin"
 "cr-Discuss until win-win solution"
 "spss-match"
 "crSrq35WinWin"
 ("crSrq35WinWin" "8" "crSrq35WinWinQ" "int" "LikeUs7" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "bsAssertiveCR.java")
 (:help nil nil)
  )
 ( "crlongtk"
 "cr-Keep going until reach a solution"
 "spss-match"
 "crSrq36LongTalk"
 ("crSrq36LongTalk" "9" "crSrq36LongTalkQ" "int" "LikeUs7" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "bsAssertiveCR.java")
 (:help nil nil)
  )
 ( "crexaggr"
 "cr-I not freq use 'always' or exaggeration"
 "spss-match"
 "crSrq37Exaggerate"
 ("crSrq37Exaggerate" "10" "crSrq37ExaggerateQ" "int" "LikeUs7Reverse" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "bsAssertiveCR.java")
 (:help nil nil)
  )
 ( "crmanipu"
 "cr-Not feel me or partner manipulate"
 "spss-match"
 "crSrq38PartManip"
 ("crSrq38PartManip" "11" "crSrq38PartManipQ" "int" "LikeUs7Reverse" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "bsAssertiveCR.java")
 (:help nil nil)
  )
 ( "crsummar"
 "cr-I repeat summary"
 "spss-match"
 "crSrq39Listen"
 ("crSrq39Listen" "12" "crSrq39ListenQ" "int" "LikeUs7" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "bsAssertiveCR.java")
 (:help nil nil)
  )
 ( "crcprais"
 "cr-We laugh & praise during disagree"
 "spss-match"
 "crSrq40Praise"
 ("crSrq40Praise" "13" "crSrq40PraiseQ" "int" "LikeUs7" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "bsAssertiveCR.java")
 (:help nil nil)
  )
 ( "crboassr"
 "cr-Both assertive pos,firm,diplom"
 "spss-match"
 "crSrq43BothAssert"
 ("crSrq43BothAssert" "14" "crSrq43BothAssertQ" "int" "LikeUs7" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "bsAssertiveCR.java")
 (:help nil nil)
  )
 ( "crophone"
 "cr-We open,nondefensive,honest"
 "spss-match"
 "crSrq45Open"
 ("crSrq45Open" "15" "crSrq45OpenQ" "int" "LikeUs7" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "bsAssertiveCR.java")
 (:help nil nil)
  )
 ( "crreprai"
 "cr-Partner gives more praise than criticism"
 "spss-match"
 "crSrq47PartCrit"
 ("crSrq47PartCrit" "16" "crSrq47PartCritQ" "int" "LikeUs7Reverse" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "bsAssertiveCR.java")
 (:help nil nil)
  )
 ( "crteach"
 "cr-Not problem teaching other"
 "spss-match"
 "crSrq56Teach"
 ("crSrq56Teach" "17" "crSrq56TeachQ" "int" "LikeUs7Reverse" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "bsAssertiveCR.java")
 (:help nil nil)
  )
 ( "crifavor"
 "cr-I do favors cheerfully when asked"
 "spss-match"
 "crSrq57Favor"
 ("crSrq57Favor" "18" "crSrq57FavorQ" "int" "LikeUs7" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "bsAssertiveCR.java")
 (:help nil nil)
  )
 ( "crifolup"
 "cr-I do what I tell partner"
 "spss-match"
 "crSrq59FollowUp"
 ("crSrq59FollowUp" "19" "crSrq59FollowUpQ" "int" "LikeUs7" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "bsAssertiveCR.java")
 (:help nil nil)
  )
 ( "crangang"
 "cr-If p-angry at me, I don't get angry-def"
 "spss-match"
 "crSrq60AngerBack"
 ("crSrq60AngerBack" "20" "crSrq60AngerBackQ" "int" "LikeUs7Reverse" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "bsAssertiveCR.java")
 (:help nil nil)
  )
 ( "criprais"
 "cr-I not criticize more than praise p-"
 "spss-match"
 "crSrq67Critical"
 ("crSrq67Critical" "21" "crSrq67CriticalQ" "int" "LikeUs7Reverse" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "bsAssertiveCR.java")
 (:help nil nil)
  )
 ( "crangres"
 "cr-If one angry, other assertive back"
 "spss-match"
 "crSrq68AngerRes"
 ("crSrq68AngerRes" "22" "crSrq68AngerResQ" "int" "LikeUs7" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "bsAssertiveCR.java")
 (:help nil nil)
  )
 ( "crtlkmor"
 "cr-One partner not much more talkative"
 "spss-match"
 "crSrq31EqTalk"
 ("crSrq31EqTalk" "23" "crSrq31EqTalkQ" "int" "LikeUs7Reverse" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "bsAssertiveCR.java")
 (:help nil nil)
  )
 ( "creqwin"
 "cr-Equal winning of disagreements"
 "spss-match"
 "crSrq58EqWin"
 ("crSrq58EqWin" "24" "crSrq58EqWinQ" "int" "LikeUs7" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "bsAssertiveCR.java")
 (:help nil nil)
  )
 ) (
 INTIMACY
 ( "instshlp"
 "in-Partner helps if I under stress"
 "spss-match"
 "intSrq6Extra"
 ("intSrq6Extra" "1" "intSrq6ExtraQ" "int" "LikeUs7" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "bsIntimacy.java")
 (:help nil nil)
  )
 ( "intcomit"
 "in-Not-commitment cause feel trapped"
 "spss-match"
 "intSrq7Commit"
 ("intSrq7Commit" "2" "intSrq7CommitQ" "int" "LikeUs7Reverse" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "bsIntimacy.java")
 (:help nil nil)
  )
 ( "intundrl"
 "in-We discuss underlying issues"
 "spss-match"
 "intSrq30Real"
 ("intSrq30Real" "3" "intSrq30RealQ" "int" "LikeUs7" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "bsIntimacy.java")
 (:help nil nil)
  )
 ( "inttelal"
 "in-Told partner all about self"
 "spss-match"
 "intSrq8TellAll"
 ("intSrq8TellAll" "4" "intSrq8TellAllQ" "int" "LikeUs7" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "bsIntimacy.java")
 (:help nil nil)
  )
 ( "intsmgoa"
 "in-We agree on long term goals"
 "spss-match"
 "intSrq18LikeGoals"
 ("intSrq18LikeGoals" "5" "intSrq18LikeGoalsQ" "int" "LikeUs7" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "bsIntimacy.java")
 (:help nil nil)
  )
 ( "inteqdec"
 "in-Equality in decision influence"
 "spss-match"
 "intSrq20EqDiscuss"
 ("intSrq20EqDiscuss" "6" "intSrq20EqDiscussQ" "int" "LikeUs7" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "bsIntimacy.java")
 (:help nil nil)
  )
 ( "intiopen"
 "in-We tell almost exactly what we thinking"
 "spss-match"
 "intSrq21OpenIssue"
 ("intSrq21OpenIssue" "7" "intSrq21OpenIssueQ" "int" "LikeUs7" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "bsIntimacy.java")
 (:help nil nil)
  )
 ( "intweopn"
 "in-We open, nondefensive,honest"
 "spss-match"
 "intSrq45NonDef"
 ("intSrq45NonDef" "8" "intSrq45NonDefQ" "int" "LikeUs7" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "bsIntimacy.java")
 (:help nil nil)
  )
 ( "intdaily"
 "in-Daily sharing of feelings on events"
 "spss-match"
 "intSrq46OpenFeel"
 ("intSrq46OpenFeel" "9" "intSrq46OpenFeelQ" "int" "LikeUs7" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "bsIntimacy.java")
 (:help nil nil)
  )
 ( "intrespt"
 "in-Respect partner above others"
 "spss-match"
 "intSrq50Respect"
 ("intSrq50Respect" "10" "intSrq50RespectQ" "int" "LikeUs7" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "bsIntimacy.java")
 (:help nil nil)
  )
 ( "intallop"
 "in-Open, specific about sensitive issues"
 "spss-match"
 "intSrq53OpenSexTk"
 ("intSrq53OpenSexTk" "11" "intSrq53OpenSexTkQ" "int" "LikeUs7" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "bsIntimacy.java")
 (:help nil nil)
  )
 ( "intwktog"
 "in-We enjoy working together"
 "spss-match"
 "intSrq55MutTask"
 ("intSrq55MutTask" "12" "intSrq55MutTaskQ" "int" "LikeUs7Reverse" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "bsIntimacy.java")
 (:help nil nil)
  )
 ( "intknpfe"
 "in-Not frequently don't know p- feelings"
 "spss-match"
 "intSrq61KnowFeel"
 ("intSrq61KnowFeel" "13" "intSrq61KnowFeelQ" "int" "LikeUs7Reverse" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "bsIntimacy.java")
 (:help nil nil)
  )
 ( "intlsqpr"
 "in-Tell of respect, love of p- to others"
 "spss-match"
 "intLsqPRASE44Q"
 ("intLsqPRASE44Q" "14" "intLsqPRASE44Q" "int" "LikeUs7" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "bsIntimacy.java")
 (:help nil nil)
  )
 ( "intlove"
 "in-I love partner very much"
 "spss-match"
 "intLove"
 ("intLove" "15" "intLoveQ" "int" "LikeUs7" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "bsIntimacy.java")
 (:help nil nil)
  )
 ) (
 INDEP-INT
 #|( "inrbealnORIG"
 "ORIG-id-OK for weekends alone"
 NIL
 ("inrSrq2BeAloneORIG")
 NO-PC-INST-MATCH
 (:help nil nil)
  )|#
 ( "inrbealn"
 "id-OK for weekends alone"
 "spss-match"
 "inrSrq2BeAlone"
 ("inrSrq2BeAlone" "1" "inrSrq2BeAloneQ" "int" "LikeUs7Reverse" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "bsIndependentRel.java")
 (:help nil nil)
  )
 #|( "inalcnstORIG"
 "ORIG-id-Not consult for small decisions"
 NIL
 "inrSrq3Consult"
 ("inrSrq3Consult" "2" "inrSrq3ConsultQ" "int" "LikeUs7Reverse" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "bsIndependentRel.java")
 (:help nil nil)
  )|#
 ( "inalcnst"
 "id-Not consult for small decisions"
 "spss-match"
 "inrSrq3Consult"
 ("inrSrq3Consult" "2" "inrSrq3ConsultQ" "int" "LikeUs7Reverse" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "bsIndependentRel.java")
 (:help nil nil)
  )
 ( "inrfrien"
 "id-P- has opposite sex social friends"
 "spss-match"
 "inrSrq9OwnFriends"
 ("inrSrq9OwnFriends" "3" "inrSrq9OwnFriendsQ" "int" "LikeUs7" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "bsIndependentRel.java")
 (:help nil nil)
  )
 ( "indifdec"
 "id-Support p decision if disagree"
 "spss-match"
 "inrSrq10EncDifDec"
 ("inrSrq10EncDifDec" "4" "inrSrq10EncDifDecQ" "int" "LikeUs7" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "bsIndependentRel.java")
 (:help nil nil)
  )
 ( "inrlunch"
 "id-Lunch with opposite sex OK"
 "spss-match"
 "inrSrq11Lunch"
 ("inrSrq11Lunch" "5" "inrSrq11LunchQ" "int" "LikeUs7" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "bsIndependentRel.java")
 (:help nil nil)
  )
 ( "inrinhap"
 "id-Marriage not greater than ind- happy"
 "spss-match"
 "inrSrq15IndHap"
 ("inrSrq15IndHap" "6" "inrSrq15IndHapQ" "int" "LikeUs7Reverse" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "bsIndependentRel.java")
 (:help nil nil)
  )
 ( "innevarg"
 "id-Not-partners never disagree if happy"
 NIL
 "inrSrq16NevArgue"
 ("inrSrq16NevArgue" "7" "inrSrq16NevArgueQ" "int" "LikeUs7Reverse" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "bsIndependentRel.java")
 (:help nil nil)
  )
 ( "inrigrow"
 "id-I end relationship if can't grow"
 NIL
 "inrSrq17End"
 ("inrSrq17End" "8" "inrSrq17EndQ" "int" "LikeUs7" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "bsIndependentRel.java")
 (:help nil nil)
  )
 ( "inrsaywe"
 "id-Not say we'when mean 'I"
 NIL
 "inrSrq24SayWe"
 ("inrSrq24SayWe" "9" "inrSrq24SayWeQ" "int" "LikeUs7Reverse" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "bsIndependentRel.java")
 (:help nil nil)
  )
 ( "incomtwo"
 "id-Not-worries of other's commitment"
 NIL
 "inrSrq25CommitWorry"
 ("inrSrq25CommitWorry" "10" "inrSrq25CommitWorryQ" "int" "LikeUs7Reverse" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "bsIndependentRel.java")
 (:help nil nil)
  )
 ( "indifgoa"
 "id-Ok for different goals"
 NIL
 "inrSrq28DifGoalOK"
 ("inrSrq28DifGoalOK" "11" "inrSrq28DifGoalOKQ" "int" "LikeUs7" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "bsIndependentRel.java")
 (:help nil nil)
  )
 ( "infindan"
 "id-Could be happy with another"
 NIL
 "inrSrq41FindAnother"
 ("inrSrq41FindAnother" "12" "inrSrq41FindAnotherQ" "int" "LikeUs7" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "bsIndependentRel.java")
 (:help nil nil)
  )
 ( "inenalon"
 "id-Not-can't enjoy being w/o partner"
 NIL
 "inrSrq44EnjoyAlone"
 ("inrSrq44EnjoyAlone" "13" "inrSrq44EnjoyAloneQ" "int" "LikeUs7Reverse" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "bsIndependentRel.java")
 (:help nil nil)
  )
 ( "inokalon"
 "id-Not-not happy if not partner"
 NIL
 "inrSrq48HapAlone"
 ("inrSrq48HapAlone" "14" "inrSrq48HapAloneQ" "int" "LikeUs7Reverse" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "bsIndependentRel.java")
 (:help nil nil)
  )
 ( "inrhatea"
 "id-Not-I hate to be alone"
 NIL
 "inrSrq49FearAlone"
 ("inrSrq49FearAlone" "15" "inrSrq49FearAloneQ" "int" "LikeUs7Reverse" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "bsIndependentRel.java")
 (:help nil nil)
  )
 ( "inrfreeh"
 "id-Free at home if partner there"
 NIL
 "inrSrq51FreeAtHome"
 ("inrSrq51FreeAtHome" "16" "inrSrq51FreeAtHomeQ" "int" "LikeUs7" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "bsIndependentRel.java")
 (:help nil nil)
  )
 ( "insepint"
 "id-sep-interests"
 NIL
 "INRSRQ63PARTINTERESTS"
 ("inrSrq63PartInterests" "18" "inrSrq63PartInterestsQ"   "int" "LikeUs7" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "bsIndependentRel.java")
 (:help nil nil)
  )
#|insepint, added manually 2014-08
    PCategory inrSrq63PartInterests= new PCategory("inrSrq63PartInterests",18, inrSrq63PartInterestsQ, "int",  FrAnswerPanel.LikeUs7,questionInstancesArray, frameTitle, frameDimWidth, frameDimHeight);
    questionInstancesArray[16] = inrSrq63PartInterests;
inrmoney added manually 2014-08
    PCategory inrSrq64OwnFunds= new PCategory("inrSrq64OwnFunds",19, inrSrq64OwnFundsQ, "int",  FrAnswerPanel.LikeUs7,questionInstancesArray, frameTitle, frameDimWidth, frameDimHeight);
    questionInstancesArray[17] = inrSrq64OwnFunds;|#
( "inrmoney"
 "id-SeparateFunds"
 NIL
 "INRSRQ64OWNFUNDS"
 ("inrsrq64ownfunds" "19" "inrsrq64ownfundsQ" "int" "LikeUs7" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "bsIndependentRel.java")
 (:help nil nil)
  )
 ) (
 ROM
 ( "romsurpr"
 "ro-Surprise p- once/week"
 "spss-match"
 "romSrq1Surprise"
 ("romSrq1Surprise" "1" "romSrq1SurpriseQ" "int" "LikeMe7" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "bsRomantic.java")
 (:help nil nil)
  )
 ( "romfanta"
 "ro-Freq fantasies about p-"
 "spss-match"
 "romSrq4Fantasize"
 ("romSrq4Fantasize" "2" "romSrq4FantasizeQ" "int" "LikeMe7" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "bsRomantic.java")
 (:help nil nil)
  )
 ( "romceleb"
 "ro-Celebrate special days 1/month"
 "spss-match"
 "romSrq5Celebr"
 ("romSrq5Celebr" "3" "romSrq5CelebrQ" "int" "LikeUs7" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "bsRomantic.java")
 (:help nil nil)
  )
 ( "romplace"
 "ro-We go to romantic places 1/week"
 "spss-match"
 "romSrq12RomPlaces"
 ("romSrq12RomPlaces" "4" "romSrq12RomPlacesQ" "int" "LikeUs7" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "bsRomantic.java")
 (:help nil nil)
  )
 ( "romattra"
 "ro-Sexually attracted to partner"
 "spss-match"
 "romSrq13Attract"
 ("romSrq13Attract" "5" "romSrq13AttractQ" "int" "LikeMe7" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "bsRomantic.java")
 (:help nil nil)
  )
 ( "romplayf"
 "ro-Some playful interactions weekly"
 "spss-match"
 "romSrq14Play"
 ("romSrq14Play" "6" "romSrq14PlayQ" "int" "LikeUs7" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "bsRomantic.java")
 (:help nil nil)
  )
 ( "romcharm"
 "ro-Partner charming & romantic"
 "spss-match"
 "romSrq42Charm"
 ("romSrq42Charm" "7" "romSrq42CharmQ" "int" "LikeMe7" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "bsRomantic.java")
 (:help nil nil)
  )
 ) (
 LIBROLE
 ( "lromtask"
 "find"
 "check-spss-match"
 "lroSrq22MTasks"
 ("lroSrq22MTasks" "1" "lroSrq22MTasksQ" "int" "Agree7Reverse" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "bsLiberatedRole.java")
 (:help nil nil)
  )
 ( "lroftask"
 "find"
 "check-spss-match"
 "lroSrq23FTasks"
 ("lroSrq23FTasks" "2" "lroSrq23FTasksQ" "int" "Agree7Reverse" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "bsLiberatedRole.java")
 (:help nil nil)
  )
 ( "lrmfinal"
 "find"
 "check-spss-match"
 "lroSrq27FinalDec"
 ("lroSrq27FinalDec" "3" "lroSrq27FinalDecQ" "int" "Agree7Reverse" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "bsLiberatedRole.java")
 (:help nil nil)
  )
 ( "lroembar"
 "find"
 "check-spss-match"
 "lroSrq52Embar"
 ("lroSrq52Embar" "4" "lroSrq52EmbarQ" "int" "Agree7Reverse" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "bsLiberatedRole.java")
 (:help nil nil)
  )
 ( "lromstro"
 "find"
 "check-spss-match"
 "lroSrq54MStronger"
 ("lroSrq54MStronger" "5" "lroSrq54MStrongerQ" "int" "Agree7Reverse" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "bsLiberatedRole.java")
 (:help nil nil)
  )
 ( "lroeqinc"
 "find"
 "check-spss-match"
 "lroSrq65EqIncome"
 ("lroSrq65EqIncome" "6" "lroSrq65EqIncomeQ" "int" "Agree7" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "bsLiberatedRole.java")
 (:help nil nil)
  )
 ( "lrcarcon"
 "find"
 "check-spss-match"
 "lroSrq66FQuitJob"
 ("lroSrq66FQuitJob" "7" "lroSrq66FQuitJobQ" "int" "Agree7Reverse" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "bsLiberatedRole.java")
 (:help nil nil)
  )
 ) (
 HAP
 ( "haparea"
 "h-Happy living in area, home"
 "spss-match"
 "hapAREA"
 ("hapAREA" "2" "hapAREAQ" "int" "Happy7" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "eHappy.java")
 (:help nil nil)
  )
 ( "hapclfrn"
 "h-Happy w/ number & closeness of friends"
 "spss-match"
 "hapCLFRN"
 ("hapCLFRN" "3" "hapCLFRNQ" "int" "Happy7" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "eHappy.java")
 (:help nil nil)
  )
 ( "hapcarnw"
 "h-Happy w/ my career now"
 "spss-match"
 "hapCareer"
 ("hapCareer" "4" "hapCareerQ" "int" "Happy7" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "eHappy.java")
 (:help nil nil)
  )
 ( "hapcarfu"
 "h-Happy w/ future career expectations"
 "spss-match"
 "hapCareerExpect"
 ("hapCareerExpect" "6" "hapCareerExpectQ" "int" "Happy7" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "eHappy.java")
 (:help nil nil)
  )
 ( "hapfrien"
 "h-Happy w/ friendships"
 "spss-match"
 "hapFriends"
 ("hapFriends" "7" "hapFriendsQ" "int" "Happy7" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "eHappy.java")
 (:help nil nil)
  )
 ( "hapwkrel"
 "h-Happy w/ work-school relationships"
 "spss-match"
 "hapWorkRels"
 ("hapWorkRels" "8" "hapWorkRelsQ" "int" "Happy7" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "eHappy.java")
 (:help nil nil)
  )
 ( "happe"
 "h-Happy w/ physical activity"
 "spss-match"
 "hapPE"
 ("hapPE" "9" "hapPEQ" "int" "Happy7" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "eHappy.java")
 (:help nil nil)
  )
 ( "haprecre"
 "h-Happy w/ recreation"
 "spss-match"
 "hapRecreation"
 ("hapRecreation" "10" "hapRecreationQ" "int" "Happy7" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "eHappy.java")
 (:help nil nil)
  )
 ( "hapsexre"
 "h-Happy w/ sex/romance"
 "spss-match"
 "hapSexRel"
 ("hapSexRel" "11" "hapSexRelQ" "int" "Happy7" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "eHappy.java")
 (:help nil nil)
  )
 ( "hapfamil"
 "h-Happy w/ family relationships"
 "spss-match"
 "hapFamily"
 ("hapFamily" "12" "hapFamilyQ" "int" "Happy7" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "eHappy.java")
 (:help nil nil)
  )
 ( "hapselfd"
 "h-Happy w/ self & development"
 "spss-match"
 "hapSelfDevel"
 ("hapSelfDevel" "13" "hapSelfDevelQ" "int" "Happy7" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "eHappy.java")
 (:help nil nil)
  )
 ( "hapspiri"
 "h-Happy w/ meaning & spiritual/religious"
 "spss-match"
 "hapSpiritual"
 ("hapSpiritual" "14" "hapSpiritualQ" "int" "Happy7" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "eHappy.java")
 (:help nil nil)
  )
 ( "hapyear"
 "h-Happiness during past year"
 "spss-match"
 "hapYear"
 ("hapYear" "15" "hapYearQ" "int" "Happy7" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "eHappy.java")
 (:help nil nil)
  )
 ( "hap3year"
 "h-Happiness 1-3 years ago"
 "spss-match"
 "hapYear"
 ("hapYear" "15" "hapYearQ" "int" "Happy7" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "eHappy.java")
 (:help nil nil)
  )
 ( "haplife"
 "h-Happiness up to 3 years ago"
 "spss-match"
 "hapLife"
 ("hapLife" "17" "hapLifeQ" "int" "Happy7" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "eHappy.java")
 (:help nil nil)
  )
 ( "hapexpec"
 "h-Happiness expected in future"
 "spss-match"
 "hapExpect"
 ("hapExpect" "18" "hapExpectQ" "int" "Happy7" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "eHappy.java")
 (:help nil nil)
  )
 ) (
 RHEALTH
 ( "rhlfreqi"
 "he-LoFreq of illness past 3 years"
 "spss-match"
 "rhlFreqIllness"
 ("rhlFreqIllness" "1" "rhlFreqIllnessQ" "int" "Freq7Reverse" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "RealHealth.java")
 (:help nil nil)
  )
 ( "rhlalcoh"
 "he-LoFreq of alcohol drinks"
 "spss-match"
 "rhlAlcohol"
 ("rhlAlcohol" "2" "rhlAlcoholQ" "int" "Freq8Reverse" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "RealHealth.java")
 (:help nil nil)
  )
 ( "rhlsmoke"
 "he-LoFreq of cigarrettes"
 "spss-match"
 "rhlSmoke"
 ("rhlSmoke" "3" "rhlSmokeQ" "int" "Freq8Reverse" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "RealHealth.java")
 (:help nil nil)
  )
 ( "rhldrugs"
 "he-LoFreq of illegal drugs"
 "spss-match"
 "rhlDrugs"
 ("rhlDrugs" "4" "rhlDrugsQ" "int" "Freq8Reverse" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "RealHealth.java")
 (:help nil nil)
  )
 ( "rhlphysi"
 "he-Physical conditioning level"
 "spss-match"
 "rhlPhysicalCondition"
 ("rhlPhysicalCondition" "5" "rhlphysiQ" "int" "rhlphysiAnsArray"  "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight"  "RealHealth.java")
 (:help nil nil)
  )
 ( "rhlWeigh"
 "he-LoWeight"
 "spss-match"
 "rhlWeight"
 ("rhlWeight" "6"  "rhlweighQ" "int"  "rhlweighAnsArray" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight"  "RealHealth.java")
 (:help nil nil)
  )
 ) (
 RPEOPLE
 ( "rpehapfr"
 "re-Friends happy-successful"
 "spss-match"
 "rpeHAPFRiends"
 ("rpeHAPFRiends" "1" "rpeHAPFRiendsQ" "int" "LikeMe7" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "RealPeople.java")
 (:help nil nil)
  )
 ( "rpehmarr"
 "re-Have or had happy marital rel"
 "spss-match"
 "rpeHMARR"
 ("rpeHMARR" "2" "rpeHMARRQ" "int" "LikeMe8NotApply" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "RealPeople.java")
 (:help nil nil)
  )
 ( "rpenetw"
 "re-Close network of friends & career-rel"
 "spss-match"
 "rpeNETW"
 ("rpeNETW" "3" "rpeNETWQ" "int" "LikeMe7" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "RealPeople.java")
 (:help nil nil)
  )
 ( "rpeclfrn"
 "re-Have/had friends share innermost"
 "spss-match"
 "rpeCLFRN"
 ("rpeCLFRN" "4" "rpeCLFRNQ" "int" "LikeMe7" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "RealPeople.java")
 (:help nil nil)
  )
 ( "rpenumfr"
 "re-Number friends socialize 1/month"
 "spss-match"
 "rpeNumFriends"
 ("rpeNumFriends" "5" "rpeNumFriendsQ" "int" "NumberBy2" "questionInstancesArray" "frameTitle" "frameDimWidth" "frHeight12;" "RealPeople.java")
 (:help nil nil)
  )
 ( "rpenumcl"
 "re-Number extremely close friends"
 "spss-match"
 "rpeNumCloseFriends"
 ("rpeNumCloseFriends" "6" "rpeNumCloseFriendsQ" "int" "NumberBy2" "questionInstancesArray" "frameTitle" "frameDimWidth" "frHeight12" "RealPeople.java")
 (:help nil nil)
  )

 ( "rpecommi"
 "re-Degree of commit to 3 mo romantic"
 "spss-match"
 "rpeCommit"
 ("rpeCommit" "7" "rpecommiQ" "int" "rpeCommitAnsArray" "frameTitle" "frameDimWidth" "frHeight12"  "RealPeople.java")
 (:help nil nil)
  )
 ) (
 RDEP
 ( "rdepfeel"
 "de-Not often sad,apathetic,depressed"
 "spss-match"
 "rDepFeeling"
 ("rDepFeeling" "4" "rDepFeelingQ" "int" "LikeMe7Reverse" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "RealDepression.java")
 (:help nil nil)
  )
 ( "rdepthou"
 "de-Not worthless, very neg a-death,etc"
 "spss-match"
 "rDepThought"
 ("rDepThought" "5" "rDepThoughtQ" "int" "LikeMe7Reverse" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "RealDepression.java")
 (:help nil nil)
  )
 ( "rdepdyss"
 "de-RevDysthemia symptoms checklist"
 "spss-match"
 "rDepDysSymptoms"
 ("rDepDysSymptoms" "6" "rDepDysSymptomsQ" "int" "Duration11Reverse" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "RealDepression.java")
 (:help nil nil)
  )
 ( "rdepmajs"
 "de-RevMajor depression symptoms chkl"
 "spss-match"
 "rDepMajSymptoms"
 ("rDepMajSymptoms" "1" "rDepMajSymptomsQ" "int" "EpisodeFreq9Reverse" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "RealDepression.java")
 (:help nil nil)
  )
 ( "rdepmeds"
 "de-RevLength of time meds for depression"
 "spss-match"
 "rDepMeds"
 ("rDepMeds" "2" "rDepMedsQ" "int" "Duration11Reverse" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "RealDepression.java")
 (:help nil nil)
  )
 ( "rdepther"
 "de-RevAmount of therapy for depression"
 "spss-match"
 "rDepTherapy"
 ("rDepTherapy" "3" "rDepTherapyQ" "int" "EpisodeFreq9Reverse" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "RealDepression.java")
 (:help nil nil)
  )
 ) (
 RANX
 ( "ranxperf"
 "ax-RevPerformance anxiety level"
 "spss-match"
 "rAnxPerform"
 ("rAnxPerform" "1" "rAnxPerformQ" "int" "LikeMe7Reverse" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "RealAnxiety.java")
 (:help nil nil)
  )
 ( "ranxallt"
 "ax-Not feel anxious almost all time"
 "spss-match"
 "rAnxAllTime"
 ("rAnxAllTime" "2" "rAnxAllTimeQ" "int" "LikeMe7Reverse" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "RealAnxiety.java")
 (:help nil nil)
  )
 ( "ranxpstd"
 "ax-RevPSTD symptoms chkl"
 "spss-match"
 "rAnxPSTD"
 ("rAnxPSTD" "3" "rAnxPSTDQ" "int" "LikeMe7Reverse" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "RealAnxiety.java")
 (:help nil nil)
  )
 ( "ranxsoci"
 "ax-RevAnxiety with other people"
 "spss-match"
 "rAnxSocial"
 ("rAnxSocial" "4" "rAnxSocialQ" "int" "LikeMe7Reverse" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "RealAnxiety.java")
 (:help nil nil)
  )
 ( "ranxocd"
 "ax-RevTimes lasting OCD problems"
 "spss-match"
 "rAnxOCD"
 ("rAnxOCD" "5" "rAnxOCDQ" "int" "EpisodeFreq9Reverse" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "RealAnxiety.java")
 (:help nil nil)
  )
 ( "ranxphob"
 "ax-RevNumber of phobias"
 "spss-match"
 "rAnxPhobia"
 ("rAnxPhobia" "6" "rAnxPhobiaQ" "int" "NumberTo12Reverse" "questionInstancesArray" "frameTitle" "frameDimWidth" "frHeight13;" "RealAnxiety.java")
 (:help nil nil)
  )
 ( "ranxpani"
 "ax-RevNumber of panic attacks"
 "spss-match"
 "rAnxPanic"
 ("rAnxPanic" "7" "rAnxPanicQ" "int" "NumberTo12Reverse" "questionInstancesArray" "frameTitle" "frameDimWidth" "frHeight13;" "RealAnxiety.java")
 (:help nil nil)
  )
 ( "ranxmeds"
 "ax-RevTime meds for anxiety DEPRESSION?"
 "spss-match"
 "rAnxMeds"
 ("rAnxMeds" "8" "rAnxMedsQ" "int" "Duration11Reverse" "questionInstancesArray" "frameTitle" "frameDimWidth" "frHeight13;" "RealAnxiety.java")
 (:help nil nil)
  )
 ( "ranxther"
 "ax-Amount of therapy for anxiety"
 "spss-match"
 "rAnxTherapy"
 ("rAnxTherapy" "9" "rAnxTherapyQ" "int" "EpisodeFreq9Reverse" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "RealAnxiety.java")
 (:help nil nil)
  )
 )
 (RANG
 ( "rangfeel"
 "ag-RevFreq lose temper"
 "spss-match"
 "rAngFeeling"
 ("rAngFeeling" "1" "rAngFeelingQ" "int" "Freq8Reverse" "questionInstancesArray" "frameTitle" "frameDimWidth" "frHeight13;" "RealAnger.java")
 (:help nil nil)
  )
 ( "rangyell"
 "ag-RevFreq yell or call hurtful names"
 "spss-match"
 "rAngYell"
 ("rAngYell" "2" "rAngYellQ" "int" "Freq8Reverse" "questionInstancesArray" "frameTitle" "frameDimWidth" "frHeight13;" "RealAnger.java")
 (:help nil nil)
  )
 ( "rangdomi"
 "ag-RevFreq get way by [aggression]"
 "spss-match"
 "rAngDominate"
 ("rAngDominate" "3" "rAngDominateQ" "int" "Freq8Reverse" "questionInstancesArray" "frameTitle" "frameDimWidth" "frHeight13;" "RealAnger.java")
 (:help nil nil)
  )
 ( "rangthou"
 "ag-RevFreq think about get even"
 "spss-match"
 "rAngThoughts"
 ("rAngThoughts" "4" "rAngThoughtsQ" "int" "Freq8Reverse" "questionInstancesArray" "frameTitle" "frameDimWidth" "frHeight13;" "RealAnger.java")
 (:help nil nil)
  )
 ( "rangdest"
 "ag-RevFreq damage prop etc/break law"
 "spss-match"
 "rAngDestroy"
 ("rAngDestroy" "5" "rAngDestroyQ" "int" "Freq8Reverse" "questionInstancesArray" "frameTitle" "frameDimWidth" "frHeight13;" "RealAnger.java")
 (:help nil nil)
  )
 ) (
 REMOT
 ) (
 TB2
 ( "tb2relat"
 "b2-RevNo absolute right--situational ethics"
 "spss-match"
 "tbv2RelGood"
 ("tbv2RelGood" "1" "tbv2RelGoodQ" "int" "Belief10Reverse" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "iTopBV2.java")
 (:help nil nil)
  )
 ( "tb2punis"
 "b2-RevBad only happens if bad"
 "spss-match"
 "tbv2BadToSin"
 ("tbv2BadToSin" "2" "tbv2BadToSinQ" "int" "Belief10Reverse" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "iTopBV2.java")
 (:help nil nil)
  )
 ( "tbv2notr"
 "b2-RevNot responsible if bad environ/genes"
 "spss-match"
 "tbv2NotResponsible"
 ("tbv2NotResponsible" "3" "tbv2NotResponsibleQ" "int" "Belief10Reverse" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "iTopBV2.java")
 (:help nil nil)
  )
 ( "tb2groum"
 "b2-RevLife no meaning w/o spec group"
 "spss-match"
 "tbv2GroupMeaning"
 ("tbv2GroupMeaning" "4" "tbv2GroupMeaningQ" "int" "Belief10Reverse" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "iTopBV2.java")
 (:help nil nil)
  )
 ( "tb2selfm"
 "b2-RevAll meaning supplied by person"
 "spss-match"
 "tbv2SelfMeaning"
 ("tbv2SelfMeaning" "5" "tbv2SelfMeaningQ" "int" "Belief10Reverse" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "iTopBV2.java")
 (:help nil nil)
  )
 ( "tb2gdwrk"
 "b2-RevForgiveness depends on works"
 "spss-match"
 "tbv2GoodWorks"
 ("tbv2GoodWorks" "6" "tbv2GoodWorksQ" "int" "Belief10Reverse" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "iTopBV2.java")
 (:help nil nil)
  )
 ( "tb2gdatt"
 "b2-Goodness depends more on attitude"
 "spss-match"
 "tbv2GoodAttitude"
 ("tbv2GoodAttitude" "7" "tbv2GoodAttitudeQ" "int" "Belief10" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "iTopBV2.java")
 (:help nil nil)
  )
 ( "tb2allgd"
 "b2-Lots of good in all people"
 "spss-match"
 "tbv2AllGood"
 ("tbv2AllGood" "8" "tbv2AllGoodQ" "int" "Belief10" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "iTopBV2.java")
 (:help nil nil)
  )
 ( "tb2reaso"
 "b2-RevScience-reason can solve all worries"
 "spss-match"
 "tbv2Reason"
 ("tbv2Reason" "9" "tbv2ReasonQ" "int" "Belief10Reverse" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "iTopBV2.java")
 (:help nil nil)
  )
 ( "tbv2astr"
 "b2-RevBelief in spirits,astrology"
 "spss-match"
 "tbv2Astrology"
 ("tbv2Astrology" "10" "tbv2AstrologyQ" "int" "Belief10Reverse" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "iTopBV2.java")
 (:help nil nil)
  )
 ( "tb2idhum"
 "b2-Identify with all human over any group"
 "spss-match"
 "tbv2IDHumanity"
 ("tbv2IDHumanity" "11" "tbv2IDHumanityQ" "int" "Belief10" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "iTopBV2.java")
 (:help nil nil)
  )
 ( "tb2lifad"
 "b2-Believe in life after death"
 "spss-match"
 "tbv2LifeAfDeath"
 ("tbv2LifeAfDeath" "12" "tbv2LifeAfDeathQ" "int" "Belief10" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "iTopBV2.java")
 (:help nil nil)
  )
 ( "tb2movem"
 "b2-Part of progress greater than family etc"
 "spss-match"
 "tbv2Movement"
 ("tbv2Movement" "13" "tbv2MovementQ" "int" "Belief10" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "iTopBV2.java")
 (:help nil nil)
  )
 ( "tbv2core"
 "b2-Strong phil/rel beliefs guide daily life"
 "spss-match"
 "tbv2CoreBeliefs"
 ("tbv2CoreBeliefs" "14" "tbv2CoreBeliefsQ" "int" "Belief10" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "iTopBV2.java")
 (:help nil nil)
  )
 ) (
 CARGEN
 ( "car1carg"
 "ca-Great time and thorough career plan process"
 "spss-match"
 "car1CARGoal"
 ("car1CARGoal" "1" "car1CARGoalQ" "int" "LikeMe7" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "inCareer.java")
 (:help nil nil)
  )
 ( "car1carp"
 "ca-Have goal,plan,likely success"
 "spss-match"
 "car1CARPRiority"
 ("car1CARPRiority" 2 "car1CARPRiorityQ" "int" "LikeMe7" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "inCareer.java")
 (:help nil nil)
  )
 ( "car1inat"
 "ca-Natural science"
 "spss-match"
 "car1INATSCI"
 ("car1INATSCI" "3" "car1INATSCIQ" "int" "LikeMe7" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "inCareer.java")
 (:help nil nil)
  )
 ( "caribioh"
 "ca-Biological science"
 "spss-match"
 "carIBioHealthSci"
 ("carIBioHealthSci" "4" "carIBioHealthSciQ" "int" "LikeMe7" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "inCareer.java")
 (:help nil nil)
  )
 ( "carisocs"
 "ca-Learn about self & people"
 "spss-match"
 "carISOCSCI"
 ("carISOCSCI" "5" "carISOCSCIQ" "int" "LikeMe7" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "inCareer.java")
 (:help nil nil)
  )
 ( "carihelp"
 "ca-Helping people-teach coun etc"
 "spss-match"
 "carIHELP"
 ("carIHELP" "6" "carIHELPQ" "int" "LikeMe7" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "inCareer.java")
 (:help nil nil)
  )
 ( "carimath"
 "ca-Math"
 "spss-match"
 "carIMATH"
 ("carIMATH" "7" "carIMATHQ" "int" "LikeMe7" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "inCareer.java")
 (:help nil nil)
  )
 ( "carimed"
 "ca-Medical-related"
 "spss-match"
 "carIMED"
 ("carIMED" "8" "carIMEDQ" "int" "LikeMe7" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "inCareer.java")
 (:help nil nil)
  )
 ( "cariwrit"
 "ca-Writing-related"
 "spss-match"
 "carIWRITE"
 ("carIWRITE" "9" "carIWRITEQ" "int" "LikeMe7" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "inCareer.java")
 (:help nil nil)
  )
 ( "carifnar"
 "ca-Fine art-related"
 "spss-match"
 "carIFNART"
 ("carIFNART" "10" "carIFNARTQ" "int" "LikeMe7" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "inCareer.java")
 (:help nil nil)
  )
 ( "cariethn"
 "ca-Ethnic studies-women"
 "spss-match"
 "carIETHNIC"
 ("carIETHNIC" "11" "carIETHNICQ" "int" "LikeMe7" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "inCareer.java")
 (:help nil nil)
  )
 ( "carilear"
 "ca-Love higher ed"
 "spss-match"
 "carILEARN"
 ("carILEARN" "12" "carILEARNQ" "int" "LikeMe7" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "inCareer.java")
 (:help nil nil)
  )
 ( "cariexpe"
 "ca-Want to be expert"
 "spss-match"
 "carIEXPERT"
 ("carIEXPERT" "13" "carIEXPERTQ" "int" "LikeMe7" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "inCareer.java")
 (:help nil nil)
  )
 ( "carigene"
 "ca-Love variety-know little about many"
 "spss-match"
 "carIGENeral"
 ("carIGENeral" "14" "carIGENeralQ" "int" "LikeMe7" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "inCareer.java")
 (:help nil nil)
  )
 ( "carinoin"
 "ca-Never interest in school"
 "spss-match"
 "carINOINTerest"
 ("carINOINTerest" "15" "carINOINTerestQ" "int" "LikeMe7" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "inCareer.java")
 (:help nil nil)
  )
 ( "carilit"
 "ca-Literature-history"
 "spss-match"
 "carILIT"
 ("carILIT" "16" "carILITQ" "int" "LikeMe7" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "inCareer.java")
 (:help nil nil)
  )
 ( "carirecp"
 "ca-Sports-rec helping others w/sports"
 "spss-match"
 "carIRECPE"
 ("carIRECPE" "17" "carIRECPEQ" "int" "LikeMe7" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "inCareer.java")
 (:help nil nil)
  )
 ( "caripoli"
 "ca-Law politics government"
 "spss-match"
 "carIPOLitics"
 ("carIPOLitics" "18" "carIPOLiticsQ" "int" "LikeMe7" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "inCareer.java")
 (:help nil nil)
  )
 ( "carimil6"
 "ca-Law enforcement military etc"
 "spss-match"
 "carIMILTaryLawEnforce"
 ("carIMILTaryLawEnforce" "19" "carIMILTaryLawEnforceQ" "int" "LikeMe7" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "inCareer.java")
 (:help nil nil)
  )
 ( "carimanu"
 "ca-Manual-tech electr computers etc-"
 "spss-match"
 "carIMANUalActs"
 ("carIMANUalActs" "20" "carIMANUalActsQ" "int" "LikeMe7" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "inCareer.java")
 (:help nil nil)
  )
 ( "carilang"
 "ca-Languages travel etc"
 "spss-match"
 "carILANGuage"
 ("carILANGuage" "21" "carILANGuageQ" "int" "LikeMe7" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "inCareer.java")
 (:help nil nil)
  )
 ( "cariphil"
 "ca-Philosophy-religion"
 "spss-match"
 "carIPHILandRel"
 ("carIPHILandRel" "22" "carIPHILandRelQ" "int" "LikeMe7" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "inCareer.java")
 (:help nil nil)
  )
 ( "caribusi"
 "ca-Business"
 "spss-match"
 "carIBUSiness"
 ("carIBUSiness" "23" "carIBUSinessQ" "int" "LikeMe7" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "inCareer.java")
 (:help nil nil)
  )
 ( "cariengi"
 "ca-Engineering sci design"
 "spss-match"
 "carIENGINeer"
 ("carIENGINeer" "24" "carIENGINeerQ" "int" "LikeMe7" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "inCareer.java")
 (:help nil nil)
  )
 ( "carifamc"
 "ca-Family & Consumer Sci"
 "spss-match"
 "carIFamConSci"
 ("carIFamConSci" "25" "carIFamConSciQ" "int" "LikeMe7" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "inCareer.java")
 (:help nil nil)
  )
 ( "cariwoma"
 "ca-Ethnic-women"
 "spss-match"
 "carIWomanEthnic"
 ("carIWomanEthnic" "26" "carIWomanEthnicQ" "int" "LikeMe7" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "inCareer.java")
 (:help nil nil)
  )
 ( "caricom8"
 "ca-Computer-related"
 "spss-match"
 "carIComputer"
 ("carIComputer" "27" "carIComputerQ" "int" "LikeMe7" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "inCareer.java")
 (:help nil nil)
  )
 ( "carinte0"
 "ca-Interdisciplinary"
 "spss-match"
 "carInterDiscSt"
 ("carInterDiscSt" "28" "carInterDiscStQ" "int" "LikeMe7" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "inCareer.java")
 (:help nil nil)
  )
 ) (
 CARBUS
 ( "caribmar"
 "cb-Marketing"
 "spss-match"
 "carIBMARKeting"
 ("carIBMARKeting" "1" "carIBMARKetingQ" "int" "LikeMe7" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "inBus.java")
 (:help nil nil)
  )
 ( "caribman"
 "cb-Management"
 "spss-match"
 "carIBMANAGement"
 ("carIBMANAGement" "2" "carIBMANAGementQ" "int" "LikeMe7" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "inBus.java")
 (:help nil nil)
  )
 ( "caribinf"
 "cb-Inform Systems"
 "spss-match"
 "carIBINFormSystems"
 ("carIBINFormSystems" "3" "carIBINFormSystemsQ" "int" "LikeMe7" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "inBus.java")
 (:help nil nil)
  )
 ( "caribfin"
 "cb-Finance"
 "spss-match"
 "carIBFINance"
 ("carIBFINance" "4" "carIBFINanceQ" "int" "LikeMe7" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "inBus.java")
 (:help nil nil)
  )
 ( "caribhrd"
 "cb-Human Resources"
 "spss-match"
 "carIBHRD"
 ("carIBHRD" "5" "carIBHRDQ" "int" "LikeMe7" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "inBus.java")
 (:help nil nil)
  )
 ( "caribacc"
 "cb-Accounting"
 "spss-match"
 "carIBACCTounting"
 ("carIBACCTounting" "6" "carIBACCTountingQ" "int" "LikeMe7" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "inBus.java")
 (:help nil nil)
  )
 ( "carispbu"
 "cb-Public Relations"
 "spss-match"
 "carISPBUS"
 ("carISPBUS" "7" "carISPBUSQ" "int" "LikeMe7" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "inBus.java")
 (:help nil nil)
  )
 ) (
 CARENGR
 ( "carieeng"
 "ce-Elect Engr"
 "spss-match"
 "carIEEng"
 ("carIEEng" "1" "carIEEngQ" "int" "LikeMe7" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "inEngr.java")
 (:help nil nil)
  )
 ( "carime"
 "ce-Mech Engr"
 "spss-match"
 "carIME"
 ("carIME" "2" "carIMEQ" "int" "LikeMe7" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "inEngr.java")
 (:help nil nil)
  )
 ( "cariche2"
 "ce-Chem Engr"
 "spss-match"
 "carICHEMEng"
 ("carICHEMEng" "3" "carICHEMEngQ" "int" "LikeMe7" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "inEngr.java")
 (:help nil nil)
  )
 ( "caricive"
 "ce-Cival Engr"
 "spss-match"
 "carICIVEng1"
 ("carICIVEng1" "4" "carICIVEngQ" "int" "LikeMe7" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "inEngr.java")
 (:help nil nil)
  )
 ( "cariaero"
 "ce-Aerospace Engr"
 "spss-match"
 "carIAEROEng"
 ("carIAEROEng" "5" "carIAEROEngQ" "int" "LikeMe7" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "inEngr.java")
 (:help nil nil)
  )
 ( "carieite"
 "ce-Engr Tech"
 "spss-match"
 "carIEITech"
 ("carIEITech" "6" "carIEITechQ" "int" "LikeMe7" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "inEngr.java")
 (:help nil nil)
  )
 ( "caricom9"
 "ce-Computer Engr"
 "spss-match"
 "carICompSciEngr"
 ("carICompSciEngr" "7" "carICompSciEngrQ" "int" "LikeMe7" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "inEngr.java")
 (:help nil nil)
  )
 ( "caribcom"
 "ce-Bus Computer"
 "spss-match"
 "carIBCOMPuter"
 ("carIBCOMPuter" "8" "carIBCOMPuterQ" "int" "LikeMe7" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "inEngr.java")
 (:help nil nil)
  )
 ) (
 CARFINE
 ( "carimusi"
 "cart-Music"
 "spss-match"
 "carIMUSIC"
 ("carIMUSIC" "1" "carIMUSICQ" "int" "LikeMe7" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "inFineArt.java")
 (:help nil nil)
  )
 ( "cariart"
 "cart-Art"
 "spss-match"
 "carIART"
 ("carIART" "2" "carIARTQ" "int" "LikeMe7" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "inFineArt.java")
 (:help nil nil)
  )
 ( "caridram"
 "cart-Theatre Arts"
 "spss-match"
 "carIDRAMA"
 ("carIDRAMA" "3" "carIDRAMAQ" "int" "LikeMe7" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "inFineArt.java")
 (:help nil nil)
  )
 ( "caridanc"
 "cart-Dance"
 "spss-match"
 "carIDANC"
 ("carIDANC" "4" "carIDANCQ" "int" "LikeMe7" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "inFineArt.java")
 (:help nil nil)
  )
 ( "cariphot"
 "cart-Photog or Ph Journ"
 "spss-match"
 "carIPHOTJournalism"
 ("carIPHOTJournalism" "5" "carIPHOTJournalismQ" "int" "LikeMe7" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "inFineArt.java")
 (:help nil nil)
  )
 ( "carindde"
 "cart-Indust Design"
 "spss-match"
 "carIndDesign"
 ("carIndDesign" "6" "carIndDesignQ" "int" "LikeMe7" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "inFineArt.java")
 (:help nil nil)
  )
 ( "carinte1"
 "cart-Interior Design"
 "spss-match"
 "carInteriorDesign"
 ("carInteriorDesign" "7" "carInteriorDesignQ" "int" "LikeMe7" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "inFineArt.java")
 (:help nil nil)
  )
 ) (
 CARHELP
 ( "cariteac"
 "ch-Teaching"
 "spss-match"
 "carITEACH"
 ("carITEACH" "1" "carITEACHQ" "int" "LikeMe7" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "inHelp.java")
 (:help nil nil)
  )
 ( "caricoun"
 "ch-Counseling"
 "spss-match"
 "carICOUNseling"
 ("carICOUNseling" "2" "carICOUNselingQ" "int" "LikeMe7" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "inHelp.java")
 (:help nil nil)
  )
 ( "carieduc"
 "ch-Education"
 "spss-match"
 "carIEDUCSetting"
 ("carIEDUCSetting" "3" "carIEDUCSettingQ" "int" "LikeMe7" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "inHelp.java")
 (:help nil nil)
  )
 ( "carihadu"
 "ch-Help Adults"
 "spss-match"
 "carIHADULT"
 ("carIHADULT" "4" "carIHADULTQ" "int" "LikeMe7" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "inHelp.java")
 (:help nil nil)
  )
 ( "carihchi"
 "ch-Help children-teens"
 "spss-match"
 "carIHCHILD"
 ("carIHCHILD" "5" "carIHCHILDQ" "int" "LikeMe7" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "inHelp.java")
 (:help nil nil)
  )
 ( "caritvoc"
 "ch-Voc Ed"
 "spss-match"
 "carITVOCational"
 ("carITVOCational" "6" "carITVOCationalQ" "int" "LikeMe7" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "inHelp.java")
 (:help nil nil)
  )
 ( "caricom4"
 "ch-Speech-hearing"
 "spss-match"
 "carICOMDISorders"
 ("carICOMDISorders" "6" "carICOMDISordersQ" "int" "LikeMe7" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "inMed.java")
 (:help nil nil)
  )
 ( "carsocwo"
 "ch-Social Work"
 "spss-match"
 "carSocWork"
 ("carSocWork" "8" "carSocWorkQ" "int" "LikeMe7" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "inHelp.java")
 (:help nil nil)
  )
 ( "cark12te"
 "ch-Teach K-12"
 "spss-match"
 "carK12Teach"
 ("carK12Teach" "9" "carK12TeachQ" "int" "LikeMe7" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "inHelp.java")
 (:help nil nil)
  )
 ( "carminis"
 "ch-Minister-priest"
 "spss-match"
 "carMinister"
 ("carMinister" "10" "carMinisterQ" "int" "LikeMe7" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "inHelp.java")
 (:help nil nil)
  )
 ) (
 CARLANG
 ( "carifren"
 "cl-French"
 "spss-match"
 "carIFRENch"
 ("carIFRENch" "1" "carIFRENchQ" "int" "LikeMe7" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "inLang.java")
 (:help nil nil)
  )
 ( "cariital"
 "cl-Italian"
 "spss-match"
 "carIITALian"
 ("carIITALian" "2" "carIITALianQ" "int" "LikeMe7" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "inLang.java")
 (:help nil nil)
  )
 ( "carigerm"
 "cl-German"
 "spss-match"
 "carIGERMan"
 ("carIGERMan" "3" "carIGERManQ" "int" "LikeMe7" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "inLang.java")
 (:help nil nil)
  )
 ( "cariruss"
 "cl-Russian"
 "spss-match"
 "carIRUSSian"
 ("carIRUSSian" "4" "carIRUSSianQ" "int" "LikeMe7" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "inLang.java")
 (:help nil nil)
  )
 ( "carijapn"
 "cl-Japanese"
 "spss-match"
 "carIJAPNese"
 ("carIJAPNese" "5" "carIJAPNeseQ" "int" "LikeMe7" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "inLang.java")
 (:help nil nil)
  )
 ( "carichin"
 "cl-Chinese"
 "spss-match"
 "carIChin"
 ("carIChin" "6" "carIChinQ" "int" "LikeMe7" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "inLang.java")
 (:help nil nil)
  )
 ( "cariclas"
 "cl-Classic Lang"
 "spss-match"
 "carICLASCs"
 ("carICLASCs" "7" "carICLASCsQ" "int" "LikeMe7" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "inLang.java")
 (:help nil nil)
  )
 ( "carispan"
 "cl-Spanish"
 "spss-match"
 "carISPANish"
 ("carISPANish" "8" "carISPANishQ" "int" "LikeMe7" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "inLang.java")
 (:help nil nil)
  )
 ( "caripor"
 "cl-Portugese"
 NIL
 "ccarIPORTuguese"
 ("ccarIPORTuguese" "9" "carIPORTugueseQ" "int" "LikeMe7" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "inLang.java")
 (:help nil nil)
  )
 ) (
 CARMED
 ( "carimd"
 "cm-Physician"
 "spss-match"
 "carIMD"
 ("carIMD" "1" "carIMDQ" "int" "LikeMe7" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "inMed.java")
 (:help nil nil)
  )
 ( "carinurs"
 "cm-Nurse"
 "spss-match"
 "carINURSE"
 ("carINURSE" "2" "carINURSEQ" "int" "LikeMe7" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "inMed.java")
 (:help nil nil)
  )
 ( "caripthe"
 "cm-Phys Therapy"
 "spss-match"
 "carIPTherapy"
 ("carIPTherapy" "3" "carIPTherapyQ" "int" "LikeMe7" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "inMed.java")
 (:help nil nil)
  )
 ( "cariheal"
 "cm-Health Science"
 "spss-match"
 "carIHEALTH"
 ("carIHEALTH" "4" "carIHEALTHQ" "int" "LikeMe7" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "inMed.java")
 (:help nil nil)
  )
 ( "carikine"
 "cm-Kinesiology"
 "spss-match"
 "carIKinesology"
 ("carIKinesology" "5" "carIKinesologyQ" "int" "LikeMe7" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "inMed.java")
 (:help nil nil)
  )
 ( "caricom5"
 "cm-Commicative Dis"
 "spss-match"
 "carICOMDISorders"
 ("carICOMDISorders" "6" "carICOMDISordersQ" "int" "LikeMe7" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "inMed.java")
 (:help nil nil)
  )
 ( "carmedte"
 "cm-Med Tech/imaging"
 "spss-match"
 "carMedTech"
 ("carMedTech" "7" "carMedTechQ" "int" "LikeMe7" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "inMed.java")
 (:help nil nil)
  )
 ) (
 CARLAW
 ( "carilaw"
 "cleg-Law"
 "spss-match"
 "carILAW"
 ("carILAW" "1" "carILAWQ" "int" "LikeMe7" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "inMiltCrim.java")
 (:help nil nil)
  )
 ( "caricrim"
 "cleg-Law enforcement"
 "spss-match"
 "carICRIM"
 ("carICRIM" "2" "carICRIMQ" "int" "LikeMe7" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "inMiltCrim.java")
 (:help nil nil)
  )
 ( "carimil7"
 "cleg-Military"
 "spss-match"
 "carIMILT2"
 ("carIMILT2" "3" "carIMILT2Q" "int" "LikeMe7" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "inMiltCrim.java")
 (:help nil nil)
  )
 ) (
 CARNATSCI
 ( "cariche3"
 "cn-Chemistry"
 "spss-match"
 "carICHEM"
 ("carICHEM" "1" "carICHEMQ" "int" "LikeMe7" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "inNatSci.java")
 (:help nil nil)
  )
 ( "cariphys"
 "cn-Physics"
 "spss-match"
 "carIPHYSics"
 ("carIPHYSics" "2" "carIPHYSicsQ" "int" "LikeMe7" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "inNatSci.java")
 (:help nil nil)
  )
 ( "carigeol"
 "cn-Geology"
 "spss-match"
 "carIGEOlogy"
 ("carIGEOlogy" "3" "carIGEOlogyQ" "int" "LikeMe7" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "inNatSci.java")
 (:help nil nil)
  )
 ( "cariastr"
 "cn-Astronomy"
 "spss-match"
 "carIASTronomy"
 ("carIASTronomy" "4" "carIASTronomyQ" "int" "LikeMe7" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "inNatSci.java")
 (:help nil nil)
  )
 ( "carienvi"
 "cn-Environmental Sci"
 "spss-match"
 "carIEnvirSci"
 ("carIEnvirSci" "5" "carIEnvirSciQ" "int" "LikeMe7" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "inNatSci.java")
 (:help nil nil)
  )
 ) (
 CARBESCI
 ( "caripsyc"
 "cs-Psychology"
 "spss-match"
 "carIPSYch"
 ("carIPSYch" "1" "carIPSYchQ" "int" "LikeMe7" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "inSocSci.java")
 (:help nil nil)
  )
 ( "carisoco"
 "cs-Sociology"
 "spss-match"
 "carISOCOlogy"
 ("carISOCOlogy" "2" "carISOCOlogyQ" "int" "LikeMe7" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "inSocSci.java")
 (:help nil nil)
  )
 ( "carihist"
 "cs-History"
 "spss-match"
 "carIHIST"
 ("carIHIST" "3" "carIHISTQ" "int" "LikeMe7" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "inSocSci.java")
 (:help nil nil)
  )
 ( "caripols"
 "cs-Political Science"
 "spss-match"
 "carIPOLSC"
 ("carIPOLSC" "4" "carIPOLSCQ" "int" "LikeMe7" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "inSocSci.java")
 (:help nil nil)
  )
 ( "cariecon"
 "cs-Economics"
 "spss-match"
 "carIECON"
 ("carIECON" "5" "carIECONQ" "int" "LikeMe7" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "inSocSci.java")
 (:help nil nil)
  )
 ( "cargeogr"
 "cs-Geography"
 "spss-match"
 "carGeography"
 ("carGeography" "6" "carGeographyQ" "int" "LikeMe7" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "inSocSci.java")
 (:help nil nil)
  )
 ( "cariamer"
 "cs-American Studies"
 "spss-match"
 "carIAmerSt"
 ("carIAmerSt" "7" "carIAmerStQ" "int" "LikeMe7" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "inSocSci.java")
 (:help nil nil)
  )
 ( "cariantr"
 "cs-Anthropology???-AntR not AntH"
 "spss-match"
 "carIAntro"
 ("carIAntro" "8" "carIAntroQ" "int" "LikeMe7" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "inSocSci.java")
 (:help nil nil)
  )
 ( "carianth"
 "cs-Anthropology"
 "spss-match"
 "carIANTHropology"
 ("carIANTHropology" "7" "carIANTHropologyQ" "int" "LikeMe7" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "inWoEthnicSt.java")
 (:help nil nil)
  )
 ( "carispee"
 "cs-Speech-Commun"
 "spss-match"
 "carISOCOlogy"
 ("carISOCOlogy" "2" "carISOCOlogyQ" "int" "LikeMe7" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "inSocSci.java")
 (:help nil nil)
  )
 ( "carling"
 "cs-Linguistics"
 "spss-match"
 "carLing"
 ("carLing" "10" "carLingQ" "int" "LikeMe7" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "inSocSci.java")
 (:help nil nil)
  )
 ) (
 CARETHNIC
 ( "cariaist"
 "cs-Native Amer Studies"
 "spss-match"
 "carIAIStudies"
 ("carIAIStudies" "1" "carIAIStudiesQ" "int" "LikeMe7" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "inWoEthnicSt.java")
 (:help nil nil)
  )
 ( "caribstu"
 "cs-African Amer Studies"
 "spss-match"
 "carIAIStudies"
 ("carIAIStudies" "1" "carIAIStudiesQ" "int" "LikeMe7" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "inWoEthnicSt.java")
 (:help nil nil)
  )
 ( "carimexa"
 "cs-Mexican Amer Studies"
 "spss-match"
 "carIMEXAmerStudies"
 ("carIMEXAmerStudies" "3" "carIMEXAmerStudiesQ" "int" "LikeMe7" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "inWoEthnicSt.java")
 (:help nil nil)
  )
 ( "cariasam"
 "cs-Asian Amer Studies"
 "spss-match"
 "carIASAM"
 ("carIASAM" "4" "carIASAMQ" "int" "LikeMe7" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "inWoEthnicSt.java")
 (:help nil nil)
  )
 ( "cariamst"
 "cs-American Studies"
 "spss-match"
 "carIAMST"
 ("carIAMST" "5" "carIAMSTQ" "int" "LikeMe7" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "inWoEthnicSt.java")
 (:help nil nil)
  )
 ( "cariwstu"
 "cs-Women's Studies"
 "spss-match"
 "carIWStudies"
 ("carIWStudies" "6" "carIWStudiesQ" "int" "LikeMe7" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "inWoEthnicSt.java")
 (:help nil nil)
  )
 ) (
 CARWRITE
 ( "cariengl"
 "cw-English"
 "spss-match"
 "carIENGLit"
 ("carIENGLit" "1" "carIENGLitQ" "int" "LikeMe7" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "inWrite.java")
 (:help nil nil)
  )
 ( "carijour"
 "cw-Journalism"
 "spss-match"
 "carIJOURNalism"
 ("carIJOURNalism" "2" "carIJOURNalismQ" "int" "LikeMe7" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "inWrite.java")
 (:help nil nil)
  )
 )
 (USER-FB
  ( "UserRate"
 "UserRate"
 "spss-match"
  nil  
 ("UserRate" "1" "UserRateQ" "int" "UserRate7"  "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "inWrite.java")
 (:help nil nil)
  )
 )
 )

  "MASTER LIST OF QUESTION INFORMATION:
  QVAR FORMAT: :SINGLE-SELECTION: Eg.  ( \"rhlWeigh\" =qvar-name, 
 \"he-LoWeight\"=label;  \"spss-match\"=matched spss-var-name(or nil);\"rhlWeight\"=spssvar  (\"rhlWeight\" \"6\"  \"rhlweighQ\" \"int\"  \"rhlweighAnsArray\" \"questionInstancesArray\" \"frameTitle\" \"frameDimWidth\" \"frameDimHeight\"  \"RealHealth.java\") = old java def list
 (:help nil nil)= help, info, link
  QUESTION-SYMBOLS:  Up to date EXCEPT doesn't include NEW QUESTION SYMBOLS--to make one just take the FIRST string of each list and (my-make-symbol (format nil \"~AQ\" var-string)).  GET-QUEST-VAR-VALUES will return a list of (list  :label label :spss-match spss-match :java-var java-var :qnum qnum :q-name q-name :data-type data-type :answer-panel answer-panel :array array :frame-title frame-title :fr-width  fr-width :fr-height fr-height :java-file java-file). (Also see  Q-questions.lisp)
 FOR QVAR :MULTIPLE-SELECTION FORMAT: 
Eg. (UGOALS =qvar (same as category in MSQs);  First list= primary qvar list= ( \"ugoals\" =qvar string; \"UserGoals\"= qvar label;  NIL nil; (:TITLE (\"SHAQ CARES: Questionnaire Selection-Part 2\")   :QUEST (\"Your Self-Help GOALS: Check ...\")) = frame title, quest   (:help nil nil)= help info,link  NIL;  :MULTI-ITEM))
 first-answer-item-list= ( \"gsuchap\"= ans var =spss-var; \"g-Success-happiness\"= spss-label \"spss match\";  NIL;  (\"More success and happiness.\") = ans text.  (:help nil nil)  :MULTI-ITEM  (:XDATA :scales (HQ)) = xdata that can be used by shaq.
  )... deleted middle items.. Last item=  ( \"gnottake\" \"g-Not taking for self\" \"spss match\" NIL  (\"I'm NOT interested in SHAQ for my own self help.\") (:help nil nil) :MULTI-ITEM   (:XDATA :scales NIL)))"
  )
;;END
;; xxx --------------------------- END *SHAQ-question-symbol-lists ---------------------


;;FOLLOWING USED TO ADD (:help nil nil) TO QVAR LIST BELOW
#|(defun print-new-shaq-qvar-listsX (pathname)
  (let
      ((SHAQ-question-variable-lists1
        (append-nth-item-in-2nd-nested-lists 5  '(:help nil nil) *SHAQ-question-variable-lists-NOHELP))
       )
    (with-open-file (outstr pathname  :direction :output :if-exists :supersede)
        (print-double-nested-list  SHAQ-question-variable-lists1 :stream outstr
                                   :incl-quotes-p T :incl-label T :no-outer-parens-p nil))

  SHAQ-question-variable-lists1
  ))|#

;; (print-new-shaq-qvar-listsX "c:/temp/tempfile.lisp")




;;*SHAQ-QUESTION-VARIABLE-LISTS (qvar lists by categories)
;;
;;ddd
#| SUPERSEDED BY ADDING HELP-INFO ABOVE
(defparameter *SHAQ-question-variable-lists-NOHELP
  #| "MASTER LIST OF QUESTION INFORMATION: Up to date EXCEPT doesn't include NEW QUESTION SYMBOLS--to make one just take the FIRST string of each list and (my-make-symbol (format nil \"~AQ\" var-string)).  GET-QUEST-VAR-VALUES will return a list of (list  :label label :spss-match spss-match :java-var java-var :qnum qnum :q-name q-name :data-type data-type :answer-panel answer-panel :array array :frame-title frame-title :fr-width  fr-width :fr-height fr-height :java-file java-file) (also see  Q-questions.lisp)"|#

  '(( ID
      ("CaseNum" "CaseNumOrigFile" "spss-match" NO-PC-INST-MATCH)
      ("CaseType" "" "spss-match" NO-PC-INST-MATCH)
      ("SourceFile" "Source files PARTnum" NIL NO-PC-INST-MATCH)
      ("FileDate" "File Date" "spss-match" NO-PC-INST-MATCH)
      ("Instr" "Instructor" "spss-match" NO-PC-INST-MATCH)
      ("Resr" "Researcher" "spss-match" NO-PC-INST-MATCH)
      ("Name" "Name" "spss-match" NO-PC-INST-MATCH)
      ("UserID" "UserID" "spss-match?" NO-PC-INST-MATCH)
      ("Sex" "Sex 1=M 2=F" "spss-match" NO-PC-INST-MATCH)
      ("Age" "Age" "spss-match" NO-PC-INST-MATCH)
      ("Email" "Email" "spss-match" NO-PC-INST-MATCH)
      ("ZipCode" "ZipCode" "spss-match" NO-PC-INST-MATCH)
      ("Nation" "Nation" "spss-match" NO-PC-INST-MATCH)
      ("HrsWork" "HrsWork" "spss-match" NO-PC-INST-MATCH)
      ("UserRate" "UserRating" "spss-match" NO-PC-INST-MATCH)
      )
    (NEW-ID
     ("OlderBrN" "NumOlderBros" nil nil)
     ("OlderSisN" "NumOlderSis" nil nil)
     ("YoungBrN" "NumYoungrBros" nil nil)
     ("YoungSisN" "NumYoungrSis" nil nil)
     ("Raised2Parents" "Raised by 2 Parents" nil nil)
     ("SingleMparent" "RaisedBySingleMale" nil nil)
     ("SingleFparent" "RaisedBySingleFemale" nil nil)   
     ("RaisedNoParents" "RaisedByNoParents" nil nil)
     ("RaisedOther" "RaisedOther" nil nil)
     )
    ;;MODEL FOR MULTI-ANS QUESTIONS (arranged by first nesting)
    #|
;;For first item in 
 ("quest-name" "quest-label" "spss-match"  ("matched-name")(quest-instr-list= q-title q-instr quest-text) :MULTI-ITEM  ans-type=:single/:multi-ans)
;;For rest items
  ("q-item-str" "q-item-label" "spss-match" q-text-list :MULTI-ITEM)
|#
    ( UTYPE
      ("UserType" "User characteristics/assessment choices" nil (nil) 
                  (:title ("SHAQ CARES:
 Selection of Your Questionnaires-Part 1")
                   :QUEST ("Why are you taking SHAQ?"))
;;PLEASE CHECK ALL THAT APPLY  so SHAQ can decide which questionnaires to give you."
 () :MULTI-ITEM)               
      ("twanttho" "t-Want thorough assessment" "spss-match" nil ("Want a thorough assessment and/or my Happiness Quotient (HQ) Score." ) :MULTI-ITEM)
      ("tknowmor" "t-Want to know of self" "spss match" nil  ("Want to understand myself better."  )  () :MULTI-ITEM)
      ("twanthel" "t-Want help with problem" "spss match" nil  ("Want help with a general problem(s)." ) :MULTI-ITEM)
      ("twantspe" "t-Want specific help" "spss match" nil  ("Want help for specific problem(s)." ) :MULTI-ITEM)
      ("texperie" "t-Experienced self-help user" "spss match" nil  ("Experienced self help user. " ) :MULTI-ITEM)
      ;;NOTE: SSS Couldn't find tprevshaq in spss or any place else as a variable
      ("tprevshaq" "t-Previous SHAQ user" nil nil ("Previous SHAQ user.") :MULTI-ITEM)    
      ("wantspq" "g-Specific questionnaire" "spss match" nil  ("I want to choose specific questionnaire(s)." ) :MULTI-ITEM)
      ;;SSS FIX LATER WHAT IS TEXT FOR tworknga????
   ;;   ("tworknga" "t-worknga" "spss match" nil  ( ) :MULTI-ITEM)
      ("tu100stu" "t-CSULB U100 student" "spss match" nil  ("I'm a CSULB student completing UNIV 100 assignment" ) :MULTI-ITEM)
      ("tcsulbst" "t-CSULB other student" "spss match" nil  ("Other CSULB student.") :MULTI-ITEM)

      ("tcolstu" "t-Other college student" "spss match" nil  ("Other college student. " ) :MULTI-ITEM)
      ("totherst" "t-Other student" "spss match" nil  ("Other type of student." ) :MULTI-ITEM)
      ;;SSS COULDN'T FIND THIS QUESTION IN SPSS ETC --INVENTED SYM
      ("tressub" "t-SHAQ research subject" NIL nil ("Subject  in a SHAQ research project.") :MULTI-ITEM)
    ;;  ("tinstruc" "t-Instructor" "spss match" nil  ("Instructor wanting to establish credit for students." ) :MULTI-ITEM)
      ("tcolfaca" "t-College faculty-admin" "spss match" nil  ("College faculty member or administrator." ) :MULTI-ITEM)
("u-none" "t-none of above" NIL nil ("Other or None of above.") :MULTI-ITEM)
      )
    ( UGOALS
      ("UserGoals" "User goals for taking SHAQ." nil (nil) 
                   (:title ("SHAQ CARES:
  What do you want SHAQ to help you with? (Questionnaire Selection-Part 2)")
                    :QUEST  ("I WANT...

   * Check an HQ box if you want your HAPPINESS QUOTIENT Score.
")) () :MULTI-ITEM)
      ("gsuchap" "g-Success-happiness" "spss match" nil  ("More success and happiness.") :MULTI-ITEM)
      ("gemocop" "g-Emotional coping" "spss match" nil  ("Improve coping with emotions." ) :MULTI-ITEM)
      ("gslfest" "g-Self-esteem" "spss match" nil  ("More self esteem." ) :MULTI-ITEM)
      ("gprocrst" "g-Procrastination" "spss match" nil  ("More self motivation or less procrastination." ) :MULTI-ITEM)
      ("gtimeman" "g-Time Management" "spss match" nil  ("Better time management or control of my life." ) :MULTI-ITEM)
      ("grelat" "g-Relationships" "spss match" nil  ("Better marriage or relationships of any type. " ) :MULTI-ITEM)
      ("gmeetpeo" "g-Meeting people" "spss match" nil  ("Improve meeting people, dating more, etc.." ) :MULTI-ITEM)
      ("glonelyf" "g-Loneliness" "spss match" nil  ("Overcoming loneliness, fear of being alone, or fear of rejection." ) :MULTI-ITEM)
      ("gexvalus" "g-Explore Values" "spss match" nil  ("Understanding myself and my motivation." ) :MULTI-ITEM)
      ("gdepres" "g-Depression" "spss match" nil  ("Coping with unhappiness, apathy, grief, or depression. " ) :MULTI-ITEM)
      ("ganxfear" "g-Anxiety-fears" "spss match" nil  ("Coping with stress, anxiety, fear, or guilt." ) :MULTI-ITEM)
      ("gaggrang" "g-Aggression-anger" "spss match" nil  ("Coping with anger or aggression.") :MULTI-ITEM)
      ("gacadsuc" "g-Academic success" "spss match" nil  ("Better grades and/or academic success." ) :MULTI-ITEM)
      ;;SSS NOTE: SCORE EITHER gcomplta1, gcompltanomaj OR gcompltanoac as gcomplta???
      ("gcomplta1" "g-Complete assessent" "spss match" nil  ("HQ score and complete assessment INCLUDING academic success and college-major choice (60-110 minutes?)." ) :MULTI-ITEM)
      ("gcompltanomaj" "g-Complete assess-no major" "spss match" nil  ("HQ score and complete assessment EXCEPT major choice (45-100 minutes?)."  ) :MULTI-ITEM)
      ("gcompltanoac" "g-Complete assessment-no acad" "spss match" nil  ("HQ score and complete assessment EXCEPT academic-learning questions (40-90 minutes?)." ) :MULTI-ITEM)
      ("gcarplan" "g-Career planning" "spss match" nil  ("Help choosing a major or career (additional 10-20 minutes)." ) :MULTI-ITEM)
      ("gcaronly" "g-Career help only" "spss match" nil ("I ONLY want help choosing a college major.") :MULTI-ITEM)
      ("gnottake" "g-Not taking for self" "spss match" nil  ("I'm NOT interested in SHAQ for my own self help." ) :MULTI-ITEM)
      )

    ( BIO3EDUC
      ("bio3educ" "b-Highest education completed" "spss-match" ("bio3educ") (  ) :SINGLE)
      ("biohsgpa" "b-High school GPA" "spss-match" ("bioHSGPA" "bioCollegeGPA") (  ) :SINGLE)
      ("biocolle" "b-College GPA" "spss-match" ("bioCollegeGPA") (  ) :SINGLE)
      )
    ( BIO4JOB
      ("bio4job" "b-Primary occupation" "spss-match" ("bio4job")(:QUEST ("Select ALL of the following that best describe your primary OCCUPATION." "If you have multiple occupations, choose all of them.") :TITLE ("YOUR OCCUPATION"))  (  ) :MULTI-ITEM)
      ("student" "1-Student" "spss-match" ("Student") (  ) :MULTI-ITEM)
      ("manager" "2-Manager" "spss-match" ("Manager/executive") (  ) :MULTI-ITEM)
      ("propeop" "3-People professional" "spss-match" NIL (  ) :MULTI-ITEM)
      ("protech" "4-Technical professional" "spss-match" ("Technician") (  ) :MULTI-ITEM)
      ("consulta" "5-Consultant" NIL ("Consultant") (  ) :MULTI-ITEM)
      ("educator" "6-Educator" "spss-match" ("Educator") (  ) :MULTI-ITEM)
      ("sales" "7-Sales" "spss-match" ("Sales") (  ) :MULTI-ITEM)
      ("technici" "8-Other technical" "spss-match" ("Technician") (  ) :MULTI-ITEM)
      ("clerical" "9-Clerical" "spss-match" ("Clerical") (  ) :MULTI-ITEM)
      ("service" "10-Service" "spss-match" ("Service") (  ) :MULTI-ITEM)
      ("ownbus10" "11-Own business" "spss-match" ("Own business +10 employees") (  ) :MULTI-ITEM)
      ("othrsfem" "12-other occupation" "spss-match" (("Other self-employed")) ("other" "13-Other" "spss-match" ("Other")) ("bio5inco" "b-Highest personal income" "spss-match" ("bio5income")) (  ) :MULTI-ITEM)
      )
    (BI07LANG
     ("bio7lang" "b-Fluent languages" "spss-match" ("bio7lang") (:QUEST ("Check ALL languages you SPEAK FLUENTLY") :TITLE ("LANGUAGE(S) YOU SPEAK"))() :MULTI-ITEM)
     ("lenglish" "" "spss-match" ("English")) 
     ("lspanish" "" "spss-match" ("Spanish"))
     ("lvietnam" "" "spss-match" ("Vietnamese")) 
     ("lcambodn" "" "spss-match" "Cambodian") 
     ("lchinese" "" "spss-match" ("Chinese" "Portuguese")) 
     ("lkorean" "" "spss-match" ("Korean")) 
     ("lportugu" "" "spss-match" ("Portuguese")) ("lgerman" "" "spss-match" ("German")) ("lfrench" "" "spss-match" ("French")) ("lothrasn" "" "spss-match" ("Other Asian")) ("lothreur" "" "spss-match" ("Other European")) ("lother" "" "spss-match" ("Other")) (  ) :MULTI-ITEM)
    (BIO1ETHN
     ("bio1ethn" "Primary Ethnic Group" "spss-match" ("bio1ethnic") (:QUEST ("Which is your PRIMARY ETHNIC GROUP (May choose multiple). ") :TITLE ("ETHNIC GROUP"))() :MULTI-ITEM)
     ("enortham" "" "spss-match" "North America") 
     ("eafrica" "" "spss-match" ("Africa")) 
     ("enoreur" "" "spss-match" ("Northern Europe")) 
     ("esoueur" "" "spss-match" ("Southern Europe")) 
     ("ecambodn" "" "spss-match" ("Cambodia")) 
     ("echina" "" "spss-match" ("China")) 
     ("ekorea" "" "spss-match" ("Korea"))
     ("ejapan" "" "spss-match" ("Japan")) 
     ("evietnam" "" "spss-match" ("Vietnam"))
     ("eothrasn" "" "spss-match" ("Other Asian")) ("emexico" "" "spss-match" ("Mexico")) ("ecentram" "" "spss-match" ("Central America")) ("esoutham" "" "spss-match" ("South America")) ("epacific" "" "spss-match" ("Pacific Island")) ("eother" "" "spss-match" ("Other")) (  ) :MULTI-ITEM)
    (BIORELAF
     ("biorelaf" "" "spss-match" ("bioRelAffiliation")(:QUEST ("What is your primary RELIGIOUS preference? (May choose multiple. ") :title ("RELIGIOUS PREFERENCE")() :MULTI-ITEM))
     ("catholic" "Catholic" "spss-match" ("Catholic")) 
     ("jewish" "Jewish" "spss-match" ("Jewish")) 
     ("latterd" "Latter Day Saints" "spss-match" ("Latter Day Saints--Morman"))
     ("buddhist" "Buddhist" "spss-match" ("Buddhist" "Protestant--Baptist")) 
     ("baptist" "Baptist" "spss-match" ("Protestant--Baptist")) ("methodst" "United Methodist" "spss-match" ("Protestant--United Methodist")) ("episcop" "Episopalian" "spss-match" ("Protestant--Episcopal")) ("lutheran" "Lutheran" "spss-match" ("Protestant--Lutheran")) ("presbyte" "Presbyterian" "spss-match" ("Protestant--Presbyterian")) ("proliber" "Other liberal" "spss-match" ("Protestant--Other Liberal")) ("profunda" "Other fundamentalist" "spss-match" ("Protestant--Other Fundamentalist or Conservative")) ("noaffil" "No affiliation" "spss-match" ("No affiliation")) ("agnostic" "Agnostic" "spss-match" ("Agnostic or Atheist")) ("othrnoan" "Other" "spss-match" ("Other or prefer not to answer")) (  ) :MULTI-ITEM)
  
    (STUCOLLE
     ("stucolle" "st-College attending" "spss-match" ("stuCollegeAttending"  2  
                                                                             stuCollegeAttendingQ  "int"   ""   bestAnswerLabel   13   NonStandard  stuCollegeAttendingAnswerArray   Values13to1Array   "single"      frHeight13))
     ("cocsulb" "CSULB" "spss-match" ("California State University, Long Beach")) 
     ("cccsu" "CSU Campus" "spss-match" ("Another Calif State University campus")) 
     ("coucal" "UC Campus" "spss-match" ("Technical school")) 
     ("coopublc" "Other Public U" "spss-match" ("A University of California campus")) 
     ("coprivca" "CA Private U" "spss-match" ("A public university in another state")) 
     ("coprivot" "Other Private U" "spss-match" ("Private university in California")) ("cocacomc" "CA Com Col" "spss-match" ("Community college in California")) 
     ("coothcc" "Other Com Col" "spss-match" ("College or university in another nation"))
     ("coothnat" "Other Nation Col" "spss-match" ("College or university in another nation")) 
     ("coprgrad" "NonAff Grad Sch" "spss-match" ("Graduate school independent of a college"))
     ("cotech" "Tech Col" "spss-match" ("Technical school"))
     ("highsch" "HS" "spss-match"  ("High school"))  ;; (  ) :MULTI-ITEM)
     ("coother" "Other" "spss-match" ("Unsure or Other")) ;; NO-PC-INST-MATCH)
     :MULTI-ITEM
     )

    ( STUMAJOR
      ("stumajor" "st-Major study area" "spss-match" ("stuMajorType"  5  stuMajorTypeQ  "int"   ""  bestAnswerLabel   14   NonStandard  stuMajorTypeAnswerArray   Values14to1Array  "single" frHeight13 ) (  ) :MULTI-ITEM :SINGLE)
      ("mlibart" "Lib Art major" "spss-match" ("Liberal arts (a language, history, etc.)") (  ) :MULTI-ITEM)
      ("msocsci" "Soc Sci major" "spss-match" ("Social or behavioral science (psychology, sociology, etc.)") (  ) :MULTI-ITEM)
      ("mbiolsci" "Bio Sci major" "spss-match" ("Biological science") (  ) :MULTI-ITEM)
      ("mart" "Art major" "spss-match" ("Art") (  ) :MULTI-ITEM)
      ("mnatsci" "Nat Sci major" "spss-match" ("Other natural science (physics, chemistry, etc.)") (  ) :MULTI-ITEM)
      ("mbus" "Bus major" "spss-match" ("Business") (  ) :MULTI-ITEM)
      ("menginr" "Engr major" "spss-match" ("Engineering") (  ) :MULTI-ITEM)
      ("meducat" "Educ major" "spss-match" ("Education") (  ) :MULTI-ITEM)
      ("mmedical" "Medical major" "spss-match" ("Medical or health-related") (  ) :MULTI-ITEM)
      ("motcompu" "Computer major" "spss-match" ("Other computer-related") (  ) :MULTI-ITEM)
      ("mothtech" "Other tech majo" "spss-match" ("Other technical") (  ) :MULTI-ITEM)
      ("mrecrpe" "Recr-PE major" "spss-match" ("Recreation or physical education-related") (  ) :MULTI-ITEM)
      ("mdoesna" "Does not apply" "spss-match" ("Does not apply") (  ) :MULTI-ITEM)
      ("mundecid" "Undecided" "spss-match" ("Undecided or don't know") (  ) :MULTI-ITEM)
      )
    ( STUSPECI
      ("stuspeci" "st-Special status" "spss-match"(:QUEST ("Check ALL that apply to you.") :TITLE ("YOUR STUDENT SITUATION"))() :MULTI-ITEM)
;;was ("stuSpecialStatus"  6    stuSpecialStatusQ  "int"   ""        allThenOKLabel   13   NonStandard   stuSpecialStatusAnswerArray   Values13to1Array   "multiple"      frHeight13) (  ) :MULTI-ITEM :MULTIPLE)
      ("strancc" "Com college transfer" "spss-match" ("Transfered from a community college to 4-year college") (  ) :MULTI-ITEM)
      ("stran4yr" "4yr college transfer" "spss-match" ("Transfered from another 4-year college") (  ) :MULTI-ITEM)
      ("sadultre" "Returning adult" "spss-match" ("Adult returning to school") (  ) :MULTI-ITEM)
      ("seop" "EOP" "spss-match" ("EOP Student") (  ) :MULTI-ITEM)
      ("susimmig" "Immigrant" "spss-match" ("U.S. Immigrant") (  ) :MULTI-ITEM)
      ("svisa" "Visa student" "spss-match" ("Here on student Visa") (  ) :MULTI-ITEM)
      ("shonor" "Honors program" "spss-match" ("In Honors program") (  ) :MULTI-ITEM)
      ("svisastu" "Visa student" "spss-match" ("Visa Student") (  ) :MULTI-ITEM)
      ("sdisabld" "Disabled student" "spss-match" ("Disabled student") (  ) :MULTI-ITEM)
      ("soutofst" "Out-of-state student" "spss-match" ("Out of state student") (  ) :MULTI-ITEM)
      ("smilitar" "Military-active or vet" "spss-match" ("Military--active or veteran") (  ) :MULTI-ITEM)
      ("sathlete" "Student athlete" "spss-match" ("Athlete on college team") (  ) :MULTI-ITEM)
      ("snone" "None of above" "spss-match" ("None of above") (  ) :MULTI-ITEM)

      )

    ( STURESID
      ("sturesid" "st-Residence" "spss-match"(:QUEST ("Which item(s) best describe(s) your living situation?") :title ("YOUR LIVING SITUATION"))() :MULTI-ITEM)
;;WAS ("stuResidence"  7  stuResidenceQ  "int"   ""   bestAnswerLabel   8   NonStandard  stuResidenceAnswerArray   Values8to1Array  "single"  frameDimHeight) (  ) :MULTI-ITEM :SINGLE)
      ("rsinwpar" "Live with parents" "spss-match" ("SINGLE--Live WITH PARENTS") (  ) :MULTI-ITEM)
      ("rsindorm" "Live in dorms" "spss-match" ("SINGLE--Live IN DORMS") (  ) :MULTI-ITEM)
      ("rsinwchl" "Single with children" "spss-match" ("SINGLE caring for children") (  ) :MULTI-ITEM)
      ("rsinothr" "Single other" "spss-match" ("SINGLE--Other situation") (  ) :MULTI-ITEM)
      ("rmarwoch" "Married without children" "spss-match" ("MARRIED without children") (  ) :MULTI-ITEM)
      ("rmarwchl" "Married with children" "spss-match" ("MARRIED with children") (  ) :MULTI-ITEM)
      ("rmarlike" "Marital like situation" "spss-match" ("MARITAL-LIKE RELATIONSHIP") (  ) :MULTI-ITEM)
      ("rother" "Other" "spss-match" ("OTHER") (  ) :MULTI-ITEM)
      )
    ;;these are single response, single item questions
    (STU-DATA 
     ("stpared" "b-Highest parents educ level" "spss-match" ("stuParentsEduc"  1 
                                                                               stuParentsEducQ  "int"   stuParentsEduc   "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "StudentBasicData.java")) 
 
     ("stuclass" "st-Class level" "spss-match" ("stuClassLevel"  "3" stuClassLevelQ  "int"   stuClassLevel "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "StudentBasicData.java") )
     ("studegre" "st-Educ objective level" "spss-match" ("stuDegreeObjective"  4   stuDegreeObjectiveQ  "int"   stuDegreeObjective   "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "StudentBasicData.java") ) 
     ("stusemes" "st-Units this semester" "spss-match" ("stuSemesterUnits"  7  
                                                                            stuSemesterUnitsQ  "int"   units
                                                                            "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "StudentBasicData.java") )
     ("stmajgpa" "st-Major GPA" "spss-match" ("stuMajorGPA"  10 stuMajorGPAQ  "int"   GPA8TextArray  "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "StudentBasicData.java")) 
     ("stacadst" "st-Academic status" "spss-match" ("stuAcademicStatus"  11 stuAcademicStatusQ  "int"   stuAcademicStatus  "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "StudentBasicData.java"))
     )
    ( STGPATRE
      ("stgpatre" "st-GPA Trends" NIL ("stuGPATrend"  12 stuGPATrendQ  "int"   stuGPATrend   "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "StudentBasicData.java")  :MULTI-ITEM)
      ("trconhi" "Consistently high" "spss-match" ("CONSISTENTLY HIGH (3.0-4.0)") (  ) :MULTI-ITEM)
      ("trincryr" "Increased after absence" "spss-match" ("INCREASED significantly after an ABSENCE from school") (  ) :MULTI-ITEM)
      ("trincyru" "Increased past year or so" "spss-match" ("INCREASED significantly within that past year or so") (  ) :MULTI-ITEM)
      ("trincyrs" "Increased a few sems ago" "spss-match" ("INCREASED significantly a few semesters ago") (  ) :MULTI-ITEM)
      ("trgradin" "Gradually increased" "spss-match" ("Was LOWER, but has GRADUALLY INCREASED.") (  ) :MULTI-ITEM)
      ("trconave" "Consistently average" "spss-match" ("CONSISTENTLY AVERAGE (2.0-3.0)") (  ) :MULTI-ITEM)
      ("trdecyru" "Decreased a few sems ago" "spss-match" ("DECREASED significantly a few semesters ago") (  ) :MULTI-ITEM)
      ("trdecyr" "Decreased past year or so" "spss-match" ("DECREASED significantly within the past year or so") (  ) :MULTI-ITEM)
      ("trconlow" "Consistently low" "spss-match" ("CONSISTENTLY LOW (less than 2.0)") (  ) :MULTI-ITEM)
      ("trupandd" "Up and down dramatically" "spss-match" ("UP and DOWN dramatically in recent years") (  ) :MULTI-ITEM)
      ("trother" "Other" "spss-match" ("Other") (  ) :MULTI-ITEM)
      )
    ( STUAPT
      ("stuverba" "st-Verbal aptitude scores" "spss-match" ("stuVerbalApt"14 stuVerbalAptQ "int"  Percentile10  "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "StudentBasicData.java") )
      ("stumatha" "st-Math aptitude scores" "spss-match" ("stuMathApt"15 stuMathAptQ "int"  Percentile10 "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "StudentBasicData.java") )
      )
    (STUFEEL
     ("stulookf" "sa-Look forward to campus" "spss-match" ("stuLookForward") NO-PC-INST-MATCH)
     ("stulikei" "sa-Like instructors-can talk" "spss-match" ("stuLikeInstr") NO-PC-INST-MATCH)
     ("stucomfo" "sa-Comfortable w/ area fac & students" "spss-match" ("stuComfortable" "stuConfused") NO-PC-INST-MATCH)
     ("stufrien" "sa-Current school friends" "spss-match" ("stuFriends") NO-PC-INST-MATCH)
     ("stuextmo" "sa-NotParents expectations main motive" "spss-match" ("stuExtMotiv") NO-PC-INST-MATCH)
     ("stuenjoy" "sa-Enjoy learning, classes, homework" "spss-match" ("stuEnjoyLearn") NO-PC-INST-MATCH)
     ("stucaree" "sa-Career-job main motive" "spss-match" ("stuCareerMotiv") NO-PC-INST-MATCH)
     ("stumoney" "sa-NotMoney main motive" "spss-match" ("stuMoneyMotiv") NO-PC-INST-MATCH)
     ("stuconfu" "sa-NotConfused why I am in college" "spss-match" ("stuComfortable" "stuConfused") NO-PC-INST-MATCH)
     ("stufinde" "sa-Financial support" "spss-match" ("stuFinDepend") NO-PC-INST-MATCH)
     ("stueactr" "sa-Enjoying life and fun in school" "spss-match" ("stuEACTREGfun") NO-PC-INST-MATCH)
     ("sthapcol" "sa-Overall college exper happiness" "spss-match" ("stuHappyCollege") NO-PC-INST-MATCH)
     ("sthapgpa" "sa-Happiness with grades" "spss-match" ("stuHappyGrades") NO-PC-INST-MATCH)
     )
    ( STURESOURCE
      ("acmaffec" "am-All interference factors" "spss-match"()(:QUEST ("Which items interfere with your studying and/or grades?")) () :MULTI-ITEM)
;;WAS "acmAffectGrades" ("acmAffectGrades" "13," "iAcademicMotivation.java"))
      ("afinanc" "1-Financial worries" "spss-match" ("Financial worries") NO-PC-INST-MATCH)
      ("afampres" "2-Family pressures" "spss-match" ("Family pressures") NO-PC-INST-MATCH)
      ("afamresp" "3-Family responsibilities" "spss-match" ("Family responsibilities") NO-PC-INST-MATCH)
      ("aworktim" "4-Job time" "spss-match" ("Time spent working in a job") NO-PC-INST-MATCH)
      ("awrkpres" "5-Work pressures" "spss-match" ("Family pressures") NO-PC-INST-MATCH)
      ("arelprob" "6-Relationship problems" "spss-match" ("Relationship problems") NO-PC-INST-MATCH)
      ("aloneli" "7-Loneliness" "spss-match" ("Loneliness") NO-PC-INST-MATCH)
      ("ahomstpl" "8-No home study place" "spss-match" ("No good place to study where I live") NO-PC-INST-MATCH)
      ("aschstpl" "9-No school study place" "spss-match" ("No good place to study at school") NO-PC-INST-MATCH)
      ("acompavl" "10-Computer availability" "spss-match" ("Lack of adequate computer availability") NO-PC-INST-MATCH)
      ("awrngcls" "11-Wrong classes" "spss-match" ("Taking the wrong classes") NO-PC-INST-MATCH)
      ("afacconn" "12-Poor faculty connection" "spss-match" ("Lack of connection with faculty") NO-PC-INST-MATCH)
      ("astuconn" "13-Poor student connection" "spss-match" ("Lack of connection with students") NO-PC-INST-MATCH)
      ("alowmotv" "14-Low study motivation" "spss-match" ("Low motivation to study") NO-PC-INST-MATCH)
      ("atimconf" "15-Too many task conflicts" "spss-match" ("Too many conflicting things to do") NO-PC-INST-MATCH)
      ("aprocras" "16-Procrastination" "spss-match" ("Procrastinate too much") NO-PC-INST-MATCH)
      )
    ( STUACMOTIV
      ("acmstudy" "am-Study time per class hour" "spss-match" "acmStudyTime" ("acmStudyTime" "17," "iAcademicMotivation.java"))
      ("acmndrop" "am-Never drop or take incomplete" "spss-match" "acmNDROPcourses" ("acmNDROPcourses" "30" "acmNDROPcoursesQ" "int" "LikeMe7" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "iAcademicMotivation.java"))
      ("acmatten" "am-Attendance & do homework" "spss-match" "acmATTENDclass" ("acmATTENDclass" "31" "acmATTENDclassQ" "int" "LikeMe7" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "iAcademicMotivation.java"))
      ("acmefaml" "am-HW encouraged by fam & friends" "spss-match" "acmEFAMLDemands" ("acmEFAMLDemands" "2" "acmEFAMLDemandsQ" "int" "LikeMe7" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "iAcademicMotivation.java"))
      ("acmesocs" "am-No chores if conflict w HW" "spss-match" "acmESOCSTudy" ("acmESOCSTudy" "3" "acmESOCSTudyQ" "int" "LikeMe7" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "iAcademicMotivation.java"))
      ("acmconce" "am-Great task-HW concentration" "spss-match" "acmCONCEntrate" ("acmCONCEntrate" "19" "acmCONCEntrateQ" "int" "LikeMe7" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "iAcademicMotivation.java"))
      ("acmtime" "am-Time available to study" "spss-match" "acmTime" ("acmTime" "7" "acmTimeQ" "int" "LikeMe7Reverse" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "iAcademicMotivation.java"))
      ("acmtimeORIG" "am-Time available to study--should be reversed" NIL "acmTime" ("acmTime" "7" "acmTimeQ" "int" "LikeMe7Reverse" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "iAcademicMotivation.java"))
      ("acmselfs" "am-Self-manage college life well" "spss-match" "acmSelfSufficient" ("acmSelfSufficient" "29" "acmSelfSufficientQ" "int" "LikeMe7" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "iAcademicMotivation.java"))
      ("acmcompl" "am-Confident will complete degree" "spss-match" "acmCompleteCol1" ("acmCompleteCol1" "18" "acmCompleteCol1Q" "int" "Confidence7" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "iAcademicMotivation.java"))
      ("acmquitc" "am-Won't drop out in year" "spss-match" "acmQUITCOL" ("acmQUITCOL" "13" "acmQUITCOLQ" "int" "LikeMe7" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "iAcademicMotivation.java"))
      ("acmfinan" "am-Confidence school finances" "spss-match" "acmFinancial" ("acmFinancial" "19" "acmFinancialQ" "int" "Confidence7" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "iAcademicMotivation.java"))
      ("acmdegre" "am-Motivation for degree" "spss-match" "acmDEGREmotivation" ("acmDEGREmotivation" "31" "acmDEGREmotivationQ" "int" "LikeMe7" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "iAcademicMotivation.java"))
      )
    ( STU-LRN
      ("lrnestud" "lh-Good study place w/o distract" "spss-match" "lrnESTUDYplace" ("lrnESTUDYplace" "1" "lrnESTUDYplaceQ" "int" "LikeMe7" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "bsLearning.java"))
      ("lrntxove" "lh-Prevew, points, review chapters" "spss-match" "lrnTXOVerview" ("lrnTXOVerview" "8" "lrnTXOVerviewQ" "int" "LikeMe7" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "bsLearning.java"))
      ("lrntxund" "lh-Stop to understand readings" "spss-match" "lrnTXUNDerstand" ("lrnTXUNDerstand" "9" "lrnTXUNDerstandQ" "int" "LikeMe7" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "bsLearning.java"))
      ("lrntsrev" "lh-Review 3 times before exam" "spss-match" "lrnTSREView" ("lrnTSREView" "10" "lrnTSREViewQ" "int" "LikeMe7" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "bsLearning.java"))
      ("lrnmap" "lh-Create visual map of readings" "spss-match" "lrnMap" ("lrnMap" "11" "lrnMapQ" "int" "LikeMe7" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "bsLearning.java"))
      ("lrntextn" "lh-Math science seek basic principles" "spss-match" "lrnTextNotProbs" ("lrnTextNotProbs" "12" "lrnTextNotProbsQ" "int" "LikeMe7" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "bsLearning.java"))
      ("lrninter" "lh-If text boring, make interesting" "spss-match" "lrnInterest" ("lrnInterest" "13" "lrnInterestQ" "int" "LikeMe7" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "bsLearning.java"))
      ("lrnrote" "lh-New view--not rote methods" "spss-match" "lrnRote" ("lrnRote" "14" "lrnRoteQ" "int" "LikeMe7" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "bsLearning.java"))
      ("lrnassoc" "lh-Try to create associations" "spss-match" "lrnAssoc" ("lrnAssoc" "15" "lrnAssocQ" "int" "LikeMe7" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "bsLearning.java"))
      ("lrnstrug" "lh-Struggle with difficult material" "spss-match" "lrnSLTNStruggle" ("lrnSLTNStruggle" "16" "lrnSLTNStruggleQ" "int" "LikeMe7" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "bsLearning.java"))
      ("lrntheor" "lh-Build own theories" "spss-match" "lrnTHEORy" ("lrnTHEORy" "17" "lrnTHEORyQ" "int" "LikeMe7" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "bsLearning.java"))
      ("lrnalone" "lh-Study alone-minimal help" "spss-match" "lrnSEFICiciency" ("lrnSEFICiciency" "10" "lrnSEFICiciencyQ" "int" "LikeMe7" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "bsLearningAreas.java"))
      ("lrnmath" "la-Enjoy & good at math" "spss-match" "lrnMATH" ("lrnMATH" "12" "lrnMATHQ" "int" "LikeMe7" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "bsLearningAreas.java"))
      ("lrnwrpap" "la-A's on term papers" "spss-match" "lrnWRITEskills" ("lrnWRITEskills" "4" "lrnWRITEskillsQ" "int" "LikeMe7" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "bsLearningAreas.java"))
      ("lrntxout" "la-Outline textbooks" "spss-match" "lrnTEXToutline" ("lrnTEXToutline" "2" "lrnTEXToutlineQ" "int" "LikeMe7" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "bsLearningAreas.java"))
      ("lrnnotes" "la-Good class notes" "spss-match" "lrnNOTES" ("lrnNOTES" "3" "lrnNOTESQ" "int" "LikeMe7" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "bsLearningAreas.java"))
      ("lrnwrskl" "la-Satisfied with writing skills" "spss-match" "lrnWRORGanization" ("lrnWRORGanization" "11" "lrnWRORGanizationQ" "int" "LikeMe7" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "bsLearningAreas.java"))
      ("lrnsee" "la-No vision problems" "spss-match" "lrnSEE" ("lrnSEE" "5" "lrnSEEQ" "int" "LikeMe7" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "bsLearningAreas.java"))
      ("lrnvocab" "la-No vocabulary problems reading" "spss-match" "lrnVOCAB" ("lrnVOCAB" "6" "lrnVOCABQ" "int" "LikeMe7" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "bsLearningAreas.java"))
      ("lrnsread" "la-Not read slower" "spss-match" "lrnSREAD" ("lrnSREAD" "7" "lrnSREADQ" "int" "LikeMe7" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "bsLearningAreas.java"))
      ("lrnmemor" "la-Memory for terms,formulas,facts" "spss-match" "lrnMEMOR" ("lrnMEMOR" "8" "lrnMEMORQ" "int" "LikeMe7" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "bsLearningAreas.java"))
      ("lrntense" "la-Rarely tense in exams" "spss-match" "lrnTENSE" ("lrnTENSE" "9" "lrnTENSEQ" "int" "LikeMe7" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "bsLearningAreas.java"))
      ("lrnsefic" "la-Learning time efficient" "spss-match" "lrnSEFICiciency" ("lrnSEFICiciency" "10" "lrnSEFICiciencyQ" "int" "LikeMe7" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "bsLearningAreas.java"))
      ("lrnwrorg" "la-Organizing writing good" "spss-match" "lrnWRORGanization" ("lrnWRORGanization" "11" "lrnWRORGanizationQ" "int" "LikeMe7" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "bsLearningAreas.java"))
      ("lrnunasn" "ld-Understand & begin assignments" "spss-match" "lrnUNASNments" ("lrnUNASNments" "1" "lrnUNASNmentsQ" "int" "LikeMe7Reverse" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "bsLearningDisable.java"))
      ("lrncolmt" "ld-Not made to feel not college material" "spss-match" "lrnCOLMTeral" ("lrnCOLMTeral" "2" "lrnCOLMTeralQ" "int" "LikeMe7Reverse" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "bsLearningDisable.java"))
      ("lrnknowt" "ld-Not know more than test" "spss-match" "lrnKNOWtestBad" ("lrnKNOWtestBad" "3" "lrnKNOWtestBadQ" "int" "LikeMe7Reverse" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "bsLearningDisable.java"))
      ("lrnproof" "ld-Not unsure of un-proofed-by-other paper" "spss-match" "lrnPROOFpaper" ("lrnPROOFpaper" "4" "lrnPROOFpaperQ" "int" "LikeMe7Reverse" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "bsLearningDisable.java"))
      ("lrnrread" "ld-Not read texts 2-3 times to make sense" "spss-match" "lrnRREADtexts" ("lrnRREADtexts" "5" "lrnRREADtextsQ" "int" "LikeMe7Reverse" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "bsLearningDisable.java"))
      ("lrneffic" "ld-Not more time, lower grades" "spss-match" "lrnSEFICiciency" ("lrnSEFICiciency" "10" "lrnSEFICiciencyQ" "int" "LikeMe7" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "bsLearningAreas.java"))
      ("lrntestt" "ld-Not test better if more time" "spss-match" "lrnTESTTMoreTime" ("lrnTESTTMoreTime" "7" "lrnTESTTMoreTimeQ" "int" "LikeMe7Reverse" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "bsLearningDisable.java"))
      ("lrntimas" "ld-Not too much time on assignments" "spss-match" "lrnTIMASsigns" ("lrnTIMASsigns" "8" "lrnTIMASsignsQ" "int" "LikeMe7Reverse" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "bsLearningDisable.java"))
      ("lrntired" "ld-Not reading 1 hour make tired" "spss-match" "lrnTIREDread" ("lrnTIREDread" "9" "lrnTIREDreadQ" "int" "LikeMe7Reverse" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "bsLearningDisable.java"))
      ("lrntanxi" "ld-Not more anxiety about tests" "spss-match" "lrnTANXiety" ("lrnTANXiety" "10" "lrnTANXietyQ" "int" "LikeMe7Reverse" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "bsLearningDisable.java"))
      ("lrnsmart" "ld-Not smarter than grades indicate" "spss-match" "lrnSMARTerThanGrades" ("lrnSMARTerThanGrades" "11" "lrnSMARTerThanGradesQ" "int" "LikeMe7Reverse" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "bsLearningDisable.java"))
      ("lrnaread" "ld-Not problem avoiding reading" "spss-match" "lrnAREAD" ("lrnAREAD" "12" "lrnAREADQ" "int" "LikeMe7Reverse" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "bsLearningDisable.java"))
      ("lrnrslow" "ld-Not slower reader" "spss-match" "lrnRSLOWread" ("lrnRSLOWread" "13" "lrnRSLOWreadQ" "int" "LikeMe7Reverse" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "bsLearningDisable.java"))
      )
    ( SM
      ("smtbusy" "sm-Rarely upset about too rushed" "spss-match" "smtBUSY" ("smtBUSY" "13" "smtBUSYQ" "int" "LikeMe7" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "bsSelfManagement.java"))
      ("smtfutur" "sm-Time planning and distant goals" "spss-match" "smtFUTURePlan" ("smtFUTURePlan" "2" "smtFUTURePlanQ" "int" "LikeMe7" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "bsSelfManagement.java"))
      ("smtexerc" "sm-Exercise freq-20 mins" "spss-match" "smtExercize" ("smtExercize" "3" "smtExercizeQ" "int" "Freq12" "questionInstancesArray" "frameTitle" "frameDimWidth" "frHeight12;" "bsSelfManagement.java"))
      ("smteath" "sm-Healthy diet" "spss-match" "smtEATH" ("smtEATH" "4" "smtEATHQ" "int" "LikeMe7" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "bsSelfManagement.java"))
      ("smtsleep" "sm-Hours sleep" "spss-match" "smtSleep" ("smtSleep" "5" "smtSleepQ" "int" "NumberTo12" "questionInstancesArray" "frameTitle" "frameDimWidth" "frHeight12;" "bsSelfManagement.java"))
      ("smtsdeve" "sm-Managed self-change" "spss-match" "smtSDEVelopment" ("smtSDEVelopment" "6" "smtSDEVelopmentQ" "int" "LikeMe7" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "bsSelfManagement.java"))
      ("smtnproc" "sm-Start & complete big projects" "spss-match" "smtNPROCrastinate" ("smtNPROCrastinate" "7" "smtNPROCrastinateQ" "int" "LikeMe7" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "bsSelfManagement.java"))
      ("smtptodo" "sm-To-do list--all areas" "spss-match" "smtPTODO" ("smtPTODO" "8" "smtPTODOQ" "int" "LikeMe7" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "bsSelfManagement.java"))
      ("smtgoals" "sm-Objectives lists used" "spss-match" "smtGOALS" ("smtGOALS" "9" "smtGOALSQ" "int" "LikeMe7" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "bsSelfManagement.java"))
      ("smtschd" "sm-Weekly schedule" "spss-match" "smtSCHD" ("smtSCHD" "10" "smtSCHDQ" "int" "LikeMe7" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "bsSelfManagement.java"))
      ("smt2dtod" "sm-2-D to-do lists--assignments" "spss-match" "smt2DToDo" ("smt2DToDo" "10" "smt2DToDoQ" "int" "LikeMe7" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "bsSelfManagement.java"))
      ("smtacmpl" "sm-High accomplishment, lo pressure" "spss-match" "smtACMPL" ("smtACMPL" "11" "smtACMPLQ" "int" "LikeMe7" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "bsSelfManagement.java"))
      ("smtghelp" "sm-Regular self-development habits" "spss-match" "smtGHELP" ("smtGHELP" "12" "smtGHELPQ" "int" "LikeMe7" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "bsSelfManagement.java"))
      ("smtbalan" "sm-Life area balance/satisfaction" "spss-match" "smtBALance" ("smtBALance" "1" "smtBALanceQ" "int" "LikeMe7" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "bsSelfManagement.java"))
      ("smthabch" "sm-Take good advice--make changes" "spss-match" "smtHabChg" ("smtHabChg" "1" "smtHabChgQ" "int" "LikeMe7" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "bsSelfManagement.java"))
      )
    ( COPE
      ("copnegth" "cp-Not worry, neg thoughts" "spss-match" "copNEGThinking" ("copNEGThinking" "2" "copNEGThinkingQ" "int" "PerCent6CopeReverse" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "bsEmotionManagement.java"))
      ("copcopea" "cp-Not eat" "spss-match" "copCOPEat" ("copCOPEat" "1" "copCOPEatQ" "int" "PerCent6CopeReverse" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "bsEmotionManagement.java"))
      ("coppsolv" "cp-Face & problem solve" "spss-match" "copPSolve" ("copPSolve" "3" "copPSolveQ" "int" "PerCent6Cope" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "bsEmotionManagement.java"))
      ("copemota" "cp-Not outward anger" "spss-match" "copEMOTaggress" ("copEMOTaggress" "4" "copEMOTaggressQ" "int" "PerCent6CopeReverse" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "bsEmotionManagement.java"))
      ("copavops" "cp-Not avoid thinking about-dealing w/problemNEW" "spss-match" "copAVOID" ("copAVOID" "5" "copAVOIDQ" "int" "PerCent6CopeReverse" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "bsEmotionManagement.java"))
      ("copblame" "cp-Not blame others or self" "spss-match" "copBlame" ("copBlame" "6" "copBlameQ" "int" "PerCent6CopeReverse" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "bsEmotionManagement.java"))
      ("copwdrw" "cp-Not withdraw from others" "spss-match" "copWDRW" ("copWDRW" "7" "copWDRWQ" "int" "PerCent6CopeReverse" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "bsEmotionManagement.java"))
      ("copfun" "cp-Fun or involving activity" "spss-match" "copFUN" ("copFUN" "8" "copFUNQ" "int" "PerCent6Cope" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "bsEmotionManagement.java"))
      ("coptalks" "cp-Talk about problem" "spss-match" "copTALKsomeone" ("copTALKsomeone" "9" "copTALKsomeoneQ" "int" "PerCent6Cope" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "bsEmotionManagement.java"))
      ("coppepta" "cp-Positive thoughts-pep talk" "spss-match" "copPEPTalk" ("copPEPTalk" "10" "copPEPTalkQ" "int" "PerCent6Cope" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "bsEmotionManagement.java"))
      ("copsmoke" "cp-Not smoke tobacco" "spss-match" "copSMOKe" ("copSMOKe" "11" "copSMOKeQ" "int" "PerCent6CopeReverse" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "bsEmotionManagement.java"))
      ("copdrug" "cp-Not drink alcohol, street drugs,or meds" "spss-match" "copDRUG" ("copDRUG" "12" "copDRUGQ" "int" "PerCent6CopeReverse" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "bsEmotionManagement.java"))
      ("coppe" "cp-Vigorous physical activity" "spss-match" "copPEPTalk" ("copPEPTalk" "10" "copPEPTalkQ" "int" "PerCent6Cope" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "bsEmotionManagement.java"))
      ("copnegph" "cp-Not critical-punative thoughts" "spss-match" "copNegPhil" ("copNegPhil" "14" "copNegPhilQ" "int" "PerCent6CopeReverse" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "bsEmotionManagement.java"))
      ("copselfb" "cp-Not anger at self" "spss-match" "copSelfBlame" ("copSelfBlame" "14" "copSelfBlameQ" "int" "PerCent6CopeReverse" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "bsEmotionManagement.java"))
      ("copposph" "cp-Phil or religious viewpoint" "spss-match" "copPosPhil" ("copPosPhil" "15" "copPosPhilQ" "int" "PerCent6Cope" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "bsEmotionManagement.java"))
      ("copexpec" "cp-Examine expectations" "spss-match" "copExpectations" ("copExpectations" "16" "copExpectationsQ" "int" "PerCent6Cope" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "bsEmotionManagement.java"))
      ("cophappy" "cp-Think happy no matter what" "spss-match" "copHappy" ("copHappy" "17" "copHappyQ" "int" "PerCent6Cope" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "bsEmotionManagement.java"))
      ("copavoat" "cp-Not miss work, school, etc-" "spss-match" "copAvoidFreq" ("copAvoidFreq" "19" "copAvoidFreqQ" "int" "Freq7Reverse" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "bsEmotionManagement.java"))
      ("copselfe" "cp-Self-exploration enjoyment" "spss-match" "copSelfExplore" ("copSelfExplore" "18" "copSelfExploreQ" "int" "Priority9" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "bsEmotionManagement.java"))
      )
    ( THEMES
      ("thm1ach" "ta-Being the best" "spss-match" "thm1Ach" ("thm1Ach" "1" "thm1AchQ" "int" "Priority10" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "iLifeThemesAch.java"))
      ("thm3educ" "ta-Advanced degrees" "spss-match" "thm3Educ" ("thm3Educ" "3" "thm3EducQ" "int" "Priority10" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "iLifeThemesAch.java"))
      ("thm4mone" "ta-Very high income" "spss-match" "thm4Money" ("thm4Money" "4" "thm4MoneyQ" "int" "Priority10" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "iLifeThemesAch.java"))
      ("thm25pos" "ta-High quality possessions" "spss-match" "thm25Possess" ("thm25Possess" "25" "thm25PossessQ" "int" "Priority10" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "iLifeThemesAch.java"))
      ("thm26suc" "ta-Career success" "spss-match" "thm26Success" ("thm26Success" "26" "thm26SuccessQ" "int" "Priority10" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "iLifeThemesAch.java"))
      ("thmimpac" "ta-Impact-change world" "spss-match" "thm27ChangeWorld" ("thm27ChangeWorld" "27" "thm27ChangeWorldQ" "int" "Priority10" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "iLifeThemesAch.java"))
      ("thm28cre" "ta-Creation-major contribution" "spss-match" "thm28Create" ("thm28Create" "28" "thm28CreateQ" "int" "Priority10" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "iLifeThemesAch.java"))
      ("thm30ceo" "ta-Power-ceo, owner" "spss-match" "thm30CEO" ("thm30CEO" "30" "thm30CEOQ" "int" "Priority10" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "iLifeThemesAch.java"))
      ("thm33goa" "ta-Complete all important goals" "spss-match" "thm33Goals" ("thm33Goals" "33" "thm33GoalsQ" "int" "Priority10" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "iLifeThemesAch.java"))
      ("thm8roma" "ts-Love-romance" "spss-match" "thm8Romance" ("thm8Romance" "8" "thm8RomanceQ" "int" "Priority10" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "iLifeThemesSoc.java"))
      ("thm12ple" "ts-Pleasing others-avoid conflict" "spss-match" "thm12Please" ("thm12Please" "12" "thm12PleaseQ" "int" "Priority10" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "iLifeThemesSoc.java"))
      ("thmrespe" "ts-Respect from others" "spss-match" "thm15Respect" ("thm15Respect" "15" "thm15RespectQ" "int" "Priority10" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "iLifeThemesSoc.java"))
      ("thm20int" "ts-Intimacy-close relationships" "spss-match" "thm20Intimacy" ("thm20Intimacy" "20" "thm20IntimacyQ" "int" "Priority10" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "iLifeThemesSoc.java"))
      ("thmliked" "ts-Well-liked by many" "spss-match" "thm21Network" ("thm21Network" "21" "thm21NetworkQ" "int" "Priority10" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "iLifeThemesSoc.java"))
      ("thmcareg" "ts-Care-giving-parent, others" "spss-match" "thm31Caregiver" ("thm31Caregiver" "31" "thm31CaregiverQ" "int" "Priority10" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "iLifeThemesSoc.java"))
      ("thmsuppo" "ts-Emotional support from others" "spss-match" "thmVSUPRT" ("thmVSUPRT" "6" "thmVSUPRTQ" "int" "Priority10" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "iLifeThemesSoc.java"))
      ("thmatten" "ts-Attention from others" "spss-match" "thmAttention" ("thmAttention" "11" "thmAttentionQ" "int" "Priority10" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "iLifeThemesSoc.java"))
      ("thmfamil" "ts-Family" "spss-match" "thmFamily" ("thmFamily" "15" "thmFamilyQ" "int" "Priority10" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "iLifeThemesSoc.java"))
      ("thmrecog" "ts-Recognition-respect,status,etc" "spss-match" "thmRecognition" ("thmRecognition" "16" "thmRecognitionQ" "int" "Priority10" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "iLifeThemesSoc.java"))
      ("thmphurt" "td-Personal healing-overcome problems" "spss-match" "thm16Hurt" ("thm16Hurt" "16" "thm16HurtQ" "int" "Priority10" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "iLifeThemesNeg.java"))
      ("thmobgod" "td-Obedience to God" "spss-match" "thm17GodRules" ("thm17GodRules" "17" "thm17GodRulesQ" "int" "Priority10" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "iLifeThemesNeg.java"))
      ("thmparlv" "td-Parental love and respect" "spss-match" "thm18ParentRespect" ("thm18ParentRespect" "18" "thm18ParentRespectQ" "int" "Priority10" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "iLifeThemesNeg.java"))
      ("thmsprot" "td-Self-protection" "spss-match" "thm24Protect" ("thm24Protect" "24" "thm24ProtectQ" "int" "Priority10" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "iLifeThemesNeg.java"))
      ("thmpunct" "td-Punctuality" "spss-match" "thmPunctuality" ("thmPunctuality" "14" "thmPunctualityQ" "int" "Priority10" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "iLifeThemesNeg.java"))
      ("thmoblig" "td-Obligation" "spss-match" "thmObligation" ("thmObligation" "35" "thmObligationQ" "int" "Priority10" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "iLifeThemesNeg.java"))
      ("thm5adve" "ti-Adventure" "spss-match" "thm5Advent" ("thm5Advent" "5" "thm5AdventQ" "int" "Priority10" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "iLifeThemes.java"))
      ("thm6lear" "ti-Learning, self-development" "spss-match" "thm6Learn" ("thm6Learn" "6" "thm6LearnQ" "int" "Priority10" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "iLifeThemes.java"))
      ("thm9shap" "ti-Self-happiness" "spss-match" "thm9Happy" ("thm9Happy" "9" "thm9HappyQ" "int" "Priority10" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "iLifeThemes.java"))
      ("thm10oth" "ti-Giving to others happiness, world" "spss-match" "thm10OthHap" ("thm10OthHap" "10" "thm10OthHapQ" "int" "Priority10" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "iLifeThemes.java"))
      ("thmrelgd" "ti-Spiritual intimacy" "spss-match" "thmRecognition" ("thmRecognition" "16" "thmRecognitionQ" "int" "Priority10" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "iLifeThemesSoc.java"))
      ("thm14ind" "ti-Independence" "spss-match" "thm14Indep" ("thm14Indep" "14" "thm14IndepQ" "int" "Priority10" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "iLifeThemes.java"))
      ("thm22bod" "ti-Health and longevity" "spss-match" "thm22Body" ("thm22Body" "22" "thm22BodyQ" "int" "Priority10" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "iLifeThemes.java"))
      ("thm23bal" "ti-Life balance" "spss-match" "thm23Balance" ("thm23Balance" "23" "thm23BalanceQ" "int" "Priority10" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "iLifeThemes.java"))
      ("thmorder" "ti-Orderliness organization" "spss-match" "thmOrderly" ("thmOrderly" "22" "thmOrderlyQ" "int" "Priority10" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "iLifeThemes.java"))
      ("thmmench" "ti-Mental Challenge" "spss-match" "thm32MentalChal" ("thm32MentalChal" "32" "thm32MentalChalQ" "int" "Priority10" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "iLifeThemes.java"))
      ("thm34exp" "ti-Exploration find answers" "spss-match" "thm34Explore" ("thm34Explore" "34" "thm34ExploreQ" "int" "Priority10" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "iLifeThemes.java"))
      ("thmcompc" "ti-Competence, best I can be" "spss-match" "thm35Competence" ("thm35Competence" "36" "thm35CompetenceQ" "int" "Priority10" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "iLifeThemes.java"))
      ("thminteg" "ti-Integrity" "spss-match" "thm36Integrity" ("thm36Integrity" "35" "thm36IntegrityQ" "int" "Priority10" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "iLifeThemes.java"))
      ("thmphil" "ti-Personal philosophy" "spss-match" "thmPHIL" ("thmPHIL" "7" "thmPHILQ" "int" "Priority10" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "iLifeThemes.java"))
      ("thmclean" "ti-Cleanliness" "spss-match" "thm12Please" ("thm12Please" "12" "thm12PleaseQ" "int" "Priority10" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "iLifeThemesSoc.java"))
      ("thmwhole" "ti-Wholeness" "spss-match" "thmWholeness" ("thmWholeness" "18" "thmWholenessQ" "int" "Priority10" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "iLifeThemes.java"))
      ("thmperfe" "ti-Perfection and idealism" "spss-match" "thmPerfection" ("thmPerfection" "19" "thmPerfectionQ" "int" "Priority10" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "iLifeThemes.java"))
      ("thmjusti" "ti-Justice" "spss-match" "thmJustice" ("thmJustice" "22" "thmJusticeQ" "int" "Priority10" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "iLifeThemes.java"))
      ("thmsimpl" "ti-Simplicity" "spss-match" "thmSimplicity" ("thmSimplicity" "25" "thmSimplicityQ" "int" "Priority10" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "iLifeThemes.java"))
      ("thmbeaut" "ti-Beauty" "spss-match" "thmBeauty" ("thmBeauty" "27" "thmBeautyQ" "int" "Priority10" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "iLifeThemes.java"))
      ("thmgoodn" "ti-Goodness" "spss-match" "thmGoodness" ("thmGoodness" "28" "thmGoodnessQ" "int" "Priority10" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "iLifeThemes.java"))
      ("thmuniqu" "ti-Uniqueness & diversity" "spss-match" "thmUnique" ("thmUnique" "29" "thmUniqueQ" "int" "Priority10" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "iLifeThemes.java"))
      ("thmcreat" "ti-Creativeness" "spss-match" "thmCreative" ("thmCreative" "30" "thmCreativeQ" "int" "Priority10" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "iLifeThemes.java"))
      ("thmefort" "ti-Effortlessness" "spss-match" "thmEfortless" ("thmEfortless" "31" "thmEfortlessQ" "int" "Priority10" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "iLifeThemes.java"))
      ("thmplayf" "ti-Fun playfulness" "spss-match" "thmPlayful" ("thmPlayful" "32" "thmPlayfulQ" "int" "Priority10" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "iLifeThemes.java"))
      ("thmsesuf" "ti-Self-sufficiency" "spss-match" "thmSelfSufficient" ("thmSelfSufficient" "34" "thmSelfSufficientQ" "int" "Priority10" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "iLifeThemes.java"))
      ("thmsedis" "ti-Self-discipline" "spss-match" "thmSelfDiscipline" ("thmSelfDiscipline" "36" "thmSelfDisciplineQ" "int" "Priority10" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "iLifeThemes.java"))
      ("thmspiri" "ti-God and/or spirituality" "spss-match" "thmSpiritGod" ("thmSpiritGod" "41" "thmSpiritGodQ" "int" "Priority10" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "iLifeThemes.java"))
      ("thmrelig" "ti-Religion" "spss-match" "thmReligion" ("thmReligion" "42" "thmReligionQ" "int" "Priority10" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "iLifeThemes.java"))
      ("thmuncon" "ti-Unconditional love of all people" "spss-match" "thmUnconditLove" ("thmUnconditLove" "43" "thmUnconditLoveQ" "int" "Priority10" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "iLifeThemes.java"))
      )
    ( TBV
      ("tbvothfi" "bu-Not always others first" "spss-match" "tbvOthersFirst" ("tbvOthersFirst" "47" "tbvOthersFirstQ" "int" "Belief10Reverse" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "iTopBV.java"))
      ("tbvliked" "bu-Not loved by all" "spss-match" "tbvLikedByAll" ("tbvLikedByAll" "48" "tbvLikedByAllQ" "int" "Belief10Reverse" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "iTopBV.java"))
      ("tbvweak" "bu-Not weak and dependent" "spss-match" "tbvWeak" ("tbvWeak" "49" "tbvWeakQ" "int" "Belief10Reverse" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "iTopBV.java"))
      ("tbvbest" "bu-Not must be best" "spss-match" "tbvBest" ("tbvBest" "50" "tbvBestQ" "int" "Belief10Reverse" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "iTopBV.java"))
      ("tbventit" "bu-Not entitled to good life" "spss-match" "tbvEntitled" ("tbvEntitled" "51" "tbvEntitledQ" "int" "Belief10Reverse" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "iTopBV.java"))
      ("tbvrules" "bu-Not if break rules--severe punishment" "spss-match" "tbvRulesPunish" ("tbvRulesPunish" "52" "tbvRulesPunishQ" "int" "Belief10Reverse" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "iTopBV.java"))
      ("tbvwinne" "bu-Not winners and losers" "spss-match" "tbvWinners" ("tbvWinners" "53" "tbvWinnersQ" "int" "Belief10Reverse" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "iTopBV.java"))
      ("tbvbalan" "bu-Balance present-future, self-others hap" "spss-match" "tbvBalanceFuture" ("tbvBalanceFuture" "45" "tbvBalanceFutureQ" "int" "Belief10" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "iTopBV.java"))
      ("tbvhapca" "bu-Decisions-max happiness" "spss-match" "tbvHapCalc" ("tbvHapCalc" "46" "tbvHapCalcQ" "int" "Belief10" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "iTopBV.java"))
      ("tbvgrati" "bu-Gratitude-abundance thinking" "spss-match" "tbvGratitude" ("tbvGratitude" "44" "tbvGratitudeQ" "int" "Belief10" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "iTopBV.java"))
      ("thvselfa" "bu-Accept all parts of self" "spss-match" "thvSelfAccept" ("thvSelfAccept" "58" "thvSelfAcceptQ" "int" "Belief10Reverse" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight," "iTopBV.java"))
      ("thvselfaORIG" "ORIG-bu-Accept all parts of self" NIL "thvSelfAccept" ("thvSelfAccept" "58" "thvSelfAcceptQ" "int" "Belief10Reverse" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight," "iTopBV.java"))
      ("thvuncon" "bu-Value all unconditionally" "spss-match" "thvUncondCare" ("thvUncondCare" "55" "thvUncondCareQ" "int" "Belief10" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight," "iTopBV.java"))
      ("thvselfw" "bu-Value self unconditionally" "spss-match" "thvSelfWorth" ("thvSelfWorth" "56" "thvSelfWorthQ" "int" "Belief10" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight," "iTopBV.java"))
      )
    ( IE
      ("iecselfs" "ie-Take care of self & probs" "spss-match" "iecSelfSufficient" ("iecSelfSufficient" "1" "iecSelfSufficientQ" "int" "LikeMe7" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "iIEcontrol.java"))
      ("iecicont" "ie-I control life-happiness" "spss-match" "iecILOFCiVSe" ("iecILOFCiVSe" "2" "iecILOFCiVSeQ" "int" "Agree7" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "iIEcontrol.java"))
      ("iecgenet" "ie-Not genetics-biology control my hap" "spss-match" "iecGenetic" ("iecGenetic" "3" "iecGeneticQ" "int" "Agree7Reverse" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "iIEcontrol.java"))
      ("iecpeopl" "ie-Not others control my happiness" "spss-match" "iecPeople" ("iecPeople" "4" "iecPeopleQ" "int" "Agree7Reverse" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "iIEcontrol.java"))
      ("iecdepen" "ie-Not dependent on one person" "spss-match" "iecDependent" ("iecDependent" "5" "iecDependentQ" "int" "LikeMe7Reverse" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "iIEcontrol.java"))
      ("ieccofee" "ie-Not care for another above self" "spss-match" "iecCodependent" ("iecCodependent" "6" "iecCodependentQ" "int" "LikeMe7Reverse" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "iIEcontrol.java"))
      ("ieccoprb" "ie-Not worry carrying for one's serious prob" "spss-match" "iecCodepProblem" ("iecCodepProblem" "7" "iecCodepProblemQ" "int" "LikeMe7Reverse" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "iIEcontrol.java"))
      )
    ( WORLDVIEW
      ("wovprogr" "wv-World will improve" "spss-match" "wovProgress" ("wovProgress" "1" "wovProgressQ" "int" "Agree7" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "iWorldview.java"))
      ("wovgoodf" "wv-Good forces control world" "spss-match" "wovGoodForces" ("wovGoodForces" "2" "wovGoodForcesQ" "int" "Agree7" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "iWorldview.java"))
      ("wovmylif" "wv-My life will improve" "spss-match" "wovMyLife" ("wovMyLife" "3" "wovMyLifeQ" "int" "Agree7" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "iWorldview.java"))
      ("wovnfair" "wv-Not life unfair to me" "spss-match" "wovLifeNotFair" ("wovLifeNotFair" "4" "wovLifeNotFairQ" "int" "Agree7Reverse" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight," "iWorldview.java"))
      ("woventit" "wv-Not entitled to basic necessities" "spss-match" "wovEntitled" ("wovEntitled" "5" "wovEntitledQ" "int" "Agree7Reverse" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight," "iWorldview.java"))
      ("wovinjur" "wv-Not one ruined my life" "spss-match" "wovInjured" ("wovInjured" "6" "wovInjuredQ" "int" "Agree7Reverse" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "iWorldview.java"))
      ("wovabund" "wv-Have all I need to be happy" "spss-match" "wovAbundance" ("wovAbundance" "7" "wovAbundanceQ" "int" "Agree7" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight," "iWorldview.java"))
      ("wovgrate" "wv-Extremely grateful" "spss-match" "wovGrateful" ("wovGrateful" "8" "wovGratefulQ" "int" "Agree7" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight," "iWorldview.java"))
      ("wovposth" "wv-Percent of time positive thoughts" "spss-match" "wovPosThoughtsPerCent" ("wovPosThoughtsPerCent" "9" "wovPosThoughtsPerCentQ" "int" "Percent10" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "iWorldview.java"))
      ("wovhappy" "wf-Not fear unhappy career" "spss-match" "wovHappyCareer" ("wovHappyCareer" "10" "wovHappyCareerQ" "int" "Fear7" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "iWorldviewFears.java"))
      ("wovpoor" "wf-Not fear of poverty" "spss-match" "wovPoor" ("wovPoor" "12" "wovPoorQ" "int" "Fear7" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "iWorldviewFears.java"))
      ("wovill" "wf-Not fear of illness" "spss-match" "wovIll" ("wovIll" "13" "wovIllQ" "int" "Fear7" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "iWorldviewFears.java"))
      ("wovdeath" "wf-Not fear of death" "spss-match" "wovDeath" ("wovDeath" "14" "wovDeathQ" "int" "Fear7" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "iWorldviewFears.java"))
      ("wovalone" "wf-Not fear of being alone" "spss-match" "wovAlone" ("wovAlone" "15" "wovAloneQ" "int" "Fear7" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "iWorldviewFears.java"))
      ("wovnolov" "wf-Not fear of poor marriage-family" "spss-match" "wovNoLove" ("wovNoLove" "16" "wovNoLoveQ" "int" "Fear7" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "iWorldviewFears.java"))
      ("wovliked" "wf-Not fear of not close friends" "spss-match" "wovLiked" ("wovLiked" "17" "wovLikedQ" "int" "Fear7" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "iWorldviewFears.java"))
      ("wovperso" "wf-Not fear of not being person want" "spss-match" "wovPerson" ("wovPerson" "18" "wovPersonQ" "int" "Fear7" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "iWorldviewFears.java"))
      ("wovprobl" "wf-Not fear of overcoming problem" "spss-match" "wovProblem" ("wovProblem" "19" "wovProblemQ" "int" "Fear7" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "iWorldviewFears.java"))
      ("wovdisco" "wf-Not fear of something discovered" "spss-match" "wovDiscovered" ("wovDiscovered" "20" "wovDiscoveredQ" "int" "Fear7" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "iWorldviewFears.java"))
      ("wovsucce" "wf-Not fear of lack acad-career success" "spss-match" "wovSuccess" ("wovSuccess" "11" "wovSuccessQ" "int" "Fear7" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "iWorldviewFears.java"))
      ("wovoverc" "wf-Could be happy if worst fear happened" "spss-match" "wovOvercomeFear" ("wovOvercomeFear" "21" "wovOvercomeFearQ" "int" "Agree7" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "iWorldviewFears.java"))
      )
    ( SELF-CONF
      ("slflearn" "sc-Learning and study skills" "spss-match" "slfLearnSkill" ("slfLearnSkill" "11" "slfLearnSkillQ" "int" "Confidence7" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight," "iSelf.java"))
      ("slfcritt" "sc-Critical thinking and logic" "spss-match" "slfCritThink" ("slfCritThink" "2" "slfCritThinkQ" "int" "Confidence7" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "iSelf.java"))
      ("slfresea" "sc-Research & methodology" "spss-match" "slfResearch" ("slfResearch" "3" "slfResearchQ" "int" "Confidence7" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "iSelf.java"))
      ("slfanaly" "sc-Analytical thinking" "spss-match" "slfAnalysis" ("slfAnalysis" "4" "slfAnalysisQ" "int" "Confidence7" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "iSelf.java"))
      ("slfsynth" "sc-Synthesis" "spss-match" "slfSynthesis" ("slfSynthesis" "5" "slfSynthesisQ" "int" "Confidence7" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "iSelf.java"))
      ("slfcreat" "sc-Creative thinking-ideas" "spss-match" "slfCritThink" ("slfCritThink" "2" "slfCritThinkQ" "int" "Confidence7" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "iSelf.java"))
      ("slfcompu" "sc-Computer-related" "spss-match" "slfComputer" ("slfComputer" "7" "slfComputerQ" "int" "Confidence7" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "iSelf.java"))
      ("slfbiosc" "sc-Biological science" "spss-match" "slfBioSci" ("slfBioSci" "8" "slfBioSciQ" "int" "Confidence7" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "iSelf.java"))
      ("slfnatsc" "sc-Natural science--physics, chem" "spss-match" "slfNatSci" ("slfNatSci" "9" "slfNatSciQ" "int" "Confidence7" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "iSelf.java"))
      ("slflibar" "sc-Liberal arts" "spss-match" "slfLibArts" ("slfLibArts" "20" "slfLibArtsQ" "int" "Confidence7" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "iSelf.java"))
      ("slfsocsc" "sc-Beh-social science" "spss-match" "slfSocSci" ("slfSocSci" "21" "slfSocSciQ" "int" "Confidence7" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "iSelf.java"))
      ("slfphilr" "sc-Philosophy-religion" "spss-match" "slfPhilRel" ("slfPhilRel" "12" "slfPhilRelQ" "int" "Confidence7" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "iSelf.java"))
      ("slfperfa" "sc-Performing arts" "spss-match" "slfPerfArt" ("slfPerfArt" "13" "slfPerfArtQ" "int" "Confidence7" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "iSelf.java"))
      ("slffinea" "sc-Fine arts" "spss-match" "slfFineArt" ("slfFineArt" "14" "slfFineArtQ" "int" "Confidence7" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "iSelf.java"))
      ("slfbusan" "sc-Business or management" "spss-match" "slfBusAndManage" ("slfBusAndManage" "15" "slfBusAndManageQ" "int" "Confidence7" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "iSelf.java"))
      ("slfheal2" "sc-Health or medicine" "spss-match" "slfHealthMed" ("slfHealthMed" "16" "slfHealthMedQ" "int" "Confidence7" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight," "iSelf.java"))
      ("slfengin" "sc-Engineering or technical" "spss-match" "slfEngin" ("slfEngin" "17" "slfEnginQ" "int" "Confidence7" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "iSelf.java"))
      ("slfeduch" "sc-Educ,Counseling, or helping" "spss-match" "slfEducHelp" ("slfEducHelp" "18" "slfEducHelpQ" "int" "Confidence7" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "iSelf.java"))
      ("slfiq" "sc-Intelligence" "spss-match" "slfIQ" ("slfIQ" "19" "slfIQQ" "int" "Confidence7" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "iSelf.java"))
      ("slfdecma" "sc-Decision-making/planning" "spss-match" "slfDecMaking" ("slfDecMaking" "30" "slfDecMakingQ" "int" "Confidence7" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight," "iSelf.java"))
      ("slftimem" "sc-Time management" "spss-match" "slfTimeManagement" ("slfTimeManagement" "31" "slfTimeManagementQ" "int" "Confidence7" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight," "iSelf.java"))
      ("slfcope" "sc-Emotional coping skills" "spss-match" "slfCope" ("slfCope" "22" "slfCopeQ" "int" "Confidence7" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight," "iSelf.java"))
      ("slfself4" "sc-Ach motivation-work habits, focus" "spss-match" "slfSelfMotiv" ("slfSelfMotiv" "24" "slfSelfMotivQ" "int" "Confidence7" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight," "iSelf.java"))
      ("slfselfm" "sc-Self-motivation of unpleasant" "spss-match" "slfSelfDisclose" ("slfSelfDisclose" "40" "slfSelfDiscloseQ" "int" "Confidence7" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight," "iSelf.java"))
      ("slfachan" "sc-Self-development/change" "spss-match" "slfAchAndWork" ("slfAchAndWork" "25" "slfAchAndWorkQ" "int" "Confidence7" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "iSelf.java"))
      ("slfmana6" "sc-Managing finances" "spss-match" "slfManageMoney" ("slfManageMoney" "26" "slfManageMoneyQ" "int" "Confidence7" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight," "iSelf.java"))
      ("slfheal3" "sc-Health detailed knowl & habits" "spss-match" "slfHealthMed" ("slfHealthMed" "16" "slfHealthMedQ" "int" "Confidence7" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight," "iSelf.java"))
      ("slfmeetp" "sc-Meeting people" "spss-match" "slfMeetPeople" ("slfMeetPeople" "28" "slfMeetPeopleQ" "int" "Confidence7" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight," "iSelf.java"))
      ("slfliste" "sc-Empathetic listening skills" "spss-match" "slfListening" ("slfListening" "29" "slfListeningQ" "int" "Confidence7" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight," "iSelf.java"))
      ("slfself5" "sc-Self-disclosure" "spss-match" "slfSelfDisclose" ("slfSelfDisclose" "40" "slfSelfDiscloseQ" "int" "Confidence7" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight," "iSelf.java"))
      ("slfconfl" "sc-Conflict resolution skills" "spss-match" "slfConflictResol" ("slfConflictResol" "41" "slfConflictResolQ" "int" "Confidence7" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight," "iSelf.java"))
      ("slfpersu" "sc-Persuasion skills" "spss-match" "slfPersuasion" ("slfPersuasion" "32" "slfPersuasionQ" "int" "Confidence7" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight," "iSelf.java"))
      ("slfmana7" "sc-Management-leadership skills" "spss-match" "slfManageSkill" ("slfManageSkill" "33" "slfManageSkillQ" "int" "Confidence7" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "iSelf.java"))
      ("slfhelps" "sc-Helping-teaching skills" "spss-match" "slfHelpSkill" ("slfHelpSkill" "34" "slfHelpSkillQ" "int" "Confidence7" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight," "iSelf.java"))
      ("slfspeak" "sc-Public speaking skills" "spss-match" "slfSpeakSkill" ("slfSpeakSkill" "35" "slfSpeakSkillQ" "int" "Confidence7" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "iSelf.java"))
      ("slfjobse" "sc-Job search skills" "spss-match" "slfJobSearch" ("slfJobSearch" "36" "slfJobSearchQ" "int" "Confidence7" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "iSelf.java"))
      ("slfadapt" "sc-Adaptable-success in any situation" "spss-match" "slfAdapt" ("slfAdapt" "37" "slfAdaptQ" "int" "Confidence7" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "iSelf.java"))
      ("slfhappy" "sc-Happiness IQ" "spss-match" "slfHappyIQ" ("slfHappyIQ" "38" "slfHappyIQQ" "int" "Confidence7" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight," "iSelf.java"))
      ("slfoptim" "sc-Optimism" "spss-match" "slfTimeManagement" ("slfTimeManagement" "31" "slfTimeManagementQ" "int" "Confidence7" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight," "iSelf.java"))
      ("slffrien" "sc-Caring, friendly, outgoing" "spss-match" "slfFriendly" ("slfFriendly" "52" "slfFriendlyQ" "int" "LikeMe7" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "iSelf.java"))
      ("slfindep" "sc-Strong, independent, self-disciplined" "spss-match" "slfIndependent" ("slfIndependent" "53" "slfIndependentQ" "int" "LikeMe7" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight," "iSelf.java"))
      )
    ( ASSERTCR
      ("cr1issue" "cr-One issue at a time" "spss-match" "crSrq19Issue" ("crSrq19Issue" "1" "crSrq19IssueQ" "int" "LikeUs7" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "bsAssertiveCR.java"))
      ("crresolv" "cr-Rarely repeat arguments of same issue" "spss-match" "crSrq26Finish" ("crSrq26Finish" "2" "crSrq26FinishQ" "int" "LikeUs7" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "bsAssertiveCR.java"))
      ("crnthrea" "cr-I rarely make threats" "spss-match" "crSrq29Threats" ("crSrq29Threats" "3" "crSrq29ThreatsQ" "int" "LikeUs7" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "bsAssertiveCR.java"))
      ("crunderl" "cr-Discuss underlying issues" "spss-match" "crSrq30Real" ("crSrq30Real" "4" "crSrq30RealQ" "int" "LikeUs7" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "bsAssertiveCR.java"))
      ("crtklong" "cr-Not one talk long before other" "spss-match" "crSrq32OneTalk" ("crSrq32OneTalk" "5" "crSrq32OneTalkQ" "int" "LikeUs7Reverse" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "bsAssertiveCR.java"))
      ("crnneglb" "cr-I rarely use negative labels" "spss-match" "crSrq33RareNeg" ("crSrq33RareNeg" "6" "crSrq33RareNegQ" "int" "LikeUs7" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "bsAssertiveCR.java"))
      ("crteweak" "cr-Not uncomfortable about tell weakness" "spss-match" "crSrq34NoWeak" ("crSrq34NoWeak" "7" "crSrq34NoWeakQ" "int" "LikeUs7Reverse" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "bsAssertiveCR.java"))
      ("crwinwin" "cr-Discuss until win-win solution" "spss-match" "crSrq35WinWin" ("crSrq35WinWin" "8" "crSrq35WinWinQ" "int" "LikeUs7" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "bsAssertiveCR.java"))
      ("crlongtk" "cr-Keep going until reach a solution" "spss-match" "crSrq36LongTalk" ("crSrq36LongTalk" "9" "crSrq36LongTalkQ" "int" "LikeUs7" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "bsAssertiveCR.java"))
      ("crexaggr" "cr-I not freq use 'always' or exaggeration" "spss-match" "crSrq37Exaggerate" ("crSrq37Exaggerate" "10" "crSrq37ExaggerateQ" "int" "LikeUs7Reverse" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "bsAssertiveCR.java"))
      ("crmanipu" "cr-Not feel me or partner manipulate" "spss-match" "crSrq38PartManip" ("crSrq38PartManip" "11" "crSrq38PartManipQ" "int" "LikeUs7Reverse" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "bsAssertiveCR.java"))
      ("crsummar" "cr-I repeat summary" "spss-match" "crSrq39Listen" ("crSrq39Listen" "12" "crSrq39ListenQ" "int" "LikeUs7" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "bsAssertiveCR.java"))
      ("crcprais" "cr-We laugh & praise during disagree" "spss-match" "crSrq40Praise" ("crSrq40Praise" "13" "crSrq40PraiseQ" "int" "LikeUs7" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "bsAssertiveCR.java"))
      ("crboassr" "cr-Both assertive pos,firm,diplom" "spss-match" "crSrq43BothAssert" ("crSrq43BothAssert" "14" "crSrq43BothAssertQ" "int" "LikeUs7" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "bsAssertiveCR.java"))
      ("crophone" "cr-We open,nondefensive,honest" "spss-match" "crSrq45Open" ("crSrq45Open" "15" "crSrq45OpenQ" "int" "LikeUs7" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "bsAssertiveCR.java"))
      ("crreprai" "cr-Partner gives more praise than criticism" "spss-match" "crSrq47PartCrit" ("crSrq47PartCrit" "16" "crSrq47PartCritQ" "int" "LikeUs7Reverse" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "bsAssertiveCR.java"))
      ("crteach" "cr-Not problem teaching other" "spss-match" "crSrq56Teach" ("crSrq56Teach" "17" "crSrq56TeachQ" "int" "LikeUs7Reverse" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "bsAssertiveCR.java"))
      ("crifavor" "cr-I do favors cheerfully when asked" "spss-match" "crSrq57Favor" ("crSrq57Favor" "18" "crSrq57FavorQ" "int" "LikeUs7" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "bsAssertiveCR.java"))
      ("crifolup" "cr-I do what I tell partner" "spss-match" "crSrq59FollowUp" ("crSrq59FollowUp" "19" "crSrq59FollowUpQ" "int" "LikeUs7" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "bsAssertiveCR.java"))
      ("crangang" "cr-If p-angry at me, I don't get angry-def" "spss-match" "crSrq60AngerBack" ("crSrq60AngerBack" "20" "crSrq60AngerBackQ" "int" "LikeUs7Reverse" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "bsAssertiveCR.java"))
      ("criprais" "cr-I not criticize more than praise p-" "spss-match" "crSrq67Critical" ("crSrq67Critical" "21" "crSrq67CriticalQ" "int" "LikeUs7Reverse" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "bsAssertiveCR.java"))
      ("crangres" "cr-If one angry, other assertive back" "spss-match" "crSrq68AngerRes" ("crSrq68AngerRes" "22" "crSrq68AngerResQ" "int" "LikeUs7" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "bsAssertiveCR.java"))
      ("crtlkmor" "cr-One partner not much more talkative" "spss-match" "crSrq31EqTalk" ("crSrq31EqTalk" "23" "crSrq31EqTalkQ" "int" "LikeUs7Reverse" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "bsAssertiveCR.java"))
      ("creqwin" "cr-Equal winning of disagreements" "spss-match" "crSrq58EqWin" ("crSrq58EqWin" "24" "crSrq58EqWinQ" "int" "LikeUs7" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "bsAssertiveCR.java"))
      )
    ( INTIMACY
      ("instshlp" "in-Partner helps if I under stress" "spss-match" "intSrq6Extra" ("intSrq6Extra" "1" "intSrq6ExtraQ" "int" "LikeUs7" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "bsIntimacy.java"))
      ("intcomit" "in-Not-commitment cause feel trapped" "spss-match" "intSrq7Commit" ("intSrq7Commit" "2" "intSrq7CommitQ" "int" "LikeUs7Reverse" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "bsIntimacy.java"))
      ("intundrl" "in-We discuss underlying issues" "spss-match" "intSrq30Real" ("intSrq30Real" "3" "intSrq30RealQ" "int" "LikeUs7" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "bsIntimacy.java"))
      ("inttelal" "in-Told partner all about self" "spss-match" "intSrq8TellAll" ("intSrq8TellAll" "4" "intSrq8TellAllQ" "int" "LikeUs7" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "bsIntimacy.java"))
      ("intsmgoa" "in-We agree on long term goals" "spss-match" "intSrq18LikeGoals" ("intSrq18LikeGoals" "5" "intSrq18LikeGoalsQ" "int" "LikeUs7" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "bsIntimacy.java"))
      ("inteqdec" "in-Equality in decision influence" "spss-match" "intSrq20EqDiscuss" ("intSrq20EqDiscuss" "6" "intSrq20EqDiscussQ" "int" "LikeUs7" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "bsIntimacy.java"))
      ("intiopen" "in-We tell almost exactly what we thinking" "spss-match" "intSrq21OpenIssue" ("intSrq21OpenIssue" "7" "intSrq21OpenIssueQ" "int" "LikeUs7" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "bsIntimacy.java"))
      ("intweopn" "in-We open, nondefensive,honest" "spss-match" "intSrq45NonDef" ("intSrq45NonDef" "8" "intSrq45NonDefQ" "int" "LikeUs7" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "bsIntimacy.java"))
      ("intdaily" "in-Daily sharing of feelings on events" "spss-match" "intSrq46OpenFeel" ("intSrq46OpenFeel" "9" "intSrq46OpenFeelQ" "int" "LikeUs7" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "bsIntimacy.java"))
      ("intrespt" "in-Respect partner above others" "spss-match" "intSrq50Respect" ("intSrq50Respect" "10" "intSrq50RespectQ" "int" "LikeUs7" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "bsIntimacy.java"))
      ("intallop" "in-Open, specific about sensitive issues" "spss-match" "intSrq53OpenSexTk" ("intSrq53OpenSexTk" "11" "intSrq53OpenSexTkQ" "int" "LikeUs7" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "bsIntimacy.java"))
      ("intwktog" "in-We enjoy working together" "spss-match" "intSrq55MutTask" ("intSrq55MutTask" "12" "intSrq55MutTaskQ" "int" "LikeUs7Reverse" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "bsIntimacy.java"))
      ("intknpfe" "in-Not frequently don't know p- feelings" "spss-match" "intSrq61KnowFeel" ("intSrq61KnowFeel" "13" "intSrq61KnowFeelQ" "int" "LikeUs7Reverse" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "bsIntimacy.java"))
      ("intlsqpr" "in-Tell of respect, love of p- to others" "spss-match" "intLsqPRASE44Q" ("intLsqPRASE44Q" "14" "intLsqPRASE44Q" "int" "LikeUs7" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "bsIntimacy.java"))
      ("intlove" "in-I love partner very much" "spss-match" "intLove" ("intLove" "15" "intLoveQ" "int" "LikeUs7" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "bsIntimacy.java"))
      )
    ( INDEP-INT
      ("inrbealnORIG" "ORIG-id-OK for weekends alone" NIL ("inrSrq2BeAloneORIG") NO-PC-INST-MATCH)
      ("inrbealn" "id-OK for weekends alone" "spss-match" "inrSrq2BeAlone" ("inrSrq2BeAlone" "1" "inrSrq2BeAloneQ" "int" "LikeUs7Reverse" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "bsIndependentRel.java"))
      ("inalcnstORIG" "ORIG-id-Not consult for small decisions" NIL "inrSrq3Consult" ("inrSrq3Consult" "2" "inrSrq3ConsultQ" "int" "LikeUs7Reverse" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "bsIndependentRel.java"))
      ("inalcnst" "id-Not consult for small decisions" "spss-match" "inrSrq3Consult" ("inrSrq3Consult" "2" "inrSrq3ConsultQ" "int" "LikeUs7Reverse" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "bsIndependentRel.java"))
      ("inrfrien" "id-P- has opposite sex social friends" "spss-match" "inrSrq9OwnFriends" ("inrSrq9OwnFriends" "3" "inrSrq9OwnFriendsQ" "int" "LikeUs7" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "bsIndependentRel.java"))
      ("indifdec" "id-Support p decision if disagree" "spss-match" "inrSrq10EncDifDec" ("inrSrq10EncDifDec" "4" "inrSrq10EncDifDecQ" "int" "LikeUs7" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "bsIndependentRel.java"))
      ("inrlunch" "id-Ok--p - lunch w/ attr- opposite sex" "spss-match" "inrSrq11Lunch" ("inrSrq11Lunch" "5" "inrSrq11LunchQ" "int" "LikeUs7" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "bsIndependentRel.java"))
      ("inrinhap" "id-Marriage not greater than ind- happy" "spss-match" "inrSrq15IndHap" ("inrSrq15IndHap" "6" "inrSrq15IndHapQ" "int" "LikeUs7Reverse" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "bsIndependentRel.java"))
      ("innevarg" "id-Not-partners never disagree if happy" NIL "inrSrq16NevArgue" ("inrSrq16NevArgue" "7" "inrSrq16NevArgueQ" "int" "LikeUs7Reverse" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "bsIndependentRel.java"))
      ("inrigrow" "id-I end relationship if can't grow" NIL "inrSrq17End" ("inrSrq17End" "8" "inrSrq17EndQ" "int" "LikeUs7" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "bsIndependentRel.java"))
      ("inrsaywe" "id-Not say we'when mean 'I" NIL "inrSrq24SayWe" ("inrSrq24SayWe" "9" "inrSrq24SayWeQ" "int" "LikeUs7Reverse" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "bsIndependentRel.java"))
      ("incomtwo" "id-Not-worries of other's commitment" NIL "inrSrq25CommitWorry" ("inrSrq25CommitWorry" "10" "inrSrq25CommitWorryQ" "int" "LikeUs7Reverse" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "bsIndependentRel.java"))
      ("indifgoa" "id-Ok for different goals" NIL "inrSrq28DifGoalOK" ("inrSrq28DifGoalOK" "11" "inrSrq28DifGoalOKQ" "int" "LikeUs7" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "bsIndependentRel.java"))
      ("infindan" "id-Could be happy with another" NIL "inrSrq41FindAnother" ("inrSrq41FindAnother" "12" "inrSrq41FindAnotherQ" "int" "LikeUs7" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "bsIndependentRel.java"))
      ("inenalon" "id-Not-can't enjoy being w/o partner" NIL "inrSrq44EnjoyAlone" ("inrSrq44EnjoyAlone" "13" "inrSrq44EnjoyAloneQ" "int" "LikeUs7Reverse" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "bsIndependentRel.java"))
      ("inokalon" "id-Not-not happy if not partner" NIL "inrSrq48HapAlone" ("inrSrq48HapAlone" "14" "inrSrq48HapAloneQ" "int" "LikeUs7Reverse" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "bsIndependentRel.java"))
      ("inrhatea" "id-Not-I hate to be alone" NIL "inrSrq49FearAlone" ("inrSrq49FearAlone" "15" "inrSrq49FearAloneQ" "int" "LikeUs7Reverse" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "bsIndependentRel.java"))
      ("inrfreeh" "id-Free at home if partner there" NIL "inrSrq51FreeAtHome" ("inrSrq51FreeAtHome" "16" "inrSrq51FreeAtHomeQ" "int" "LikeUs7" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "bsIndependentRel.java"))
      )
    ( ROM
      ("romsurpr" "ro-Surprise p- once/week" "spss-match" "romSrq1Surprise" ("romSrq1Surprise" "1" "romSrq1SurpriseQ" "int" "LikeMe7" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "bsRomantic.java"))
      ("romfanta" "ro-Freq fantasies about p-" "spss-match" "romSrq4Fantasize" ("romSrq4Fantasize" "2" "romSrq4FantasizeQ" "int" "LikeMe7" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "bsRomantic.java"))
      ("romceleb" "ro-Celebrate special days 1/month" "spss-match" "romSrq5Celebr" ("romSrq5Celebr" "3" "romSrq5CelebrQ" "int" "LikeUs7" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "bsRomantic.java"))
      ("romplace" "ro-We go to romantic places 1/week" "spss-match" "romSrq12RomPlaces" ("romSrq12RomPlaces" "4" "romSrq12RomPlacesQ" "int" "LikeUs7" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "bsRomantic.java"))
      ("romattra" "ro-Sexually attracted to partner" "spss-match" "romSrq13Attract" ("romSrq13Attract" "5" "romSrq13AttractQ" "int" "LikeMe7" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "bsRomantic.java"))
      ("romplayf" "ro-Some playful interactions weekly" "spss-match" "romSrq14Play" ("romSrq14Play" "6" "romSrq14PlayQ" "int" "LikeUs7" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "bsRomantic.java"))
      ("romcharm" "ro-Partner charming & romantic" "spss-match" "romSrq42Charm" ("romSrq42Charm" "7" "romSrq42CharmQ" "int" "LikeMe7" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "bsRomantic.java"))
      )
    ( LIBROLE
      ("lromtask" "find" "check-spss-match" "lroSrq22MTasks" ("lroSrq22MTasks" "1" "lroSrq22MTasksQ" "int" "Agree7Reverse" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "bsLiberatedRole.java"))
      ("lroftask" "find" "check-spss-match" "lroSrq23FTasks" ("lroSrq23FTasks" "2" "lroSrq23FTasksQ" "int" "Agree7Reverse" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "bsLiberatedRole.java"))
      ("lrmfinal" "find" "check-spss-match" "lroSrq27FinalDec" ("lroSrq27FinalDec" "3" "lroSrq27FinalDecQ" "int" "Agree7Reverse" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "bsLiberatedRole.java"))
      ("lroembar" "find" "check-spss-match" "lroSrq52Embar" ("lroSrq52Embar" "4" "lroSrq52EmbarQ" "int" "Agree7Reverse" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "bsLiberatedRole.java"))
      ("lromstro" "find" "check-spss-match" "lroSrq54MStronger" ("lroSrq54MStronger" "5" "lroSrq54MStrongerQ" "int" "Agree7Reverse" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "bsLiberatedRole.java"))
      ("lroeqinc" "find" "check-spss-match" "lroSrq65EqIncome" ("lroSrq65EqIncome" "6" "lroSrq65EqIncomeQ" "int" "Agree7" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "bsLiberatedRole.java"))
      ("lrcarcon" "find" "check-spss-match" "lroSrq66FQuitJob" ("lroSrq66FQuitJob" "7" "lroSrq66FQuitJobQ" "int" "Agree7Reverse" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "bsLiberatedRole.java"))
      )
    ( HAP
      ("haparea" "h-Happy living in area, home" "spss-match" "hapAREA" ("hapAREA" "2" "hapAREAQ" "int" "Happy7" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "eHappy.java"))
      ("hapclfrn" "h-Happy w/ number & closeness of friends" "spss-match" "hapCLFRN" ("hapCLFRN" "3" "hapCLFRNQ" "int" "Happy7" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "eHappy.java"))
      ("hapcarnw" "h-Happy w/ my career now" "spss-match" "hapCareer" ("hapCareer" "4" "hapCareerQ" "int" "Happy7" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "eHappy.java"))
      ("hapcarfu" "h-Happy w/ future career expectations" "spss-match" "hapCareerExpect" ("hapCareerExpect" "6" "hapCareerExpectQ" "int" "Happy7" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "eHappy.java"))
      ("hapfrien" "h-Happy w/ friendships" "spss-match" "hapFriends" ("hapFriends" "7" "hapFriendsQ" "int" "Happy7" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "eHappy.java"))
      ("hapwkrel" "h-Happy w/ work-school relationships" "spss-match" "hapWorkRels" ("hapWorkRels" "8" "hapWorkRelsQ" "int" "Happy7" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "eHappy.java"))
      ("happe" "h-Happy w/ physical activity" "spss-match" "hapPE" ("hapPE" "9" "hapPEQ" "int" "Happy7" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "eHappy.java"))
      ("haprecre" "h-Happy w/ recreation" "spss-match" "hapRecreation" ("hapRecreation" "10" "hapRecreationQ" "int" "Happy7" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "eHappy.java"))
      ("hapsexre" "h-Happy w/ sex/romance" "spss-match" "hapSexRel" ("hapSexRel" "11" "hapSexRelQ" "int" "Happy7" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "eHappy.java"))
      ("hapfamil" "h-Happy w/ family relationships" "spss-match" "hapFamily" ("hapFamily" "12" "hapFamilyQ" "int" "Happy7" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "eHappy.java"))
   ("hapselfd" "h-Happy w/ self & development" "spss-match" "hapSelfDevel" ("hapSelfDevel" "13" "hapSelfDevelQ" "int" "Happy7" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "eHappy.java"))
     ("hapspiri" "h-Happy w/ meaning & spiritual/religious" "spss-match" "hapSpiritual" ("hapSpiritual" "14" "hapSpiritualQ" "int" "Happy7" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "eHappy.java"))
      ("hapyear" "h-Happiness during past year" "spss-match" "hapYear" ("hapYear" "15" "hapYearQ" "int" "Happy7" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "eHappy.java"))
      ("hap3year" "h-Happiness 1-3 years ago" "spss-match" "hapYear" ("hapYear" "15" "hapYearQ" "int" "Happy7" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "eHappy.java"))
      ("haplife" "h-Happiness up to 3 years ago" "spss-match" "hapLife" ("hapLife" "17" "hapLifeQ" "int" "Happy7" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "eHappy.java"))
      ("hapexpec" "h-Happiness expected in future" "spss-match" "hapExpect" ("hapExpect" "18" "hapExpectQ" "int" "Happy7" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "eHappy.java"))
      )
    ( RHEALTH
      ("rhlfreqi" "he-LoFreq of illness past 3 years" "spss-match" "rhlFreqIllness" ("rhlFreqIllness" "1" "rhlFreqIllnessQ" "int" "Freq7Reverse" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "RealHealth.java"))
      ("rhlalcoh" "he-LoFreq of alcohol drinks" "spss-match" "rhlAlcohol" ("rhlAlcohol" "2" "rhlAlcoholQ" "int" "Freq8Reverse" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "RealHealth.java"))
      ("rhlsmoke" "he-LoFreq of cigarrettes" "spss-match" "rhlSmoke" ("rhlSmoke" "3" "rhlSmokeQ" "int" "Freq8Reverse" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "RealHealth.java"))
      ("rhldrugs" "he-LoFreq of illegal drugs" "spss-match" "rhlDrugs" ("rhlDrugs" "4" "rhlDrugsQ" "int" "Freq8Reverse" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "RealHealth.java"))
      ("rhlphysi" "he-Physical conditioning level" "spss-match" "rhlPhysicalCondition" ("rhlPhysicalCondition" "5," "RealHealth.java"))
      ("rhlweigh" "he-LoWeight" "spss-match" "rhlWeight" ("rhlWeight" "6," "RealHealth.java"))
      )
    ( RPEOPLE
      ("rpehapfr" "re-Friends happy-successful" "spss-match" "rpeHAPFRiends" ("rpeHAPFRiends" "1" "rpeHAPFRiendsQ" "int" "LikeMe7" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "RealPeople.java"))
      ("rpehmarr" "re-Have or had happy marital rel" "spss-match" "rpeHMARR" ("rpeHMARR" "2" "rpeHMARRQ" "int" "LikeMe8NotApply" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "RealPeople.java"))
      ("rpenetw" "re-Close network of friends & career-rel" "spss-match" "rpeNETW" ("rpeNETW" "3" "rpeNETWQ" "int" "LikeMe7" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "RealPeople.java"))
      ("rpeclfrn" "re-Have/had friends share innermost" "spss-match" "rpeCLFRN" ("rpeCLFRN" "4" "rpeCLFRNQ" "int" "LikeMe7" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "RealPeople.java"))
      ("rpenumfr" "re-Number friends socialize 1/month" "spss-match" "rpeNumFriends" ("rpeNumFriends" "5" "rpeNumFriendsQ" "int" "NumberBy2" "questionInstancesArray" "frameTitle" "frameDimWidth" "frHeight12;" "RealPeople.java"))
      ("rpenumcl" "re-Number extremely close friends" "spss-match" "rpeNumCloseFriends" ("rpeNumCloseFriends" "6" "rpeNumCloseFriendsQ" "int" "NumberBy2" "questionInstancesArray" "frameTitle" "frameDimWidth" "frHeight12;" "RealPeople.java"))
      ("rpecommi" "re-Degree of commit to 3 mo romantic" "spss-match" "rpeCommit" ("rpeCommit" "7," "RealPeople.java"))
      )
    ( RDEP
      ("rdepfeel" "de-Not often sad,apathetic,depressed" "spss-match" "rDepFeeling" ("rDepFeeling" "4" "rDepFeelingQ" "int" "LikeMe7Reverse" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "RealDepression.java"))
      ("rdepthou" "de-Not worthless, very neg a-death,etc" "spss-match" "rDepThought" ("rDepThought" "5" "rDepThoughtQ" "int" "LikeMe7Reverse" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "RealDepression.java"))
      ("rdepdyss" "de-RevDysthemia symptoms checklist" "spss-match" "rDepDysSymptoms" ("rDepDysSymptoms" "6" "rDepDysSymptomsQ" "int" "Duration11Reverse" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "RealDepression.java"))
      ("rdepmajs" "de-RevMajor depression symptoms chkl" "spss-match" "rDepMajSymptoms" ("rDepMajSymptoms" "1" "rDepMajSymptomsQ" "int" "EpisodeFreq9Reverse" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "RealDepression.java"))
      ("rdepmeds" "de-RevLength of time meds for depression" "spss-match" "rDepMeds" ("rDepMeds" "2" "rDepMedsQ" "int" "Duration11Reverse" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "RealDepression.java"))
      ("rdepther" "de-RevAmount of therapy for depression" "spss-match" "rDepTherapy" ("rDepTherapy" "3" "rDepTherapyQ" "int" "EpisodeFreq9Reverse" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "RealDepression.java"))
      )
    ( RANX
      ("ranxperf" "ax-RevPerformance anxiety level" "spss-match" "rAnxPerform" ("rAnxPerform" "1" "rAnxPerformQ" "int" "LikeMe7Reverse" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "RealAnxiety.java"))
      ("ranxallt" "ax-Not feel anxious almost all time" "spss-match" "rAnxAllTime" ("rAnxAllTime" "2" "rAnxAllTimeQ" "int" "LikeMe7Reverse" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "RealAnxiety.java"))
      ("ranxpstd" "ax-RevPSTD symptoms chkl" "spss-match" "rAnxPSTD" ("rAnxPSTD" "3" "rAnxPSTDQ" "int" "LikeMe7Reverse" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "RealAnxiety.java"))
      ("ranxsoci" "ax-RevAnxiety with other people" "spss-match" "rAnxSocial" ("rAnxSocial" "4" "rAnxSocialQ" "int" "LikeMe7Reverse" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "RealAnxiety.java"))
      ("ranxocd" "ax-RevTimes lasting OCD problems" "spss-match" "rAnxOCD" ("rAnxOCD" "5" "rAnxOCDQ" "int" "EpisodeFreq9Reverse" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "RealAnxiety.java"))
      ("ranxphob" "ax-RevNumber of phobias" "spss-match" "rAnxPhobia" ("rAnxPhobia" "6" "rAnxPhobiaQ" "int" "NumberTo12Reverse" "questionInstancesArray" "frameTitle" "frameDimWidth" "frHeight13;" "RealAnxiety.java"))
      ("ranxpani" "ax-RevNumber of panic attacks" "spss-match" "rAnxPanic" ("rAnxPanic" "7" "rAnxPanicQ" "int" "NumberTo12Reverse" "questionInstancesArray" "frameTitle" "frameDimWidth" "frHeight13;" "RealAnxiety.java"))
      ("ranxmeds" "ax-RevTime meds for anxiety DEPRESSION?" "spss-match" "rAnxMeds" ("rAnxMeds" "8" "rAnxMedsQ" "int" "Duration11Reverse" "questionInstancesArray" "frameTitle" "frameDimWidth" "frHeight13;" "RealAnxiety.java"))
      ("ranxther" "ax-Amount of therapy for anxiety" "spss-match" "rAnxTherapy" ("rAnxTherapy" "9" "rAnxTherapyQ" "int" "EpisodeFreq9Reverse" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "RealAnxiety.java"))
      )
    ( RANG
      ("rangfeel" "ag-RevFreq lose temper" "spss-match" "rAngFeeling" ("rAngFeeling" "1" "rAngFeelingQ" "int" "Freq8Reverse" "questionInstancesArray" "frameTitle" "frameDimWidth" "frHeight13;" "RealAnger.java"))
      ("rangyell" "ag-RevFreq yell or call hurtful names" "spss-match" "rAngYell" ("rAngYell" "2" "rAngYellQ" "int" "Freq8Reverse" "questionInstancesArray" "frameTitle" "frameDimWidth" "frHeight13;" "RealAnger.java"))
      ("rangdomi" "ag-RevFreq get way by [aggression]" "spss-match" "rAngDominate" ("rAngDominate" "3" "rAngDominateQ" "int" "Freq8Reverse" "questionInstancesArray" "frameTitle" "frameDimWidth" "frHeight13;" "RealAnger.java"))
      ("rangthou" "ag-RevFreq think about get even" "spss-match" "rAngThoughts" ("rAngThoughts" "4" "rAngThoughtsQ" "int" "Freq8Reverse" "questionInstancesArray" "frameTitle" "frameDimWidth" "frHeight13;" "RealAnger.java"))
      ("rangdest" "ag-RevFreq damage prop etc/break law" "spss-match" "rAngDestroy" ("rAngDestroy" "5" "rAngDestroyQ" "int" "Freq8Reverse" "questionInstancesArray" "frameTitle" "frameDimWidth" "frHeight13;" "RealAnger.java"))
      )
    ( REMOT
      )
    ( TB2
      ("tb2relat" "b2-RevNo absolute right--situational ethics" "spss-match" "tbv2RelGood" ("tbv2RelGood" "1" "tbv2RelGoodQ" "int" "Belief10Reverse" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "iTopBV2.java"))
      ("tb2punis" "b2-RevBad only happens if bad" "spss-match" "tbv2BadToSin" ("tbv2BadToSin" "2" "tbv2BadToSinQ" "int" "Belief10Reverse" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "iTopBV2.java"))
      ("tbv2notr" "b2-RevNot responsible if bad environ/genes" "spss-match" "tbv2NotResponsible" ("tbv2NotResponsible" "3" "tbv2NotResponsibleQ" "int" "Belief10Reverse" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "iTopBV2.java"))
      ("tb2groum" "b2-RevLife no meaning w/o spec group" "spss-match" "tbv2GroupMeaning" ("tbv2GroupMeaning" "4" "tbv2GroupMeaningQ" "int" "Belief10Reverse" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "iTopBV2.java"))
      ("tb2selfm" "b2-RevAll meaning supplied by person" "spss-match" "tbv2SelfMeaning" ("tbv2SelfMeaning" "5" "tbv2SelfMeaningQ" "int" "Belief10Reverse" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "iTopBV2.java"))
      ("tb2gdwrk" "b2-RevForgiveness depends on works" "spss-match" "tbv2GoodWorks" ("tbv2GoodWorks" "6" "tbv2GoodWorksQ" "int" "Belief10Reverse" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "iTopBV2.java"))
      ("tb2gdatt" "b2-Goodness depends more on attitude" "spss-match" "tbv2GoodAttitude" ("tbv2GoodAttitude" "7" "tbv2GoodAttitudeQ" "int" "Belief10" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "iTopBV2.java"))
      ("tb2allgd" "b2-Lots of good in all people" "spss-match" "tbv2AllGood" ("tbv2AllGood" "8" "tbv2AllGoodQ" "int" "Belief10" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "iTopBV2.java"))
      ("tb2reaso" "b2-RevScience-reason can solve all worries" "spss-match" "tbv2Reason" ("tbv2Reason" "9" "tbv2ReasonQ" "int" "Belief10Reverse" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "iTopBV2.java"))
      ("tbv2astr" "b2-RevBelief in spirits,astrology" "spss-match" "tbv2Astrology" ("tbv2Astrology" "10" "tbv2AstrologyQ" "int" "Belief10Reverse" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "iTopBV2.java"))
      ("tb2idhum" "b2-Identify with all human over any group" "spss-match" "tbv2IDHumanity" ("tbv2IDHumanity" "11" "tbv2IDHumanityQ" "int" "Belief10" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "iTopBV2.java"))
      ("tb2lifad" "b2-Believe in life after death" "spss-match" "tbv2LifeAfDeath" ("tbv2LifeAfDeath" "12" "tbv2LifeAfDeathQ" "int" "Belief10" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "iTopBV2.java"))
      ("tb2movem" "b2-Part of progress greater than family etc" "spss-match" "tbv2Movement" ("tbv2Movement" "13" "tbv2MovementQ" "int" "Belief10" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "iTopBV2.java"))
      ("tbv2core" "b2-Strong phil/rel beliefs guide daily life" "spss-match" "tbv2CoreBeliefs" ("tbv2CoreBeliefs" "14" "tbv2CoreBeliefsQ" "int" "Belief10" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "iTopBV2.java"))
      )
    ( CARGEN
      ("car1carg" "ca-Great time and thorough career plan process" "spss-match" "car1CARGoal" ("car1CARGoal" "1" "car1CARGoalQ" "int" "LikeMe7" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "inCareer.java"))
      ("car1carp" "ca-Have goal,plan,likely success" "spss-match" "car1CARPRiority" ("car1CARPRiority" 2 "car1CARPRiorityQ" "int"  "LikeMe7" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "inCareer.java" ))  ;;was NO-PC-INST-MATCH)
      ("car1inat" "ca-Natural science" "spss-match" "car1INATSCI" ("car1INATSCI" "3" "car1INATSCIQ" "int" "LikeMe7" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "inCareer.java"))
      ("caribioh" "ca-Biological science" "spss-match" "carIBioHealthSci" ("carIBioHealthSci" "4" "carIBioHealthSciQ" "int" "LikeMe7" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "inCareer.java"))
      ("carisocs" "ca-Learn about self & people" "spss-match" "carISOCSCI" ("carISOCSCI" "5" "carISOCSCIQ" "int" "LikeMe7" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "inCareer.java"))
      ("carihelp" "ca-Helping people-teach coun etc" "spss-match" "carIHELP" ("carIHELP" "6" "carIHELPQ" "int" "LikeMe7" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "inCareer.java"))
      ("carimath" "ca-Math" "spss-match" "carIMATH" ("carIMATH" "7" "carIMATHQ" "int" "LikeMe7" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "inCareer.java"))
      ("carimed" "ca-Medical-related" "spss-match" "carIMED" ("carIMED" "8" "carIMEDQ" "int" "LikeMe7" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "inCareer.java"))
      ("cariwrit" "ca-Writing-related" "spss-match" "carIWRITE" ("carIWRITE" "9" "carIWRITEQ" "int" "LikeMe7" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "inCareer.java"))
      ("carifnar" "ca-Fine art-related" "spss-match" "carIFNART" ("carIFNART" "10" "carIFNARTQ" "int" "LikeMe7" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "inCareer.java"))
      ("cariethn" "ca-Ethnic studies-women" "spss-match" "carIETHNIC" ("carIETHNIC" "11" "carIETHNICQ" "int" "LikeMe7" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "inCareer.java"))
      ("carilear" "ca-Love higher ed" "spss-match" "carILEARN" ("carILEARN" "12" "carILEARNQ" "int" "LikeMe7" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "inCareer.java"))
      ("cariexpe" "ca-Want to be expert" "spss-match" "carIEXPERT" ("carIEXPERT" "13" "carIEXPERTQ" "int" "LikeMe7" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "inCareer.java"))
      ("carigene" "ca-Love variety-know little about many" "spss-match" "carIGENeral" ("carIGENeral" "14" "carIGENeralQ" "int" "LikeMe7" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "inCareer.java"))
      ("carinoin" "ca-Never interest in school" "spss-match" "carINOINTerest" ("carINOINTerest" "15" "carINOINTerestQ" "int" "LikeMe7" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "inCareer.java"))
      ("carilit" "ca-Literature-history" "spss-match" "carILIT" ("carILIT" "16" "carILITQ" "int" "LikeMe7" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "inCareer.java"))
      ("carirecp" "ca-Sports-rec helping others w/sports" "spss-match" "carIRECPE" ("carIRECPE" "17" "carIRECPEQ" "int" "LikeMe7" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "inCareer.java"))
      ("caripoli" "ca-Law politics government" "spss-match" "carIPOLitics" ("carIPOLitics" "18" "carIPOLiticsQ" "int" "LikeMe7" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "inCareer.java"))
      ("carimil6" "ca-Law enforcement military etc" "spss-match" "carIMILTaryLawEnforce" ("carIMILTaryLawEnforce" "19" "carIMILTaryLawEnforceQ" "int" "LikeMe7" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "inCareer.java"))
      ("carimanu" "ca-Manual-tech electr computers etc-" "spss-match" "carIMANUalActs" ("carIMANUalActs" "20" "carIMANUalActsQ" "int" "LikeMe7" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "inCareer.java"))
      ("carilang" "ca-Languages travel etc" "spss-match" "carILANGuage" ("carILANGuage" "21" "carILANGuageQ" "int" "LikeMe7" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "inCareer.java"))
      ("cariphil" "ca-Philosophy-religion" "spss-match" "carIPHILandRel" ("carIPHILandRel" "22" "carIPHILandRelQ" "int" "LikeMe7" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "inCareer.java"))
      ("caribusi" "ca-Business" "spss-match" "carIBUSiness" ("carIBUSiness" "23" "carIBUSinessQ" "int" "LikeMe7" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "inCareer.java"))
      ("cariengi" "ca-Engineering sci design" "spss-match" "carIENGINeer" ("carIENGINeer" "24" "carIENGINeerQ" "int" "LikeMe7" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "inCareer.java"))
      ("carifamc" "ca-Family & Consumer Sci" "spss-match" "carIFamConSci" ("carIFamConSci" "25" "carIFamConSciQ" "int" "LikeMe7" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "inCareer.java"))
      ("cariwoma" "ca-Ethnic-women" "spss-match" "carIWomanEthnic" ("carIWomanEthnic" "26" "carIWomanEthnicQ" "int" "LikeMe7" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "inCareer.java"))
      ("caricom8" "ca-Computer-related" "spss-match" "carIComputer" ("carIComputer" "27" "carIComputerQ" "int" "LikeMe7" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "inCareer.java"))
      ("carinte0" "ca-Interdisciplinary" "spss-match" "carInterDiscSt" ("carInterDiscSt" "28" "carInterDiscStQ" "int" "LikeMe7" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "inCareer.java"))
      )
    ( CARBUS
      ("caribmar" "cb-Marketing" "spss-match" "carIBMARKeting" ("carIBMARKeting" "1" "carIBMARKetingQ" "int" "LikeMe7" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "inBus.java"))
      ("caribman" "cb-Management" "spss-match" "carIBMANAGement" ("carIBMANAGement" "2" "carIBMANAGementQ" "int" "LikeMe7" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "inBus.java"))
      ("caribinf" "cb-Inform Systems" "spss-match" "carIBINFormSystems" ("carIBINFormSystems" "3" "carIBINFormSystemsQ" "int" "LikeMe7" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "inBus.java"))
      ("caribfin" "cb-Finance" "spss-match" "carIBFINance" ("carIBFINance" "4" "carIBFINanceQ" "int" "LikeMe7" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "inBus.java"))
      ("caribhrd" "cb-Human Resources" "spss-match" "carIBHRD" ("carIBHRD" "5" "carIBHRDQ" "int" "LikeMe7" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "inBus.java"))
      ("caribacc" "cb-Accounting" "spss-match" "carIBACCTounting" ("carIBACCTounting" "6" "carIBACCTountingQ" "int" "LikeMe7" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "inBus.java"))
      ("carispbu" "cb-Public Relations" "spss-match" "carISPBUS" ("carISPBUS" "7" "carISPBUSQ" "int" "LikeMe7" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "inBus.java"))
      )
    ( CARENGR
      ("carieeng" "ce-Elect Engr" "spss-match" "carIEEng" ("carIEEng" "1" "carIEEngQ" "int" "LikeMe7" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "inEngr.java"))
      ("carime" "ce-Mech Engr" "spss-match" "carIME" ("carIME" "2" "carIMEQ" "int" "LikeMe7" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "inEngr.java"))
      ("cariche2" "ce-Chem Engr" "spss-match" "carICHEMEng" ("carICHEMEng" "3" "carICHEMEngQ" "int" "LikeMe7" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "inEngr.java"))
      ("caricive" "ce-Cival Engr" "spss-match" "carICIVEng1" ("carICIVEng1" "4" "carICIVEngQ" "int" "LikeMe7" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "inEngr.java"))
      ("cariaero" "ce-Aerospace Engr" "spss-match" "carIAEROEng" ("carIAEROEng" "5" "carIAEROEngQ" "int" "LikeMe7" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "inEngr.java"))
      ("carieite" "ce-Engr Tech" "spss-match" "carIEITech" ("carIEITech" "6" "carIEITechQ" "int" "LikeMe7" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "inEngr.java"))
      ("caricom9" "ce-Computer Engr" "spss-match" "carICompSciEngr" ("carICompSciEngr" "7" "carICompSciEngrQ" "int" "LikeMe7" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "inEngr.java"))
      ("caribcom" "ce-Bus Computer" "spss-match" "carIBCOMPuter" ("carIBCOMPuter" "8" "carIBCOMPuterQ" "int" "LikeMe7" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "inEngr.java"))
      )
    ( CARFINE
      ("carimusi" "cart-Music" "spss-match" "carIMUSIC" ("carIMUSIC" "1" "carIMUSICQ" "int" "LikeMe7" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "inFineArt.java"))
      ("cariart" "cart-Art" "spss-match" "carIART" ("carIART" "2" "carIARTQ" "int" "LikeMe7" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "inFineArt.java"))
      ("caridram" "cart-Theatre Arts" "spss-match" "carIDRAMA" ("carIDRAMA" "3" "carIDRAMAQ" "int" "LikeMe7" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "inFineArt.java"))
      ("caridanc" "cart-Dance" "spss-match" "carIDANC" ("carIDANC" "4" "carIDANCQ" "int" "LikeMe7" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "inFineArt.java"))
      ("cariphot" "cart-Photog or Ph Journ" "spss-match" "carIPHOTJournalism" ("carIPHOTJournalism" "5" "carIPHOTJournalismQ" "int" "LikeMe7" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "inFineArt.java"))
      ("carindde" "cart-Indust Design" "spss-match" "carIndDesign" ("carIndDesign" "6" "carIndDesignQ" "int" "LikeMe7" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "inFineArt.java"))
      ("carinte1" "cart-Interior Design" "spss-match" "carInteriorDesign" ("carInteriorDesign" "7" "carInteriorDesignQ" "int" "LikeMe7" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "inFineArt.java"))
      )
    ( CARHELP
      ("cariteac" "ch-Teaching" "spss-match" "carITEACH" ("carITEACH" "1" "carITEACHQ" "int" "LikeMe7" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "inHelp.java"))
      ("caricoun" "ch-Counseling" "spss-match" "carICOUNseling" ("carICOUNseling" "2" "carICOUNselingQ" "int" "LikeMe7" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "inHelp.java"))
      ("carieduc" "ch-Education" "spss-match" "carIEDUCSetting" ("carIEDUCSetting" "3" "carIEDUCSettingQ" "int" "LikeMe7" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "inHelp.java"))
      ("carihadu" "ch-Help Adults" "spss-match" "carIHADULT" ("carIHADULT" "4" "carIHADULTQ" "int" "LikeMe7" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "inHelp.java"))
      ("carihchi" "ch-Help children-teens" "spss-match" "carIHCHILD" ("carIHCHILD" "5" "carIHCHILDQ" "int" "LikeMe7" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "inHelp.java"))
      ("caritvoc" "ch-Voc Ed" "spss-match" "carITVOCational" ("carITVOCational" "6" "carITVOCationalQ" "int" "LikeMe7" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "inHelp.java"))
      ("caricom4" "ch-Speech-hearing" "spss-match" "carICOMDISorders" ("carICOMDISorders" "6" "carICOMDISordersQ" "int" "LikeMe7" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "inMed.java"))
      ("carsocwo" "ch-Social Work" "spss-match" "carSocWork" ("carSocWork" "8" "carSocWorkQ" "int" "LikeMe7" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "inHelp.java"))
      ("cark12te" "ch-Teach K-12" "spss-match" "carK12Teach" ("carK12Teach" "9" "carK12TeachQ" "int" "LikeMe7" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "inHelp.java"))
      ("carminis" "ch-Minister-priest" "spss-match" "carMinister" ("carMinister" "10" "carMinisterQ" "int" "LikeMe7" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "inHelp.java"))
      )
    ( CARLANG
      ("carifren" "cl-French" "spss-match" "carIFRENch" ("carIFRENch" "1" "carIFRENchQ" "int" "LikeMe7" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "inLang.java"))
      ("cariital" "cl-Italian" "spss-match" "carIITALian" ("carIITALian" "2" "carIITALianQ" "int" "LikeMe7" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "inLang.java"))
      ("carigerm" "cl-German" "spss-match" "carIGERMan" ("carIGERMan" "3" "carIGERManQ" "int" "LikeMe7" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "inLang.java"))
      ("cariruss" "cl-Russian" "spss-match" "carIRUSSian" ("carIRUSSian" "4" "carIRUSSianQ" "int" "LikeMe7" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "inLang.java"))
      ("carijapn" "cl-Japanese" "spss-match" "carIJAPNese" ("carIJAPNese" "5" "carIJAPNeseQ" "int" "LikeMe7" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "inLang.java"))
      ("carichin" "cl-Chinese" "spss-match" "carIChin" ("carIChin" "6" "carIChinQ" "int" "LikeMe7" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "inLang.java"))
      ("cariclas" "cl-Classic Lang" "spss-match" "carICLASCs" ("carICLASCs" "7" "carICLASCsQ" "int" "LikeMe7" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "inLang.java"))
      ("carispan" "cl-Spanish" "spss-match" "carISPANish" ("carISPANish" "8" "carISPANishQ" "int" "LikeMe7" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "inLang.java"))
      ("caripor" "cl-Portugese" NIL "ccarIPORTuguese" ("ccarIPORTuguese" "9" "carIPORTugueseQ" "int" "LikeMe7" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "inLang.java"))
      )
    ( CARMED
      ("carimd" "cm-Physician" "spss-match" "carIMD" ("carIMD" "1" "carIMDQ" "int" "LikeMe7" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "inMed.java"))
      ("carinurs" "cm-Nurse" "spss-match" "carINURSE" ("carINURSE" "2" "carINURSEQ" "int" "LikeMe7" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "inMed.java"))
      ("caripthe" "cm-Phys Therapy" "spss-match" "carIPTherapy" ("carIPTherapy" "3" "carIPTherapyQ" "int" "LikeMe7" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "inMed.java"))
      ("cariheal" "cm-Health Science" "spss-match" "carIHEALTH" ("carIHEALTH" "4" "carIHEALTHQ" "int" "LikeMe7" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "inMed.java"))
      ("carikine" "cm-Kinesiology" "spss-match" "carIKinesology" ("carIKinesology" "5" "carIKinesologyQ" "int" "LikeMe7" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "inMed.java"))
      ("caricom5" "cm-Commicative Dis" "spss-match" "carICOMDISorders" ("carICOMDISorders" "6" "carICOMDISordersQ" "int" "LikeMe7" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "inMed.java"))
      ("carmedte" "cm-Med Tech/imaging" "spss-match" "carMedTech" ("carMedTech" "7" "carMedTechQ" "int" "LikeMe7" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "inMed.java"))
      )
    ( CARLAW
      ("carilaw" "cleg-Law" "spss-match" "carILAW" ("carILAW" "1" "carILAWQ" "int" "LikeMe7" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "inMiltCrim.java"))
      ("caricrim" "cleg-Law enforcement" "spss-match" "carICRIM" ("carICRIM" "2" "carICRIMQ" "int" "LikeMe7" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "inMiltCrim.java"))
      ("carimil7" "cleg-Military" "spss-match" "carIMILT2" ("carIMILT2" "3" "carIMILT2Q" "int" "LikeMe7" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "inMiltCrim.java"))
      )
    ( CARNATSCI
      ("cariche3" "cn-Chemistry" "spss-match" "carICHEM" ("carICHEM" "1" "carICHEMQ" "int" "LikeMe7" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "inNatSci.java"))
      ("cariphys" "cn-Physics" "spss-match" "carIPHYSics" ("carIPHYSics" "2" "carIPHYSicsQ" "int" "LikeMe7" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "inNatSci.java"))
      ("carigeol" "cn-Geology" "spss-match" "carIGEOlogy" ("carIGEOlogy" "3" "carIGEOlogyQ" "int" "LikeMe7" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "inNatSci.java"))
      ("cariastr" "cn-Astronomy" "spss-match" "carIASTronomy" ("carIASTronomy" "4" "carIASTronomyQ" "int" "LikeMe7" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "inNatSci.java"))
      ("carienvi" "cn-Environmental Sci" "spss-match" "carIEnvirSci" ("carIEnvirSci" "5" "carIEnvirSciQ" "int" "LikeMe7" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "inNatSci.java"))
      )
    ( CARBESCI
      ("caripsyc" "cs-Psychology" "spss-match" "carIPSYch" ("carIPSYch" "1" "carIPSYchQ" "int" "LikeMe7" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "inSocSci.java"))
      ("carisoco" "cs-Sociology" "spss-match" "carISOCOlogy" ("carISOCOlogy" "2" "carISOCOlogyQ" "int" "LikeMe7" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "inSocSci.java"))
      ("carihist" "cs-History" "spss-match" "carIHIST" ("carIHIST" "3" "carIHISTQ" "int" "LikeMe7" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "inSocSci.java"))
      ("caripols" "cs-Political Science" "spss-match" "carIPOLSC" ("carIPOLSC" "4" "carIPOLSCQ" "int" "LikeMe7" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "inSocSci.java"))
      ("cariecon" "cs-Economics" "spss-match" "carIECON" ("carIECON" "5" "carIECONQ" "int" "LikeMe7" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "inSocSci.java"))
      ("cargeogr" "cs-Geography" "spss-match" "carGeography" ("carGeography" "6" "carGeographyQ" "int" "LikeMe7" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "inSocSci.java"))
      ("cariamer" "cs-American Studies" "spss-match" "carIAmerSt" ("carIAmerSt" "7" "carIAmerStQ" "int" "LikeMe7" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "inSocSci.java"))
      ("cariantr" "cs-Anthropology???-AntR not AntH" "spss-match" "carIAntro" ("carIAntro" "8" "carIAntroQ" "int" "LikeMe7" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "inSocSci.java"))
      ("carianth" "cs-Anthropology" "spss-match" "carIANTHropology" ("carIANTHropology" "7" "carIANTHropologyQ" "int" "LikeMe7" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "inWoEthnicSt.java"))
      ("carispee" "cs-Speech-Commun" "spss-match" "carISOCOlogy" ("carISOCOlogy" "2" "carISOCOlogyQ" "int" "LikeMe7" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "inSocSci.java"))
      ("carling" "cs-Linguistics" "spss-match" "carLing" ("carLing" "10" "carLingQ" "int" "LikeMe7" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "inSocSci.java"))
      )
    ( CARETHNIC
      ("cariaist" "cs-Native Amer Studies" "spss-match" "carIAIStudies" ("carIAIStudies" "1" "carIAIStudiesQ" "int" "LikeMe7" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "inWoEthnicSt.java"))
      ("caribstu" "cs-African Amer Studies" "spss-match" "carIAIStudies" ("carIAIStudies" "1" "carIAIStudiesQ" "int" "LikeMe7" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "inWoEthnicSt.java"))
      ("carimexa" "cs-Mexican Amer Studies" "spss-match" "carIMEXAmerStudies" ("carIMEXAmerStudies" "3" "carIMEXAmerStudiesQ" "int" "LikeMe7" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "inWoEthnicSt.java"))
      ("cariasam" "cs-Asian Amer Studies" "spss-match" "carIASAM" ("carIASAM" "4" "carIASAMQ" "int" "LikeMe7" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "inWoEthnicSt.java"))
      ("cariamst" "cs-American Studies" "spss-match" "carIAMST" ("carIAMST" "5" "carIAMSTQ" "int" "LikeMe7" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "inWoEthnicSt.java"))
      ("cariwstu" "cs-Women's Studies" "spss-match" "carIWStudies" ("carIWStudies" "6" "carIWStudiesQ" "int" "LikeMe7" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "inWoEthnicSt.java"))
      )
    ( CARWRITE
      ("cariengl" "cw-English" "spss-match" "carIENGLit" ("carIENGLit" "1" "carIENGLitQ" "int" "LikeMe7" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "inWrite.java"))
      ("carijour" "cw-Journalism" "spss-match" "carIJOURNalism" ("carIJOURNalism" "2" "carIJOURNalismQ" "int" "LikeMe7" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "inWrite.java"))
      )
    )
  "MASTER LIST OF QUESTION INFORMATION: Up to date EXCEPT doesn't include NEW QUESTION SYMBOLS--to make one just take the FIRST string of each list and (my-make-symbol (format nil \"~AQ\" var-string)).  GET-QUEST-VAR-VALUES will return a list of (list  :label label :spss-match spss-match :java-var java-var :qnum qnum :q-name q-name :data-type data-type :answer-panel answer-panel :array array :frame-title frame-title :fr-width  fr-width :fr-height fr-height :java-file java-file). (Also see  Q-questions.lisp)"
  )
|#
;;
;;END OF PRE-HELP ADDED LIST
;; xxx --------------------------- END *SHAQ-question-symbol-lists ---------------------










;;xxx ----------- PRINTED FROM print-list-with-newlines
;;           (without " " and \ before " -- EDITOR/SEARCH-deleted)--------
;;   NOTE:  If leave \" instead of  ", causes COMMA ERRORS -- UNLESS PUT DOUBLE-QUOTES AROUND ENTIRE LIST
;;


;; THE *SHAQ-SYM-LABEL-LIST-ALL LIST  (Defined at end of file)
#|  (defparameter *shaq-sym-label-list-all
     (append *shaq-sym-label-list-pt1 *shaq-sym-label-list-pt2 *shaq-sym-label-list-pt1))|#
;;
;;NOTE: THERE ARE 877 ITEMS IN *SHAQ-SYM-LABEL-LIST-ALL!!ym

;;----------------------- POST MATCH W ORIG JAVA QUESTION NAMES --------


;;------------------------------------ min-seq-length = 4 match list ---------------------
;;To get this list:
;;STEP 1:(setf *outputs1 (add-orig-quest-names-to-sym-label-lists *shaq-data-vars   *all-shaq-orig-question-names)) ;;min-seq-length was 4
;;STEP 2: (setf *outputsp (print-double-nested-list *outputs1 :stream t :incl-quotes-p t))
;; sub this interpersonal info 
;;
;;used to match symbols by parallel position only
;; (setf *output2p (print-nested-list *outputx2  :stream t :incl-quotes-p t :no-outer-parens t))
;;--FOLLOWING ONLY USED AS A STEP IN FINDING ULTIMATE LIST ABOVE--
#|(defparameter *SHAQ-quest-variables-msl4
  #|   "Does not include new scales and subscales. FROM 2009 SPSS VARS-LABELS
  List= (Variable   Label   Match-Java-spss-var? (NIL=couldn't find similar) quest-or-scale-match-list (note: scale list is symbol + label)"|#
  '( ( ID
       ("CaseNum" "CaseNumOrigFile" "spss-match")
       ("CaseType" "" "spss-match")
       ("SourceFile" "Source files PARTnum" NIL)
       ("FileDate" "" "spss-match")
       ("Instr" "Instructor" "spss-match")
       ("Resr" "Researcher" "spss-match")
       ("Name" "" "spss-match")
       ("IDnum" "" NIL)
       ("Sex" "Sex 1=M 2=F" "spss-match")
       ("Age" "" "spss-match")
       ("Email" "" "spss-match")
       ("ZipCode" "" "spss-match")
       ("Nation" "" "spss-match")
       ("HrsWork" "" "spss-match")
       ("UserRate" "" "spss-match")
       "ORIG MATCH GROUP NOT FOUND"
       )
     ( TYPE
       ("tknowmor" "t-Want to know more of self" "spss-match")
       ("texperie" "t-Experienced self-help user" "spss-match")
       ("twanttho" "t-Want thorough assessment" "spss-match")
       ("twantspe" "t-Want specific help" "spss-match")
       ("tworknga" "t-worknga" "spss-match")
       ("tu100stu" "t-CSULB U100 student" "spss-match")
       ("tcsulbst" "t-CSULB other student" "spss-match")
       ("totherst" "t-Other student" "spss-match")
       ("tcolstu" "t-Other college student" "spss-match")
       ("tinstruc" "t-Instructor" "spss-match")
       ("tcolfaca" "t-College faculty-admin" "spss-match")
       ("twanthel" "t-Want help with problem" "spss-match")
       ("wantspq" "g-Specific questionnaire" "spss-match")
       "ORIG MATCH GROUP NOT FOUND"
       )
     ( GOALS
       ("gsuchap" "g-Success-happiness" "spss-match")
       ("gacadsuc" "g-Academic success" "spss-match")
       ("gemocop" "g-Emotional coping" "spss-match")
       ("gslfest" "g-Self-esteem" "spss-match")
       ("gprocrst" "g-Procrastination" "spss-match")
       ("gtimeman" "g-Time Management" "spss-match")
       ("grelat" "g-Relationships" "spss-match")
       ("gmeetpeo" "g-Meeting people" "spss-match")
       ("glonelyf" "g-Loneliness" "spss-match")
       ("gexvalus" "g-Explore Values" "spss-match")
       ("gdepres" "g-Depression" "spss-match")
       ("ganxfear" "g-Anxiety-fears" "spss-match")
       ("gaggrang" "g-Aggression-anger" "spss-match")
       ("gcomplta" "g-Complete assessment" "spss-match")
       ("gcarplan" "g-Career planning" "spss-match")
       ("gnottake" "g-Not taking for self" "spss-match")
       ("gcaronly" "g-Career help only" "spss-match")
       ("spersbio" "s-Biographical information" NIL)
       ("svemaapt" "s-Verbal, math aptitude scores" NIL)
       "ORIG MATCH GROUP NOT FOUND"
       )
     ( BIO
       ("bio3educ" "b-Highest education completed" "spss-match" ("bio3educ"))
       ("biohsgpa" "b-High school GPA" "spss-match" ("bioHSGPA" "bioCollegeGPA"))
       ("biocolle" "b-College GPA" "spss-match" ("bioCollegeGPA"))
       )
     ( JOB
       ("bio4job" "b-Primary occupation" "spss-match" ("bio4job"))
       ("student" "1-Student" "spss-match" ("Student"))
       ("manager" "2-Manager" "spss-match" ("Manager/executive"))
       ("propeop" "3-People professional" "spss-match" NIL) ;;???
       ("protech" "4-Technical professional" "spss-match" ("Technician"))
       ("consulta" "5-Consultant" NIL ("Consultant"))
       ("educator" "6-Educator" "spss-match" ("Educator"))
       ("sales" "7-Sales" "spss-match" ("Sales"))
       ("technici" "8-Other technical" "spss-match" ("Technician"))
       ("clerical" "9-Clerical" "spss-match" ("Clerical"))
       ("service" "10-Service" "spss-match" ("Service"))
       ("ownbus10" "11-Own business" "spss-match" ("Own business +10 employees")) ;;manual
       ("othrsfem" "12-othrsfem" "spss-match" (("Other self-employed"))
                   ("other" "13-Other" "spss-match"  ("Other")) 
                   ("bio5inco" "b-Highest personal income" "spss-match" ("bio5income"))
                   )
       ( LANG
         ("bio7lang" "b-Fluent languages" "spss-match" ("LANG" "bio7lang"))
         ("lenglish" "" "spss-match" ("English"))
         ("lspanish" "" "spss-match" ("Spanish"))
         ("lvietnam" "" "spss-match" ("Vietnamese"))
         ("lcambodn" "" "spss-match" "Cambodian")
         ("lchinese" "" "spss-match" ("Chinese" "Portuguese"))
         ("lkorean" "" "spss-match" ("Korean"))
         ("lportugu" "" "spss-match" ("Portuguese"))
         ("lgerman" "" "spss-match" ("German"))
         ("lfrench" "" "spss-match" ("French"))
         ("lothrasn" "" "spss-match" ("Other Asian" ))
         ("lothreur" "" "spss-match" ("Other European"))
         ("lother" "" "spss-match"   ("Other"))
         )
       ( ETHNIC
         ("bio1ethn" "" "spss-match" ( "bio1ethnic"))
         ("enortham" "" "spss-match" "North America")
         ("eafrica" "" "spss-match" ("Africa"))
         ("enoreur" "" "spss-match" ("Northern Europe"))
         ("esoueur" "" "spss-match" ("Southern Europe"))
         ("ecambodn" "" "spss-match" ("Cambodia"))
         ("echina" "" "spss-match" ("China"))
         ("ekorea" "" "spss-match" ("Korea"))
         ("ejapan" "" "spss-match" ("Japan"))
         ("evietnam" "" "spss-match" ("Vietnam"))
         ("eothrasn" "" "spss-match" ("Other Asian"))
         ("emexico" "" "spss-match" ("Mexico"))
         ("ecentram" "" "spss-match" ("Central America"))
         ("esoutham" "" "spss-match" ("South America"))
         ("epacific" "" "spss-match" ("Pacific Island"))
         ("eother" "" "spss-match" ("Other"))
         )
       ( RELIGION
         ("biorelaf" "" "spss-match" ("bioRelAffiliation"))
         ("catholic" "Catholic" "spss-match" ("Catholic"))
         ("jewish" "Jewish" "spss-match" ("Jewish"))
         ("islam" "Islam" "spss-match" ("Islam"))
         ("latterd" "Latter Day Saints" "spss-match" ("Latter Day Saints--Morman"))
         ("buddhist" "Buddhist" "spss-match" ("Buddhist" "Protestant--Baptist"))
         ("baptist" "Baptist" "spss-match" ("Protestant--Baptist"))
         ("methodst" "United Methodist" "spss-match" ("Protestant--United Methodist"))
         ("episcop" "Episopalian" "spss-match" ("Protestant--Episcopal"))
         ("lutheran" "Lutheran" "spss-match" ("Protestant--Lutheran"))
         ("presbyte" "Presbyterian" "spss-match" ("Protestant--Presbyterian"))
         ("proliber" "Other liberal" "spss-match" ("Protestant--Other Liberal"))
         ("profunda" "Other fundamentalist" "spss-match" ("Protestant--Other Fundamentalist or Conservative"))
         ("noaffil" "No affiliation" "spss-match" ("No affiliation"))
         ("agnostic" "Agnostic" "spss-match" ("Agnostic or Atheist"))
         ("othrnoan" "Other" "spss-match" ("Other or prefer not to answer"))
         )
       ;;aaa
       ( STU-STATUS
         ("stpared" "b-Highest parents educ level" "spss-match" ("stuParentsEduc"))
         ("stucolle" "st-College attending" "spss-match" ("stuCollegeAttending"))
         ("cocsulb" "CSULB" "spss-match" ("California State University, Long Beach"))
         ("cccsu" "CSU Campus" "spss-match" ("Another Calif State University campus"))
         ("coucal" "UC Campus" "spss-match" ("Technical school"))
         ("coopublc" "Other Public U" "spss-match" ("A University of California campus"))
         ("coprivca" "CA Private U" "spss-match" ("A public university in another state"))
         ("coprivot" "Other Private U" "spss-match" ("Private university in California"))
         ("cocacomc" "CA Com Col" "spss-match" ("Community college in California"))
         ("coothcc" "Other Com Col" "spss-match" ("College or university in another nation"))
         ("coothnat" "Other Nation Col" "spss-match" ("College or university in another nation") )
         ("coprgrad" "NonAff Grad Sch" "spss-match" ("Graduate school independent of a college"))
         ("cotech" "Tech Col" "spss-match" ("Technical school"))
         ("highsch" "HS" "spss-match" *"High school"))
       ("coother" "Other" "spss-match" ("Unsure or Other"))
       ("stuclass" "st-Class level" "spss-match" ("stuClassLevel"))
       ("studegre" "st-Educ objective level" "spss-match" ("stuDegreeObjective"))
       )
     ( STU-MAJOR
       ("stumajor" "st-Major study area" "spss-match" ("stuMajorType"))
       ("mlibart" "Lib Art major" "spss-match" ("Liberal arts (a language, history, etc.)"))
       ("msocsci" "Soc Sci major" "spss-match" ("Social or behavioral science (psychology, sociology, etc.)"))
       ("mbiolsci" "Bio Sci major" "spss-match" ("Biological science"))
       ("mart" "Art major" "spss-match" ("Art"))
       ("mnatsci" "Nat Sci major" "spss-match" ("Other natural science (physics, chemistry, etc.)"))
       ("mbus" "Bus major" "spss-match" ("Business"))
       ("menginr" "Engr major" "spss-match" ("Engineering"))
       ("meducat" "Educ major" "spss-match" ("Education")) 
       ("mmedical" "Medical major" "spss-match" ("Medical or health-related"))
       ("motcompu" "Computer major" "spss-match" ("Other computer-related"))
       ("mothtech" "Other tech majo" "spss-match" ("Other technical"))
       ("mrecrpe" "Recr-PE major" "spss-match" ("Recreation or physical education-related"))
       ("mdoesna" "Does not apply" "spss-match" ("Does not apply"))
       ("mundecid" "Undecided" "spss-match" ("Undecided or don't know"))
       )
     ( STU-SPECIAL
       ("stuspeci" "st-Special status" "spss-match" ("stuSpecialStatus"))
       ("strancc" "Com college transfer" "spss-match" ("Transfered from a community college to 4-year college"))
       ("stran4yr" "4yr college transfer" "spss-match" ("Transfered from another 4-year college"))
       ("sadultre" "Returning adult" "spss-match" ("Adult returning to school"))
       ("seop" "EOP" "spss-match" ("EOP Student"))
       ("susimmig" "Immigrant" "spss-match" ("U.S. Immigrant"))
       ("svisa" "Visa student" "spss-match" ("Here on student Visa"))
       ("shonor" "Honors program" "spss-match" ("In Honors program"))
       ("svisastu" "Visa student" "spss-match" ("Visa Student"))
       ("sdisabld" "Disabled student" "spss-match" ("Disabled student"))
       ("soutofst" "Out-of-state student" "spss-match" ("Out of state student"))
       ("smilitar" "Military-active or vet" "spss-match" ("Military--active or veteran"))
       ("sathlete" "Student athlete" "spss-match" ("Athlete on college team"))
       ("snone" "None of above" "spss-match" ("None of above"))
       ("sturesid" "st-Receiving financial aid" "spss-match" ("stuResidence"))
       )
     ( STU-LIVING
       ("rsinwpar" "Live with parents" "spss-match" ("SINGLE--Live WITH PARENTS"))
       ("rsindorm" "Live in dorms" "spss-match" ("SINGLE--Live IN DORMS"))
       ("rsinwchl" "Single with children" "spss-match" ("SINGLE caring for children"))
       ("rsinothr" "Single other" "spss-match" ("SINGLE--Other situation"))
       ("rmarwoch" "Married without children" "spss-match" ("MARRIED without children"))
       ("rmarwchl" "Married with children" "spss-match" ("MARRIED with children"))
       ("rmarlike" "Marital like situation" "spss-match" ("MARITAL-LIKE RELATIONSHIP"))
       ("rother" "Other" "spss-match" ("OTHER"))
       )
     ( STU-MISC
       ("stusemes" "st-Units this semester" "spss-match" ("stuSemesterUnits"))
       ("stmajgpa" "st-Major GPA" "spss-match" ("stuMajorGPA"))
       ("stacadst" "st-Academic status" "spss-match" ("stuAcademicStatus"))
       )
     ( STU-TREND
       ("stgpatre" "st-GPA Trends" NIL ("STU-TREND"))
       ("trconhi" "Consistently high" "spss-match" ("CONSISTENTLY HIGH (3.0-4.0)"))
       ("trincryr" "Increased after absence" "spss-match" ("INCREASED significantly after an ABSENCE from school"))
       ("trincyru" "Increased past year or so" "spss-match" ("INCREASED significantly within that past year or so"))
       ("trincyrs" "Increased a few sems ago" "spss-match" ("INCREASED significantly a few semesters ago"))
       ("trgradin" "Gradually increased" "spss-match" ("Was LOWER, but has GRADUALLY INCREASED."))
       ("trconave" "Consistently average" "spss-match" ("CONSISTENTLY AVERAGE (2.0-3.0)"))
       ("trdecyru" "Decreased a few sems ago" "spss-match" ("DECREASED significantly a few semesters ago"))
       ("trdecyr" "Decreased past year or so" "spss-match" ("DECREASED significantly within the past year or so"))
       ("trconlow" "Consistently low" "spss-match" ("CONSISTENTLY LOW (less than 2.0)"))
       ("trupandd" "Up and down dramatically" "spss-match" ("UP and DOWN dramatically in recent years"))
       ("trother" "Other" "spss-match" ("Other"))
       )
     ( STU-APT
       ("stuverba" "st-Verbal aptitude scores" "spss-match" ("stuVerbalApt"))
       ("stumatha" "st-Math aptitude scores" "spss-match" ("stuMathApt"))
       )
     ( STU-FEEL
       ("stulookf" "sa-Look forward to campus" "spss-match" ("stuLookForward"))
       ("stulikei" "sa-Like instructors-can talk" "spss-match" ("stuLikeInstr"))
       ("stucomfo" "sa-Comfortable w/ area fac & students" "spss-match" ("stuComfortable" "stuConfused"))
       ("stufrien" "sa-Current school friends" "spss-match" ("stuFriends"))
       ("stuextmo" "sa-NotParents expectations main motive" "spss-match" ("stuExtMotiv"))
       ("stuenjoy" "sa-Enjoy learning, classes, homework" "spss-match" ("stuEnjoyLearn"))
       ("stucaree" "sa-Career-job main motive" "spss-match" ("stuCareerMotiv"))
       ("stumoney" "sa-NotMoney main motive" "spss-match" ("stuMoneyMotiv"))
       ("stuconfu" "sa-NotConfused why I am in college" "spss-match" ("stuComfortable" "stuConfused"))
       ("stufinde" "sa-Financial support" "spss-match" ("stuFinDepend"))
       ("stueactr" "sa-Enjoying life and fun in school" "spss-match" ("stuEACTREGfun"))
       ("sthapcol" "sa-Overall college exper happiness" "spss-match" ("stuHappyCollege"))
       ("sthapgpa" "sa-Happiness with grades" "spss-match" ("stuHappyGrades"))
       )
     ;;aaa
     ( STU-TIME
       ("acmaffec" "am-All interference factors" "spss-match" ("acmAffectGrades"))
       ("afinanc" "1-Financial worries" "spss-match" ("Financial worries"))
       ("afampres" "2-Family pressures" "spss-match" ("Family pressures"))
       ("afamresp" "3-Family responsibilities" "spss-match" ("Family responsibilities"))
       ("aworktim" "4-Job time" "spss-match" ("Time spent working in a job"))
       ("awrkpres" "5-Work pressures" "spss-match" ("Family pressures"))
       ("arelprob" "6-Relationship problems" "spss-match" ("Relationship problems"))
       ("aloneli" "7-Loneliness" "spss-match" ("Loneliness"))
       ("ahomstpl" "8-No home study place" "spss-match" ("No good place to study where I live"))
       ("aschstpl" "9-No school study place" "spss-match" ("No good place to study at school"))
       ("acompavl" "10-Computer availability" "spss-match" ("Lack of adequate computer availability"))
       ("awrngcls" "11-Wrong classes" "spss-match" ("Taking the wrong classes"))
       ("afacconn" "12-Poor faculty connection" "spss-match" ("Lack of connection with faculty"))
       ("astuconn" "13-Poor student connection" "spss-match" ("Lack of connection with students"))
       ("alowmotv" "14-Low study motivation" "spss-match" ("Low motivation to study"))
       ("atimconf" "15-Too many task conflicts" "spss-match" ("Too many conflicting things to do"))
       ("aprocras" "16-Procrastination" "spss-match" ("Procrastinate too much"))
       )
     ( STU-ACMOTIV
       ("acmstudy" "am-Study time per class hour" "spss-match" ("acmStudyTime"))
       ("acmndrop" "am-Never drop or take incomplete" "spss-match" ("acmNDROPcourses"))
       ("acmatten" "am-Attendance & do homework" "spss-match" ("acmATTENDclass"))
       ("acmefaml" "am-HW encouraged by fam & friends" "spss-match" ("acmEFAMLDemands"))
       ("acmesocs" "am-No chores if conflict w HW" "spss-match" ("acmESOCSTudy"))
       ("acmconce" "am-Great task-HW concentration" "spss-match" ("acmCONCEntrate" ))
       ("acmtime" "am-Time available to study" "spss-match" ("acmTime"))
       ("acmtimeORIG" "am-Time available to study--should be reversed" NIL ("acmTime"))
       ("acmselfs" "am-Self-manage college life well" "spss-match" ("acmSelfSufficient"))
       ("acmcompl" "am-Confident will complete degree" "spss-match" ("acmCompleteCol1"))
       ("acmquitc" "am-Won't drop out in year" "spss-match" ("acmQUITCOL"))
       ("acmfinan" "am-Confidence school finances" "spss-match" ("acmFinancial"))
       ("acmdegre" "am-Motivation for degree" "spss-match" ("acmDEGREmotivation"))
       )
     ( STU-LRN
       ("lrnestud" "lh-Good study place w/o distract" "spss-match" ("lrnESTUDYplace"))
       ("lrntxove" "lh-Prevew, points, review chapters" "spss-match" ("lrnTXOVerview" ))
       ("lrntxund" "lh-Stop to understand readings" "spss-match" ( "lrnTXUNDerstand"))
       ("lrntsrev" "lh-Review 3 times before exam" "spss-match" ("lrnTSREView" ))
       ("lrnmap" "lh-Create visual map of readings" "spss-match" ("lrnMap" ))
       ("lrntextn" "lh-Math science seek basic principles" "spss-match" ("lrnTextNotProbs"))
       ("lrninter" "lh-If text boring, make interesting" "spss-match" ("lrnInterest"))
       ("lrnrote" "lh-New view--not rote methods" "spss-match" ("lrnRote"))
       ("lrnassoc" "lh-Try to create associations" "spss-match" ("lrnAssoc"))
       ("lrnstrug" "lh-Struggle with difficult material" "spss-match" ("lrnSLTNStruggle"))
       ("lrntheor" "lh-Build own theories" "spss-match" ("lrnTHEORy"))
       ("lrnalone" "lh-Study alone-minimal help" "spss-match" ("lrnSEFICiciency"))
       ("lrnmath" "la-Enjoy & good at math" "spss-match" ( "lrnMATH"))
       ("lrnwrpap" "la-A's on term papers" "spss-match" ("lrnWRITEskills" ))
       ("lrntxout" "la-Outline textbooks" "spss-match" ("lrnTEXToutline" ))
       ("lrnnotes" "la-Good class notes" "spss-match" ("lrnNOTES" ))
       ("lrnwrskl" "la-Satisfied with writing skills" "spss-match" ("lrnWRORGanization"))
       ("lrnsee" "la-No vision problems" "spss-match" ("lrnSEE"))
       ("lrnvocab" "la-No vocabulary problems reading" "spss-match" ("lrnVOCAB"))
       ("lrnsread" "la-Not read slower" "spss-match" ("lrnSREAD" ))
       ("lrnmemor" "la-Memory for terms,formulas,facts" "spss-match" ("lrnMEMOR"))
       ("lrntense" "la-Rarely tense in exams" "spss-match" ("lrnTENSE"))
       ("lrnsefic" "la-Learning time efficient" "spss-match" ( "lrnSEFICiciency"))
       ("lrnwrorg" "la-Organizing writing good" "spss-match" ("lrnWRORGanization"))
       ("lrnunasn" "ld-Understand & begin assignments" "spss-match" ("lrnUNASNments"))
       ("lrncolmt" "ld-Not made to feel not college material" "spss-match" ("lrnCOLMTeral"))
       ("lrnknowt" "ld-Not know more than test" "spss-match" ("lrnKNOWtestBad"))
       ("lrnproof" "ld-Not unsure of un-proofed-by-other paper" "spss-match" ("lrnPROOFpaper"))
       ("lrnrread" "ld-Not read texts 2-3 times to make sense" "spss-match" ("lrnRREADtexts"))
       ("lrneffic" "ld-Not more time, lower grades" "spss-match" ("lrnSEFICiciency"))
       ("lrntestt" "ld-Not test better if more time" "spss-match" ( "lrnTESTTMoreTime"))
       ("lrntimas" "ld-Not too much time on assignments" "spss-match" ("lrnTIMASsigns" ))
       ("lrntired" "ld-Not reading 1 hour make tired" "spss-match" ("lrnTIREDread"))
       ("lrntanxi" "ld-Not more anxiety about tests" "spss-match" ("lrnTANXiety"))
       ("lrnsmart" "ld-Not smarter than grades indicate" "spss-match" ("lrnSMARTerThanGrades"))
       ("lrnaread" "ld-Not problem avoiding reading" "spss-match" ("lrnAREAD"))
       ("lrnrslow" "ld-Not slower reader" "spss-match" ("lrnRSLOWread"))
       )
     ( SM
       ("smtbusy" "sm-Rarely upset about too rushed" "spss-match" ("smtBUSY"))
       ("smtfutur" "sm-Time planning and distant goals" "spss-match" ("smtFUTURePlan"))
       ("smtexerc" "sm-Exercise freq-20 mins" "spss-match" ("smtExercize"))
       ("smteath" "sm-Healthy diet" "spss-match" ("smtEATH"))
       ("smtsleep" "sm-Hours sleep" "spss-match" ("smtSleep"))
       ("smtsdeve" "sm-Managed self-change" "spss-match" ("smtSDEVelopment"))
       ("smtnproc" "sm-Start & complete big projects" "spss-match" ("smtNPROCrastinate"))
       ("smtptodo" "sm-To-do list--all areas" "spss-match" ("smtPTODO" "smt2DToDo"))
       ("smtgoals" "sm-Objectives lists used" "spss-match" ("smtGOALS"))
       ("smtschd" "sm-Weekly schedule" "spss-match" ("smtSCHD"))
       ("smt2dtod" "sm-2-D to-do lists--assignments" "spss-match" ("smt2DToDo"))
       ("smtacmpl" "sm-High accomplishment, lo pressure" "spss-match" ("smtACMPL"))
       ("smtghelp" "sm-Regular self-development habits" "spss-match" ("smtGHELP"))
       ("smtbalan" "sm-Life area balance/satisfaction" "spss-match" ("smtBALance"))
       ("smthabch" "sm-Take good advice--make changes" "spss-match" ("smtHabChg"))
       )
     ( COPE
       ("copnegth" "cp-Not worry, neg thoughts" "spss-match" ("copNEGThinking" ))
       ("copcopea" "cp-Not eat" "spss-match" ("copCOPEat"))
       ("coppsolv" "cp-Face & problem solve" "spss-match" ("copPSolve"))
       ("copemota" "cp-Not outward anger" "spss-match" ("copEMOTaggress"))
       ("copavops" "cp-Not avoid thinking about-dealing w/problemNEW" "spss-match" ("copAVOID"))
       ("copblame" "cp-Not blame others or self" "spss-match" ("copBlame"))
       ("copwdrw" "cp-Not withdraw from others" "spss-match" ("copWDRW"))
       ("copfun" "cp-Fun or involving activity" "spss-match" ("copFUN"))
       ("coptalks" "cp-Talk about problem" "spss-match" ("copTALKsomeone"))
       ("coppepta" "cp-Positive thoughts-pep talk" "spss-match" ("copPEPTalk"))
       ("copsmoke" "cp-Not smoke tobacco" "spss-match" ("copSMOKe"))
       ("copdrug" "cp-Not drink alcohol, street drugs,or meds" "spss-match" ("copDRUG"))
       ("coppe" "cp-Vigorous physical activity" "spss-match" ("copPEPTalk" "copPE" "copPosPhil"))
       ("copnegph" "cp-Not critical-punative thoughts" "spss-match" ("copNegPhil"))
       ("copselfb" "cp-Not anger at self" "spss-match" ("copSelfBlame" "copSelfExplore"))
       ("copposph" "cp-Phil or religious viewpoint" "spss-match" ("copPosPhil"))
       ("copexpec" "cp-Examine expectations" "spss-match" ("copExpectations"))
       ("cophappy" "cp-Think happy no matter what" "spss-match" ("copHappy"))
       ("copavoat" "cp-Not miss work, school, etc-" "spss-match" ("copAvoidFreq"))
       ("copselfe" "cp-Self-exploration enjoyment" "spss-match" ("copSelfExplore"))
       )
     ;;aaa
     ( THEMES
       ("thm1ach" "ta-Being the best" "spss-match" ("thm1Ach"))
       ("thm3educ" "ta-Advanced degrees" "spss-match" ("thm3Educ"))
       ("thm4mone" "ta-Very high income" "spss-match" ("thm4Money"))
       ("thm25pos" "ta-High quality possessions" "spss-match" ("thm25Possess"))
       ("thm26suc" "ta-Career success" "spss-match" ("thm26Success"))
       ("thmimpac" "ta-Impact-change world" "spss-match" ("thm27ChangeWorld"))
       ("thm28cre" "ta-Creation-major contribution" "spss-match" ("thm28Create" ))
       ("thm30ceo" "ta-Power-ceo, owner" "spss-match" ("thm30CEO"))
       ("thm33goa" "ta-Complete all important goals" "spss-match" ("thm33Goals"))
       ("thm8roma" "ts-Love-romance" "spss-match" ("thm8Romance"))
       ("thm12ple" "ts-Pleasing others-avoid conflict" "spss-match" ("thm12Please"))
       ("thmrespe" "ts-Respect from others" "spss-match" ("thm15Respect"))
       ("thm20int" "ts-Intimacy-close relationships" "spss-match" ("thm20Intimacy" ))
       ("thmliked" "ts-Well-liked by many" "spss-match" ("thm21Network"))
       ("thmcareg" "ts-Care-giving-parent, others" "spss-match" ("thm31Caregiver"))
       ("thmsuppo" "ts-Emotional support from others" "spss-match" ("thmVSUPRT"))
       ("thmatten" "ts-Attention from others" "spss-match" ("thmAttention"))
       ("thmfamil" "ts-Family" "spss-match" ("thmFamily"))
       ("thmrecog" "ts-Recognition-respect,status,etc" "spss-match" ("thmRecognition" ))
       ("thmphurt" "td-Personal healing-overcome problems" "spss-match" ("thm16Hurt" ))
       ("thmobgod" "td-Obedience to God" "spss-match" ("thm17GodRules"  ))
       ("thmparlv" "td-Parental love and respect" "spss-match" ("thm18ParentRespect"))
       ("thmsprot" "td-Self-protection" "spss-match" ("thm24Protect"))
       ("thmpunct" "td-Punctuality" "spss-match" ("thmPunctuality"))
       ("thmoblig" "td-Obligation" "spss-match" ("thmObligation" ))
       ("thm5adve" "ti-Adventure" "spss-match" ("thm5Advent"))
       ("thm6lear" "ti-Learning, self-development" "spss-match" ( "thm6Learn" ))
       ("thm9shap" "ti-Self-happiness" "spss-match" ("thm9Happy"))
       ("thm10oth" "ti-Giving to others happiness, world" "spss-match" ("thm10OthHap"))
       ("thmrelgd" "ti-Spiritual intimacy" "spss-match" ("thmRecognition"))
       ("thm14ind" "ti-Independence" "spss-match" ("thm14Indep"))
       ("thm22bod" "ti-Health and longevity" "spss-match" ("thm22Body"))
       ("thm23bal" "ti-Life balance" "spss-match" ("thm23Balance"))
       ("thmorder" "ti-Orderliness organization" "spss-match" ("thmOrderly"))
       ("thmmench" "ti-Mental Challenge" "spss-match" ("thm32MentalChal"))
       ("thm34exp" "ti-Exploration find answers" "spss-match" ("thm34Explore"))
       ("thmcompc" "ti-Competence, best I can be" "spss-match" ("thm35Competence"))
       ("thminteg" "ti-Integrity" "spss-match" ("thm36Integrity"))
       ("thmphil" "ti-Personal philosophy" "spss-match" ("thmPHIL"))
       ("thmclean" "ti-Cleanliness" "spss-match" ("thm12Please" "thmClean"))
       ("thmwhole" "ti-Wholeness" "spss-match" ("thmWholeness"))
       ("thmperfe" "ti-Perfection and idealism" "spss-match" ("thmPerfection"))
       ("thmjusti" "ti-Justice" "spss-match" ("thmJustice"))
       ("thmsimpl" "ti-Simplicity" "spss-match" ("thmSimplicity" "thmPlayful"))
       ("thmbeaut" "ti-Beauty" "spss-match" ("thmBeauty"))
       ("thmgoodn" "ti-Goodness" "spss-match" ("thmGoodness"))
       ("thmuniqu" "ti-Uniqueness & diversity" "spss-match" ("thmUnique"))
       ("thmcreat" "ti-Creativeness" "spss-match" ("thmCreative"))
       ("thmefort" "ti-Effortlessness" "spss-match" ("thmEfortless"))
       ("thmplayf" "ti-Fun playfulness" "spss-match" ("thmPlayful"))
       ("thmsesuf" "ti-Self-sufficiency" "spss-match" ("thmSelfSufficient"))
       ("thmsedis" "ti-Self-discipline" "spss-match" ("thmSelfDiscipline"))
       ("thmspiri" "ti-God and/or spirituality" "spss-match" ("thmSpiritGod"))
       ("thmrelig" "ti-Religion" "spss-match" ( "thmReligion"))
       ("thmuncon" "ti-Unconditional love of all people" "spss-match" ( "thmUnconditLove"))
       )
     ( TBV
       ("tbvothfi" "bu-Not always others first" "spss-match" ("tbvOthersFirst"))
       ("tbvliked" "bu-Not loved by all" "spss-match" ("tbvLikedByAll"))
       ("tbvweak" "bu-Not weak and dependent" "spss-match" ("tbvWeak"))
       ("tbvbest" "bu-Not must be best" "spss-match" ("tbvBest"))
       ("tbventit" "bu-Not entitled to good life" "spss-match" ("tbvEntitled"))
       ("tbvrules" "bu-Not if break rules--severe punishment" "spss-match" ("tbvRulesPunish"))
       ("tbvwinne" "bu-Not winners and losers" "spss-match" ("tbvWinners"))
       ("tbvbalan" "bu-Balance present-future, self-others hap" "spss-match" ("tbvBalanceFuture"))
       ("tbvhapca" "bu-Decisions-max happiness" "spss-match" ("tbvHapCalc"))
       ("tbvgrati" "bu-Gratitude-abundance thinking" "spss-match" ("tbvGratitude"))
       ("thvselfa" "bu-Accept all parts of self" "spss-match" ("thvSelfAccept" "thvSelfWorth"))
       ("thvselfaORIG" "ORIG-bu-Accept all parts of self" NIL ("thvSelfAccept" ))
       ("thvuncon" "bu-Value all unconditionally" "spss-match" ("thvUncondCare"))
       ("thvselfw" "bu-Value self unconditionally" "spss-match" ( "thvSelfWorth"))
       )
     ( IE
       ("iecselfs" "ie-Take care of self & probs" "spss-match" ("iecSelfSufficient"))
       ("iecicont" "ie-I control life-happiness" "spss-match" ("iecILOFCiVSe"))
       ("iecgenet" "ie-Not genetics-biology control my hap" "spss-match" ("iecGenetic"))
       ("iecpeopl" "ie-Not others control my happiness" "spss-match" ("iecPeople"))
       ("iecdepen" "ie-Not dependent on one person" "spss-match" ("iecDependent"))
       ("ieccofee" "ie-Not care for another above self" "spss-match" ("iecCodependent" ))
       ("ieccoprb" "ie-Not worry carrying for one's serious prob" "spss-match" ("iecCodepProblem"))
       )
     ( WORLDVIEW
       ("wovprogr" "wv-World will improve" "spss-match" ("wovProgress" ))
       ("wovgoodf" "wv-Good forces control world" "spss-match" ("wovGoodForces"))
       ("wovmylif" "wv-My life will improve" "spss-match" ("wovMyLife" ))
       ("wovnfair" "wv-Not life unfair to me" "spss-match" ("wovLifeNotFair"))
       ("woventit" "wv-Not entitled to basic necessities" "spss-match" ("wovEntitled"))
       ("wovinjur" "wv-Not one ruined my life" "spss-match" ("wovInjured"))
       ("wovabund" "wv-Have all I need to be happy" "spss-match" ("wovAbundance"))
       ("wovgrate" "wv-Extremely grateful" "spss-match" ("wovGrateful"))
       ("wovposth" "wv-Percent of time positive thoughts" "spss-match" ("wovPosThoughtsPerCent" "wovPoor"))
       ("wovhappy" "wf-Not fear unhappy career" "spss-match" ("wovHappyCareer"))
       ("wovpoor" "wf-Not fear of poverty" "spss-match" ("wovPoor"))
       ("wovill" "wf-Not fear of illness" "spss-match" ("wovIll"))
       ("wovdeath" "wf-Not fear of death" "spss-match" ("wovDeath"))
       ("wovalone" "wf-Not fear of being alone" "spss-match" ("wovAlone"))
       ("wovnolov" "wf-Not fear of poor marriage-family" "spss-match" ("wovNoLove"))
       ("wovliked" "wf-Not fear of not close friends" "spss-match" ( "wovLiked"))
       ("wovperso" "wf-Not fear of not being person want" "spss-match" ("wovPerson"))
       ("wovprobl" "wf-Not fear of overcoming problem" "spss-match" ( "wovProblem"))
       ("wovdisco" "wf-Not fear of something discovered" "spss-match" ("wovDiscovered"))
       ("wovsucce" "wf-Not fear of lack acad-career success" "spss-match" ("wovSuccess"))
       ("wovoverc" "wf-Could be happy if worst fear happened" "spss-match" ("wovOvercomeFear"))
       )
     ( SELF-CONF
       ("slflearn" "sc-Learning and study skills" "spss-match" ("slfLearnSkill"))
       ("slfcritt" "sc-Critical thinking and logic" "spss-match" ("slfCritThink"))
       ("slfresea" "sc-Research & methodology" "spss-match" ("slfResearch"))
       ("slfanaly" "sc-Analytical thinking" "spss-match" ("slfAnalysis"))
       ("slfsynth" "sc-Synthesis" "spss-match" ("slfSynthesis"))
       ("slfcreat" "sc-Creative thinking-ideas" "spss-match" ("slfCritThink" "slfCreative"))
       ("slfcompu" "sc-Computer-related" "spss-match" ("slfComputer" "slfCope" "slfConflictResol"))
       ("slfbiosc" "sc-Biological science" "spss-match" ("slfBioSci"))
       ("slfnatsc" "sc-Natural science--physics, chem" "spss-match" ("slfNatSci"))
       ("slflibar" "sc-Liberal arts" "spss-match" ("slfLibArts" "slfListening"))
       ("slfsocsc" "sc-Beh-social science" "spss-match" ("slfSocSci"))
       ("slfphilr" "sc-Philosophy-religion" "spss-match" ("slfPhilRel"))
       ("slfperfa" "sc-Performing arts" "spss-match" ("slfPerfArt"))
       ("slffinea" "sc-Fine arts" "spss-match" ("slfFineArt"))
       ("slfbusan" "sc-Business or management" "spss-match" ("slfBusAndManage"))
       ("slfheal2" "sc-Health or medicine" "spss-match" ("slfHealthMed" "slfHealth" "slfHelpSkill"))
       ("slfengin" "sc-Engineering or technical" "spss-match" ("slfEngin"))
       ("slfeduch" "sc-Educ,Counseling, or helping" "spss-match" ("slfEducHelp"))
       ("slfiq" "sc-Intelligence" "spss-match" ("slfIQ" "slfIndependent"))
       ("slfdecma" "sc-Decision-making/planning" "spss-match" ("slfDecMaking"))
       ("slftimem" "sc-Time management" "spss-match" ("slfTimeManagement"))
       ("slfcope" "sc-Emotional coping skills" "spss-match" ("slfCope" ))
       ("slfself4" "sc-Ach motivation-work habits, focus" "spss-match" ( "slfSelfMotiv" ))
       ("slfselfm" "sc-Self-motivation of unpleasant" "spss-match" ( "slfSelfDisclose" ))
       ("slfachan" "sc-Self-development/change" "spss-match" ("slfAchAndWork"))
       ("slfmana6" "sc-Managing finances" "spss-match" ( "slfManageMoney" ))
       ("slfheal3" "sc-Health detailed knowl & habits" "spss-match" ("slfHealthMed" "slfHealth" ))
       ("slfmeetp" "sc-Meeting people" "spss-match" ("slfMeetPeople"))
       ("slfliste" "sc-Empathetic listening skills" "spss-match" ("slfListening"))
       ("slfself5" "sc-Self-disclosure" "spss-match" ("slfSelfDisclose"))
       ("slfconfl" "sc-Conflict resolution skills" "spss-match" ( "slfConflictResol"))
       ("slfpersu" "sc-Persuasion skills" "spss-match" ("slfPersuasion"))
       ("slfmana7" "sc-Management-leadership skills" "spss-match" ( "slfManageSkill"))
       ("slfhelps" "sc-Helping-teaching skills" "spss-match" ("slfHelpSkill"))
       ("slfspeak" "sc-Public speaking skills" "spss-match" ("slfSpeakSkill"))
       ("slfjobse" "sc-Job search skills" "spss-match" ("slfJobSearch"))
       ("slfadapt" "sc-Adaptable-success in any situation" "spss-match" ("slfAdapt"))
       ("slfhappy" "sc-Happiness IQ" "spss-match" ("slfHappyIQ"))
       ("slfoptim" "sc-Optimism" "spss-match" ("slfTimeManagement" "slfOptimism"))
       ("slffrien" "sc-Caring, friendly, outgoing" "spss-match" ("slfFriendly"))
       ("slfindep" "sc-Strong, independent, self-disciplined" "spss-match" ("slfIndependent"))
       )
     ;;begin inserted
     ( ASSERTCR
       ("cr1issue" "cr-One issue at a time" "spss-match" ("crSrq19Issue")) 
       ("crresolv" "cr-Rarely repeat arguments of same issue" "spss-match" ("crSrq26Finish"))
       ("crnthrea" "cr-I rarely make threats" "spss-match" ("crSrq29Threats") "crSrq29Threats")
       ("crunderl" "cr-Discuss underlying issues" "spss-match" ("crSrq30Real") )
       ("crtklong" "cr-Not one talk long before other" "spss-match" ("crSrq32OneTalk") )
       ("crnneglb" "cr-I rarely use negative labels" "spss-match" ("crSrq33RareNeg") )
       ("crteweak" "cr-Not uncomfortable about tell weakness" "spss-match"  ( "crSrq34NoWeak"))
       ("crwinwin" "cr-Discuss until win-win solution" "spss-match"  ( "crSrq35WinWin"))
       ("crlongtk" "cr-Keep going until reach a solution" "spss-match" ( "crSrq36LongTalk"))
       ("crexaggr" "cr-I not freq use 'always' or exaggeration" "spss-match"  ( "crSrq37Exaggerate"))
       ("crmanipu" "cr-Not feel me or partner manipulate" "spss-match"  ( "crSrq38PartManip"))
       ("crsummar" "cr-I repeat summary" "spss-match"  ( "crSrq39Listen"))
       ("crcprais" "cr-We laugh & praise during disagree" "spss-match"  ( "crSrq40Praise"))
       ("crboassr" "cr-Both assertive pos,firm,diplom" "spss-match"  ( "crSrq43BothAssert"))
       ("crophone" "cr-We open,nondefensive,honest" "spss-match" ( "crSrq45Open"))
       ("crreprai" "cr-Partner gives more praise than criticism" "spss-match"  ( "crSrq47PartCrit"))
       ("crteach" "cr-Not problem teaching other" "spss-match"  ( "crSrq56Teach"))
       ("crifavor" "cr-I do favors cheerfully when asked" "spss-match" ("crSrq57Favor") )
       ("crifolup" "cr-I do what I tell partner" "spss-match"  ( "crSrq59FollowUp"))
       ("crangang" "cr-If p-angry at me, I don't get angry-def" "spss-match"  ( "crSrq60AngerBack"))
       ("criprais" "cr-I not criticize more than praise p-" "spss-match"  ( "crSrq67Critical"))
       ("crangres" "cr-If one angry, other assertive back" "spss-match"  ( "crSrq68AngerRes"))
       ("crtlkmor" "cr-One partner not much more talkative" "spss-match"  ( "crSrq31EqTalk"))
       ("creqwin" "cr-Equal winning of disagreements" "spss-match"  ( "crSrq58EqWin"))
       )
     ( INTIMACY
       ("instshlp" "in-Partner helps if I under stress" "spss-match"  ( "intSrq6Extra"))
       ("intcomit" "in-Not-commitment cause feel trapped" "spss-match"  ( "intSrq7Commit"))
       ("intundrl" "in-We discuss underlying issues" "spss-match"  ( "intSrq30Real"))
       ("inttelal" "in-Told partner all about self" "spss-match"  ( "intSrq8TellAll"))
       ("intsmgoa" "in-We agree on long term goals" "spss-match" ("intSrq18LikeGoals") )
       ("inteqdec" "in-Equality in decision influence" "spss-match"  ( "intSrq20EqDiscuss"))
       ("intiopen" "in-We tell almost exactly what we thinking" "spss-match"  ( "intSrq21OpenIssue"))
       ("intweopn" "in-We open, nondefensive,honest" "spss-match"  ( "intSrq45NonDef"))
       ("intdaily" "in-Daily sharing of feelings on events" "spss-match"  ( "intSrq46OpenFeel"))
       ("intrespt" "in-Respect partner above others" "spss-match"  ( "intSrq50Respect"))
       ("intallop" "in-Open, specific about sensitive issues" "spss-match"  ( "intSrq53OpenSexTk"))
       ("intwktog" "in-We enjoy working together" "spss-match"  ( "intSrq55MutTask"))
       ("intknpfe" "in-Not frequently don't know p- feelings" "spss-match"  ( "intSrq61KnowFeel"))
       ("intlsqpr" "in-Tell of respect, love of p- to others" "spss-match" ("intLsqPRASE44Q") )
       ("intlove" "in-I love partner very much" "spss-match" ("intLove") )
       )
     ( INDEP-INT
       ("inrbealnORIG" "ORIG-id-OK for weekends alone" NIL  ( "inrSrq2BeAloneORIG"))
       ("inrbealn" "id-OK for weekends alone" "spss-match"  ("inrSrq2BeAlone" ))
       ("inalcnstORIG" "ORIG-id-Not consult for small decisions" NIL( "inrSrq3Consult")) ;;  
       ("inalcnst" "id-Not consult for small decisions" "spss-match" ( "inrSrq3Consult")) ;; 
       ("inrfrien" "id-P- has opposite sex social friends" "spss-match"  ( "inrSrq9OwnFriends"))
       ("indifdec" "id-Support p decision if disagree" "spss-match" ( "inrSrq10EncDifDec")) ;; 
       ("inrlunch" "id-Ok--p - lunch w/ attr- opposite sex" "spss-match"( "inrSrq11Lunch")) ;;  
       ("inrinhap" "id-Marriage not greater than ind- happy" "spss-match" ( "inrSrq15IndHap"))
       ("innevarg" "id-Not-partners never disagree if happy" NIL  ( "inrSrq16NevArgue"))
       ("inrigrow" "id-I end relationship if can't grow" NIL  ( "inrSrq17End"))
       ("inrsaywe" "id-Not say we'when mean 'I" NIL ( "inrSrq24SayWe")) ;; 
       ("incomtwo" "id-Not-worries of other's commitment" NIL ( "inrSrq25CommitWorry")) ;;  
       ("indifgoa" "id-Ok for different goals" NIL ( "inrSrq28DifGoalOK")) ;; 
       ("infindan" "id-Could be happy with another" NIL( "inrSrq41FindAnother")) 
       ("inenalon" "id-Not-can't enjoy being w/o partner" NIL   ( "inrSrq44EnjoyAlone")) ;; 
       ("inokalon" "id-Not-not happy if not partner" NIL ( "inrSrq48HapAlone")) ;; "inrSrq49FearAlone") )
       ("inrhatea" "id-Not-I hate to be alone" NIL ( "inrSrq49FearAlone")) ;;  ( "inrSrq63PartInterests")
       ("inrfreeh" "id-Free at home if partner there" NIL ("inrSrq51FreeAtHome")) ;; ( "inrSrq64OwnFunds") ;;???
       )
     ( ROM
       ("romsurpr" "ro-Surprise p- once/week" "spss-match"  ( "romSrq1Surprise"))
       ("romfanta" "ro-Freq fantasies about p-" "spss-match"  ( "romSrq4Fantasize"))
       ("romceleb" "ro-Celebrate special days 1/month" "spss-match"  ( "romSrq5Celebr"))
       ("romplace" "ro-We go to romantic places 1/week" "spss-match" ("romSrq12RomPlaces") )
       ("romattra" "ro-Sexually attracted to partner" "spss-match"  ( "romSrq13Attract"))
       ("romplayf" "ro-Some playful interactions weekly" "spss-match" ( "romSrq14Play"))
       ("romcharm" "ro-Partner charming & romantic" "spss-match"  ( "romSrq42Charm"))
       )
     ( LIBROLE
       ("lromtask" "find" "check-spss-match" ( "lroSrq22MTasks"))
       ("lroftask" "find" "check-spss-match" ( "lroSrq23FTasks"))
       ("lrmfinal" "find" "check-spss-match" ("lroSrq27FinalDec") )
       ("lroembar" "find" "check-spss-match"  ( "lroSrq52Embar"))
       ("lromstro" "find" "check-spss-match"  ( "lroSrq54MStronger"))
       ("lroeqinc" "find" "check-spss-match"  ( "lroSrq65EqIncome"))
       ("lrcarcon" "find" "check-spss-match"  ( "lroSrq66FQuitJob"))
       )

     ;;end inserted
     ( HAP
       ("haparea" "h-Happy living in area, home" "spss-match" ("hapAREA"))
       ("hapclfrn" "h-Happy w/ number & closeness of friends" "spss-match" ("hapCLFRN"))
       ("hapcarnw" "h-Happy w/ my career now" "spss-match" ("hapCareer" ))
       ("hapcarfu" "h-Happy w/ future career expectations" "spss-match" ( "hapCareerExpect"))
       ("hapfrien" "h-Happy w/ friendships" "spss-match" ("hapFriends"))
       ("hapwkrel" "h-Happy w/ work-school relationships" "spss-match" ("hapWorkRels"))
       ("happe" "h-Happy w/ physical activity" "spss-match" ("hapPE"))
       ("haprecre" "h-Happy w/ recreation" "spss-match" ("hapRecreation"))
       ("hapsexre" "h-Happy w/ sex/romance" "spss-match" ("hapSexRel"))
       ("hapfamil" "h-Happy w/ family relationships" "spss-match" ("hapFamily"))
       ("hapselfd" "h-Happy w/ self & development" "spss-match" ("hapSelfDevel"))
       ("hapspiri" "h-Happy w/ meaning & spiritual/religious" "spss-match" ("hapSpiritual"))
       ("hapyear" "h-Happiness during past year" "spss-match" ("hapYear"))
       ("hap3year" "h-Happiness 1-3 years ago" "spss-match" ("hapYear" "hap3Years"))
       ("haplife" "h-Happiness up to 3 years ago" "spss-match" ("hapLife"))
       ("hapexpec" "h-Happiness expected in future" "spss-match" ("hapExpect"))
       )
     ( RHEALTH
       ("rhlfreqi" "he-LoFreq of illness past 3 years" "spss-match" ("rhlFreqIllness"))
       ("rhlalcoh" "he-LoFreq of alcohol drinks" "spss-match" ("rhlAlcohol"))
       ("rhlsmoke" "he-LoFreq of cigarrettes" "spss-match" ("rhlSmoke"))
       ("rhldrugs" "he-LoFreq of illegal drugs" "spss-match" ("rhlDrugs"))
       ("rhlphysi" "he-Physical conditioning level" "spss-match" ("rhlPhysicalCondition"))
       ("rhlweigh" "he-LoWeight" "spss-match" ("rhlWeight"))
       )
     ( RPEOPLE
       ("rpehapfr" "re-Friends happy-successful" "spss-match" ("rpeHAPFRiends"))
       ("rpehmarr" "re-Have or had happy marital rel" "spss-match" ("rpeHMARR"))
       ("rpenetw" "re-Close network of friends & career-rel" "spss-match" ("rpeNETW"))
       ("rpeclfrn" "re-Have/had friends share innermost" "spss-match" ("rpeCLFRN"))
       ("rpenumfr" "re-Number friends socialize 1/month" "spss-match" ("rpeNumFriends"))
       ("rpenumcl" "re-Number extremely close friends" "spss-match" ( "rpeNumCloseFriends"))
       ("rpecommi" "re-Degree of commit to 3 mo romantic" "spss-match" ("rpeCommit"))
       )
     ( RDEP
       ("rdepfeel" "de-Not often sad,apathetic,depressed" "spss-match" ("rDepFeeling"))
       ("rdepthou" "de-Not worthless, very neg a-death,etc" "spss-match" ("rDepThought" ))
       ("rdepdyss" "de-RevDysthemia symptoms checklist" "spss-match" ("rDepDysSymptoms"))
       ("rdepmajs" "de-RevMajor depression symptoms chkl" "spss-match" ("rDepMajSymptoms" ))
       ("rdepmeds" "de-RevLength of time meds for depression" "spss-match" ("rDepMeds"))
       ("rdepther" "de-RevAmount of therapy for depression" "spss-match" ("rDepTherapy"))
       )
     ( RANX
       ("ranxperf" "ax-RevPerformance anxiety level" "spss-match" ("rAnxPerform" ))
       ("ranxallt" "ax-Not feel anxious almost all time" "spss-match" ("rAnxAllTime"))
       ("ranxpstd" "ax-RevPSTD symptoms chkl" "spss-match" ( "rAnxPSTD" ))
       ("ranxsoci" "ax-RevAnxiety with other people" "spss-match" ("rAnxSocial"))
       ("ranxocd" "ax-RevTimes lasting OCD problems" "spss-match" ("rAnxOCD"))
       ("ranxphob" "ax-RevNumber of phobias" "spss-match" ( "rAnxPhobia" ))
       ("ranxpani" "ax-RevNumber of panic attacks" "spss-match" ("rAnxPanic"))
       ("ranxmeds" "ax-RevTime meds for anxiety DEPRESSION?" "spss-match" ("rAnxMeds"))
       ("ranxther" "ax-Amount of therapy for anxiety" "spss-match" ("rAnxTherapy"))
       )
     ( RANG
       ("rangfeel" "ag-RevFreq lose temper" "spss-match" ( "rAngFeeling"))
       ("rangyell" "ag-RevFreq yell or call hurtful names" "spss-match" ("rAngYell"))
       ("rangdomi" "ag-RevFreq get way by [aggression]" "spss-match" ( "rAngDominate"))
       ("rangthou" "ag-RevFreq think about get even" "spss-match" ("rAngThoughts"))
       ("rangdest" "ag-RevFreq damage prop etc/break law" "spss-match" ( "rAngDestroy"))
       )
     ( REMOT
       )
     ( TB2
       ("tb2relat" "b2-RevNo absolute right--situational ethics" "spss-match" ("tbv2RelGood"))
       ("tb2punis" "b2-RevBad only happens if bad" "spss-match" ("tbv2BadToSin"))
       ("tbv2notr" "b2-RevNot responsible if bad environ/genes" "spss-match" ("tbv2NotResponsible"))
       ("tb2groum" "b2-RevLife no meaning w/o spec group" "spss-match" ("tbv2GroupMeaning"))
       ("tb2selfm" "b2-RevAll meaning supplied by person" "spss-match" ("tbv2SelfMeaning"))
       ("tb2gdwrk" "b2-RevForgiveness depends on works" "spss-match" ("tbv2GoodWorks"))
       ("tb2gdatt" "b2-Goodness depends more on attitude" "spss-match" ("tbv2GoodAttitude"))
       ("tb2allgd" "b2-Lots of good in all people" "spss-match" ("tbv2AllGood"))
       ("tb2reaso" "b2-RevScience-reason can solve all worries" "spss-match" ("tbv2Reason"))
       ("tbv2astr" "b2-RevBelief in spirits,astrology" "spss-match" ( "tbv2Astrology"))
       ("tb2idhum" "b2-Identify with all human over any group" "spss-match" ("tbv2IDHumanity"))
       ("tb2lifad" "b2-Believe in life after death" "spss-match" ("tbv2LifeAfDeath"))
       ("tb2movem" "b2-Part of progress greater than family etc" "spss-match" ("tbv2Movement"))
       ("tbv2core" "b2-Strong phil/rel beliefs guide daily life" "spss-match" ("tbv2CoreBeliefs"))
       )
     ;;aaa
     ( CARGEN
       ("car1carg" "ca-Have goal,plan,likely success" "spss-match" ("CARGEN" "car1CARGoal" "car1CARPRiority"))
       ("car1carp" "ca-Great time and thorough career plan process" "spss-match" ("car1CARGoal" ))
       ("car1inat" "ca-Natural science" "spss-match" ("car1INATSCI"))
       ("caribioh" "ca-Biological science" "spss-match" ("carIBioHealthSci"))
       ("carisocs" "ca-Learn about self & people" "spss-match" ("carISOCSCI"))
       ("carihelp" "ca-Helping people-teach coun etc" "spss-match" ("carIHELP"))
       ("carimath" "ca-Math" "spss-match" ("carIMATH"))
       ("carimed" "ca-Medical-related" "spss-match" ( "carIMED" ))
       ("cariwrit" "ca-Writing-related" "spss-match" ( "carIWRITE"))
       ("carifnar" "ca-Fine art-related" "spss-match" ("carIFNART"))
       ("cariethn" "ca-Ethnic studies-women" "spss-match" ("carIETHNIC" ))
       ("carilear" "ca-Love higher ed" "spss-match" ("carILEARN" ))
       ("cariexpe" "ca-Want to be expert" "spss-match" ( "carIEXPERT" ))
       ("carigene" "ca-Love variety-know little about many" "spss-match" ("carIGENeral"))
       ("carinoin" "ca-Never interest in school" "spss-match" ("carINOINTerest" ))
       ("carilit" "ca-Literature-history" "spss-match" ("carILIT"))
       ("carirecp" "ca-Sports-rec helping others w/sports" "spss-match" ("carIRECPE"))
       ("caripoli" "ca-Law politics government" "spss-match" ("carIPOLitics" ))
       ("carimil6" "ca-Law enforcement military etc" "spss-match" ("carIMILTaryLawEnforce"))
       ("carimanu" "ca-Manual-tech electr computers etc-" "spss-match" ( "carIMANUalActs"))
       ("carilang" "ca-Languages travel etc" "spss-match" ("carILANGuage"))
       ("cariphil" "ca-Philosophy-religion" "spss-match" ( "carIPHILandRel"))
       ("caribusi" "ca-Business" "spss-match" ( "carIBUSiness"))
       ("cariengi" "ca-Engineering sci design" "spss-match" ( "carIENGINeer"))
       ("carifamc" "ca-Family & Consumer Sci" "spss-match" ("carIFamConSci"))
       ("cariwoma" "ca-Ethnic-women" "spss-match" ( "carIWomanEthnic"))
       ("caricom8" "ca-Computer-related" "spss-match" ("carIComputer"))
       ("carinte0" "ca-Interdisciplinary" "spss-match" ("carInterDiscSt"))
       )
     ( CARBUS
       ("caribmar" "cb-Marketing" "spss-match" ("carIBMARKeting" ))
       ("caribman" "cb-Management" "spss-match" ("carIBMANAGement" ))
       ("caribinf" "cb-Inform Systems" "spss-match" ("carIBINFormSystems"))
       ("caribfin" "cb-Finance" "spss-match" ( "carIBFINance" ))
       ("caribhrd" "cb-Human Resources" "spss-match" ( "carIBHRD" ))
       ("caribacc" "cb-Accounting" "spss-match" ("carIBACCTounting"))
       ("carispbu" "cb-Public Relations" "spss-match" ("carISPBUS"))
       )
     ( CARENGR
       ("carieeng" "ce-Elect Engr" "spss-match" ("carIEEng"))
       ("carime" "ce-Mech Engr" "spss-match" ("carIME"))
       ("cariche2" "ce-Chem Engr" "spss-match" ("carICHEMEng" ))
       ("caricive" "ce-Cival Engr" "spss-match" ("carICIVEng1"))
       ("cariaero" "ce-Aerospace Engr" "spss-match" ("carIAEROEng"))
       ("carieite" "ce-Engr Tech" "spss-match" ("carIEITech"))
       ("caricom9" "ce-Computer Engr" "spss-match" ( "carICompSciEngr"))
       ("caribcom" "ce-Bus Computer" "spss-match" ("carIBCOMPuter"))
       )
     ( CARFINE
       ("carimusi" "cart-Music" "spss-match" ("carIMUSIC"))
       ("cariart" "cart-Art" "spss-match" ("carIART"))
       ("caridram" "cart-Theatre Arts" "spss-match" ("carIDRAMA"))
       ("caridanc" "cart-Dance" "spss-match" ("carIDANC"))
       ("cariphot" "cart-Photog or Ph Journ" "spss-match" ("carIPHOTJournalism"))
       ("carindde" "cart-Indust Design" "spss-match" ("carIndDesign"))
       ("carinte1" "cart-Interior Design" "spss-match" ( "carInteriorDesign"))
       )
     ( CARHELP
       ("cariteac" "ch-Teaching" "spss-match" ("carITEACH" ))
       ("caricoun" "ch-Counseling" "spss-match" ("carICOUNseling" ))
       ("carieduc" "ch-Education" "spss-match" ("carIEDUCSetting"))
       ("carihadu" "ch-Help Adults" "spss-match" ("carIHADULT"))
       ("carihchi" "ch-Help children-teens" "spss-match" ("carIHCHILD"))
       ("caritvoc" "ch-Voc Ed" "spss-match" ( "carITVOCational"))
       ("caricom4" "ch-Speech-hearing" "spss-match" ( "carICOMDISorders"))
       ("carsocwo" "ch-Social Work" "spss-match" ("carSocWork"))
       ("cark12te" "ch-Teach K-12" "spss-match" ("carK12Teach"))
       ("carminis" "ch-Minister-priest" "spss-match" ("carMinister"))
       )
     ( CARLANG
       ("carifren" "cl-French" "spss-match" ("carIFRENch"))
       ("cariital" "cl-Italian" "spss-match" ("carIITALian"))
       ("carigerm" "cl-German" "spss-match" ("carIGERMan"))
       ("cariruss" "cl-Russian" "spss-match" ("carIRUSSian"))
       ("carijapn" "cl-Japanese" "spss-match" ("carIJAPNese"))
       ("carichin" "cl-Chinese" "spss-match" ("carIChin" ))
       ("cariclas" "cl-Classic Lang" "spss-match" ( "carICLASCs"))
       ("carispan" "cl-Spanish" "spss-match" ("carISPANish"))
       ("caripor" "cl-Portugese" NIL ("ccarIPORTuguese"))
       )
     ( CARMED
       ("carimd" "cm-Physician" "spss-match" ("carIMD"))
       ("carinurs" "cm-Nurse" "spss-match" ("carINURSE"))
       ("caripthe" "cm-Phys Therapy" "spss-match" ("carIPTherapy"))
       ("cariheal" "cm-Health Science" "spss-match" ("carIHEALTH"))
       ("carikine" "cm-Kinesiology" "spss-match" ("carIKinesology"))
       ("caricom5" "cm-Commicative Dis" "spss-match" ("carICOMDISorders"))
       ("carmedte" "cm-Med Tech/imaging" "spss-match" ( "carMedTech"))
       )
     ( CARLAW
       ("carilaw" "cleg-Law" "spss-match" ( "carILAW"))
       ("caricrim" "cleg-Law enforcement" "spss-match" ("carICRIM"))
       ("carimil7" "cleg-Military" "spss-match" ("carIMILT2"))
       )
     ( CARNATSCI
       ("cariche3" "cn-Chemistry" "spss-match" ("carICHEM"))
       ("cariphys" "cn-Physics" "spss-match" ("carIPHYSics"))
       ("carigeol" "cn-Geology" "spss-match" ("carIGEOlogy"))
       ("cariastr" "cn-Astronomy" "spss-match" ("carIASTronomy"))
       ("carienvi" "cn-Environmental Sci" "spss-match" ("carIEnvirSci")) 
       )
     ( CARBESCI
       ("caripsyc" "cs-Psychology" "spss-match" ("carIPSYch"))
       ("carisoco" "cs-Sociology" "spss-match" ("carISOCOlogy"))
       ("carihist" "cs-History" "spss-match" ("carIHIST"))
       ("caripols" "cs-Political Science" "spss-match" ("carIPOLSC"))
       ("cariecon" "cs-Economics" "spss-match" ("carIECON"))
       ("cargeogr" "cs-Geography" "spss-match" ("carGeography"))
       ("cariamer" "cs-American Studies" "spss-match" ("carIAmerSt" ))
       ("cariantr" "cs-Anthropology???-AntR not AntH" "spss-match" ( "carIAntro"))
       ("carianth" "cs-Anthropology" "spss-match" ( "carIANTHropology"))
       ("carispee" "cs-Speech-Commun" "spss-match" ("carISOCOlogy" "carISpeech"))
       ("carling" "cs-Linguistics" "spss-match" ("carLing"))
       )
     ( CARETHNIC
       ("cariaist" "cs-Native Amer Studies" "spss-match" ("carIAIStudies"))
       ("caribstu" "cs-African Amer Studies" "spss-match" ("carIAIStudies" "carIBStudies" "carIMEXAmerStudies" "carIWStudies"))
       ("carimexa" "cs-Mexican Amer Studies" "spss-match" ("carIMEXAmerStudies"))
       ("cariasam" "cs-Asian Amer Studies" "spss-match" ("carIASAM" ))
       ("cariamst" "cs-American Studies" "spss-match" ( "carIAMST" ))
       ("cariwstu" "cs-Women's Studies" "spss-match" ( "carIWStudies"))
       )
     ( CARWRITE
       ("cariengl" "cw-English" "spss-match" ("carIENGLit"))
       ("carijour" "cw-Journalism" "spss-match" ("carIJOURNalism"))
       )
     )
     "Does not include new scales and subscales. FROM 2009 SPSS VARS-LABELS
  List= (Variable   Label   Match-Java-spss-var? (NIL=couldn't find similar) quest-or-scale-match-list (note: scale list is symbol + label)"
      )|#


;;END OF JAVA QUEST MATCHES ---------------------


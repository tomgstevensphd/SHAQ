;;*********************** U-HQ&composite-scales.lisp ********************


;;  ***************     FROM  HappinessQuotient.java **************
;;
;; * MY REGRESSION MODEL FOR CALCULATING HAPPINESS QUOTIENT
;; BASED UPON THE JULY 2005 OVER 29 SAMPLE (DATA FOR ALL IS VERY SIMILAR)
;; Data for WHOLE SAMPLE IS
;; N= 480; MEAN = 3.73720; SD=.487810; with overallHap, r=.731 rsq=.534;
;;  for health r=.231; for relationship r=.484,for loDep=.525; for loAnx r= .380; for loAng r=.259.
;; 
;; USING SPSS VARIABLES THE MODEL IS
;; 
;;  .575*sselfman + .626*semotcop + .413*stbslfwo + .443*siecontr + .660*sworldvi + .533*sgrfears + .634*sslfconf
;;   + .397*sassert + .368*sintimat + .307*sindepre +  .349*sromantc + .117*slibrole + .120*slithach + .164*slithint
;;  (+ .195*slrnskls for second model)



#|(defun  calcHQscore ()
  "In U-data-results-functions. Based upon actual data--tho actual mean was 103+ and SD 10+ of subjects in total (not just over 29) sample."
  ((HQdoubleScore);;      double HQdoubleScore = 0;
   (double rawHQregressionScore1 (calcRawHQRegressionScore))
   )
  (if  ( < rawHQregressionScore1 999)
      ;;SSSS START HERE WRITING HQ CALC FUNCTION FROM JAVA
       ;; convert to IQ like score, mean about 100, SD about 10
       ;; OLD based upon mean and SE of HQ regression model above
       ;;  HQ = (RawRegressionScore - .6122) x (10 divBy .104)
       ;;         + 100;   (10 divBy .104 = 96.1538)
       ;; NEW BASED UPON CORRELATION MODEL REGRESSION FORMULA
       ;; MEAN=3.73720; SD=.487810
       (setf HQdoubleScore  (* (- rawHQregressionScore1 3.6782)  (/10 .47130) + 100))

       ;; convert to integer for HQ--NOTE HOW MUST CREATE NEW DOUBLE OBJECT FIRST
;;       java.lang.Double HQdoubleScore1 = new java.lang.Double(HQdoubleScore)
;;       HQScore = HQdoubleScore1.intValue();
      ))|#
;; 



;;DEFPARAMETERS AND TEXT FOR HQ, etc.
;;
#|(defparameter   HappinessQuotientResultsText (format nil "
             ~A 
   YOUR HAPPINESS QUOTIENT (HQ) SCORE = ~A~%~A~%"    
          HQResultsTitleSection  hQscore HQResultsExplainationText))|#

#|(defparameter *HQResultsTitle "YOUR HAPPINESS QUOTIENT (HQ) RESULTS")|#
(defparameter *HQResultsExplainationText "
HQ MEANING and IMPORTANCE
     Your results are based upon the data analysis of hundreds of persons who have completed SHAQ. Your HQ score is calculated from a composite score from SHAQ scales.  The underlying regression model based upon these scales correlates very well with peoples overall happiness. The SHAQ scales had moderate to high positive correlations with almost all outcome measures.  SHAQ’s subscales had surprisingly high multiple correlations with the emotional outcomes; with Overall Happiness, R = .865; with Low Depression, R = .730; with Low Anxiety R = .675; with Low Anger-Aggression,  R = .701.  Results for other outcomes included for the Relationship Outcomes scale, R = .693; for the Health Outcomes scale, R = .816; for Highest Income, R = .486; and for Educational Attainment, R = .458.  Behavioral measures used as outcomes also yielded good results.  For example, for a Major Depression Checklist, R = .596; Amount of Therapy for Depression, R = .452; and Amount of Medication for Depression, R = .409. The research results overall support SHAQ’s reliability, validity, and utility. 
     These  SHAQ scales together are very good at summarizing the factors that correlate with happiness.  Though we cannot say for sure that these SHAQ variables cause overall happiness, you can see that it might be a very good idea to try to maximize these factors within yourself if you want to maximize your happiness in your future. Note that these 13 factors are all primarily determined our previous learning and we CAN CHANGE THEM BY NEW LEARNING.  Some key SHAQ scales most strongly related to overall happiness and low negative emotions are Self-Management Skills, Emotional Coping Skills, Life theme--achievement, Life theme--internal values, Self-Worth beliefs, Internal Control beliefs, Positive World View, Low Greatest Fears, Self-Confidence Areas, and interpersonal skills and habits related to assertive conflict resolution, intimacy, valuing others, colaboration, and romantic habits (see the actual scale names and help below).

HOW YOUR HQ SCORE COMPARES TO OTHERS' HQ SCORES
        We used IQ (Intelligence Quotient) as our model for computing your score. The following list shows first an HQ score then a percentile. For example an HQ score of 112 would be about the 80th percentile. That means that about 80% of all people completing SHAQ scored below 112.
       HQ Score =  Percentile 
        125 = 99%;  116 = 95%;  112 = 90%;  108 = 80%;  105 = 70%;  103 = 60%;  100 = 50%;    97 = 40%;    95 = 30%;    92 = 20%;    88 = 10%
        By Quartiles:      125 = 99%;        107 = 75%;       100 = 50%;       93 = 25%  

HOW TO INCREASE YOUR HQ 
        Study  your SHAQ Results.  Identify scales that may be areas of your life that you would like to improve.  You can start you program to improve your HQ by (1) studying the questions to see why you scored the way you did and (2) follow the help links suggested under each scale to read more about how you can improve yourself in that area.")

(defparameter  *defaultHQText  "
  -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
* NOTICE: HAPPINESS QUOTIENT (HQ) ==>  Sorry, we cannot provide a Happiness Quotient (HQ) Score because SHAQ does not have results for all the scales needed to calculate the HQ score. Try retaking SHAQ and selecting one of the HQ score boxes.
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------")

(defparameter *vertical-bars-line
"    ||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||")

#| ;; for resources/recommendations
 helpInfo =
     "You Happiness Quotient (HQ) may help you understand some of the personal factors in yourself that may contribute to your happiness (or unhappiness)"
 public static String helpLink = "http:;; www.csulb.edu/~tstevens?";
|#




;;*************************** HQ.lisp ************************************
;;

#|From RA-865-HapByNewScales-  SPSS Output file. Model Vars
a. Predictors: (Constant), IntSS1b.Open Honest, sssw.Accept all of self 1, ssb2.Not belief in astrology 1, sscp.Not eat 1, IntSS8.Separate, sscp.Pos acts,fun,exercise, ssb3.Not entitlement Beliefs, sT6.GodSpiritualReligion, sscp.Not smoke,drugs, ssie.Not codependent, IntSS3.LiberatedRoles-same slibrole, sssc.SelfConf-Natural science, sswf.Not illness-death fears, ssb2.Identify with abstract whole, ssb2.Meaning from abstract absolutes, sssm.Time mgmt,goal-set/plan,prior task list, sT10.OvercomeProblems-AcceptAllofSelf, sssc.SelfConf-Art, creative, ssie.Not care-provider for other(s), sssm.Busy,accomplishment,efficient, sswf.Not poverty-failure fears, ssb2.Inner goodness in all, sswv.Optimism about self and world, sT11.DutyPunctuality, IntSS2.Romantic-same sromantc, ssb2.Forgiving-egalitarian, sT9.ValueSelf-AllUnconditionally, sssc.SelfConf-Learning, sssm.Self-care health--exercise,diet,sleep, sscp.Not anger,blame,withdraw, sscp.Prob solve,talk,selfexpl,expect, ssie Autonomy, independence, IntSS6.Positive Supportive Com, ssb2.Belief in LifeAfterDeath 1, sswf.Not not social or alone, sT4.SuccessStatusIncomeMaterialism, sssc.SelfConf-Helping skills, IntSS7.Collaborative, IntSS5.Rel Independ, sswf.Not self-related fears, sssc.SelfConf-Interpersonal skills, sssm.Self-develop,take advice,habit chng, sT8.AttentionFunEasy, playful, adventure, ssb2.Ethics grounded in abstract absolutes, sT3.Family-EmotionalSupport and care giving,parental love-respect, sswv.Grateful, abundance beliefs, sT7.ImpactContributionMentalChallenge-exploration, IntSS4.Love Respect, sscp.Pos thoughts,phil,pep talk, sssw.Self-worth not contig on others,entitle, sssc.SelfConf-self contr
ol, discipline, motiv, sT5.OrderPerfectionGoodness,cleanliness,juatice,simplicity,punctual, sT2.SocialIntimacyNotFamily, love/rom, respect,support,agreeable, sT1.HigherSelf-Integrity, happy, balance,devel,discpn,phil,, sssc.SelfConf-positive emot coping, IntSS1a.AssertCR, sssw.Gratitude-happy for all, ssb3.Forgiving-not punative
b. Dependent Variable: s.Overall happiness
|#


;;MAKE-HQ-TEXT
;;
;;ddd
(defun make-HQ-text()
  "In U-HQ&composite-scales"
  (let
      ((HQ-text)
       (HQss-score-text)
       (first-missing-scale);; rawHQRegressionScore  HQ-scale-data-list)
       )
    (multiple-value-setq (HQss-score-text first-missing-scale)
                          (calc-HQss))
    (cond
     (HQss-score-text
      (setf HQ-text (format nil 
 "~%~A~%
                                                  >>>>> YOUR HAPPINESS QUOTIENT (HQ) SCORE <<<<<

   ==> YOUR HQ SCORE: ~A     [All users Average-Mean Score = 100, StandardDeviation (SD) = 10]  
~A~%
~A"*vertical-bars-line HQss-score-text *HQResultsExplainationText *vertical-bars-line))
      )
     (t (setf HQ-text *defaultHQText)))
    (values HQ-text first-missing-scale)
    ;;end let, make-HQ-text
    ))
;;TEST
;;CL-USER 24 > (make-HQ-text)
#| WORKS= "
   >>>>>>>>>>>>>>>>>>>>> YOUR HAPPINESS QUOTIENT (HQ) SCORE <<<<<<<<<<<<<<<<<<<<< 
   ==> YOUR HQ SCORE: 109.85   [All users average/mean score = 100, StandardDeviation (SD) = 10]  

* HQ MEANING and IMPORTANCE
     Your results are based upon the data analysis of hundreds of persons who have completed SHAQ. Your HQ score is calculated from a composite score from 13 SHAQ scales.  The underlying regression model based upon these scales correlates very well with peoples overall happiness (R = .787) and was able to account for a high percentage of the overall happiness score (61.9 %).  That means that key SHAQ scales accounted for more of the variance than all unknown factors combined (38.1%). Uown factors could include genetic factors, circumstantial factors, and other unknown personal factors.  These 13 SHAQ scales together are very good at summarizing the factors that correlate with happiness.  Though we cannot say for sure that these SHAQ variables cause overall happiness, you can see that it might be a very good idea to try to maximize these factors within yourself if you want to maximize your happiness in your future. Note that these 13 factors are all primarily determined our previous learning and we CAN CHANGE THEM BY NEW LEARNING. The 13 SHAQ scales are Self-management skills, Emotional coping skills, Life theme--achievement, Life theme--internal values, Self-worth beliefs, Internal control beliefs, Positive world view, Low greatest fears, Self-confidence areas, Assertive conflict resolution habits, Intimacy habits, Independent intimacy habits Romantic habits 

* HOW YOUR HQ SCORE COMPARES TO OTHERS' HQ SCORES
        We used IQ (Intelligence Quotient) as our model for computing your score. The following list shows first a percentile then a HQ score. For example an HQ score of 112 would be about the 80th percentile. That means that about 80% of all people completing SHAQ scored below 112. Percentiles with corresponding HQ score: 10%=88; 20%=92; 25%=94; 30%=95; 40%=97; 50%=100; 60%=103; 70%=105; 75%=107; 80%=108; 90%=112; 95%=116; 99%=125 (like IQ, the average/mean = 100 and SD = 10).   
                     
* HOW TO INCREASE YOUR HQ 
        Study your results from the 13 scales listed above.  Identify scales that may  be areas of your life that you would like to improve.  You can start you program to improve your HQ by (1) studying the questions to see why you scored the way you did and (2) follow the help links suggested under each scale to read more about how you can improve yourself in that area.
"
|#

;;  (slot-value (eval *ST1HIGHERSELF-inst) 'relative-score)))
;;  (slot-boundp (eval *ST1HIGHERSELF-inst) 'relative-score)))
;;CALC-HQSS
;;
;;ddd
(defun calc-HQss ()
  "In U-HQ&composite-scales, RETURNS (values HQ-score-text missing-rel-scores-p HQss rawHQRegressionScore  HQ-scale-data-list ). R w/sehappy=.803. Mean=13.3727 SD=2.60388 N=921.  If no rel-score found, returns missing-rel-scores-p = scalevar"
  (let
      ((HQ-scale-data-list
        `((sT1HigherSelf  0.380 )
          ( sT2SocIntimNoFam 0.256)
          (sT3FamCare 0.406 )
          (sT4SuccessStatusMater 0.295 )
          (sT5-OrderPerfectionGoodness 0.310 )
          (sT6GodSpiritRelig 0.302 )
          (sT7ImpactChallengeExplor 0.347 )
          (sT8AttentionFunEasy 0.311 )
          (sT9ValueSelfAllUncond 0.461 )
          (sT10OvercmProbAcceptSelf 0.185 )
          (sT11DutyPunctual 0.265 )
          #| ;;redundant bec of subscales
       (sworldview  0. )
       (stbslfwo  0. )
       (siecontr  0. )
       (sethbel  0. ) ;;new label
       (sgrfears  0. )
       (sslfconf  0. )
       (sselfman  0. )
       (semotcop  0. )|#
          (IntSS1aAssertCR  0.463 )
          (IntSS1bOpenHon  0.503 )
          (IntSS2Romantc   0.394  )
          (IntSS3LibRole  0.166 )
          (IntSS4LoveRes  0.476 )
          (IntSS5Indep  0.379 )
          (IntSS6PosSup  0.421)
          (IntSS7Collab  0.406 )
          ;;subscales only
          (sswvgratpt  0.722 )
          (sswvoptims  0.543 )
          (sswventit  0.157 )
          (ssswNonCont  0.364 )
          (ssswHapAllGrat  0.567 )
          (ssswAcAllSelf  0.160 )
          (ssieautony  0.553 )
          (ssiencodep  0.213 )
          (ssienother  0.246 )
          (ssb2Ethic  0.346 )
          (ssb2Forgiv  0.282 )
          (ssb2IDgrnd  0.258 )
          (ssb2GrndMng  0.256 )
          (ssb2InrGood  0.327 )
          ;; (ssb2noAstr  0.087 )
          ;; (ssb2lifad  0.263 )
          (sswfsocial  0.492 )
          (sswfself  0.574 )
          (sswfpovfai  0.380 )
          (sswfilldea  0.221 )
          (sssclearn  0.408 )
          (sssccopopt  0.740 )
          (ssscsmsmsd  0.668 )
          (ssscinterp  0.577)
          (ssscallhelp  0.480 )
          (ssscscience  0.318 )
          (ssscartcre  0.349 )
          (sssmTimeManGoalSet 0.411 )
          (sssmAccompLoRush 0.553 )
          (sssmSelfDevel 0.558 )
          (sssmHealthHabs 0.460 )
          (sscpProbSolv  0.491 )
          (sscpPosThoughts  0.577 )
          (sscpPosActs  0.362 )
          (sscpNoBlameAngerWDraw  0.492 )
          (sscpNotSmokDrugMed  0.192 )
          (sscpNotEat  0.200 )
          ))
       (missing-rel-scores-p)
       (HQss)    
       (rawHQRegressionScore 0)
       (HQ-score-text)
       (scalevar)
       (r)
       (scale-inst)
       (rel-score)
       ;;end let vars
       )
    ;;calc the HQss score
    (loop
     for scalelist in HQ-scale-data-list
     do
     (setf scalevar (first scalelist)
           r (second scalelist)
           scale-inst (get-class-inst scalevar)
           rel-score (get-slot-value scale-inst 'relative-score))
     
     (cond
      (rel-score
       ;;find rawHQRegressionScore
        (setf rawHQRegressionScore (+ rawHQRegressionScore (* r rel-score))))
      (t (setf missing-rel-scores-p scalevar)
       (return)))
     ;;end loop
     )
     
    ;;find HQss
    ;;HQ = (RawRegressionScore - rel-score-mean) x (HQ-sd divBy raw-reg-sd) + HQmean
    ;;HQ = (RawRegressionScore - .6122) X (10 /  .104) + 100
    ;; HQ = (RawRegressionScore - .6122) x (10 divBy .104)  + 100;   (10 divBy .104 = 96.1538)
    ;; Overall rawHQss Mean=13.3727 SD=2.60388 N=921."
   (unless missing-rel-scores-p
    (setf HQss (+ (* (- rawHQRegressionScore 13.3727) (/ 10  2.60388)) 100)
          HQ-score-text (format nil "~2$" HQss)))

    (values HQ-score-text missing-rel-scores-p HQss  rawHQRegressionScore  
            HQ-scale-data-list )
    ;;end let, calc-HQss
    ))
;;TEST
;;  (calc-HQss)


;;***************** CURRENT SCALES LISTS **********************
#|(defparameter *hq-scales ;; (find-nths 1 *hq-all-scale-list)) see defun below
  '((HQ
     HIGHERSELFSCALE
     ST1HIGHERSELF
     ST2SOCINTIMNOFAM
     ST3FAMCARE
     ST4SUCCESSSTATUSMATER
     ST5-ORDERPERFECTIONGOODNESS
     ST6GODSPIRITRELIG
     ST7IMPACTCHALLENGEEXPLOR
     ST8ATTENTIONFUNEASY
     ST9VALUESELFALLUNCOND
     ST10OVERCMPROBACCEPTSELF
     ST11DUTYPUNCTUAL
#| redundant
    SWORLDVIEW
     STBSLFWO
     SIECONTR
     SETHBEL
     SGRFEARS
     SSLFCONF
     SSELFMAN
     SEMOTCOP|#
     INTSS1AASSERTCR
     INTSS1BOPENHON
   ;;  INTSS2ROMANTC
  ;;   INTSS3LIBROLE
     INTSS4LOVERES
     INTSS5INDEP
     INTSS6POSSUP
     INTSS7COLLAB
  ;;   SCOLLEGE
#|     SSL1CONFIDEFFICSTUDYTEST
     SSL1BCONFIDNOTAVOIDSTUDY
     SSL2SATISCAMPUSFACFRIENDSGRDES
     SSL3WRITINGSKILLS
     SSL4BLDMENTALSTRUCT
     SSL5BASICSTUDYSKILLS
     SSL6SELFMANACADGOALS
     SSL7MATHSCIPRINC
     SSL8STUDYENVIR
     SSL9ATTENDHW
     SSL10MEMNOTANX
     SSL11NOTNONACADMOT
     SSL12STDYTMAVAIL
     SSL13VERBALAPT
     SSL14MATHAPT|#
#|     SINCAR
     SINBUS
     SINENGR
     SINFINEA
     SINHELP
     SINLANG
     SINMED
     SINMILTC
     INNATSCI
     SINSOCSC
     SINWOETH
     SINWRITE
     SEHAPPY
     SRDEPRES
     SRANXIET
     SRANGAGG
     SRELHLTH
     SRPEOPLE|#
     SSWVGRATPT
     SSWVOPTIMS
     SSWVENTIT
     SSSWNONCONT
     SSSWHAPALLGRAT
     SSSWACALLSELF
     SSIEAUTONY
     SSIENCODEP
     SSIENOTHER
     SSB2ETHIC
     SSB2FORGIV
     SSB2IDGRND
     SSB2GRNDMNG
     SSB2INRGOOD
     SSB2NOASTR
     SSB2LIFAD
     SSWFSOCIAL
     SSWFSELF
     SSWFPOVFAI
     SSWFILLDEA
     SSSCLEARN
     SSSCCOPOPT
     SSSCSMSMSD
     SSSCINTERP
     SSSCALLHELP
     SSSCSCIENCE
     SSSCARTCRE
     SSSMTIMEMANGOALSET
     SSSMACCOMPLORUSH
     SSSMSELFDEVEL
     SSSMHEALTHHABS
     SSCPPROBSOLV
     SSCPPOSTHOUGHTS
     SSCPPOSACTS
     SSCPNOBLAMEANGERWDRAW
     SSCPNOTSMOKDRUGMED
     SSCPNOTEAT
 #|    HAPSDMEANSPIRITSS
     HAPCAREEREXSS
     HAPRECPESS
     HAPAREASS
     HAPFAMSS
     HAPROMSS
     HAPFRIENDSSS
     HAPFUTURESS
     HAPPASTSS
     HAPRECENTSS
     SSRECLOSEFRIENDS
     SSREROMRELSUC
     SSRENUMFRIENDS
     SSREHAPSUCFRS
     SSDELODEPSYMP
     SSDELODEPTREATS
     SSAXLOPERFGENANX
     SSAXLOWFEAROCD
     SSAXLOANXTREATS
     SSHELONEGADDICTHABS
     SSHELOFREQILL
     SSHEPELOWEIGHT
|#    
     )))|#

#|(defun find-nths (nth list)
  (let
      ((cars)
       )
    (loop
     for item in list
     do
     (setf cars (append cars (list (nth nth  item))))
     )
  cars
  ))|#


;;FROM SHAQ-new-scales.lisp
;;
#|(defparameter *hq-all-scale-list
  '((my-defclass HQ  (composite-scale))
    (my-defclass HigherSelfScale (composite-scale))
    (my-defclass sT1HigherSelf  (values-themes HQ scale))
    (my-defclass  sT2SocIntimNoFam (values-themes HQ scale   ))
    (my-defclass sT3FamCare (values-themes HQ scale  ))
    (my-defclass sT4SuccessStatusMater  (values-themes HQ scale))
    (my-defclass sT5-OrderPerfectionGoodness  (values-themes HQ scale))
    (my-defclass sT6GodSpiritRelig  (values-themes HQ scale))
    (my-defclass sT7ImpactChallengeExplor  (values-themes HQ scale))
    (my-defclass sT8AttentionFunEasy  (values-themes HQ scale))
    (my-defclass sT9ValueSelfAllUncond  (values-themes HQ scale))
    (my-defclass sT10OvercmProbAcceptSelf  (values-themes HQ scale))
    (my-defclass sT11DutyPunctual  (values-themes HQ scale))
    (my-defclass sworldview  (beliefs HQ scale))
    (my-defclass stbslfwo  (beliefs HQ scale))
    (my-defclass siecontr  (beliefs HQ scale))
    (my-defclass sethbel  (beliefs HQ scale)) ;;new label
    (my-defclass sgrfears  (beliefs HQ scale))
    (my-defclass sslfconf  (skills-confidence HQ scale))
    (my-defclass sselfman  (skills-confidence HQ scale))
    (my-defclass semotcop  (skills-confidence HQ scale))
    (my-defclass IntSS1aAssertCR  (interpersonal HQ scale))
    (my-defclass IntSS1bOpenHon  (interpersonal HQ scale))
    (my-defclass IntSS2Romantc  (interpersonal HQ scale))
    (my-defclass IntSS3LibRole  (interpersonal HQ scale))
    (my-defclass IntSS4LoveRes  (interpersonal HQ scale))
    (my-defclass IntSS5Indep  (interpersonal HQ scale))
    (my-defclass IntSS6PosSup  (interpersonal HQ scale))
    (my-defclass IntSS7Collab  (interpersonal HQ scale))
    (my-defclass scollege  (ACAD-LEARNING scale))
    (my-defclass ssl1ConfidEfficStudyTest  (acad-learning scale))
    (my-defclass ssl1bConfidNotAvoidStudy  (acad-learning scale))
    (my-defclass ssl2SatisCampusFacFriendsGrdes   (acad-learning scale))
    (my-defclass ssl3WritingSkills  (acad-learning scale))
    (my-defclass ssl4BldMentalStruct  (acad-learning scale))
    (my-defclass ssl5BasicStudySkills  (acad-learning scale))
    (my-defclass ssl6SelfmanAcadGoals  (acad-learning scale))
    (my-defclass ssl7MathSciPrinc  (acad-learning scale))
    (my-defclass ssl8StudyEnvir  (acad-learning scale))
    (my-defclass ssl9AttendHW  (acad-learning scale))
    (my-defclass ssl10MemNotAnx  (acad-learning scale))
    (my-defclass ssl11NotNonAcadMot  (acad-learning scale))
    (my-defclass ssl12StdyTmAvail  (acad-learning scale))
    (my-defclass ssl13VerbalApt  (acad-learning scale))
    (my-defclass ssl14MathApt  (acad-learning scale))
    (my-defclass sincar  (career-interest scale))
    (my-defclass sinbus  (career-interest scale))
    (my-defclass sinengr  (career-interest scale))
    (my-defclass sinfinea  (career-interest scale))
    (my-defclass sinhelp  (career-interest scale))
    (my-defclass sinlang  (career-interest scale))
    (my-defclass sinmed  (career-interest scale))
    (my-defclass sinmiltc  (career-interest scale))
    (my-defclass inNatSci  (career-interest scale))
    (my-defclass sinsocsc  (career-interest scale))
    (my-defclass sinwoeth  (career-interest scale))
    (my-defclass sinwrite  (career-interest scale))
    (my-defclass sehappy  (outcome scale))
    (my-defclass srdepres  (outcome scale))
    (my-defclass sranxiet  (outcome scale))
    (my-defclass srangagg  (outcome scale))
    (my-defclass srelhlth  (outcome scale))
    (my-defclass srpeople  (outcome scale))
    (my-defclass sswvgratpt  (sworldview subscale))
    (my-defclass sswvoptims  (sworldview subscale))
    (my-defclass sswventit  (sworldview subscale))
    (my-defclass ssswNonCont  (stbslfwo subscale))
    (my-defclass ssswHapAllGrat  (stbslfwo subscale))
    (my-defclass ssswAcAllSelf  (stbslfwo subscale))
    (my-defclass ssieautony  (siecontr subscale))
    (my-defclass ssiencodep  (siecontr subscale))
    (my-defclass ssienother  (siecontr subscale))
    (my-defclass ssb2Ethic  (sethbel subscale))
    (my-defclass ssb2Forgiv  (sethbel subscale))
    (my-defclass ssb2IDgrnd  (sethbel subscale))
    (my-defclass ssb2GrndMng  (sethbel subscale))
    (my-defclass ssb2InrGood  (sethbel subscale))
    (my-defclass ssb2noAstr  (sethbel subscale))
    (my-defclass ssb2lifad  (sethbel subscale))
    (my-defclass sswfsocial  (sgrfears subscale))
    (my-defclass sswfself  (sgrfears subscale))
    (my-defclass sswfpovfai  (sgrfears subscale))
    (my-defclass sswfilldea  (sgrfears subscale))
    (my-defclass sssclearn  (sslfconf subscale))
    (my-defclass sssccopopt  (sslfconf subscale))
    (my-defclass ssscsmsmsd  (sslfconf subscale))
    (my-defclass ssscinterp  (sslfconf subscale))
    (my-defclass ssscallhelp  (sslfconf subscale))
    (my-defclass ssscscience  (sslfconf subscale))
    (my-defclass ssscartcre  (sslfconf subscale))
    (my-defclass sssmTimeManGoalSet (sselfman  subscale))
    (my-defclass sssmAccompLoRush (sselfman  subscale))
    (my-defclass sssmSelfDevel (sselfman  subscale))
    (my-defclass sssmHealthHabs (sselfman  subscale))
    (my-defclass sscpProbSolv  (semotcop subscale))
    (my-defclass sscpPosThoughts  (semotcop subscale))
    (my-defclass sscpPosActs  (semotcop subscale))
    (my-defclass sscpNoBlameAngerWDraw  (semotcop subscale))
    (my-defclass sscpNotSmokDrugMed  (semotcop subscale))
    (my-defclass sscpNotEat  (semotcop subscale))
    (my-defclass hapSDMeanSpiritSS  (sehappy subscale))
    (my-defclass hapCareerExSS  (sehappy subscale))
    (my-defclass hapRecPESS (sehappy subscale))
    (my-defclass hapAreaSS  (sehappy subscale))
    (my-defclass hapFamSS  (sehappy subscale))
    (my-defclass hapRomSS  (sehappy subscale))
    (my-defclass hapFriendsSS  (sehappy subscale))
    (my-defclass hapFutureSS  (sehappy subscale))
    (my-defclass hapPastSS  (sehappy subscale))
    (my-defclass hapRecentSS  (sehappy subscale))
    (my-defclass ssreCloseFriends  (srpeople subscale))
    (my-defclass ssreRomRelSuc  (srpeople subscale))
    (my-defclass ssreNumFriends  (srpeople subscale))
    (my-defclass ssreHapSucFrs  (srpeople subscale))
    (my-defclass ssdeLoDepSymp  (srdepres subscale))
    (my-defclass ssdeLoDepTreats  (srdepres subscale))
    (my-defclass ssaxLoPerfGenAnx  (sranxiet subscale))
    (my-defclass ssaxLowFearOCD  (sranxiet subscale))
    (my-defclass ssaxLoAnxTreats  (sranxiet subscale))
    (my-defclass ssheLoNegAddictHabs (srelhlth subscale))
    (my-defclass ssheLoFreqIll (srelhlth subscale))
    (my-defclass sshePELoWeight (srelhlth subscale))
    ))|#














#|xxx *************** OLD-ORIGINAL JAVA VERSION ************
;; OLD BETA-MODEL VERSION, PRE USING CORRELATION COEFICIENTS
;; 
;; NOTE: I tried variations of this model (adding leaning skills, subtracting lower corelation scales, etc.; but the changes made very little difference in the correlations (about 1-5 thousands).  Also, there was very little diference between the two data files (all vs over 29).
;; So lets drop those statements.

;;  * ME: FOR REGRESSION MODEL OVERALL 62% OF VARIANCE ACCOUNTED FOR R = .787!!
;;  SAMPLE WAS N=420 AGE OVER 29 who completed at least the 16 scales
;;  Done on sample up to 7-05
;;  R= .787 R(SQ) = .619;    ALSO SE = .104 F = 36.689  s > .00.0
;; 
;;  EQUATION OVERALL HAPPINESS (AGE > 29) = .181 SelfMan + .157 EmotCop  - .007 LifeTh:Achieve + .155 LifeTh:Social + .048 LifeTh:Obligation - .142 LifeTh:IntValues +
;;           -.078 SelfWorth - .010 IntCont + .335 PosWorView + .224 LoGreatFears + .283 Self-Conf +
;;          .012 AssConRes + .059 IntimacyHab + .074 IndepIntim + .045 RomHabit  - .035 LibRole  -.212
;; 
;; ME: STANDARDIZED BETAS
;;  EQUATION OVERALL HAPPINESS (AGE > 29) = .161 SelfMan + .116 EmotCop - .005 LifeTh:Achieve .094 LifeTh:Social + .033 LifeTh:Obligation - .081 LifeTh:IntValues
;;          -.045 SelfWorth - .008 IntCont + .292 PosWorView + .215 LoGreatFears + .206 Self-Conf
;;         + .011 AssConRes + .062 IntimacyHab + .039 IndepIntim + .058 RomHabit  - .037 LibRole
;; 
;; NOTE: CORRELATIONS OF SOME OF ABOVE SCALES ARE MUCH BETTER THAN BETAS
;; 
;; In SPSS .181 * sselfman + .157 * semotcop - .007 * slithach + .155 * slithsoc + .048 * slithneg - .142 * slithint - .078 * stbslfwo - .010 * siecontr + .335 * sworldvi + .224 * sgrfears + .283 * sslfconf + .012 * sassert + .059 * sintimat +.074 * sindepre +  .045 * sromantc -.035 * slibrole - .212
;; 
;; CALCULATING THE HAPPINESS QUOTIENT (HQ)
;;         This is based upon the above regression model.  The HQ is the predicted happiness value
;;        using the unstandardized B on the scale scores of the various SHAQ scales.
;; 
;;         Must assume mean = mean of overall happiness scale =  .6122
;;         For SD, assume SE of regression model = .104
;; 
;;         RawRegressionScore = results of top non-standardized equation
;; 
;;  HQ = (RawRegressionScore - .6122) x (10 divBy .104)  + 100;   (10 divBy .104 = 96.1538)
;; 
;; Eg.  Score = .70;  (.70 - .61) x 96.15 + 100; .09 x 96.15 = 8.65; 8.65 + 100 = 108.6
;; Eg2. Score = .99; (.99 - .61) = .38; .38 x 96.15 = 36.4; 100 + 36.4 = 136
;; Eg3 Score = .40; (.40 - .61) = -.21; -.21 x 96.15 = -21 + 100 = 79.
#|  2-20-06 REPLACED ABOVE MODEL FROM ACTUAL REGRESSION (RUN AMOK) WITH MY OWN
  MODEL BASED UPON THE ACTUAL BIVARIATE CORRELATIONS BETWEEN THE SCALES AND
  OVERALL HAPPINESS W THE OVER 29 GROUP.
  THE MODEL IS AS FOLLOWS:|#
(defun calcRawHQRegressionScore ()
    "In U-data-results-functions--ORIGINAL JAVA HQ FORMULA."
      ;; (1) need to find actual scale scores and look them up to
      ;; put into formula below.
      ;; (2) need to modify FrameResultsText to include both text and data from
      ;; this file.
      ;; dont' send to dataText.txt file, calculated automatically in SPSS
;;   unquote next line
;;     rawHQRegressionScore = (.181*
      ;; need to find the actual scale (mean relative) scores if they exist
      ;; findIsScaleScored will set FrameResultsText.isCalculate to false if don't
      (let
          ((sSelfMan (slot-value *sselfman-inst 'relative-score))
           (sEmotCop(slot-value *sselfman-inst 'relative-score))
           (LiThAchieve(slot-value *sselfman-inst 'relative-score)) 
           ;; (sLiThSocial) 
           ;; (sLiThObligation (slot-value *sselfman-inst 'relative-score)) 
           (sLiThIntVals (slot-value *sselfman-inst 'relative-score))
           ;; self-worth is iTopBV
           (sSelfWorth (slot-value *sselfman-inst 'relative-score))
           (sIntCont (slot-value *sselfman-inst 'relative-score)) 
           (sPosWorView (slot-value *sselfman-inst 'relative-score))
           (sLoGreatFears (slot-value *sselfman-inst 'relative-score)) 
           ;; Self-Confid is iSelf
           (sSelfConfid  (slot-value *sselfman-inst 'relative-score)) 
           (sAssConRes  (slot-value *sselfman-inst 'relative-score)) 
           (sIntimacyHab  (slot-value *sselfman-inst 'relative-score))
           (sIndepIntim  (slot-value *sselfman-inst 'relative-score)) 
           (sRomHabits  (slot-value *sselfman-inst 'relative-score)) 
           ;; sLibRole ) 
           )
           (cond
            ((null isCalculateHQ) 
             (setf rawHQRegressionScore 999))
            (t    ;; 13 scales included below for calculations
                  (setf rawHQRegressionScore (+ (*.606 sSelfMan ) (*  .583 sEmotCop ) 
                                                (* .093 sLiThAchieve) ;;(* .067  sLiThSocial ) ;;(* .036  sLiThObligation ) 
                                                (* .191  sLiThIntVals ) (* .391  sSelfWorth ) (* .357  sIntCont ) 
                                                (* .687  sPosWorView ) (* .462  sLoGreatFears) (* .629  sSelfConfid )
                                                (* .398  sAssConRes ) (* .376  sIntimacyHab) (* .338  sIndepIntim ) 
                                                (* .302  sRomHabits ) ;;(* .100  sLibRole)
                                                ))
                  ))
           HQRegressionScore;
           ))
|#




;;  public static String className = "HappinessQuotient";
;;  public static String description = "HQ = (RawRegressionScore - 3.6782) x"+  (10 divBy .47130)  + 100 "


;; 13 HQ regression scale scores
#| public static double sSelfMan = 0;
 public static double sEmotCop = 0;
 public static double sLiThAchieve = 0;
 public static double sLiThSocial = 0;
 public static double sLiThObligation = 0;
 public static double sLiThIntVals = 0;
 public static double sSelfWorth = 0;
 public static double sIntCont = 0;
 public static double sPosWorView = 0;
 public static double sLoGreatFears = 0;
 public static double sSelfConfid = 0;
 public static double sAssConRes = 0;
 public static double sIntimacyHab = 0;
 public static double sIndepIntim = 0;
 public static double sRomHabits = 0;
 public static double sLibRole = 0;
|#

;; extra
;;       181 SelfMan + .157 EmotCop  - .007 LifeTh:Achieve + .155 LifeTh:Social + .048 LifeTh:Obligation - .142 LifeTh:IntValues +
;;           -.078 SelfWorth - .010 IntCont + .335 PosWorView + .224 LoGreatFears + .283 Self-Conf +
;;          .012 AssConRes + .059 IntimacyHab + .074 IndepIntim + .045 RomHabit  - .035 LibRole  -.212
;;       sSelfMan = CalcScaleScores.bsSelfManagementScaleInstance.relativeMeanScaleScore;
;;       sEmotCop = CalcScaleScores.bsEmotionManagementScaleInstance.relativeMeanScaleScore;
;;       sLiThAchieve = CalcScaleScores.iLifeThemesAchScaleInstance.relativeMeanScaleScore;
;;       sLiThSocial = CalcScaleScores.iLifeThemesSocScaleInstance.relativeMeanScaleScore;
;;       sLiThObligation = CalcScaleScores.iLifeThemesNegScaleInstance.relativeMeanScaleScore;
;;       sLiThIntVals = CalcScaleScores.iLifeThemesScaleInstance.relativeMeanScaleScore;
;;        ;; self-worth is iTopBV
;;       sSelfWorth = CalcScaleScores.iTopBVScaleInstance.relativeMeanScaleScore;
;;       sIntCont = CalcScaleScores.iIEcontrolScaleInstance.relativeMeanScaleScore;
;;       sPosWorView = CalcScaleScores.iWorldviewScaleInstance.relativeMeanScaleScore;
;;       sLoGreatFears = CalcScaleScores.iWorldviewFearsScaleInstance.relativeMeanScaleScore;
;;       ;; Self-Confid is iSelf
;;       sSelfConfid = CalcScaleScores.iSelfScaleInstance.relativeMeanScaleScore;
;;       sAssConRes = CalcScaleScores.bsAssertiveCRScaleInstance.relativeMeanScaleScore;
;;       sIntimacyHab = CalcScaleScores.bsIntimacyScaleInstance.relativeMeanScaleScore;
;;       sIndepIntim = CalcScaleScores.bsIndependentRelScaleInstance.relativeMeanScaleScore;
;;       sRomHabits = CalcScaleScores.bsRomanticScaleInstance.relativeMeanScaleScore;
;;       sLibRole = CalcScaleScores.bsLiberatedRoleScaleInstance.relativeMeanScaleScore;

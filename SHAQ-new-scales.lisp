;;************************ SHAQ-new-scales.lisp ***************************
;;NOTE: THE FOLLOWING WERE MISSING FROM ANY SCALE (MAY CAUSE INCONSISTENCIES WITH PREVIOUS ANALYSIS?? ;;  THMWHOLENESS(in qvar),not scales (CHANGED TO THMWHOLE, PUT IN SCALE T other maslow  THMRECOG (SOCIAL) put in T ach  THMCREAT (internal) put in T impact;;  THMUNCON (internal) put in T uncondit;;  THMSELFAORIG (redundant);; LRNSREAD (ln area) put in ssl write.;;  INSTSHLP put in IntSS6PosSup;;  INTUNDRL put in IntSS1aAssertCR;;  INRFRIEN put in IntSS5Indep;; ACMTIMEORIG? (samotiv)--DELETED ;;STUCAREE (put in ssl11NotNonAcadMot) ;; ACMSTUDY (fixed prob w/question) ;; ACMSELFS (fixed prob w/question);; INRLUNCH (fixed prob w/qvar) 


;;MAKES WINDOW SHOWING THESE CLASSES
;; (LIST-SCALECLASSES)
;; (setf *make-defs-file-p T)
;;-------------------------------------- FOR DELIVERY ------------------------------------------------
;; FOR DELIVER, MY-DEFCLASS MUST have *make-defs-file-p = T , which generates normal CLOS defclass defs in shaq-new-scales-compile.lisp and instances in shaq-new-scale-insts.lisp.  
;;BUT THIS SHOULD BE DONE OUTSIDE OF APPLICATION BUILDER:
;;STEP 1:*make-defs-file-p = T  (setf *make-defs-file-p T)
;;STEP 2: DELETE THE UNWANTED CLASSES/INSTS IN THE 2 FILES:
;;   shaq-new-scales-compile.lisp AND shaq-new-scale-insts.lisp
;;STEP 3:  COMPILE shaq-new-scales.lisp TO append these 2 files.
;;-----------------------------------------------------------------------------------------------------------------

(defparameter *make-def-file  "C:\\3-TS\\LISP PROJECTS TS\\SHAQ\\shaq-new-scales-compile.lisp")

;;SCALE GROUPS
(defparameter *scale-groups 
  '(BIO THEMES-VALUES BELIEFS SKILLS-CONF INTERPERS ACAD-LRN
        OUTCOME CAREER  OTHER))



;;MY-DEFCLASSES CAUSES ERRORS IN DELIVER IF TRY TO CREATE INSTANCES 


  (my-defclass BIO (assessment per-system)
               ()           
               (:default-initargs
                :title "BIO"
                :scale-group-description "Biographical data"
                ))


  (my-defclass VALUES-THEMES (assessment per-system)
               ()           
               (:default-initargs
                :title "VALUES-THEMES"
                :scale-group-description "The 11 Value-Themes scales are the result of a factor and logical analysis of the original four scales Achievement-Status; Social-Family Related; Internal-Intrinsic; and Non-Dysfunctional Values-Themes. "
                ))

  (my-defclass BELIEFS  (assessment per-system)
               ()           
               (:default-initargs
                :title "BELIEFS"
                :scale-group-description "These scales are almost exactly from items originally presented in the book and were supported by factor analytic study. "
                ))

  (my-defclass SKILLS-CONFIDENCE  (assessment per-system)
               ()           
               (:default-initargs
                :title "SKILLS-CONFIDENCE"
                :scale-group-description "The following scales cover cognitive-behavioral skill areas  important to happiness and life success.  The Self-Confidence scale is largely an overview consisting of items each covering broad skill areas. "
                ))
  (my-defclass INTERPERSONAL (assessment per-system)
               ()           
               (:default-initargs
                :title "INTERPERSONAL ATTRIBUTES"    
                :scale-group-description "These interpersonal scales were part of the Stevens Relationship Questionnaire (SRQ) and have previous validating evidence from an earlier studies.  Most items on these scales were originally taken from materials developed for assertion training and marital relationship workshops, and had been clinically tested on hundreds of consumers."
                ))
  (my-defclass ACAD-LEARNING (assessment per-system)
               ()           
               (:default-initargs
                :title "ACADEMIC-LEARNING"     
                :scale-group-description "Several academic scales were created after factor analysis of the original five scales of Learning and Study Skills,  Learning Skill Areas, Learning Disabilities, Academic Motivation, and Academic Satisfaction.  The following 12 scales and 2 self-report aptitude items are more independent and specific."
                :help-links '("LEARN.htm")
                ))
  (my-defclass CAREER-INTEREST (assessment per-system)
               ()           
               (:default-initargs
                :title "CAREER/MAJOR INTEREST"
                :scale-group-description "The college major  interest scales divided common academic major areas into sets using typical groupings in universities, and groupings by the Strong Interest Inventory as a basis."
                ))
  (my-defclass OUTCOME (assessment per-system)
               ()           
               (:default-initargs
                :title "OUTCOME"
                :scale-group-description " "
                ))
  #|(my-defclass values-themes (assessment per-system)
    ()           
    (:default-initargs
     :scale-group-description " "
    ))
(my-defclass values-themes (assessment per-system)
    ()           
    (:default-initargs
     :scale-group-description " "
    ))|#

  ;;xxx  ---------------------- MULTI-SELECTION CATS=QUESTIONS --------------
  ;;THESE ARE USED FOR CLASSIFYING QUESTIONS (or possibly scales where all questions are MAQs)

  ;; NOTE: QVAR DATA IS IN *SHAQ-question-variable-lists


  ;;FOR ID
  (my-defclass BIO-TEXT (text-answer-question scale) ;;was BIO
               ;;don't classify as BIO, bec don't want to be run by make-scales-frames
               ()
               (:default-initargs
                :name-string "BIO-TEXT-Qs"
                :label  "Biog Text Qs"
                :scale-name   "Biographical Text Questions"
                :description "Basic User Information"
                :scale-questions '(FRAME-BIO-INFO  FRAME-FAMILY-INFO)
                :num-questions 0
                ))


 ;;CL-USER 12 > *shaq-all-intro-question-categories
 ;;  ((ID UTYPE UGOALS BIO3EDUC BIO4JOB BI07LANG BIO1ETHN BIORELAF)  ;;("Biographical Information:"))

  (my-defclass INTRO-MAQ ( multi-answer-scale)
               ;;don't classify as BIO, bec don't want to be run by make-scales-frames
               ()
               (:default-initargs
                :name-string "INTRO-MAQ"
                :label  "Biographical MultAnsQuests"
                :scale-name   "Biographical Multi-Answer Questions"
                :description "Additional User Information"
                :scale-questions '(UTYPE UGOALS)
                :num-questions 0
                ))

  (my-defclass BIO-MAQ (multi-answer-scale)
               ;;don't classify as BIO, bec don't want to be run by make-scales-frames
               ()
               (:default-initargs
                :name-string "BIO-MAQ"
                :label  "Biographical MultAnsQuests"
                :scale-name   "Biographical Multi-Answer Questions"
                :description "Additional User Information"
                :scale-questions '(BIO4JOB BIO7LANG BIO1ETHN BIORELAF SFAMILY)
                :num-questions 5
                ))



  ;;COMPOSITE SCALES ---- must define class before subclasses ----------

  ;;COMPOSITE-SCALE SCALES
  ;;
  ;;HQ SCALE
  (my-defclass HQ  (composite-scale)
               ()
               (:default-initargs
                :name-string "HQ"
                :label  "HQ-HapQuot"
                :scale-name "Happiness Quotient Scale (HQ)"
                :description "The HQ is a simple formula for estimating ones overall ability to achieve happiness.  The HQ is the linear combination of the 56 non-academic SHAQ scales.  The weights are the correlations of the individual scales with happiness.   One use of the HQ is to give users feedback about their progress developing success and happiness-related attributes. 
     This scale correlated .865 with overall happiness, .730 with low depression, .675 with low anxiety, .701 with low anger/aggression, .816 with the health outcomes scale, and .693 with overall relationship success.  It also correlated .486 with income, .458 with education level, and .393 with college grade average.  By any psychological research standards, these are high correlations showing that  HQ is a powerful predictor of not only overall happiness and other emotions, but of life success in the areas of  relationships, career, and health."
                :scale-group-name   "composite-scale"
                :scale-questions '()
                :subscales '(    ) ;;PUT LIST OF HQ SCALES HERE, SSS START HERE
                :mean-score 100  :standard-deviation 10 :sample-N nil  :num-questions  0
                :help-priority 1
                :help-info "Understanding your own HQ score and the factors that contribute to it (or reduce it) can be important for understanding how to lead a happier and more successful life.  The help links provided with each scale relate to the factors/questions that make up your HQ score.  Using the self-help information provided can potentially increase your HQ score and ability to lead a happy, successful life."
                :help-links '("index.html")
                ))

  ;;HIGHER SELF SCALE
  (my-defclass HigherSelfScale (composite-scale)
               ()
               (:default-initargs 
                :name-string "HigherSelfScale"
                :label "HigherSelfScale"
                :scale-name "Higher Self Beliefs and Values--composite scale"  
                :description "A key HQ scale. Your cognitive system that unconditionally values your own and others' happiness, health, and wellbeing. Includes valuing truth, knowledge, growth, integrity, and excellence. 
     Evidence for Higher Self Values and for Making Happiness a Top Goal. Making happiness a top goal correlated .446 with overall appiness, .217 with low depression, .185 with low anxiety, .316 with low anger-aggression, .298 with health outcomes, and.396 with good relationship outcomes. 
     The Higher Self Values scale included making happiness important, but also included values like integrity, self-sufficiency, impacting the world, and learning and self-development. The Higher Self scale correlated .503 with overall happiness, .252 with low depression, .197 with low anxiety, .372 with low anger-aggression, .365 with health outcomes, and .436 with relationship outcomes. "
                :scale-group-name   "composite-scale"
                :scale-questions '(thmimpac  thm33goa  thm6lear   
                                             thm9shap  thm10oth  thm14ind  thm22bod  thm23bal  thm34exp  thmcompc 
                                             thminteg  thmphil  thmbeaut  thmgoodn  thmplayf  thmsesuf  thmsedis 
                                             thmuncon  tbvbalan  tbvhapca  tbvgrati  thvselfa  thvuncon  thvselfw)
                :mean-score ".678"  :standard-deviation ".125" :sample-N 3217
                :num-questions  24
                :help-priority 1
                :help-info "Your top values and goals may be somewhat 'programmed' into you by your parents, religion, school, friends, job, and many other outside influences to the degree that you are barely aware of where they came from.  Since these values and goals are so deep, you may not have questioned them or even barely been aware of them at times.  Nevertheless, they are very powerful determinates of your thinking and behavior.  Examining them, questionning them, and studying alternatives from people who are very happy and successful can increase your awareness of who you are and how you can maximize your own happiness and success.  Philosophers, psychologists, and religious leaders have come to many similar conclusions that you will find when  you study them.  In the end, your values are a choice, and changing your values can be a life-changing experience."
                :help-links '("h3hiself.htm")
                ))


  ;;SCALES CLASSES ---------------------------------------------------------
  ;;
  ;;BIO ----------------------------------------------------------------------------------
  ;;
  (my-defclass sID  (BIO-TEXT)
               ()
               (:default-initargs
                :name-string  "sID" ;;scalevar-str
                :label  "sIDinfo"
                :scale-name "User ID Information"  
                :description  "User ID Information"
                :scale-group-name   "BIO"
                ;;     :subscales 
                :scale-questions '(Frame-bio-info)
                :num-questions 6
                :help-priority nil
                :help-info ""
                :help-links NIL
                ))

        (my-defclass acad-ach  (BIO scale)
               ()
               (:default-initargs
                :name-string  "acad-ach" ;;scalevar-str
                :label  "Acad Achievement"
                :scale-name "Academic Achievement"  
                :description  "Based upon combination of completed education level and Grade Point Average"
                :scale-group-name   "BIO"
                ;;     :subscales 
                :scale-questions '(BIO3EDUC BIOHSGPA BIOCOLLE) 
                :mean-score nil  :standard-deviation nil :sample-N nil :num-questions  nil
                :help-priority 1 :help-info ""
                :help-links NIL
                ))

      (my-defclass no-scale (BIO scale)
               ()
               (:default-initargs
                :name-string  "no-scale" ;;scalevar-str
                :label  "Non-scale items"
                :scale-name "Items not on any scale."  
                :description  "Individual items not on any scale."
                :scale-group-name   "BIO"
                :mean-score nil  :standard-deviation nil :sample-N nil :num-questions  nil
                ;;     :subscales 
                :scale-questions '(BIO5INCO) 
                :help-priority 0 :help-info ""
                :help-links NIL
                ))

  (my-defclass sutype  (INTRO-MAQ)
               ()
               (:default-initargs
                :name-string  "sutype" ;;scalevar-str
                :label  "sUserType"
                :scale-name "User SHAQ Type"  
                :description  "SHAQ scale-selection information."
                :scale-group-name   "BIO-MAC"
                ;;     :subscales 
                :scale-questions '(UTYPE)
                :num-questions 1
                :help-priority nil
                :help-info ""
                :help-links NIL
                ))

  (my-defclass sugoals  (INTRO-MAQ)
               ()
               (:default-initargs
                :name-string  "sugoals" ;;scalevar-str
                :label  "sUserGoals"
                :scale-name "User SHAQ Goals"  
                :description  "User Goals for taking SHAQ."
                :scale-group-name   "BIO-MAC"
                ;;     :subscales 
                :scale-questions '(UGOALS)
                :num-questions 1
                :help-priority nil  :help-info ""
                :help-links NIL
                ))

#| NOT NEEDED? (my-defclass sFamily  (BIO-MAQ)
               ()
               (:default-initargs
                :name-string  "sFamily" ;;scalevar-str
                :label  "sFamilyOrig"
                :scale-name "Family Siblings and Parents"
                :description  "Sibling position and parenting in family of origin."
                :scale-group-name   "BIO-TEXT-Q"
                ;;     :subscales 
                :scale-questions '(SFAMILY)
                :num-questions 1
                :help-priority nil  :help-info ""
                :help-links NIL
                ))|#

  ;;DOES NOT INCLUDE MULTI-SEL BIO QUESTIONS,
  ;;not really make sense to have a scale for BIOG
  #|(my-defclass sbiog  (BIO scale)
             ()
             (:default-initargs
              :name-string  "sbiog" ;;scalevar-str
              :label  "sbiog info"
              :scale-name "Biographical Information"  
              :description  "Non-ID biographical information."
              :scale-group-name   "BIO"
         ;;     :subscales 
             :scale-questions '( BIO3EDUC biohsgpa biocolle)
           ;;removed multi-sel-quests (unscorable) BIO4JOB BIO7LANG BIO1ETHN BIORELAF FAMILY 
             :num-questions 6
              :help-priority nil  :help-info ""
              :help-links NIL
              ))|#
  ;;*SBIOG-INST

  ;;
  ;;VALUES-THEMES -------------------------------------------------------------
  (my-defclass sT1HigherSelf  (values-themes HQ scale)
               ()
               (:default-initargs
                :name-string  "sT1HigherSelf" ;;scalevar-str
                :scale-name "sT1: Higher Self and IntegrityValues-Beliefs"
                :label  "sT1-HigherSelf-Integrity  happy balance devel discpn phil"
                ;;was :scale-name "Higher-Self Values" 
                :description  "Values self happiness, integrity, development, learning, discipline, self-sufficiency, independence, balance, and strong philosophy of life. This scale correlated .380 with overall happiness, .166 with low depression, .137 with low anxiety,.327 with low anger/aggression, .327 with the health scale, and .351 with overall relationship success, (10 items)"
                ;;     :previous-names 
                :scale-group-name   "values-themes"
                ;;     :subscales 
                :scale-questions '(thm6lear thm9shap thm14ind  thm22bod thm23bal thmcompc  thminteg thmphil thmsesuf thmsedis)
                :mean-score ".749"
                :standard-deviation ".140"
                :sample-N 3334  :num-questions  10
                ;; :incl-in-results  t ;;or nil
                ;; :spss-match t
                ;;  :quest-selection-type  ;;single-selection
                ;; :reverse-scored-p  nil
                ;; :scoring-formula  '+
                ;; :raw-score
                ;; :relative-score
                :help-priority 1
                :help-info "Valuing happiness, integrity, self-development, a strong personal philosophy, and these other values seem to be an important component of living a happy life."
                :help-links '("h3hiself.htm")
                ;;    :help-resources
                ))
  ;; (setf *test-inst (make-instance 'sT1HigherSelf))
  ;;  (slot-value *TEST-INST 'mean-score)

  (my-defclass  sT2SocIntimNoFam (values-themes HQ scale   )
                ()
                (:default-initargs
                 :name-string "sT2SocIntimNoFamScale"
                 :label  "sT2-SocialIntimacyNotFamily  love/rom  respect support agreeable"
                 ;; dep 056 anx .058   
                 :scale-name "Non-Family, Social-Intimacy Values" 
                 :description "Values intimacy, romance and being liked, respected, and supported. This scale correlated .256 with overall happiness, .251 with low anger/aggression, .279 with the health scale, and .357 with overall relationship success,(6 items)" 
                 ;;     :previous-names  ;;previous java names list
                 :scale-group-name   "values-themes"
                 ;;     :subscales 
                 :scale-questions '(thm8roma  thm12ple  thmrespe thm20int  thmliked  thmsuppo)
                 :mean-score ".735"  :standard-deviation ".145" :sample-N 3279
                 :num-questions  6
                 :help-priority 0  :help-info "Changing long-established, top values is not easy. If you want to change some of these values, you can start with the help-links below."
                 :help-links '("life_goals_and_meaning.htm")
                 ))
  (my-defclass sT3FamCare (values-themes HQ scale  )
               ()
               (:default-initargs
                :name-string "sT3FamCareScale"
                :label  "sT3-Family-EmotionalSupport and care giving parental love-respect"
                :scale-name "Family Values"
                :description "Care-giving. This scale correlated .406 with overall happiness, .154 with low depression, .110 with low anxiety,.217 with low anger/aggression, .294 with the health scale, and .426 with overall relationship success, (3 items)" 
                ;;     :previous-names  ;;previous java names list
                :scale-group-name   "values-themes"
                ;;     :subscales 
                :scale-questions '(thmcareg  thmparlv  thmfamil)
                :mean-score ".701"  :standard-deviation ".172" :sample-N 2424
                :num-questions  3
                :help-priority 0  :help-info "Changing long-established, top values is not easy. If you want to change some of these values, you can start with the help-links below."
                :help-links '("life_goals_and_meaning.htm")
                ))

  (my-defclass sT4SuccessStatusMater  (values-themes HQ scale)
               ()
               (:default-initargs
                :name-string "sT4SuccessStatusMater"
                :label  "sT4-SuccessStatusIncomeMaterialism" ;;     
                :scale-name "Achievement, Status, Material-Wellbeing Values"
                :description "Values success, education, high income and possessions, respect, status, being a CEO, and completing important goals. This scale correlated .295 with overall happiness, .136 with low depression, .096 with low anxiety,.138 with low anger/aggression, .303 with the health scale, and .298 with overall relationship success,(8 items)"
                ;;     :previous-names  ;;previous java names list
                :scale-group-name   "values-themes"
                ;;     :subscales 
                :scale-questions '(thm3educ  thm4mone  thm25pos  thm26suc thm30ceo  thm33goa  thmrespe  thm1ach thmrecog)
                :mean-score ".615"  :standard-deviation ".148" :sample-N 3269
                :num-questions  9
                :help-priority 0  :help-info "Changing long-established, top values is not easy. If you want to change some of these values, you can start with the help-links below."
                :help-links '("life_goals_and_meaning.htm")
                ))
  (my-defclass sT5-OrderPerfectionGoodness  (values-themes HQ scale)
               ()
               (:default-initargs
                :name-string "sT5-OrderPerfectionGoodness"
                :label  "sT5-OrderPerfectionGoodness cleanliness juatice simplicity punctual" ;;        .031 with low anxiety
                :scale-name "Idealistic, Mental, Order, Aesthetic Values"
                :description "Values goodness, beauty, idealism, orderliness, perfection, organization, justice, simplicity, cleanliness, wholeness. This scale correlated .310 with overall happiness, .102 with low depression, .214 with low anger/aggression, .278 with the health scale, and .338 with overall relationship success, (7 items)"
                ;;     :previous-names  ;;previous java names list
                :scale-group-name   "values-themes"
                ;;     :subscales 
                :scale-questions '( thmorder  thmclean  thmperfe  thmjusti  thmsimpl 
                                              thmbeaut  thmgoodn thmwhole)
                :mean-score ".649"  :standard-deviation ".142" :sample-N 3334
                :num-questions  8
                :help-priority 0  :help-info "Changing long-established, top values is not easy. If you want to change some of these values, you can start with the help-links below."
                :help-links '("life_goals_and_meaning.htm")
                ))
  (my-defclass sT6GodSpiritRelig  (values-themes HQ scale)
               ()
               (:default-initargs
                :name-string "sT6GodSpiritRelig"
                :label  "sT6-GodSpiritualReligion"
                ;;  anx .040   
                :scale-name "God, Spiritual Intimacy Values"
                :description "Values spiritual intimacy, God, religion, obedience to God. This scale correlated .302 with overall happiness, .126 with low depression, .137 with low anxiety,.103 with low anger/aggression, .224 with the health scale, and .269 with overall relationship success, (4 items)"
                ;;     :previous-names  ;;previous java names list
                :scale-group-name   "values-themes"
                ;;     :subscales 
                :scale-questions '( thmobgod  thmrelgd  thmspiri  thmrelig)
                :mean-score ".555"  :standard-deviation ".240" :sample-N 2473
                :num-questions  4
                :help-priority 0  :help-info "Changing long-established, top values is not easy. If you want to change some of these values, you can start with the help-links below."
                :help-links '("life_goals_and_meaning.htm")
                ))
  (my-defclass sT7ImpactChallengeExplor  (values-themes HQ scale)
               ()
               (:default-initargs
                :name-string "sT7ImpactChallengeExplor"
                :label  "sT7-ImpactContributionMentalChallenge-exploration"
                :scale-name "Contribution, Impact Values"
                :description "Values giving, impact on world, mental challenge, exploration, uniqueness, and diversity. This scale correlated .347 with overall happiness, .136 with low depression, .133 with low anxiety,.296 with low anger/aggression, .277 with the health scale, and .326 with overall relationship success, (6 items)" 
                ;;     :previous-names  ;;previous java names list
                :scale-group-name   "values-themes"
                ;;     :subscales 
                :scale-questions '(thm10oth  thmimpac  thm28cre  thmmench   thm34exp  thmuniqu thmcreat )             :mean-score ".672"  :standard-deviation ".150" :sample-N 3312
                :num-questions  7
                :help-priority 1 :help-info "Changing long-established, top values is not easy. If you want to change some of these values, you can start with the help-links below."
                :help-links '("life_goals_and_meaning.htm")
                ))
  (my-defclass sT8AttentionFunEasy  (values-themes HQ scale)
               ()
               (:default-initargs
                :name-string "sT8AttentionFunEasy"
                :label  "sT8-AttentionFunEasy playful adventure"
                :scale-name "Adventure, Play Values"
                :description "Values adventure, play, attention, fun, effortlessness. This scale correlated .311 with overall happiness, .106 with low depression, .101 with low anxiety,.192 with low anger/aggression, .247 with the health scale, and .335 with overall relationship success, (4 items)" 
                :scale-group-name   "values-themes"
                :scale-questions '(thmatten thm5adve thmefort   thmplayf)
                :help-priority 0 :help-info "Changing long-established, top values is not easy. If you want to change some of these values, you can start with the help-links below."
                :help-links '("life_goals_and_meaning.htm")
                ))
  (my-defclass sT9ValueSelfAllUncond  (values-themes HQ scale)
               ()
               (:default-initargs
                :name-string "sT9ValueSelfAllUncond"
                :label  "sT9-ValueSelf-AllUnconditionally"        
                :scale-name "Unconditional Love Values"
                :description "Unconditional valuing of self and others--A key HQ scale. This scale correlated .461 with overall happiness, .276 with low depression, .209 with low anxiety,.311 with low anger/aggression, .232 with the health scale, and .336 with overall relationship success, (2 items)"
                :scale-group-name   "values-themes"
                :scale-questions '(thvuncon  thvselfw thvselfa thmuncon)
                :mean-score ".560"  :standard-deviation ".208" :sample-N 3246
                :num-questions  4
                :help-priority 1
                :help-info "Changing long-established, top values is not easy. If you want to change some of these values, you can start with the help-links below."
                :help-links '("life_goals_and_meaning.htm") 
                ))
  (my-defclass sT10OvercmProbAcceptSelf  (values-themes HQ scale)
               ()
               (:default-initargs
                :name-string "sT10OvercmProbAcceptSelf"
                :label  "sT10-OvercomeProblems-AcceptAllofSelf"
                ;; dep.073 anx .030   
                :scale-name "Overcoming Personal Problems Values"
                :description "Values overcoming problems, self-protection, and personal healing.  This scale correlated .185 with overall happiness, .135 with low anger/aggression, .168 with the health scale, and .209 with overall relationship success, (2 items)" 
                :scale-group-name   "values-themes"
                :scale-questions '( thmsprot  thmphurt)
                :mean-score ".585"  :standard-deviation ".106" :sample-N 2385
                :num-questions  2
                :help-priority 0 :help-info "Changing long-established, top values is not easy. If you want to change some of these values, you can start with the help-links below."
                :help-links '("life_goals_and_meaning.htm")
                ))
  (my-defclass sT11DutyPunctual  (values-themes HQ scale)
               ()
               (:default-initargs
                :name-string "sT11DutyPunctual"
                :label  "sT11-DutyPunctuality"
                ;; anx.037   
                :scale-name "Duty, Obligation Values"
                :description "Values duty, obligation, and punctuality. This scale correlated .265 with overall happiness,  .097 with low depression, .155 with low anger/aggression, .264 with the health scale, and .264 with overall relationship success, (2 items)" 
                :scale-group-name   "values-themes"
                :scale-questions '( thmpunct  thmoblig)
                :mean-score "582"  :standard-deviation ".177" :sample-N 2510
                :num-questions  2
                :help-priority 0 :help-info "Changing long-established, top values is not easy. If you want to change some of these values, you can start with the help-links below."
                :help-links '("life_goals_and_meaning.htm")
                ))

  ;;BELIEFS
  (my-defclass sworldview  (beliefs HQ scale)
               ()
               (:default-initargs
                :name-string "sworldview"
                :data-name-string "sworldvi"
                :label  "s-Positive world view"
                :scale-name "Positive World View"
                :description "Optimism about the future of the world and own life, lack of entitlement thinking, plus daily positive versus negative thoughts. How constructively and positively you view the world and the future can significantly affect motivation, relationships, happiness, and success in most life areas. 
      Living life with a sense of gratitude (versus a sense of entitlement and deprivation) may be one of the most important factors for 
      happiness. It correlates .687 with happiness, .528 with low depression, .375 with low anxiety, .235 with 
      low anger/aggression, .384 with relationship success, .233 with positive health outcomes. (10 items)"  
                :scale-group-name   "beliefs"
                :scale-questions '(wovprogr wovgoodf wovmylif wovnfair  tbventit wovinjur wovabund  tbvgrati  woventit wovgrate wovposth) 
                :mean-score ".624"  :standard-deviation ".153" :sample-N 3162
                :num-questions  10
                :help-priority 1
                :help-info "If you scored very low, it could cause you to have a problem with anxiety, depression, or low motivation. Examine your underlying negative beliefs and your expectations of what others (or the world) owes you.  Reading books on positive motivation and learning from people with positive motivation can help. Check our help link and even consider counseling if this troubles you."
                :help-links '("h4world.htm")
                ))
  (my-defclass stbslfwo  (beliefs HQ scale)
               ()
               (:default-initargs
                :name-string "stbslfwo"
                ;;  :data-name-string "stbslfwo"
                :label  "s-Self-worth beliefs"
                :scale-name "Unconditional Worth of Self and Others"
                :description "A key HQ scale. Degree to which one accepts/values all parts of one's self and others not contingent on others' individual characteristics or behaviors. Unconditionally valuing yourself and others means that an important part of a person's worth is not dependent upon their success, income, appearance, personality, ethnic group, morality, or any other quality.  Self-worth is the unconditional aspect of self-esteem. It differs from self-confidence which is the aspect conditional upon success or other factors. It correlates .391 with overall happiness, .283 with low depression, .260 with low anxiety,.300 with low anger/aggression."
                :scale-group-name   "beliefs"
                :scale-questions '(tbvothfi tbvliked tbvweak tbvbest  tbvrules tbvwinne tbvbalan tbvhapca  thvselfa thvuncon thvselfw ) ;;was 2-grat-entitle tbventit, tbvgrati
                :mean-score ".595"  :standard-deviation ".126" :sample-N 3246
                :num-questions   12
                :help-priority 1
                :help-info  "If you didn't score high, then look over the individual items and focus on beliefs that may be more negative, lower self-esteem, lower self-effectiveness, or lower happiness. Also, check your score and responses on the Life Themes scale. Internal mental values can help you achieve greater unconditional self-worth. Then go to our help link."
                :help-links '("h5self.htm")
                ))
  ;;CHECK THIS SCALE--IS IT RUNNING, INDEPENDENT?
  #|(my-defclass swvgratent (beliefs HQ scale)
             ()
             (:default-initargs
              :name-string "sswventit"
              :label  "sswv-NotEntitlement beliefs"
              :scale-name "Non-Entitlement Beliefs"
              :description "Not believing that anyone owed either the basic necessities or a high standard of living. Don't feel entitled to anything in life. Belief all we receive is a bonus.. (2 items)"
              :scale-group-name   "sworldview"
             :scale-questions '(tbvgrati tbventit woventit wovgrate)
             :num-questions 4
              :help-priority 0 :help-info "Being grateful for all you have and not believing in entitlement thinking even though circumstances may be difficult is a key to happiness."
              :help-links '("h44defic.htm")
              ))|#
  (my-defclass siecontr  (beliefs HQ scale)
               ()
               (:default-initargs
                :name-string "siecontr"
                :label  "s-Int-Ext control beliefs"
                :scale-name "Internal vs External Control (I-E) Beliefs"
                :description "Degree of self-sufficiency and responsibility one takes for his/her own life, health, and happiness without undue influence from others. More internal direction, planning, and self-control versus influence by others or external forces. Internal control correlates .357 with overall happiness, .366 with low depression, .393 with low anxiety, .255 with low anger/aggression. 
      Believing that you are in control of your own emotions, behavior, likes and dislikes, and your life increases internal control. Making your own decisions and plans and giving adequate priority to your own needs also helps. (7 items)"
                :scale-group-name   "beliefs"
                :scale-questions '(iecselfs iecicont iecgenet iecpeopl iecdepen ieccofee ieccoprb)
                :mean-score "616"  :standard-deviation ".162" :sample-N 3246
                :num-questions  7  ;;is it really 7 or 8 SSS ???
                :help-priority 1
                :help-info "Learning how to increase your internal control can increase self-esteem and assertiveness, and it can lower anxiety and depression. Start with the help link."
                :help-links '("h6intern.htm")
                ))

  (my-defclass sethbel  (beliefs HQ scale) ;;new label
               ()
               (:default-initargs
                :name-string "sethbel"
                :data-name-string "sEthBeliefs" ;;SSS ??? CHECK THIS "sb2ethic"
                :label  "sethbel"
                :scale-name "Absolute-Grounded, Integrated Ethics"
                :description  "Ethics philosophers and religions agree on many general principles. It is generally agreed that better ethics are based more on absolute principles and wholes such as humanity, nature, or God rather than on more specific or situational aspects such as self, family, or any group.  An ethical system that judges people more on their inner qualities and assumes some basic inner goodness and inherent value in all people. It includes questions about astrology (very much frowned upon by philosophers, scientists, and religion) and life after death (a common belief).  Many people base their ethics on the rewards they expect after death. (14 items). This scale correlated 0.459 with overall happiness, 0.306 with low depression, 0.336 with low anxiety, and 0.463 with low anger/aggression."
                :scale-group-name   "beliefs"
                :scale-questions '( tb2relat tb2punis  tbv2notr  tb2groum  tb2selfm  tb2gdwrk  tb2gdatt  tb2allgd   tb2reaso  tbv2astr  tb2idhum tb2lifad   tb2movem   tbv2core)
                ;;SSSS  FIND MEAN, SD, N (thee are temporary fill-ins)
                :mean-score .620  :standard-deviation .112 :sample-N  2366 :num-questions  14
                :help-priority 1
                :help-info "Basing your values and beliefs on general abstract principles and mental-values such as integrity, truth, love, and happiness and valuing all people and all nature is not only a commonality most great philosophers and religions have in common, it also helps people be happier and more successful."
                :help-links '("life_goals_and_meaning.htm")
                ))

  ;;FEARS
  (my-defclass sgrfears  (beliefs HQ scale)
               ()
               (:default-initargs
                :name-string "sgrfears"
                :label  "s-Low greatest fears"
                :scale-name "Low Greatest Fears"
                :description "A key HQ scale. Low degree of common major fears such as illness, poverty, death, failure, rejection, and confidence in ability to overcome fears or circumstances. Fears are interesting to people per se.  Your greatest fears reflect your top values and goals in life and are related to your happiness and success. The underlying fear is usually that one's greatest values/goals will be unsatisfied. Your underlying fears can be powerful sources of pain and avoidance motivation. Underlying fears give your little jolts of fear or anxiety daily as you get a thought that is related to them. 
      Overcoming these underlying fears can help you be less fearful and anxious the rest of your life! This scale correlates .462 with happiness, .417 with low depression, .375 with low anxiety, .241 with low anger/aggression. (12 items)"
                :scale-group-name   "beliefs"
                :scale-questions '(wovhappy wovpoor wovill wovdeath wovalone wovnolov wovliked  wovperso wovprobl wovdisco wovsucce wovoverc)
                :mean-score ".601"  :standard-deviation ".174" :sample-N 3162
                :num-questions  12
                :help-priority 1
                :help-info "Your fears could cause you to have problems with anxiety, depression, anger, low self-esteem, or low motivation. It is important that you check our help link and even consider counseling if one or more underlying fears trouble you. Reducing underlying fears can reduce all the daily fears that are linked to these deeper fears. Learn to face them, explore them, and find new ways of thinking about them or coping with them from those who have been successful in overcoming them."
                :help-links '("h43dark.htm")
                ))


  ;;SKILLS-CONFIDENCE
  (my-defclass sslfconf  (skills-confidence HQ scale)
               ()
               (:default-initargs
                :name-string "sslfconf"
                :label  "s-Self-confidence areas"
                :scale-name "Self-Confidence and Life Skill Areas"
                :description "A list of knowledge and skills areas was developed, and subjects were asked to rate their own confidence/skills for each area. The Self-Confidence scale measures the contingent, efficacy aspect of self-esteem.  This scale has emerged as a separate factor from the other main scales in factor analytic studies.  Your self-report ratings should reflect a combination of actual knowledge and skill and of confidence level. It is similar to the concept of self-efficacy.
      Your life skills and self-confidence can be powerful factors in your success and happiness in many life areas--including your academic and career success. It correlated .629 with happiness, .421 with low depression, .351 with low anxiety, .186 with low anger/aggression,.367 with relationship success, .233 with positive health outcomes. (41 items)"
                :scale-group-name   "skills-confidence"
                :scale-questions '(slflearn slfcritt slfresea slfanaly slfsynth slfcreat slfcompu  slfbiosc slfnatsc slflibar slfsocsc slfphilr slfperfa slffinea slfbusan
                                            slfheal2 slfengin slfeduch slfiq slfdecma slftimem slfcope slfself4 slfselfm	
                                            slfachan slfmana6 slfheal3 slfmeetp slfliste slfself5 slfconfl slfpersu
                                            slfmana7 slfhelps slfspeak slfjobse slfadapt slfhappy slfoptim slffrien
                                            slfindep)
                :mean-score ".682"  :standard-deviation ".143" :sample-N 3225
                :num-questions  41
                :help-priority 1 :help-info "Look over questions that you scored low on, ask yourself why, and ask yourself what you can do to improve these areas. Target one or two main areas to start with and begin a self-improvement program. See our help link for help."
                :help-links '("h54confi.htm")
                ))
  (my-defclass sselfman  (skills-confidence HQ scale)
               ()
               (:default-initargs
                :name-string "sselfman"
                :label  "s-Self-management skills"
                :scale-name "Self-Management Skills"
                :description "A key HQ scale. Skills related to self-care, decision-making, goal-setting, and time-management including leading a balanced life and attending to all main need/value areas. Many items are based upon  OPATSM time-management system.  Research shows that these vital skills are related to a more successful and happier life in almost all life areas. This scale correlated .606 with overall life happiness, .297 with low depression, .365 with relationship success, and over .30 with job status. (15 items)"
                :scale-group-name   "skills-confidence"
                :scale-questions '(smtbusy smtfutur smtexerc smteath smtsleep smtsdeve smtnproc smtptodo smtgoals smtschd smt2dtod smtacmpl smtghelp smtbalan smthabch)
                :mean-score ".537"  :standard-deviation ".160" :sample-N 1936
                :num-questions  15
                :help-priority 1
                :help-info "Self-management of setting clear goals, good time-management (including using weekly/daily prioritized task lists in each life area) is a key factor in people's happiness and success. Try the time-management skills in the help-link."
                :help-links '("h9patsm.htm")
                ))

  (my-defclass semotcop  (skills-confidence HQ scale)
               ()
               (:default-initargs
                :name-string "semotcop"
                :label  "s-Emotional coping skills"
                :scale-name "Emotional Coping Skills"
                :description "A key HQ scale.  How you habitually react to emotionally stressful situations. What do you do when you are upset? This scale correlates .683 with overall happiness, .578 with low depression, .466 with low anxiety, .374 with low anger/aggressiveness, and .314 with good, intimate personal relationships.  It is also a moderate predictor of academic and career success. (20 items)"
                :scale-group-name   "skills-confidence"
                :scale-questions '(copnegth copcopea coppsolv copavops copemota copblame copwdrw copfun coptalks coppepta copsmoke copdrug coppe copnegph copselfb copposph copexpec cophappy copavoat  copselfe)
                :mean-score ".585"  :standard-deviation ".135" :sample-N 3273
                :num-questions  20
                :help-priority 1
                :help-info "Read the questions below and your responses to what you do when you are upset. Learn to use more constructive coping responses like problem-solving, positive thinking, positive social behavior, and constructive activities to feel better instead of negative coping such as negative thinking, blaming, withdrawal, addicitve habits, etc.  Improving emotional coping skills is one of the simplest ways to lead a more successful and happier life (and escape negative habits like addictions, avoidance, and negativism"
                :help-links '("h8hf2.htm")
                ))

  ;;INTERPERSONAL
  (my-defclass IntSS1aAssertCR  (interpersonal HQ scale)
               ()
               (:default-initargs
                :name-string "IntSS1aAssertCR"
                :label  "IntSS1a-AssertiveConfRes"
                :scale-name "Assertive Communication and Conflict Resolution"
                :description "A key HQ scale: democratic, assertive communication and conflict resolution.  Seeks win-win solutions to conflicts, with clear, caring, understanding, non-defensive, calm, persistent, honest, friendly, non-threatening behaviors. Finding and resolving the basic, underlying issues is very important. You ability to resolve differences with others is a critical component of any good, lasting relationship from work to marriage. It is a vital skill in many professional situations. Our research shows a correlation of more than .70 between this scale and marital relationship happiness and .365 with overall relationship success. It also correlated .463 with overall happiness, .236 with low depression, .202 with low anxiety, .355 with low anger/aggression, .306 with positive health. A low score may predict a series of relationships that end in conflict or being left. (13 items)"
                :scale-group-name   "interpersonal"
                :scale-questions '(cr1issue crresolv crnthrea crunderl  crwinwin
                                            crlongtk crsummar crcprais crboassr crophone crangres crtlkmor creqwin intundrl)
                :mean-score ".563"  :standard-deviation ".186" :sample-N 2664
                :num-questions  14
                :help-priority 1
                :help-info "Look over the individual questions to see where strengths and areas needing improvement lie. Then go to our help links on assertion training and conflict resolution."
                :help-links '("assertion_training.htm")
                ))
  (my-defclass IntSS1bOpenHon  (interpersonal HQ scale)
               ()
               (:default-initargs
                :name-string "IntSS1bOpenHon"
                :label  "IntSS1bIntimateOpenHonest"     
                :scale-name "Intimacy"
                :description "A key HQ scale: Open, Honest, Communication and Goal Harmony. Reveal most private and sensitive thoughts and feelings regularly, shared goals, and feelings of relationship commitment. This scale correlated over .70 with marital satisfaction and .435 with overall relationship success. ,.503 with overall happiness, .289 with low depression, .230 with low anxiety,.302 with low anger/aggression, and .293 with the health scale. Intimacy is a critical part of any truly close relationship--especially marital relationships. (10 items)" 
                :scale-group-name   "interpersonal"
                :scale-questions '(inttelal intsmgoa inteqdec intiopen
                                            intweopn intdaily intallop intknpfe incomtwo) ;;crifavor removed bec dup
                :mean-score ".643"  :standard-deviation ".192" :sample-N 2491
                :num-questions  10
                :help-priority 1
                :help-info  "If you didn't score high, you want to improve this area to increase your ability to relate to the opposite sex or any close relationship with a mature person. Examine the individual questions to set goals for improvement and check out our links."
                :help-links '("conversational_skills.htm" "c14-lisn.htm")
                ))
  (my-defclass IntSS2Romantc  (interpersonal HQ scale)
               ()
               (:default-initargs
                :name-string "IntSS2Romantc"
                :label  "IntSS2-Romantic=sromantc"
                ;; anx  .117  hlth  .181 
                :scale-name "Close, Romantic Interactions"
                :description "Romantic attraction, playful, romantic surprises, fantasize about partner, go to romantic places, have special celebrations together. It correlates .267 with relationship success, .394 with overall happiness, .173 with low depression, and .238 with low aggression. (7 items)"
                :scale-group-name   "interpersonal"
                :scale-questions '(romsurpr  romfanta  romceleb  romplace  romattra  romplayf  romcharm)
                :mean-score ".615"  :standard-deviation ".219" :sample-N 2938
                :num-questions  7
                :help-priority 0 :help-info "Examine your answers and look at our help links."
                :help-links '("conversational_skills.htm""developing_intimacy.htm" "c14-lisn.htm" "chaprels.htm")
                ))
  (my-defclass IntSS3LibRole  (interpersonal HQ scale)
               ()
               (:default-initargs
                :name-string "IntSS3LibRole"
                :label  "IntSS3-LiberatedRoles=slibrole"
                :scale-name "Liberated, Equal Roles"
                :description "Equality in decisions, roles, chores/tasks, career priority, some non-stereotypical role behaviors. Our research seems to show that people in relationships with more liberated roles may be happier. However, people with traditional male-female relationship views can be happy if both partners agree on these views and the male makes decisions adequately taking into account his/her partner's desires and needs. It correlated .166 with overall happiness, .182 with low anxiety, and .292 with low anger/aggression. (7 items)" 
                :scale-group-name   "interpersonal"
                :scale-questions '(lromtask  lroftask  lrmfinal  lroembar  lromstro  lroeqinc  lrcarcon)
                :mean-score ".703" :standard-deviation ".188" :sample-N 3056
                :num-questions  7
                :help-priority 0 :help-info "This is an area where finding a partner with similar views or where resolving differences can be important."
                :help-links '("finding_mr_mrs_right.htm")
                ))
  (my-defclass IntSS4LoveRes  (interpersonal HQ scale)
               ()
               (:default-initargs
                :name-string "IntSS4LoveRes"
                :label  "IntSS4-Love Respect"     
                :scale-name "Love and Respect for Partner"
                :description "Valuing Your Partner--A key HQ scale.  Love, respect, cheerfully do favors for,  praise more than criticize partner.  Feel free when partner home, feel committed not trapped. This Love and Respect  scale correlated .425 with overall relationship success. ,.476 with overall happiness, .289 with low depression, .268 with low anxiety,.432 with low anger/aggression, and .295 with the health scale. Love and Respect  is a critical part of any truly close relationship--especially marital relationships. (9 items)" 
                :scale-group-name   "interpersonal"
                :scale-questions '(crifavor crifolup  intcomit intrespt
                                            intlsqpr intlove innevarg )  ;;inrfreeh was here, moved to indep bec of content
                ;;also deleted redundant item criprais (in possup)
                :mean-score ".751"  :standard-deviation ".154" :sample-N 2491
                :num-questions  7
                :help-priority 1
                :help-info "Loving and respecting your partner comes from many factors beyond your direct control.  However, acting as if you really love and/or respect someone can increase both your valuing them and their caring and positive actions toward you.  Both effects can increase love and respect.  Also. learning to understand the history, circumstances, and motivation behind aspects you don't value in them may help you feel better about those aspects. Helping them understand your history and circumstances may also help. Doing favors, expressing positive feelings, letting them have their way enough, and giving complements may also help."
                :help-links '("developing_intimacy.htm")
                ))
  (my-defclass IntSS5Indep  (interpersonal HQ scale)
               ()
               (:default-initargs
                :name-string "IntSS5Indep"
                :label  "IntSS5-Rel Independ"     
                :scale-name "Relationship Independence-Autonomy"
                :description "Autonomy within committed relationship.  Partners feeling encouraged and free to pursue own interests and friendships.  Each enjoy being alone, having partially separate funds, and believing they could be happy with another person if necessary. Value individual happiness over marriage per se. This scale correlated .215 with overall relationship success. ,.379 with overall happiness, .288 with low depression, .308 with low anxiety,.389 with low anger/aggression, and .296 with the health scale. (11 items)" 
                :scale-group-name   "interpersonal"
                :scale-questions '(inrlunch inrinhap inrigrow inrsaywe indifgoa
                                            infindan  inenalon inokalon inrhatea   insepint  inrmoney   inrbealn  inalcnst inrfreeh inrfrien)
                ;;added  inrbealn  inalcnst--moved from the separate scale--deleted 2014-08
                :mean-score ".676"  :standard-deviation ".144" :sample-N 2862
                :num-questions  15
                ;;       (INRFRIENQ ("My partner has close friends of his/her same sex with whom he/she has frequent social contact outside work.") INR-INSTR  INRSRQ9OWNFRIENDSQ)
                ;;       (INNEVARGQ ("Partners should never argue or disagree if they are to have a truly happy relationship.") INR-INSTR  INRSRQ16NEVARGUEQ)
                :help-priority 1 :help-info "Learning to give each other the freedom to make choices, spend their time as they like, be alone when they want, and supporting their interests even when different are just a few imporant ways that partners can increase positive independent intimacy."
                :help-links '("finding_mr_mrs_right.htm" "developing_intimacy.htm")
                ))
  (my-defclass IntSS6PosSup  (interpersonal HQ scale)
               ()
               (:default-initargs
                :name-string "IntSS6PosSup"
                :label  "IntSS6-Positive Supportive Com"     
                :scale-name "Positive, Supportive Communication"
                :description "A key HQ scale. Supportive of partner even during disagreements, rarely use negative labels, exaggerations, threats, anger.  If one partner gets angry, other usually uses deescalating response. This scale correlated .272 with overall relationship success. ,.421 with overall happiness, .275 with low depression, .267 with low anxiety,.538 with low anger/aggression, and .307 with the health scale. Note the large correlation with low anger and aggression. (7 items)"
                :scale-group-name   "interpersonal"
                :scale-questions '(crnthrea crnneglb crexaggr crangang criprais
                                            crangres indifdec instshlp)
                :mean-score ".598"  :standard-deviation ".175" :sample-N 2603
                :num-questions  8
                :help-priority 1
                :help-info "Increasing more complements and caring statements/actions and decreasing negative statements/actions can dramatically change a relationship. Try the help links below."
                :help-links '("developing_intimacy.htm" "assertion_training.htm")
                ))
  (my-defclass IntSS7Collab  (interpersonal HQ scale)
               ()
               (:default-initargs
                :name-string "IntSS7Collab"
                :label  "IntSS7-Collaborative"      
                :scale-name "Collaborative, Non-Manipulative Relationship"
                :description "A key HQ scale. Neither partner manipulating or controlling.  Partners feel safe revealing weaknesses. Can work together or teach each other effectively. This scale correlated .317 with overall relationship success. ,.406 with overall happiness, .268 with low depression, .235 with low anxiety,.328 with low anger/aggression, and .271 with the health scale. (7 items)"
                :scale-group-name   "interpersonal"
                :scale-questions '(crtklong crteweak crmanipu crreprai crteach
                                            crtlkmor intwktog)
                :mean-score ".562"  :standard-deviation ".177" :sample-N 2542
                :num-questions  7
                :help-priority 1 :help-info ""
                :help-links '("assertion_training.htm" "developing_intimacy.htm" )
                ))
  ;;o2014-08, DECIDED TO ELIMINATE THIS SCALE--FIT BETTER IN INDEP
  #|(my-defclass IntSS8Separate  (interpersonal HQ scale)
             ()
             (:default-initargs
              :name-string "IntSS8Separate"
              :label  "IntSS8-Separate"
   ;;-.023ns .061 .127 .102 -.018ns -.061
         :scale-name "Separateness"
         :description "Spending weekends alone OK.  Not consult for small decisions. This scale correlated .215 with overall relationship success. ,.379 with overall happiness, .288 with low depression, .308 with low anxiety,.389 with low anger/aggression, and .296 with the health scale. This scale had only small positive corelations with low depression and low anxiety. (2 items)"
              :scale-group-name   "interpersonal"
             :scale-questions '(inrbealn  inalcnst)
             :mean-score nil  :standard-deviation nil :sample-N nil  :num-questions  2
              :help-priority 1 :help-info "If being apart is accepted by the partner and leads to fullfillment and satisfaction, then it can enhance a relationship.  If separateness is a sign that partners don't like being together, it may help save the relationship, but not really deal with underlying issues."
              :help-links '("developing_intimacy.htm")
              ))|#

  ;;ACAD-LEARNING ---------------------------------------------------------------------

  ;;removed multiple-selection questions
  (my-defclass scollege  (ACAD-LEARNING scale)
               ()
               (:default-initargs
                :name-string  "scollege" ;;scalevar-str
                :label  "scollege info"
                :scale-name "College Student Info"  
                :description  "Basic College Student Information"
                :scale-group-name   "ACAD-LEARNING"
                ;;     :subscales 
                :scale-questions '(stpared stuclass studegre  stusemes stmajgpa stacadst  STUCOLLE STUMAJOR STUSPECI  STURESID STGPATRE  STURESOURCE) 
                ;;problems   STURESOURCE = nil  stacadst =mc
                ;;SSS filled in temp mean, sd, N bec no data yet
                :mean-score .6  :standard-deviation .15 :sample-N 1000  :num-questions  6
                :help-priority 1 :help-info ""
                :help-links NIL
                ))

  ;; THE SINGLE-ANSWER SCALES --------------------------------------
  ;;
  (my-defclass ssl1ConfidEfficStudyTest  (acad-learning scale)
               ()
               (:default-initargs
                :name-string "ssl1ConfidEfficStudyTest"
                :label  "ssl1-Confid efficient read-study-test"
                :scale-name "Time Efficient and Confident Study"
                :description "A low score may indicate a learning disability. Think that tests and grades reflect abilities (versus smarter than test). Not need more time for tests and assignments. (8 items)"
                :scale-group-name   "acad-learning"
                :scale-questions '(lrnunasn   lrncolmt  lrnknowt  lrnproof  lrnrread   lrneffic  lrntestt  lrntimas  lrntired  lrntanxi  lrnsmart  lrnaread  lrnrslow)
                ;;SSS FILLED IN TEMP SCORES BEC NO DATA YET
                :mean-score .59  :standard-deviation .21 :sample-N  637  :num-questions   13 
                :help-priority 1
                :help-info (format nil "Valuing your education and making it a top priority, giving adequate time to study, and learning good study skills are key academic success factors. Try the help-links below.~%~A" *TIME-MAN)
                :help-links '("academic.htm" "learning_disabilities.htm" "concentration.htm")
                ))
  (my-defclass ssl1bConfidNotAvoidStudy  (acad-learning scale)
               ()
               (:default-initargs
                :name-string "ssl1bConfidNotAvoidStudy"
                :label  "ssl1bConfidNotAvoidStudy"
                :scale-name "High Study Motivation"
                :description "Not Study Avoidant.  Not slower or more anxious about beginning assignments, reading, or writing than other students. Feel like college capable. (6 items)" 
                :scale-group-name   "acad-learning"
                :scale-questions '(lrnunasn  lrncolmt  lrntired  lrnaread  lrnproof  )
                ;;SSS FILLED IN TEMP SCORES BEC NO DATA YET
                :mean-score .643  :standard-deviation .199 :sample-N 953  :num-questions  5
                :help-priority 1
                :help-info (format nil "Valuing your education and making it a top priority, giving adequate time to study, and learning good study skills are key academic success factors. Try the help-links below. ~%~A" *NPROC15)
                :help-links '("academic.htm" "time_management.htm""procrastination.htm""test_anxiety.htm")
                ))
  (my-defclass ssl2SatisCampusFacFriendsGrdes   (acad-learning scale)
               ()
               (:default-initargs
                :name-string "ssl2SatisCampusFacFriendsGrdes"
                :label  "ssl2SatisCampusFacFriendsGrdes"
                :scale-name "Positive Campus Life Attitudes"
                :description "Look forward to classes, campus activities. Enjoy students and instructors. Happy with campus and grades. (8 items)" 
                :scale-group-name   "acad-learning"
                :scale-questions '(stulookf  stulikei  stucomfo  stufrien   stuenjoy  stueactr  sthapcol  sthapgpa)
                ;;SSS FILLED IN TEMP SCORES BEC NO DATA YET
                :mean-score .682  :standard-deviation .200 :sample-N 1000  :num-questions   8
                :help-priority 0 :help-info (format nil "Learning to enjoy your campus, studying, the instructors, and the other students are important ways to increase your motivation and academic success. However, many students focus too much on enjoying themselves and not enough on academics. ~%~A" *CONNECT-COL) 
                :help-links '("conversational_skills.htm" "academic.htm")
                ))
  (my-defclass ssl3WriteReadSkills  (acad-learning scale)
               ()
               (:default-initargs
                :name-string "ssl3WriteReadSkills"
                :label  "ssl3WriteReadSkills"
                :scale-name "Writing, Reading Skills"
                :description  "Good at organizing papers and writing. Good reading skills. No vision problems (added due to factor analysis). (6 items)"
                :scale-group-name   "acad-learning"
                :scale-questions '(lrnwrpap  lrnwrskl  lrnsee  lrnvocab  lrnwrorg lrnsread)
                ;;SSS FILLED IN TEMP SCORES BEC NO DATA YET
                :mean-score .728  :standard-deviation .199 :sample-N 953  :num-questions  6
                :help-priority 1
                :help-info "Writing skills are important for success in almost all classes and for success in most professions--even those such as engineering or art. If you don't have good writing skills, try the link below. Reading skills are essential for academic and professional career success."
                :help-links '("writing_help.htm")
                ))
  (my-defclass ssl4BldMentalStruct  (acad-learning scale)
               ()
               (:default-initargs
                :name-string "ssl4BldMentalStruct"
                :label  "ssl4-Build Mental Structure"
                :scale-name  "Build Mental Structures"
                :description "Study alone, struggle with difficult material, attempt to build own theories and associations. Make boring material interesting. (7 items)" 
                :scale-group-name   "acad-learning"
                :scale-questions '( lrntxund  lrninter lrnrote  lrnassoc  lrnstrug  lrntheor  lrnalone)
                ;;SSS FILLED IN TEMP SCORES BEC NO DATA YET
                :mean-score .693  :standard-deviation .174 :sample-N 1112  :num-questions  7 
                :help-priority 1
                :help-info "The essence of higher level learning is developing complex cognitive, mental structures.  Learning techniques for doing developing these mental structures is a primary way to increase intelligence, learning efficiency, and academic success."
                :help-links '("LEARN.htm" "academic.htm" )
                ))
  (my-defclass ssl5BasicStudySkills  (acad-learning scale)
               ()
               (:default-initargs
                :name-string "ssl5BasicStudySkills"
                :label  "ssl5-BasicSS-Undrstnd review map outline notes"
                :scale-name "Basic Study Skills"
                :description (format nil "Preview, outline, review assignments; take good notes; good concentration; create visual map; review material at least 3 times for exam. (6 items)~%~A" *COMP-MEM) 
                :scale-group-name   "acad-learning"
                :scale-questions '(acmconce  lrntxove  lrntsrev  lrnmap  lrntxout  lrnnotes)
                ;;SSS FILLED IN TEMP SCORES BEC NO DATA YET
                :mean-score .610  :standard-deviation .196 :sample-N 814  :num-questions  6
                :help-priority 1
                :help-info "The essence of higher level learning is developing complex cognitive, mental structures.  Learning techniques for doing developing these mental structures is a primary way to increase intelligence, learning efficiency, and academic success."
                :help-links '("LEARN.htm" "academic.htm" )
                ))
  (my-defclass ssl6SelfmanAcadGoals  (acad-learning scale)
               ()
               (:default-initargs
                :name-string "ssl6SelfmanAcadGoals"
                :label  "ssl6-Selfman-acad goal intention"
                :scale-name "Degree Motivation"
                :description "Motivated and confident will get degree and won't drop out. Not confused about goals and confident of finances. (5 items)"
                :scale-group-name   "acad-learning"
                :scale-questions '(acmcompl  acmquitc  acmfinan  acmdegre  stuconfu acmselfs)
                ;;SSS FILLED IN TEMP SCORES BEC NO DATA YET
                :mean-score .745  :standard-deviation .206 :sample-N 819 :num-questions  5
                :help-priority 1
                :help-info (format nil "Motivation usually develops from commitment to a highly-valued goal. Clarifying your values and selecting goals that match them is a powerful way to improve motivation.  Choosing an academic major that you highly value and choose to persist through difficulties is a key way to improve academic success.~%~A" *CAR-PLAN)
                :help-links '("c15-carp.htm")
                ))
  (my-defclass ssl7MathSciPrinc  (acad-learning scale)
               ()
               (:default-initargs
                :name-string "ssl7MathSciPrinc"
                :label  "ssl7-MathSci-principles interest skills"
                :scale-name "Learn Math-Science Principles"
                :description "Enjoy and good in math, and seek to understand basic principles in math and science. (2 items)" 
                :scale-group-name   "acad-learning"
                :scale-questions '(lrnmath  lrntextn)
                ;;SSS FILLED IN TEMP SCORES BEC NO DATA YET
                :mean-score .647  :standard-deviation .246 :sample-N 948  :num-questions  2
                :help-priority 1
                :help-info "Math is not only a basic skill for many majors and professions, it is valuable for personal finances and many other aspects of life."
                :help-links '("LEARN.htm")
                ))
  (my-defclass ssl8StudyEnvir  (acad-learning scale)
               ()
               (:default-initargs
                :name-string "ssl8StudyEnvir"
                :label  "ssl8-Study home envir"
                :scale-name "Study Environment"  :description "Have good place and necessities to study and time available to study. Studying encouraged by family, friends with minimal conflicting demands. (3 items)" 
                :scale-group-name   "acad-learning"
                :scale-questions '(acmefaml  acmesocs  lrnestud)
                ;;SSS FILLED IN TEMP SCORES BEC NO DATA YET
                :mean-score .632  :standard-deviation .166 :sample-N 814  :num-questions  3
                :help-priority 1
                :help-info (format nil "Having a good study environment is important for academic success. Having a quiet, distraction-free place to study with the needed computer or other facilities is essential.  It is vital to establish such places that fit into your schedule. Assess what influences from family, friends, work, or other committments interfere with your sucess.  Assertively set priorities to study even at the cost of upsetting others if you want to succeed.~%~A" *ENV-STUDY)
                :help-links '("learning_&_study_skills.htm")
                ))
  (my-defclass ssl9AttendHW  (acad-learning scale)
               ()
               (:default-initargs
                :name-string "ssl9AttendHW"
                :label  "ssl9-Attend-doHW"
                :scale-name "Attendance and Persistence"
                :description "Attend classes, never drop classes, and manage study time well. (3 items)" 
                :scale-group-name   "acad-learning"
                :scale-questions '(acmstudy acmndrop  acmatten  )
                ;;SSS FILLED IN TEMP SCORES BEC NO DATA YET
                :mean-score .658  :standard-deviation .232 :sample-N  819  :num-questions  3
                :help-priority 1
                :help-info "Class attendance and concentrated study time are essential to academic success. If you aren't doing well in a class, first try assessing what the problems are and make a strong effort to correct them.  Get needed help."
                :help-links '("academic.htm""LEARN.htm")
                ))
  (my-defclass ssl10MemNotAnx  (acad-learning scale)
               ()
               (:default-initargs
                :name-string "ssl10MemNotAnx"
                :label  "ssl10-Memory-not anx"
                :scale-name "Efficient, Confident Learning"
                :description "Efficient learning time use, good memory, relaxed during exams. (3 items)"
                :scale-group-name   "acad-learning"
                :scale-questions '( lrnmemor  lrntense  lrnsefic)
                ;;SSS FILLED IN TEMP SCORES BEC NO DATA YET
                :mean-score .593  :standard-deviation .222 :sample-N 953  :num-questions  3
                :help-priority 1
                :help-info "Try the help links below to improve your study efficiency, concentration, and reduce test-anxiety"
                :help-links '("LEARN.htm""learning_&_study_skills.htm" "test_anxiety.htm" "concentration.htm")
                ))
  (my-defclass ssl11NotNonAcadMot  (acad-learning scale)
               ()
               (:default-initargs
                :name-string "ssl11NotNonAcadMot"
                :label  "ssl11NotNonAcadMot"
                :scale-name "College Internal Motivation"
                :description "Internal Motivation--to be in college. Internal motives versus pleasing parents, making money, or being confused why in school. Financially self-supporting. Internal motivation for accomplishing any task--including a college degree--is associated with greater success and happiness. (4 items)" 
                :scale-group-name   "acad-learning"
                :scale-questions '(stuextmo  stumoneynew  stuconfu  stufinde stucaree)
                ;;SSS FILLED IN TEMP SCORES BEC NO DATA YET
                :mean-score .593  :standard-deviation .222 :sample-N 953  :num-questions  5
                :help-priority 1
                :help-info "If youu scored low, re-examine your values and priorities, ask what you can personally gain from college (eg. personal competence and growth, professional knowledge, and future career and personal satisifaction and success."
                :help-links '("c15-carp.htm" "time_management.htm""life_goals_and_meaning.htm")
                ))
  (my-defclass ssl12StdyTmAvail  (acad-learning scale)
               ()
               (:default-initargs
                :name-string "ssl12StdyTmAvail"
                :label  "ssl12Study time available-acmtime"
                :scale-name "Study Time Available"
                :description "Not too much time spent working, with family or friends, or in other activities. Studying and class attendence gets top priority."
                :scale-group-name   "acad-learning"
                :scale-questions '(acmtime)
                ;;SSS FILLED IN TEMP SCORES BEC NO DATA YET
                :mean-score .520  :standard-deviation .257 :sample-N 819 :num-questions  1
                :help-priority 1
                :help-info 
                "     ==> You may be working or involved with other activites too many hours per week--with the unit load you are carrying--to be successful in college.  Discuss this with your advisor "
                :help-links '("time_management.htm" "procrastination.htm")
                ))
  ;;ACMTIMEQ  "My schedule gives me so little time to study that it seriously affects my grades."

  (my-defclass ssl13VerbalApt  (acad-learning scale)
               ()
               (:default-initargs
                :name-string "ssl13VerbalApt"
                :label  "ssl13-Verbal aptitude test score=stuverba"
                :scale-name "Verbal Aptitude Score"
                :description "Self-reported verbal aptitude score. (1 item)" 
                :scale-group-name   "acad-learning"
                :scale-questions '(stuverba)
                ;;SSS FILLED IN TEMP SCORES BEC NO DATA YET
                :mean-score .774  :standard-deviation .217 :sample-N 1003  :num-questions  1
                :help-priority 0 :help-info "Aptitude has both genetic and learning componenets.  You can increase your verbal aptitude through taking appropriate classes, studying, and improving learning methods."
                :help-links '("learning_&_study_skills.htm" "writing_help.htm""LEARN.htm")
                ))
  (my-defclass ssl14MathApt  (acad-learning scale)
               ()
               (:default-initargs
                :name-string "ssl14MathApt"
                :label  "ssl14-Math aptitude test score=stumatha"
                :scale-name "Math Aptitude Score"
                :description "Self-reported mathematics aptitude score. (1 item)" 
                :scale-group-name   "acad-learning"
                :scale-questions '(stumatha)
                ;;SSS FILLED IN TEMP SCORES BEC NO DATA YET
                :mean-score .729  :standard-deviation .233 :sample-N 1003  :num-questions  1
                :help-priority 0 :help-info "Aptitude has both genetic and learning componenets.  You can increase your verbal aptitude through taking appropriate classes, studying, and improving learning methods."
                :help-links '("learning_&_study_skills.htm" "LEARN.htm")
                ))

  ;;CAREER-INTEREST
  (my-defclass sincar  (career-interest scale)
               ()
               (:default-initargs
                :name-string "sincar"
                :label  "s-Career-major interest areas"
                :scale-name "Overall College Major Interests"
                :description "General career interests. Many of the individual questions correspond to separate schools, colleges, or collections of academic majors at large universities. Look at your scores on individual questions to find potential majors or minors. A high score on this overall scale may indicate that you are a person with many high interests and that you may want a career that allows for challenging mental activities and some variety over time. 
     NOTE: This test is meant only to suggest some possible academic majors you may show interest in, it is NOT MEANT TO BE AN ALL INCLUSIVE LIST. You should explore the complete catalog of majors at your univesity or college--especially if you have specialized interests or interests not represented in this scale. You might also consider a dual major or special major tailored to your interests."
                :scale-group-name   "career-interest"
                :scale-questions '(car1carg car1carp car1inat caribioh carisocs  carihelp carimath carimed cariwrit carifnar cariethn carilear cariexpe  carigene carinoin carilit carirecp caripoli carimil6 carimanu carilang cariphil caribusi cariengi carifamc cariwoma caricom8 carinte0 )
                ;;SSS FILLED IN TEMP SCORES BEC NO DATA YET
                :mean-score NIL  :standard-deviation NIL :sample-N NIL  :num-questions  29
                :help-priority 1 :help-info *CAR-PLAN
                ;;*CAR-PLAN IS IN FILE help-info.lisp
                #| "Go to our help link about how to make a career decision. Go to your college web site and get information about different majors (or minors) in which you scored higher. And/or find an on-line (or paper) catalog to get specific information on course requirements and potential careers. Note: These test results are only suggestive of alternatives to investigate, and do not include all majors. If you have an unusual set of interests, you might also investigate a dual major or special major (available at many universities."|#
                :help-links '("c15-carp.htm")
                ))
  (my-defclass sinbus  (career-interest scale)
               ()
               (:default-initargs
                :name-string "sinbus"
                :label  "s-Business interests"
                :scale-name "Business-Related Interests"
                :description "Areas of interest within the overall category."
                :scale-group-name   "career-interest"
                :scale-questions '(caribmar caribman caribinf  caribfin caribhrd caribacc carispbu )
                ;;SSS NO DATA YET
                :mean-score nil  :standard-deviation nil :sample-N nil  :num-questions  7
                :help-priority nil :help-info "Go to help-link below and/or see help information for College Major Interest Test: Overall Interests Scale"
                :help-links '("c15-carp.htm")
                ))
  (my-defclass sinengr  (career-interest scale)
               ()
               (:default-initargs
                :name-string "sinengr"
                :label  "s-Engineering major interests"
                :scale-name "Engineering-Related Interests"
                :description "Areas of interest within the overall category."
                :scale-group-name   "career-interest"
                :scale-questions '(carieeng carime cariche2 caricive cariaero carieite caricom9 caribcom )
                ;;SSS NO DATA YET
                :mean-score nil  :standard-deviation nil :sample-N nil   :num-questions  8
                :help-priority nil :help-info "Go to help-link below and/or see help information for College Major Interest Test: Overall Interests Scale"
                :help-links '("c15-carp.htm")
                ))
  (my-defclass sinfinea  (career-interest scale)
               ()
               (:default-initargs
                :name-string "sinfinea"
                :label  "s-Fine art major interests"
                :scale-name "Fine Arts-Related Interests"
                :description "Areas of interest within the overall category."
                :scale-group-name   "career-interest"
                :scale-questions '(carimusi cariart caridram caridanc cariphot carindde carinte1 )
                ;;SSS NO DATA YET
                :mean-score nil  :standard-deviation nil :sample-N nil  :num-questions  7
                :help-priority nil :help-info "Go to help-link below and/or see help information for College Major Interest Test: Overall Interests Scale"
                :help-links '("c15-carp.htm")
                ))
  (my-defclass sinhelp  (career-interest scale)
               ()
               (:default-initargs
                :name-string "sinhelp"
                :label  "s-Helping profession major interests"
                :scale-name "Helping, Teaching, Counseling-Related Interests"
                :description "Areas of interest within the overall category."
                :scale-group-name   "career-interest"
                :scale-questions '(cariteac caricoun carieduc carihadu carihchi caritvoc caricom4 carsocwo cark12te  carminis)
                ;;SSS NO DATA YET
                :mean-score nil  :standard-deviation nil :sample-N nil   :num-questions  10
                :help-priority nil :help-info "Go to help-link below and/or see help information for College Major Interest Test: Overall Interests Scale"
                :help-links '("c15-carp.htm")
                ))
  (my-defclass sinlang  (career-interest scale)
               ()
               (:default-initargs
                :name-string "sinlang"
                :label  "s-Language major interests"
                :scale-name "Language-Related Interests"
                :description "Areas of interest within the overall category."
                :scale-group-name   "career-interest"
                :scale-questions '(carifren cariital carigerm cariruss carijapn carichin  cariclas carispan caripor)
                ;;SSS NO DATA YET
                :mean-score nil  :standard-deviation nil :sample-N nil   :num-questions  9
                :help-priority nil :help-info "Go to help-link below and/or see help information for College Major Interest Test: Overall Interests Scale"
                :help-links '("c15-carp.htm")
                ))
  (my-defclass sinmed  (career-interest scale)
               ()
               (:default-initargs
                :name-string "sinmed"
                :label  "s-Medical major interests"
                :scale-name "Medically-Related Interests Scale"
                :description "Areas of interest within the overall category."
                :scale-group-name   "career-interest"
                :scale-questions '(carimd carinurs caripthe  cariheal carikine caricom5 carmedte)
                :mean-score nil  :standard-deviation nil :sample-N nil  :num-questions  7
                :help-priority nil :help-info "Go to help-link below and/or see help information for College Major Interest Test: Overall Interests Scale"
                :help-links '("c15-carp.htm")
                ))
  (my-defclass sinmiltc  (career-interest scale)
               ()
               (:default-initargs
                :name-string "sinmiltc"
                :label  "s-Law, Milit Interests"
                :scale-name "Law, Law Enforcement, or Military-Related Interests"
                :description "Areas of interest within the overall category."
                :scale-group-name   "career-interest"
                :scale-questions '(carilaw caricrim carimil7)
                :mean-score nil  :standard-deviation nil :sample-N nil  :num-questions  3
                :help-priority nil :help-info "Go to help-link below and/or see help information for College Major Interest Test: Overall Interests Scale"
                :help-links '("c15-carp.htm")
                ))
  (my-defclass inNatSci  (career-interest scale)
               ()
               (:default-initargs
                :name-string "inNatSci"
                :label  "s-Nat Sci Interests"
                :scale-name "Natural Science-Related Interests"
                :description "Areas of interest within the overall category."
                :scale-group-name   "career-interest"
                :scale-questions '(cariche3 cariphys carigeol cariastr carienvi)
                :mean-score nil  :standard-deviation nil :sample-N nil  :num-questions  5
                :help-priority nil :help-info "Go to help-link below and/or see help information for College Major Interest Test: Overall Interests Scale"
                :help-links '("c15-carp.htm")
                ))
  (my-defclass sinsocsc  (career-interest scale)
               ()
               (:default-initargs
                :name-string "sinsocsc"
                :label  "s-Social science major interests"
                :scale-name "Social Science-Related Interests"
                :description "Areas of interest within the overall category."
                :scale-group-name   "career-interest"
                :scale-questions '(caripsyc carisoco carihist caripols cariecon cargeogr cariamer cariantr carianth  carispee carling  )
                :mean-score nil  :standard-deviation nil :sample-N nil  :num-questions  11
                :help-priority nil :help-info "Go to help-link below and/or see help information for College Major Interest Test: Overall Interests Scale"
                :help-links '("c15-carp.htm")
                ))
  (my-defclass sinwoeth  (career-interest scale)
               ()
               (:default-initargs
                :name-string "sinwoeth"
                :label  "s-Womens or ethnics studies mj int"
                :scale-name "Women and Ethnic Group-Related Interests"
                :description "Areas of interest within the overall category."
                :scale-group-name   "career-interest"
                :scale-questions '(cariaist caribstu carimexa cariasam cariamst cariwstu)
                :mean-score nil  :standard-deviation nil :sample-N nil  :num-questions  6
                :help-priority nil :help-info "Go to help-link below and/or see help information for College Major Interest Test: Overall Interests Scale"
                :help-links '("c15-carp.htm")
                ))
  (my-defclass sinwrite  (career-interest scale)
               ()
               (:default-initargs
                :name-string "sinwrite"
                :label  "s-Writing major interests"
                :scale-name "Writing and Media-Related Interests"
                :description "Areas of interest within the overall category."
                :scale-group-name   "career-interest"
                :scale-questions '(cariengl carijour)
                :mean-score nil  :standard-deviation nil :sample-N nil  :num-questions  2
                :help-priority nil :help-info "Go to help-link below and/or see help information for College Major Interest Test: Overall Interests Scale"
                :help-links '("c15-carp.htm")
                ))

  ;;OUTCOME SCALES
  ;;
  (my-defclass sehappy  (outcome scale)
               ()
               (:default-initargs
                :name-string "sehappy"
                :label  "s-Overall happiness"
                :scale-name "Overall Happiness"
                :description "Overall happiness in various life areas including home, career, family, romance, recreation, health, and direct questions about overall happiness for recent past, current, and expected future time periods (15items). An overall low score may indicate high unhappiness and depression. Check individual questions to identify areas of high stress, avoidance, and/or need for improvement or help. (15 items)"
                :scale-group-name   "outcome"
                :scale-questions '(hapclfrn hapcarnw hapcarfu hapfrien haparea hapwkrel happe haprecre  hapsexre hapfamil hapselfd hapspiri hapyear hap3year haplife hapexpec)
                :mean-score ".600"  :standard-deviation ".184" :sample-N  3185  :num-questions  15
                :help-priority 2.0  :help-info  "Check areas where you are not scoring high. Also, check your HQ score. SHAQ factors such as self-esteem, emotional coping, self-management, interpersonal skills, etc. Use the helplinks to improve areas that can increase your happiness."
                :help-links '("my-peek.htm""index.html""hhapchkl.htm")
                ))
  (my-defclass srdepres  (outcome scale)
               ()
               (:default-initargs
                :name-string "srdepres"
                :label  "s-LoDepression outcomes"
                :scale-name "Low Depression Symptoms and Treatment"
                :description "Items were developed from the DSM-IV depression diagnosis criteria and written as self-assessment items.  The scale also asks the amount of psychotherapy and medication taken for depression. It was scored in reverse so that high scores would mean low depression. Reverse scored. (6 items)"
                :scale-group-name   "outcome"
                :scale-questions '(rdepfeel rdepthou rdepdyss rdepmajs rdepmeds rdepther)
                :mean-score ".599"  :standard-deviation ".225" :sample-N  2819
                :num-questions  6
                :help-priority 2.0 :help-info "If you are suffering from too much depression, then we strongly advise you to make learning how to find happiness and cope with depression and its causes a high priority in your life. Alternatives include reading self-help materials, learning from others who have learned to overcome problems similar to yours, and seeking professional help."
                :help-links '("depression.htm" "my-peek.htm" "h85cdepr.htm")
                ))
  (my-defclass sranxiet  (outcome scale)
               ()
               (:default-initargs
                :name-string "sranxiet"
                :label  "s-LoAnxiety symp+treat outcomes"
                :scale-name "Anxiety Symptoms and Treatment"
                :description "Items were developed from the DSM-IV anxiety disorder diagnosis criteria and written as self-assessment items. The scale also asks the amount of psychotherapy and medication taken for anxiety-related disorders. Included were phobias and some obsession and compulsion-related items. Reverse scored. (9 items)"
                :scale-group-name   "outcome"
                :scale-questions '(ranxperf ranxallt ranxpstd ranxsoci ranxocd ranxphob ranxpani ranxther  ranxmeds) 
                :mean-score ".719"  :standard-deviation ".183" :sample-N 3298  :num-questions  9
                :help-priority 2.0  :help-info "If you are suffering from too much anxiety or anxiety-related disorders, then we strongly advise you to make learning how to find happiness and cope with anxiety and its causes a high priority in your life. Alternatives include reading self-help materials, learning from others who have learned to overcome problems similar to yours, and seeking professional help."
                :help-links '("anxiety.htm"  "my-peek.htm" "h8hf2.htm")
                ))
  (my-defclass srangagg  (outcome scale)
               ()
               (:default-initargs
                :name-string "srangagg"
                :label  "s-LoAnger-aggression outcomes"
                :scale-name "Low Anger-Aggression"
                :description  "Items include frequency of losing temper, name-calling/yelling, aggressive acts, and thoughts about getting even. Anger-related problems--such as aggressive,  threatening, dominating, violent, or abusive behavior. Often accompanied by feelings of loneliness, being unloved, not being understood, or persecution. Reverse scored. (5 items)"
                :scale-group-name   "outcome"
                :scale-questions '(rangfeel rangyell rangdomi rangthou rangdest)
                :mean-score ".772"  :standard-deviation ".163" :sample-N 3262  :num-questions  5
                :help-priority 2.0 :help-info "If you have any of these problems, then we strongly advise you to make a high priority of reducing your anger and replacing aggressive behavior with assertive, diplomatic, and understanding behavior. Learn to realize that every moment of anger is a moment less of being happy and that every time that you behave aggressively toward someone, it may reduce their caring or respect for you--leading eventually to their rejecting you. You may be blind to how much your hostility or dominance is at the root of many other oproblems that seem unrelated to anger (such as problems in relationships, career advancement, etc.).  Try learning how to find peace and happiness and make coping with anger and hostile behavior a top priority in your life. Use our links to interpersonal skills and assertive conflict resolution as a start." 
                :help-links '("b-anger.htm" "my-peek.htm")
                ))
  (my-defclass srelhlth  (outcome scale)
               ()
               (:default-initargs
                :name-string "srelhlth"
                :label  "s-Health outcomes"
                :scale-name "Physical Health"
                :description "General indicators of your physical health.  Frequency of illness, alcohol and drug use, weight, and conditioning estimates. (6 items)"
                :scale-group-name   "outcome"
                :scale-questions '(rhlfreqi rhlalcoh rhlsmoke rhldrugs rhlphysi rhlweigh)
                :mean-score ".702"  :standard-deviation ".133" :sample-N 3081  :num-questions  6
                :help-priority 1 :help-info "Research has conistently shown that your daily eating, exercise, addicitve, stress-related, and other health-related habits can have a huge effect on your health over a period of years.  Moderate to vigorous daily exercise, good nutrition, not smoking or using drugs, 7-8 hours sleep/night, keeping weight down, having a minimally stressful, happy life, and not engaging is physically risky activities have all been shown to be important for long-term physical health. If you are unsure of what is healthy exercise, nutrician, etc., begin reading to find out.  Your life may depend upon it."
                :help-links '("health tips.htm")
                ))
  (my-defclass srpeople  (outcome scale)
               ()
               (:default-initargs
                :name-string "srpeople"
                :label  "s-Relationship outcomes"
                :scale-name "Interpersonal Relations"
                :description "Number and quality of friends, happiness in marital-like relationship, and work relationships. (7 items) "
                :scale-group-name   "outcome"
                :scale-questions '(rpehapfr rpehmarr rpenetw rpeclfrn rpenumfr rpenumcl rpecommi)
                :mean-score ".521"  :standard-deviation ".153" :sample-N 2673  :num-questions  7
                :help-priority 1.5 :help-info "If you haven't had the kind of romantic, friendship, family, or professional relationships you would prefer, then it is possible to learn how to improve your interpersonal skills and change your habits to make a even dramatic improvements. Many others have had remarkable success by setting goals to improve their relationships then reading, observing successful role-models, taking classes or counseling, and/or practicing new ways of thinking and acting."
                :help-links '("conversational_skills.htm""assertion_training.htm" "overcoming_loneliness.htm")
                ))



  ;;---SUBSCALES -------------------------------------------------------------
  ;;ddd
  ;;
  ;;WORLDVIEW-SS
  (my-defclass sswvgratpt  (sworldview subscale)
               ()
               (:default-initargs
                :name-string "sswvgratpt"
                :label  "sswv-Grateful  abundance beliefs"
                :scale-name "Grateful Abundance Beliefs" 
                :description  "High gratitude for life and whatever one has; high proportion of positive thoughts. (5 items). Had best correlation with overall happiness of any scale (0.722). Also correlated 0.574 with low depression, 0.445 with low anxiety, and 0.356 with low anger/aggression."
                :scale-questions '( tbvgrati wovabund  wovgrate )
                :mean-score ".668"  :standard-deviation ".198"  :sample-N 3200  :num-questions  5
                :help-priority 1     :help-info "Having low expectations of what you will receive and being grateful for your life and all you do receive is a strong underlying basis for positive thinking and happiness."
                :help-links '("h44defic.htm" "h4world.htm" "h45strea.htm")
                ))
  (my-defclass sswvoptims  (sworldview subscale)
               ()
               (:default-initargs
                :name-string "sswvoptims"
                :label  "sswv-Optimism about self and world"
                :scale-name "Optimism"
                :description  "Optimism about self and the world. Good forces in control. Optimism increases motivation, energy, and positive thoughts. (3 items). Correlated .543with happiness, .354 with low depression, .284 with low anxiety, and .265 with low anger/aggression."
                :scale-group-name   "sworldview"
                :scale-questions '(wovprogr  wovgoodf  wovmylif wovposth)
                :mean-score "641"  :standard-deviation ".196" :sample-N 3200  :num-questions  4
                :help-priority 1     :help-info "Believing that the world, your local world, and your personal life are under the control of positive forces moving in a positive direction is another basic belief system that increases happiness and success."
                :help-links '("h4world.htm")
                ))
  (my-defclass sswventit  (sworldview subscale)
               ()
               (:default-initargs
                :name-string "sswventit"
                :label  "sswv-NotEntitlement beliefs"
                :scale-name "No Entitlment Beliefs"
                :description "Not believing that person owed either the basic necessities or a high standard of living. Don't feel entitled to anything in life. Belief all we receive is a bonus.. (2 items). Correlated .157 with happiness, 164, with low depression,.185 with low anxiety, and  .266 with low anger/aggression."
                :scale-group-name   "sworldview"
                :scale-questions '(tbventit wovnfair  wovinjur  woventit)
                :mean-score ".496"  :standard-deviation ".208" :sample-N 3162  :num-questions  0
                :help-priority 1     :help-info "People "
                :help-links '("h44defic.htm" )
                ))
  ;;SELF-WORTH-SS
  (my-defclass ssswNonCont  (stbslfwo subscale)
               ()
               (:default-initargs
                :name-string "ssswNonCont"
                :label  "sssw-Not conting or dysf SelfWorth"
                :scale-name "Unconditional Self-Worth"
                :description "Self-worth based upon being human and internal qualities--not based upon being liked, strong, the best, living by the rules, being a winner, or any other conditional or external factor. (6 items). "
                :scale-group-name   "stbslfwo"
                :scale-questions '(tbvothfi  tbvliked  tbvweak  tbvbest  tbvrules  tbvwinne)
                :mean-score ".655"  :standard-deviation "165" :sample-N 3246  :num-questions  6  ;;SSS tbvweak HERE OR bacallsf--accept all self--not weak or dependent'
                :help-priority 1     :help-info "Improving unconditional self-worth can reduced anxiety about what others think of you, about being successful, or many other frequent causes of anxiety and depression."
                :help-links '("h5self.htm")
                ))
  ;;SSS  IS IT OPPOSITE OF ENTITLEMENT???
  ;;Used my FA on this scale
  (my-defclass ssswHapAllGrat  (stbslfwo subscale)
               ()
               (:default-initargs
                :name-string "ssswHapAllGrat"
                :label  "sssw-HigherSelf--MaxLoveHapBal-Grat"
                :scale-name "Balanced Love-Happiness Priorities"
                :description "Value love and happiness for self and all others, gratitude, and make decisions to maximize happiness balancing it across time and people.(5 items). Correlated .567 with happiness, .328, with low depression,.247 with low anxiety, and  .360 with low anger/aggression."
                :scale-group-name   "stbslfwo"
                :scale-questions '(tbvbalan tbvhapca tbvgrati thvuncon thvselfw)
                :mean-score ".573"  :standard-deviation ".172" :sample-N 3246  :num-questions  5
                :help-priority 1     :help-info "Self-worth is loving and accepting yourself and others.  Valuing happiness and health are an important aspect of self-worth. See help-links."
                :help-links '("h1hap.htm""h5self.htm") 
                ))
  ;;SSS PROBLEM -- CANT FIND ON ALPHA ANAL -- FIND ORIGIN OF THIS SS
  (my-defclass ssswAcAllSelf  (stbslfwo subscale)
               ()
               (:default-initargs
                :name-string "ssswAcAllSelf"
                :label  "sssw-Accept all of self  1"
                :scale-name "Self-Acceptance"
                :description "Accepting and valuing all parts of oneself including dysfunctional parts and parts not consistent with overall self-image, values, etc. even though may be trying to change them. Not anger at self parts or repression of them.(1 item). "
                :scale-group-name   "stbslfwo"
                :scale-questions '( thvselfa) ;;SSS CHECK THIS did include tbvweak
                :mean-score ".343"  :standard-deviation ".216" :sample-N 3246  :num-questions  1 ;;was 2
                :help-priority 1     :help-info "Freud first demonstrated--and psychology has confirmed--that rejected or repressed parts of yourself can cause internal conflict, negative emotions, and dysfunctional behavior. Use help-links to learn methods for accepting all parts of yourself."
                :help-links '("h53accep.htm"  "h32decis.htm" "h23explo.htm")
                ))
  ;;IE-SS
  (my-defclass ssieautony  (siecontr subscale)
               ()
               (:default-initargs
                :name-string "ssieautony"
                :label  "ssie Autonomy  independence"
                :scale-name "Relationship Autonomy"
                :description "Autonomy, independence from being controlled by others.  Belief in taking care of self, controlling own happiness, not dependent upon one person (3 items). Correlated .553 with happiness, .438, with low depression,.434 with low anxiety, and  .367 with low anger/aggression."		

                :scale-group-name   "siecontr"
                :scale-questions '(iecselfs  iecicont  iecdepen)
                :mean-score ".702"  :standard-deviation ".211" :sample-N 2690  :num-questions  3
                :help-priority 1     :help-info "Being internally controlled by your strong values, beliefs, and habits/skills helps one persist in the face of negativism, disapproval, and rejection by others.  The mature autonomous person carefully considers the opinions, desires, and effects on others; then makes the final decision considering those factors along with his/her own perspective. Integrity and taking ultimate responsibility for his/her own acts is normally a top value for the autonomous person."
                :help-links '("h6intern.htm")
                ))
  (my-defclass ssiencodep  (siecontr subscale)
               ()
               (:default-initargs
                :name-string "ssiencodep"
                :label  "ssie-Not codependent"
                :scale-name "Not Codependent"
                :description "Not codependent or taken advantage of by others you help. Not care for others and neglect self or give too much more than others do for you. (3 items)Correlated .213 with happiness, .230, with low depression,.283 with low anxiety, and  .243 with low anger/aggression." 			

                :scale-group-name   "siecontr"
                :scale-questions '(ieccofee  ieccoprb)
                :mean-score ".538"  :standard-deviation ".238" :sample-N 2690  :num-questions  2
                :help-priority 1     :help-info "Some caring people believe that they should put their own needs below that of others, give so much trying to help people who have dysfunctional or addictive habits that they mar their own lives."
                :help-links '("h6intern.htm")
                ))
  (my-defclass ssienother  (siecontr subscale)
               ()
               (:default-initargs
                :name-string "ssienother" ;;NotExtrC
                :label  "ssie-Not care-provider for other"
                :scale-name "Control Own Emotions Beliefs"
                :description "Belief that person has primary/direct control of own happiness and other emotions--not controlled by primarily heredity, environment, or others (2 Items)." 
                ;;;SSS CHECK which right? ;;was "Not primary caregiver of another adult."
                :scale-group-name   "siecontr"
                :scale-questions '(iecpeopl  iecgenet)
                :mean-score ".565"  :standard-deviation ".214" :sample-N 2690  :num-questions  2
                :help-priority 1     :help-info "The primary direct cause of emotions is one's cognitive system--values, beliefs, thoughts, and perceptions. External events interact with those mental structures to produce emotions.  Learn how to change both internal and external sources of happiness to change your emotions."
                :help-links '("h2choose.htm")
                ))

  ;;BELIEFS-SS
  (my-defclass ssb2Ethic  (sethbel subscale)
               ()
               (:default-initargs
                :name-string "ssb2Ethic"
                :label  "ssb2-Ethics grounded in abstract absolutes"
                :scale-name "Abstract Absolutes-Grounded Ethics"
                :description "Ethics based upon abstract absolutes versus relativism. Philosophical beliefs guide daily life. Believe we are ethically responsible even if bad genes or environment. Science/reason alone not enough to guide ethics. (4 items). Correlated .346 with happiness, .266, with low depression,.294 with low anxiety, and  .373 with low anger/aggression." 
                ;; "Basis of ethical beliefs are general principles, global values related to all humans vs. basis situational beliefs or limited groups such as nation or family."
                :scale-group-name   "sethbel"
                :scale-questions '(tb2relat   tbv2notr  tb2reaso  tbv2core)
                :mean-score ".672"  :standard-deviation ".150" :sample-N 2366  :num-questions  4
                :help-info "Explore the foundations of your ethical beliefs. Do you know what your top value/goal?  Do you rely on a religion or a certain philosophy as your ethical foundation? What are its basic ethical principles? Do you say that your family or other group is your top value? If so, what would you do if you lost them all?"
                :help-links '("life_goals_and_meaning.htm" "h3hiself.htm" "h13topgo.htm")
                ))
  (my-defclass ssb2Forgiv  (sethbel subscale)
               ()
               (:default-initargs
                :name-string "ssb2Forgiv"
                :label  "ssb2-Forgiving-egalitarian"
                :scale-name "Forgiveness"
                :description "Highly forgiving of others, egalitarian/democratic beliefs. Forgiveness based upon inner qualities not based upon good works.  Not believe bad only happens to bad (2 items).  Correlated .282 with happiness, .216, with low depression,.294 with low anxiety, and  .378 with low anger/aggression." 	

                :scale-group-name  "sethbel"
                :scale-questions '(tb2punis   tb2gdwrk)
                :mean-score ".751"  :standard-deviation ".192" :sample-N 2366  :num-questions  2
                :help-priority 1     :help-info "Learning to forgive yourself and others is a key to self-worth, happiness, and close interpersonal relations."
                :help-links '("h53accep.htm" "h23explo.htm""h51worth.htm")
                ))
  (my-defclass ssb2IDgrnd  (sethbel subscale)
               ()
               (:default-initargs
                :name-string "ssb2IDgrnd"
                :label  "ssb2-Identify with abstract whole"
                :scale-name "Identification With Humanity"
                :description "Identify with abstract whole such as all humanity vs. a specific group (eg. family) or a specific role.(2 items). Correlated .258 with happiness and  .214 with low anger/aggression." 

                :scale-group-name   "sethbel"
                :scale-questions '(tb2idhum   tb2movem)
                :mean-score ".412"  :standard-deviation ".165" :sample-N 2366  :num-questions  2
                :help-info "Identification primarily with all humanity is not only is consistent with the advice of great philosophers and religious leaders, but also increases caring for all people, self-acceptance, and less dependence (and control by) family, friends, or other groups."
                :help-links '("h3hiself.htm")
                ))
  (my-defclass ssb2GrndMng  (sethbel subscale)
               ()
               (:default-initargs
                :name-string "ssb2GrndMng"
                :label  "ssb2-Meaning from abstract absolutes"
                :scale-name "Abstract Principles-Entities Ethics"
                :description "Base meaning on abstract principles such as integrity, honesty, God, Nature, etc. instead of particular objects, events, or situational factors (eg. money, career, home, or other people). Correlated .256 with happiness, .225, with low depression,.264 with low anxiety, and  .277 with low anger/aggression." 
                :scale-group-name   "sethbel"
                :scale-questions '(tb2groum   tb2selfm)
                :mean-score ".624"  :standard-deviation ".204" :sample-N 2366  :num-questions  2
                :help-info "One advantage of basing beliefs and behavior upon abstract and mental values that it provides immunity from anxiety over external events because you have so much more direct control over mental events than external events." 	
                :help-links '("h13topgo.htm" )
                ))
  (my-defclass ssb2InrGood  (sethbel subscale)
               ()
               (:default-initargs
                :name-string "ssb2InrGood"
                :label  "ssb2-Inner goodness in all"
                :scale-name "Inner Goodness In All"
                :description "Belief in basic inner value and goodness in all people. Goodness depends more on attitude than behavior. (2 items). Correlated .327 with happiness and  .226 with low anger/aggression." 
                :scale-group-name   "sethbel"
                :scale-questions '(tb2gdatt  tb2allgd)
                :mean-score ".546"  :standard-deviation ".182" :sample-N 2366  :num-questions  2
                :help-info "Think about how all newborn babies have inherent worth, and how at least some of that value persists even though a person may learn dysfunctional beliefs and behaviors. Consider the arguments of the great philosophers and religions that value all human beings."
                :help-links '("h51worth.htm")
                ))
  (my-defclass ssb2noAstr  (sethbel subscale)
               ()
               (:default-initargs
                :name-string "ssb2noAstr"
                :label  "ssb2-Not belief in astrology. (1 item)"
                :scale-name "Not Astrology Belief"
                :description "Does not believe in astrology"
                :scale-group-name   "sethbel"
                :scale-questions  '(tbv2astr)
                :mean-score ".718"  :standard-deviation ".242" :sample-N 2366  :num-questions  1
                :help-info "Science rejects astrology and any idea that stars' alignments have any significant effect on human behavior or history. The main problem with believing in astrology or even reading forecasts is that it distracts people from attending to the real factors that are influencing their lives and may cause them to make bad decisions based upon these unreliable predictions instead of using their own judgement. Relying on astrology may come from low self-confidence in one's own judgement."
                :help-links '("h54confi.htm" "h6intern.htm")
                ))
  (my-defclass ssb2lifad  (sethbel subscale)
               ()
               (:default-initargs
                :name-string "ssb2lifad"
                :label  "ssb2-Belief in LifeAfterDeath1"
                :scale-name "Life After Death Belief"
                :description "Belief in life after death. (1 item)"
                :scale-group-name   "sethbel"
                :scale-questions '(tb2lifad)
                :mean-score ".606"  :standard-deviation ".270" :sample-N 2366
                :num-questions  1
                :help-info "Belief in life after death may lower people's fear of death and illness.  However, it may also cause people to disregard their own welfare thinking that they will be rewarded in heaven (extreme example is suicide bombers)."
                :help-links '()
                ))

  ;;SSS COMPARE TO FORGIVENESS ASPECTS OF SCALES ABOVE??
  #|(my-defclass sstb3Forgive  (sethbel subscale)
             ()
             (:default-initargs
              :name-string "sstb3Forgive"
              :label  "ssb3-Forgiving-not punative"
              :scale-name "Forgive Mistakes"
              :description "Forgiving and not punative when others make mistakes or hurt others or you"
              :scale-group-name   "sethbel"
             :scale-questions '()
             :mean-score nil  :standard-deviation nil :sample-N nil  :num-questions  0
              :help-info ""
              :help-links '()
              ))|#

  ;;WORST-FEARS-SS
  (my-defclass sswfsocial  (sgrfears subscale)
               ()
               (:default-initargs
                :name-string "sswfsocial"
                :label  "sswf-Not not-social or alone"
                :scale-name "Low Social Fears"
                :description  "Low fear of being unwanted, alone, unloved, etc. (4 items). Correlated .492 with happiness, .444, with low depression,.366 with low anxiety, and  .275 with low anger/aggression." 			

                :scale-group-name   "sgrfears"
                :scale-questions '(wovalone   wovnolov  wovliked   wovprobl)
                :mean-score ".550"  :standard-deviation ".229" :sample-N 3162
                :num-questions  4
                :help-priority 1     :help-info "People-related fears such as fear of what others think about you or fears of rejection, being unloved, or being alone can underlie a great deal of unhappiness, anxiety, depression, and dysfunctional behavior. Try our help-links." 
                :help-links '("h43dark.htm""c-rejct.htm""h6intern.htm")
                ))
  (my-defclass sswfself  (sgrfears subscale)
               ()
               (:default-initargs
                :name-string "sswfself"
                :label  "sswf-Not self-related fears"
                :scale-name "Low Self-Related Fears"
                :description  "Confidence can overcome worst fears/problems. Low fear of being overwhelmed by personal problems. (3 items)"
                :scale-group-name   "sgrfears"
                :scale-questions '(wovperso  wovdisco   wovoverc)
                :mean-score ".625"  :standard-deviation ".193" :sample-N 3162
                :num-questions  3
                :help-priority 1     :help-info "First try to clarify what your fears are, then use self-help or professional help to reduce them."
                :help-links '("h43dark.htm" "h5self.htm" "h23explo.htm")
                ))
  (my-defclass sswfpovfai  (sgrfears subscale)
               ()
               (:default-initargs
                :name-string "sswfpovfai"
                :label  "sswf-Not poverty-failure fears"
                :scale-name "Low Failure-Poverty Fears"
                :description "Low fear of poverty, failure, lack of career success. (3 items)"
                :scale-group-name   "sgrfears"
                :scale-questions '(wovhappy  wovpoor  wovsucce)
                :mean-score ".576"  :standard-deviation ".227" :sample-N 3162
                :num-questions  3
                :help-priority 1     :help-info "Being afraid of poverty, failure, a life-style below one's expectations, or similar fears can make life more miserable for someone who has done well than someone who doesn't have those fears and has much less.  Face those fears directly and develop new ways of thinking about them such as Alternative Goals and Plans."
                :help-links '("h43dark.htm" "h23explo.htm""h5self.htm")
                ))
  (my-defclass sswfilldea  (sgrfears subscale)
               ()
               (:default-initargs
                :name-string "sswfilldea"
                :label  "sswf-Not illness-death fears"
                :scale-name "Low Illness or Death Fears"
                :description  "Low fear of illness or death. (2 items)"
                :scale-group-name   "sgrfears"
                :scale-questions '(wovill   wovdeath)
                :mean-score ".702"  :standard-deviation ".236" :sample-N 3162
                :num-questions  2
                :help-priority 1     :help-info "Philosophers have proposed that humans' fear of death (and serious illness) is an underlying cause of human misery.  Death and the possiblity of serious illness is something we all face.  Learning to minimize those fears can bring greater peace to daily life--especially if we have a more immediate threat of death or illness."
                :help-links '("h43dark.htm")
                ))
  ;;SELF-SKILLS-CONF-SS
  (my-defclass sssclearn  (sslfconf subscale)
               ()
               (:default-initargs
                :name-string "sssclearn"
                :label  "sssc-SelfConf-Learning"
                :scale-name "Learning Confidence"
                :description 	"Confidence in own intelligence, learning, study skills, analytical thinking, synthesis, research methodology, computer-related, and critical thinking. (7 items)"
                :scale-group-name   "sslfconf"
                :scale-questions '(slflearn  slfcritt  slfresea  slfanaly  slfsynth    slfcompu  slfiq )
                :mean-score ".801"  :standard-deviation ".143" :sample-N 3225  :num-questions  7
                :help-info "It is human intelligence and ability to learn and adapt that separates us most from the lower animals.  Research shows that people who have better learning skills tend to be happier and more successful. The help-links below only cover a limited set of learning skills, but are a place to start."
                :help-links '("learning_&_study_skills.htm" "LEARN.htm")
                ))
  (my-defclass sssccopopt  (sslfconf subscale)
               ()
               (:default-initargs
                :name-string "sssccopopt"
                :label  "sssc-SelfConf-PosAchCopeRelate"
                :scale-name "Achievement Confidence"
                :description "Confidence/skills of optimistic-assertive engagement for both people and nonpeople tasks. Achievement motivation, work habits, emotional control, optimism, self-disclosure, and caring conflict resolution. (6 items)"
                :scale-group-name   "sslfconf"
                :scale-questions '(slfself4  slfcope  slfself5  slfconfl   slfoptim  slffrien)
                :mean-score ".623"  :standard-deviation ".201" :sample-N 3225  :num-questions  6
                :help-priority 1     :help-info "Engaging is tasks with enthusiasm and committment to excellence improves happiness, success, and relationships."
                :help-links '("patsm96.htm" "concentration.htm" "h-app-e-InterpersonalSkills.htm")
                ))
  (my-defclass ssscsmsmsd  (sslfconf subscale)
               ()
               (:default-initargs
                :name-string "ssscsmsmsd"
                :label  "sssc-SelfConf-self control discipline  develop"
                :scale-name "Self-Management Confidence"
                :description "Confidence/skills in self control, self-discipline, and self-development. Good decision-making and planning, time-management in all areas of self-development/change, finances, self-discipline, health, etc. (7 items)."
                :scale-group-name   "sslfconf"
                :scale-questions '( slfdecma  slftimem  slfselfm  slfachan  slfmana6   slfheal3  slfindep)
                :mean-score ".657"  :standard-deviation ".191" :sample-N 3225 
                :num-questions  7
                :help-priority 1     :help-info "The self-management skills taught in the link below have been shown to be keys to both success and happiness because they help you get control of your life and keep your actions more in line with your values and goals."
                :help-links '("time_management.htm""wsps.htm")
                ))
  (my-defclass ssscinterp  (sslfconf subscale)
               ()
               (:default-initargs
                :name-string "ssscinterp"
                :label  "sssc-SelfConf-Career interpersonal skills"
                :scale-name "Career-Related Interpersonal Confidence"
                :description "Confidence/skills in career-related interpersonal skills.  Managing others, persuasion, meeting people, public speaking, and adaptability (7 items). "  
                :scale-group-name   "sslfconf"
                :scale-questions '(slfadapt  slfmeetp  slfpersu  slfmana7  slfbusan   slfspeak    slfjobse)
                :mean-score ".657"  :standard-deviation ".188" :sample-N 3225
                :num-questions  7
                :help-priority 1     :help-info "Improving basic interpersonal skills can improve almost all aspects of peoples' lives--from career to personal to romantic."
                :help-links '("assertion_training.htm""developing_intimacy.htm""conversational_skills.htm")
                ))
  (my-defclass ssscallhelp  (sslfconf subscale)
               ()
               (:default-initargs
                :name-string "ssscallhelp"
                :label  "sssc-SelfConf-Helping skills"
                :scale-name "Helping Skills Confidence"
                :description "Confidence/skills for counseling or teaching others.  Knowledge of philosophy, religion, and social science and helping, counseling, teaching interpersonal skills. (6 Items)"
                :scale-group-name   "sslfconf"
                :scale-questions '(slfsocsc  slfphilr  slflibar    slfeduch  slfliste slfhelps)
                :mean-score ".740"  :standard-deviation ".168" :sample-N 3225 
                :num-questions  6
                :help-info "Helping skills are not only vital for people counseling and teaching others (in professional or personal situations), but can be very useful for other types of professional and personal relationships--especially chose and romantic relationships."
                :help-links '("c14-lisn.htm" "h23explo.htm")
                ))
  (my-defclass ssscscience  (sslfconf subscale)
               ()
               (:default-initargs
                :name-string "ssscscience"
                :label  "sssc-SelfConf-Natural science"
                :scale-name "Natural Science Confidence"
                :description "Confidence/skills in natural science knowledge and reasoning including physics, chemistry, biology, and engineering (4 items)." 
                :scale-group-name   "sslfconf"
                :scale-questions '(slfbiosc  slfnatsc  slfheal2  slfengin)
                :mean-score ".583"  :standard-deviation ".201"
                :sample-N 3225  :num-questions  4
                :help-info "Knowledge of natural sciences is useful in many everday situations from understanding how your car or computer works to understanding your health and our environment."
                :help-links '()
                ))
  (my-defclass ssscartcre  (sslfconf subscale)
               ()
               (:default-initargs
                :name-string "ssscartcre"
                :label  "sssc-SelfConf-Art  creative"
                :scale-name "Creative and Artistic Confidence"
                :description "Fine and performing arts, and creative thinking (3 items)" 
                :scale-group-name   "sslfconf"
                :scale-questions '(slfcreat  slfperfa  slffinea)
                :mean-score ".659"  :standard-deviation ".204"
                :sample-N 3225  :num-questions  3
                :help-info "Being creative means looking at problems from new perspectives and finding new solutions.  This general skill can help generate success in almost all life endeavors.  For non-professionals knowledge and appreiciation of art can make life and entertainment much more interesting and fun."
                :help-links '()
                ))


  ;;SM-SS
  (my-defclass sssmTimeManGoalSet (sselfman  subscale)
               ()
               (:default-initargs
                :name-string "sssmTimeManGoalSet"
                :label  "sssm-Time management-OPATSM"
                :scale-name "Self-Management Skills and Habits"
                :description "Using a good self-management system. Time management/goal-setting/decision-making  Frequent sessions prioritizing goals and writing daily task lists for each life area. Breaking large projects into organized, scheduled tasks. (5 items)"
                :scale-group-name   "sselfman"
                :scale-questions '(smtfutur  smtptodo smtgoals  smtschd   smt2dtod)
                :mean-score ".505"  :standard-deviation ".220"
                :sample-N 2127  :num-questions  5
                :help-info "Having a proven system for setting goals and priorities, planning, and managing large and daily tasks is a key component of success and happiness. (See research above). The link below describes the elements of one proven self-management system."
                :help-links '("h9patsm.htm")
                ))
  (my-defclass sssmAccompLoRush (sselfman  subscale)
               ()
               (:default-initargs
                :name-string "sssmAccompLoRush"
                :label  "sssm-Busy,accomplishment,efficient"
                :scale-name "Efficient Accomplishement"
                :description "Accomplishment: busy, efficient task completion without feeling too rushed or pressured.  (2 items)"
                :scale-group-name   "sselfman"
                :scale-questions '(smtbusy  smtacmpl)
                :mean-score ".494"  :standard-deviation ".222" 
                :sample-N 2127  :num-questions  2
                :help-priority 1     :help-info "Efficient task accomplishment is often one outcome of a good time-management system.  However, it also comes from looking at all tasks--especially repetitive tasks from a system point-of-view to find new efficiencies that can save time, money, and heartache. Not feeling overwhelmed or pressured comes partly from being well-organized and partly from dealing with underlying fears related to feared possible outcomes of not adequately completing the tasks."
                :help-links '("h9patsm.htm" "possi.htm" "h23explo.htm")
                ))
  (my-defclass sssmSelfDevel (sselfman  subscale)
               ()
               (:default-initargs
                :name-string "sssmSelfDevel"
                :label  "sssm-Self-develop, take advice,habit chng"
                :scale-name "Self-development Skills and Habits"
                :description "Self-development habits and skills including taking advice and self-change program(s).(3 Items)"
                :scale-group-name   "sselfman"
                :scale-questions '(smtsdeve  smtghelp  smthabch)
                :mean-score ".647"  :standard-deviation ".214"
                :sample-N 1936  :num-questions  3
                :help-priority 1  :help-info "Completing SHAQ is a good beginning to self-development.  It gives you feedback on many clearly defined values, beliefs, skills, and habits that you can think about and decide if you want to make changes.  The help-links provided give you one place to start for each."
                :help-links '("index.html" "self-helpLinks.htm")
                ))
  (my-defclass sssmHealthHabs (sselfman  subscale)
               ()
               (:default-initargs
                :name-string "sssmHealthHabs"
                :label  "sssmHealthHabits"
                :scale-name "Health Habits"
                :description "Health habits. Research has shown that your nutritional, exercise, sleep, substance abuse, safety and risk-taking habits, and stress management can have very large effects upon your health and life span. (3 Items)"
                :scale-group-name   "sselfman"
                :scale-questions '(smtexerc  smteath  smtsleep)
                :mean-score ".558"  :standard-deviation ".176"
                :sample-N 2127  :num-questions  3
                :help-priority 1     :help-info "Learning and practicing good health habits is one of the simplest and best ways to have a long, healthy, and happy life."
                :help-links '("health tips.htm"  "weight_control.htm" "substance_abuse.htm")
                ))

  ;;COPE-SS
  (my-defclass sscpProbSolv  (semotcop subscale)
               ()
               (:default-initargs
                :name-string "sscpProbSolv"
                :label  "sscp-Prob solve talk,selfexpl,expect"
                :scale-name "Emotional Coping Using Problem-Solving"
                :description "When upset, face problem now and use positive problem-solving to overcome it. Face, explore, and discuss problems. (4 items)"
                :scale-group-name   "semotcop"
                :scale-questions '(coppsolv  coptalks  copexpec  copselfe)
                :mean-score ".599"  :standard-deviation ".182"
                :sample-N 3273  :num-questions  4
                :help-priority 1     :help-info "Learn to focus on rising above the problem and current feelings and using good problem-solving methods to accept the reality of the situation and solve the problem with some sort of a solution that helps in the immediate situation. Also, begin to think about long-term solutions when you have time. When you start to get dysfunctional thoughts, remind yourself of their distructive consequences and re-focus on positive thoughts, solutions, and actions."
                :help-links '("h8hf2.htm"   "wsps.htm""concentration.htm")
                ))
  (my-defclass sscpPosThoughts  (semotcop subscale)
               ()
               (:default-initargs
                :name-string "sscpPosThoughts"
                :label  "sscp-Pos thoughts-phil, pep talk"
                :scale-name "Emotional Coping Using Positive Thoughts"
                :description "When upset, think positive thoughts.  Positive; not critical, punitive, or negative thoughts in response to negative emotions. (2 items)"
                :scale-group-name   "semotcop"
                :scale-questions '(copnegth  coppepta)
                :mean-score ".477"  :standard-deviation ".204"
                :sample-N 3273  :num-questions  2
                :help-priority 1     :help-info "Develop a positive belief system/philosophy that you can use to generate positive thoughts when you need them. Practice viewing the problem/situation from a more positive perspective, help others do the same, confront negative thoughts, and schedule them for a later time to deal with in depth when you are out of the situation. Give yourself pep talks, seek input only from people who can really help--avoid those who interfere."
                :help-links '("h8hf2.htm")
                ))
  (my-defclass sscpPosActs  (semotcop subscale)
               ()
               (:default-initargs
                :name-string "sscpPosActs"
                :label  "sscp-Pos acts,fun,exercise"
                :scale-name "Emotional Coping Using Positive Activities"
                :description "When upset, do positive, constructive activities such as complete problem-related or other involving tasks, have fun, exercise, etc. (2 items)"
                :scale-group-name   "semotcop"
                :scale-questions '(copfun  coppe)
                :mean-score ".457"  :standard-deviation ".202"
                :sample-N 3273  :num-questions  2
                :help-priority 1     :help-info "Vigorous positive mental and physical activity reduces negative emotions and increases positive emotions.  Doing helpful tasks, involving, vigorous physical activity and absorging positive mental activity are very good to do along with problem-solving."
                :help-links '("h87focus.htm""h86optim.htm")
                ))
  (my-defclass sscpNoBlameAngerWDraw  (semotcop subscale)
               ()
               (:default-initargs
                :name-string "sscpNoBlameAngerWDraw"
                :label  "sscp-Not anger,blame,withdraw"
                :scale-name "Emotional Coping Without Blaming"
                :description "When upset, don't get angry, too critical, or blame self or others or withdraw. (5 items)"
                :scale-group-name   "semotcop"
                :scale-questions '(copemota  copblame  copwdrw  copnegph   copselfb)
                :mean-score ".580"  :standard-deviation ".202"
                :sample-N 3273  :num-questions  5
                :help-priority 1     :help-info "Anger and aggression hurts you more than anyone.  It undermines relationships and one's love of oneself. Hositility is trying to change the unchangeable. You must peacefully accept the past or inevitable (or even its possibility) no matter how bad it is if you are to get control of your emotions. If you get frustrated or angry, find positive ways of channeling the anger. Vigorous activity can be a therapeutic part of the program."
                :help-links '("h8hf2.htm" "h86optim.htm""b-anger.htm" )
                ))
  (my-defclass sscpNotSmokDrugMed  (semotcop subscale)
               ()
               (:default-initargs
                :name-string "sscpNotSmokDrugMed"
                :label  "sscp-Not smoke,drugs"
                :scale-name "Emotional Coping Without Substance Abuse"
                :description "When upset, don't smoke, drink alcohol, or take drugs. (2 items)"
                :scale-group-name   "semotcop"
                :scale-questions '(copsmoke  copdrug)
                :mean-score ".791"  :standard-deviation ".262"
                :sample-N 3273  :num-questions  2
                :help-priority 1     :help-info "Eating, smoking, and taking drugs to relieve stress reinforces the addictive habit because they often immediately reduce stress!  However, it also strengthens the addictive habit and does nothing to solve any of the problems causing the stress. Try the help-links."
                :help-links '("smoking.htm" "substance_abuse.htm")
                ))
  (my-defclass sscpNotEat  (semotcop subscale)
               ()
               (:default-initargs
                :name-string "sscpNotEat"
                :label  "sscp-Not eat 1"
                :scale-name "Emotional Coping Without Eating"
                :description "When upset, don't eat to feel better. (1 item)"
                :scale-group-name   "semotcop"
                :scale-questions '(copcopea)
                :mean-score ".665"  :standard-deviation ".284"
                :sample-N 3273  :num-questions  1
                :help-priority 1     :help-info "Eating that reduces stress reinforces eating and may contribute significantly to being overweight."
                :help-links '("weight_control.htm")
                ))

  ;;OUTCOME-SS ----------------------------------------------------------------------
  ;;
  ;;SEHAPPY-SS
  ;;Subscales based upon factor anal rotated
  (my-defclass hapSDMeanSpiritSS  (sehappy subscale)
               ()
               (:default-initargs
                :name-string "hapSDMeanSpiritSS"
                :label  "ssh-SelfDevel, meaning/spiritualHap"
                :scale-name "Spiritual and Mental Life Happiness"
                :description "Happiness in your self-development, spiritual life, and life meaning"
                :scale-group-name   "sehappy"
                :scale-questions '(hapselfd  hapspiri)
                :mean-score .6132 :standard-deviation .250 :sample-N 3185  :num-questions  2
                :help-priority 1
                :help-info "Happiness is the result of other factors. A strong philosophy and spiritual life and self-development are key areas for overall happiness. Examine all results on the HQ scales."
                :help-links '("life_goals_and_meaning.htm" "h3hiself.htm")
                ))

  (my-defclass hapCareerExSS  (sehappy subscale)
               ()
               (:default-initargs
                :name-string "hapCareerExSS"
                :label  "ssh-Career happiness"
                :scale-name "Career Happiness"
                :description "Happiness in your career, work, or school"
                :scale-group-name   "sehappy"
                :scale-questions '(hapcarfu hapcarnw )
                :mean-score .610  :standard-deviation .250 :sample-N 3185  :num-questions  2
                ;;SSS CHANGE
                :help-priority 1
                :help-info "Happiness is the result of other factors. Examine HQ scales for ways you can improve your happiness."
                :help-links '("index.html" "self-helpLinks.htm" "c15-carp.htm")
                ))
  (my-defclass hapRecPESS (sehappy subscale)
               ()
               (:default-initargs
                :name-string "hapRecPESS"
                :label  "ssh-Recreation PhysAct happiness"
                :scale-name "Recreation and Physical Activity Happiness"
                :description "Happiness in your recreation and physical activity."
                :scale-group-name   "sehappy"
                :scale-questions '(happe haprecre)
                :mean-score .559  :standard-deviation .248 :sample-N 3185  :num-questions  2
                :help-priority 1
                :help-info "Happiness is the result of other factors. Examine your results on the HQ scales for ways you can improve your happiness."
                :help-links '("index.html" "self-helpLinks.htm" "c15-carp.htm")
                ))
  (my-defclass hapAreaSS  (sehappy subscale)
               ()
               (:default-initargs
                :name-string "hapAreaSS"
                :label  "ssh-LivingArea happiness"
                :scale-name "Living Area Happiness"
                :description "Happiness living in your area."
                :scale-group-name   "sehappy"
                :scale-questions '(haparea)
                ;;SSS NO DATA YET
                :mean-score .6  :standard-deviation .25 :sample-N 3185  :num-questions  1
                :help-priority 1
                :help-info "Happiness is the result of other factors. Examine your results on the HQ scales for ways you can improve your happiness."
                :help-links '("index.html" "self-helpLinks.htm" "c15-carp.htm")
                ))
  (my-defclass hapFamSS  (sehappy subscale)
               ()
               (:default-initargs
                :name-string "hapFamSS"
                :label  "ssh-Family happiness"
                :scale-name "Family Happiness"
                :description "Happiness in your family life."
                :scale-group-name   "sehappy"
                :scale-questions '(hapfamil)
                :mean-score .640  :standard-deviation .272 :sample-N 3185  :num-questions  1
                :help-priority 1
                :help-info "Happiness is the result of other factors. Examine your results on the HQ scales for ways you can improve your happiness."
                :help-links '("index.html" "self-helpLinks.htm" "c15-carp.htm")
                ))
  (my-defclass hapRomSS  (sehappy subscale)
               ()
               (:default-initargs
                :name-string "hapRomSS"
                :label  "ssh-Romantic happiness"
                :scale-name "Romantic Happiness"
                :description "Happiness in your romantic life."
                :scale-group-name   "sehappy"
                :scale-questions '(hapsexre)
                :mean-score .461 :standard-deviation .303 :sample-N 3185  :num-questions  1
                :help-priority 1
                :help-info "Happiness is the result of other factors. Examine your results on the HQ scales for ways you can improve your happiness-especially the ones related to interpersonal relationships."
                :help-links '("conversational_skills.htm" "developing_intimacy.htm")
                ))
  (my-defclass hapFriendsSS  (sehappy subscale)
               ()
               (:default-initargs
                :name-string "hapFriendsSS"
                :label  "ssh-Friends happiness"
                :scale-name "Friendship Happiness"
                :description "Happiness in your friendships"
                :scale-group-name   "sehappy"
                :scale-questions '(hapclfrn hapfrien hapwkrel)
                :mean-score .621  :standard-deviation .250 :sample-N 3185  :num-questions  3
                :help-priority 1
                :help-info "Happiness is the result of other factors. Examine your results on the HQ scales for ways you can improve your happiness-especially the ones related to interpersonal relationships."
                :help-links '("conversational_skills.htm" "developing_intimacy.htm""overcoming_loneliness.htm")
                ))
  (my-defclass hapFutureSS  (sehappy subscale)
               ()
               (:default-initargs
                :name-string "hapFutureSS"
                :label  "ssh-Expected future happiness"
                :scale-name "Expected Future Happiness"
                :description "Overall expectation of future happiness. (1 item)"
                :scale-group-name   "sehappy"
                :scale-questions '(hapexpec)
                :mean-score .757  :standard-deviation .235 :sample-N 3185  :num-questions  1
                :help-priority 1  :help-info "Happiness is the result of other factors. Examine your results on the HQ scales for ways you can improve your happiness."
                :help-links '("index.html" "self-helpLinks.htm")
                ))
  (my-defclass hapPastSS  (sehappy subscale)
               ()
               (:default-initargs
                :name-string "hapPastSS"
                :label  "ssh-Happy to 3yrs ago"
                :scale-name "Happiness to 3 Years Ago"
                :description "Happiness up to 3 years ago. (1 item)"
                :scale-group-name   "sehappy"
                :scale-questions '(haplife)
                :mean-score .609  :standard-deviation .261 :sample-N 3185  :num-questions  1
                :help-priority 1  :help-info "Happiness is the result of other factors. Examine your results on the HQ scales for ways you can improve your happiness."
                :help-links '("index.html" "self-helpLinks.htm")
                ))
  (my-defclass hapRecentSS  (sehappy subscale)
               ()
               (:default-initargs
                :name-string "hapRecentSS"
                :label  "ssh-Happy recently"
                :scale-name "Past 3 Years Happiness"
                :description "Happiness in the past 3 years.  (1 item)"
                :scale-group-name   "sehappy"
                :scale-questions '(hapyear  hap3year)
                :mean-score .558  :standard-deviation .246 :sample-N 3185  :num-questions  2
                :help-priority 1  :help-info "Happiness is the result of other factors. Examine your results on the HQ scales for ways you can improve your happiness. (2 items)"
                :help-links '("index.html" "self-helpLinks.htm")
                ))


  ;;INTERPER-OUTCOME-SS   SRPEOPLE
  ;;
  (my-defclass ssreCloseFriends  (srpeople subscale)
               ()
               (:default-initargs
                :name-string "ssreCloseFriends"
                :label  "ssre-CloseFriends"
                :scale-name "Close Friends"
                :description "Relationship Outcome--Friendship Closeness. Quality of close friends. (2 items)"
                :scale-group-name   "srpeople"
                :scale-questions '(rpenetw rpeclfrn)
                :mean-score .215  :standard-deviation .136 :sample-N 2673  :num-questions  0
                :help-priority 1  :help-info "Close relationships are the result of other factors. Examine your HQ factors--especially interpersonal scales--for areas to improve.  Good listening skills, openness, honesty, trust, being able to resolve conflicts, and being a dependable friend are important for any close relationship."
                :help-links '("conversational_skills.htm" "developing_intimacy.htm") 
                ))
  (my-defclass ssreRomRelSuc  (srpeople subscale)
               ()
               (:default-initargs
                :name-string "ssreRomRelSuc"
                :label  "ssre-RomanticRelationshipSuccess"
                :scale-name "Romantic Relationships"
                :description "Success in romantic relationships"
                :scale-group-name   "srpeople"
                :scale-questions '(rpehmarr rpecommi )
                :mean-score .630  :standard-deviation .311 :sample-N 2673  :num-questions  0
                :help-priority 1  :help-info "Good relationships are the result of other factors. Examine your HQ factors--especially interpersonal scales. See close relationship help comments."
                :help-links '("conversational_skills.htm" "overcoming_loneliness.htm""c-rejct.htm")
                ))
  (my-defclass ssreNumFriends  (srpeople subscale)
               ()
               (:default-initargs
                :name-string "ssreNumFriends"
                :label  "ssre-NumFriends"
                :scale-name "Number of Friends"
                :description "Relationship Outcome--Number of Friends.(2 items)" 
                :scale-group-name   "srpeople"
                :scale-questions '(rpenumfr rpenumcl)
                :mean-score .305  :standard-deviation .204 :sample-N 2673  :num-questions  0
                :help-priority 0  :help-info "Do you have enough good friends and associates? If not, or if you feel shy or anxious about meeting new people, you can improve social skills and your confidence by trying some of the tips in the help links."
                :help-links '("conversational_skills.htm" "overcoming_loneliness.htm""c-rejct.htm")
                ))
  (my-defclass ssreHapSucFrs  (srpeople subscale)
               ()
               (:default-initargs
                :name-string "ssreHapSucFrs"
                :label  "ssre-HappySuccessfulFriends"
                :scale-name "Happy, Successful Friends"
                :description "Relationship Outcome--Happy, Successful Friends. (1 item)"
                :scale-group-name   "srpeople"
                :scale-questions '(rpehmarr rpecommi )
                :mean-score .623  :standard-deviation .232 :sample-N 2673  :num-questions  1
                :help-priority 1
                :help-info "Having happy, successful friends can have a positive influence on you and can also have other benefits."
                :help-links '("conversational_skills.htm" "overcoming_loneliness.htm""c-rejct.htm")
                ))


  ;;DEPRESS-SS  SRDEPRES
  (my-defclass ssdeLoDepSymp  (srdepres subscale)
               ()
               (:default-initargs
                :name-string "ssdeLoDepSymp"
                :label  "ssde-LoDepressionSymptoms"
                :scale-name "Low Depression Symptoms"
                :description "Depression Outcome Subscale-Low clinical depression symptoms"
                :scale-group-name   "srdepres"
                :scale-questions '(rdepfeel rdepthou rdepdyss rdepmajs)
                :mean-score .515  :standard-deviation .255 :sample-N 2819  :num-questions  4
                :help-priority 1     :help-info "See Depression main scale help information and help-links."
                :help-links '("depression.htm" "my-peek.htm" "h85cdepr.htm")
                ))
  (my-defclass ssdeLoDepTreats  (srdepres subscale)
               ()
               (:default-initargs
                :name-string "ssdeLoDepTreats"
                :label  "ssde-LoDepressionTreatments"
                :scale-name "Low Depression Treatments"
                :description "Depression Outcome Subscale-Low clinical depression therapy and treatments"
                :scale-group-name   "srdepres"
                :scale-questions '(rdepmeds rdepther) 
                :mean-score .767  :standard-deviation .286 :sample-N 2819  :num-questions  2
                :help-priority 1     :help-info "See Depression main scale help information and help-links."
                :help-links '("depression.htm" "my-peek.htm" "h85cdepr.htm")
                ))

  ;;FOLLOWING SCALE MUST BE ZERO FREQ ON BOTH MEDS AND THERAPY OR 1
  #|(my-defclass ssdeNODepTreat  (composite-scale srdepres)
             ()
             (:default-initargs
              :name-string "ssdeNODepTreat"
              :label  "ssde-NO DepressionTreatment"
              :scale-name "  :description "Depression Outcome Subscale-No history of treatment for clinical depression"
              :scale-group-name   "srdepres"
             :scale-questions '(rdepmeds rdepther)
             :mean-score nil  :standard-deviation nil :sample-N nil  :num-questions  2
              :help-info "See Depression main scale help information and help-links."
              :help-links '("depression.htm" "my-peek.htm" "h85cdepr.htm")
              ))
 |#

  ;;ANXIETY-SS SRANXIET
  ;;
  (my-defclass ssaxLoPerfGenAnx  (sranxiet subscale)
               ()
               (:default-initargs
                :name-string "ssaxLoPerfGenAnx"
                :label  "ssax-LoPerformanceAndGeneralAnxiety"
                :scale-name "Low General or Performance Anxiety"
                :description "Low generaly anxiety or anxiety about performance"
                :scale-group-name   "sranxiet"
                :scale-questions '(ranxperf ranxallt ranxpstd ranxsoci)
                :mean-score .573  :standard-deviation .237 :sample-N 3298  :num-questions  4
                :help-priority 1     :help-info "See Anxiety main scale help information and help-links."
                :help-links '("anxiety.htm"  "my-peek.htm" "h8hf2.htm")
                ))
  (my-defclass ssaxLowFearOCD  (sranxiet subscale)
               ()
               (:default-initargs
                :name-string "ssaxLowFearOCD"
                :label  "ssax-LoFearsAndOCDsymptoms"
                :scale-name "Low Fears, Phobias, or OCD"
                :description "Low fears, phobias, and obsessive-compulsive disorder symptoms"
                :scale-group-name   "sranxiet"
                :scale-questions '(ranxocd ranxphob ranxpani)
                :mean-score .774  :standard-deviation .211 :sample-N 3298  :num-questions  3
                :help-priority 1     :help-info "Basic fears OCD symptoms can usually be greatly reduced with good cognitive therapy and other methods you can learn. See the helplinks for a start."
                :help-links '("anxiety.htm"  "my-peek.htm" "h8hf2.htm")
                ))
  (my-defclass ssaxLoAnxTreats  (sranxiet subscale)
               ()
               (:default-initargs
                :name-string "ssaxLoAnxTreats"
                :label  "ssax-LoAnxietyTreatments"
                :scale-name "Low Anxiety Treatments"
                :description "Low amount of anxiety disorder therapy or other treatments"
                :scale-group-name   "sranxiet"
                :scale-questions '( ranxther  ranxmeds) 
                :mean-score .832  :standard-deviation .259 :sample-N 3325  :num-questions  0
                :help-priority 1     :help-info "See Anxiety main scale help information and help-links."
                :help-links '("anxiety.htm"  "my-peek.htm" "h8hf2.htm")
                ))

  ;;HEALTH OUTCOMES SS
  (my-defclass ssheLoNegAddictHabs (srelhlth subscale)
               ()
               (:default-initargs
                :name-string "ssheLoNegAddictHabs"
                :label  "sshe-LoNegAddictHabits"
                :scale-name "Low Addictive Habits"
                :description "Health Outcome Subscale--Low addictive habits (smoking, alcohol, drugs). (3 items)"
                :scale-group-name   "srelhlth"
                :scale-questions '( rhlalcoh rhlsmoke rhldrugs)
                :mean-score .776  :standard-deviation .181 :sample-N 3081  :num-questions  3
                :help-priority 1     :help-info "Addictive habits such as alcohol or substance abuse, smoking, and overeating can have very serious effect on all areas of happiness and success. If you have an addictive habit, your first concern should be to make eliminating the addictive behavior a top priority in your life.  Joining a 12-step program or getting professional treatment is almost a necessity for alcohol and substance abuse."
                :help-links '("substance_abuse.htm" "smoking.htm" "weight_control.htm""h31chang.htm")
                ))
  (my-defclass ssheLoFreqIll (srelhlth subscale)
               ()
               (:default-initargs
                :name-string "ssheLoFreqIll"
                :label  "ssheLoFreqIll"
                :scale-name "Low Illness Frequency"
                :description "Health Outcomes Subscale Low Frequency of Illness. (1 item)"
                :scale-group-name   "srelhlth"
                :scale-questions '(rhlfreqi)
                :mean-score .659  :standard-deviation .245 :sample-N 3173  :num-questions  1
                :help-priority 1     :help-info "Your health is perhaps your most precious resource.  Simple differences in people's daily health habits add together in time to create many years difference in health and longevity. "
                :help-links '("health tips.htm")
                ))
  ;;SSS WHAT HAPPENED TO  he.Physical conditioning (sshePhys???)
  (my-defclass sshePELoWeight (srelhlth subscale)
               ()
               (:default-initargs
                :name-string "sshePELoWeight"
                :label  "sshePELoWeight"
                :scale-name   "Physical Exercise, Low Weight"
                :description "Health Outcome Subscale--physical excercise, low weight.(2 items)"
                :scale-group-name   "srelhlth"
                :scale-questions '( rhlphysi rhlweigh)
                :mean-score .683  :standard-deviation .272 :sample-N 3173  :num-questions  0
                :help-priority 1     :help-info "Adequate physical exercise and health eating habits are major causes of health and longevity."
                :help-links '(weight_control.htm)
                ))

  

  #|CL-USER 13 > *shaq-academic-question-categories
((STUCOLLE STUMAJOR STUSPECI STURESID STU-DATA STGPATRE STUAPT STUFEEL STURESOURCE STUACMOTIV STU-LRN) ("Academic-Related Scales:"))|#
  (my-defclass Acad-Learning-MAQs ( multi-answer-scale) ;;acad-learning redundent displays of these quests if used as superclass
               ()
               (:default-initargs
                :name-string "Acad-Learning-MAQs"
                :label  "Acad-Learning MultAnsQuests"
                :scale-name   "Academic/Learning Multi-Answer Questions"
                :description "Learning-Academic Success Other Questions"
                :scale-questions '(STUCOLLE STUMAJOR STUSPECI STURESID  STGPATRE  STURESOURCE  )
                :mean-score nil  :standard-deviation nil :sample-N nil  :num-questions  0
                :help-priority nil  :help-info "Study your answers for insight, and check learning-related helplinks."
                :help-links  nil  ;;FINISH THESE
                ))

  ;;USER FEEDBACK
  ;;
  ;;ddd
  (my-defclass sUserFeedback (scale) 
               ()
               (:default-initargs
                :name-string "sUserFeedback"
                :label  "User Feedback"
                :scale-name   "sUserFeedback"
                :description "User Feedback--1 item"
                :scale-questions '(UserRate)
                :mean-score nil  :standard-deviation nil :sample-N nil  :num-questions  1
                ))


;;HHH --------------------------------------- HELP INFO ----------------------------------------------


;;DATA SOURCES: FOR MEANS, ETC: RA-865-HapByNewSubscales SPSS Output file
#|VARIABLES USED TO FIND .865 R correlation: ntSS1b.Open Honest, sssw.Acc
Model	R  RSquare AdRSquare	StdErrEst RSqChg FChg    df1     df2 StatSig Durbin-Watson
1	.865a	.747	.734	             .094828	.747	   54.384   58	1066	.000	1.895
a. Predictors: (Constant), IntSS1b.Open Honest, sssw.Accept all of self 1, ssb2.Not belief in astrology 1, sscp.Not eat 1, IntSS8.Separate, sscp.Pos acts,fun,exercise, ssb3.Not entitlement Beliefs, sT6.GodSpiritualReligion, sscp.Not smoke,drugs, ssie.Not codependent, IntSS3.LiberatedRoles-same slibrole, sssc.SelfConf-Natural science, sswf.Not illness-death fears, ssb2.Identify with abstract whole, ssb2.Meaning from abstract absolutes, sssm.Time mgmt,goal-set/plan,prior task list, sT10.OvercomeProblems-AcceptAllofSelf, sssc.SelfConf-Art, creative, ssie.Not care-provider for other(s), sssm.Busy,accomplishment,efficient, sswf.Not poverty-failure fears, ssb2.Inner goodness in all, sswv.Optimism about self and world, sT11.DutyPunctuality, IntSS2.Romantic-same sromantc, ssb2.Forgiving-egalitarian, sT9.ValueSelf-AllUnconditionally, sssc.SelfConf-Learning, sssm.Self-care health--exercise,diet,sleep, sscp.Not anger,blame,withdraw, sscp.Prob solve,talk,selfexpl,expect, ssie Autonomy, independence, IntSS6.Positive Supportive Com, ssb2.Belief in LifeAfterDeath 1, sswf.Not not social or alone, sT4.SuccessStatusIncomeMaterialism, sssc.SelfConf-Helping skills, IntSS7.Collaborative, IntSS5.Rel Independ, sswf.Not self-related fears, sssc.SelfConf-Interpersonal skills, sssm.Self-develop,take advice,habit chng, sT8.AttentionFunEasy, playful, adventure, ssb2.Ethics grounded in abstract absolutes, sT3.Family-EmotionalSupport and care giving,parental love-respect, sswv.Grateful, abundance beliefs, sT7.ImpactContributionMentalChallenge-exploration, IntSS4.Love Respect, sscp.Pos thoughts,phil,pep talk, sssw.Self-worth not contig on others,entitle, sssc.SelfConf-self control, discipline, motiv, sT5.OrderPerfectionGoodness,cleanliness,juatice,simplicity,punctual, sT2.SocialIntimacyNotFamily, love/rom, respect,support,agreeable, sT1.HigherSelf-Integrity, happy, balance,devel,discpn,phil,, sssc.SelfConf-positive emot coping, IntSS1a.AssertCR, sssw.Gratitude-happy for all, ssb3.Forgiving-not punative
b. Dependent Variable: s.Overall happiness |#

;;

;;NOTE: SEE *shaq-all-question-categories-list in SHAQ-all-scale-and-question-var-lists.lisp for qvar, question category lists
#|  '(ID BIO UTYPE  UGOALS BIO3EDUC BIO4JOB BI07LANG BIORELAF
       STUCOLLE STUMAJOR STUSPECI STURESID STU-DATA STGPATRE
       STUAPT STUFEEL STURESOURCE STUACMOTIV STU-LRN
       THEMES TBV IE WORLDVIEW TB2
       SELF-CONF SM COPE 
       ASSERTCR INTIMACY INDEP-INT ROM LIBROLE
       HAP RHEALTH RPEOPLE RDEP RANX RANG 
       CARGEN
       CARBUS CARENGR CARFINECARHELP CARLANGCARMED
       CARBESCI CARETHNIC CARWRITE)
|#;;LONG TEMPLATE
#|(my-defclass scalevar (superclass)
             ()
             (:default-initargs
              :name-string ;;scalevar-str
              :label  ;;spss label
              :scale-name "  :description  ;;long descr
              :previous-names  ;;previous java names list
              :object-docs
              ;;hierarchy info
              :parents
              :children 
              ;;:composite-scale-p
              :scale-group-name  
              :subscales ;;a list
              :scale-questions  ;;a list of qvars
              :num-questions ; integer
              ;; :incl-in-results  t ;;or nil
              ;; :spss-match t
              ;;  :quest-selection-type  ;;single-selection
              ;; :reverse-scored-p  nil
              ;; :scoring-formula  '+
              ;; :raw-score
              ;; :relative-score
             :help-priority nil
              :help-info
              :help-links
              :help-resources
              ))|#
;;SHORT TEMPLATE
#|
(my-defclass scalevar  (superclasses )
             ()
             (:default-initargs
              :name-string 
              :label  "sT1-HigherSelf-Integrity  happy  balance devel discpn phil"
         ;;     :scale-name "  :description 
         ;;     :previous-names  ;;previous java names list
              :scale-group-name   "values-themes"
         ;;     :subscales 
             :scale-questions '()
             :num-questions 0
              :help-priority 0  :help-info ""
              :help-links '()
              ))
|#

;;EXAMPLE
#|(my-defclass new-class4 
                           (class1 class2) 
                           ((new-slot1 :documentation "test docs1" :initform 99) 
                            (new-slot2  :documentation "test docs2"))
                           (:default-initargs :new-slot2 'init-value2) 
                           (:documentation "this is the class doc"))|#

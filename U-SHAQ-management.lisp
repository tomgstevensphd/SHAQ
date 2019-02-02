;;******************** U-SHAQ-Management.lisp ***********************
;;
;; (Main MP functions copied from Screensaver -- then modified)
;;
(in-package "CL-USER")

;;put in all key files
#|(when (boundp '*deliver-version-p)
  (cond
   ((null *deliver-version-p)
      (my-config-editor-after-start)
      (initialize-shaq)
      )
   (*deliver-version-p
      (dbg:log-bug-form "DEBUG in U-SHAQ-management" :log-file "SHAQ-Deliver LOG.lisp" :message-stream T)
      (defun initialize-shaq () nil)
      )
  ))|#

(dbg:log-bug-form "DEBUG in U-SHAQ-management" :log-file "SHAQ-Deliver LOG.lisp" :message-stream T)

(defparameter *shaq-initialized NIL "Set to T when function run to initialize")
(defparameter *shaq-files-loaded NIL "Value changed after load-shaq-files run")
(defparameter *1-MP-PROCESS-m NIL)

;;TO RUN SHAQ
;; 1-USE (GOSHAQ) FOR INTERPRETED VERSION (Uses config-shaq to load)
;; 2-When using APPLICATION BUILDER, use (RUN-SHAQ) (uses SHAQ-APP)

;;defined with goshaq (defparameter  *run-shaq-intros-p T)

;;TO TEST SHAQ w/o having to take all the questions manually
;; 1. run GOSHAQ (then exit) [or if loads all, U-SHAQ-management (loads everything)]
;; 2. compile buffer  shaq-data-list-eg1.lisp  (or other that sets *shaq-data-list and *shaq-scaledata-list to test data.
;; 3. run (calc-scale&subscale-scores)
;; 4. run (make-all-questions-text)  makes quest text and sets to symbols  end in T
;; 5. run (make-shaq-results-text)
;; OLD5. run (setf *testresults (process-scales-results)) makes all the text for all scales, questions

#| (defparameter *shaq-multi-answer-questions
   '(ID USER-TYPE GOALS BIO JOB LANG ETHNIC RELIGION STU-STATUS
        STU-MAJOR STU-SPECIAL STU-LIVING STU-MISC  STU-GRE-TREND
        STU-APT  STU-FEEL STU-TIME) "This is new for lisp version, must edit")|#
        ;;NOTE: MUST DO SPECIAL FOR ID AND STU-FEEL

;;
;;-------------------------------------- FOR DELIVERY ------------------------------------------------
;; FOR DELIVER, MY-DEFCLASS MUST have *make-defs-file-p = T , which generates normal CLOS defclass defs in shaq-new-scales-compile.lisp and instances in shaq-new-scale-insts.lisp.  
;;BUT THIS SHOULD BE DONE OUTSIDE OF APPLICATION BUILDER:
;;STEP 1:*make-defs-file-p = T  (setf *make-defs-file-p T)
;;STEP 2: DELETE THE UNWANTED CLASSES/INSTS IN THE 2 FILES:
;;   shaq-new-scales-compile.lisp AND shaq-new-scale-insts.lisp
;;STEP 3:  COMPILE shaq-new-scales.lisp TO append these 2 files.
;;-----------------------------------------------------------------------------------------------------------------
;;COMMENT OFF FOR DELIVERY
;; (setf *make-defs-file-p NIL)


;;***************(GOSHAQ) ==> starts SHAQ in Lisp Interpreter******************
(defparameter *run-shaq-intros-p T)
(defparameter *test-scale-list '()) ;; '(ssl3WritingSkills)) ;;'(ACAD-LEARNING));; '(scollege)) ;; )
;;OK-LIST '(BIO NO-SCALE BELIEFS OUTCOME VALUES-THEMES SKILLS-CONFIDENCE INTERPERSONAL ACAD-LEARNING CAREER-INTEREST)) 
(defparameter *run-qvar-list NIL) ;; '(stmajgpa)) '(STURESID) ) ;;'(STURESOURCE)) ;; NIL ) ;;


;; USE TO CHECK *SHAQ-DATA-LIST 
;;  (pretty-print-shaq-data-list *shaq-data-list)

;;; GOSHAQ -- (FOR LISP INTERPRETED VERSION)
;; 
;;ddd GGG
(defun goshaq (&key (run-qvar-list *run-qvar-list) (test-scale-list *test-scale-list )                     (run-shaq-intros-p *run-shaq-intros-p))
  "In U-SHAQ-management, RUN-QVAR-LIST is a list of qvars/questions to run that EXCLUDES running all other questions. TEST-SCALE-LIST is a list of test scales."
  (setf out nil)
  ;;MUST SET *make-defs-file TO NIL or writes scale defclasses and instances to files to be used in the application builder instead of evaluating them.
;;  (setf *make-defs-file-p NIL)

  ;;IF SHAQ CONFIG VARS NOT INITIALIZED, DO IT NOW 
  (unless  (boundp '*config-shaq-loaded )
   (load  "C:\\3-TS\\LISP PROJECTS TS\\SHAQ\\config-shaq.lisp"))
  (unless *shaq-data-list
      (load  "C:\\3-TS\\LISP PROJECTS TS\\SHAQ\\config-vars.lisp"))
 (unless *shaq-initialized
  (shaq-initialize))
  (setf *shaq-data-list '(:shaq-data-list)
        *shaq-scaledata-list '(:shaq-scaledata-list)
        *run-shaq-intros-p run-shaq-intros-p)
  (SHAQ-process-manager    ;;  *shaq-post-sym-list *shaq-scale-sym-list  
                :run-qvar-list run-qvar-list :test-scale-list test-scale-list
                :run-shaq-intros-p run-shaq-intros-p)
  ;;end goshaq
  )


;;RUN-SHAQ
;;
;;ddd
(defun run-shaq (&key (run-qvar-list *run-qvar-list) (test-scale-list *test-scale-list )                     (run-shaq-intros-p *run-shaq-intros-p))
  "In U-SHAQ-management, RUN-QVAR-LIST is a list of qvars/questions to run that EXCLUDES running all other questions. TEST-SCALE-LIST is a list of test scales.
THIS VERSION FOR USE IN APPLICATION BUILDER TO MAKE RUNTIME DELIVERY VERSION."
 (setf out nil)
;;IMPORTANT FOR DELIVER, CREATE THE CLASS COMPILE AND INST FILES
;;no, DO OUTSIDE OF DELIVERY  (setf *make-defs-file-p T)

  ;;for debugging
  (setq *debugger-hook* 'my-debugger-hook) ;;function my-debugger-hook defined below

;;SET KEY GLOBAL VARIABLES
  ;;NO (shaq-initialize) FOR RUN-TIME VERSION
;; (unless *shaq-initialized   (shaq-initialize))
  (setf *shaq-data-list '(:shaq-data-list)
        *shaq-scaledata-list '(:shaq-scaledata-list)
        *run-shaq-intros-p run-shaq-intros-p)


;;MAKE THE CLASS INSTANCES
  (make-persim-class-instances)
  ;;(make-shaq-scale-instances) instances made by defparameters when the inst file loaded

  (SHAQ-process-manager    ;;  *shaq-post-sym-list *shaq-scale-sym-list  
                :run-qvar-list run-qvar-list :test-scale-list test-scale-list
                :run-shaq-intros-p run-shaq-intros-p)
  ;;end run-shaq
  )

;;xxx -------------------------------- MP PROCESS FUNCTIONS -------------------
#|
 If the process process is waiting, process-poke causes it TO RUN ITS WAIT-FUNCTION AS SOON AS POSSIBLE, and IF THE WAIT FUNCTION RETURNS TRUE,  the process returns from process-wait. This has an effect only in SMP LispWorks, where the running
of the wait-function can happen asynchronously. process-poke can be used to avoid delays that happen because the next execution of the wait-function does not happen immediately. 
without the call to process-poke, the process may wake up after some delay.
process-poke RETURNS T IF IT ACTUALLY POKED THE PROCESS or nil otherwise (when the process is not waiting or is stopped).
|#

;;SHAQ-PROCESS-MANAGER          
;;  
;;ddd
(defun SHAQ-process-manager (&key (question-sym-list *all-SHAQ-questions)
                                   run-qvar-list test-scale-list  (run-shaq-intros-p T)
                                   (append-to-scale-cat-list '(HQ)))
                                                   ;;no args for Deliver?  text height)
  "In U-SHAQ-management.lisp, manages all processes makes the basic specific-instance elements.  RUN-QVAR-LIST is a list of qvars/questions to run that EXCLUDES running all other questions.  =  question-sym-list "
  (let (  ;;not used?? (manager-mailbox (mp:ensure-process-mailbox))
        (text "Success and Happiness Attributes Questionnaire (SHAQ)")
        (height 100)
        ) 

    ;;INITIALIZE SHAQ IF NOT DONE
  ;;MOVED  (unless (and (boundp '*deliver-version-p) (null *deliver-version-p)) (initialize-shaq))
  ;;GLOBAL VARS USED BY INTERFACE INSTANCES AND CALLBACKS
  ;;  TO COMMUNICATE WITH FUNCTIONS ETC
   (defparameter *intro-frame-results-list nil) 
   (defparameter *question-frame-results-list nil) 
   (defparameter *scale-frame-results-list nil) 
   (defparameter *help-frame-results-list nil) 
   (defparameter *results-frame-results-list nil) 

    ;;TO-DO?
    ;;READ IN FILE PARAMETER DEFAULTS TO OVERRIDE DEFPARAMETERS
    ;; IF *settings-filename is a real file that exists
   ;; (load-eval-db *settings-filename) 

   (setf *shaq-main-process
         (mp:process-run-function "SHAQ MAIN PROCESS"
                                  '(:mailbox "shaq-main-process-mailbox")
                                  'SHAQ-manager  question-sym-list 
                                    run-qvar-list test-scale-list run-shaq-intros-p 
                                    append-to-scale-cat-list))
         
 )) 
 

(defparameter @AAA-MAIN-PROCESS NIL)
;;
;;SHAQ--manager 
;;  Main process to manage SHAQ 
;;
;;ddd
(defun SHAQ-manager (question-sym-list  run-qvar-list test-scale-list run-shaq-intros-p append-to-scale-cat-list &key not-send-shaqdat-p)
  "In U-SHAQ-management, Called by shaq main process.  Code for management of entire SHAQ process. append-to-scale-cat-list adds superclass scale categories get scale-lists from."
  (let 
      ((userid)
       (user-shaqdata-list)
       (scale-cat-list (find-all-direct-subclass-names '(per-system))) ;;= ("OUTCOME" "CAREER-INTEREST" "ACAD-LEARNING" "INTERPERSONAL" "SKILLS-CONFIDENCE" "BELIEFS" "VALUES-THEMES" "BIO") 
       (selected-category-list)
       (selected-question-list)
       (selected-q-list-length)
       (q-frame-instance)
       (previous-q-name)
       ;;SSS CAN MANUALLY SET THESE FOR TESTING
       (run-TEST-quests-p)
       (utype-selected-scalescats)
       (utype-selected-qvars-in-datalist)
       (ugoals-selected-scalescats)
       (ugoals-selected-qvars-in-datalist)
       (intro-selected-scalecats)
       (all-selected-scales)
       (selected-cats)
       (selected-scalecats)
       (all-scalecats)
       (all-selected-questions)
       (selected-scales)
       (all-scale-inst-strings)
       (all-scale-inst-objects)
       ;;actual selections by user
       (shaq-select-scales-instance)
       (all-scale-data-list)
       ;;text
       (all-text-questsyms-list)
       ;;end let list
       )
    ;;must add HQ to scale-cat-list, or won't process it right 
    ;;     (this is redundant to setting in Shaq-process-manager)
    (IF (null append-to-scale-cat-list) (setf append-to-scale-cat-list '(HQ)))
    (setf scale-cat-list (append  append-to-scale-cat-list scale-cat-list))
    ;;(setf tt1 (append '(a b c) '(x y))) works

    ; STEP 1: RUN THE INTRO FRAMES and SELECT SCALES/QUESTIONS
    ;;MUST RUN before assemble rest of data to select questions
    ;; normally used by ALL incl picking specific scales
    ;; don't use for testing only purposes
    (cond
     ((and *run-shaq-intros-p (null test-scale-list)(null run-qvar-list))
      (create-shaq-intro-frames)
      ;;RUN USER-TYPE AND GOALS
      (make-question-frame "UTYPE" 'scale-sym 
                           :quest-frame 'frame-TALL-quest-multi-R-interface)
      ;;hold until poked
      (mp:current-process-pause 3600  'check-for-frame-visible)

      (make-question-frame "UGOALS" 'scale-sym 
                           :quest-frame 'frame-TALL-quest-multi-R-interface)
      ;;hold until poked
      (mp:current-process-pause 3600  'check-for-frame-visible)

      ;;GET UTYPE AND UGOALS RESULTS
      ;;FOR UTYPE
      (multiple-value-setq (utype-selected-scalescats utype-selected-qvars-in-datalist)
          (get-multi-sel-xdata-key-values 'UTYPE  :scales))

      ;;FOR UGOALS
      (multiple-value-setq (ugoals-selected-scalescats ugoals-selected-qvars-in-datalist)
          (get-multi-sel-xdata-key-values 'UGOALS  :scales))

      ;;combine utype and ugoals selections in intro-selected-scalecats, remove duplicates
      ;;note--still has (:scales as key)
      (setf intro-selected-scalecats (remove-duplicates
                                      (append utype-selected-scalescats ugoals-selected-scalescats)
                                      :test 'my-equal :from-end t))

      ;;(afout 'out (format nil "1.intro-selected-scalecats= ~A~%" intro-selected-scalecats))
      )
     (t nil))
    ;;intro-selected-scalecats is input arg= (:scales ... cats and scale qvars listed)
    (cond
     ;;IF USER WANTS TO CHOOSE SPECIFIC QUESTIONNAIRES/SCALES, 
     ((member 'specific-quests  intro-selected-scalecats :test 'my-equal)
      ;;then make  the select-scales frame
      (make-question-frame 'SCALESSEL NIL  :quest-num 1
                           :quest-frame 'frame-xtall-multi-answer-button-interface )
      ;;hold until poked
      (mp:current-process-pause 3600  'check-for-frame-visible)
      ;;get the xdata for SCALESSEL
      (multiple-value-setq (user-selected-scalecats user-selected-qvars-in-datalist)
          (get-multi-sel-xdata-key-values 'SCALESSEL  :scales))
      ;;make selected-scalecats from UTYPE, UGOALS, and SCALESEL frames
      (setf selected-scalecats
            (remove-duplicates (append intro-selected-scalecats 
                                       user-selected-scalecats) :test 'my-equal :from-end t))
      ;;end member clause
      )
     (t (setf selected-scalecats  intro-selected-scalecats)))
   ;;(afout 'out (format nil "2.selected-scalecats= ~A~%" selected-scalecats))

    ;; SSS DO I WANT TO BE ABLE TO BYPASS INTRO AND/OR CHOOSE EVEN MORE SPECIFIC SCALES OR SUBSCALES--NO DO IN MENUS UNDER SETTINGS??
    
    ;;STEP 2: RUN SCALES,QUESTIONS and and GATHER DATA into *shaq-data-list
    ;;
    ;;2.1. FIND USERID, UNLESS USERID = "NO-BIO",
    ;;    LATER, ADD OUTCOME SCALES UNLESS "NO-BIO"
    (multiple-value-setq (user-shaqdata-list userid)
        ;;  (get-selected-values
        (get-qvarlist-in-shaqdatalist  "userid"))

    ;;2.2 NORMALLY, RUN THE BIO  QUESTIONS NEXT (put OUTCOME at end)
    ;;Don't run BIO, add to list to run later -- may confuse 
    (cond
     ((or (string-equal userid "NO-BIO") test-scale-list  run-qvar-list)
      (setf all-scalecats  selected-scalecats))
 ;;KKK NO BIO3EDUC BIO4JOB BI07LANG BIO1ETHN BIORELAF FRAME-FAMILY-INFO (run-frame-family-info)
     (T (setf all-scalecats (append '("BIO-MAQ" "ACAD-ACH") selected-scalecats '( "no-scale"  OUTCOME "sUserFeedback")))))
     
    ;;no add to list (make-scales-frames '(BIO) :scale-cat-list scale-cat-list)

    ;;if using a test-scale-list
    ;;(afout 'out (format nil "In SHAQ-MANAGER, test-scale-list= ~A~%" test-scale-list))
    (if test-scale-list  (setf  all-scalecats  test-scale-list)) 
    ;;remove :scales from all-scalecats
    (setf all-scalecats (remove :scales all-scalecats :test 'equal))
    ;;(afout 'out (format nil "In SHAQ-Manager, all-scalecats ~A~%scale-cat-list= ~A~%" all-scalecats scale-cat-list))


    ;;2.3  USE FUNCTION THAT DOES ALL THE WORK FOR REST OF SELECTIONS
    #| ?? WHAT IS THIS??   (multiple-value-setq (all-selected-scales  all-selected-questions selected-cats all-scalecats selected-scales all-scale-inst-strings all-scale-inst-objects)|#

    ;;MMM MAKE ALL THE SCALES QUESTION FRAMES HERE
   ;;no, done later  (make-scales-frames  all-scalecats  :scale-cat-list scale-cat-list)

    #|   Put in all-scalecats-list order above  ;;2.4 RUN OUTCOME LAST 
     (unless (or (string-equal userid "NO-BIO") test-scale-list run-qvar-list)
      (make-scales-frames '(OUTCOME) :scale-cat-list scale-cat-list))|#

    ;;2.5 RUN USER-FEEDBACK FRAME


    ;;DO THIS LAST to replace all other questions in selected-question-list
    ;;if run-qvar-list, then RUN ONLY THE QUESTS ON run-qvar-list
    ;;BBB MMM  In SHAQ-manager, call to make-scale-frames
   ;;(afout 'out (format nil "BB: IF run-qvar-list= ~A~%" run-qvar-list))
    (if run-qvar-list 
        (make-scale-frames  nil :run-qvar-list run-qvar-list)) ;; :scale-cat-list scale-cat-list

    ;;STEP 2b:. MAKE AND RUN QUESTION FRAMES 
    ;;                  
    ;;(afout 'out (format nil "test-scale-list= ~A~%scale-cat-list= ~A~%" test-scale-list scale-cat-list))
    (unless test-scale-list
     ;;NO included in regular bio-maq (run-frame-family-info) 
     ; ;;hold running next frames until poked by callback in family frame
     ;; (mp:current-process-pause 3600  'check-for-frame-visible)
      ;;kkk
      (make-scales-frames  all-scalecats  :scale-cat-list scale-cat-list))

    (sleep 5)

    ;;STEP 3:  CALC SCALE & SUBSCALE SCORES and ADD TO *SHAQ-DATA-LIST
  (setf all-scale-data-list    (calc-scale&subscale-scores) 
        *shaq-scaledata-list (append *shaq-scaledata-list all-scale-data-list))
 ;; (setf   *shaq-scaledata-list (append *shaq-scaledata-list (calc-scale&subscale-scores)))
 ;; (setf *testcss (calc-scale&subscale-scores))

 (sleep 5)
 
 ;;STEP 4: MAKE THE QUESTION TEXT and SCALE TEXT

    ;;4.1 SET THE QVAR CONVERTED SYMS (add a T to end) 
    ;;      TO EACH QUEST TEXT and 
    ;;   make a list of them all (later eval the syms to get the quest-text)
    (setf all-text-questsyms-list  (make-all-questions-text)) 

    ;;4.2 MAKE SCALE + QUEST TEXT
    ;;   Make the text for the two windows 1-SCALES ONLY and 
    ;;    2-ALL RESULTS=SCALES, SUBSCALES/QUESTS
    (multiple-value-setq (scales-subscales-results-text scales-ss-quests-results-text)
        (process-scales-results))



    ;;STEP 5: CREATE THE WHOLE TEXT AND 3  RESULTS WINOWS
    ;; 1-SCALES ONLY, 2-ALL RESULTS, 3-HELPLINKS 
    ;; (Do this before send-shaq-dat to prevent connection error from preventing printout
    (make-shaq-results-text)

    ;;STEP 6: SEND DATA TO SERVER and  PRINT THE RESULTS
    (unless not-send-shaqdat-p
      (send-shaq-dat))
 
    ;;end let, SHAQ--manager
    ))


(defun check-for-frame-visible ()
  "In U-SHAQ-management.lisp, used by mp:current-process-pause to keep it open for input from a poke"
  ;;FINISH LATER, NOW JUST RETURN T
  NIL)


;;; The debugger hook, which is set into *DEBUGGER-HOOK* in the
;;; main function above.  See the comment at the top of the file.

(defun my-debugger-hook (condition old-debugger-hook)
  "In U-shaq-management, (copied basic from LW-examples\deliver\..."
  (declare (ignore old-debugger-hook))
  (let ((path 
         (dbg:log-bug-form (format nil "Error log of ~a " condition)
                           :message-stream *open-dos-debug-window)))  ;was nil
    (capi:display-message 
     "
    Log of  Shaqer that occured  ~a ~%    written to: ~a   

     PLEASE WAIT:  SHAQ IS BUSY COMPUTING!

     ==> DO NOT CLOSE ANY SHAQ WINDOWS!!

   (If you wait more than 1-4 minutes, something may be wrong!)

"   path condition)
    )
  (abort))







;;MAKE-QUESTION-SELECTION-LIST 
;;OUTDATED??
;;ddd
#|(defun make-question-selection-list (matching-scales-lists &key (shaq-data-list *shaq-data-list))
  "In Frames-shaq-intros.  1. Takes the (SCALESSEL :MULTI \"scalessel\" \"scales-selected\" ...) list created by select-shaq-scales and user-chosen in frame to create a single list of  selected scales to be run by function (process-selected-question-list (selected-question-list). matching-scales-lists should be a list of lists with first item matching the multi-sel answer in SCALESSEL, and the second item either a scale-name or a scale category name eg. OUTCOME.  RETURNS list of scale-names and category names. to pass to a function to process category names and/or scale-names and run the questions. (Put in separate function to allow intermediate operations)."
 (let
     ;;should SCALESSEL be a string--NO.
     ((select-shaq-scales-results (get-qvarlist-in-shaqdatalist 'SCALESSEL))
      )
    (multiple-value-setq (selected-scale-ans-lists  matched-scale-names)
        (process-multi-selection-results 'SCALESSEL  matching-scale-lists))

 ;;end let, make-question-selection-list
 ))|#
;;TEST
;;  (select-SHAQ-scales)
;; (defun goq4 ()  (progn (setf out nil) (setf *qfr4-inst (select-shaq-scales))))
;;  (goq4)
;; 2014-07
#|(
(nthcdr 5  '(SCALESSEL :MULTI "scalessel" "scales-selected" NIL ("HQ1.HAPPINESS QUOTIENT Scales (Required for HQ)" "1" HQ-SCALES NIL 0 NIL) ("HQ2.HQ Scales + ACADEMIC SUCCESS Scales" "2" HQ-ACAD NIL 0 NIL) ("HQ3.HQ + Academic Success + ACADEMIC MAJOR CHOICE" "3" HQ-ACAD-CAR NIL 0 NIL) ("1.Life Themes and Values Scales" "4" THEMES NIL 0 NIL) ("2.World View Beliefs Scale" "5" WORLDVIEW NIL 0 NIL) ("3.Self and Life Beliefs Scales" "6" TBV-TB2 NIL 0 NIL) ("4.Internal vs. External Control of Your Life (IE) Scale" "7" IE NIL 0 NIL) ("5.Self-Confidence and Skills Scale" "8" SELF-CONF NIL 0 NIL) ("6.Self-Management Skills/Habits Scale" "9" SM T 1 NIL) ("7.Emotional Coping Skills/Habits Scale" "10" COPE NIL 0 NIL) ("R1.INTERPERSONAL: Intimacy/Assertion/Problem-Solving" "11" ASSERTCR NIL 0 NIL) ("L1.LEARNING and ACADEMIC SUCCESS" "12" INTIMACY NIL 0 NIL) ("C1.CAREER or ACADEMIC MAJOR INTEREST" "13" INDEP-INT T 1 NIL) ("O1.Overall Happiness Scale" "14" LIBROLE NIL 0 NIL) ("O2.Depression Scale" "15" STU-LRN NIL 0 NIL) ("O3.Anxiety Scale" "16" STUACMOTIV NIL 0 NIL) ("O4.Anger and Aggression Scale" "17" CARGEN NIL 0 NIL)))|#



;;PROCESS-MULTI-SELECTION-RESULTS
;;
;;ddd
(defun process-multi-selection-results (qvar &optional matching-items-list)
  "In U-SHAQ-management--move??  1. Finds the results list for qvar in *shaq-data-list, 2. RETURNS (values selected-lists-with-cdr-match-list matched-items-list) (selected from matched items in matching-items-list--if supplied-otherwise, matched-items-list = nil.= matching-items-list eg= '((\"answer 1\" \"scale-name1\")...)."
  (let*
      ((qvar-list (get-qvarlist-in-shaqdatalist qvar))
       (answer-lists (nthcdr 5 qvar-list))
       (selected-lists-with-cdr-match-list)
       (matched-items-list)
       )
    ;;(afout 'out (format nil "answer-lists= ~A~%" answer-lists))
;;eg ("6.Self-Management Skills/Habits Scale" "9" SM T 1 NIL)
     ;;EEE
    (loop
     for ans-list in answer-lists
     with ans-str
     with data-sym
     with selected-p
     with data-value
     with match-list
     with new-ans-list
     do 
     (setf ans-str (first ans-list)
      data-sym (third ans-list)
      selected-p (fourth ans-list)
      data-value (fifth ans-list))
     ;;(afout 'out (format nil "~A ans-str=~A  selected-p= ~A~%"out1 ans-str  selected-p))
     (cond
      (selected-p
       (cond
        (matching-items-list
         (setf match-list (get-key-value-in-nested-lists `((,ans-str)) matching-items-list
                                                         :return-list-p T)
               matched-items-list (append matched-items-list (list match-list))
               new-ans-list (append ans-list (cdr  match-list))
               selected-lists-with-cdr-match-list (append selected-lists-with-cdr-match-list
                                                      (list new-ans-list)))
              ;;(afout 'out (format nil " match-list= ~A" match-list))
         
         ;;end matching-items-list clause
         )
        (t (setf match-list (get-key-value-in-nested-lists `((,ans-str)) matching-items-list
                                                         :return-list-p T)
                 selected-lists-with-cdr-match-list (append selected-lists-with-cdr-match-list
                                                      (list ans-list)))))
       ;;end selected-p
       )
       (t nil))
     ;;end loop
     )
     ;;return
    (values selected-lists-with-cdr-match-list matched-items-list)
    ;;end let, process-multi-selection-results
    ))
;;TEST (must run (select-shaq-scales) first to generate *shaq-data-list
;; (process-multi-selection-results 'SCALESSEL *select-shaq-scales-keylist)
;;WORKS, SAMPLE RESULTS: (values selected-lists-with-cdr-match-list matched-items-list)
#|(("HQ3.HQ + Academic Success + ACADEMIC MAJOR CHOICE" "3" HQ-ACAD-CAR T 1 NIL (HQ CAREER-INTEREST)) ("6.Self-Management Skills/Habits Scale" "9" SM T 1 NIL ("sselfman")) ("O3.Anxiety Scale" "16" STUACMOTIV T 1 NIL ("sranxiet")))
(("HQ3.HQ + Academic Success + ACADEMIC MAJOR CHOICE" (HQ CAREER-INTEREST)) ("6.Self-Management Skills/Habits Scale" ("sselfman")) ("O3.Anxiety Scale" ("sranxiet")))|#

;;NO LONGER USED??
;; TEST TO REPLACE  LOOPs IN MAIN FUNCTIONS ABOVE
;;
;;PROCESS-SELECTED-CATEGORY-LIST
;;
;;ddd
#|(defun process-selected-category-list (selected-category-list)
   "In U-SHAQ-management.lisp,"
   (let
       ((x)
        )
(loop
     for category in selected-category-list
     with qvar-list
     do
     (setf qvar-list (get-category-qvars category)
           selected-question-list qvar-list)
     ;;end loop
     )
  (process-selected-question-list selected-question-list)

  ;;end let, process-selected-category-list
  ))|#
;;TEST
;;  (process-selected-category-list '(UGOALS))


;;MAKE-SCALES-FRAMES
;;
;;ddd
(defun make-scales-frames  (scalecat-list &key scale-cat-list reverse-subclass-order-p
                                    (non-scalecat-syms
                                     '(:scales scales :scale scale   NIL PREVIOUS-USER SPECIFIC-QUESTS))) ;; add :no-scale no-scale??
  "In U-SHAQ-management, INPUT=list of scales to make question-frames for every question in every scale in the list.  Both Single and Multi-selection questions can be included in the qvar lists in the :scale-questions slot of each scale. reverse-subclass-order-p causes order of cat-scales to be opposite those in class definitions."
;;MMM BBB IN MAKE-SCALES-FRAMES 
     ;;(afout 'out (format nil "In make-scales-frames,   scalecat-list= ~A~%" scalecat-list))
     (let
         ((processed-scales)
          (processed-cats)
          )
     ;;PROCESS THE all-scalecats
     (loop
      for scale  in scalecat-list
    ;;not needed?  with scale-name-str
      with scale-category
      with scale-cat-class
      with cat-scale-list
      with process-scale-list
      do      
    ;;  (afout 'out (format nil "In make-scales-frames, scale= ~A~%" scale ))
    ;;not needed  (setf scale-name-str (format nil "~A" scale))
     ;;SSS UNDO AFOUTS
      ;;(afout 'out (format nil "OMIT LIST)= ~a"   (append  non-scalecat-syms  processed-scales processed-cats)))
     (cond
      ;;in case :scales or other non-scale-items included in list or WAS PROCESSED
      ((member scale (append  non-scalecat-syms  processed-scales processed-cats)
               :test 'my-equal)
       ;;(afout 'out (format nil "SCALE= ~a is a member of OMIT LIST)" scale  ))
       NIL)
      ;;IS SCALE A SCALE SUPERCLASS? If so, find subclass regular scales.
       ((member scale scale-cat-list :test 'my-equal) ;;these are strings
        ;;not needed?   (setf scale-cat-class scale cat-scale-list (find-direct-subclass-names scale-cat-class))
        (multiple-value-bind (cat-scale-list cat-scale-classes)
            (find-direct-subclass-names scale :reverse-subclass-order-p 
                                        reverse-subclass-order-p)
            ;;(afout 'out (format nil "In make-scales-frames, subclasses= ~A~%" cat-scale-list))
            (unless (null reverse-subclass-order-p)
              (setf cat-scale-list (reverse cat-scale-list)))
          (loop
           for cat-scale in cat-scale-list
           ;;with sub-cat-scale-list
           do
          (setf outx1 (format nil "In CAT inner loop, cat-scale= ~A~%" cat-scale)) 
          (unless (member cat-scale processed-scales :test 'my-equal)
           (make-scale-frames cat-scale)
        ;;added 01-2015
           (setf processed-scales (append processed-scales (list cat-scale)))
           ;;end unless, inner loop
           ))
        ;;added 01-2015
        (setf processed-cats (append processed-cats (list scale)))
        ;;end mvb, member clause
        ))
       (t
        ;;if an ordinary scale, make-scale-frames  
        (unless (member scale processed-scales :test 'my-equal)
          (make-scale-frames scale)
          (setf processed-scales (append processed-scales (list scale)))
          )))
        ;;end outer loop
        )
   ;;end let,  make-scales-frames     
    ))
;; (make-scales-frames '(SBIOG) :scale-cat-list   '("OUTCOME" "CAREER-INTEREST" "ACAD-LEARNING" "INTERPERSONAL" "SKILLS-CONFIDENCE" "BELIEFS" "VALUES-THEMES" "BIO"))
;;  ;; (find-all-direct-subclass-names '(HQ)) WORKS


;;MAKE-SCALE-FRAMES
;;
;;ddd
(defun make-scale-frames (scale &key (begin-quest-num 1)
                                (data-list-name '*shaq-data-list) run-qvar-list)
  "In U-SHAQ-management, INPUT= scale-name (sym or string, which is the name of a scale class. MAKES QUESTION-FRAMES for each scale question (may be a multi-ans quest) using scale info as well. Can take scale info for question frames if desire later. Now only use the ::scale-questions for numbering. Adds key = name of scale to data-list"
;;MMM IN MAKE-SCALE-FRAMES
  (let*
      ((data-list (eval data-list-name))
       (q-frame-inst)
       (previous-qvar)
       (scalename-sym) 
       (scale-class-inst-sym)
       (scale-class-inst) 
       (scale-long-name) 
       (question-list)  
       )
    ;;(afout 'out (format nil "In make-scale-frames, scale= ~A~%" scale))
    (setf scalename-sym (my-make-symbol scale))
    (multiple-value-setq (scale-class-inst scale-class-inst-object)
             (get-class-inst scalename-sym))
    ;;(afout 'out1 (format nil "(scale-class-inst= ~A scale-class-inst-object= ~A"scale-class-inst scale-class-inst-object))
    (cond
     ;;if only use run-qvar-list, must not use scale
     ((or (null scale) (null scale-class-inst-object))
      (set data-list-name (append data-list (list :non-scale-items))))
     (T
      (setf  scale-long-name (slot-value  scale-class-inst-object  'scale-name)
             question-list (slot-value  scale-class-inst-object  'scale-questions))
      ;;pre 01-2015
      #|      (setf scalename-sym (my-make-symbol scale)
            scale-class-inst (get-class-inst scalename-sym)
            scale-long-name (slot-value (eval scale-class-inst) 'scale-name)
            question-list (slot-value (eval scale-class-inst) 'scale-questions)) |#   

      ;;add :scale scalename-sym to data-list unless this is a recursive call SSS :scale added
      ;;JJJ
      (unless (member scalename-sym data-list :test 'equal)
        (set data-list-name (append data-list (list :scale scalename-sym))))
      ;;(afout 'out (format nil "1-selected-question-list= ~A~%"selected-question-list))
      ;;end T, cond
      ))
    ;;Append question-list if run-qvar-list
    (if run-qvar-list (setf question-list (append question-list run-qvar-list)))
    ;;(afout 'out (format nil "BBB question-list= ~A~% run-qvar-list= ~A%" question-list run-qvar-list))
    (loop
     ;;no for qvar  in question-list  ;;qvar = category for multi quests
     for quest-num from begin-quest-num to (list-length question-list)
     with cat-name 
     with qvar
     with q-frame-inst
     do
     ;;1-FIND QVAR
     (setf qvar (nth (- quest-num 1) question-list))
 
     ;;2-MAKE Q-FRAME-INST -- It's selection-callback appends *shaq-data-list
     (setf  q-frame-inst (make-question-frame qvar  'scale-sym  
                                               :quest-num quest-num)) ;; :selection-type selection-type))
     ;;3-HOLD THIS FUNCTION'S PROCESSING UNTIL IT GETS POKED by callback
     ;;    let question hang for 1 hour without attention 
     (mp:current-process-pause 3600  'check-for-frame-visible)

     (cond
      ((member 'go-previous-frame *question-frame-results-list :test 'equal)
       ;;note, *shaq-data-list reset in the previous-frame-callback
       (setf  *question-frame-results-list (delete-list-items '(go-previous-frame) 
                                                              *question-frame-results-list))
       (if (> quest-num 1)(setf quest-num (- quest-num 1))
         (setf quest-num 1))
       ;;recurse at previous qvar
       (make-scale-frames scale :begin-quest-num quest-num
                          :data-list-name  data-list-name :run-qvar-list  run-qvar-list)

      ;;NOTE: the recursive make-scale-frames MUST finish the rest of the qvars from previous frame, or will get redundant questions, so add RETURN here.
      (return)
       )
      (t nil))
     ;;end loop
     )
    ;;end let*, make-scale-frames
    ))
;;TEST FOR BOTH FUNCTIONS ABOVE
;;  (make-scale-frames 'IntSS2Romantc)
;;  (make-scale-frames 'sT1HigherSelf)
;;make-scale-frames TESTED with (goshaq) and works well, ROBUST using previous frames button.




;;SSSSS  MISSING CALLBACK SHAQ-RESULTS-HELP-CALLBACK USED IN THIS FILE FOR HELP MENU -- WRITE A NEW ONE??









;;-----------------xxx -------------------------- OLD BUT KEEP?? ------------------
;;ORIGINAL VERSION -- PRE CALC SCALES AND SUBSCALES
#|(defun make-scale-frames (scale &key (begin-quest-num 1)
                                (data-list-name '*shaq-data-list) run-qvar-list)
  "In U-SHAQ-management, INPUT= scale-name (sym or string, which is the name of a scale class. MAKES QUESTION-FRAMES for each scale question (may be a multi-ans quest) using scale info as well. Can take scale info for question frames if desire later. Now only use the ::scale-questions for numbering. Adds key = name of scale to data-list"
;;MMM IN MAKE-SCALE-FRAMES
  (let*
      ((data-list (eval data-list-name))
       (q-frame-inst)
       (previous-qvar)
       (scalename-sym) 
       (scale-class-inst) 
       (scale-long-name) 
       (question-list)  
       )
    ;;(afout 'out (format nil "In make-scale-frames, scale= ~A~%" scale))
    (cond
     ;;if only use run-qvar-list, must not use scale
     ((null scale) 
      (set data-list-name (append data-list (list :non-scale-items))))
     (T
      (setf scalename-sym (my-make-symbol scale)
            scale-class-inst (get-class-inst scalename-sym)
            scale-long-name (slot-value (eval scale-class-inst) 'scale-name)
            question-list (slot-value (eval scale-class-inst) 'scale-questions))    

    ;;add :scale scalename-sym to data-list unless this is a recursive call
    (unless (member scalename-sym data-list :test 'equal)
      (set data-list-name (append data-list (list :scale scalename-sym))))
    ;;(afout 'out (format nil "1-selected-question-list= ~A~%"selected-question-list))
    ;;end T, cond
    ))
    ;;Append question-list if run-qvar-list
    (if run-qvar-list (setf question-list (append question-list run-qvar-list)))
    ;;(afout 'out (format nil "BBB question-list= ~A~% run-qvar-list= ~A%" question-list run-qvar-list))
    (loop
     ;;no for qvar  in question-list  ;;qvar = category for multi quests
     for quest-num from begin-quest-num to (list-length question-list)
     with cat-name 
     with qvar
     with q-frame-inst
     do
     ;;1-FIND QVAR
     (setf qvar (nth (- quest-num 1) question-list))
 
     ;;2-MAKE Q-FRAME-INST -- It's selection-callback appends *shaq-data-list
     (setf  q-frame-inst (make-question-frame qvar  'scale-sym  
                                               :quest-num quest-num)) ;; :selection-type selection-type))
     ;;3-HOLD THIS FUNCTION'S PROCESSING UNTIL IT GETS POKED by callback
     ;;    let question hang for 1 hour without attention 
     (mp:current-process-pause 3600  'check-for-frame-visible)

     (cond
      ((member 'go-previous-frame *question-frame-results-list :test 'equal)
       ;;note, *shaq-data-list reset in the previous-frame-callback
       (setf  *question-frame-results-list (delete-list-items '(go-previous-frame) 
                                                              *question-frame-results-list))
       (if (> quest-num 1)(setf quest-num (- quest-num 1))
         (setf quest-num 1))
       ;;recurse at previous qvar
       (make-scale-frames scale :begin-quest-num quest-num
                          :data-list-name  data-list-name :run-qvar-list  run-qvar-list)

      ;;NOTE: the recursive make-scale-frames MUST finish the rest of the qvars from previous frame, or will get redundant questions, so add RETURN here.
      (return)
       )
      (t nil))
     ;;end loop
     )
    ;;end let, make-scale-frames
    ))|#




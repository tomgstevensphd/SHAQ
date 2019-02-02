;; ****************** Frames-shaq-intros.lisp *****************************
;;

;; Introductory SHAQ information, etc frames
;;
;; NEEDED DEFPARAMETERS
(defparameter *PREVIOUS-FR-BUTTON-TEXT  "Go to Previous Frame")
(defparameter   *intro-text-font-size 11)
(defparameter  *go-to-previous-intro-frame nil)
(defparameter   *go-next-frame-callback-data nil "Use if desired for some frames")
(defparameter   *go-next-frame-callback-data2 nil "Use if desired for some frames")
(defparameter   *previous-intro-frame-callback-data nil "Use if desired for some frames")
;;IS THIS SET ELSEWHERE
(defparameter *single-selection-item nil)

(defparameter  *shaq-intro-info-frame-list 
  '((shaq-intro-frame *shaq-intro-title-text *shaq-intro-text)
    (shaq-permission-frame  *shaq-intro-title-text  *permission-text)
    
    )
  "All of the SHAQ introductory frames"
  )

;;INTRO TEXT SECTIONS
(defparameter *shaq-intro-title-text
        (format nil  "~%Success and Happiness Attributes Questionnaire (SHAQ) 
          Computer Assessment and Recommendations Expert System (CARES)"))

(defparameter *shaq-intro-text
          (format nil 
                  "~%~%The SHAQ CARES* assesses key life skills and other attributes that may be related to success and happiness in a variety of life areas:
      * self-esteem and internal control
      * relationships and assertiveness
      * academic success
      * optimism and positive thinking
      * emotional control
      * self-motivation and self-management
      * career interests and success. . . . .and much more!

Your RESULTS will include your scores, all questions and your answers, PLUS tips and Internet links to relevant self-help information. SHAQ is based upon our research with over 7,000 people, literature reviews, and clinical experience.

FIND YOUR HAPPINESS QUOTIENT (HQ). This is your happiness IQ or EQ measure. (highest score = 130; lowest = 60). SHAQ's HQ score correlated .87 with overall happiness, .70 with relationship success, .53 with low depression, .68 with low anxiety, .70 with low anger and aggression, and .82 with physical health outcomes. SHAQ correlated .49 with Income and .46 with Education attainment. (All above correlations significant < .0001 level. 2009 study N = 3446). 

 ==> SHAQ IS COMPLETELY ANNONYMOUS:  YOU PROVIDE NO IDENTIFYING INFORMATION and
         You do NOT NEED TO REGISTER on this website or provide any identifying information.

SHAQ author, Tom G. Stevens PhD, is a psychologist/professor emeritus at California State University, Long Beach (CSULB) and author of the book, 'You Can Choose To Be Happy: \"Rise Above\" Anxiety, Anger, and Depression.'

"))
(defparameter *permission-text (format nil "~%~%
Welcome to SHAQ CARES!

1. ANSWER HONESTLY AND WORK QUICKLY. Completion takes 30 to 60 minutes (or more if you answer slowly).  
2. WE DO NO ASK YOU TO REGISTER OR PROVIDE ANY IDENTIFYING INFORMATION (name, ssn, phone, email, etc.). THIS QUESTIONNAIRE IS COMPLETELY ANONYMOUS!  
3. Even though we have no identifying information, all data from your questions will remain strictly confidential and may only be used for scientific research (as part of group data) so that we can learn more about factors leading to success and happiness.
4. For your benefit ALL QUESTIONS and all your ANSWERS ARE INCLUDED IN YOUR RESULTS for your later deliberation.)
5. We make no promises of any kind about how much you may benefit from SHAQ or any part of this web site.
6. You may not copy or use the test questions or other information for any purpose other than your own personal use without permission of the author.

This research study is conducted at California State University, Long Beach by Tom G. Stevens PhD. For questions regarding your rights as a research subject, contact the Office of University Research, CSU Long Beach, 1250 Bellflower Blvd, Long Beach, CA90840.  Email: research@csulb.edu.

      PROCEED ONLY IF YOU AGREE TO THESE CONDITIONS!~%~%"
   ))

(defparameter  *bio-quest-pane-width nil)

(defparameter *bio-info-frame-title (format nil "~%SHAQ CARES about who you are"))
(defparameter *bio-instr-pane-height 60 )
(defparameter *bio-instr-pane-text (format nil "~%      INSTRUCTIONS: Please complete all information as accurately as possible.~%            ==>  Use Mouse or hit TAB to move from field to field."))
;; (defparameter 
;; (defparameter 
   
(defparameter *bio-quest-pane-font-face nil)
(defparameter *bio-quest-pane-font-size 11)
(defparameter *bio-text-button-font 
  (gp:make-font-description :weight :boldl :size 10))
(defparameter *bio-quest-pane-font-weight :bold)
(defparameter *opt-pane-background :yellow)
(defparameter *req-pane-background :light-blue)

#|  OPTIONAL: (3 OBJECTS/ROWS)
 1.First Name  TEXT
 2.Last Name  TEXT
 3.email address  TEXT
    REQUIRED  ( 7 OBJECTS, 9 ROWS)
 .4. Last 6 digits of SSN or other ID  (9 digit SSN for course credit)   Example = 111223333:  5.Age   TEXT
 6. 6Sex  M,
              F   BUTTONS
 7. Hours work/week  TEXT
 8.I live in [USA, 
                  Other Nation]   BUTTONS
9. If not USA, country: TEXT
10. If USA, zip code:   TEXT   |#

;;*select-shaq-scales-keylist IS OUTDATED BY ADDING INFO TO QVAR LIST
#|(defparameter *select-shaq-scales-keylist  
          '(
          ("HQ1.HAPPINESS QUOTIENT Scales (Required for HQ)"  (HQ))
           ("HQ2.HQ Scales + ACADEMIC SUCCESS Scales"  (HQ ACAD-LEARNING))
           ("HQ3.HQ + Academic Success + ACADEMIC MAJOR CHOICE" (HQ CAREER-INTEREST))
          ;;topl values and beliefs
          ("1.Life Themes and Values Scales" (VALUES-THEMES))
          ("2.World View Beliefs Scale" ("sworldview" "sgrfears"))
          ("3.Self and Life Beliefs Scales" ("stbslfwo" "sethbel"))
          ("4.Internal vs. External Control of Your Life (IE) Scale"  ("siecontr"))
          ("5.Self-Confidence and Skills Scale" ("sslfconf"))
          ("6.Self-Management Skills/Habits Scale"  ("sselfman"))
          ("7.Emotional Coping Skills/Habits Scale" ("semotcop"))
          ;;interpersonal
          ("R1.INTERPERSONAL: Intimacy/Assertion/Problem-Solving" (INTERPERSONAL))
#|          "R1.Assertion and Conflict-Resolution Skills/Habits" 
          "R2.Intimacy Skills/Habits" 
          "R3.Independent-Intimacy in Relationships Skills/Habits" 
          "R4.Relationship Role Beliefs/Habits" |#
          ;;learning and academic related
          ("L1.LEARNING and ACADEMIC SUCCESS" (ACAD-LEARNING))
#|          "L1.Learning and Study Skills Scale"   
          "L2.Student Academic Motivation Scale"   
          "L3.Academic Major and Career Interest Scales" |#
          ;;career interest
          ("C1.CAREER or ACADEMIC MAJOR INTEREST" (CAREER-INTEREST))
          ;;outcome scales
         ( "O1.Overall Happiness Scale" ("sehappy"))
          ("O2.Depression Scale" ("srdepres"))
          ("O3.Anxiety Scale" ("sranxiet"))
          ("O4.Anger and Aggression Scale" ("srangagg"))
#|          "O5.Relationship Outcomes Scale" 
          "O6.Health Habits and Health Scale"|#
          )
     "Used in SELECT-SHAQ-SCALES for matching multi-sel  answers with scale sets"
     )|#
;;end *select-shaq-scales-keylist





;;CREATE-SHAQ-INTRO-FRAME
;;   (Use as a model for other intro frames??)
;;  USED FOR ((SHAQ-INTRO-FRAME *SHAQ-INTRO-TITLE-TEXT *SHAQ-INTRO-TEXT) (SHAQ-PERMISSION-FRAME *SHAQ-INTRO-TITLE-TEXT *PERMISSION-TEXT))
;;
;;ddd
(defun create-shaq-intro-frames ()
  "In frames-shaq-intros, *shaq-intro-info-frame-list = ((SHAQ-INTRO-FRAME *SHAQ-INTRO-TITLE-TEXT *SHAQ-INTRO-TEXT) (SHAQ-PERMISSION-FRAME *SHAQ-INTRO-TITLE-TEXT *PERMISSION-TEXT))"
  (let*
      ((bio-info-frame-inst)
       (sex-buttons-panel-inst)
       (shaq-intro-inst)
       (usa-other-buttons-panel-inst)
       )   
    (loop
     for frame-arg-list in *shaq-intro-info-frame-list
     do
     (setf *shaq-intro-title-text (eval (second frame-arg-list))
           *shaq-intro-pane-text (eval (third frame-arg-list)))
     
    ;;create the instance
    (setf shaq-intro-inst (make-instance 'shaq-intro-interface))
       
    (capi:display shaq-intro-inst)
    ;;end let, defun create-shaq-intro-frame
       (mp:current-process-pause 3600  'check-for-frame-visible)
    ;;end loop
    )
   ;; (sleep 2)
    (if  *go-to-previous-intro-frame
        (create-shaq-intro-frames))

    ;;CREATE THE BIO-INFO FRAME AND PROCESS THE INFO
    ;;1-Make the button-panels first
    ;; CHECK TO SEE IF M=1, F=0 OR VICE VERSA, ALSO USA ANSWER
    ;;AAA
      #|(make-answer-button-panel "6. SEX:" (list "Male" "Female") '(1 0)
                                'sex-buttons-layout 'frame-bio-info
                                :close-interface-on-selection-p NIL
                                :background *req-pane-background
                                :font-size 10)|#

#|      (make-answer-button-panel "8. COUNTRY you live in:" 
                                (list "USA" "OTHER Country")
                                '('USA 'NON-USA)  'usa-other-buttons-layout 'frame-bio-info
                                :background *req-pane-background
                                 :close-interface-on-selection-p NIL
                                 :font-size 10)|#

        (setf bio-info-frame-inst (make-instance 'frame-bio-info
                                          ;;args here
                                        ;;  :title frame-name-text
                                           ))
        ;;modify the contents
#|       (with-slots (sex-buttons-layout  usa-other-buttons-layout ) 
            bio-info-frame-inst|#
      #|(capi:apply-in-pane-process sex-buttons-pane
                                  #'(setf capi:choice-selected-item)
                                          (list nil)                                            
                                          sex-button-pane)|#

        #|  (capi:apply-in-pane-process usa-other-buttons-layout
                  #'(setf capi:titled-object-title) "TEST" usa-other-buttons-layout )
          )|#
   
  (setf sex-buttons-panel-inst
        (make-instance 'capi:radio-button-panel
                       :title "6.SEX:"
                       :items '("Male" "Female")
                       :title-font *bio-text-button-font
                     ;;  :visible-min-height 40
                       ))
  (setf usa-other-buttons-panel-inst
        (make-instance 'capi:radio-button-panel
                       :title "8. Your COUNTRY:"
                       :items '("USA" "OTHER Country")
                       :title-font *bio-text-button-font
                     ;;  :visible-min-height 40
                       ))
    
  (with-slots (sex-buttons-layout usa-other-buttons-layout) bio-info-frame-inst
    ;;for sex buttons
  (capi:apply-in-pane-process sex-buttons-layout
                                  #'(setf capi:layout-description)
                                  (list sex-buttons-panel-inst) sex-buttons-layout)
  (capi:apply-in-pane-process sex-buttons-layout
                                  #'(setf capi:choice-selected-item)
                                          (list nil)                                            
                                          sex-buttons-panel-inst)
  ;;for usa-other buttons
  (capi:apply-in-pane-process usa-other-buttons-layout
                                  #'(setf capi:layout-description)
                                  (list usa-other-buttons-panel-inst)
                                  usa-other-buttons-layout)
  (capi:apply-in-pane-process usa-other-buttons-layout
                                  #'(setf capi:choice-selected-item)
                                          (list nil)                                            
                                          usa-other-buttons-panel-inst)
  ;;end with-slots
  )

   ;;create the instance
    (capi:display bio-info-frame-inst)
    ;;end let, defun create-shaq-intro-frame
       (mp:current-process-pause 3600  'check-for-frame-visible)
    (sleep 2)

    ;;run-frame-bio2 ADDED SSS TEST THIS PART 
   ;;TRY MOVING TO SHAQ-MANAGER, SO PROCESS WORKS BETTER (run-frame-bio2)
    ;;end added
   
   ;;end let, create-shaq-intro-frames
    ))
;;TEST
;;  (create-shaq-intro-frames)
   

;;SELECT-SHAQ-SCALES
;;
;;ddd
(defun select-SHAQ-scales (intro-selected-scalecats)
  "In Frames-shaq-intros, makes an instance of shaq-select-scales-interface and collects data to run the questions. INPUT=intro-selected-scalecats from SHAQ-Manager running UTYPE and UGOALS. OUTPUT to *shaq-data-list via go-..callback, then processed by make-question-selection-list."

  ;;SSS  USE THE NEW CLASSES AND XDATA TO SELECT THE QUESTS
  (let*
      ((intro-category-list '(*shaq-all-intro-question-categories))
       (super-category-list '(*shaq-values-beliefs-question-categories 
                              *shaq-life-skills-question-categories 
                              *shaq-interpersonal-skills-question-categories
                              *shaq-academic-question-categories))
       (outcome-category-list '(*shaq-outcome-question-categories))
    ;;to bypass the bio information--look up userid
    (userid (get-qvarlist-in-shaqdatalist 'userid))
    ;;for selected scale results
    (selected-items-with-cats/scales)
    (cats-scales-selected)
    (matched-sel-items)
    ;;non-redundant scale, cat lists
     (all-selected-scales)
     (selected-cats)
     (selected-cat-scales)
     ;;actual selections by user
     (selected-cat-scales)
      (selected-scales)
#|      (utype-qvars-in-shaqdatalist)
      (ugoals-qvars-in-shaqdatalist)
      (utype-sel-qvars-in-shaqdatalist)
      (ugoals-sel-qvars-in-shaqdatalist)
      (utype-xdata)
      (ugoals-xdata)
       (utype-qvar-cat)
       (ugoals-qvar-cat)
      (utype-selected-scalescats)
      (ugoals-selected-scalescats)
      (intro-selected-scalecats)|#
      (user-selected-scalecats)
      (user-selected-qvars-in-datalist)
       (shaq-select-scales-instance)
       )

         ;;intro-selected-scalecats is input arg= (:scales ... cats and scale qvars listed)
     (cond
      ;;if user wants to choose specific questionnaires/scales, use select-shaq-scales
      ((member 'specific-quests intro-selected-scalecats :test 'my-equal)
       ;;then make  the select-scales frame
       (make-question-frame 'SCALESSEL NIL  :quest-num 1
                            :quest-frame 'frame-xtall-multi-answer-button-interface )
       ;;get the xdata for SCALESSEL
       (multiple-value-setq (user-selected-scalecats user-selected-qvars-in-datalist)
                          (get-multi-sel-xdata-key-values 'SCALESSEL  :scales))
       ;;make selected-cat-scales from UTYPE, UGOALS, and SCALESEL frames
       (setf selected-cat-scales
             (remove-duplicates (append intro-selected-scalecats 
                                        user-selected-scalecats) :test 'my-equal :from-end t))
       ;;end member clause
       )
       (t (setf selected-cat-scales intro-selected-scalecats)))

    ;; ORDER, ETC SCALES FROM selected-cat-scales
;; ADD IN BIO, OUTCOMES, ??
;; WAY TO BYPASS INTRO AND/OR CHOOSE EVEN MORE SPECIFIC SCALES OR SUBSCALES??       

     ;;2. CREATE THE QUESTION-LIST AND RETURN IT
      ;;
      ;;2.1. FIND USERID, UNLESS USERID = "NO-BIO",
      ;;    LATER, ADD OUTCOME SCALES UNLESS "NO-BIO"
      (unless (string-equal userid "NO-BIO")
      ;;was  (setf  *shaq-run-questions-list '(BIO)))
      ;;run BIO questions (some are multi-selection)
      )
      ;;2.2 NORMALLY, RUN THE OUTCOME QUESTIONS NEXT
      (unless (string-equal userid "NO-BIO")
        ;;run the OUTCOME questions        
        )
      ;;2.3. DOES USER WANT HQ? If so, which of 3 versions?
      (cond
       ((member 'BIO-ACAD-CAREER)
        ))

      ;;2.3 IF NOT HQ, WHICH SCALES?  INCLUDE BIO AND OUTCOMES UNLESS "NO-BIO" USERID.
      
      ;;3. RETURN *shaq-run-questions-list to be used in running the question frames.

 ;;end let,  select-SHAQ-scales
 ))


;;OLDER VERSION--PRE MODIFY FRAMES FOR XDATA
#|(defun select-SHAQ-scales ()
  "In Frames-shaq-intros, makes an instance of shaq-select-scales-interface and collects data to run the questions. OUTPUT to *shaq-data-list via go-..callback, then processed by make-question-selection-list."
  (let*
      ((intro-category-list '(*shaq-all-intro-question-categories))
       (super-category-list '(*shaq-values-beliefs-question-categories 
                              *shaq-life-skills-question-categories 
                              *shaq-interpersonal-skills-question-categories
                              *shaq-academic-question-categories))
       (outcome-category-list '(*shaq-outcome-question-categories))
    ;;to bypass the bio information--look up userid
    (userid (get-qvarlist-in-shaqdatalist 'userid))
    ;;for selected scale results
    (selected-items-with-cats/scales)
    (cats-scales-selected)
    (matched-sel-items)
    ;;non-redundant scale, cat lists
     (all-selected-scales)
     (selected-cats)
     (selected-cat-scales)
     ;;actual selections by user
     (selected-cat-scales)
      (selected-scales)

;;EEE in SELECT-SHAQ-SCALES

;;USE  
    ;;   (title (format nil "~%Which SHAQ scales or sections do you want to complete?"))
;;AND   :text 

       ;;TEXT INFORMATION
 ;;      (parent-layout 'answer-button-layout)
   ;;    (question-text (format nil "~%~%If you want your Happiness Quotient (HQ) Score and the most benefit from SHAQ, then check HQ1, HQ2, or HQ3.~%   *HQ1 includes all main scales.~%   *HQ2 also includes the academic-success scales~%   *HQ3 also includes the career-choice scales.~%~%If you do NOT want your Happiness Quotient (HQ) Score and you DO want to select only one or more SHAQ scales/parts, then SELECT the SCALE(S) you want to complete. "))
 ;;      (ans-instruction-text "Select which scales you want:")
       ;;make list from *select-shaq-scales-keylist
       ;;WRITE make-keys-list FUNCTION TO MAKE A LIST OF JUST THE ANSWERS FROM THIS
       (answer-array-list  
        (find-keys-in-lists *select-shaq-scales-keylist))

       (answer-values-list
        '( HQ-SCALES HQ-ACAD HQ-ACAD-CAR THEMES WORLDVIEW  TBV-TB2 IE SELF-CONF SM COPE
                  ASSERTCR INTIMACY INDEP-INT LIBROLE
                  STU-LRN  STUACMOTIV  CARGEN HAP RDEP RANX RANG 
                    RPEOPLE RHEALTH))
     ;;  (button-panel-result)
       (shaq-select-scales-instance)
       )
    ;;for use in callback
    (setf *qvar-category 'scalessel)
    ;;EQUIVALENT *multi-selection-qvar-list used in callback and make-question-frame
    ;; FOR ADDING TO *SHAQ-DATA-LIST
#|  (setf *multi-selection-qvar-list
  `(:QVAR-CATEGORY SCALESSEL :PRIMARY-QVAR-SYM "scalessel" :PRIMARY-QVAR-LABEL "scales-selected" :PRIMARY-TITLE-TEXT ,title :PRIMARY-INSTR-TEXT ,ans-instruction-text   :QNUM 1 :QUEST-TEXT-LIST (list ,question-text) :Q-SPSS-NAME NIL :ANS-NAME-LIST ,answer-array-list  :ANS-TEXT-LIST ,answer-array-list  :NUM-ANSWERS 23 :DATA-TYPE INTEGER :ANS-DATA-LIST (1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1) :PRIMARY-JAVA-VAR (nil) :PRIMARY-SPSS-MATCH nil :SPSS-MATCH-LIST nil :JAVA-VAR-LIST nil))|#
#|   not needed??     (setf *call-shaq-question-multi-callback-p T
              *single-selection-item NIL)|#
      ;;(afout 'out (format nil "4 answer-array-list= ~A~% %answer-values-list= ~A~%ans-instruction-text= ~A~%"answer-array-list  answer-values-list ans-instruction-text    ))
        ;;PREPARE THE INFO FOR BUTTON PANELS

  ;; USE (get-scale-button-text-list

  ;;MAKE THE INTERFACE INSTANCE
;;works (setf *qfr3-inst (make-question-frame 'BIO4JOB 'scale-sym   :selection-type  :multiple-selection))
       (setf  *shaq-select-scales-instanceX
             (make-question-frame 'SCALESSEL 'scale-sym  :quest-frame 'frame-Xtall-multi-answer-button-interface))

;;FIX SO ADDS NEW (:DATA :scale (HQ))  --or any data..
;;currentlyadds to *shaq-data-list = (SCALESSEL :MULTI "scalessel" "Direct-scales-selected" 4 ("xhqonly" "1" 1 T 1 4) ("xhq-acad" "2" 1 NIL 0 4) ("xhq-acad" "3" 1 NIL 0 4) ("xvalues-th" "4" 1 NIL 0 4) ("xworldview" "5" 1 NIL 0 4) ("xsel-f-bels" "6" 1 NIL 0 4) ("xiecontrol" "7" 1 T 1 4) ("xselfconf" "8" 1 NIL 0 4) ("xselfman" "9" 1 NIL 0 4) ("xemotcop" "10" 1 NIL 0 4) ("xinterpers" "11" 1 NIL 0 4) ("xacadlearn" "12" 1 T 1 4) ("xcarint" "13" 1 NIL 0 4) ("xsehappy" "14" 1 NIL 0 4) ("xsehappy" "15" 1 NIL 0 4) ("xsrdepres" "16" 1 NIL 0 4) ("xsranxiet" "17" 1 NIL 0 4) ("xsrangagg" "18" 1 NIL 0 4))

        #|was (setf shaq-select-scales-instance
              (make-instance 'frame-Xtall-multi-answer-button-interface
               ;;was 'frame-tall-multi-answer-button-interface
                                          ;;args here
                                          :title *shaq-frame-title
                                           ))|#
 
 ;;     ;;MAKE THE BUTTON PANELS
        ;;for left-button-panel
        ;;needed in make-vertical-button-panel

        (setf answer-button-panel 
              (make-answer-button-panel
               ans-instruction-text   answer-array-list     
               answer-values-list    parent-layout 
               'frame-Xtall-multi-answer-button-interface
               :selection-type :multple-selection
               :close-interface-on-selection-p nil))

        ;;display BEFORE apply-in-pane-process
        (capi:display shaq-select-scales-instance)

      (with-slots (title-rich-text-pane quest-rich-text-pane   
                                        go-frame-button previous-frame-button 
                                        answer-button-layout)  shaq-select-scales-instance
         (capi:apply-in-pane-process title-rich-text-pane
                   #'(setf capi:rich-text-pane-text) title  title-rich-text-pane )  
         (capi:apply-in-pane-process quest-rich-text-pane
                   #'(setf capi:rich-text-pane-text) question-text  quest-rich-text-pane)  
                                 #|   (setf (capi:simple-pane-font  NEW FONT DESCRIPTION??)))|#
       ;;(setf out1 (format nil "quest-rich-text-pane= ~A~% question-text= ~A~%" quest-rich-text-pane question-text))


        ;;end with-slots
        )
      ;;1. FIND THE QUESTION-SELECTION DATA IN *SHAQ-DATA-LIST
       (setf user-goals-data (get-key-list 'goals *shaq-data-list)
             user-type-data (get-key-list 'user-type *shaq-data-list)
             scales-selected-data (get-key-list 'scalessel *shaq-data-list))

       ;;the selected items lists
       (setf  goals-selected (get-multi-answer-selected-items 'goals)
               user-type-selected (get-multi-answer-selected-items 'user-type)
               cats-scales-selected (get-multi-answer-selected-items 'scalessel))

       (multiple-value-setq (selected-items-with-cats/scales  matched-sel-items)
           (process-multi-selection-results 'SCALESSEL *select-shaq-scales-keylist))
#|returns values-SAMPLE: (("HQ3.HQ + Academic Success + ACADEMIC MAJOR CHOICE" "3" HQ-ACAD-CAR T 1 NIL (HQ CAREER-INTEREST)) ("6.Self-Management Skills/Habits Scale" "9" SM T 1 NIL ("sselfman")) ("O3.Anxiety Scale" "16" STUACMOTIV T 1 NIL ("sranxiet")))
(("HQ3.HQ + Academic Success + ACADEMIC MAJOR CHOICE" (HQ CAREER-INTEREST)) ("6.Self-Management Skills/Habits Scale" ("sselfman")) ("O3.Anxiety Scale" ("sranxiet")))|#

       (multiple-value-setq (all-selected-scales selected-cats selected-cat-scales 
                                                 selected-scales)
         (find-scales-in-selected-item-lists selected-items-with-cats/scales))
       


      ;;2. CREATE THE QUESTION-LIST AND RETURN IT
      ;;
      ;;2.1. FIND USERID, UNLESS USERID = "NO-BIO",
      ;;    LATER, ADD OUTCOME SCALES UNLESS "NO-BIO"

      (unless (string-equal userid "NO-BIO")
        (setf  *shaq-run-questions-list '(BIO)))
      ;;2.2. DOES USER WANT HQ? If so, which of 3 versions?

      ;;2.3 IF NOT HQ, WHICH SCALES?  INCLUDE BIO AND OUTCOMES UNLESS "NO-BIO" USERID.
      
      ;;3. RETURN *shaq-run-questions-list to be used in running the question frames.

 ;;end let,  select-SHAQ-scales
 ))|#
;;
;;TEST
;;FIX ERROR-WORKS OK WO MAKE-BUTTON-PANEL
;;  (select-SHAQ-scales)
;; (defun goq4 ()  (progn (setf out nil) (setf *qfr4-inst (select-shaq-scales))))
;;  (goq4)
;; 2014-07
#|((SCALESSEL :MULTI "scalessel" "scales-selected" NIL ("HQ1.HAPPINESS QUOTIENT Scales (Required for HQ)" "1" HQ-SCALES NIL 0 NIL) ("HQ2.HQ Scales + ACADEMIC SUCCESS Scales" "2" HQ-ACAD NIL 0 NIL) ("HQ3.HQ + Academic Success + ACADEMIC MAJOR CHOICE" "3" HQ-ACAD-CAR NIL 0 NIL) ("1.Life Themes and Values Scales" "4" THEMES NIL 0 NIL) ("2.World View Beliefs Scale" "5" WORLDVIEW NIL 0 NIL) ("3.Self and Life Beliefs Scales" "6" TBV-TB2 NIL 0 NIL) ("4.Internal vs. External Control of Your Life (IE) Scale" "7" IE NIL 0 NIL) ("5.Self-Confidence and Skills Scale" "8" SELF-CONF NIL 0 NIL) ("6.Self-Management Skills/Habits Scale" "9" SM T 1 NIL) ("7.Emotional Coping Skills/Habits Scale" "10" COPE NIL 0 NIL) ("R1.INTERPERSONAL: Intimacy/Assertion/Problem-Solving" "11" ASSERTCR NIL 0 NIL) ("L1.LEARNING and ACADEMIC SUCCESS" "12" INTIMACY NIL 0 NIL) ("C1.CAREER or ACADEMIC MAJOR INTEREST" "13" INDEP-INT T 1 NIL) ("O1.Overall Happiness Scale" "14" LIBROLE NIL 0 NIL) ("O2.Depression Scale" "15" STU-LRN NIL 0 NIL) ("O3.Anxiety Scale" "16" STUACMOTIV NIL 0 NIL) ("O4.Anger and Aggression Scale" "17" CARGEN NIL 0 NIL)))|#
;;WORKS, go button returns *shaq-data-list = ((SCALESSEL :MULTI "scalessel" "scales-selected" 1 ("HQ1.HAPPINESS QUOTIENT Scales (Required for HQ)" "1" HQ-SCALES T 1) ("HQ2.HQ Score Scales + ACADEMIC SUCCESS Scales" "2" HQ-ACAD NIL 0) ("HQ3.HQ + Academic Success + ACADEMIC MAJOR CHOICE" "3" HQ-ACAD-CAR NIL 0) ("1.Top Life Themes and Values Scales" "4" THEMES T 1) ("2.World View Beliefs Scale" "5" WORLDVIEW NIL 0) ("3.Top Self and Life Beliefs Scales" "6" TBV-TB2 NIL 0) ("4.Internal vs. External Control of Your Life (IE) Scale" "7" IE NIL 0) ("5.Self-Confidence and Skills Scale" "8" SELF-CONF NIL 0) ("6.Self-Management Skills/Habits Scale" "9" SM NIL 0) ("7.Emotional Coping Skills/Habits Scale" "10" COPE NIL 0) ("R1.Assertion and Conflict-Resolution Skills/Habits" "11" ASSERTCR NIL 0) ("R2.Intimacy Skills/Habits" "12" INTIMACY NIL 0) ("R3.Independent-Intimacy in Relationships Skills/Habits" "13" INDEP-INT NIL 0) ("R4.Relationship Role Beliefs/Habits" "14" LIBROLE NIL 0) ("L1.Learning and Study Skills Scale" "15" STU-LRN NIL 0) ("L2.Student Academic Motivation Scale" "16" STUACMOTIV NIL 0) ("L3.Academic Major and Career Interest Scales" "17" CARGEN NIL 0) ("O1.Overall Happiness Scale" "18" HAP NIL 0) ("O2.Depression Scale" "19" RDEP NIL 0) ("O3.Anxiety Scale" "20" RANX NIL 0) ("O4.Anger and Aggression Scale" "21" RANG NIL 0) ("O5.Relationship Outcomes Scale" "22" RPEOPLE NIL 0) ("O6.Health Habits and Health Scale" "23" RHEALTH NIL 0)))



;;EEE FIND-SCALES-IN-SELECTED-ITEMS-LISTS
;; OUTDATED FUNCTION, BUT HAS USEFUL SUBPARTS??
;;ddd
(defun find-selected-scales-from-scalecats (selected-scale-cats-list)
  "In Frames-shaq-intros. From INPUT = scale-category list eg. ( BIO HQ \"sselfman\" etc)  RETURNS (values all-selected-scales all-selected-questions selected-cats selected-cat-scales selected-scales all-scale-inst-strings all-scale-inst-objects) all-selected-question-qvars and all-selected-scales has been filtered for duplicates. Uses scale-category to generate some scales."
  (let*
      ((all-selected-scales)
       (selected-cats)
       (selected-cat-scales)
       (selected-scales)
       (scales-qvars)
       (class-inst-strings)
       (class-inst-objects)
       (all-selected-questions)
       (all-scale-inst-strings)
       (all-scale-inst-objects)
       )
    (loop
     for item in selected-scale-cats-list
     do
        (cond
         ;;if item is a string, it must be a scale
         ((stringp item)
          (setf selected-scales (list item)))
         ;;if item is a symbol, it must be a category=scale superclass
         ((symbolp item)
          (setf selected-cats (append selected-cats  (list item)))
          )
          (T NIL))
        ;;end loop
        )

       ;;COMBINE SCALE LISTS AND REMOVE DUPLICATES
       ;;find the (non-redundant) names of cat scales
       (cond
        ;;for the 3 HQ choices
        ((member 'HQ selected-cats :test 'my-equal)
         (setf selected-cat-scales (find-direct-subclass-names 'HQ)
               selected-cats (delete-list-items '(HQ) selected-cats))        
         (cond
          ((member 'ACAD-LEARNING selected-cats :test 'my-equal)
           (setf selected-cat-scales (append selected-cat-scales 
                                             (find-direct-subclass-names 'ACAD-LEARNING))
                 selected-cats (delete-list-items '(ACAD-LEARNING) selected-cats))
           ) (t nil))
         (cond
          ((member 'CAREER-INTEREST selected-cats :test 'my-equal)
           (setf selected-cat-scales (append selected-cat-scales 
                                             (find-direct-subclass-names 'CAREER-INTEREST))
                 selected-cats (delete-list-items '(CAREER-INTEREST) selected-cats))
           ) (t nil))

         ;;make the all-selected-scales  list which now = selected-cat-scales
         (setf  all-selected-scales  selected-cat-scales)  

         ;;NO--DONE OUTSIDE add the OUTCOME scales
#|         (setf selected-cat-scales (append selected-cat-scales 
                                             (find-direct-subclass-names 'OUTCOME))
                 selected-cats (delete-list-items '(OUTCOME) selected-cats))|#
         ;;end member HQ, etc clause
         )

       ;;FOR ALL OTHER COMBINATIONS OF CATEGORIES and SCALES
        (t 
         ;;add the outcome scales
       ;;DONE OUTSIDE  (setf  selected-cats  (append selected-cats (list 'OUTCOME)))

       ;;MMM is there a PROBLEM IF CAT IS A MULTI-SEL CATEGORY--NOT A SCALE-CAT??
         ;;delete redundancies in cats
         (setf  selected-cats (remove-duplicates selected-cats
                                                 :test 'my-equal :from-end t))
         (setf selected-cat-scales  (find-all-direct-subclass-names selected-cats))
               
         ;;merge the selected-cat-scales and the separately selected-scales 
           (setf  all-selected-scales (append selected-cat-scales selected-scales))

          ;remove scale duplicates
          (setf all-selected-scales (remove-duplicates all-selected-scales
                                                            :test 'my-equal :from-end t))

        ))
    (values all-selected-scales all-selected-questions selected-cats selected-cat-scales selected-scales all-scale-inst-strings all-scale-inst-objects)
    ;;EEE end let, find-selected-scales-from-scalecats
    ))
;;  START DEBUG HERE -- ALSO, FIX HQ SELECTIONS
;;TEST
;;  (let (( input '(HQ CAREER-INTEREST "sselfman" "sranxiet")))       (find-selected-scales-from-scalecats input))
;;NOT WORK? =  ("SSAXLOANXTREATS" "SSAXLOWFEAROCD" "SSAXLOPERFGENANX" "sranxiet")     NIL  ("sranxiet")    ("SSAXLOANXTREATS" "SSAXLOWFEAROCD" "SSAXLOPERFGENANX")     ("sranxiet")     ("*SSAXLOANXTREATS-inst" "*SSAXLOWFEAROCD-inst" "*SSAXLOPERFGENANX-inst" "*sranxiet-inst")    (#<SSAXLOANXTREATS 2317717B> #<SSAXLOWFEAROCD 231747FF> #<SSAXLOPERFGENANX 23171AEB> #<SRANXIET 22F58897>)




;;  SSS == IS THIS FUNCTION BEING USED???
;;GET-SCALE-BUTTON-TEXT-LIST
;;
;;ddd
(defun get-scale-button-text-list (quest-supercategory)
  "In Frames-shaq-intros. RETURNS (values cat-sym-list  button-text-list) for all categories in the supercategory. Eg. of quest-supercategory= '((SM COPE SELF-CONF) (\"Basic Life Skills and Self-Confidence Scales:\"))"
  (let
      ((cat-sym-list (car quest-supercategory))
       (button-text-list)
       (qcat-list)
       (button-text)
       )
    (loop
     for qcat in cat-sym-list
     do
     (setf qcat-list (get-key-value-in-nested-lists `((,qcat 0)) 
                                                    *shaq-all-question-categories-list :return-list-p t)
           button-text (second qcat-list))
     ;;  (afout 'out (format nil "In Frames-shaq-intros, qcat-list= ~A~%button-text= ~A~%" qcat-list  button-text))
     (setf button-text-list (append button-text-list (list button-text)))
     ;;end loop
     )
    (values cat-sym-list  button-text-list)
    ;;end get-scale-button-text-list
    ))
;;  (get-scale-button-text-list *shaq-life-skills-question-categories)
;; works, returns (SM COPE SELF-CONF)   ("Self-Management Skills/Habits Scale" "Emotional Coping Skills/Habits Scale" "Self-Confidence and Life Skills")    
     

;;FIND-SCALES-QVARS
;;
;;ddd
(defun find-scales-qvars (scalename-list &key merge-qvar-lists-p)
  "In Frames-shaq-intros, RETURNS (values scales-qvars  class-inst-strings class-inst-objects) where scales-qvars= a list of (scale-sym scale-inst-string question-qvar-list).  If merge-qvar-lists-p, then merges all scale lists into ONE list, otherwise has separate lists (not currently used). Removes duplicate scales."
  (let
      ((scales-qvars) 
        (class-inst-objects) 
        (class-inst-strings)
        (scale-qvars)
       )
    (setf scalename-list (remove-duplicates scalename-list :test 'my-equal :from-end t))
    (loop
     for scalename in scalename-list
     do
     (multiple-value-bind (question-qvars class-inst-object class-inst-string)
         (find-scale-question-qvars scalename)
       (cond
        (merge-qvar-lists-p
         (setf scales-qvars (append scales-qvars  question-qvars)))
        (t (setf scale-qvars (list scalename class-inst-string question-qvars)
            scales-qvars (append scales-qvars (list scale-qvars)))))

       (setf class-inst-objects (append class-inst-objects (list class-inst-object))
                 class-inst-strings (append class-inst-strings (list class-inst-string)))
       ;;end mvb, loop
       ))
    (values scales-qvars  class-inst-strings class-inst-objects)
    ;;end let,find-scale-scales-qvars
    ))
;;TEST
;;  (find-scales-in-selected-items-lists '(

;;TEST 
;;   (find-scales-qvars '(sT2SocIntimNoFam sT4SuccessStatusMater))
;; works, =((ST2SOCINTIMNOFAM "*ST2SOCINTIMNOFAM-inst" (THM8ROMA THM12PLE THMRESPE THM20INT THMLIKED THMSUPPO)) (ST4SUCCESSSTATUSMATER "*ST4SUCCESSSTATUSMATER-inst" (THM3EDUC THM4MONE THM25POS THM26SUC THM30CEO THM33GOA THMRESPE THM1ACH)))     ("*ST2SOCINTIMNOFAM-inst" "*ST4SUCCESSSTATUSMATER-inst")     (#<ST2SOCINTIMNOFAM 2270694F> #<ST4SUCCESSSTATUSMATER 226E6DCF>)





;;FIND-SCALE-QUESTION-QVARS
;;
;;ddd
(defun find-scale-question-qvars (scale-name)
  "In Frames-shaq-intros, RETURNS (values question-qvars class-inst-object class-inst-string)"
  (let
      ((question-qvars) 
       )
    (multiple-value-bind (class-inst-sym class-inst-object class-inst-string class-string)
        (get-class-inst scale-name)
      ;;
      (setf question-qvars (slot-value (eval class-inst-object) 'scale-questions))
      (values question-qvars class-inst-object class-inst-string)
      ;;end with-slots, mvb, let find-scale-question-qvars
      )))
;;TEST
;;  (find-scale-question-qvars "sT2SocIntimNoFam")    
;; works, returns = (THM8ROMA THM12PLE THMRESPE THM20INT THMLIKED THMSUPPO)    #<ST2SOCINTIMNOFAMSCALE 21938D6B>   "*sT2SocIntimNoFam-inst"
;; 
;;  (slot-value *sT2SocIntimNoFamScale-inst 'scale-questions) = (THM8ROMA THM12PLE THMRESPE THM20INT THMLIKED THMSUPPO)

     
 
;; ------------------------------------ CALLBACKS ----------------------------------

;;CALLBACKS FOR NON-QUESTION FRAMES

;;GO-NEXT-FRAME-CALLBACK
;;
;;ddd
(defun go-next-frame-callback (data interface)
  "In Frames-shaq-intros.lisp, POKES SHAQ-process-manager running *shaq-main-process to continue (run next frame)"
      (setf *go-to-previous-intro-frame nil)
      ;; (show-text (format nil "In go-next-frame-callback, data= ~A interface= ~A~%*shaq-main-process= ~A~%"      data interface *shaq-main-process) 300 "From Go-next-frame")
      (show-text  (format nil "~%~%
                                  P L E A S E  W A I T:   S H A Q   I S   T H I N K I N G! ~%~%
                                      ==> DO NOT CLOSE ANY SHAQ WINDOWS--
                                        YOU WILL LOSE EVERYTHING IF YOU DO!!~%~%
                          If you have waited more than 1-4 minutes, something may be wrong.~%~%~%
                ---------------------------------------------------------------------------------------------------------------------------~%~%
                             ANY PROBLEMS?  Email Dr. Stevens:  tstevens@csulb.edu ~%
                              Please copy or write down any information you can 
                                       about the very last thing that happened (last window, etc) ~%
                  ==>  If there are any ERROR MESSAGES, PLEASE COPY and SEND THEM.~%~%
      "
    ) 350  "WAITING FOR SHAQ?"  :min-width 500 :x 10 :y 10)
      (capi:destroy interface)
      (mp:process-poke *shaq-main-process)
     )



;;PREVIOUS-INTRO-FRAME-CALLBACK
;;
;;ddd
(defun previous-intro-frame-callback (data interface)
  "In , provides signal for main work function to select previous frame"
  #|(setf  *shaq-data-list (butlast *shaq-data-list)
          *question-frame-results-list (list 'go-previous-frame))|#
          ;;POKES SHAQ-process-manager running *shaq-main-process to continue (run next frame)
          (setf *go-to-previous-intro-frame t)
          (capi:destroy interface)
          (mp:process-poke *shaq-main-process)
  )



;;GO-FRAME-BIO-INFO-CALLBACK
;;
;;
;;ddd
(defun  go-frame-bio-info-callback (data interface)
       "In Frames-shaq-intros.lisp, used with Frame-bio-info. Evaluates input for validity and enters data into *shaq-data-list."
  (let
      ((entry-error-message)
       (sex-buttons-inst)
       (usa-other-buttons-inst)
#|       (first-name)
       (last-name)
       (email)|#
       (user-id)
       (selected-sex-text)
       (sex-data)
       (selected-age-text)
       (age-data)
       (hrs-work)
       (usa-p)
       (usa-p-data)
       (zipcode)
       (other-country)
       (nation)
       (length-userid)
       (test-result)
       (data-ok-p)
       (entry-message-text "")
       (selected-usa-text)
       (age)
       (length-user-id)
       (name)
       (ans-data-list)
     ;;  (qvar-str-list '("Name" "UserID" "Sex" "Age" "Email" "Nation" "HrsWork"))
       )
      (with-slots (message-text-pane 
                ;;first-name-text-pane last-name-text-pane email-text-pane  
                user-id-text-pane  age-text-pane hours-work-text-pane
                other-country-text-pane  usa-zip-text-pane
                sex-buttons-layout  usa-other-buttons-layout
                    ) interface
        ;;get the sex-buttons-inst and usa-other-buttons-inst
        ;;AND get the selected button TEXT
        (setf sex-buttons-inst (car (capi:layout-description sex-buttons-layout))
              selected-sex-text  (capi:choice-selected-item sex-buttons-inst))
        (setf usa-other-buttons-inst (car (capi:layout-description usa-other-buttons-layout))
              selected-usa-text (capi:choice-selected-item usa-other-buttons-inst))        

      ;;1. check the data for meeting criteria,  display message if not
      ;;get the answers
        (setf ;; first-name (capi:text-input-pane-text first-name-text-pane)
              ;;last-name (capi:text-input-pane-text last-name-text-pane)
              ;;email (capi:text-input-pane-text email-text-pane)
              user-id (capi:text-input-pane-text user-id-text-pane)
              age (capi:text-input-pane-text age-text-pane)
              hrs-work (capi:text-input-pane-text hours-work-text-pane)
              other-country (capi:text-input-pane-text other-country-text-pane)
              zipcode (capi:text-input-pane-text usa-zip-text-pane)
              )
      
       ;;(setf out1 (format nil "user-id= ~A~% age= ~A~% hrs-work= ~A~% other-country= ~A~% zipcode= ~A~%selected-sex-text= ~A~% sex-data= ~A~%  usa-p-text= ~A~%  usa-p-data= ~A~%" user-id age hrs-work other-country zipcode selected-sex-text sex-data  selected-usa-text  usa-p-data)) 

       ;;IF USER-ID = NO-BIO, BYPASS CHECKS
       (cond
        ((string-equal user-id "NO-BIO")
         (setf data-ok-p T))
        (t        
         ;;1b. Check the TEXT data
         ;;user-id
         (setf  length-user-id (length user-id))
       
        ;; (setf out0 (format nil "1 length-user-id= ~A~%entry-message-text= ~A~%data-ok-p= ~A~%" length-user-id entry-message-text data-ok-p))
         ;;age
         (cond
          ((multiple-value-setq (test-result age)
               (check-string-number-range age 0 130))
           ;;do nothing
           )
          (t (setf  data-ok-p 'no
                    entry-message-text (format nil "~A~A~%" entry-message-text 
                                               "* You MUST enter your AGE"))))
         ;;sex
         (cond
          ((string-equal selected-sex-text "Male") 
           ;;CHECK ON THIS MALE=1
           (setf sex-data 1))
          ((string-equal selected-sex-text "Female")
           (setf sex-data 2))
          (t (setf  data-ok-p 'no
                    entry-message-text (format nil "~A~A~%" entry-message-text 
                                               "* You MUST enter your SEX"))))
         ;;hrs-work
         (cond
          ((multiple-value-setq (test-result hrs-work)
               (check-string-number-range age 0 130))
           ;;do nothing
           )
          (t (setf  data-ok-p 'no
                    entry-message-text (format nil "~A~A~%" entry-message-text 
                                               "* You MUST enter the HOURS per WEEK you WORK."))))
         ;;USA or OTHER Country
         (cond
          ((string-equal selected-usa-text "USA") 
           ;;SSSCHECK ON THIS MALE=1
           (setf usa-p-data 1))
          ((string-equal selected-usa-text "OTHER Country")
           (setf usa-p-data 0))
          (t (setf  data-ok-p 'no
                    entry-message-text (format nil "~A~A~%" entry-message-text 
                                               "* You MUST answer if you live in USA or not."))))
         ;;zipcode
         (cond
          ((and usa-p-data (or (multiple-value-setq (test-result zipcode)
                                   (check-string-number-range zipcode 999 99999))
                               (= usa-p-data 0)))
           ;;do nothing
           )
          (t (setf  data-ok-p 'no
                    entry-message-text (format nil "~A~A~%" entry-message-text 
                                               "* You MUST enter your ZIPCODE"))))
         ;;other-country if not usa-p
         (cond
          ((and usa-p-data (= usa-p-data 1))
           (setf nation "USA"))
          ((and other-country (> (length other-country) 1))
           (setf nation other-country))           
          (t (setf  data-ok-p 'no
                    entry-message-text (format nil "~A~A~%" entry-message-text 
                                               "* You MUST enter your COUNTRY"))))  
      
         ;;2. display entry-error messages
         (if (or (null data-ok-p)(equal data-ok-p 'yes))
             (setf data-ok-p T)
           (setf data-ok-p NIL))

         ;;end T,cond
         ))

       ;;(break "data-ok-p entry-message-text")
       (cond
        ((null data-ok-p)     
         ;;add to message, telling to push go button again
         ;;print error message and wait for correction
         ;;  THERE IS A NO SENSE ERROR IN THE FOLLOWING -- ALL SEEMS RIGHT
         (capi:apply-in-pane-process message-text-pane
                                     #'(setf capi:rich-text-pane-text) entry-message-text message-text-pane)
         ;;added 2017
         ;;(break "apply in message-text-pane")
         (sleep 3)
         ;;(setf out2 (format nil "entry-message-text= ~A~%" entry-message-text))
         )
        (t 
         ;;3. add data to *shaq-data-list
         ;;prep some data
         ;; (setf name (format nil "~A ~A" first-name last-name))
         ;;enter each one into a list
         (setf ans-data-list 
               `(:text-data "sID"
                 ;;("Name" ,name :single ,name)
                 ("UserID" ,user-id :single ,user-id)
                 ("Sex" ,selected-sex-text :single ,selected-sex-text ,sex-data)
                 ("Age" ,age ::single ,age ,age)
                 ;;("Email" ,email :single ,email)
                 ("USA?" ,selected-usa-text :single ,selected-usa-text  ,usa-p-data)
                 ("Nation" ,nation :single ,nation)
                 ("ZipCode" ,zipcode :single ,zipcode)
                 ("HrsWork" ,hrs-work :single ,hrs-work ,hrs-work)
                 ))

         ;;end data-ok-p, cond
         ;;was end, but went to next frame ))

         ;;ADDED THE UNLESS CLAUSE, moved data-ok, see below
         ;;append to *shaq-data-list
         (setf *shaq-data-list (append *shaq-data-list (list ans-data-list))
               *shaq-scaledata-list
               (append *shaq-scaledata-list (list  ans-data-list)))

         ;;4. go to next frame, close this one
         (setf *go-to-previous-intro-frame nil)
         (capi:destroy interface)
         ;;POKES SHAQ-process-manager running *shaq-main-process to continue (run next frame)
         (mp:process-poke *shaq-main-process)
         ;;end data-ok-p, cond
         ))
      ;;end with-slots, let, go-frame-bio-info-callback
     )))
;;TEST
;;WORKS
#|CL-USER 51 > *shaq-data-list
((("Name" "Tom Stevens" :SINGLE "Tom Stevens") ("UserID" "222225" :SINGLE "222225") ("Sex" "Male" :SINGLE "Male" 1) ("Age" 33 :SINGLE 33 33) ("Email" "tstevens@csulb.edu" :SINGLE "tstevens@csulb.edu") ("USA?" "OTHER Country" :SINGLE "OTHER Country" 0) ("Nation" "UK" :SINGLE "UK") ("ZipCode" NIL :SINGLE NIL) ("HrsWork" 33 :SINGLE 33 33)))|#

;;GO-FRAME-FAMILY-INFO-CALLBACK
;;
;;
;;ddd
(defun  go-frame-family-info-callback (data interface)
       "In Frames-shaq-intros.lisp, used with Frame-bio-info. Evaluates input for validity and enters data into *shaq-data-list."
  (let
      ((entry-error-message)
       (olderbrosn)
       (oldersisn)
       (youngerbrosn)
       (youngersisn)
       (parents-marital-sit)
       (Raised2Parents 0) 
       (SingleMparent 0)
       (SingleFparent 0)
       (RaisedNoParents 0)
       (RaisedOther 0) 
       (test-result)
       (data-ok-p)
       (entry-message-text "")
       (parent-sit)
       ;;  (qvar-str-list '("Name" "UserID" "Sex" "Age" "Email" "Nation" "HrsWork"))
       )
      (with-slots (message-text-pane older-bros-text-pane older-sis-text-pane
                younger-bros-text-pane  younger-sis-text-pane parent-radio-button-panel) interface
#|        (setf sex-buttons-inst (car (capi:layout-description parent-radio-button-panel))
              selected-sex-text  (capi:choice-selected-item sex-buttons-inst))
        (setf usa-other-buttons-inst (car (capi:layout-description usa-other-buttons-layout))
              selected-usa-text (capi:choice-selected-item usa-other-buttons-inst))      |#  

      ;;1. check the data for meeting criteria,  display message if not
      ;;get the answers
      (setf olderbrosn (my-make-symbol (capi:text-input-pane-text older-bros-text-pane))
            oldersisn  (my-make-symbol (capi:text-input-pane-text older-sis-text-pane))
            youngerbrosn  (my-make-symbol(capi:text-input-pane-text younger-bros-text-pane))
            youngersisn  (my-make-symbol (capi:text-input-pane-text younger-sis-text-pane)))        
        ;;
        (cond
         ((multiple-value-setq (test-result olderbrosn)
              (check-string-number-range olderbrosn 0 20))
          ;;do nothing
          )
         (t (setf  data-ok-p 'no
                   entry-message-text (format nil "~A~A~%" entry-message-text 
                                              "* You MUST enter your NUMBER OF OLDER BROTHERS"))))
        (cond
         ((multiple-value-setq (test-result oldersisn)
              (check-string-number-range oldersisn 0 20))
          ;;do nothing
          )
         (t (setf  data-ok-p 'no
                   entry-message-text (format nil "~A~A~%" entry-message-text 
                                              "* You MUST enter your NUMBER OF OLDER SISTERS"))))
        (cond
         ((multiple-value-setq (test-result youngerbrosn)
              (check-string-number-range youngerbrosn 0 20))
          ;;do nothing
          )
         (t (setf  data-ok-p 'no
                   entry-message-text (format nil "~A~A~%" entry-message-text 
                                              "* You MUST enter your NUMBER OF YOUNGER BROTHERS"))))
        (cond
         ((multiple-value-setq (test-result youngersisn)
              (check-string-number-range youngersisn 0 20))
          ;;do nothing
          )
         (t (setf  data-ok-p 'no
                   entry-message-text (format nil "~A~A~%" entry-message-text 
                                              "* You MUST enter your NUMBER OF YOUNGER SISTERS"))))
        ;;test for parents marital status
        (cond
         ((setf parent-sit (capi:choice-selection parent-radio-button-panel))
          (cond
           ((= parent-sit 0)
            (setf Raised2Parents 1))
           ((= parent-sit 1)
            (setf SingleFparent 1))         
           ((= parent-sit 2)
            (setf SingleMparent 1))           
           ((= parent-sit 3)
            (setf RaisedNoParents 1))
           ((= parent-sit 4)
            (setf RaisedOther 1))
           ))
         (t (setf  data-ok-p 'no
                   entry-message-text (format nil "~A~A~%" entry-message-text 
                                 "* You MUST answer 5. your PARENTAL SITUATION."))))
      
          ;;2. display entry-error messages
          (if (or (null data-ok-p)(equal data-ok-p 'yes))
              (setf data-ok-p T)
            (setf data-ok-p NIL))

          (cond
           ((null data-ok-p)     
            ;;add to message, telling to push go button again
            ;;print error message and wait for correction
            ;;  THERE IS A NO SENSE ERROR IN THE FOLLOWING -- ALL SEEMS RIGHT
            (capi:apply-in-pane-process message-text-pane
                                        #'(setf capi:rich-text-pane-text) entry-message-text message-text-pane)
            ;;(setf out2 (format nil "entry-message-text= ~A~%" entry-message-text))
            )
           (t 
            ;;3. add data to *shaq-data-list
            ;;enter each one into a list
;;MODEL (:multi-sel-quest  "utype" ("utype"  :multi  "utype"  "usertype"  1  ("twanttho" "1" 1 t 1 1 (:xdata :scales (hq)))  ("tknowmor" "2" 1 t 1 1 (:xdata :scales (hq)))  ("twanthel" "3" 1 nil 0 1 (:xdata :scales (hq)))  ("twantspe" "4" 1 nil 0 1 (:xdata :scales nil))  ("texperie" "5" 1 nil 0 1 (:xdata :scales nil))  ("tprevshaq" "6" 1 nil 0 1 (:xdata :scales (previous-user)))  ("wantspq" "7" 1 nil 0 1 (:xdata :scales (specific-quests)))  ("tu100stu" "8" 1 nil 0 1 (:xdata :scales (hq acad-learning)))  ETC )
            (setf ans-data-list 
                    ;;model("twanttho" "1" 1 nil 1 1 (:xdata :scales (hq)))
                  `(("OlderBrosN" "1" 1 nil ,OlderBrosN ) 
                    ("OlderSisN" "2" 1 nil ,OlderSisN ) 
                    ("YoungerBrosN" "3" 1 nil ,YoungerBrosN ) 
                    ("YoungerSisN" "4" 1 nil ,YoungerSisN )
                    ;;parents
                    ("Raised2Parents" "5" 1 nil ,Raised2Parents )
                    ("SingleFparent" "6" 1 nil ,SingleFparent ) 
                    ("SingleMparent" "7" 1 nil ,SingleMparent ) 
                    ("RaisedNoParents" "8" 1 nil ,RaisedNoParents )
                    ("RaisedOther" "9" 1 nil ,RaisedOther ) 
                    ))
            ;;append to *shaq-data-list
            ;;model (:multi-sel-quest  "utype" ("utype"  :multi  "utype"  "usertype"  1 ("twanttho" etc
;;should be (:MULTI-SEL-QUEST "sFamily" ("sFamily" :MULTI "sFamily" "Origin Family" 1  ("OlderBrosN" "1" 1 nil 3 )("OlderSisN" "2" 1 nil 0) etc. etc.))
            (setf *shaq-data-list 
                  (append *shaq-data-list
                            `(:MULTI-SEL-QUEST  "sFamily" ,(append  '("sFamily" :multi "sFamily" "Origin Family" 1 )  ans-data-list))))
            ;; TEST (setf  *ans-data-list '(("older" 1 nil this)("young" 1 nil that))  *testlistxx (append '(this list) (list  `(:MULTI-SEL-QUEST  "sFamily" ,(append  '("sFamily" :multi "sFamily" "Origin Family" 1 )  *ans-data-list))))))

            ;;4. go to next frame, close this one
            (setf *go-to-previous-intro-frame nil)
            (capi:destroy interface)

            ;;POKES SHAQ-process-manager running *shaq-main-process to continue (run next frame)
            (mp:process-poke *shaq-main-process)
            ;;end data-ok-p, cond
            ))
          ;;end with-slots, let, go-frame-bio-info-callback
          )))




;;SHAQ-INTRO-INTERFACE
;;
;;ddd
(capi:define-interface shaq-intro-interface ()
      ()
      (:panes
       (top-rich-text-pane
        capi:rich-text-pane
        :text *shaq-intro-title-text
        :background :light-blue
        :internal-border 10
        :visible-border :default
        :character-format (list :face *title-pane-font-face
                                :size  16  ;;*title-pane-font-size 
                                :color *title-pane-font-color  :bold T :italic nil :underline nil )
        :paragraph-format  (list :alignment :center  ;; :left :right
                                 ;;no effect?  :start-indent 20
                                 ;;no effect? :offset-indent 20
                                 ;;  :relative-indent 1.0  ;;relative indent for rest of paragraphs
                                 :tab-stops  '(5 10 15 20)
                                 :numbering nil 
                                 ;;OR :bullet, :arabic, :lowercase,:uppercase, :lower-roman or :upper-roman.
                                 )
        )
       (bottom-rich-text-pane
        capi:rich-text-pane
        :text *shaq-intro-pane-text
        :background :yellow
        :character-format (list :face *quest-pane-font-face :size *intro-text-font-size
                                :color *quest-pane-font-color  :bold t :italic nil :underline nil )
        :paragraph-format '(:alignment :left ;; :center  ;; :left :right
                            ;;  :start-indent 5
                            :offset-indent 10
                            ;;  :relative-indent 1.0  ;;relative indent for rest of paragraphs
                            :tab-stops nil   ;;eg  (10 20 10)
                            :numbering nil 
                            ;;OR :bullet, :arabic, :lowercase,:uppercase, :lower-roman or :upper-roman.
                            )
        )
       ;;panes--buttons
       (go-fr-button
        capi:push-button
        :background *go-frame-button-background
        :foreground *go-frame-button-foreground
        :text  "GO to NEXT Frame >>"
        :visible-min-width  *go-frame-button-width
        :visible-max-width  *go-frame-button-width
        :visible-min-height  *go-frame-button-height
        :visible-max-height  *go-frame-button-height
        ;;  :external-max-height  *go-frame-button-height   
#|        :default-x *go-frame-button-x
        :default-y *go-frame-button-y|#
        :font  *go-frame-button-font 
        ;;   :color-requirements 
        ;;   :selected T
        :default-p T  ;;means if return hit, selects this button
        ;;was (gp:make-font-description :size *button-font-size  :weight :bold) ;; :slant :italic)
        :callback 'go-next-frame-callback
        :callback-type :data-interface
        :data *go-next-frame-callback-data
        ;;was (gp:make-font-description :size *button-font-size  :weight :bold) ;; :slant :italic)
        ;;doesn't work    :character-format *title-pane-char-format
        ;;doesn't work?    :x 20   :y 20
        )
       (previous-fr-button
        capi:push-button
        :background :yellow
        :background *previous-frame-button-background
        :text "<< GO to PREVIOUS Frame"
        :internal-min-width  *previous-frame-button-width
        :internal-min-height  *previous-frame-button-height
        :default-x *previous-frame-button-x
        :default-y *previous-frame-button-y
        :font  *previous-frame-button-font
        :callback 'previous-intro-frame-callback
        :callback-type :data-interface
        :data *previous-intro-frame-callback-data
        
        ;;was (gp:make-font-description :size *button-font-size  :weight :bold) ;; :slant :italic)
        )
       #|(exit-shaq-button
      capi:push-button
      :background :red
      :text *exit-shaq-button-text
      :internal-min-width  *exit-shaq-button-width
      :internal-min-height  *exit-shaq-button-height
      :default-x *exit-shaq-button-x
      :default-y *exit-shaq-button-y
      :font  *exit-shaq-button-font 
      :foreground :red
      :callback 'interface-close-callback
      :callback-type :interface
           ;;was (gp:make-font-description :size *button-font-size  :weight :bold) ;; :slant :italic)
  ;;doesn't work    :character-format *title-pane-char-format
  ;;doesn't work?    :x 20   :y 20
      )|#
     
       ;;end panes
       )
      (:layouts
       (column-layout-1
        capi:column-layout
        '(top-text-layout button-row-layout bottom-text-layout))
       ;;each layout
       (top-text-layout
        capi:simple-layout
        '(top-rich-text-pane)
        ;;  :parent 'simple-layout-1
        ;;doesn't work?   :internal-border 40
        :background :light-blue
        )
       (button-row-layout
        capi:row-layout
        '(previous-fr-button go-fr-button)
         :internal-border 5
        :visible-min-height 40
        :visible-max-height 40
        :background :red
        :x-gap 340
        )
       (bottom-text-layout
        capi:simple-layout
        '(bottom-rich-text-pane)
        :background :yellow
        :external-min-height 540
        :external-min-width  800
        )
       ;;end layouts
       )

  ;;MENUS
  (:menu-bar help-menu )
  (:menus
   (help-menu
    "SHAQ Help"
    (
     ("Help"
      :callback 'shaq-help-callback
      :callback-type :interface
      )
     ("Question Help"
      :callback 'question-help-callback
      :callback-type :interface
      )
     ("SAVING Your SHAQ Results"
      :callback 'shaq-saving-results-help-callback
      :callback-type :interface
      )
     ("Your SHAQ Results Help"
      :callback 'shaq-results-help-callback
      :callback-type :interface
      )  
     ("Other Problems with SHAQ?"
      ::callback 'shaq-problems-callback
      :callback-type :interface
      )   
     ("Close"
      :callback 'close-frame-callback
      :callback-type :interface
      )
     ("Exit SHAQ"
      :callback 'exit-shaq-callback
      :callback-type :interface
     ;;   photo-order-menu
     ;;   dir-or-file-order-menu
     ))))
      (:default-initargs
       :internal-border 20
       :background :red
       :visible-min-height 700
       :visible-min-width 860
       :external-border 10 ;;min pixels from edge of screen
       :layout 'column-layout-1
       :title "Success and Happiness Attributes Questionnaire (SHAQ)"
       :x 10
       :y 10
       ;;end default-initargs
       )
      ;;end define-interface
      )

;; A TEST/MODEL INTERFACE
#|(capi:define-interface interface-2 ()
  ()
  (:panes
   (rich-text-pane-1
    capi:rich-text-pane)
   (rich-text-pane-2
    capi:rich-text-pane))
  (:layouts
   (column-layout-1
    capi:column-layout
    '(simple-layout-1 simple-layout-2 simple-layout-3))

   (simple-layout-1
    capi:simple-layout
    ()
#|    '(rich-text-pane-1
      :external-max-width 100
      :external-max-height 100
      :text "THIS IS SAMPLE TEXT"
      :visible-border T
      :parent 'simple-layout-1
      )|#
 ;;doesn't work?   :internal-border 40
   :external-min-height 120
   :external-min-width  800
    :background :light-blue
    )
   (simple-layout-2
    capi:simple-layout
    ()
    #|    '(rich-text-pane-1
      :external-max-width 100
      :external-max-height 100
      :text "THIS IS SAMPLE TEXT"
      :visible-border T
      :parent 'simple-layout-1
      )|#
    ;;doesn't work?   :internal-border 40
    :external-min-height 30
    :external-min-width  800
    :background :red
    )
   (simple-layout-3
    capi:simple-layout
    '(rich-text-pane-2
      :text 
 :background :yellow
      )
   :external-min-height 460
   :external-min-width  800
    :background :yellow
   )
   )
  (:default-initargs
    :internal-border 40
    :background :red
   :external-min-height 600
   :external-min-width 800
   :layout 'column-layout-1
   :title "SHAQ Introduction"))|#

(defun testi2 ()
  (let 
      ((inst (make-instance 'interface-2))
       )
    (capi:display inst)
    ))



;;FRAME-BIO-INFO
;;
;;ddd
(capi:define-interface frame-bio-info ()
  ((selected-item-datalist
    :initarg :selected-item-datalist
    :accessor selected-item-datalist
    :initform nil
    :type :list
    :documentation "Data from selected item")
   )
  (:PANES
   ;;TITLE-RICH-TEXT-PANE
   (title-rich-text-pane
    capi:rich-text-pane
    :character-format (list :face *title-pane-font-face
                            :size  *title-pane-font-size 
                            :color *title-pane-font-color  :bold T :italic nil :underline nil )
    :paragraph-format  (list :alignment :center  ;; :left :right
                             ;;no effect?  :start-indent 20
                             ;;no effect? :offset-indent 20
                             ;;  :relative-indent 1.0  ;;relative indent for rest of paragraphs
                             :tab-stops  '(5 10 15 20)
                             :numbering nil 
                             ;;OR :bullet, :arabic, :lowercase,:uppercase, :lower-roman or :upper-roman.
                             )
    :visible-border T
    ;;only adds at bottom when use format? 
    :internal-border 8
    :visible-min-height *title-pane-height  :visible-max-height *title-pane-height
    :external-min-width *title-pane-width  ;; :external-max-width *title-pane-width
    ;;    :foreground *title-pane-foreground 
    :background *title-pane-pane-background
    :text *bio-info-frame-title 
    ;;doesn't work :y 10
    )
   ;;INSTR-RICH-TEXT-PANE
   (instr-rich-text-pane
    capi:rich-text-pane
    :character-format  (list :face *instr-pane-font-face 
                             :size  *instr-pane-font-size  
                             :color *instr-pane-font-color
                             :bold T :italic nil :underline nil )
    :paragraph-format '(:alignment :center  ;; :left :right
                        :start-indent 20
                        :offset-indent 20
                        ;;  :relative-indent 1.0  ;;relative indent for rest of paragraphs
                        :tab-stops  '(5 10 15 20)
                        :numbering nil 
                        ;;OR :bullet, :arabic, :lowercase,:uppercase, :lower-roman or :upper-roman.
                        )
    
    :visible-border T
    :internal-border 5
    :visible-min-height *bio-instr-pane-height :visible-max-height *bio-instr-pane-height
    :external-min-width nil  ;; :external-max-width *bio-instr-pane-width
    ;;   :foreground *bio-instr-pane-foreground 
    :background *instr-pane-background
    :text *bio-instr-pane-text
    )
   ;;REQUIRED TEXT FIELDS

  (optional-pane1-title
    capi:rich-text-pane
    :text (format nil "   OPTIONAL FAKE ID 
        (Useful for course credit, or for getting later copies of results.)

      INVENT and save A FAKE USER ID:
             [We cannot link this to you.]")
    :character-format (list :face nil ;;*bio-quest-pane-font-face 
                            :size 11 ;; *bio-quest-pane-font-size
                            :bold *bio-quest-pane-font-weight
                            :italic T :underline nil )
    :paragraph-format '(:alignment :left ;; :center  ;; :left :right
                        :offset-indent 10
                        :tab-stops nil   ;;eg  (10 20 10)
                        :numbering nil 
                        ;;OR :bullet, :arabic, :lowercase,:uppercase, :lower-roman or :upper-roman.
                        )
    :visible-border T
    :internal-border 10
    ;;  :visible-min-height *bio-quest-pane-height :visible-max-height *bio-quest-pane-height
    :visible-min-width nil ;; *bio-quest-pane-width ;; :visible-max-width *bio-quest-pane-width
    ;;    :foreground *bio-quest-pane-foreground 
    :background *opt-pane-background
    )
  (required-pane1-title
    capi:rich-text-pane
    :text (format nil "     Please complete ALL of the following~%    (REQUIRED, because we need it for research data analysis).~%")
    :character-format (list :face *bio-quest-pane-font-face
                            :size *bio-quest-pane-font-size
                            :bold *bio-quest-pane-font-weight
                            :italic T :underline nil )
    :paragraph-format '(:alignment :left ;; :center  ;; :left :right
                        ;;  :start-indent 5
                        :offset-indent 10
                        ;;  :relative-indent 1.0  ;;relative indent for rest of paragraphs
                        :tab-stops nil   ;;eg  (10 20 10)
                        :numbering nil 
                        ;;OR :bullet, :arabic, :lowercase,:uppercase, :lower-roman or :upper-roman.
                        )
    :visible-border T
    :internal-border 10
    ;;  :visible-min-height *bio-quest-pane-height :visible-max-height *bio-quest-pane-height
    :visible-min-width *bio-quest-pane-width ;; :visible-max-width *bio-quest-pane-width
    ;;    :foreground *bio-quest-pane-foreground 
    :background  *req-pane-background
    )
   ;;panes--buttons
   (go-fr-button
    capi:push-button
    :background *go-frame-button-background
    :foreground *go-frame-button-foreground
    :text  "GO to NEXT Frame >>"
    :visible-min-width  *go-frame-button-width
    :visible-max-width  *go-frame-button-width
    :visible-min-height  *go-frame-button-height
    :visible-max-height  *go-frame-button-height
    ;;  :external-max-height  *go-frame-button-height   
    #|        :default-x *go-frame-button-x
        :default-y *go-frame-button-y|#
    :font  *go-frame-button-font 
    ;;   :color-requirements 
    ;;   :selected T
    :default-p T  ;;means if return hit, selects this button
    ;;was (gp:make-font-description :size *button-font-size  :weight :bold) ;; :slant :italic)
    :callback 'go-frame-bio-info-callback
    :callback-type :data-interface
    :data *go-next-frame-callback-data
    ;;was (gp:make-font-description :size *button-font-size  :weight :bold) ;; :slant :italic)
    ;;doesn't work    :character-format *title-pane-char-format
    ;;doesn't work?    :x 20   :y 20
    )
   (previous-fr-button
    capi:push-button
    :background :red
    :background *previous-frame-button-background
    :text "<< GO to PREVIOUS Frame"
    :internal-min-width  *previous-frame-button-width
    :internal-min-height  *previous-frame-button-height
    :default-x *previous-frame-button-x
    :default-y *previous-frame-button-y
    :font  *previous-frame-button-font
    :callback 'previous-intro-frame-callback
    :callback-type :data-interface
    :data *previous-intro-frame-callback-data
    ;;was (gp:make-font-description :size *button-font-size  :weight :bold) ;; :slant :italic)
    )
   ;;QUESTION PANES
#|   (first-name-text-pane
    capi:text-input-pane
    :title "1. First Name:  "
    :title-font *bio-text-button-font
    :visible-max-width 100
    )
   (last-name-text-pane
    capi:text-input-pane
    :title "2. Last Name:  "
    :title-font *bio-text-button-font
    :visible-max-width 100
    )
   (email-text-pane
    capi:text-input-pane
    :title "3. Email:  "
    :title-font *bio-text-button-font
    :visible-max-width 180
    )|#
   (user-id-text-pane
    capi:text-input-pane
    :title "1. OPTIONAL FAKE ID  [6-12 numbers/letters]:  "
    :title-font *bio-text-button-font
    :visible-max-width 72
      )
   (age-text-pane
    capi:text-input-pane
    :title "2. AGE:  "
    :title-font *bio-text-button-font
    :visible-max-width 20
    )
   (hours-work-text-pane
    capi:text-input-pane
    :title "3. Hours work/week:  "
    :title-font *bio-text-button-font
        :visible-max-width 20
    )
   (other-country-text-pane
    capi:text-input-pane
    :title  "4. If not USA, country: "
    :title-font *bio-text-button-font
    :visible-max-width 100
    )
   (usa-zip-text-pane
    capi:text-input-pane
    :title "5. If USA, ZIP CODE:  "
    :title-font *bio-text-button-font
    :visible-max-width 40
    )
   (message-text-pane
    capi:rich-text-pane
    :visible-min-height 140
    ;; :visible-min-width 300
    :background *opt-pane-background 
    :character-format (list :face nil ;;*bio-quest-pane-font-face 
                            :size 11 ;; *bio-quest-pane-font-size
                            :bold T
                            :italic T :underline nil )
    :paragraph-format '(:alignment :left ;; :center  ;; :left :right
                        :offset-indent 10)
 
    )
   ;;end panes
   )
   
  (:layouts
   ;;overall, column layout, 5 rows.
   (column-layout-1
    capi:column-layout ;; capi:grid-layout
    '(row-layout-1 row-layout-2 button-row-layout  question-row-layout) 
    )
   ;;first row --title text
   (row-layout-1
    capi:row-layout
    '(title-rich-text-pane)
    ;;  :visible-min-height *bio-title-pane-height
    )   
   ;;second row --instructions text
   (row-layout-2
    capi:row-layout
    '(instr-rich-text-pane )
    ;;   :visible-min-height *bio-instructions-pane-height
    )  
   ;;third row -- push buttons
   (button-row-layout
    capi:row-layout
    '(previous-fr-button go-fr-button)
    :internal-border 5
    :visible-min-height 40
    :visible-max-height 40
    :background :red
    :x-gap 340
    )
   ;;fourth row -- question text and answer buttons/text
   ;;QUEST-ANS-ROW-LAYOUT
   (question-row-layout
    capi:row-layout
    '(optional-pane-layout   required-pane-layout) ;;was answer-button-panel)
    ;;   :visible-min-height *bio-info-pane-height
    ;;  :background *bio-fr-border-color
    ;;  :visible-min-height *bio-answer-pane-height
    ;;  :visible-max-height *bio-answer-pane-height
    ;;   :visible-min-width  (- *bio-fr-visible-min-width (*bio- 2 *bio-fr-internal-border)) ;; :visiblel-max-width *bio-answer-pane-width
    :background  :light-blue
    ) 
   (optional-pane-layout
    capi:column-layout
    ;;need row layouts for each item too?
    '(optional-pane1-title :separator user-id-text-pane filler-layout-1) 
;;  first-name-text-pane last-name-text-pane :separator email-text-pane :separator filler-layout-1)
    :internal-border 10
    :background *opt-pane-background
    :gap 20
    :y-adjust :center
    )
  ;;AAA
   (required-pane-layout
    capi:column-layout
    ;;need row layouts for each item too?
    '(required-pane1-title   :separator age-text-pane
                           sex-buttons-layout  hours-work-text-pane
                           :separator                           
                           usa-other-buttons-layout other-country-text-pane
                           usa-zip-text-pane) ;; filler-layout-2)

   :internal-border 10
    :background :light-blue
    :gap 10
    :y-adjust :top
    )
   (sex-buttons-layout
    capi:row-layout
    ()
    )
   (usa-other-buttons-layout
    capi:row-layout
    ()
    )
   (filler-layout-1
    capi:simple-layout
    '(message-text-pane)
    :background *opt-pane-background
    :visible-min-height 240  )
  (filler-layout-2
    capi:simple-layout
    ()
    :background *req-pane-background
    :visible-min-height 20
   )
   ;;end layouts
   )
  ;;MENUS
  (:menu-bar help-menu )
  (:menus
   (help-menu
    "SHAQ Help"
    (
     ("Help"
      :callback 'shaq-help-callback
      :callback-type :interface
      )
     ("Question Help"
      :callback 'question-help-callback
      :callback-type :interface
      )
     ("SAVING Your SHAQ Results"
      :callback 'shaq-saving-results-help-callback
      :callback-type :interface
      )
     ("Your SHAQ Results Help"
      :callback 'shaq-results-help-callback
      :callback-type :interface
      )
     ("Other Problems with SHAQ?"
      ::callback 'shaq-problems-callback
      :callback-type :interface
      )
     ("Close"
      :callback 'close-frame-callback
      :callback-type :interface
      )
     ("Exit SHAQ"
      :callback 'exit-shaq-callback
      :callback-type :interface
      ;;   photo-order-menu
      ;;   dir-or-file-order-menu
      ))))
  ;;end new menus
  (:default-initargs
   :x *initial-x  :y *initial-y
   :visible-min-width *fr-visible-min-width
   :visible-min-height *fr-visible-min-height
   :external-border  *external-border
   :internal-border *internal-border-width
   ;;  :window-styles '(:always-on-top)
   :layout 'column-layout-1
   :background *fr-border-color
   :title *shaq-frame-title
  ;;  :title-font MAKE IT BOLD
   ;;end default-initargs
   )
  ;;end frame-bio-info
  )
::TEST
(defun testbio () 
  (let 
      ((inst (make-instance 'frame-bio-info))
       )
    (capi:display inst)
    ))
;;  (testbio)


;;FRAME-FAMILY-INFO INTERFACE
;;
;;ddd
(capi:define-interface frame-family-info ()
  ((selected-item-datalist
    :initarg :selected-item-datalist
    :accessor selected-item-datalist
    :initform nil
    :type :list
    :documentation "Data from selected item")
   )
  (:PANES
   ;;TITLE-RICH-TEXT-PANE
   (title-rich-text-pane
    capi:rich-text-pane
    :character-format (list :face *title-pane-font-face
                            :size  *title-pane-font-size 
                            :color *title-pane-font-color  :bold T :italic nil :underline nil )
    :paragraph-format  (list :alignment :center  ;; :left :right
                             ;;no effect?  :start-indent 20
                             ;;no effect? :offset-indent 20
                             ;;  :relative-indent 1.0  ;;relative indent for rest of paragraphs
                             :tab-stops  '(5 10 15 20)
                             :numbering nil 
                             ;;OR :bullet, :arabic, :lowercase,:uppercase, :lower-roman or :upper-roman.
                             )
    :visible-border T
    ;;only adds at bottom when use format? 
    :internal-border 8
    :visible-min-height *title-pane-height  :visible-max-height *title-pane-height
    :external-min-width *title-pane-width  ;; :external-max-width *title-pane-width
    ;;    :foreground *title-pane-foreground 
    :background *title-pane-pane-background
    :text *bio-info-frame-title 
    ;;doesn't work :y 10
    )
   ;;INSTR-RICH-TEXT-PANE
   (instr-rich-text-pane
    capi:rich-text-pane
    :character-format  (list :face *instr-pane-font-face 
                             :size  *instr-pane-font-size  
                             :color *instr-pane-font-color
                             :bold T :italic nil :underline nil )
    :paragraph-format '(:alignment :center  ;; :left :right
                        :start-indent 20
                        :offset-indent 20
                        ;;  :relative-indent 1.0  ;;relative indent for rest of paragraphs
                        :tab-stops  '(5 10 15 20)
                        :numbering nil 
                        ;;OR :bullet, :arabic, :lowercase,:uppercase, :lower-roman or :upper-roman.
                        )
    
    :visible-border T
    :internal-border 5
    :visible-min-height *bio-instr-pane-height :visible-max-height *bio-instr-pane-height
    :external-min-width nil  ;; :external-max-width *bio-instr-pane-width
    ;;   :foreground *bio-instr-pane-foreground 
    :background *instr-pane-background
    :text *bio-instr-pane-text
    )
   ;;REQUIRED TEXT FIELDS

  (family-pane-title
    capi:rich-text-pane
    :text (format nil "Information about your family situation: ")
    :character-format (list :face nil ;;*bio-quest-pane-font-face 
                            :size 11 ;; *bio-quest-pane-font-size
                            :bold *bio-quest-pane-font-weight
                            :italic T :underline nil )
    :paragraph-format '(:alignment :left ;; :center  ;; :left :right
                        :offset-indent 10
                        :tab-stops nil   ;;eg  (10 20 10)
                        :numbering nil 
                        ;;OR :bullet, :arabic, :lowercase,:uppercase, :lower-roman or :upper-roman.
                        )
    :visible-border T
    :internal-border 10
    ;;  :visible-min-height *bio-quest-pane-height :visible-max-height *bio-quest-pane-height
    :visible-min-width nil ;; *bio-quest-pane-width ;; :visible-max-width *bio-quest-pane-width
    ;;    :foreground *bio-quest-pane-foreground 
    :background *opt-pane-background
    )
  
   ;;panes--buttons
   (go-fr-button
    capi:push-button
    :background *go-frame-button-background
    :foreground *go-frame-button-foreground
    :text  "GO to NEXT Frame >>"
    :visible-min-width  *go-frame-button-width
    :visible-max-width  *go-frame-button-width
    :visible-min-height  *go-frame-button-height
    :visible-max-height  *go-frame-button-height
    ;;  :external-max-height  *go-frame-button-height   
    #|        :default-x *go-frame-button-x
        :default-y *go-frame-button-y|#
    :font  *go-frame-button-font 
    ;;   :color-requirements 
    ;;   :selected T
    :default-p T  ;;means if return hit, selects this button
    ;;was (gp:make-font-description :size *button-font-size  :weight :bold) ;; :slant :italic)
    :callback 'go-frame-family-info-callback
    :callback-type :data-interface
    :data *go-next-frame-callback-data2
    ;;was (gp:make-font-description :size *button-font-size  :weight :bold) ;; :slant :italic)
    ;;doesn't work    :character-format *title-pane-char-format
    ;;doesn't work?    :x 20   :y 20
    )
  #| (previous-fr-button
    capi:push-button
    :background :red
    :background *previous-frame-button-background
    :text "<< GO to PREVIOUS Frame"
    :internal-min-width  *previous-frame-button-width
    :internal-min-height  *previous-frame-button-height
    :default-x *previous-frame-button-x
    :default-y *previous-frame-button-y
    :font  *previous-frame-button-font
    :callback 'previous-intro-frame-callback
    :callback-type :data-interface
    :data *previous-intro-frame-callback-data
    ;;was (gp:make-font-description :size *button-font-size  :weight :bold) ;; :slant :italic)
    )|#
   ;;QUESTION PANES
   (older-bros-text-pane
    capi:text-input-pane
    :title "1. Your number of OLDER Brothers (0 to ?): "
    :title-font *bio-text-button-font
    :visible-max-width 15
    )
   (older-sis-text-pane
    capi:text-input-pane
    :title "2. Your number of OLDER Sisters (0 to ?): "
    :title-font *bio-text-button-font
    :visible-max-width 15
    )
   (younger-bros-text-pane
    capi:text-input-pane
    :title "3. Your number of YOUNGER Brothers (0 to ?): "
    :title-font *bio-text-button-font
    :visible-max-width 15
    )
   (younger-sis-text-pane
    capi:text-input-pane
    :title "4. Your number of YOUNGER Sisters  (0 to ?): "
    :title-font *bio-text-button-font
    :visible-max-width 15
      )
    (message-text-pane
    capi:rich-text-pane
    :visible-min-height 140
    ;; :visible-min-width 300
    :background *opt-pane-background 
    :character-format (list :face nil ;;*bio-quest-pane-font-face 
                            :size 11 ;; *bio-quest-pane-font-size
                            :bold T
                            :italic T :underline nil )
    :paragraph-format '(:alignment :left ;; :center  ;; :left :right
                        :offset-indent 10)
 
    )
    (parent-radio-button-panel
   capi:radio-button-panel
   :items  '("Raised primarily by 2 PARENTS" "Raised primarily by SINGLE MOM" "Raised primarily by SINGLE DAD" "Not raised by my parents" "Other")
   :title "5. Choose the best answer:"
   :title-font *bio-text-button-font
  :layout-class 'capi:column-layout
;;  :selected-item nil
  :selection nil
 ;; :choice-selection nil
  :visible-min-width 400
  :background :yellow
  :font  *bio-text-button-font  #|(gp:make-font-description 
                        :family *answer-pane-font-face
                        :weight :normal  :size *answer-font-size)|#
   )
   ;;end panes
   )
   
  (:layouts
   ;;overall, column layout, 5 rows.
   (column-layout-1
    capi:column-layout ;; capi:grid-layout
    '(row-layout-1 row-layout-2 button-row-layout  question-row-layout) 
    )
   ;;first row --title text
   (row-layout-1
    capi:row-layout
    '(title-rich-text-pane)
    ;;  :visible-min-height *bio-title-pane-height
    )   
   ;;second row --instructions text
   (row-layout-2
    capi:row-layout
    '(instr-rich-text-pane )
    ;;   :visible-min-height *bio-instructions-pane-height
    )  
   ;;third row -- push buttons
   (button-row-layout
    capi:row-layout
    '( go-fr-button)  ;;previous-fr-button
    :internal-border 5
    :visible-min-height 40
    :visible-max-height 40
    :background :red
    :x-gap 340
    )
   ;;fourth row -- question text and answer buttons/text
   ;;QUEST-ANS-ROW-LAYOUT
   (question-row-layout
    capi:row-layout
    '(family-pane-layout :separator parent-quest-layout) ;;was answer-button-panel)
    ;;   :visible-min-height *bio-info-pane-height
    ;;  :background *bio-fr-border-color
    ;;  :visible-min-height *bio-answer-pane-height
    ;;  :visible-max-height *bio-answer-pane-height
    ;;   :visible-min-width  (- *bio-fr-visible-min-width (*bio- 2 *bio-fr-internal-border)) ;; :visiblel-max-width *bio-answer-pane-width
    :background  :yellow
    ) 
   (family-pane-layout
    capi:column-layout
    ;;need row layouts for each item too?
    '(family-pane-title :separator older-bros-text-pane older-sis-text-pane 
                          younger-bros-text-pane  younger-sis-text-pane
                          :separator filler-layout-1)
    :internal-border 10
    :background :yellow
    :gap 20
    :y-adjust :center
    )
   (parent-quest-layout
    capi:row-layout
    '(parent-radio-button-panel)
    :background :yellow
    :internal-border 20
    )
   ;;AAA
   #|(required-pane-layout
    capi:column-layout
    ;;need row layouts for each item too?
    '(required-pane1-title :separator user-id-text-pane :separator age-text-pane
                           sex-buttons-layout  hours-work-text-pane
                           :separator                           
                           usa-other-buttons-layout other-country-text-pane
                           usa-zip-text-pane filler-layout-2)

   :internal-border 10
    :background :light-blue
    :gap 10
    :y-adjust :top
    )|#
   (sex-buttons-layout
    capi:row-layout
    ()
    )
   (usa-other-buttons-layout
    capi:row-layout
    ()
    )
   (filler-layout-1
    capi:simple-layout
    '(message-text-pane)
    :background *opt-pane-background
    :visible-min-height 180
   )
  (filler-layout-2
    capi:simple-layout
    ()
    :background *req-pane-background
    :visible-min-height 80
   )
   ;;end layouts
   )
  ;;MENUS
  (:menu-bar help-menu )
  (:menus
   (help-menu
    "SHAQ Help"
    (
     ("Help"
      :callback 'shaq-help-callback
      :callback-type :interface
      )
     ("Question Help"
      :callback 'question-help-callback
      :callback-type :interface
      )
     ("SAVING Your SHAQ Results"
      :callback 'shaq-saving-results-help-callback
      :callback-type :interface
      )
     ("Your SHAQ Results Help"
      :callback 'shaq-results-help-callback
      :callback-type :interface
      )
     ("Other Problems with SHAQ?"
      ::callback 'shaq-problems-callback
      :callback-type :interface
      )
     ("Close"
      :callback 'close-frame-callback
      :callback-type :interface
      )
     ("Exit SHAQ"
      :callback 'exit-shaq-callback
      :callback-type :interface
      ;;   photo-order-menu
      ;;   dir-or-file-order-menu
      ))))
  ;;end new menus
  (:default-initargs
   :x *initial-x  :y *initial-y
   :visible-min-width *fr-visible-min-width
   :visible-min-height *fr-visible-min-height
   :external-border  *external-border
   :internal-border *internal-border-width
   ;;  :window-styles '(:always-on-top)
   :layout 'column-layout-1
   :background *fr-border-color
   :title *shaq-frame-title
  ;;  :title-font  MAKE IT BOLD
   ;;end default-initargs
   )
  ;;end frame-family-info
  )

#|EXAMPLE OF DISPLAY-INTERFACE  :AFTER METHOD  TO CHANGE SELECTION
 (CALLED WHEN CAPI:DISPLAY IS RUN)
(capi:define-interface my-tree ()
  ((favorite-color :initform :blue))
  (:panes
  e (tree
    capi:tree-view
    :roots '(:red :blue :green)
    :print-function
    'string-capitalize))
  (:default-initargs
   :width 200
   :height 200))

(DEFMETHOD CAPI:INTERFACE-DISPLAY :AFTER
  ((self my-tree))
  (with-slots (tree favorite-color) self
    (setf (capi:choice-selected-item tree)
          favorite-color)))
(capi:display (make-instance 'my-tree))
|#


;;CAPI:INTERFACE-DISPLAY :AFTER ((SELF FRAME-FAMILY-INFO))
;; To uncheck all buttons in frame-family-info
;;ddd
(defmethod capi:interface-display :after ((self frame-family-info))
  (with-slots (frame-family-info parent-radio-button-panel) self
    (setf (capi:choice-selected-item parent-radio-button-panel) NIL)
    ))
;;TEST
;;  (capi:display (make-instance 'frame-family-info)) = WORKS
;;  (progn (setf xx 'frame-family-info)(capi:display (make-instance xx))))

;;NO LONGER NEEDED--REPLACED BY INTERFACE-DISPLAY ABOVE
;;RUN-FRAME-FAMILY-INFO
;;
;;ddd
#|(defun run-frame-family-info () 
  (let 
      ((inst (make-instance 'frame-family-info))
       )

    (with-slots (parent-radio-button-panel) inst
  ;;  (capi:apply-in-pane-process parent-radio-button-panel
                                (setf (capi:choice-selected-item parent-radio-button-panel) nil)
    (capi:display inst)
    )
    ))|#
;;  (testbio2)
;;  (run-frame-family-info)

;; LATER DELETE ====================================
;;SSS START HERE TO INCORPORATE DATA INTO *SHAQ-DATA-LIST
;; from make-question-frame,  use *multi-selection-qvar-list used in callback
;; EG of a *multi-selection-qvar-list for one question = 
#|(:QVAR-CATEGORY BIO4JOB :PRIMARY-QVAR-SYM "bio4job" :PRIMARY-QVAR-LABEL "b-Primary occupation" :PRIMARY-TITLE-TEXT "YOUR OCCUPATION" :PRIMARY-INSTR-TEXT "Select ALL that apply to you" :QNUM 1 :QUEST-TEXT-LIST NIL :Q-SPSS-NAME NIL :ANS-NAME-LIST ("student" "manager" "propeop" "protech" "consulta" "educator" "sales" "technici" "clerical" "service" "ownbus10" "othrsfem") :ANS-TEXT-LIST ("1-Student" "2-Manager" "3-People professional" "4-Technical professional" "5-Consultant" "6-Educator" "7-Sales" "8-Other technical" "9-Clerical" "10-Service" "11-Own business" "other" "13-Other" "spss-match" ("Other")) :NUM-ANSWERS 12 :DATA-TYPE INTEGER :ANS-DATA-LIST (1 1 1 1 1 1 1 1 1 1 1 1) :PRIMARY-JAVA-VAR ("bio4job") :PRIMARY-SPSS-MATCH "spss-match" :SPSS-MATCH-LIST ("spss-match" "spss-match" "spss-match" "spss-match" NIL "spss-match" "spss-match" "spss-match" "spss-match" "spss-match" "spss-match" "spss-match") :JAVA-VAR-LIST (("Student") ("Manager/executive") NIL ("Technician") ("Consultant") ("Educator") ("Sales") ("Technician") ("Clerical") ("Service") ("Own business +10 employees") (("Other self-employed"))))|#



;;XXX
;;==== PRE 2017-10-02 OLD USER IDENTIFIABLE INFO TEXT ===============================

#|(format nil "~%~%
Welcome to SHAQ CARES!

1. Answer honestly and work quickly. Completion takes 30 to 60 minutes (or more if you answer slowly).  
ALL QUESTIONS ARE INCLUDED IN YOUR RESULTS for later deliberation.
2. Any information that can be identified with you will remain strictly confidential and will be disclosed only with your permission or as required by law. However, the data may be used for scientific research (as part of group data) so that we can learn more about factors leading to success and happiness. If you don't complete SHAQ, your data won't be collected.
3. We make no promises of any kind about how much you may benefit from SHAQ or any part of this web site.
4. You may not copy or use the test questions or other information for any purpose other than your own personal use without permission of the author.

This research study is conducted at California State University, Long Beach by Tom G. Stevens PhD. For questions regarding your rights as a research subject, contact the Office of University Research, CSU Long Beach, 1250 Bellflower Blvd, Long Beach, CA90840.  Email: research@csulb.edu.

      PROCEED ONLY IF YOU AGREE TO THESE CONDITIONS!~%~%"
   )|#


#|(capi:define-interface frame-bio-info ()
  ((selected-item-datalist
    :initarg :selected-item-datalist
    :accessor selected-item-datalist
    :initform nil
    :type :list
    :documentation "Data from selected item")
   )
  (:PANES
   ;;TITLE-RICH-TEXT-PANE
   (title-rich-text-pane
    capi:rich-text-pane
    :character-format (list :face *title-pane-font-face
                            :size  *title-pane-font-size 
                            :color *title-pane-font-color  :bold T :italic nil :underline nil )
    :paragraph-format  (list :alignment :center  ;; :left :right
                             ;;no effect?  :start-indent 20
                             ;;no effect? :offset-indent 20
                             ;;  :relative-indent 1.0  ;;relative indent for rest of paragraphs
                             :tab-stops  '(5 10 15 20)
                             :numbering nil 
                             ;;OR :bullet, :arabic, :lowercase,:uppercase, :lower-roman or :upper-roman.
                             )
    :visible-border T
    ;;only adds at bottom when use format? 
    :internal-border 8
    :visible-min-height *title-pane-height  :visible-max-height *title-pane-height
    :external-min-width *title-pane-width  ;; :external-max-width *title-pane-width
    ;;    :foreground *title-pane-foreground 
    :background *title-pane-pane-background
    :text *bio-info-frame-title 
    ;;doesn't work :y 10
    )
   ;;INSTR-RICH-TEXT-PANE
   (instr-rich-text-pane
    capi:rich-text-pane
    :character-format  (list :face *instr-pane-font-face 
                             :size  *instr-pane-font-size  
                             :color *instr-pane-font-color
                             :bold T :italic nil :underline nil )
    :paragraph-format '(:alignment :center  ;; :left :right
                        :start-indent 20
                        :offset-indent 20
                        ;;  :relative-indent 1.0  ;;relative indent for rest of paragraphs
                        :tab-stops  '(5 10 15 20)
                        :numbering nil 
                        ;;OR :bullet, :arabic, :lowercase,:uppercase, :lower-roman or :upper-roman.
                        )
    
    :visible-border T
    :internal-border 5
    :visible-min-height *bio-instr-pane-height :visible-max-height *bio-instr-pane-height
    :external-min-width nil  ;; :external-max-width *bio-instr-pane-width
    ;;   :foreground *bio-instr-pane-foreground 
    :background *instr-pane-background
    :text *bio-instr-pane-text
    )
   ;;REQUIRED TEXT FIELDS

  (optional-pane1-title
    capi:rich-text-pane
    :text (format nil "     PLEASE COMPLETE (Required for course credit, useful for getting later copies of results):")
    :character-format (list :face nil ;;*bio-quest-pane-font-face 
                            :size 11 ;; *bio-quest-pane-font-size
                            :bold *bio-quest-pane-font-weight
                            :italic T :underline nil )
    :paragraph-format '(:alignment :left ;; :center  ;; :left :right
                        :offset-indent 10
                        :tab-stops nil   ;;eg  (10 20 10)
                        :numbering nil 
                        ;;OR :bullet, :arabic, :lowercase,:uppercase, :lower-roman or :upper-roman.
                        )
    :visible-border T
    :internal-border 10
    ;;  :visible-min-height *bio-quest-pane-height :visible-max-height *bio-quest-pane-height
    :visible-min-width nil ;; *bio-quest-pane-width ;; :visible-max-width *bio-quest-pane-width
    ;;    :foreground *bio-quest-pane-foreground 
    :background *opt-pane-background
    )
  (required-pane1-title
    capi:rich-text-pane
    :text (format nil "     Please complete ALL of the following (REQUIRED).~%Choose a USER-ID THAT YOU WILL REMEMBER (Any combination of 6 to 12 letters or numbers).")
    :character-format (list :face *bio-quest-pane-font-face
                            :size *bio-quest-pane-font-size
                            :bold *bio-quest-pane-font-weight
                            :italic T :underline nil )
    :paragraph-format '(:alignment :left ;; :center  ;; :left :right
                        ;;  :start-indent 5
                        :offset-indent 10
                        ;;  :relative-indent 1.0  ;;relative indent for rest of paragraphs
                        :tab-stops nil   ;;eg  (10 20 10)
                        :numbering nil 
                        ;;OR :bullet, :arabic, :lowercase,:uppercase, :lower-roman or :upper-roman.
                        )
    :visible-border T
    :internal-border 10
    ;;  :visible-min-height *bio-quest-pane-height :visible-max-height *bio-quest-pane-height
    :visible-min-width *bio-quest-pane-width ;; :visible-max-width *bio-quest-pane-width
    ;;    :foreground *bio-quest-pane-foreground 
    :background  *req-pane-background
    )
   ;;panes--buttons
   (go-fr-button
    capi:push-button
    :background *go-frame-button-background
    :foreground *go-frame-button-foreground
    :text  "GO to NEXT Frame >>"
    :visible-min-width  *go-frame-button-width
    :visible-max-width  *go-frame-button-width
    :visible-min-height  *go-frame-button-height
    :visible-max-height  *go-frame-button-height
    ;;  :external-max-height  *go-frame-button-height   
    #|        :default-x *go-frame-button-x
        :default-y *go-frame-button-y|#
    :font  *go-frame-button-font 
    ;;   :color-requirements 
    ;;   :selected T
    :default-p T  ;;means if return hit, selects this button
    ;;was (gp:make-font-description :size *button-font-size  :weight :bold) ;; :slant :italic)
    :callback 'go-frame-bio-info-callback
    :callback-type :data-interface
    :data *go-next-frame-callback-data
    ;;was (gp:make-font-description :size *button-font-size  :weight :bold) ;; :slant :italic)
    ;;doesn't work    :character-format *title-pane-char-format
    ;;doesn't work?    :x 20   :y 20
    )
   (previous-fr-button
    capi:push-button
    :background :red
    :background *previous-frame-button-background
    :text "<< GO to PREVIOUS Frame"
    :internal-min-width  *previous-frame-button-width
    :internal-min-height  *previous-frame-button-height
    :default-x *previous-frame-button-x
    :default-y *previous-frame-button-y
    :font  *previous-frame-button-font
    :callback 'previous-intro-frame-callback
    :callback-type :data-interface
    :data *previous-intro-frame-callback-data
    ;;was (gp:make-font-description :size *button-font-size  :weight :bold) ;; :slant :italic)
    )
   ;;QUESTION PANES
   (first-name-text-pane
    capi:text-input-pane
    :title "1. First Name:  "
    :title-font *bio-text-button-font
    :visible-max-width 100
    )
   (last-name-text-pane
    capi:text-input-pane
    :title "2. Last Name:  "
    :title-font *bio-text-button-font
    :visible-max-width 100
    )
   (email-text-pane
    capi:text-input-pane
    :title "3. Email:  "
    :title-font *bio-text-button-font
    :visible-max-width 180
    )
   (user-id-text-pane
    capi:text-input-pane
    :title "4. USER ID [6-12 numbers/letters]:  "
    :title-font *bio-text-button-font
    :visible-max-width 72
      )
   (age-text-pane
    capi:text-input-pane
    :title "5. AGE:  "
    :title-font *bio-text-button-font
    :visible-max-width 20
    )
   (hours-work-text-pane
    capi:text-input-pane
    :title "7. Hours work/week:  "
    :title-font *bio-text-button-font
        :visible-max-width 20
    )
   (other-country-text-pane
    capi:text-input-pane
    :title  "9. If not USA, country: "
    :title-font *bio-text-button-font
    :visible-max-width 100
    )
   (usa-zip-text-pane
    capi:text-input-pane
    :title "10. If USA, ZIP CODE:  "
    :title-font *bio-text-button-font
    :visible-max-width 40
    )
   (message-text-pane
    capi:rich-text-pane
    :visible-min-height 140
    ;; :visible-min-width 300
    :background *opt-pane-background 
    :character-format (list :face nil ;;*bio-quest-pane-font-face 
                            :size 11 ;; *bio-quest-pane-font-size
                            :bold T
                            :italic T :underline nil )
    :paragraph-format '(:alignment :left ;; :center  ;; :left :right
                        :offset-indent 10)
 
    )
   ;;end panes
   )
   
  (:layouts
   ;;overall, column layout, 5 rows.
   (column-layout-1
    capi:column-layout ;; capi:grid-layout
    '(row-layout-1 row-layout-2 button-row-layout  question-row-layout) 
    )
   ;;first row --title text
   (row-layout-1
    capi:row-layout
    '(title-rich-text-pane)
    ;;  :visible-min-height *bio-title-pane-height
    )   
   ;;second row --instructions text
   (row-layout-2
    capi:row-layout
    '(instr-rich-text-pane )
    ;;   :visible-min-height *bio-instructions-pane-height
    )  
   ;;third row -- push buttons
   (button-row-layout
    capi:row-layout
    '(previous-fr-button go-fr-button)
    :internal-border 5
    :visible-min-height 40
    :visible-max-height 40
    :background :red
    :x-gap 340
    )
   ;;fourth row -- question text and answer buttons/text
   ;;QUEST-ANS-ROW-LAYOUT
   (question-row-layout
    capi:row-layout
    '(optional-pane-layout   required-pane-layout) ;;was answer-button-panel)
    ;;   :visible-min-height *bio-info-pane-height
    ;;  :background *bio-fr-border-color
    ;;  :visible-min-height *bio-answer-pane-height
    ;;  :visible-max-height *bio-answer-pane-height
    ;;   :visible-min-width  (- *bio-fr-visible-min-width (*bio- 2 *bio-fr-internal-border)) ;; :visiblel-max-width *bio-answer-pane-width
    :background  :light-blue
    ) 
   (optional-pane-layout
    capi:column-layout
    ;;need row layouts for each item too?
    '(optional-pane1-title :separator first-name-text-pane last-name-text-pane 
                         :separator email-text-pane :separator filler-layout-1)
    :internal-border 10
    :background *opt-pane-background
    :gap 20
    :y-adjust :center
    )
  ;;AAA
   (required-pane-layout
    capi:column-layout
    ;;need row layouts for each item too?
    '(required-pane1-title :separator user-id-text-pane :separator age-text-pane
                           sex-buttons-layout  hours-work-text-pane
                           :separator                           
                           usa-other-buttons-layout other-country-text-pane
                           usa-zip-text-pane filler-layout-2)

   :internal-border 10
    :background :light-blue
    :gap 10
    :y-adjust :top
    )
   (sex-buttons-layout
    capi:row-layout
    ()
    )
   (usa-other-buttons-layout
    capi:row-layout
    ()
    )
   (filler-layout-1
    capi:simple-layout
    '(message-text-pane)
    :background *opt-pane-background
    :visible-min-height 180
   )
  (filler-layout-2
    capi:simple-layout
    ()
    :background *req-pane-background
    :visible-min-height 20
   )
   ;;end layouts
   )
  ;;MENUS
  (:menu-bar help-menu )
  (:menus
   (help-menu
    "SHAQ Help"
    (
     ("Help"
      :callback 'shaq-help-callback
      :callback-type :interface
      )
     ("Question Help"
      :callback 'question-help-callback
      :callback-type :interface
      )
     ("SAVING Your SHAQ Results"
      :callback 'shaq-saving-results-help-callback
      :callback-type :interface
      )
     ("Your SHAQ Results Help"
      :callback 'shaq-results-help-callback
      :callback-type :interface
      )
     ("Close"
      :callback 'close-frame-callback
      :callback-type :interface
      )
     ("Exit SHAQ"
      :callback 'exit-shaq-callback
      :callback-type :interface
      ;;   photo-order-menu
      ;;   dir-or-file-order-menu
      ))))
  ;;end new menus
  (:default-initargs
   :x *initial-x  :y *initial-y
   :visible-min-width *fr-visible-min-width
   :visible-min-height *fr-visible-min-height
   :external-border  *external-border
   :internal-border *internal-border-width
   ;;  :window-styles '(:always-on-top)
   :layout 'column-layout-1
   :background *fr-border-color
   :title *shaq-frame-title
  ;;  :title-font MAKE IT BOLD
   ;;end default-initargs
   )
  ;;end frame-bio-info
  )|#

;;------------------------ TO BE DELETED ---------------------------------------

;;**********************  Frame-quest-functions.lisp *******************
;;
;;FUNCTIONS FOR CREATING SHAQ QUESTION FRAMES
;;

;;put in all key files
  (my-config-editor-after-start)

#|(setq buttons (capi:contain
               (make-instance
                'capi:radio-button-panel
                :title "Select a color:"
                :items '(:red :green :blue)
                :print-function 'string-capitalize
                :layout-class 'capi:column-layout)))|#
#|(THEMES
      ("thm1ach" "ta-Being the best" "spss-match" "thm1Ach" ("thm1Ach" "1" "thm1AchQ" "int" "Priority10" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "iLifeThemesAch.java"))
      ("thm3educ" "ta-Advanced degrees" "spss-match" "thm3Educ" ("thm3Educ" "3" "thm3EducQ" "int" "Priority10" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "iLifeThemesAch.java"))|#

#|(defparameter  Priority10AnswerArray    '(
                                            "The most important thing in my life" 
                                            "One of the most important things in my life" 
                                            "Extremely important"  "Very important" 
                                            "Moderately important"  "Mildly important" 
                                            "Not important, unsure, or neutral" 
                                            "Negative to me"  "Very negative to me" 
                                            "Extremely negative to me"))|#
#|(defparameter  Priority10   
    '(Priority10Instructions  10 
                              Priority10AnswerArray  Values10to1Array  "single"  "int"))|#
;;(defparameter Values10to1Array    '(10  9  8  7  6  5  4  3  2  1))


;;MAKE-QUESTION-FRAME (new single or multi-selection version)
;;
;;ddd 
(defun make-question-frame (qvar-string main-scale-sym 
                               &key (quest-num 1)  quest-frame)
  "In Frame-quest-functions.lisp.  Takes a qvar, gets a Q-VARLIST . Makes a frame and instance based upon that info. Determines the SELECTION-TYPE (:single-selection or :multiple-selection OR :question-function=> a function to run a special q-frame.)."
  ;;reset global variables
  (setf *qvar-category nil 
        *multi-selection-qvar-list nil)

  (let*
      ((qvar (my-make-symbol qvar-string))
       (selection-type) 
       (test-result)
       (qvar-list)
       (frame-name-text) 
       (label) (spss-match ) (java-var) 
       (q-num)  ;;not needed (old-q-name ) (data-type) 
       (answer-panel) 
      ;;not needed (array) (frame-title) ( fr-width) (fr-height) (java-file)
      (q-text-sym)
      (qvar-name-list)
       (fr-answer-panel-sym)
       (fr-answer-panel-deflist)
       (instrs)(deflist-selection-type) (num-answers) (answer-array) (values)
     ;;now an arg above (selection-type) 
       (data-type)  
       ;;reversed item or scoring?
       (reversed-item-p) 
       (item-norm-or-rev)
       (scored-reverse-p) 
       (nor-or-rev-scored)
       (pre-selected-num)
       (ans-instruction-text)
       (answer-array-list)
     ;;  (ans-instr-text)
       (q-frame-inst)
       ;;answer-button-layout -SPECIFIES SLOT NAME later in this function
     ;;  (scale-instr-text)
      (title-text) ;;for top-center title area
      (title-text-formated)
       (instruction-text) 
       (instr-text-formated)
       (question-text-list)
       (question-text-formated)
       (single-sel-test-list     (list 'single :single-selection "single""SINGLE"))
       (multi-sel-test-list   
           (list 'multiple 'multi "multiple" "MULTIPLE" :multiple-selection :multi-special-frame))
       ;;added bec warning
       (ans-values-list)
       (ans-text-list)
       (quest-data-list)
     ;;not needed    (ans-xdata-list)
       )
   ;; (afout 'out (format nil "BEGINNING MAKE-QUESTION-FRAME, for qvar= ~A~% "qvar ))
    ;;GATHER THE INFO NEEDED TO MAKE THE QUESTION FRAME
    ;;get the SCALE/SUBSCALE INFO
   ;;BBB  in make-question-frame   (find-qvar-selection-type qvar))
   
   (cond
    ;;test to qvar not nil
    (qvar
     (multiple-value-setq (selection-type test-result qvar-list)
         (find-qvar-selection-type qvar))
     ;;(afout 'out (format nil "IN MAKE-QUEST-FRAME, selection-type= ~A~%test-result= ~A~%qvar-list= ~A~% " selection-type test-result qvar-list))
     ;;test (find-qvar-selection-type 'stmajgpa)
     ;;test (find-qvar-selection-type 'family)
     ;;MMM in make-question-frame
     (setf frame-name-text "Success and Happiness Questionnaire (SHAQ) QUESTIONS"
           scale-instr-text "EXAMPLE>> Instructions: How IMPORTANT is this to you?")

     (cond
      ;;FOR SINGLE-SELECTION
      ((equal selection-type :single-selection )
       ;;find the QUESTION VARIABLE LIST and values for all items in it
       (multiple-value-setq (label  spss-match  java-var  q-num  q-text-sym  data-type  answer-panel ) ;;not needed array  frame-title   fr-width  fr-height  java-file)
           (get-quest-var-values qvar :qvar-list qvar-list :return-values-p t ))
 
       ;;replace q-num if quest-num key
       (if quest-num (setf q-num quest-num))     
       ;;reversed item??
       (multiple-value-setq (reversed-item-p item-norm-or-rev)
           (calc-is-quest-reversed qvar :answer-array answer-array))
       ;;(afout 'out (format nil "1 SINGLE-SEL CLAUSE:  label= ~A  spss-match= ~A  java-var= ~A~%  q-num= ~A  q-text-sym= ~A  data-type= ~A~%  answer-panel= ~A~%  array= ~A~%" label  spss-match  java-var  q-num  q-text-sym  data-type  answer-panel  array ))
    
       ;;GET  QUESTION TEXT,  TITLE-TEXT,  INSTRUCTION-TEXT
       (multiple-value-setq (q-text-sym question-text-list title-text instruction-text)
           (get-question-text qvar))
       (if (null question-text-list) (setf question-text-list ""))
       (if (null title-text) (setf title-text ""))
       (if (null instruction-text) (setf instruction-text ""))      
       ;;creates one string with newlines--CAN USE  :character-format A plist. AND :paragraph-format A plist. TO add lines betw paragraphs, etc.
       ;;end single-selection type
       )
      ;;FOR MULTIPLE-SELECTION
      ((equal selection-type :multiple-selection)
       ;;find the LIST OF QUESTION VARIABLE LISTS 
       ;;BBB  *multi-selection-qvar-list 
       (setf *qvar-category  qvar-string 
             *multi-selection-qvar-list 
             (get-multi-selection-quest-var-values qvar-string :qvar-list qvar-list ))
       ;; (afout 'out (format nil "*MULTI-SELECTION-QVAR-LIST= ~A~%" *multi-selection-qvar-list))
       (setf  q-text-sym (getf *multi-selection-qvar-list :primary-qvar-sym)
              qvar (my-make-symbol  (getf *multi-selection-qvar-list :primary-qvar-sym))
              label (getf *multi-selection-qvar-list :primary-qvar-label)
              ;; q-name (getf *multi-selection-qvar-list  :primary-qvar-sym
              title-text (getf *multi-selection-qvar-list :primary-title-text)
              instruction-text  (getf *multi-selection-qvar-list :primary-instr-text)
              question-text-list  (getf *multi-selection-qvar-list :quest-text-list)
              qvar-name-list  (getf *multi-selection-qvar-list    :ans-name-list)
              ans-text-list  (getf *multi-selection-qvar-list  :ans-text-list)
              quest-data-list  (getf *multi-selection-qvar-list :ans-data-list)
              num-answers  (getf *multi-selection-qvar-list  :num-answers)
              q-num quest-num
              ;;not needed     ans-xdata-list  (getf *multi-selection-qvar-list :ans-xdata-list)
              )
       (if  (null instruction-text) (setf instruction-text ""))
       (if (null question-text-list) (setf question-text-list '("")))
  
       ;;question number
       (if quest-num (setf pre-selected-num quest-num)
         (setf pre-selected-num (getf *multi-selection-qvar-list :qnum)))

       ;; HOW TO USE GET -- SEE SEIBEL
       ;;test (setf xx (list :a 1 :b 2))  (getf  xx :b)

       ;;for compatibility with vertical-buttons, single-selection, etc.REPLACE ABOVE?
       (setf ans-instruction-text "Select ALL that apply to you"
             answer-array-list ans-text-list
             ans-values-list  quest-data-list)
       ;;done above reversed-item-p nil) ;;was  scored-reverse nil) ;;why was this here?

       ;;(afout 'out (format nil "*multi-selection-qvar-list ~A~% answer-array-list= ~A~%" *multi-selection-qvar-list answer-array-list))

       ;;VARS ABOVE SHOULD INCLUDE/MATCH SINGLE-SELECTION VARS BELOW
       ;; (label  spss-match  java-var  q-num  q-text-sym  data-type  answer-panel  array  frame-title 
       ;;(q-text-sym question-text-list title-text instruction-text)            
       ;;note: *multi-selection-qvar-list = ( :qvar-category :primary-qvar-sym  :primary-qvar-label :primary-title-text :primary-instr-text :quest-text-list :q-spss-name :ans-name-list (SPSS VAR NAME each item) ans-text-list :num-answers  :primary-title-text :primary-instr-text :quest-text-list  :qnum  :data-type :ans-data-list  :primary-java-var :primary-spss-match :spss-match-list :java-var-list)      
       ;;from below also need (INSTRS num-answers ANSWER-ARRAY VALUES  selection-type data-type reversed-item-p scored-reverse-p pre-selected-num)      
       ;; (last '("bio4job" "b-Primary occupation" "spss-match" ("bio4job")("INSTRUCTIONS: Select ALL of the following best describe your primary OCCUPATION." "If you have multiple occupations, choose all of them.")  (  ) :MULTI-ITEM))
       ;;      (setf answer-array-list  ans-instruction-text ans-values-list 

       ;;end multiple-selection type
       )
      ;;kkkk FOR MULTI-SPECIAL-FRAME (calls special frames which already include all the info needed to display)
      ((equal selection-type :multi-special-frame)
       (setf special-frame-interface (ninth qvar-list))
       (capi:display (make-instance special-frame-interface))
       ;;goal (capi:display (make-instance 'frame-family-info))      
       )
      ((equal selection-type :question-function)
       (eval (eval test-result))  
       ;; (afout 'out  "PAST EVAL TEST-RESULT")
       )
      (t (format t "SELECTION-TYPE UNSPECIFIED")))

     ;;MAKE THE TEXT TO FILL IN FOR GENERAL SINGLE and MULTIPLE-SELECTION FRAMES
     (unless (member selection-type '( :question-function :multi-special-frame) :test 'equal)
       ;;FORMAT THE TITLE-TEXT, INSTR-TEXT, QUESTION-TEXT
       (setf  title-text-formated (format nil "~%~A" title-text)
              #| (format-string-list  (list title-text)
                                                    :add-top-lines 1 :add-newlines 1 :justify-type :left 
                                                    :line-width  (- *fr-visible-min-width 80)
                                                    :left-margin-spaces *title-text-left-margin-spaces)|#
              instr-text-formated  (format-string-list (list instruction-text)
                                                       :add-top-lines 1 :add-newlines 1 :justify-type :left 
                                                       :line-width  (- *fr-visible-min-width 80)
                                                       :left-margin-spaces *instr-text-left-margin-spaces)
              question-text-formated (format-question-text-list q-num question-text-list
                                                                :add-top-lines 2 :add-newlines 1
                                                                :justify-type :left
                                                                :left-margin-spaces *quest-text-left-margin-spaces
                                                                :line-width  *quest-text-width))
       ;;was        title-text (center-text title-text (- *fr-visible-min-width 80)))
         
       ;;GET THE FR-ANSWER-PANEL VARIABLES LIST (for single-selection only)
       (cond
        ((and label (member selection-type single-sel-test-list :test 'equal))
         (setf fr-answer-panel-sym (my-make-symbol answer-panel))
         (if  fr-answer-panel-sym
             (setf fr-answer-panel-deflist (eval fr-answer-panel-sym)))
         (if  fr-answer-panel-deflist
             (multiple-value-setq (INSTRS num-answers ANSWER-ARRAY VALUES 
                                          deflist-selection-type data-type reversed-item-p 
                                          scored-reverse-p pre-selected-num)
                 (get-answer-panel-keylist fr-answer-panel-deflist)))
         ;;(afout 'out (format nil "2 INSTRS= ~A~% num-answers= ~A~% ANSWER-ARRAY= ~A~% VALUES= ~A~% selection-type= ~A~% data-type= ~A~% reversed-item-p= ~A~% scored-reverse-p= ~A~% pre-selected-num= ~A~%" INSTRS num-answers ANSWER-ARRAY VALUES  selection-type data-type reversed-item-p scored-reverse-p pre-selected-num))

         ;;Use above vars to get INSTRUCTIONS, ANSWERS, VALUES, etc
         (setf answer-array-list (eval answer-array)
               ans-instruction-text (eval instrs)
               ans-values-list (eval values))
         ;;not needed?    ans-num-items (list-length answer-array-list))
         ;;added 2014-10, reads answer-panel sym--if contains "reverse" sets
         ;;   it to REVERSE-SCORED if not reverse to nil.
         #|  DONE ABOVE        (if answer-panel
              (setf reversed-item-p (calc-is-quest-reversed qvar answer-panel)))|#

         ;;end single-selection
         )
        ;;MULTIPLE-SELECTION VARS ALL FOUND ABOVE
        (t nil))

       ;;(afout 'out (format nil "3 question-text-list= ~A~% answer-array-list= ~A~%ans-instruction-text= ~A~%ans-values-list= ~A~%title-text-formated= ~A~%instr-text-formated= ~A~%question-text-formated= ~A~%"question-text-list  answer-array-list ans-instruction-text ans-values-list title-text-formated instr-text-formated question-text-formated))

       ;;MAKE ANSWER-BUTTON-PANEL and QUEST FRAME INSTANCE
       (cond
        ;;FOR SINGLE-SELECTION FRAMES
        ((equal selection-type :single-selection) ;;was (member selection-type single-sel-test-list  :test 'equal)
         ;;(afout 'out (format nil "PASSED single-selection test"))
         (setf *call-shaq-question-single-callback-p T
               *single-selection-item T)

         ;; MUST COME BEFORE INSTANCE DEFINED BECAUSE OF :BEFORE METHOD
         (make-answer-button-panel  ans-instruction-text answer-array-list 
                                    ans-values-list
                                    'answer-button-layout 'frame-quest-single-R-interface)

         (setf q-frame-inst (make-instance 'frame-quest-single-R-interface
                                           ;;args here
                                           :title frame-name-text
                                           ;;SSSS FIX THIS IF NOT GETTING Q-NUM IN *shaq-data-list
                                           :quest-num q-num ;;was pre-selected-num
                                           ))

         (capi:display q-frame-inst)
         ;;end single selection fill and display clause
         )

        ;;FOR MULTIPLE-SELECTION FRAMES
        ((equal selection-type :multiple-selection)
         ;;(afout 'out (format nil "FAILED single-selection test, selection-type= ~A~%" selection-type))
         (setf *call-shaq-question-multi-callback-p T
               *single-selection-item NIL)
         ;; (afout 'out (format nil "4 question-text-list= ~A~% answer-array-list= ~A~%ans-instruction-text= ~A~%ans-values-list= ~A~%title-text-formated= ~A~%instr-text-formated= ~A~%question-text-formated= ~A~%"question-text-list  answer-array-list ans-instruction-text ans-values-list title-text-formated instr-text-formated question-text-formated))

         ;;CHOICE OF FRAMES HERE 
         (cond 
          ((null quest-frame)
           (make-answer-button-panel  ans-instruction-text answer-array-list 
                                      ans-values-list
                                      'answer-button-layout 'frame-quest-multi-R-interface
                                      :selection-type 'multiple)
           (setf q-frame-inst (make-instance 'frame-quest-multi-R-interface
                                             ;;args here
                                             :title frame-name-text
                                             :quest-num pre-selected-num
                                             )))
          ;; eg. can use  'frame-TALL-quest-multi-R-interface
          (t
           (make-answer-button-panel  ans-instruction-text answer-array-list 
                                      ans-values-list
                                      'answer-button-layout quest-frame
                                      :selection-type 'multiple)

           (setf q-frame-inst (make-instance quest-frame
                                             ;;args here
                                             :title frame-name-text
                                             :quest-num pre-selected-num
                                             ))))

         ;;NOTE--MUST display BEFORE apply-in-pane-process
         (capi:display q-frame-inst)))
 

       ;;MODIFY THE Q-FRAME-INST CONTENTS
       (with-slots (title-rich-text-pane  instr-rich-text-pane 
                                         quest-rich-text-pane   
                                         go-frame-button previous-frame-button 
                                         button-row-layout 
                                         quest-ans-row-layout
                                         answer-button-layout)  q-frame-inst
         ;;1-SET THE TITLE, INSTR, and QUESTION PANE TEXT
         (capi:apply-in-pane-process title-rich-text-pane
                                     #'(setf capi:rich-text-pane-text) title-text-formated  title-rich-text-pane )
         (capi:apply-in-pane-process instr-rich-text-pane
                                     #'(setf capi:rich-text-pane-text) instr-text-formated  instr-rich-text-pane )
         (capi:apply-in-pane-process quest-rich-text-pane
                                     #'(setf capi:rich-text-pane-text) question-text-formated quest-rich-text-pane )
         ;;    (afout (format nil "1 (capi:simple-pane-visible-height 'answer-button-layout)= ~A" (capi:simple-pane-visible-height answer-button-layout)))

         ;;model  (setf (capi:choice-selected-item answer-button-panel) nil)
         ;;yyy
         ;;set *current-qvar to qvar and *current-qvar-list so can access to this info in callbacks
         (setf *current-qvar  qvar
               ;;can I use CAPI:LAYOUT-DESCRIPTION NIL (CAPI:LAYOUT) instead??
               ;; *current-button-panel answer-button-panel
               ;;BBB -add label moved q-num before num-answers
               *current-qvar-list (list qvar-string :single q-text-sym label  fr-answer-panel-sym q-num num-answers  item-norm-or-rev nor-or-rev-scored))
         #|    was          *current-qvar-list (list qvar-string :single q-text-sym label  fr-answer-panel-sym q-num num-answers  reversed-item-p scored-reverse-p))|#
      
         ;;display the frame-inst
         (capi:display q-frame-inst)
         ;;  (afout (format nil "2 (capi:simple-pane-visible-height 'answer-button-layout)= ~A" (capi:simple-pane-visible-height 'answer-button-layout)))
         ;;end with-slots
         )
       ;;end unless selection-type is :multi-special-frame  OR :question-function clause
       )
     ;;end qvar not nil clause
     )
    (t nil))
    q-frame-inst
    ;;end make-question-frame
    ))
;;(defparameter @SSS-TEST2 nil)
;;TEST
;;  (setf out nil)
;;  (make-question-frame "acmselfs" nil)
;;  (make-question-frame "acmstudy" nil)
;;  (make-question-frame "rangfeel" 'outcome)
;;  (make-question-frame "userrate" 'sUserFeedback )
;;  (make-question-frame "sFamily" 'sfamily)
;; (make-question-frame "stmajgpa" 'scale-sym ) 
;; (make-question-frame "bio4job" 'scale-sym )  :quest-frame 'frame-xtall-multi-answer-button-interface )
;; (make-question-frame "family" 'scale-sym )
;; (make-question-frame "bio7lang" 'scale-sym )
;; (make-question-frame "bio1ethn" 'scale-sym )
;; (make-question-frame "bio7lang" 'scale-sym )
;;  (make-question-frame "biorelaf" 'scale-sym )
 #| (defun goq5 ()  (progn (setf out nil) (setf *qfr4-inst (make-question-frame 'utype 'scale-sym   :quest-frame 'frame-xtall-multi-answer-button-interface ))))
  (defun goq4 ()  (progn (setf out nil) (setf *qfr4-inst (make-question-frame 'SCALESSEL 'scale-sym   :quest-frame 'frame-xtall-multi-answer-button-interface ))))|#
;;WORKS, appends *shaq-data-list with following:
;;CL-USER 11 > *shaq-data-list =  ((SCALESSEL :MULTI "scalessel" "Direct-scales-selected" 1 ("xhqonly" "1" 1 NIL 0 1 (:XDATA :SCALES (HQ))) ("xhq-acad" "2" 1 NIL 0 1 (:XDATA :SCALES (HQ ACAD-LEARNING))) ("xhq-acad" "3" 1 NIL 0 1 (:XDATA :SCALES (HQ ACAD-LEARNING))) ("xvalues-th" "4" 1 NIL 0 1 (:XDATA :SCALES (VALUES-THEMES))) ("xworldview" "5" 1 NIL 0 1 (:XDATA :SCALES ("sworldview" "sgrfears"))) ("xsel-f-bels" "6" 1 NIL 0 1 (:XDATA :SCALES ("stbslfwo" "swvgratent" "sethbel"))) ("xiecontrol" "7" 1 NIL 0 1 (:XDATA :SCALES ("siecontr"))) ("xselfconf" "8" 1 NIL 0 1 (:XDATA :SCALES ("sslfconf"))) ("xselfman" "9" 1 NIL 0 1 (:XDATA :SCALES ("sselfman"))) ("xemotcop" "10" 1 NIL 0 1 (:XDATA :SCALES ("semotcop"))) ("xinterpers" "11" 1 NIL 0 1 (:XDATA :SCALES (INTERPERSONAL))) ("xacadlearn" "12" 1 NIL 0 1 (:XDATA :SCALES (ACAD-LEARNING))) ("xcarint" "13" 1 NIL 0 1 (:XDATA :SCALES (CAREER-INTEREST))) ("xsehappy" "14" 1 NIL 0 1 (:XDATA :SCALES ("sehappy"))) ("xsehappy" "15" 1 T 1 1 (:XDATA :SCALES ("sehappy"))) ("xsrdepres" "16" 1 T 1 1 (:XDATA :SCALES ("srdepres"))) ("xsranxiet" "17" 1 T 1 1 (:XDATA :SCALES ("sranxiet"))) ("xsrangagg" "18" 1 T 1 1 (:XDATA :SCALES ("srangagg")))))
;; (defun goq3 ()   (progn (setf out nil) (setf *qfr3-inst (make-question-frame 'BIO4JOB 'scale-sym )))) ;;"CR1ISSUE"
;; (defun goq2 ()   (progn (setf out nil) (setf *qfr2-inst (make-question-frame "thm1ach" 'scale-sym "CR1ISSUE"))))
#|( JOB4JOB
      ("bio4job" "b-Primary occupation" "spss-match" ("bio4job")("INSTRUCTIONS: Select ALL of the following best describe your primary OCCUPATION." "If you have multiple occupations, choose all of them.")  (  ) :MULTI-ITEM)
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
      ("othrsfem" "12-othrsfem" "spss-match" (("Other self-employed")) ("other" "13-Other" "spss-match" ("Other")) ("bio5inco" "b-Highest personal income" "spss-match" ("bio5income")) (  ) :MULTI-ITEM)
      )|#

;;SINGLE-SELECTION
;; (defun goq ()   (progn (setf out nil) (setf *qfr1-inst  (make-question-frame "thm1ach" 'scale-sym "CR1ISSUE")))) ;; (fout out)))
;;  (progn (setf out nil)  (make-question-frame "CR1ISSUE" 'scale-sym ) (fout out))
;; *answer-button-layout-selected-values-list
;;  (slot-value *qfr1-inst 'selected-item-datalist)
;; results, both =  ("Extremely negative to me" 1 10 #<CAPI:RADIO-BUTTON "10" 2497A09F> NIL)
;; *SHAQ-DATA-LIST
;; result = (("thm1ach" :SINGLE "Extremely negative to me" "0.100" 1 10 #<CAPI:RADIO-BUTTON "10" 2497A09F> 1 SCORED-NORMAL ("thm1ach" :SINGLE THM1ACHQ "1" PRIORITY10 10 NIL NIL)))
;;test special single-selection answer list
;;  (make-question-frame "rpeCommi" nil) rhlWeight
;;  (make-question-frame "rhlWeight" nil)
;;MULTIPLE-SELECTION TEST
;;  (defun goqM ()   (progn (setf out nil) (setf *qfr1-inst  (make-question-frame "BIO4JOB" 'scale-sym "CR1ISSUE" :SELECTION-TYPE :MULTIPLE-SELECTION))))
;;  (GOQM), creates frame and if go, appends *shaq-data-list with (("BIO4JOB" :MULTI "bio4job" "b-Primary occupation" 3 ("student" "1" 1 T 1) ("manager" "2" 1 NIL 0) ("propeop" "3" 1 NIL 0) ("protech" "4" 1 T 1) ("consulta" "5" 1 NIL 0) ("educator" "6" 1 NIL 0) ("sales" "7" 1 NIL 0) ("technici" "8" 1 NIL 0) ("clerical" "9" 1 T 1) ("service" "10" 1 NIL 0) ("ownbus10" "11" 1 NIL 0) ("othrsfem" "12" 1 NIL 0)))
;;NOTE: FOLLOWING USE A DIFFERENT FRAME
;;  (defun goqM1 ()   (progn (setf out nil) (setf *qfr1-inst  (make-question-frame "UGOALS" 'scale-sym "CR1ISSUE" :SELECTION-TYPE :MULTIPLE-SELECTION :QUEST-FRAME 'frame-TALL-quest-multi-R-interface))))
;;;;  (GOQM1)
;;  (defun goqM2 ()   (progn (setf out nil) (setf *qfr1-inst  (make-question-frame "UTYPE" 'scale-sym "CR1ISSUE" :SELECTION-TYPE :MULTIPLE-SELECTION :QUEST-FRAME 'frame-TALL-quest-multi-R-interface))))
;;;;  (GOQM2)
;;
;;other tests
;;;; works  (setf (slot-value *mb-testinst 'selected-item-datalist) '(SLOT-TEST))
;; (capi:simple-pane-visible-height 'answer-button-layout)
;;  *answer-button-layout-A-selected-values-list
;;  (CAPI::SIMPLE-PANE-VISIBLE-WIDTH   )



;;FIND-QUEST-SELECTION-TYPE
;;
;;ddd
(defun find-qvar-selection-type (qvar &key (return-qvar-list T) 
                                      (data-list *SHAQ-question-variable-lists))
  "In Frame-quest-functions, RETURNS (values selection-type test-result qvar-list), selection-type is either :SINGLE-SELECTION , :MULTIPLE-SELECTION, or :MULTI-SPECIAL-FRAME. test result is either the selection-type  or NIL if no qvar-list found.  IF QVAR calls for a special function to run it, then it should return :QUESTION-FUNCTION as type and the function call quoted as its test-result. IF selection-type is  :MULTI-SPECIAL-FUNCTION, test-result is the symbol for the special frame interface. NOTE: In multi sel qvars returns entire list of all answers ."
  (let*
      ((qvar-list (get-qvar-list qvar)) ;;for multi-selection, ONLY GETS FIRST PART OF LIST
  ;;(get-qvar-list "ugoals")
       (selection-type)
       (test-result)
       )
    ;;(afout 'out (format nil "IN find-qvar-selection-type, qvar-list= ~A~%" qvar-list))
    (cond
     ((> (list-length qvar-list) 7)
      (setf selection-type (eighth  qvar-list))
      (cond
       ((equal selection-type :multi-item) 
        (setf selection-type :multiple-selection
              test-result :multiple-selection))
       ;;kkkk     ;;added 2014-11:multi-special-frame
       ((equal selection-type  :multi-special-frame)
        (setf selection-type :multi-special-frame
              test-result (ninth qvar-list)))           
       ((setf test-result (member :question-function qvar-list :test 'equal))
        (setf test-result (ninth qvar-list)
              selection-type :question-function))
       (t nil))
      ;;end list-length > 7 clause
      )
     (T
      (setf selection-type :single-selection
            test-result :single-selection)))
    ;;to return the full multi-selection list -- returns NIL for single-selection
    (if (member selection-type '(:multiple-selection :question-function) :test 'equal)
        (setf qvar-list (get-key-list qvar data-list)))
  ;;works (get-key-list 'ugoals *SHAQ-question-variable-lists)
    ;;(afout 'out (format nil "SELECTION-TYPE= ~A~%" selection-type))
    (values selection-type test-result qvar-list)
    ;;end let, find-qvar-selection-type
    ))
;; (get-qvar-list 'bio7lang)
;; (get-qvar-list 'ugoals)
;;TEST
;;  (find-qvar-selection-type 'bio7lang)
;;  (find-qvar-selection-type 'stmajgpa) = :SINGLE-SELECTION   :SINGLE-SELECTION    ("stmajgpa" "st-Major GPA" "spss-match" NIL ("stuMajorGPA" 10 "stumajorgpaq" "int" GPA8ANSARRAY "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "StudentBasicData.java") (:HELP NA NA))
;;  (find-qvar-selection-type 'STURESOURCE)
;;   (find-qvar-selection-type 'family) =  :QUESTION-FUNCTION   (QUOTE (RUN-FRAME-FAMILY-INFO))    (FAMILY ("family" "famConstellation" NIL NIL NIL (HELP NA NA) NIL :QUESTION-FUNCTION (QUOTE (RUN-FRAME-FAMILY-INFO))) ("OlderBrN" "NumOlderBros" NIL NIL (:HELP NA NA)) ("OlderSisN" "NumOlderSis" NIL NIL (:HELP NA NA)) ("YoungBrN" "NumYoungrBros" NIL NIL (:HELP NA NA)) ("YoungSisN" "NumYoungrSis" NIL NIL (:HELP NA NA)) ("Raised2Parents" "Raised by 2 Parents" NIL NIL (:HELP NA NA)) ("SingleMparent" "RaisedBySingleMale" NIL NIL (:HELP NA NA)) ("SingleFparent" "RaisedBySingleFemale" NIL NIL (:HELP NA NA)) ("RaisedNoParents" "RaisedByNoParents" NIL NIL (:HELP NA NA)) ("RaisedOther" "RaisedOther" NIL NIL (:HELP NA NA)))
;;    ;;test (find-qvar-selection-type 'bio7lang)
;;  (find-qvar-selection-type "bio1ethn")
;; (find-qvar-selection-type 'bio4job):MULTIPLE-SELECTION :MULTIPLE-SELECTION     (BIO4JOB ("bio4job" "b-Primary occupation" "spss-match" ("bio4job") (:QUEST ("Select ALL of the following that best describe your primary OCCUPATION." "If you have multiple occupations, choose all of them.") :TITLE ("YOUR OCCUPATION")) (:HELP NA NA) NIL :MULTI-ITEM) ("student" "1-Student" "spss-match" ("Student") NIL (:HELP NA NA) :MULTI-ITEM) ("manager" "2-Manager" "spss-match" ("Manager/executive") NIL (:HELP NA NA) :MULTI-ITEM) ("propeop" "3-People professional" "spss-match" NIL NIL (:HELP NA NA) :MULTI-ITEM) ("protech" "4-Technical professional" "spss-match" ("Technician") NIL (:HELP NA NA) :MULTI-ITEM) ("consulta" "5-Consultant" NIL ("Consultant") NIL (:HELP NA NA) :MULTI-ITEM) ("educator" "6-Educator" "spss-match" ("Educator") NIL (:HELP NA NA) :MULTI-ITEM) ("sales" "7-Sales" "spss-match" ("Sales") NIL (:HELP NA NA) :MULTI-ITEM) ("technici" "8-Other technical" "spss-match" ("Technician") NIL (:HELP NA NA) :MULTI-ITEM) ("clerical" "9-Clerical" "spss-match" ("Clerical") NIL (:HELP NA NA) :MULTI-ITEM) ("service" "10-Service" "spss-match" ("Service") NIL (:HELP NA NA) :MULTI-ITEM) ("ownbus10" "11-Own business" "spss-match" ("Own business +10 employees") NIL (:HELP NA NA) :MULTI-ITEM) ("othrsfem" "12-other occupation" "spss-match" (("Other self-employed")) ("other" "13-Other" "spss-match" ("Other")) (:HELP NA NA) ("bio5inco" "b-Highest personal income" "spss-match" ("bio5income")) NIL :MULTI-ITEM))
;; (find-qvar-selection-type "rangdest") =  :SINGLE-SELECTION  :SINGLE-SELECTION PLUS THE QVAR-LIST
;;(setf test-multiX (get-qvar-list 'bio4job))  =  ("bio4job" "b-Primary occupation" "spss-match" ("bio4job") (:QUEST ("Select ALL of the following that best describe your primary OCCUPATION." "If you have multiple occupations, choose all of them.") :TITLE ("YOUR OCCUPATION")) (:HELP NA NA) NIL :MULTI-ITEM)     "bio4job"
;; STUCOLLE  "lrnwrpap" "rangdest"
;; (setf test-singleX (get-qvar-list  'lrnwrpap))  =  ("lrnwrpap" "la-A's on term papers" "spss-match" "lrnWRITEskills" ("lrnWRITEskills" "4" "lrnWRITEskillsQ" "int" "LikeMe7" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "bsLearningAreas.java") (:HELP NA NA))   "lrnwrpap"
;;
;;Find the selection-type
;; (member :multi-item test-singleX :test 'equal) = nil
;;  (member :multi-item test-multiX :test 'equal) = (:MULTI-ITEM)










;;(defparameter @TEST-CALLBACK NIL)
;;APPENDED-MY-VERTICAL-BUTTON-PANEL-CALLBACK
;;
;;ddd
(defun append-my-vertical-button-panel-single-selection-callback (item-selected  interface)
  "Appends the callback built into make-my-vertical-button-panel in U-capi-buttons-etc.lisp.  WAS  In Frame-quest-functions.lisp, Main single-selection callback, converts and records data from the selection. NOTE: capi returns values 0 to (n - 1) in reverse order of my scheme. Therefore I use (- n (+ item-selected-data 1)) for normally scored items and (+ item-selected-data 1) for REV scored items. The integer scores are after these adjustments have been made. Appends *shaq-data-list with (list qvar-string :single selected-text relative-score adjusted-int-score  num-answers item-selected  selected-data nor-or-rev-scored)"
  (with-slots (selected-item-datalist) interface  ;;was *current-button-panel
    ;;selected-item-datalist = (list selected-text selected-data selected-n[begins with 1]  selected-button-instance last-button-on-top-p)
    (multiple-value-bind (selected-text selected-data 
                                      selected-n selected-button-instance  last-button-on-top-p)  
        (values-list selected-item-datalist)

    (let*
        ((reverse-the-score-p) ;;if needed later set this to a real outside variable such as last-button-on-top-p.   scored-reverse-p below is from questions that already are using ans-value-arrays that have reverse scores already built in.
      ;;    (item-selected-name (capi:item-text item-selected))
      ;;    (item-selected-data (my-make-symbol (capi:item-data item-selected)))
;;eg:  *current-qvar-list = (list qvar-string :single q-text-sym label  fr-answer-panel-sym q-num num-answers  reversed-item-p scored-reverse-p))
        ;;BBB first, second, etc in *current-qvar-list in append-my-vertical-button-panel-single-selection-callback
         (qvar *current-qvar)
         (qvar-string (first *current-qvar-list))
         (q-type (second *current-qvar-list))
         (q-text-sym (third *current-qvar-list))
         (q-label (fourth *current-qvar-list))
         (q-num (slot-value interface 'quest-num))   ;;was (fourth *current-qvar-list))
         (answer-panel-sym (fifth *current-qvar-list))
         (num-answers (seventh  *current-qvar-list))
         ;;yyyy
         (item-norm-or-rev (eighth *current-qvar-list))
         (nor-or-rev-scored (ninth *current-qvar-list))
         (reversed-item-p) ;;was(eighth *current-qvar-list))
         (scored-reverse-p) ;;was (ninth *current-qvar-list))
      ;;   (item-selected  (capi:choice-selection answer-button-panel))
      ;;use global vars from 
         (item-data-list)
         (adjusted-int-score)
         (relative-score)
         (nor-or-rev-scored ) 
         (ans-data-list)
         (result)
         )
      (when (equal item-norm-or-rev 'REVERSED-ITEM)
        (setf reversed-item-p  'REVERSED-ITEM))
      (when (equal nor-or-rev-scored 'SCORED-REVERSE)
        (setf scored-reverse-p 'SCORED-REVERSE))
 ;; (setf out1 (format nil "selected-text= ~A~% selected-data= ~A~%"selected-text selected-data))
      ;;yyy
      (cond
       ;;item-selected NOT NIL from being reset 
       (item-selected
        (cond
         ((equal q-type :single) 
          (cond
           ((numberp selected-data)
            (cond
             ;;NOTE: APPARENTLY ALL scored-reverse-p ITEMS USE ANS-VALUES-ARRAYS THAT ARE ALREADY IN REVERSE ORDER, SO NO ADJUSTMENT IS NEEDED HERE. FOR scored-reverse-p.  HOWEVER, I INCLUDED A NEW VARIABLE REVERSE-THE-SCORE-P IN CASE IT IS LATER NEEDED.
             ((null reverse-the-score-p)
              (setf adjusted-int-score (+ selected-data)))                 
             (t (setf adjusted-int-score (- num-answers selected-data))))

            ;;is it scored normal or reverse? Info for the user and data collection only
           (cond 
            ((null REVERSED-ITEM-P)
             (setf  nor-or-rev-scored 'scored-normal))
            (t (setf nor-or-rev-scored 'scored-reverse)))

          ;;calc the relative-score
          (setf relative-score (/  adjusted-int-score  (* 1.0 num-answers)))

          ;;SSS use a different converter than format or $??
          (setf relative-score  (format nil "~3$" relative-score))
          ;;end numberp
          )
          (t (format T "ANSWER DATA IS NOT A NUMBER= ~A" selected-data)))

          ;;IN ANY CASE, MAKE/APPEND THE DATA LISTS
          ;;BBB MMM  (setf ans-data-list (list qvar-string :single  selected-text relative-score  IN append-my-vertical-button-panel-single-selection-callback
          (setf ans-data-list (list qvar-string q-label :single  selected-text relative-score adjusted-int-score q-num num-answers  ;;replaced with q-label item-selected  
                                    selected-data nor-or-rev-scored answer-panel-sym))
          (setf item-data-list  ans-data-list 
                *shaq-data-list (append *shaq-data-list (list item-data-list))
                result ans-data-list)

#|    WAS      (setf item-data-list (append  ans-data-list (list *current-qvar-list))
                *shaq-data-list (append *shaq-data-list (list item-data-list))
                result ans-data-list)  |#

          ;;POKES SHAQ-process-manager running *shaq-main-process to continue (run next frame)
        ;;not needed?? or better here? gives no choice!  (capi:destroy interface)
          (mp:process-poke *shaq-main-process)
          ;;end single-selection-clause
          )
         (t (setf  
             result  "ERROR: QUESTION IS NOT OF :SINGLE SELECTION TYPE"
             *shaq-data-list (append *shaq-data-list (list qvar nil result)))))
        ;;end item-selected clause
        )
       (t (format nil "SELECTED ITEM IS NIL")))
      ;;(afout 'out (format nil "AFTER SINGLE-SELECTION-CALLBACK, ~% item-data-list= ~A" item-data-list))
      ;;Note: fout out here doesn't report previous frame right--but it's ok in *shaq-data-list
      ;;(fout out)
      (setf *question-frame-results-list result)
      result
      ;;end let*, with-slots, multiple-value-bind, append-my-vertical-button-panel-single-selection-callback
      ))))



;;SINGLE-SELECTION-CALLBACK -- works pretty well, but needs some debugging
;; NO LONGER USED? REPLACED BY CALLBACK IN MAKE-VERTICAL-BUTTON-PANEL
;;ddd
(defun single-selection-callback (item-selected  interface)
  "In Frame-quest-functions.lisp, Main single-selection callback, converts and records data from the selection. NOTE: capi returns values 0 to (n - 1) in reverse order of my scheme. Therefore I use (- n (+ item-selected-data 1)) for normally scored items and (+ item-selected-data 1) for REV scored items. The integer scores are after these adjustments have been made. Appends *shaq-data-list with (list qvar-string :single relative-score adjusted-int-score  num-answers item-selected  item-selected-data nor-or-rev-scored)"
  (with-slots (answer-button-panel ) interface  ;;was *current-button-panel
    (let*
        (
         ;;item-selected-list-name
#|         (global-selected-values-list (my-make-symbol 
                                     (format nil "*~A-selected-values-list" parent-layout-name))))|#
         ;;BBB
          (item-selected-name (capi:item-text item-selected))
          (item-selected-data (my-make-symbol (capi:item-data item-selected)))
         (qvar *current-qvar)
         (qvar-string (first *current-qvar-list))
         (q-type (second *current-qvar-list))
         (q-text-sym (third *current-qvar-list))
         (q-num (slot-value interface 'quest-num))  ;;was (fourth *current-qvar-list))
         (answer-panel-sym (fifth *current-qvar-list))
         (num-answers (sixth  *current-qvar-list))
         (item-norm-or-rev (eighth *current-qvar-list))
         (nor-or-rev-scored (ninth *current-qvar-list))
         (reversed-item-p (calc-is-quest-reversed answer-panel-sym)) ;;was(eighth *current-qvar-list))
         (scored-reverse-p) ;;was (ninth *current-qvar-list))
      ;;   (item-selected  (capi:choice-selection answer-button-panel))
      ;;use global vars from 
         (item-data-list)
         (adjusted-int-score)
         (relative-score)
         (nor-or-rev-scored ) 
         (ans-data-list)
         (result)
         )

       (if reversed-item-p
        (setf  item-norm-or-rev 'SCORED-REVERSE))

 ;; (setf out1 (format nil "item-selected-name= ~A~% item-selected-data= ~A~%"item-selected-name item-selected-data))
      ;;yyy
      (cond
       ;;item-selected NOT NIL from being reset 
       (item-selected
        (cond
         ((equal q-type :single) 
          (cond
           ((numberp item-selected-data)
          (cond
;;("rhlfreqi" :SINGLE RHLFREQIQ "1" FREQ7REVERSE 7 T NIL 
         ;; ("rhlfreqi" "1.000" 7 7 "More than 60 days per year" SCORED-NORMAL))
           ((null scored-reverse-p)
            (setf adjusted-int-score (- num-answers item-selected-data)
                  nor-or-rev-scored 'normally-scored))
           (t (setf adjusted-int-score (+ item-selected-data)
                  nor-or-rev-scored 'reverse-scored)))
            ;;was 
          ;;calc the relative-score
          (setf relative-score (/  adjusted-int-score  (* 1.0 num-answers)))

          ;;SSS use a different converter than format or $??
          (setf relative-score  (format nil "~3$" relative-score))
          ;;end numberp
          )
          (t nil))

          (setf ans-data-list (list qvar-string :single relative-score adjusted-int-score  num-answers item-selected  item-selected-data item-norm-or-rev nor-or-rev-scored q-num))

          ;;*current-qvar-list = (qvar :single q-text-sym q-num fr-answer-panel-sym num-answers  reversed-item-p scored-reverse-p)
          (setf item-data-list (append *current-qvar-list (list ans-data-list))
                *shaq-data-list (append *shaq-data-list (list item-data-list))
                result ans-data-list)  

          ;;POKES SHAQ-process-manager running *shaq-main-process to continue (run next frame)
          (capi:destroy interface)
          (mp:process-poke *shaq-main-process)
          ;;end single-selection-clause
          )
         (t (setf result  "ERROR: QUESTION IS NOT OF :SINGLE SELECTION TYPE"
                  *shaq-data-list (append *shaq-data-list (list qvar nil result)))))
        ;;end item-selected clause
        )
       (t (format nil "SELECTED ITEM IS NIL")))
      ;;(afout 'out (format nil "AFTER SINGLE-SELECTION-CALLBACK, ~% item-data-list= ~A" item-data-list))
      ;;Note: fout out here doesn't report previous frame right--but it's ok in *shaq-data-list
      ;;(fout out)
      (setf *question-frame-results-list result)
      result
      ;;end with-slots, let*, single-selection-callback
      )))
;;

#|(defun test ()
  (let ((panel (make-instance 'capi:radio-button-panel :items '("He" "She" "They"))))
    (setf (capi:choice-item-selected panel) nil)
    (capi:contain panel)))|#


;;("rhlfreqi" :SINGLE RHLFREQIQ "1" FREQ7REVERSE 7 T NIL ("rhlfreqi" "1.000" 7 7 "More than 60 days per year" SCORED-NORMAL))

#|
(("thm14ind" :SINGLE THM14INDQ "14" PRIORITY10 10 NIL NIL ("thm14ind" "1.000" 10 10 "The most important thing in my life" SCORED-NORMAL)) ("smtfutur" :SINGLE SMTFUTURQ "2" LIKEME7 7 NIL NIL ("smtfutur" "1.000" 7 7 "EXTREMELY accurate / like me" SCORED-NORMAL)) ("cr1issue" :SINGLE CR1ISSUEQ "1" LIKEUS7 7 NIL NIL ("cr1issue" "1.000" 7 7 "EXTREMELY accurate / like us" SCORED-NORMAL)) ("rhlfreqi" :SINGLE RHLFREQIQ "1" FREQ7REVERSE 7 T NIL ("rhlfreqi" "1.000" 7 7 "More than 60 days per year" SCORED-NORMAL)))
|#
#|
(defun show-callback-args-and-selection-INTEGER  (arg1 arg2)
  (let
      ((item-selected)
       )
    (setf item-selected (capi:choice-selection example-button-panel))
  ;;(afout 'out (format nil "ARG1= ~S, ARG2= ~S~%ITEM-SELECTED= ~A~%" arg1 arg2 item-selected))
  (fout out)
  ))
(defun testbp ()
  (let ((x)  ;;(example-button-panel)
        )
        (setf example-button-panel
         (make-instance 'capi:radio-button-panel
    :items '("Radio 1" "Radio 2" "Radio 3" "Radio 4")
    :callback-type :data-interface
    :selection-callback 'show-callback-args-and-selection-INTEGER
                                   ;;was ;; 'show-callback-args ;; 'button-selection-callback
  ;;  :extend-callback    'button-extend-callback
   ;; :retract-callback   'button-retract-callback
                        :title "Push Me"
                       ;; :callback 'show-callback-args
                      ;;  :data "Here is some data"
                      ;;  :callback-type :data-interface
                        ))
        (capi:contain example-button-panel)
        ))|#



;;MAKE-ANSWER-BUTTON-PANEL
;;
;;ddd
(defun make-answer-button-panel (ans-instruction-text  answer-array-list 
                                                    answer-value-list  qa-parent-row-layout  interface
                                                       &key (selection-type 'single) 
                                                       (close-interface-on-selection-p t)
                                                       background 
                                                       font-size)
  "In Frame-quest-functions.lisp, Uses  make-my-vertical-button-panel from U-capi-buttons-etc.lisp. Can modify several inner parameters to change appearance, keep frame after selection, etc."
  (let
      ((button-text-title ans-instruction-text)
       (answer-array-list1  `(quote ,answer-array-list))
       (answer-value-list1  `(quote ,answer-value-list))
       ) 
    (unless background
      (setf background *answer-pane-background))
    (unless font-size
        (setf font-size  *answer-pane-font-size))

    (setf out5 (format nil "answer-array-list1= ~A~% answer-value-list1= ~A~%qa-parent-row-layout=~A~% interface= ~A"answer-array-list1  answer-value-list1 qa-parent-row-layout interface))
    (make-my-vertical-button-panel qa-parent-row-layout
                                   interface
                                   answer-array-list1  
                                   answer-value-list1
                                   :selection-type selection-type
                                   :close-interface-on-selection-p close-interface-on-selection-p
                                   :last-button-on-top-p NIL
                                   ;;debug if wanted :send-datalist-to-instance-slot '(list *mb-testinst 'selection-datalist)
                                   :button-layout-arglist  `(list
                                                                   :visible-max-width 20
                                                                   :visible-min-width 20                                                                                                              :visible-min-height 500
                                                                   ;;*answer-pane-height ;;300
                                                                   :background ,background
                                                                   :title "  ";;controls button position
                                                                   :title-gap 0  ;;no effect?
                                                                   ;;no effect    :x 0  :y 0
                                                                        :internal-border 0 ;;important
                                                                        :border nil
                                                                        :title-adjust :center
                                                                        :title-font (gp:make-font-description 
                                                                                    ;; :family *answer-pane-font-face
                                                                                     :weight :bold  :slant :italic
                                                                                     :size ,font-size)       
                                                                        )
                                   :button-arglist    `(list                     
                                                             :title " " ;;adjust left gap within button area
                                                             :title-gap 0  ;;gap betw end of title and button
                                                             :background ,background
                                                             :internal-border 0 ;;no effect??
                                                             :visible-max-width 25
                                                             :visible-min-width 25
                                                         ;;was    :visible-min-height   *button-text-pane-height ;;25?
                                                            ;;was :external-max-height  *button-text-pane-height
;;*button-text-pane-height
                                                             :font nil
                                                             )
                                   :button-text-pane-arglist
                                    `(list
                                      ;;didn't help     :WINDOW-STYLES (list :always-on-top)
                                           :background  ,background
                                           :internal-border nil
                                           :visible-min-width (- *answer-pane-width 65)
                                     ;;was      :visible-min-height  *button-text-pane-height
                                      ;;was     :visible-max-height *button-text-pane-height
                                           ;;  :external-max-height 30
                                           ;;SSS SHOULD THIS BE A RICH-TEXT-PANE CHARLIST
                                           :font   (gp:make-font-description 
                                                  ;;  :family *answer-pane-font-face
                                                    :weight :normal :size ,font-size)
                                           )
                                   :button-text-layout-arglist
                                   `(list
                                    ;;didn't help  :WINDOW-STYLES (list :always-on-top)
                                     :background  ,background
                                     :internal-border nil
                                     :visible-min-width (- *answer-pane-width 60)
                                     :visible-min-height   *answer-pane-height
                                     :visible-max-height  *answer-pane-height
                                     ;;  :visible-max-height 30
                                     :title ,button-text-title
                                     :title-position  :center
                                    :title-font   (gp:make-font-description 
                                                   ;; :family *answer-pane-font-face
                                                    :weight :bold
                                                    :slant :italic :size ,font-size)
                                     )
                                   ;;end make-my-verticalbutton-panel
                                   )
                                 
   ;;(capi:display (setf *ma-testinst (make-instance 'make-answer-button-panel-interface)))  
    ;;end make-answer-button-panel
    ))
;;TEST
;;  (capi:display (setf *ma-testinst (make-answer-button-panel))) 
;;  (defun goab () (progn (setf out nil)  (make-answer-button-panel "INSTRUCTIONS"  '("XXX" "YYY" "ZZZ") '(1000 100 10) 'quest-ans-row-layout  'make-answer-button-panel-interface)))
;;  *quest-ans-row-layout-selected-values-list
;;  (slot-value *ma-testinst 'item-selected-datalist)
;; both of above work = ("XXX" 1000 1 #<CAPI:RADIO-BUTTON "1" 21EC26B3> NIL)

;;MAKE-DOUBLE-ANSWER-BUTTON-PANEL
;;
;;ddd
;;VERY COMPLEX--DOESN'T WORK.  TRIED USING 2 SEPARATE CALLBACKS, BEFORE METHODS ETC.  IF DO AGAIN, USE ONE OF EACH AND ONLY CHANGE THE BUTTONS TO PUT 2 BUTTONS, TEXT, ETC ON EACH BUTTON-TEXT ROW.
#|(defun make-double-answer-button-panel (ans-instruction-text1  answer-array-list1 
                                                    answer-value-list1  parent-row-layout1 
                                                    ans-instruction-text2  answer-array-list2 
                                                    answer-value-list2  parent-row-layout2 
                                                    interface
                                                       &key (selection-type 'single) 
                                                       (close-interface-on-selection-p t)
                                                       last-button-on-top-p
                                                       background
                                                       font-size)

  "In Frame-quest-functions.lisp, Uses  make-my-vertical-button-panel from U-capi-buttons-etc.lisp. Can modify several inner parameters to change appearance, keep frame after selection, etc."
  (let
      ((button-text-title ans-instruction-text1) ;;only one title right now for both sides
     ;;  (button-text-title2 ans-instruction-text2)
  ;;     (answer-array-list1  `(quote ,answer-array-list))
   ;;    (answer-value-list1  `(quote ,answer-value-list))
       ) 
    (unless background
      (setf background *answer-pane-background))
    (unless font-size
        (setf font-size *answer-pane-font-size))

    (setf out5 (format nil "answer-array-list1= ~A~% answer-value-list1= ~A~%parent-row-layout1=~A~%"answer-array-list1  answer-value-list1 parent-row-layout1))
    (make-my-double-vertical-button-panel 
                  parent-row-layout1 parent-row-layout2  interface
                                   answer-array-list1  answer-value-list1
                                   answer-array-list2  answer-value-list2
                                   :selection-type selection-type
                                   :close-interface-on-selection-p close-interface-on-selection-p
                                   :last-button-on-top-p last-button-on-top-p            
                                   :button-layout-arglist  `(list
                                                                   :visible-max-width 20
                                                                   :visible-min-width 20                                                                                                              :visible-min-height *answer-pane-height ;;300
                                                                   :background ,background
                                                                   :title "  ";;controls button position
                                                                   :title-gap 0  ;;no effect?
                                                                   ;;no effect    :x 0  :y 0
                                                                        :internal-border 0 ;;important
                                                                        :border nil
                                                                        :title-adjust :center
                                                                        :title-font (gp:make-font-description 
                                                                                    ;; :family *answer-pane-font-face
                                                                                     :weight :bold  :slant :italic
                                                                                     :size ,font-size)       
                                                                        )
                                   :button-arglist    `(list                     
                                                             :title " " ;;adjust left gap within button area
                                                             :title-gap 0  ;;gap betw end of title and button
                                                             :background ,background
                                                             :internal-border 0 ;;no effect??
                                                             :visible-max-width 25
                                                             :visible-min-width 25
                                                             :visible-min-height *button-text-pane-height ;;25?
                                                             :external-max-height *button-text-pane-height
                                                             :font nil
                                                             )
                                   :button-text-pane-arglist
                                    `(list
                                      ;;didn't help     :WINDOW-STYLES (list :always-on-top)
                                           :background  ,background
                                           :internal-border nil
                                           :visible-min-width (- *answer-pane-width 65)
                                           :visible-min-height *button-text-pane-height
                                           :visible-max-height *button-text-pane-height
                                           ;;  :external-max-height 30
                                           ;;SSS SHOULD THIS BE A RICH-TEXT-PANE CHARLIST
                                           :font   (gp:make-font-description 
                                                    ;; :family *answer-pane-font-face
                                                    :weight :normal :size ,font-size)
                                           )
                                   :button-text-layout-arglist
                                   `(list
                                    ;;didn't help  :WINDOW-STYLES (list :always-on-top)
                                     :background  ,background
                                     :internal-border nil
                                     :visible-min-width (- *answer-pane-width 60)
                                     :visible-min-height  *answer-pane-height
                                     :visible-max-height *answer-pane-height
                                     ;;  :visible-max-height 30
                                     :title ,button-text-title
                                     :title-position  :center
                                    :title-font   (gp:make-font-description 
                                                    ;; :family *answer-pane-font-face
                                                    :weight :bold
                                                    :slant :italic :size ,font-size)
                                     )
                                   ;;end call to make-double-vertical-button-panel
                                   )
    ;;end let, make-double-answer-button-panel
    ))|#

;;MAKE-ANSWER-BUTTON-PANEL-INTERFACE
;;
;;
;;ddd
(capi:define-interface make-answer-button-panel-interface ()
    ;;sets the button/item data values
    ((selected-item-datalist                                     ;;was (data :initform (list 1 2 3))
      :initarg :name
      :accessor selection-datalist
      :initform nil
      :documentation "Store selected button-result list")
     )
    (:layouts
     (quest-ans-row-layout
      capi:row-layout
      ()
      :background *answer-pane-background
      :visible-min-width (- *fr-visible-min-width 40)
      :visible-min-height  *answer-pane-height
      )
     )
    (:default-initargs
     :title "TEST MY INTERFACE"
     :visible-min-width *fr-visible-min-width
     :visible-min-height *fr-visible-min-height
     :background background
     :internal-border *fr-internal-border
     ))




;;MAKE-RADIO-BUTTON-PANEL
;;
;;ddd
(defun make-radio-button-panel (ans-instruction-text answer-array-list)
  "This version works, but according to LW may not be entirely portable bec of using choice selection to begin all buttons with unselected."
  (make-instance 'capi:radio-button-panel
                 :items answer-array-list
                 ;;'(1 2 3 4 5 6 7 8 9 10 11) 
                 :layout-class 'capi:column-layout
                 :layout-args (list :adjust :center :x 25 :y 25
                                    :y-gap *answer-panel-y-gap
                                    :x-gap 20                                                                       
                                    :internal-border 25)
                 :font (gp:make-font-description 
                        ;; :family *answer-pane-font-face
                        :weight :normal  :size *answer-font-size)
                 :visible-border T
                 :visible-min-height *answer-pane-height
                 :visible-max-height *answer-pane-height
                 :visible-min-width *answer-pane-width
                 ;; :visible-max-width *answer-pane-width
                 :background *answer-pane-background
                ;; :selected-items nil  ;; :none
                 :title ans-instruction-text 
                 :title-adjust  :left
                 ;;   :title-args
                 :title-font (gp:make-font-description 
                              ;; :family *answer-pane-font-face
                              :weight :normal  :size *answer-font-size)
                 :title-gap 15
                 :title-position :top
                 :mnemonics nil         ;;only works for each item'(:none)
                 :callback-type :data-interface
                ;; :selected nil                 
                ;;doesn't work capi:choice-selected-item nil  must use setf outside init-args
                 ;;:selection :none  ;;:nothing works
                 :selection-callback 'single-selection-callback
                 )
  )
#|(defun make-radio-button-panel (ans-instruction-text answer-array-list)
  (make-instance 'capi:radio-button-panel
                 :items answer-array-list
                 ;;'(1 2 3 4 5 6 7 8 9 10 11) 
                 :layout-class 'capi:column-layout
                 :layout-args (list :adjust :center :x 25 :y 25
                                    :y-gap *answer-panel-y-gap
                                    :x-gap 20                                                                       
                                    :internal-border 25)
                 :font (gp:make-font-description 
                        ;; :family *answer-pane-font-face
                        :weight :normal  :size *answer-font-size)
                 :visible-border T
                 :visible-min-height *answer-pane-height
                 :visible-max-height *answer-pane-height
                 :visible-min-width *answer-pane-width
                 ;; :visible-max-width *answer-pane-width
                 :background *answer-pane-background
                ;; :selected-items nil  ;; :none
                 :title ans-instruction-text 
                 :title-adjust  :left
                 ;;   :title-args
                 :title-font (gp:make-font-description 
                              ;; :family *answer-pane-font-face
                              :weight :normal  :size *answer-font-size)
                 :title-gap 15
                 :title-position :top
                 :mnemonics nil         ;;only works for each item'(:none)
                 :callback-type :data-interface
                ;;doesn't work capi:choice-selected-item nil  must use setf outside init-args
                 ;;:selection :none  ;;:nothing works
                 :selection-callback 'single-selection-callback
                 )
  )|#

(defun make-check-button-panel (ans-instruction-text answer-array-list)
  (make-instance 'capi:check-button-panel
                 :items answer-array-list
                 ;;'(1 2 3 4 5 6 7 8 9 10 11) 
                 :layout-class 'capi:column-layout
                 :layout-args (list :adjust :center :x 25 :y 25
                                    :y-gap *answer-panel-y-gap
                                    :x-gap 20                                                                       
                                    :internal-border 25)
                 :font (gp:make-font-description 
                        ;; :family *answer-pane-font-face
                        :weight :normal  :size *answer-font-size)
                 :visible-border T
                 :visible-min-height *answer-pane-height
                 :visible-max-height *answer-pane-height
                 :visible-min-width *answer-pane-width
                 ;; :visible-max-width *answer-pane-width
                 :background *answer-pane-background
                ;; :selected-items nil  ;; :none
                 :title ans-instruction-text 
                 :title-adjust  :left
                 ;;   :title-args
                 :title-font (gp:make-font-description 
                              ;; :family *answer-pane-font-face
                              :weight :normal  :size *answer-font-size)
                 :title-gap 15
                 :title-position :top
                 :mnemonics nil         ;;only works for each item'(:none)
                 :callback-type :data-interface
                ;;doesn't work capi:choice-selected-item nil  must use setf outside init-args
                 ;;:selection :none  ;;:nothing works
                 :selection-callback 'multiple-selection-callback
                 )
  )

;;FORMAT-QUESTION-TEXT-LIST
;;      
;;ddd
(defun format-question-text-list (q-num question-text-list 
                                   &key add-newlines add-top-lines justify-type line-width
                                   left-margin-spaces
                                   )
  (let
      ((first-string)
       (new-first-string)
       (new-question-text-list)
       )
    (setf first-string (first question-text-list)
          new-first-string (format nil "~A. ~A" q-num first-string)
          new-question-text-list (replace-list question-text-list 0 new-first-string))

    (format-string-list  new-question-text-list :add-top-lines 2 :add-newlines 1 :justify-type :left :line-width  *quest-text-width :left-margin-spaces left-margin-spaces)
    ))
;;test
;;  (format-question-text 3 '("question part-one" "question part 2"))
;; works,= ("3. question part-one" "question part 2")    
;;  (format nil "~vA" 10  #\space)
;;current in make-question-frame
#|    (setf question-text-formated (format-question-text q-num question-text-list
                                                       :add-top-lines 2 :add-newlines 1
                                                       :justify-type :left :line-width  *quest-text-width)
          title-text (center-text title-text (- *fr-visible-min-width 80)))|#

;;(defparameter @SSS-callback nil)
 ;; MODIFY THIS FUNCTION, THEN TEST
;;MULTIPLE-SELECTION-CALLBACK
;;
;;ddd
(defun go-multiple-selection-callback (data interface)
  "In Frame-quest-functions.lisp, Main multi-selection callback, converts and records data from the selection on *shaq-data-list. Multiple-selection items are simply recorded as the text answer in most or all cases in both lists of  1=checked 0=not-checked plus a list of the texts of checked items. RETURNS *question-frame-results-list form = Eg. (BIO4JOB :MULTI \"bio4job\" \"b-Primary occupation\" 1 (\"student\" \"1\" 1 T 1) (\"manager\" \"2\" 1 NIL 0) -- Each sublist is the spss var name, the button-num, the value if selected, selected T or NIL, data= 0 or 1, q-num"
  (with-slots (answer-button-layout) interface
    (let*
        ((selected-items-list)
         (button-layout)
         (button-list)
         (num-buttons)
         ;;information about the qvar/question information from shaq database
         ;;set in the :before method
         #|(setf *multi-selection-qvar-list
            (get-multi-selection-quest-var-values 'bio4job))|#
         ;;(afout 'out (format nil "*multi-selection-qvar-list= ~A~%" *multi-selection-qvar-list))

         ;;get the PRIMARY QVAR INFO
         (q-text-sym (getf *multi-selection-qvar-list :primary-qvar-sym))
         (qvar (my-make-symbol  (getf *multi-selection-qvar-list :primary-qvar-sym)))
         (label (getf *multi-selection-qvar-list :primary-qvar-label))
         ;; (q-name (getf *multi-selection-qvar-list  :primary-qvar-sym))
         #|  not used         ( title-text (getf *multi-selection-qvar-list :primary-title-text))
            (instruction-text  (getf *multi-selection-qvar-list :primary-instr-text))|#
         (q-num (slot-value interface 'quest-num)) 
         ;;was  (car (slot-value interface 'quest-num)))
         ;;old (getf *multi-selection-qvar-list :qnum))
         ;;the lists related to each answer item = the spss variable items (scores 0 or 1)
         (question-text-list  (getf *multi-selection-qvar-list :quest-text-list))
         (qvar-name-list  (getf *multi-selection-qvar-list    :ans-name-list))
         (ans-text-list  (getf *multi-selection-qvar-list  :ans-text-list))
         ;;not needed, in ans-xdata-lists (quest-data-list  (getf *multi-selection-qvar-list :ans-data-list))
         (num-answers  (getf *multi-selection-qvar-list  :num-answers))
         (ans-xdata-lists  (getf *multi-selection-qvar-list :ans-xdata-lists))
         (multi-ans-data-list 
          (list *qvar-category :multi q-text-sym label q-num))  
         (sel-value)
         (data)
         (ans-num)
         (q-text)
         (qvar-name)
         (ans-text)
         (quest-data) 
         #|  (item-data-list)
         (adjusted-int-score)
         (relative-score)
         (nor-or-rev-scored ) 
         (ans-data-list)|#
         ;;use
         )
      ;;RESET *question-frame-results-list
      (setf *question-frame-results-list nil)

      (cond
       ;;make sure qvar not nil
       (qvar
        ;;get the button-list from its parent layout which is in parent answer-button-layout
        (setf button-layout (car (capi:layout-description answer-button-layout))
              button-list (capi:layout-description button-layout)
              num-buttons (list-length button-list))
        ;;note: num-buttons should equal num-answers above
        (unless (= num-answers num-buttons)
          (format T "ERROR: NUM-ANSWERS= ~A NOT EQUAL NUM-BUTTONS= ~A~%" num-answers num-buttons))

        ;;check result of each button
        (loop
         for button in button-list
         for button-n from 0 to (- num-buttons 1)
         for answer-n from 1 to num-buttons
         for ans-xdata-list in ans-xdata-lists
         ;;not needed, xdata in ans-xdata-list       with qvar-data-item
         do
         ;;get the INTERFACE  button info
         (setf sel-value (capi:item-selected button) ;;nil or T
               data (capi:item-data button)  ;; the value of the button if selected = 1   
               ;;include for checking data purposes
               ans-num (capi:item-text button) ;;eg "3"
               ;;get the qvar info from SHAQ DATA BASE
               ;;not needed?  q-text (nth button-n question-text-list)
               qvar-name (nth button-n qvar-name-list)   ;; spss string name
               ;;not needed?  ans-text (nth button-n ans-text-list)
               ;; quest-data (nth button-n quest-data-list)  ;;set at 0, but never changed
               )
         ;;set quest-data here--this is value sent to spss var qvar-name
         (if sel-value (setf quest-data 1)
           (setf quest-data 0))

         ;;NEW find the eg. (:DATA :scales (HQ)) list, last item in qvar list,
         ;;         if not exist set to NIL
         (setf qvar-data-item  (last (get-qvar-list  qvar-name))) ;;was car
         #|       (unless (equal (car qvar-data-item) :DATA)
         (setf qvar-data-item nil))   |#    
        
         ;;MMM   ;;MAKE THE NEW DATA LISTS  --  
         (setf multi-ans-data-list
               (append multi-ans-data-list 
                       (list (list qvar-name ans-num data sel-value quest-data 
                                   q-num  ans-xdata-list))))  ;;qvar-data-item was next to end
         ;;end loop
         )
        ;;append *shaq-data-list -- which accumulates ALL test results data JJJ
        (setf *shaq-data-list (append *shaq-data-list 
                                      (list :multi-sel-quest q-text-sym  multi-ans-data-list))
              *question-frame-results-list    multi-ans-data-list)
        ;;append *shaq-scaledata-list
        (setf *shaq-scaledata-list 
              (append *shaq-scaledata-list 
                      (list :multi-sel-quest  q-text-sym multi-ans-data-list))) ;;qvar-name outside loop
        ;;end qvar not nil clause
        )
       (t nil))

      ;;use somehow if score some multi-choice items ???
      #|   (cond
;;("rhlfreqi" :SINGLE RHLFREQIQ "1" FREQ7REVERSE 7 T NIL 
         ;; ("rhlfreqi" "1.000" 7 7 "More than 60 days per year" SCORED-NORMAL))
           ((null scored-reverse-p)
            (setf adjusted-int-score (- num-answers selected-item)
                  nor-or-rev-scored 'scored-normal))
           (t (setf adjusted-int-score (+ selected-item 1)
                  nor-or-rev-scored ''scored-reverse)))
            ;;was 
          ;;calc the relative-score
          (setf relative-score (/  adjusted-int-score  (* 1.0 num-answers)))
          ;;SSS use a different converter than format or $??
          (setf relative-score  (format nil "~3$" relative-score)
                ans-data-list (list qvar-string relative-score adjusted-int-score  num-answers item-slected-name nor-or-rev-scored))
          ;;end part used for scoring
          |#

      ;;POKES SHAQ-process-manager running *shaq-main-process to continue (run next frame)
      (capi:destroy interface)
      (mp:process-poke *shaq-main-process)
     
      *question-frame-results-list
      ;;end with-slots, let*, go-multiple-selection-callback
      )))
;;TEST
;;works
#|CL-USER 75 > *question-frame-results-list
(BIO4JOB :MULTI "bio4job" "b-Primary occupation" 1 ("student" "1" 1 T 1) ("manager" "2" 1 NIL 0) ("propeop" "3" 1 T 1) ("protech" "4" 1 NIL 0) ("consulta" "5" 1 T 1) ("educator" "6" 1 NIL 0) ("sales" "7" 1 T 1) ("technici" "8" 1 NIL 0) ("clerical" "9" 1 T 1) ("service" "10" 1 NIL 0) ("ownbus10" "11" 1 T 1) ("othrsfem" "12" 1 NIL 0))
|#
     
;;PREVIOUS-QUEST-FRAME-CALLBACK
;;
;;ddd
(defun previous-quest-frame-callback (interface)
  "In Frame-quest-functions, provides signal for main work function to select previous frame"
  (setf  *shaq-data-list (butlast *shaq-data-list)
          *question-frame-results-list (list 'go-previous-frame))
  (if (member (car (last *shaq-data-list))
              '(:scale :subscale :multi-sel-quest) :test 'equal)
        (setf  *shaq-data-list (butlast *shaq-data-list)))

          ;;POKES SHAQ-process-manager running *shaq-main-process to continue (run next frame)
          (capi:destroy interface)
          (mp:process-poke *shaq-main-process)
  )


;;GET-ANSWER-PANEL-KEYLIST
;;
;;ddd
(defun get-answer-panel-keylist (answer-panel-deflist &key return-keylist-p)
  "In Fr-answer-panel.lisp.  Note: just evaluating the answer-panel-deflist SYMBOL provides the list. This function just separates out the various items in the list."
  (let
      ((deflist-length (list-length answer-panel-deflist))
       (instrs)
       (num-answers)
       (answers)
       (values)
       (selection-type) ;;single or multiple ?
       (data-type)  ;;always int?
       (reversed-item-p)   ;; MEANS NEEDS TO BE REVERSE SCORED
       (scored-reverse-p)  ;; MEANS WAS SCORED REVERSE BY ARRAY
       (pre-selected-num)  ;; an integer of pre-selected answer
       )
    ;;the reversed-item-p and scored-reverse-p below are meaningless in shaq 
    ;; instead go by whether the array has "reverse" in it (calc-is-quest-reverse-scored)
    (multiple-value-setq (instrs num-answers answers values selection-type data-type
                                 reversed-item-p scored-reverse-p pre-selected-num) 
        (values-list  answer-panel-deflist))
    (cond
     (return-keylist-p   ;;was :instrs instrs
      (list :instrs instrs :num-answers num-answers :answers answers :values values
            :selection-type selection-type :data-type data-type
                                 :reversed-item-p reversed-item-p :scored-reverse-p scored-reverse-p 
                                 :pre-selected-num pre-selected-num))
     (t  (values instrs num-answers answers values selection-type data-type
                                 reversed-item-p scored-reverse-p pre-selected-num)))
    ))
;;test
;; (get-answer-panel-keylist Agree7Reverse)
;; works = AGREE7INSTRUCTIONS  7 AGREE7ANSWERARRAY VALUES1TO7ARRAY "single" "int" T NIL NIL
;; (make-answer-panel-keylist Agree7Reverse :return-keylist-p t)
;;  works = (:INSTRS AGREE7INSTRUCTIONS :NUM-ANSWERS 7 :ANSWERS AGREE7ANSWERARRAY :VALUES VALUES1TO7ARRAY :SELECTION-TYPE "single" :DATA-TYPE "int" :REVERSED-ITEM-P T :SCORED-REVERSE-P NIL :PRE-SELECTED-NUM NIL)
     ;;for l(String answerInstructions1,    int numResponsesPerQuestion1, String[] answerTextArray1,    int[] intAnswerValueArray1,  String choiceType1, String valueType1) 
     


;;USE TO FIND COLOR NAMES:
;;  (color:apropos-color-names "RED") ;;USE BASE COLOR -- HERE "RED"
;;  (color:apropos-color-names "pink") :lightsteelblue3
;;  (color:apropos-color-names "yellow") :lightyellow
;;ggg --------------------------------- global variables ---------------------;;
;;
;;copied from frame-questions.lisp
;;(defun set-global-question-variables ()
  ;;for capi
  ;;misc global vars -- MOVED TO CONFIG-VARS.LISP
#|(defparameter  *shaq-data-list nil "data list of lists= (qvar :single q-text-sym q-num fr-answer-panel-sym num-answers  reversed-item-p scored-reverse-p ans-data-list) ans-data-list= (relval selected-item num-answers scored-reverse-p) or (mult-ans-list)")
(defparameter  *current-qvar nil "used to pass info to callbacks from SHAQ-manager")
(defparameter  *current-qvar-list nil "(qvar :single q-text-sym q-num fr-answer-panel-sym num-answers  reversed-item-p scored-reverse-p)")
(defparameter  *call-shaq-question-single-callback-p nil "causes the make-vertical-button-panel callback function to call the shaq append-my-vertical-button-panel-single-selection-callback")
(defparameter  *call-shaq-question-multi-callback-p nil "causes the make-vertical-button-panel callback function to call the shaq append-my-vertical-button-panel-multi-selection-callback")|#

  ;;Interface args
(defparameter  *initial-x 20)
(defparameter  *initial-y 0)
(defparameter *visible-border-p T)
(defparameter *fr-internal-border 20)
(defparameter  *external-border 20)
(defparameter *internal-border-width 25)
(defparameter *fr-visible-min-width  1100) 
(defparameter *fr-visible-min-height 720)   ;; error :maximize)
(defparameter *fr-border-color :red)
(defparameter  *frame-title  "Success and Happiness Attributes Questionnaire (SHAQ) QUESTIONS")
(defparameter *shaq-frame-title  "SHAQ CARES-Computer Assessment and Referral System" "Used on some intro frames?")

  ;;for multi-selection questions
(defparameter *default-multi-choice-title "MULTIPLE-SELECTION QUESTION"     
                                          "primary-title-text default text")
(defparameter  *default-multi-choice-instr "Select ALL that apply to you"
    "primary-instr-text default text")
(defparameter  *current-multi-selection-qnum 0)
  ;;pane args
  ;;title-rich-text-pane
(defparameter *title-pane-height 40)
(defparameter *title-pane-width nil)
(defparameter *title-text-left-margin-spaces 20)
(defparameter *title-pane-font-face nil)
(defparameter *title-pane-font-size 14)
(defparameter *title-pane-font-color  :red )
(defparameter *title-pane-pane-background :LIGHTYELLOW )
(defparameter *title-area-text (format nil "Question scale description goes here."))
  ;;title-pane fonts SSS CREATE  FONT DESCRIPTIONS HERE INSTEAD? 
#|(defparameter *title-pane-char-format '(:face "times new roman" :size 18
                                          :color :red :bold T :slant :roman  :underline nil ))
(defparameter *title-pane-parag-format   '(:alignment :center  ;; :left :right 
                                             :offset-indent 20 :tab-stops nil   ;;eg  (10 20 10)
                                             :numbering nil  ;;OR :bullet, :arabic, :lowercase,:uppercase, :lower-roman or :upper-roman.
                                             ;;  :start-indent 5
                                             ;;  :relative-indent 1.0  ;;relative indent for rest of paragraphs
                                             ))   |#
  ;;instr-rich-text-pane
(defparameter *instr-pane-height 70)
(defparameter *instr-pane-width nil)
(defparameter *instr-text-left-margin-spaces 7)
(defparameter *instr-text-width (- *fr-visible-min-width 40))
(defparameter *instr-pane-background :LIGHT-BLUE  )  
(defparameter *instr-pane-font-face nil)
(defparameter *instr-pane-font-size 12)
(defparameter *instr-pane-font-color  :black )
(defparameter *instr-area-text (format nil "Question instructions text goes here."))

  ;;quest-rich-text-pane
(defparameter *quest-pane-height nil) ;;  460)
(defparameter *quest-pane-width 430)
(defparameter *quest-text-width (- *quest-pane-width 20))
(defparameter *quest-text-left-margin-spaces 0)
(defparameter *quest-pane-background  :LIGHT-BLUE)  
(defparameter *quest-pane-font-face nil)
(defparameter *quest-pane-font-size 12)
(defparameter *quest-pane-font-weight nil) ;;or :bold 
(defparameter *quest-pane-font-color  :black )
(defparameter *quest-area-text (format nil "~%~%Question areas text goes here."))

  ;;answer-button-panel
(defparameter *answer-pane-height  *quest-pane-height)
(defparameter *answer-pane-width 470)
(defparameter *answer-pane-background  :yellow)  
(defparameter *answer-pane-font-face nil)
(defparameter *answer-pane-font-size 11)
(defparameter *answer-pane-font-color :black)
(defparameter *answer-panel-y-gap 10)
(defparameter *answer-font-family nil) 
(defparameter *answer-font-size 11)
(defparameter *max-ans-text-line-length 66 "Max length of answer text line--leads to second line if longer and increased pane height")
(defparameter *button-text-pane-height 22  "Determines height of each button-text-item row")
  ;; (defparameter *answer-area-text (format nil "~%~%ANSWER areas text goes here."))

  ;;button-panel
(defparameter *button-panel-background :red)  
(defparameter *button-pane-height  40)
(defparameter *button-pane-width 940)
 ;; (defparameter *button-pane-font-size 14)
 ;; (defparameter *button-pane-font-color :black)
(defparameter *button-panel-visible-border nil)  ;; to keep from prob w/ red border?
  ;;to change color (setf (capi:simple-pane-foreground self) color))

  ;;buttons (types of panes) ;;yyy
  ;;go-frame-button
(defparameter  *go-frame-button-background :red)
(defparameter  *go-frame-button-foreground :green)  
(defparameter *go-frame-button-text "         GO to NEXT Question >>>       ")
(defparameter *go-frame-button-width  330)
(defparameter  *go-frame-button-height  30)
(defparameter  *go-frame-button-x nil)
(defparameter *go-frame-button-y  nil)
(defparameter *go-frame-button-font  (gp:make-font-description :family "times new roman" :size 14 :weight  :bold :slant :italic  :underline nil )) ;;:size  13 :color :black
(defparameter *help-font (gp:make-font-description :family "times new roman" :size 12 :weight  :bold)) ;; :slant :italic  :underline nil )
  ;; :family :weight :slant  :underline :strikeout :width  :orientation :charset :w-family
  ;;  (gp:make-font-description :size  13 );; :color :red  :weight :bold :face "times new roman":slant :roman  :underline nil))

  ;;previous-frame-button
(defparameter  *previous-frame-button-background :green)
(defparameter *previous-frame-button-text "   <<  GO to PREVIOUS Question    ")
(defparameter *previous-frame-button-width  180)
(defparameter  *previous-frame-button-height  20)
(defparameter  *previous-frame-button-x 50)
(defparameter *previous-frame-button-y  10)
(defparameter *previous-frame-button-font (gp:make-font-description :family "times new roman" :size 10 :weight  :bold :slant :roman  :underline nil ))
                       ;;     :size  11 :color :black  :bold T :underline nil ))

  ;;exit-shaq-button
(defparameter  *exit-shaq-button-background :red)
(defparameter *exit-shaq-button-text " EXIT ALL of SHAQ ")
(defparameter *exit-shaq-button-width  100)
(defparameter  *exit-shaq-button-height  30)
(defparameter  *exit-shaq-button-x 120)
(defparameter *exit-shaq-button-y  10)
(defparameter *exit-shaq-button-font(gp:make-font-description :family "times new roman" :size 10 :weight  :bold :slant :roman  :underline nil )) ;;  :color 

;;yyy
   ;;left-button-filler-pane
(defparameter *left-button-filler-pane-width 50)
  ;;end set-global-question-variables

;;  )



;;FRAME-QUEST-SINGLE-R-INTERFACE
;;
;;ddd
;;
(capi:define-interface frame-quest-single-R-interface ()
  ((selected-item-datalist
    :initarg :selected-item-datalist
    :accessor selected-item-datalist
    :initform nil
    :type :list
    :documentation "Data from selected item")
  (quest-num
    :initarg :quest-num
    :accessor quest-num
    :initform nil
    :type  :integer
    :documentation "Question number")
  )
  (:PANES
   ;;TITLE-RICH-TEXT-PANE xxx
   (title-rich-text-pane
    capi:rich-text-pane
    :character-format (list ;; :face *title-pane-font-face
                            :size  *title-pane-font-size 
                            :color *title-pane-font-color
                            :bold T :italic nil :underline nil )
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
 ;;text done elsewhere  :text *title-area-text 
  ;;doesn't work :y 10
    )
   ;;INSTR-RICH-TEXT-PANE
   (instr-rich-text-pane
    capi:rich-text-pane
    :character-format  (list ;; :face *instr-pane-font-face 
                             :size  *instr-pane-font-size  
                             :color *instr-pane-font-color
                             :bold nil :italic nil :underline nil )
    :paragraph-format '(:alignment :center  ;; :left :right
                         :start-indent 20
                       :offset-indent 20
                        ;;  :relative-indent 1.0  ;;relative indent for rest of paragraphs
                        :tab-stops  '(5 10 15 20)
                        :numbering nil 
                        ;;OR :bullet, :arabic, :lowercase,:uppercase, :lower-roman or :upper-roman.
                        )
    :visible-border T
    :internal-border 8
    :visible-min-height *instr-pane-height :visible-max-height *instr-pane-height
    :external-min-width *instr-pane-width ;; :external-max-width *instr-pane-width
 ;;   :foreground *instr-pane-foreground 
    :background *instr-pane-background
 ;;text done elsewhere   :text  (format nil "~%   ~A  " *instr-area-text)
    )

   ;;QUESTION-RICH-TEXT-PANE xxx
   (quest-rich-text-pane
    capi:rich-text-pane
    :character-format (list  ;; :face *quest-pane-font-face
                            :size *quest-pane-font-size
                            :color *quest-pane-font-color
                            :bold *quest-pane-font-weight
                           :italic nil  :underline nil )
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
  ;;  :visible-min-height *quest-pane-height :visible-max-height *quest-pane-height
    :visible-min-width *quest-pane-width ;; :visible-max-width *quest-pane-width
;;    :foreground *quest-pane-foreground 
    :background *quest-pane-background
 ;;   :text *quest-area-text 
    )
#|   (answer-button-panel
    capi:radio-button-panel
    )|#
   (previous-frame-button
    capi:push-button
    :background *previous-frame-button-background
    :text  *previous-frame-button-text
    :internal-min-width  *previous-frame-button-width
    :internal-min-height  *previous-frame-button-height
    :default-x *previous-frame-button-x
    :default-y *previous-frame-button-y
    :font  *previous-frame-button-font
    :callback 'previous-quest-frame-callback
    :callback-type :interface
    ;;was (gp:make-font-description :size *button-font-size  :weight :bold) ;; :slant :italic)
    ;;doesn't work    :character-format *title-pane-char-format
    ;;doesn't work?    :x 20   :y 20
    )
   ;;end panes
   )
   
  (:layouts
   ;;overall, column layout, 5 rows.
   (column-layout-1
    capi:column-layout ;; capi:grid-layout
    '(row-layout-1 row-layout-2 button-row-layout  quest-ans-row-layout) 
    )
   ;;first row --title text
   (row-layout-1
    capi:row-layout
    '(title-rich-text-pane)
    ;;  :visible-min-height *title-pane-height
    )   
   ;;second row --instructions text
   (row-layout-2
    capi:row-layout
    '(instr-rich-text-pane )
    ;;   :visible-min-height *instructions-pane-height
    )  
   ;;third row -- push buttons
   (button-row-layout
    capi:row-layout
     '(previous-frame-button) ;;  go-frame-button)    ;;left-button-filler-pane
  ;;  :visible-border *button-panel-visible-border
    :background *button-panel-background 
    :visible-min-height (- *button-pane-height 10)
    :visible-min-width *button-pane-width
    ;;  :x-adjust :center
    :y-adjust :center
 ;;    :x-ratios '(1.0   1.5)
   ;; :x-gap 400
    :visible-border nil
   )
   ;;fourth row -- question text and answer buttons/text
   ;;QUEST-ANS-ROW-LAYOUT
   (quest-ans-row-layout
    capi:row-layout
    '( quest-rich-text-pane  answer-button-layout) ;;was answer-button-panel)
    ;;   :visible-min-height *info-pane-height
    ;;  :background *fr-border-color
  ;;  :visible-min-height *answer-pane-height
  ;;  :visible-max-height *answer-pane-height
 ;;   :visible-min-width  (- *fr-visible-min-width (* 2 *fr-internal-border)) ;; :visiblel-max-width *answer-pane-width
    :background  *answer-pane-background
    ) 
  (answer-button-layout
    capi:row-layout
    ()
    :internal-border 10
    :background *answer-pane-background
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
   )
  )



;;FRAME-QUEST-MULTI-R-INTERFACE
;;
;;ddd
(capi:define-interface frame-quest-multi-R-interface ()
  ((selected-item-datalist
    :initarg :selected-item-datalist
    :accessor selected-item-datalist
    :initform nil
    :type :list
    :documentation "Data from selected item")
  (quest-num
    :initarg :quest-num
    :accessor quest-num
    :initform nil
    :type :list
    :documentation "Question number")
  )
  (:PANES
   ;;TITLE-RICH-TEXT-PANE
   (title-rich-text-pane
    capi:rich-text-pane
    :character-format (list ;; ;;:face *title-pane-font-face
                            :size *title-pane-font-size 
                           :color *title-pane-font-color 
                            :bold T :italic nil  :underline nil )
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
 ;;text done elsewhere  :text *title-area-text 
  ;;doesn't work :y 10
    )
   ;;INSTR-RICH-TEXT-PANE
   (instr-rich-text-pane
    capi:rich-text-pane
    :character-format  (list ;;:face *instr-pane-font-face 
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
    :visible-min-height *instr-pane-height :visible-max-height *instr-pane-height
    :external-min-width *instr-pane-width ;; :external-max-width *instr-pane-width
 ;;   :foreground *instr-pane-foreground 
    :background *instr-pane-background
 ;;text done elsewhere   :text  (format nil "~%   ~A  " *instr-area-text)
    )

   ;;QUESTION-RICH-TEXT-PANE xxx
   (quest-rich-text-pane
    capi:rich-text-pane
    :character-format (list ;;:face *quest-pane-font-face
                            :size *quest-pane-font-size
                            :color *quest-pane-font-color
                            :bold *quest-pane-font-weight
                           :italic nil :underline nil )
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
  ;;  :visible-min-height *quest-pane-height :visible-max-height *quest-pane-height
    :visible-min-width *quest-pane-width ;; :visible-max-width *quest-pane-width
;;    :foreground *quest-pane-foreground 
    :background *quest-pane-background
 ;;   :text *quest-area-text 
    )
   (go-frame-button
    capi:push-button
    :background *go-frame-button-background
    :foreground *go-frame-button-foreground
    :text  *go-frame-button-text
    :internal-min-width  *go-frame-button-width
    :internal-max-width  *go-frame-button-width
    :internal-min-height  *go-frame-button-height
    :internal-max-height  *go-frame-button-height
    :external-min-width  (+ *go-frame-button-width 10)
    ;; :external-max-width  *go-frame-button-width
    :external-min-height  (+ *go-frame-button-height 20)  ;;was 10
    ;;  :external-max-height  *go-frame-button-height   
    :default-x *go-frame-button-x
    :default-y *go-frame-button-y
    :font  *go-frame-button-font 
    ;;   :color-requirements 
  ;;   :selected T
    :default-p T  ;;means if return hit, selects this button
    :callback 'go-multiple-selection-callback
    ;;    :callback-type :interface
    ;;was (gp:make-font-description :size *button-font-size  :weight :bold) ;; :slant :italic)
    ;;doesn't work    :character-format *title-pane-char-format
    ;;doesn't work?    :x 20   :y 20
    ;; :button-group
    )
   (previous-frame-button
    capi:push-button
    :background *previous-frame-button-background
    :text  *previous-frame-button-text
    :internal-min-width  *previous-frame-button-width
    :internal-min-height  *previous-frame-button-height
    :default-x *previous-frame-button-x
    :default-y *previous-frame-button-y
    :font  *previous-frame-button-font
    :callback 'previous-quest-frame-callback
    :callback-type :interface
    ;;was (gp:make-font-description :size *button-font-size  :weight :bold) ;; :slant :italic)
    ;;doesn't work    :character-format *title-pane-char-format
    ;;doesn't work?    :x 20   :y 20
    )
   ;;end panes
   )
   
  (:layouts
   ;;overall, column layout, 5 rows.
   (column-layout-1
    capi:column-layout ;; capi:grid-layout
    '(row-layout-1 row-layout-2 button-row-layout  quest-ans-row-layout) 
    )
   ;;first row --title text
   (row-layout-1
    capi:row-layout
    '(title-rich-text-pane)
    ;;  :visible-min-height *title-pane-height
    )   
   ;;second row --instructions text
   (row-layout-2
    capi:row-layout
    '(instr-rich-text-pane )
    ;;   :visible-min-height *instructions-pane-height
    )  
 ;;AAA
   ;;third row -- push buttons
   (button-row-layout
    capi:row-layout
     '(previous-frame-button  go-frame-button)    ;;left-button-filler-pane
  ;;  :visible-border *button-panel-visible-border
    :background *button-panel-background 
    :visible-min-height  *button-pane-height
    :visible-min-width *button-pane-width
    ;;  :x-adjust :center
    :y-adjust :center
 ;;    :x-ratios '(1.0   1.5)
    :x-gap 450
    :visible-border nil
   )
   ;;fourth row -- question text and answer buttons/text
   ;;QUEST-ANS-ROW-LAYOUT
   (quest-ans-row-layout
    capi:row-layout
    '(quest-rich-text-pane answer-button-layout) 
    ;;   :visible-min-height *info-pane-height
    ;;  :background *fr-border-color
  ;;  :visible-min-height *answer-pane-height
  ;;  :visible-max-height *answer-pane-height
 ;;   :visible-min-width  (- *fr-visible-min-width (* 2 *fr-internal-border)) ;; :visiblel-max-width *answer-pane-width
  ;;  :background  *answer-pane-background
    ) 
  (answer-button-layout
    capi:row-layout
    ()
   :internal-border 10
    :background *answer-pane-background
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

   ;;end frame-quest-multi-R-interface
   ))
;;TEST
;;  (defun testmf3 () (let ((testmf3 (make-instance 'frame-quest-multi-R-interface))) (capi:display testmf3)))




;;FRAME-TALL-QUEST-MULTI-R-INTERFACE
;;
;; for use with make-question-function for TALL/MORE ANSWERS
;;
;;ddd
(capi:define-interface frame-TALL-quest-multi-R-interface ()
  ((selected-item-datalist
    :initarg :selected-item-datalist
    :accessor selected-item-datalist
    :initform nil
    :type :list
    :documentation "Data from selected item")
   (quest-num
    :initarg :quest-num
    :accessor quest-num
    :initform nil
    :type :list
    :documentation "Question number")
   )
  (:PANES
   ;;TITLE-RICH-TEXT-PANE
   (title-rich-text-pane
    capi:rich-text-pane
    :character-format (list ;; ;;:face *title-pane-font-face
                            :size *title-pane-font-size 
                           :color *title-pane-font-color 
                            :bold T :italic nil :underline nil )
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
    :visible-min-height (* 2 *title-pane-height)
    :visible-max-height (* 2 *title-pane-height)
;;    :external-min-width (* 0.5 *title-pane-width) ;; :external-max-width *title-pane-width
;;    :foreground *title-pane-foreground 
    :background *title-pane-pane-background
 ;;text done elsewhere  :text *title-area-text 
  ;;doesn't work :y 10
    )
   ;;INSTR-RICH-TEXT-PANE
   (instr-rich-text-pane
    capi:rich-text-pane
    :character-format  (list ;;:face *instr-pane-font-face 
                             :size  *instr-pane-font-size  
                             :color *instr-pane-font-color
                             :bold T :italic nil  :underline nil )
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
    :visible-min-height (* 2 *instr-pane-height)
    :visible-max-height (* 2 *instr-pane-height)
    ;;  :external-min-width (* 0.5 *instr-pane-width) ;; :external-max-width *instr-pane-width
    ;;   :foreground *instr-pane-foreground 
    :background *instr-pane-background
    ;;text done elsewhere   :text  (format nil "~%   ~A  " *instr-area-text)
    )

   ;;QUESTION-RICH-TEXT-PANE xxx
   (quest-rich-text-pane
    capi:rich-text-pane
    :character-format (list ;;:face *quest-pane-font-face
                            :size *quest-pane-font-size
                            :color *quest-pane-font-color
                            :bold *quest-pane-font-weight
                            :italic nil  :underline nil )
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
    :visible-max-height 350 
    :visible-min-width *quest-pane-width ;; :visible-max-width *quest-pane-width
;;    :foreground *quest-pane-foreground 
    :visible-max-width *quest-pane-width
    :background *quest-pane-background
 ;;   :text *quest-area-text 
    )
   (go-frame-button
    capi:push-button
    :background *go-frame-button-background
    :foreground *go-frame-button-foreground
    :text  *go-frame-button-text
    :internal-min-width  *go-frame-button-width
    :internal-max-width  *go-frame-button-width
    :internal-min-height  *go-frame-button-height
    :internal-max-height  *go-frame-button-height
    :external-min-width  (+ *go-frame-button-width 10)
    ;; :external-max-width  *go-frame-button-width
    :external-min-height  (+ *go-frame-button-height 20)  ;;was 10
    ;;  :external-max-height  *go-frame-button-height   
    :default-x *go-frame-button-x
    :default-y *go-frame-button-y
    :font  *go-frame-button-font 
    ;;   :color-requirements 
  ;;   :selected T
    :default-p T  ;;means if return hit, selects this button
    :callback 'go-multiple-selection-callback
    ;;    :callback-type :interface
    ;;was (gp:make-font-description :size *button-font-size  :weight :bold) ;; :slant :italic)
    ;;doesn't work    :character-format *title-pane-char-format
    ;;doesn't work?    :x 20   :y 20
    ;; :button-group
    )
   (previous-frame-button
    capi:push-button
    :background *previous-frame-button-background
    :text  *previous-frame-button-text
    :internal-min-width  *previous-frame-button-width
    :internal-min-height  *previous-frame-button-height
    :default-x *previous-frame-button-x
    :default-y *previous-frame-button-y
    :font  *previous-frame-button-font
    :callback 'previous-quest-frame-callback
    :callback-type :interface
    ;;was (gp:make-font-description :size *button-font-size  :weight :bold) ;; :slant :italic)
    ;;doesn't work    :character-format *title-pane-char-format
    ;;doesn't work?    :x 20   :y 20
    )
   ;;end panes
   )
   
  (:layouts
   ;;overall, column layout, 5 rows.
   (top-row-layout
    capi:row-layout
    '(column-layout-1 answer-button-layout)
    )
#|   (test-layout
    capi:row-layout
    '()
    :background :green
    :visible-min-width 200
    :visible-min-height 200
    )|#
   (column-layout-1
    capi:column-layout ;; capi:grid-layout
    '(row-layout-1 row-layout-2 button-row-layout  quest-ans-row-layout) 
    :visible-max-width 400
    )
   ;;first row --title text
   (row-layout-1 
    capi:row-layout
    '(title-rich-text-pane)
    ;;  :visible-min-height *title-pane-height
    )   
   ;;second row --instructions text
   (row-layout-2
    capi:row-layout
    '(instr-rich-text-pane )
    ;;   :visible-min-height *instructions-pane-height
    )  
 ;;AAA
   ;;third row -- push buttons
   (button-row-layout  ;;kept same name as non-tall frame
    capi:column-layout
     '(go-frame-button previous-frame-button )    ;;left-button-filler-pane
  ;;  :visible-border *button-panel-visible-border
    :background *button-panel-background 
    :visible-min-height  (* 2.2 *button-pane-height)
    :visible-max-width  (* 0.5 *button-pane-width)
    ;;  :x-adjust :center
    :y-adjust :center
 ;;    :x-ratios '(1.0   1.5)
    :y-gap 10
    :visible-border nil
   )
   ;;fourth row -- question text and answer buttons/text
   ;;QUEST-ANS-ROW-LAYOUT
   (quest-ans-row-layout
    capi:row-layout
    '(quest-rich-text-pane ) ;;did incl answer-button-layout
    ;;   :visible-min-height *info-pane-height
    ;;  :background *fr-border-color
  ;;  :visible-min-height *answer-pane-height
  ;;  :visible-max-height *answer-pane-height
 ;;   :visible-min-width  (- *fr-visible-min-width (* 2 *fr-internal-border)) ;; :visiblel-max-width *answer-pane-width
  ;;  :background  *answer-pane-background
    ) 
  (answer-button-layout
    capi:row-layout
    ()
   :internal-border 10
    :background :yellow ;;*answer-pane-background
   :visible-min-width 500
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
   :layout 'top-row-layout
   :background *fr-border-color
   :title *shaq-frame-title

   ;;end frame-quest-multi-R-interface
   ))
;;TEST
;;  (let ((inst (make-instance 'frame-quest-multi-R-interface))) (capi:display inst))


;;HIGH-ANSWER-BUTTON-INTERFACE
;;
;;ddd
(capi:define-interface frame-tall-multi-answer-button-interface ()
 ;; "In frame-quest-functions.lisp, for MORE buttons, lacks a second top text pane."
  ((selected-item-datalist
    :initarg :selected-item-datalist
    :accessor selected-item-datalist
    :initform nil
    :type :list
    :documentation "Data from selected item")
  (quest-num
    :initarg :quest-num
    :accessor quest-num
    :initform nil
    :type :list
    :documentation "Question number")
  )
  (:panes
   (top-rich-text-pane
    capi:rich-text-pane  ;;WAS ~%SHAQ SUBPARTS and SCALES first
    :background :light-blue
    ;;no effect :internal-border 20
    :visible-border :default
    :character-format (list :face *title-pane-font-face
                            :size  16  ;;*title-pane-font-size 
                            :color *title-pane-font-color  :bold T :italic nil  :underline nil )
    :paragraph-format  (list :alignment :center  ;; :left :right
                             ;;no effect?  :start-indent 20
                             ;;no effect? :offset-indent 20
                             ;;  :relative-indent 1.0  ;;relative indent for rest of paragraphs
                             :tab-stops  '(5 10 15 20)
                             :numbering nil 
                             ;;OR :bullet, :arabic, :lowercase,:uppercase, :lower-roman or :upper-roman.
                             )
    )

   #|(bottom-rich-text-pane
        capi:rich-text-pane
        :text (format nil "")
        :background :yellow
        :character-format (list :face *quest-pane-font-face :size *intro-text-font-size
                                :color *quest-pane-font-color  :bold T :italic nil  :underline nil )
        :paragraph-format '(:alignment :left ;; :center  ;; :left :right
                            ;;  :start-indent 5
                            :offset-indent 10
                            ;;  :relative-indent 1.0  ;;relative indent for rest of paragraphs
                            :tab-stops nil   ;;eg  (10 20 10)
                            :numbering nil 
                            ;;OR :bullet, :arabic, :lowercase,:uppercase, :lower-roman or :upper-roman.
                            )
        )|#
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
    :callback 'go-select-scales-frame-callback
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
    )
   (quest-rich-text-pane
    capi:rich-text-pane
    :character-format  (list ;;:face *instr-pane-font-face 
                             :size  *instr-pane-font-size  
                             :color *instr-pane-font-color
                             :bold T :italic nil  :underline nil )
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
    :visible-min-height (+ *instr-pane-height 200)
  ;;:visible-max-height *instr-pane-height
    :external-min-width *instr-pane-width ;; :external-max-width *instr-pane-width
 ;;   :foreground *instr-pane-foreground 
    :background *instr-pane-background
 ;;text done elsewhere   :text  (format nil "~%   ~A  " *instr-area-text)
    )

   ;;INSTR-RICH-TEXT-PANE
   (instr-rich-text-pane
    capi:rich-text-pane
    :character-format (list ;;:face *quest-pane-font-face
                            :size *quest-pane-font-size
                            :color *quest-pane-font-color
                            :bold *quest-pane-font-weight
                           :italic nil  :underline nil )
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
  ;;  :visible-min-height *quest-pane-height :visible-max-height *quest-pane-height
    :visible-min-width (- *quest-pane-width 20) ;; :visible-max-width *quest-pane-width
;;    :foreground *quest-pane-foreground 
    :background *quest-pane-background
 ;;   :text *quest-area-text 
    )
             
   ;;end panes
   )
  (:layouts
   (column-layout-1
    capi:column-layout
    '(top-text-layout button-row-layout quest-ans-row-layout))
   ;;each layout
   (top-text-layout
    capi:simple-layout
    '(top-rich-text-pane)
    ;;  :parent 'simple-layout-1
    ;;doesn't work?   :internal-border 40
    :background :light-blue
    :visible-max-height 60
    )
   (button-row-layout
    capi:row-layout
    '(previous-fr-button go-fr-button)
    :internal-border 5
    :visible-min-height 32
    :visible-max-height 32
    :background :red
    :x-gap 340
    )
   ;;QUEST-ANS-ROW-LAYOUT
   (quest-ans-row-layout
    capi:row-layout
    '(quest-rich-text-pane answer-button-layout) 
    ;;   :visible-min-height *info-pane-height
    ;;  :background *fr-border-color
    ;;  :visible-min-height *answer-pane-height
    ;;  :visible-max-height *answer-pane-height
    ;;   :visible-min-width  (- *fr-visible-min-width (* 2 *fr-internal-border)) ;; :visiblel-max-width *answer-pane-width
    ;;  :background  *answer-pane-background
    ) 
   (answer-button-layout
    capi:row-layout
    ()
    :internal-border 10
    :background *answer-pane-background
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
   :visible-min-height 600
   :visible-min-width 860
   :external-border 10 ;;min pixels from edge of screen
   :layout 'column-layout-1
   :title "Success and Happiness Attributes Questionnaire (SHAQ)"
   :x 10
   :y 10
   ;;end default-initargs
   )
  ;;end define-interface  frame-tall-multi-answer-button-interface
  )
;;TEST
;;  (let ((test-inst (make-instance 'frame-tall-multi-answer-button-interface))) (capi:display test-inst))

;;FRAME-XTALL-MULTI-ANSWER-BUTTON-INTERFACE
;;
;;frame with entire side for buttons
;;ddd
(capi:define-interface frame-Xtall-multi-answer-button-interface ()
 ;; "In frame-quest-functions.lisp, for MORE buttons, lacks a second top text pane."
   ((selected-item-datalist
    :initarg :selected-item-datalist
    :accessor selected-item-datalist
    :initform nil
    :type :list
    :documentation "Data from selected item")
  (quest-num
    :initarg :quest-num
    :accessor quest-num
    :initform nil
    :type :list
    :documentation "Question number")
  )
  (:panes
   (title-rich-text-pane
    capi:rich-text-pane  ;;WAS ~%SHAQ SUBPARTS and SCALES first
    :background  :honeydew1 ;; :lightyellow
    :visible-min-height 80
    :visible-max-height 80
    ;;no effect :internal-border 20
    :visible-border :default
    :character-format (list :face *title-pane-font-face
                            :size  16  ;;*title-pane-font-size 
                            :color *title-pane-font-color  :bold T :italic nil  :underline nil )
    :paragraph-format  (list :alignment :center  ;; :left :right
                             ;;no effect?  :start-indent 20
                             ;;no effect? :offset-indent 20
                             ;;  :relative-indent 1.0  ;;relative indent for rest of paragraphs
                             :tab-stops  '(5 10 15 20)
                             :numbering nil 
                             ;;OR :bullet, :arabic, :lowercase,:uppercase, :lower-roman or :upper-roman.
                             )
    )
   
   ;;PANES--BUTTONS
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
    :callback 'go-multiple-selection-callback ;;'go-select-scales-frame-callback
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
    )
   ;;QUEST-RICH-TEXT-PANE
   (quest-rich-text-pane ;;was   instr-rich-text-pane
    capi:rich-text-pane
    :character-format  (list ;;:face *instr-pane-font-face 
                             :size  *instr-pane-font-size  
                             :color *instr-pane-font-color
                             :bold nil  :italic nil  :underline nil )
    :paragraph-format '(:alignment :left   ;; :left :right :center
                         :start-indent 20
                       :offset-indent 20
                        ;;  :relative-indent 1.0  ;;relative indent for rest of paragraphs
                        :tab-stops  '(5 10 15 20)
                        :numbering nil 
                        ;;OR :bullet, :arabic, :lowercase,:uppercase, :lower-roman or :upper-roman.
                        )
    :visible-border T
    :internal-border 5
    :visible-min-height (+ *instr-pane-height 200)
  ;;  :visible-max-height (+ *instr-pane-height 200)
  ;;  :external-min-width *instr-pane-width ;; :external-max-width *instr-pane-width
 ;;   :foreground *instr-pane-foreground 
    :background *instr-pane-background
 ;;text done elsewhere   :text  (format nil "~%   ~A  " *instr-area-text)
    )
   (instr-rich-text-pane ;;was quest-rich-text-pane
    capi:rich-text-pane
    :character-format (list ;;:face *quest-pane-font-face
                            :size *quest-pane-font-size
                            :color *quest-pane-font-color
                            :bold *quest-pane-font-weight
                           :italic nil  :underline nil )
    :paragraph-format '(:alignment :left ;; :center  ;; :left :right
                        ;;  :start-indent 5
                        :offset-indent 10
                        ;;  :relative-indent 1.0  ;;relative indent for rest of paragraphs
                        :tab-stops nil   ;;eg  (10 20 10)
                        :numbering nil 
    :background *instr-pane-background
                        ;;OR :bullet, :arabic, :lowercase,:uppercase, :lower-roman or :upper-roman.
                        )
  ;;  :visible-border T
    :internal-border 10
  ;;  :visible-min-height *quest-pane-height :visible-max-height *quest-pane-height
;;    :visible-min-width (- *quest-pane-width 20) ;; :visible-max-width *quest-pane-width
;;    :foreground *quest-pane-foreground 
    :background *quest-pane-background
 ;;   :text *quest-area-text 
    )
             
   ;;end panes
   )
  ;;LAYOUTS
  (:layouts
   (frame-row-layout
    capi:row-layout
    '(text-column-layout  answer-button-layout)  ;;was (top-text-layout button-row-layout quest-ans-row-layout))
    )
   ;;LEFT COLUMN FOR TEXT
   (text-column-layout
    capi:column-layout
    '(top-text-layout  text-separator-layout quest-text-layout button-row-layout)
    ;;  :parent 'simple-layout-1
    ;;doesn't work?   :internal-border 40
    :background :red
    )
   (top-text-layout
    capi:simple-layout
    '(title-rich-text-pane)
    )
   
   (text-separator-layout
    capi:simple-layout
    ()
    :background :red
    :visible-max-height 20
    )
   (quest-text-layout
    capi:simple-layout
    '(quest-rich-text-pane)
    :visible-min-height 400
    :background :red
  ;;  :visible-max-height 350
    ) 
   (button-row-layout
    capi:row-layout
    '(button-column-layout button-filler-layout)
    )
   (button-column-layout
    capi:column-layout
    '(go-fr-button previous-fr-button )
    :internal-border 15
    :visible-min-height 70
    :visible-max-height 70
 ;;   :visible-min-width *quest-pane-width 
    :background :red
  ;;  :x-gap 340
  :y-gap 15
    )
   (button-filler-layout
    capi:simple-layout
    ()
    :background :red
  ;;  :visible-min-width 100
    :visible-min-height 40
  ;;  :visible-max-height 
    )   
   ;;RIGHT COLUMN LAYOUT-ANSWERS ONLY
   (answer-button-layout
    capi:row-layout
    ()
    :internal-border 10
    :background *answer-pane-background
    :visible-min-width  *answer-pane-width
    :visible-max-width  *answer-pane-width
#| don't work
    :scroll-if-not-visible-p T
    :scroll-vertical-page-size 700
  ;; :scroll-height 700|#
  
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
   :visible-min-height 640
   :visible-min-width 920
   :external-border 10 ;;min pixels from edge of screen
   :layout 'frame-row-layout
   :title "Success and Happiness Attributes Questionnaire (SHAQ)"
   :x 10
   :y 10
   ;;end default-initargs
   )
  ;;end define-interface  frame-tall-multi-answer-button-interface
  )
;;TEST
;;  (let ((test-inst (make-instance 'frame-Xtall-multi-answer-button-interface))) (capi:display test-inst))



;;SHAQ HELP CALLBACKS ============================


;;SHAQ-HELP-CALLBACK
;;2017
;;ddd
(defun shaq-help-callback (interface)
  "In Frame-quest-functions"
  (let
      ((inst (make-info-popup-interface-instance :title "INFORMATION ABOUT SHAQ" 
                                                 :info-text (format nil "~A~% SELECT SPECIFIC HELP INFORMATION FROM OTHER MENU ITEMS" *shaq-intro-text) :info-pane-ht 530))
       )
    (capi:display inst)
  ))



;;QUESTION-HELP-CALLBACK
;;2017
;;ddd
(defun question-help-callback (interface)
  "In Frame-quest-functions"
  (let*
      ((text (format nil "~% TYPES OF QUESTIONS
   I. SINGLE-CHOICE QUESTIONS:
   Most questions are single-choice questions.
   1. Read the scale/question instructions at the top.
   2. Read the QUESTION itself.
   3. Mouse click on the circle by the answer that is your BEST answer from the choices listed.

   => DO NOT take too long on each question, there are many questions.

   II. MULTIPLE-CHOICE QUESTIONS:
   1. Mouse click on as many boxes as are appropriate to answer the question.
   2. Click on the GO BUTTON to go to the next question.

   => TO CHANGE A PREVIOUS ANSWER:
   Some scales allow you to return to the previous question to answer it.
   To do so, just click on the GO TO PREVIOUS QUESTION BUTTON.
 "))

       (inst (make-info-popup-interface-instance
              :title (format nil "~%QUESTION ANSWERING HELP" )
              :info-text (format nil "~A~%" text) :info-pane-ht 400
              :window-args '(:title "INFORMATION WINDOW"
                             :visible-min-width 670 :internal-border 10
                             :background :light-blue)))    
       )
    (capi:display inst)
    ))



;;SHAQ-SAVING-RESULTS-HELP-CALLBACK
;;2017
;;ddd
(defun shaq-saving-results-help-callback (interface)
  "In Frame-quest-functions"
  (let*
      ((text (format nil "~% IT IS VERY IMPORTANT THAT YOU SAVE YOUR RESULTS FOR FUTURE REFERENCE. 
      IF YOU DON'T THEY WILL BE LOST FOREVER.

   TO SAVE YOUR RESULTS FROM THE RESULTS WINDOW:
    1.  Select (click on) the button that says  SAVE RESULTS
    2.  In the popup window that will come up,
          select the location and filename where you want to save the results.
    3. Hit the SAVE button.

   ALTERNATIVE METHOD:
    1. Mouse click inside the results window.
    2. Right click and select-all or hit Control-A to select all text.
    3. Hit Control-C to copy all the text.
    4. Paste the results text inside an editor (such as Word or Wordpad) and save that file.

  NOTE: YOU CAN ALSO EMAIL A COPY OF THE SAVED FILE TO YOURSELF 
                 as a backup."))

       (inst (make-info-popup-interface-instance
              :title (format nil "~%HOW TO SAVE YOUR SHAQ RESULTS" )
              :info-text (format nil "~A~%" text) :info-pane-ht 330
              :window-args '(:title "INFORMATION WINDOW"
                             :visible-min-width 800 :internal-border 10
                             :background :light-blue)))    
       )
    (capi:display inst)
    ))



;;SHAQ-RESULTS-HELP-CALLBACK
;;2017
;;ddd
(defun shaq-results-help-callback (interface)   
  "In Frame-quest-functions"      
 (let
      ((inst (make-info-popup-interface-instance :title (format nil "~%     UNDERSTANDING YOUR SHAQ RESULTS" )
                                                 :info-text (format nil "~A" *shaq-pt2-intro-text)
                                                 :info-pane-ht 600
                                                 :window-args '(:title "INFORMATION WINDOW"
                                                                :visible-min-width 900 :internal-border 10
                                                                :background :light-blue)))                                                 
       )
    (capi:display inst)
  ))



;;CLOSE-FRAME-CALLBACK
;;2017
;;ddd
(defun close-frame-callback (interface)
  "In Frame-quest-functions"
  (let
      ((confirmp (capi:prompt-for-confirmation "Are you sure you want to exit this frame (and possibly SHAQ)?"))
       )
    (when confirmp
      (capi:destroy interface))
    confirmp
    ))


;;EXIT-SHAQ-CALLBACK
;;2017
;;ddd
(defun exit-shaq-callback (interface)
  (let
      ((confirmp (capi:prompt-for-confirmation "Are you sure you want to exit all of SHAQ and LispWorks?"))
       )
    (when confirmp
      (quit))
    confirmp
    ))

;;ALSO SEE
;;  shaq-problems-callback frames-results















;; OLD FRAME-QUEST-MULTI-R-INTERFACE
;;
;;ddd
#|(capi:define-interface frame-quest-multi-R-interface ()
  ()
  (:PANES
   ;;TITLE-RICH-TEXT-PANE xxx
   (title-rich-text-pane
    capi:rich-text-pane
    :character-format (list :face *title-pane-font-face
                            :size  *title-pane-font-size 
                            :color *title-pane-font-color  :bold T :italic nil  :underline nil )
    :paragraph-format  (list :alignment :center  ;; :left :right
                             ;;  :start-indent 5
                             :offset-indent 20
                             ;;  :relative-indent 1.0  ;;relative indent for rest of paragraphs
                             :tab-stops  '(5 10 15 20)
                             :numbering nil 
                             ;;OR :bullet, :arabic, :lowercase,:uppercase, :lower-roman or :upper-roman.
                             )
    :visible-border T
;;    :internal-border 20
    :visible-min-height *title-pane-height :visible-max-height *title-pane-height
    :external-min-width *title-pane-width  ;; :external-max-width *title-pane-width
;;    :foreground *title-pane-foreground 
    :background *title-pane-pane-background
   :text *title-area-text 
    )
   ;;INSTR-RICH-TEXT-PANE
   (instr-rich-text-pane
    capi:rich-text-pane
    :character-format  (list :face *instr-pane-font-face 
                             :size  *instr-pane-font-size  
                             :color *instr-pane-font-color
                             :bold nil:italic nil  :underline nil )
    :paragraph-format '(:alignment :center  ;; :left :right
                        ;;  :start-indent 5
                        :offset-indent 10
                        ;;  :relative-indent 1.0  ;;relative indent for rest of paragraphs
                        :tab-stops  '(5 10 15 20)
                        :numbering nil 
                        ;;OR :bullet, :arabic, :lowercase,:uppercase, :lower-roman or :upper-roman.
                        )
    :visible-border T
;;    :internal-border 20
    :visible-min-height *instr-pane-height :visible-max-height *instr-pane-height
    :external-min-width *instr-pane-width ;; :external-max-width *instr-pane-width
 ;;   :foreground *instr-pane-foreground 
    :background *instr-pane-background
    :text *instr-area-text 
    )

   ;;QUESTION-RICH-TEXT-PANE xxx
   (quest-rich-text-pane
    capi:rich-text-pane
    :character-format (list :face *quest-pane-font-face :size *quest-pane-font-size
                            :color *quest-pane-font-color  :bold nil:italic nil  :underline nil )
    :paragraph-format '(:alignment :left ;; :center  ;; :left :right
                        ;;  :start-indent 5
                        :offset-indent 10
                        ;;  :relative-indent 1.0  ;;relative indent for rest of paragraphs
                        :tab-stops nil   ;;eg  (10 20 10)
                        :numbering nil 
                        ;;OR :bullet, :arabic, :lowercase,:uppercase, :lower-roman or :upper-roman.
                        )
    :visible-border T
    :visible-min-height *quest-pane-height :visible-max-height *quest-pane-height
    :visible-min-width *quest-pane-width ;; :visible-max-width *quest-pane-width
;;    :foreground *quest-pane-foreground 
    :background *quest-pane-background
 ;;   :text *quest-area-text 
    )
   (answer-button-panel
    capi:check-button-panel
    )
   (previous-frame-button
    capi:push-button
    :background *previous-frame-button-background
    :text  *previous-frame-button-text
    :internal-min-width  *previous-frame-button-width
    :internal-min-height  *previous-frame-button-height
    :default-x *previous-frame-button-x
    :default-y *previous-frame-button-y
    :font  *previous-frame-button-font
    :callback 'previous-quest-frame-callback
    :callback-type :interface
    ;;was (gp:make-font-description :size *button-font-size  :weight :bold) ;; :slant :italic)
    ;;doesn't work    :character-format *title-pane-char-format
    ;;doesn't work?    :x 20   :y 20
    )
   ;;end panes
   )
   
  (:layouts
   ;;overall, column layout, 5 rows.
   (column-layout-1
    capi:column-layout ;; capi:grid-layout
    '(row-layout-1 row-layout-2 button-row-layout  row-layout-3) 
    )
   ;;was  '(simple-layout-1 row-layout-1 row-layout-2 row-layout-3 row-layout-4 simple-layout-7))
   ;;first row --title text
   (row-layout-1
    capi:row-layout
    '(title-rich-text-pane)
    ;;  :visible-min-height *title-pane-height
    )   
   ;;second row --instructions text
   (row-layout-2
    capi:row-layout
    '(instr-rich-text-pane )
    ;;   :visible-min-height *instructions-pane-height
    )  
   ;;third row -- push buttons
   ;;yyy
   (button-row-layout
    capi:row-layout
     '(previous-frame-button) ;;  go-frame-button)    ;;left-button-filler-pane
  ;;  :visible-border *button-panel-visible-border
    :background *button-panel-background 
    :visible-min-height (- *button-pane-height 10)
    :visible-min-width *button-pane-width
    ;;  :x-adjust :center
    :y-adjust :center
 ;;    :x-ratios '(1.0   1.5)
    :x-gap 400
    :visible-border nil
#|   USE LONLY FOR BUTTON-PANELS Can't use button-panels for capi:button class
    :layout-class 'capi:row-layout
   :layout-args '( :x-adjust  :center :x-gap 100 :fixed-size nil )|#
    ;;  :buttons   :button-class  
    ;;   :selection-callback 
    ;; :callbacks :callback-type  :action-callback
    ;; :items-callback  :items-count-function  :initial-focus
    ;;  :external-min-width *edit-pane-width ;; :external-max-width *edit-pane-width
    ;;  :default-x  :default-y
    ;; :window-styles 
    ;; :title-font  :title-gap  :title  :name  :message-args :message-font
   )
   ;;fourth row -- question text and answer buttons/text
   (row-layout-4
    capi:row-layout
    '( quest-rich-text-pane  answer-column-layout) ;;was answer-button-panel)
    ;;   :visible-min-height *info-pane-height
    ;;  :background *fr-border-color
    ) 
   (answer-column-layout
    capi:column-layout
    '(answer-button-panel)
    :visible-min-height *answer-pane-height :visible-max-height *answer-pane-height
    :visible-min-width *answer-pane-width ;; :visiblel-max-width *answer-pane-width
    :background *answer-pane-background
    )
   ;;end layouts
   )
  ;;MENUS
  (:menu-bar help-menu )
  (:menus
   (help-menu
    "SHAQ Help"
    (
     ("Question Help"
      :callback 'question-help-callback
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
   ::visible-min-height *fr-visible-min-height
   #|   :best-width *frame-internal-width
   :best-height *frame-internal-height|#
   :external-border  *external-border
   :internal-border *internal-border-width
   :window-styles '(:always-on-top)
   :layout 'column-layout-1
   :background *fr-border-color
   :title *shaq-frame-title  ;; "SHAQ FRAME TITLE"
   ))|#

#| older(capi:define-interface frame-quest-multi-R-interface ()
  ()
  (:PANES
   ;;TITLE-RICH-TEXT-PANE xxx
   (title-rich-text-pane
    capi:rich-text-pane
    :character-format (list :face "times new roman"
                            :size  *title-pane-font-size 
                            :color *title-pane-font-color  :bold T :italic nil  :underline nil )
    :paragraph-format  (list :alignment :center  ;; :left :right
                             ;;  :start-indent 5
                             :offset-indent 20
                             ;;  :relative-indent 1.0  ;;relative indent for rest of paragraphs
                             :tab-stops nil   ;;eg  (10 20 10)
                             :numbering nil 
                             ;;OR :bullet, :arabic, :lowercase,:uppercase, :lower-roman or :upper-roman.
                             )
    :visible-border T
;;    :internal-border 20
    :visible-min-height *title-pane-height :visible-max-height *title-pane-height
    :external-min-width *title-pane-width  ;; :external-max-width *title-pane-width
;;    :foreground *title-pane-foreground 
    :background *title-pane-pane-background
    :text *title-area-text 
    )
   ;;INSTR-RICH-TEXT-PANE
   (instr-rich-text-pane
    capi:rich-text-pane
    :character-format  (list :face "times new roman" :size  *instr-pane-font-size                         :color *instr-pane-font-color
                             :bold T :italic nil  :underline nil )
    :paragraph-format '(:alignment :center  ;; :left :right
                        ;;  :start-indent 5
                        :offset-indent 20
                        ;;  :relative-indent 1.0  ;;relative indent for rest of paragraphs
                        :tab-stops nil   ;;eg  (10 20 10)
                        :numbering nil 
                        ;;OR :bullet, :arabic, :lowercase,:uppercase, :lower-roman or :upper-roman.
                        )
    :visible-border T
;;    :internal-border 20
    :visible-min-height *instr-pane-height :visible-max-height *instr-pane-height
    :external-min-width *instr-pane-width ;; :external-max-width *instr-pane-width
;;    :foreground *instr-pane-foreground 
    :background *instr-pane-background
    :text *instr-area-text 
    )

   ;;QUESTION-RICH-TEXT-PANE xxx
   (quest-rich-text-pane
    capi:rich-text-pane
    :character-format (list :face "times new roman" :size *quest-pane-font-size
                            :color *quest-pane-font-color  :bold T :italic nil  :underline nil )
    :paragraph-format '(:alignment :left ;; :center  ;; :left :right
                        ;;  :start-indent 5
                        :offset-indent 20
                        ;;  :relative-indent 1.0  ;;relative indent for rest of paragraphs
                        :tab-stops nil   ;;eg  (10 20 10)
                        :numbering nil 
                        ;;OR :bullet, :arabic, :lowercase,:uppercase, :lower-roman or :upper-roman.
                        )
    :visible-border T
    :visible-min-height *quest-pane-height :visible-max-height *quest-pane-height
    :visible-min-width *quest-pane-width ;; :visible-max-width *quest-pane-width
;;    :foreground *quest-pane-foreground 
    :background *quest-pane-background
    :text *quest-area-text 
    )

   ;;ANSWER-BUTTON-PANEL xxx
   ;;SSS START HERE MAKING MODEL RADIO-BUTTON-PANEL
   (answer-button-panel
    capi:radio-button-panel
    #|    :character-format '(:face "times new roman" :size 12 ;;error  *pane3-font-size
                        :color :black :bold T :italic nil  :underline nil )
    :paragraph-format '(:alignment :left ;; :center  ;; :left :right
                        ;;  :start-indent 5
                        :offset-indent 20
                        ;;  :relative-indent 1.0  ;;relative indent for rest of paragraphs
                        :tab-stops nil   ;;eg  (10 20 10)
                        :numbering nil 
                        ;;OR :bullet, :arabic, :lowercase,:uppercase, :lower-roman or :upper-roman.
                        )|#
    :items '(9 8 7 6 5 4 3 2 1)
   :layout-class 'capi:column-layout
    :layout-args '(:adjust :center :x 25 :y 25 :y-gap 20 :internal-border 25)
    :visible-border T
    :visible-min-height *answer-pane-height :visible-max-height *answer-pane-height
    :visible-min-width *answer-pane-width ;; :visiblel-max-width *answer-pane-width
;;    :foreground *answer-pane-foreground 
    :background *answer-pane-background
    :selected-items nil
    ;;   :text *answer-area-text 
    )
  
   ;;PANES--PUSH-BUTTON-PANEL xxx ACTUALLY A ROW-LAYOUT
   
   ;;PANES--BUTTONS ;;yyy
   (go-frame-button
    capi:push-button
    :background *go-frame-button-background
    :foreground *go-frame-button-foreground
    :text  *go-frame-button-text
    :internal-min-width  *go-frame-button-width
     :internal-max-width  *go-frame-button-width
    :internal-min-height  *go-frame-button-height
    :internal-max-height  *go-frame-button-height
     :external-min-width  (+ *go-frame-button-width 10)
    ;; :external-max-width  *go-frame-button-width
    :external-min-height  (+ *go-frame-button-height 10)
  ;;  :external-max-height  *go-frame-button-height   
    :default-x *go-frame-button-x
    :default-y *go-frame-button-y
    :font  *go-frame-button-font 
 ;;   :color-requirements 
    :selected T
    :default-p T  ;;means if return hit, selects this button
    ;;    :callback 'go-frame-callback
    ;;    :callback-type :interface
    ;;was (gp:make-font-description :size *button-font-size  :weight :bold) ;; :slant :italic)
    ;;doesn't work    :character-format *title-pane-char-format
    ;;doesn't work?    :x 20   :y 20
    ;; :button-group
    )
   (previous-frame-button
    capi:push-button
    :background *previous-frame-button-background
    :text  *previous-frame-button-text
    :internal-min-width  *previous-frame-button-width
    :internal-min-height  *previous-frame-button-height
    :default-x *previous-frame-button-x
    :default-y *previous-frame-button-y
    :font  *previous-frame-button-font
    ;; :callback 'previous-quest-frame-callback
    ;;  :callback-type :interface
    ;;was (gp:make-font-description :size *button-font-size  :weight :bold) ;; :slant :italic)
    ;;doesn't work    :character-format *title-pane-char-format
    ;;doesn't work?    :x 20   :y 20
    )
   (exit-shaq-button
    capi:push-button
    :background *exit-shaq-button-background
    :text  *exit-shaq-button-text
    :internal-min-width  *exit-shaq-button-width
    :internal-min-height  *exit-shaq-button-height
    :default-x *exit-shaq-button-x
    :default-y *exit-shaq-button-y
    :font  *exit-shaq-button-font
    :callback 'interface-close-callback
    :callback-type :interface
    ;;was (gp:make-font-description :size *button-font-size  :weight :bold) ;; :slant :italic)
    ;;doesn't work    :character-format *title-pane-char-format
    ;;doesn't work?    :x 20   :y 20
    )
   (left-button-filler-pane
    capi:simple-pane
    :background *exit-shaq-button-background
    :visible-min-width *left-button-filler-pane-width
    :visible-border nil
    )

   ;;end panes
   )
  (:layouts
   ;;overall, column layout, 5 rows.
   (column-layout-1
    capi:column-layout ;; capi:grid-layout
    '( row-layout-1 row-layout-2 button-row-layout  row-layout-4) 
    )
   ;;was  '(simple-layout-1 row-layout-1 row-layout-2 row-layout-3 row-layout-4 simple-layout-7))
   ;;first row --title text
   (row-layout-1
    capi:row-layout
    '(title-rich-text-pane)
    ;;  :visible-min-height *title-pane-height
    )   
   ;;second row --instructions text
   (row-layout-2
    capi:row-layout
    '(instr-rich-text-pane )
    ;;   :visible-min-height *instructions-pane-height
    )  
   ;;third row -- push buttons
   ;;yyy
   (button-row-layout
    capi:row-layout
     '( previous-frame-button  go-frame-button)    ;;left-button-filler-pane
  ;;  :visible-border *button-panel-visible-border
    :background *button-panel-background 
    :visible-min-height *button-pane-height
    :visible-min-width *button-pane-width
    ;;  :x-adjust :center
    :y-adjust :center
    :x-ratios '(1.0   1.5)
    :x-gap 400
    :visible-border nil
#|   USE LONLY FOR BUTTON-PANELS Can't use button-panels for capi:button class
    :layout-class 'capi:row-layout
   :layout-args '( :x-adjust  :center :x-gap 100 :fixed-size nil )|#
    ;;  :buttons   :button-class  
    ;;   :selection-callback 
    ;; :callbacks :callback-type  :action-callback
    ;; :items-callback  :items-count-function  :initial-focus
    ;;  :external-min-width *edit-pane-width ;; :external-max-width *edit-pane-width
    ;;  :default-x  :default-y
    ;; :window-styles 
    ;; :title-font  :title-gap  :title  :name  :message-args :message-font
   )
   ;;fourth row -- question text and answer buttons/text
   (row-layout-4
    capi:row-layout
    '( quest-rich-text-pane answer-button-panel)
    ;;   :visible-min-height *info-pane-height
    ;;  :background *fr-border-color
    ) 
   ;;end layouts
   )
  ;;MENUS
  (:menu-bar help-menu )
  (:menus
   (help-menu
    "SHAQ Help"
    (
     ("Question Help"
      :callback 'question-help-callback
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
   ::visible-min-height *fr-visible-min-height
   #|   :best-width *frame-internal-width
   :best-height *frame-internal-height|#
   :external-border  *external-border
   :internal-border *internal-border-width
   :window-styles '(:always-on-top)
   :layout 'column-layout-1
   :background *fr-border-color
   :title *shaq-frame-title  ;; "SHAQ FRAME TITLE"
   ))|#

;;(capi:display (make-instance 'frame-interface))

;;test
#|
(defun testf2 ()
  (let
      ((frame-inst1 (make-instance 'frame-question-interface)) 
       (frame-inst2)
    )
  ;;  (setf *info-pane-height 350)
    (capi:display frame-inst1)

    ;;TEST LATER
    ;;now change the color
#|    (setf   *fr-border-color :green)
   (setf  *title-area-text (format nil "~%NEW SHAQ TITLE TEXT GOES HERE"))
   (setf  *info-area-text (format nil "~%~%This is NEW test text, SHAQ info text goes here.")) 
    (setf frame-inst2 (make-instance 'frame-interface))
    (capi:display frame-inst2)
    |#
  ))
|#



  



;;hhh -------------------------------- HELP ---------------------------------------

;;following works 
#|(capi:contain
 (make-instance 'capi:title-pane
                :text "A title pane"
                :font (gp:make-font-description
                       :family "Times"
                       :size 12
                       :weight :medium
                       :slant :roman)))|#

;; CAPI:APPLY-IN-PANE-PROCESS  EXAMPLE
;;from capi ref
#|(setq EDITOR
      (capi:contain
       (make-instance 'capi:editor-pane
                      :text "Once upon a time...")))
(CAPI:APPLY-IN-PANE-PROCESS  EDITOR
                             'capi:call-editor editor "End Of Buffer")
(CAPI:APPLY-IN-PANE-PROCESS  editor
                             'capi:call-editor editor "Beginning Of Buffer")
|#


#|
It is very important that users do not see any checked buttons before
 they make their own choices—NO DEFAULT SELECTION.
(defun test ()
  (let ((panel (make-instance 'capi:radio-button-panel :items '("He" "She" "They"))))
    (setf (capi:choice-selected-item panel) nil)
    (capi:contain panel)))
;;XXX
;;CREATING A BUTTON PANEL FROM FUNCTION (WITH NO DEFAULT SELECTION)
;;IF INSIDE A FUNCTION CREATING AN INTERFACE INSTANCE,
      (with-slots (answer-button-panel)  q-frame-inst
        ;;MAKE THE  BUTTON PANEL
      (setf answer-button-panel (make-radio-button-panel ans-instruction-text answer-array-list))
      ;;Put the BUTTON IN THE ALREADY CREATED FRAME
      (capi:apply-in-pane-process answer-column-layout
                                  #'(setf capi:layout-description)
                                          (list answer-button-panel)                                            
                                          answer-column-layout)
      ;;This SETS PREVENTS A DEFAULT SELECTION from being checked
      (capi:apply-in-pane-process answer-column-layout
                                  #'(setf CAPI:CHOICE-SELECTED-ITEM)
                                          (list nil)                                            
                                          answer-button-panel)
  ;;model  (setf (capi:choice-selected-item answer-button-panel) nil)
|#

;;from interface builder
#|
(capi:define-interface interface-3 ()
  ()
  (:panes
   (editor-pane-1
    capi:editor-pane)
   (push-button-panel-1
    capi:push-button-panel
    :items '("Push-Button-Panel-1" "Button 2" "Button 3")
    :max-width t
    :max-height t)
   (editor-pane-2
    capi:editor-pane))
  (:layouts
   (grid-layout-1
    capi:grid-layout
    '(simple-layout-1 simple-layout-2 simple-layout-3))
   (simple-layout-1
    capi:simple-layout
    '(editor-pane-1))
   (simple-layout-2
    capi:simple-layout
    '(push-button-panel-1))
   (simple-layout-3
    capi:simple-layout
    '(editor-pane-2)))
  (:default-initargs
   :best-height 300
   :best-width 458
   :layout 'grid-layout-1
   :title "Interface-3"))
|#


;;ALL RICH-TEXT-PANE INITARGS 
#|
:ACCEPTS-FOCUS-P
:AUTOMATIC-RESIZE
:BACKGROUND  X
:CHANGE-CALLBACK
:CHARACTER-FORMAT
:COLOR-REQUIREMENTS
:CONTROL-ID
:CURSOR
:DEFAULT-BACKGROUND
:DEFAULT-HEIGHT
:DEFAULT-WIDTH
:DEFAULT-X
:DEFAULT-Y
:DRAG-CALLBACK
:DROP-CALLBACK
:ENABLED
:EXTERNAL-HEIGHT
:EXTERNAL-MAX-HEIGHT
:EXTERNAL-MAX-WIDTH
:EXTERNAL-MIN-HEIGHT
:EXTERNAL-MIN-WIDTH
:EXTERNAL-WIDTH
:FILENAME
:FONT  X
:FOREGROUND
:HEIGHT
:HELP-KEY
:HORIZONTAL-SCROLL
:INITIAL-CONSTRAINTS
:INTERFACE
:INTERNAL-BORDER
:INTERNAL-MAX-HEIGHT
:INTERNAL-MAX-WIDTH
:INTERNAL-MIN-HEIGHT X
:INTERNAL-MIN-WIDTH  X
:MAX-HEIGHT (DEPRECIATED?)
:MAX-WIDTH  (DEPRECIATED?)
:MIN-HEIGHT  (DEPRECIATED?)
:MIN-WIDTH  (DEPRECIATED?)
:NAME
:PANE-MENU
:PARAGRAPH-FORMAT
:PARENT
:PLIST
:PROTECTED-CALLBACK
:SCROLL-CALLBACK
:SCROLL-HEIGHT
:SCROLL-HORIZONTAL-PAGE-SIZE
:SCROLL-HORIZONTAL-SLUG-SIZE
:SCROLL-HORIZONTAL-STEP-SIZE
:SCROLL-IF-NOT-VISIBLE-P
:SCROLL-INITIAL-X
:SCROLL-INITIAL-Y
:SCROLL-START-X
:SCROLL-START-Y
:SCROLL-VERTICAL-PAGE-SIZE
:SCROLL-VERTICAL-SLUG-SIZE
:SCROLL-VERTICAL-STEP-SIZE
:SCROLL-WIDTH
:TAKE-FOCUS
:TEXT
:TEXT-LIMIT
:TOOLBAR-CALLBACK
:TOOLBAR-TITLE
:VERTICAL-SCROLL
:VISIBLE-BORDER X
:VISIBLE-HEIGHT
:VISIBLE-MAX-HEIGHT
:VISIBLE-MAX-WIDTH
:VISIBLE-MIN-HEIGHT
:VISIBLE-MIN-WIDTH
:VISIBLE-WIDTH
:WIDGET-NAME
:WIDTH
:WINDOW-STYLES X
:X
:Y
|#



;;XXX
;;RICH-TEXT-PANE
#|
INITARGS
 :character-format A plist.
:paragraph-format A plist.
:change-callback A function called when a change is made.
:protected-callback A function determining whether the user
may edit a protected part of the text, on Microsoft Windows.
:filename A file to display.
:text A string or nil.
:text-limit An integer.

ACCESSORS 
rich-text-pane-change-callback
rich-text-pane-limit
rich-text-pane-text

DESCRIPTION The class rich-text-pane provides a text editor which supports
character and paragraph formatting of its text.
character-format is the default character format. It is a plist
which is interpreted in the same way as the attributes-plist
argument of set-rich-text-pane-character-format. The
default value of character-format is nil.
paragraph-format is the default paragraph
|#
;;XXX IMPORTANT -- NON-INITARG MODIFICATIONS OF RTFs
#|
3. The functions that are specific to rich-text-pane CANNOT
BE CALLED BEFORE THE PANE IS CREATED.
If you need to perform OPERATIONS ON THE PANE BEFORE IT APPEARS, 
and which cannot be performed using the initargs, the best approach
is to DEFINE AN :AFTER METHOD ON INTERFACE-DISPLAY
on the class of the interface containing the rich-textpane,
and perform the operations inside this method.
|#
;;
;;XXX
;;SET-RICH-TEXT-PANE-CHARACTER-FORMAT Function
#|
If there is a current selection in the pane, then the attributes
are set for the selected text. If there is no selection, then it sets
the "typing attributes", which are applied to characters that
are typed by the user. Note that any cursor movement
changes these attributes, so the setting is ephemeral.
The selection argument is deprecated. If selection is nil an
error is signalled. The default value of selection is t.
If attributes-plist is the symbol :default then the default
character format of the pane (that is, the value of the richtext-
pane initarg :character-format) is used. Otherwise
attributes-plist is a plist of keywords and values. These are the
valid keywords on Microsoft Windows and Cocoa:
:bold A boolean.
:italic A boolean.
:underline A boolean.
:face A string naming a font.
:color A color spec or alias specifying the foreground
color.
:size The size of the font.
Additionally these attributes-plist keywords are valid on
Microsoft Windows only:
:strikeout A boolean.
|#

;;EXAMPLE
#|
(defun ok-to-edit-p (pane start end s)
  (declare (ignore pane))
  (capi:prompt-for-confirmation
   (format nil "Editing~:[ ~; selection ~]from ~a to ~a"
           s start end)))
(setq rtp
      (capi:contain
       (make-instance
        'capi:rich-text-pane
        :protected-callback 'ok-to-edit-p
        :character-format
        '(:size 14 :color :red)
        :visible-min-height 300
        :visible-min-width 400
        :paragraph-format
        '(:start-indent 20 :offset -15)
        :text-limit 160
        :text (format nil "First paragraph.~%Second
paragraph, a little longer.~%Another paragraph, which
should be long long enough that it spans more than one
line. ~%" ))))
|#

;;FROM CAPI REF P 566
;;
;;SET-RICH-TEXT-PANE-PARAGRAPH-FORMAT
;;xxx
#|
Summary Sets the paragraph format.
Package capi
Signature set-rich-text-pane-paragraph-format pane attributesplist
=> result
ARGUMENTS pane A rich-text-pane.

ATTRIBUTESPLIST A plist, or :default.
Values result A plist.
DESCRIPTION The function set-rich-text-pane-paragraph-format sets
paragraph attributes for the current paragraphs in pane.
The current paragraphs are those paragraphs which overlap
the current selection, or the paragraph containing the insertion
point if there is no selection.
539
If attributes-plist is the symbol :default then the default
paragraph format of the pane is used. Otherwise
 ATTRIBUTESPLIST
is a plist of keywords and values. These are the valid
KEYWORDS ON MICROSOFT WINDOWS and Cocoa:
:ALIGNMENT :left, :right or :center.
:START-INDENT A number setting the indentation.
:OFFSET-INDENT A number modifying the indentation.
:OFFSET A number setting the relative indentation of SUBSEQUENT LINES in a paragraph.
:RIGHT-INDENT A number setting the right margin.
:TAB-STOPS A list of numbers.
Additionally this attributes-list keyword is valid on Microsoft
Windows, only: :numbering nil, t,  :bullet, :arabic, :lowercase, :uppercase, :lower-roman or :upper-roman.
NUMBERING specifies the numbering style. Rich Edit 3.0 supports
all the above values of numbering. Please note that the
ARABIC AND ROMAN STYLES START NUMBERING FROM ZERO, and that
only t and :bullet work with versions of Rich Edit before
3.0 (other values of numbering are quietly ignored).
start-indent specifies the indentation of the first line of a paragraph.
A NEGATIVE VALUE REMOVES THE INDENTATION.

OFFSET-INDENT takes effect only when start-indent is not passed.
It specifies an increase in the current indentation. Therefore, a
negative value of offset-indent decreases the indentation.
offset specifies the offset of the second and following lines relative
to the first line of the paragraph. That is, when the
indentation of the first line is indent, the indentation of the
second and subsequent lines is indent + offset. When offset is
negative, the second and subsequent lines are indented less
than the first line.
 If INDENT + OFFSET IS NEGATIVE, then these lines are not indented.
TAB-STOPS should be a list of numbers specifiying the locations of tabs. 
No more than 32 tabs are allowed.
EXAMPLE 
         (setq rtp
              (capi:contain
               (make-instance
                'capi:rich-text-pane
                :visible-min-height 300
                :visible-min-width 400
                :paragraph-format
                '(:start-indent 20 :offset -15)
                :text (format nil "First paragraph.~%Second
paragraph, a little longer.~%Another paragraph, which
should be long long enough that it spans more than one
line. ~%" ))))
(capi:set-rich-text-pane-paragraph-format
rtp '(:offset-indent 30 :numbering :lowercase))
;;end set-rich-text-pane-paragraph-format function
|#

#|
PUSH BUTTON PANEL 
INITARGS
:ACCEPTS-FOCUS-P
:ACTION-CALLBACK
:ALTERNATING-BACKGROUND
:ALTERNATIVE-ACTION-CALLBACK
:ARMED-IMAGES
:AUTOMATIC-RESIZE
:BACKGROUND
:BUTTON-CLASS
:BUTTONS
:CALLBACK-TYPE
:CALLBACKS
:CANCEL-BUTTON
:COLOR-REQUIREMENTS
:CONTROL-ID
:CURSOR
:DATA-FUNCTION
:DEFAULT-BACKGROUND
:DEFAULT-BUTTON
:DEFAULT-HEIGHT
:DEFAULT-WIDTH
:DEFAULT-X 
:DEFAULT-Y
:DISABLED-IMAGES
:DO-CACHE
:DRAG-CALLBACK
:DROP-CALLBACK
:ENABLED
:EXTEND-CALLBACK
:EXTERNAL-HEIGHT
:EXTERNAL-MAX-HEIGHT
:EXTERNAL-MAX-WIDTH
:EXTERNAL-MIN-HEIGHT
:EXTERNAL-MIN-WIDTH
:EXTERNAL-WIDTH
:FILTER
:FOCUS-ITEM
:FONT
:FORCE-WINDOW-HANDLE
:FOREGROUND
:HEIGHT
:HELP-KEY
:HELP-KEYS
:HORIZONTAL-SCROLL
:IMAGES
:INDICATOR
:INITIAL-CONSTRAINTS
:INITIAL-FOCUS
:INITIAL-FOCUS-ITEM
:INTERACTION
:INTERFACE
:INTERNAL-BORDER
:INTERNAL-MAX-HEIGHT
:INTERNAL-MAX-WIDTH
:INTERNAL-MIN-HEIGHT
:INTERNAL-MIN-WIDTH
:ITEMS
:ITEMS-CALLBACK
:ITEMS-COUNT-FUNCTION
:ITEMS-GET-FUNCTION
:ITEMS-MAP-FUNCTION
:KEEP-SELECTION-P
:KEY-FUNCTION
:LAYOUT
:LAYOUT-ARGS
:LAYOUT-CLASS
:MAX-HEIGHT
:MAX-WIDTH
:MESSAGE
:MESSAGE-ARGS
:MESSAGE-FONT
:MESSAGE-GAP
:MIN-HEIGHT
:MIN-WIDTH
:MNEMONIC
:MNEMONIC-ESCAPE
:MNEMONIC-ITEMS
:MNEMONIC-TITLE
:MNEMONICS
:NAME
:NAMES
:PANE-MENU
:PARENT
:PLIST
:PRINT-FUNCTION
:RETRACT-CALLBACK
:SCROLL-CALLBACK
:SCROLL-HEIGHT
:SCROLL-HORIZONTAL-PAGE-SIZE
:SCROLL-HORIZONTAL-SLUG-SIZE
:SCROLL-HORIZONTAL-STEP-SIZE
:SCROLL-IF-NOT-VISIBLE-P
:SCROLL-INITIAL-X
:SCROLL-INITIAL-Y
:SCROLL-START-X
:SCROLL-START-Y
:SCROLL-VERTICAL-PAGE-SIZE
:SCROLL-VERTICAL-SLUG-SIZE
:SCROLL-VERTICAL-STEP-SIZE
:SCROLL-WIDTH
:SELECTED-DISABLED-IMAGES
:SELECTED-IMAGES
:SELECTED-ITEM
:SELECTED-ITEMS
:SELECTION
:SELECTION-CALLBACK
:STOCK-IDS
:TAKE-FOCUS
:TEST-FUNCTION
:TITLE
:TITLE-ADJUST
:TITLE-ARGS
:TITLE-FONT
:TITLE-GAP
:TITLE-POSITION
:TOOLBAR
:TOOLBAR-CALLBACK
:TOOLBAR-TITLE
:VERTICAL-SCROLL
:VISIBLE-BORDER
:VISIBLE-HEIGHT
:VISIBLE-MAX-HEIGHT
:VISIBLE-MAX-WIDTH
:VISIBLE-MIN-HEIGHT
:VISIBLE-MIN-WIDTH
:VISIBLE-WIDTH
:WIDGET-NAME
:WIDTH
:WINDOW-STYLES
:X
:Y
|#


;;xxx
;; PUSH-BUTTON  INIT-ARGS
#|
:ACCEPTS-FOCUS-P
:ACTION-CALLBACK
:ALTERNATE-CALLBACK
:ALTERNATIVE-ACTION-CALLBACK
:ARMED-IMAGE
:AUTOMATIC-RESIZE
:BACKGROUND
:BEZEL-STYLE
:BUTTON-GROUP
:BUTTONS
:CALLBACK
:CALLBACK-TYPE
:CANCEL-P
:COLLECTION
:COLOR-REQUIREMENTS
:CONTROL-ID
:CURSOR
:DATA
:DATA-FUNCTION
:DEFAULT-BACKGROUND
:DEFAULT-HEIGHT
:DEFAULT-P
:DEFAULT-WIDTH
:DEFAULT-X
:DEFAULT-Y
:DISABLED-IMAGE
:DRAG-CALLBACK
:DROP-CALLBACK
:ENABLED
:EXTEND-CALLBACK
:EXTERNAL-HEIGHT
:EXTERNAL-MAX-HEIGHT
:EXTERNAL-MAX-WIDTH
:EXTERNAL-MIN-HEIGHT
:EXTERNAL-MIN-WIDTH
:EXTERNAL-WIDTH
:FILTER
:FONT
:FOREGROUND
:HEIGHT
:HELP-KEY
:HORIZONTAL-SCROLL
:IMAGE
:INDICATOR
:INITIAL-CONSTRAINTS
:INTERACTION
:INTERFACE
:INTERNAL-BORDER
:INTERNAL-MAX-HEIGHT
:INTERNAL-MAX-WIDTH
:INTERNAL-MIN-HEIGHT
:INTERNAL-MIN-WIDTH
:KEY-FUNCTION
:MAX-HEIGHT
:MAX-WIDTH
:MESSAGE
:MESSAGE-ARGS
:MESSAGE-FONT
:MESSAGE-GAP
:MIN-HEIGHT
:MIN-WIDTH
:MNEMONIC
:MNEMONIC-ESCAPE
:MNEMONIC-TEXT
:MNEMONIC-TITLE
:NAME
:PANE-MENU
:PARENT
:PLIST
:PRESS-CALLBACK
:PRINT-FUNCTION
:RETRACT-CALLBACK
:SCROLL-CALLBACK
:SCROLL-HEIGHT
:SCROLL-HORIZONTAL-PAGE-SIZE
:SCROLL-HORIZONTAL-SLUG-SIZE
:SCROLL-HORIZONTAL-STEP-SIZE
:SCROLL-IF-NOT-VISIBLE-P
:SCROLL-INITIAL-X
:SCROLL-INITIAL-Y
:SCROLL-START-X
:SCROLL-START-Y
:SCROLL-VERTICAL-PAGE-SIZE
:SCROLL-VERTICAL-SLUG-SIZE
:SCROLL-VERTICAL-STEP-SIZE
:SCROLL-WIDTH
:SELECTED
:SELECTED-DISABLED-IMAGE
:SELECTED-IMAGE
:SELECTION-CALLBACK
:STOCK-ID
:TAKE-FOCUS
:TEXT
:TEXT-ALIGNMENT
:TITLE
:TITLE-ADJUST
:TITLE-ARGS
:TITLE-FONT
:TITLE-GAP
:TITLE-POSITION
:TOOLBAR
:TOOLBAR-CALLBACK
:TOOLBAR-TITLE
:VERTICAL-SCROLL
:VISIBLE-BORDER
:VISIBLE-HEIGHT
:VISIBLE-MAX-HEIGHT
:VISIBLE-MAX-WIDTH
:VISIBLE-MIN-HEIGHT
:VISIBLE-MIN-WIDTH
:VISIBLE-WIDTH
:WIDGET-NAME
:WIDTH
:WINDOW-STYLES
:X
:Y
|#


;;FROM MISC SECTIONS OF CAPI:USER-MAN AND CAPI:REF -------
#|
evaluate the following:
(APPLY-IN-PANE-PROCESS
 button #'(setf titled-object-title-font)
 (gp:merge-font-descriptions 
  (gp:make-font-description :size 42) 
  (GP:CONVERT-TO-FONT-DESCRIPTION 
   BUTTON 
   (titled-object-title-font button))) button)
Notice how the window automatically resizes in steps 2 and 3, to make allow-
ance for the new size of the title.


3.5  STREAM PANES
There are three subclasses of editor-pane which handle Common Lisp 
streams.
3.5.1  COLLECTOR PANES
A collector pane displays anything printed to the stream associated with it. 
Background output windows, for instance, are examples of collector panes.
1. (contain (make-instance 'collector-pane
                         :title "Example collector pane:"))
2. (princ "abc" (collector-pane-stream *))


4.1  THE CORRECT THREAD FOR CAPI OPERATIONS
All operations on displayed CAPI elements need to be in the thread (that is, 
the mp:process) that runs their interface. ON SOME PLATFORMS, DISPLAY AND 
CONTAIN MAKE A NEW THREAD. On Cocoa, all interfaces run in a single thread.

In most cases this issue does not arise, because CAPI CALLBACKS ARE RUN IN THE CORRECT THREAD. 
However, if your code needs to communicate with a CAPI win-
dow from a random thread, it should 
USE EXECUTE-WITH-INTERFACE, 
EXECUTE-WITH-INTERFACE-IF-ALIVE,
APPLY-IN-PANE-PROCESS OR 
APPLY-IN-PANE-PROCESS-IF-ALIVE to send the function to the correct thread.
This is why the brief interactive examples in this manual generally use exe-
cute-with-interface or apply-in-pane-process when modifying a dis-
played CAPI element. In contrast, the demo example in "Connecting an 
interface to an application" on page 102 is modified only by callbacks which 
run in the demo interface's own process, and so there is no need to use exe-
cute-with-interface or apply-in-pane-process.

5.1.3  THE BREAK GESTURE
If a CAPI window is busy and unresponsive you can use the break gesture 
Ctrl+Break to regain control.
Note that this break gesture is specific to the window system your CAPI pro-
gram is running in.

;;USING A SEPARATE THREAD FOR WORK-CALCULATIONS
;;
(defun MY-WORK-FUNCTION ()
  (let ((mbox (mp:ensure-process-mailbox)))
    ;; This should REALLY HAVE AN ERROR HANDLER.
    (loop (let ((EVENT (MP:PROCESS-READ-EVENT mbox
                        "Waiting for events")))
            (cond ((consp event)
                   (apply (car event) (cdr event)))
                  ((functionp event)
                   (funcall event)))))))
(setf *worker*
      (MP:PROCESS-RUN-FUNCTION "Worker process" ()
                               'my-work-function))
(defun change-text (win text)
  (APPLY-IN-PANE-PROCESS win
                         #'(SETF title-pane-text)
                         text win))
(defun my-callback (win)
  (mp:process-send
   *worker*
   #'(lambda ()
       (change-text win "Go")
       (loop
        for i from 0 to 20 do 
        (change-text win (format nil "~D" i)


;;FONTS
;;xxx
 13.1  SET OF PORTABLE FONT ATTRIBUTES
Attribute           Possible values            Comments
:family                   string             Values are not portable.
:weight       (member :normal :bold) 
:slant          (member :roman :italic) 
:size            (or (eql :any)  (integer 0 *)) 
:any                means a scalable font 
:stock     (member :system-font :system-fixed-font)   Stock fonts are guaranteed to exist.
:char-set                keyword 


SET-RICH-TEXT-PANE-CHARACTER-FORMAT    Function
SummarySets the character format.

Signature     set-rich-text-pane-character-format    pane  
attributes-plist => result
Arguments  pane    A rich-text-pane.
attributes-plist     A plist or :default.
Values  result    A plist.
Description   The function set-rich-text-pane-character-format sets current character attributes for text in pane.

(setq rtp 
      (capi:contain 
       (make-instance 
        'capi:rich-text-pane 
        :protected-callback 'ok-to-edit-p
        :CHARACTER-FORMAT 
        '(:size 14  :color :red)
        :visible-min-height 300
        :visible-min-width 400
        :PARAGRAPH-FORMAT 
        '(:start-indent 20 :offset -15)
        :text-limit 160
        :text (FORMAT nil "First paragraph.~%Second 
paragraph, a little longer.~%Another paragraph, which 
should be long long enough that it spans more than one 
line. ~%" ))))
Enter some characters

(setq rtp 
      (capi:contain 
       (make-instance 
        'capi:rich-text-pane 
        :visible-min-height 300
        :visible-min-width 400
        :paragraph-format 
        '(:start-indent 20 :offset -15)
        :text (format nil "First paragraph.~%Second 
paragraph, a little longer.~%Another paragraph, which 
should be long long enough that it spans more than one 
line. ~%" ))))

BUTTON-PANEL
Accessors   pane-layout
Description   The class button-panel inherits most of its behavior from 
CHOICE, which is an abstract class providing support for han-
dling items and selections. By default, a button panel has 
single selection interaction style (meaning that only one of 
the buttons can be selected at any one time), but this can be 
CHANGED BY SPECIFYING AN INTERACTION. 

The SUBCLASSES push-button-panel, radio-button-panel 
and check-button-panel are provided as convenience 
classes, but they are just button panels with different interac-
tions (:NO-SELECTION, :SINGLE-SELECTION AND 
:MULTIPLE-SELECTION RESPECTIVELY). 

The LAYOUT OF THE BUTTONS is controlled by a layout of class 
LAYOUT-CLASS (which defaults to row-layout) but this can be 
changed TO BE ANY OTHER CAPI LAYOUT. When the layout is cre-
ated, the list of initargs layout-args is passed to 

|#

;; -------------------------------- BUTTON  PANEL HELP ------------------------

;;XXX
#|
6.8.2 SELECTIONS

All choices have a selection. This is a state representing the items currently
selected. The selection is represented 
as a VECTOR OF OFFSETS INTO THE LIST of the choice’s items, 
unless it is 
a SINGLE-SELECTION CHOICE, in which case it is just represented AS AN OFFSET
.
The INITIAL SELECTION is controlled with the INITARG :SELECTION. 
The accessor CHOICE-SELECTION is provided.

Generally, it is EASIER to refer to the selection in terms of the items selected,
rather than by offsets, so the CAPI provides the 
notion of a SELECTED ITEM and
the SELECTED ITEMS. The first of these is the selected item in a single-selection
choice. The second is a list of the selected items in any choice.

The ACCESSORS CHOICE-SELECTED-ITEM and 
CHOICE-SELECTED-ITEMS provide access to these conceptual slots, 
and you can also SUPPLY THE VALUES at make-instance time 
via the initargs :selected-item and :selected-items







6.8.3 CALLBACKS
All choices can have callbacks associated with them. Callbacks are invoked
both by mouse button presses and keyboard gestures that change the selection
or are "Action Gestures" such as Return. Different sorts of gesture can have
different sorts of callback associated with them.
The following callbacks are available: :selection-callback, :retractcallback
(called when a deselection is made), :extend-callback, :actioncallback
(called when a double-click occurs) and :alternative-actioncallback
(called when a modified double-click occurs). What makes one
choice different from another is that they permit different combinations of
these callbacks. This is a consequence of the differing interactions. For example,
you cannot have an :extend-callback in a radio button panel, because
you cannot extend selection in one.
Callbacks pass data to the function they call. There are default arguments for
each type of callback. Using the :callback-type keyword allows you to
change these defaults. Example values of callback-type are :interface (which
causes the interface to be passed as an argument to the callback function),
:data (the value of the selected data is passed), :element (the element
containing the callback is passed) and :none (no arguments are passed). Also
there is a variety of composite :callback-type values, such as :datainterface
(which causes two arguments, the data and the interface, to be
passed). See the callbacks entry in the LispWorks CAPI Reference Manual for a
complete description of :callback-type values.
The following example uses a push button and a callback function to display
the arguments it receives.
|#
#|(defun show-callback-args (arg1 arg2)
  (display-message "The arguments were ~S and ~S" arg1 arg2))
(setq example-button
      (make-instance 'push-button
                     :text "Push Me"
                     :callback 'show-callback-args
                     :data "Here is some data"
                     :callback-type :data-interface))
(contain example-button)
Try changing the :callback-type to other values
|#
;;NOTE THE FOLLOWING BUTTON-PANEL AND CALLBACK WORK TO SET
;; VALUES FROM 0 TO 3 FOR BUTTONS Radio 1 to Radio 4
;;  INTEGER values accessed via (CAPI:CHOICE-SELECTION EXAMPLE-BUTTON-PANEL)
;; ARG1 ACCESSES THE TEXT SELECTION eg. "Radio 2"
#|(defun show-callback-args-and-selection-INTEGER  (arg1 arg2)
  (let
      ((item-selected)
       )
    (setf item-selected (capi:choice-selection example-button-panel))
  ;;(afout 'out (format nil "ARG1= ~S, ARG2= ~S~%ITEM-SELECTED= ~A~%" arg1 arg2 item-selected))
  (fout out)
  ))

(defun testbp ()
  (let ((x)  ;;(example-button-panel)
        )
        (setf example-button-panel
         (make-instance 'capi:radio-button-panel
    :items '("Radio 1" "Radio 2" "Radio 3" "Radio 4")
    :callback-type :data-interface
    :selection-callback 'show-callback-args-and-selection-INTEGER
                                   ;;was ;; 'show-callback-args ;; 'button-selection-callback
  ;;  :extend-callback    'button-extend-callback
   ;; :retract-callback   'button-retract-callback
                        :title "Push Me"
                       ;; :callback 'show-callback-args
                      ;;  :data "Here is some data"
                      ;;  :callback-type :data-interface
                        ))
        (capi:contain example-button-panel)
        ))|#
;;test
;;works, = ARG1= "Radio 3", ARG2= #<CAPI:INTERFACE "Container" 26E00823>  ITEM-SELECTED= 2

;;RADIO-BUTTON INITARGS LIST (from listener output)
 #|      (:CALLBACK-TYPE :ALTERNATIVE-ACTION-CALLBACK
 :ACTION-CALLBACK
 :RETRACT-CALLBACK :EXTEND-CALLBACK
 :SELECTION-CALLBACK
 :ITEMS
 :TEST-FUNCTION :KEY-FUNCTION
 :ITEMS-CALLBACK :DATA-FUNCTION :PRINT-FUNCTION 
:ITEMS-MAP-FUNCTION :ITEMS-GET-FUNCTION 
:ITEMS-COUNT-FUNCTION
 :DO-CACHE :ALTERNATING-BACKGROUND
 :SELECTED-ITEMS :SELECTED-ITEM :SELECTION
 :FOCUS-ITEM :INITIAL-FOCUS-ITEM 
 :KEEP-SELECTION-P
 :INTERACTION :FILTER
 :MESSAGE :MESSAGE-ARGS :MESSAGE-FONT :MESSAGE-GAP
 :MNEMONIC-TITLE :MNEMONIC
 :TITLE :TITLE-ARGS :TITLE-FONT
 :BUTTONS
 :TOOLBAR 
:TITLE-ADJUST :TITLE-GAP :TITLE-POSITION :PLIST ...)
|#





         
#|(progn 
  (let ((example-button)
        )
        (setf example-button
         (make-instance 'capi:push-button
                        :text "Push Me"
                        :callback 'show-callback-args
                        :data "Here is some data"
                        :callback-type :data-interface))
        (capi:contain example-button)))|#;;Try changing the :callback-type to other values
#|
6.8 GENERAL PROPERTIES OF CHOICES

If you do not use the :callback-type argument and you do not know what
the default is, you can define your callback function with lambda list (&rest
args) to account for all the arguments that might be passed.
Specifying a callback
|#

#|
;;from LW examples
(radio-button-panel
    capi:radio-button-panel
    :items '("Radio 1" "Radio 2" "Radio 3")
    :callback-type :data-interface
    :selection-callback 'button-selection-callback
    :extend-callback    'button-extend-callback
    :retract-callback   'button-retract-callback)
|#







;;xxx ---------------------------- EXTRA-- DELETE?? -----------------------------

  ;;sixth  row (bottom) color block
#|   (simple-layout-9
    capi:simple-layout
    '()
    :external-min-width *frame-internal-width  :external-max-width *frame-internal-width
    :external-min-height *border-width
    :background *fr-border-color)|#

  #| ;;SIDE COLOR BLOCKS
   ;;second row blocks
   (simple-layout-2
    capi:simple-layout
    '()
    :external-min-width *border-width  :external-max-width *border-width
    :external-min-height *title-pane-height
    :background *fr-border-color :visible-border nil)
   (simple-layout-3
    capi:simple-layout
    '()
    :external-min-width *border-width  :internal-max-width *border-width
    :internal-min-height *title-pane-height
    :background *fr-border-color :visible-border nil )

   ;;for row 
   (simple-layout-4
    capi:simple-layout
    '()
    :external-min-width *border-width  :external-max-width *border-width
    :external-min-height *instructions-pane-height
    :background *fr-border-color :visible-border nil)
   ;;for row 
   (simple-layout-5
    capi:simple-layout
    '()
    :external-min-width *border-width  :internal-max-width *border-width
    :internal-min-height *instructions-pane-height
    :background *fr-border-color :visible-border nil )
   ;;yyy

   ;;fourth  row color block -- left of button panel
   (simple-layout-6
    capi:simple-layout
    '()
    :external-min-width *button-left-color-block 
    :external-max-width *button-left-color-block
    :external-min-height *border-width
    :background *fr-border-color)

   ;;fourth row blocks  -- question text area
   (simple-layout-7
    capi:simple-layout
    '()
    :external-min-width *border-width :external-max-width *border-width
    :external-min-height *question-pane-height
    :background *fr-border-color)
   (simple-layout-8
    capi:simple-layout
    '()
    :external-min-width *border-width :external-max-width *border-width
    :external-min-height *question-pane-height
    :background *fr-border-color)
   ;;end layouts
|#

;;BACK-UP VERSION  -- LATER DELETE??
#|
(capi:define-interface frame-question-interface ()
  ()
  (:panes
   (title-rich-text-pane
    capi:rich-text-pane
    :character-format (list :face "times new roman"
                            :size  *title-pane-font-size 
                        :color *title-pane-font-color  :bold T :slant :roman  :underline nil )
    :paragraph-format  (list :alignment :center  ;; :left :right
                        ;;  :start-indent 5
                        :offset-indent 20
                        ;;  :relative-indent 1.0  ;;relative indent for rest of paragraphs
                        :tab-stops nil   ;;eg  (10 20 10)
                        :numbering nil 
                        ;;OR :bullet, :arabic, :lowercase,:uppercase, :lower-roman or :upper-roman.
                        )
    :visible-border T
    :visible-min-height *title-pane-height :visible-max-height *title-pane-height
    :external-min-width *title-pane-width  ;; :external-max-width *title-pane-width
 ;;   :foreground *title-pane-foreground 
    :background *title-pane-pane-background
    :text *title-area-text 
    )
   (instr-rich-text-pane
    capi:rich-text-pane
    :character-format  (list :face "times new roman" :size  *instr-pane-font-size                         :color *instr-pane-font-color
                        :bold T :slant :roman  :underline nil )
    :paragraph-format '(:alignment :center  ;; :left :right
                        ;;  :start-indent 5
                        :offset-indent 20
                        ;;  :relative-indent 1.0  ;;relative indent for rest of paragraphs
                        :tab-stops nil   ;;eg  (10 20 10)
                        :numbering nil 
                        ;;OR :bullet, :arabic, :lowercase,:uppercase, :lower-roman or :upper-roman.
                        )
    :visible-border T
    :visible-min-height *instr-pane-height :visible-max-height *instr-pane-height
    :external-min-width *instr-pane-width ;; :external-max-width *instr-pane-width
;;    :foreground *instr-pane-foreground 
    :background *instr-pane-background
    :text *instr-area-text 
    )
   (push-button-panel-1
    capi:push-button-panel
    ;;SSS START HERE FORMATING BUTTON PANEL
    :items '(previous-button  go-button)
    (list "   Go to PREVIOUS   " " Exit SHAQ " (format nil "~%        GO TO NEXT QUESTION ~%          "))
    ;;  :buttons   :button-class  
    ;;   :selection-callback 
    ;; :callbacks :callback-type  :action-callback
    ;; :items-callback  :items-count-function  :initial-focus
   ;;  :external-min-width *edit-pane-width ;; :external-max-width *edit-pane-width
    :visible-border nil
    :background *button-panel-background 
   :visible-min-height *button-pane-height
   :visible-min-width *button-pane-width
  ;;  :default-x  :default-y
   ;; :window-styles 
   ;; :title-font  :title-gap  :title  :name  :message-args :message-font
  
    )
   (quest-rich-text-pane
    capi:rich-text-pane
    :character-format (list :face "times new roman" :size *quest-pane-font-size
                        :color *quest-pane-font-color  :bold T :slant :roman  :underline nil )
    :paragraph-format '(:alignment :left ;; :center  ;; :left :right
                        ;;  :start-indent 5
                        :offset-indent 20
                        ;;  :relative-indent 1.0  ;;relative indent for rest of paragraphs
                        :tab-stops nil   ;;eg  (10 20 10)
                        :numbering nil 
                        ;;OR :bullet, :arabic, :lowercase,:uppercase, :lower-roman or :upper-roman.
                        )
    :visible-border T
    :visible-min-height *quest-pane-height :visible-max-height *quest-pane-height
    :visible-min-width *quest-pane-width ;; :visible-max-width *quest-pane-width
 ;;   :foreground *quest-pane-foreground 
    :background *quest-pane-background
    :text *quest-area-text 
    )
   (answer-button-panel
    capi:push-button-panel
#|    :character-format '(:face "times new roman" :size 12 ;;error  *pane3-font-size
                        :color :black :bold T :slant :roman  :underline nil )
    :paragraph-format '(:alignment :left ;; :center  ;; :left :right
                        ;;  :start-indent 5
                        :offset-indent 20
                        ;;  :relative-indent 1.0  ;;relative indent for rest of paragraphs
                        :tab-stops nil   ;;eg  (10 20 10)
                        :numbering nil 
                        ;;OR :bullet, :arabic, :lowercase,:uppercase, :lower-roman or :upper-roman.
                        )|#
    :visible-border T
    :visible-min-height *answer-pane-height :visible-max-height *answer-pane-height
    :visible-min-width *answer-pane-width ;; :visiblel-max-width *answer-pane-width
;;    :foreground *answer-pane-foreground 
    :background *answer-pane-background
  ;;   :text *answer-area-text 
    )
   ;;end panes
   )
  (:layouts
   ;;overall, column layout, 5 rows.
   (column-layout-1
    capi:column-layout ;; capi:grid-layout
    '( row-layout-1 row-layout-2 row-layout-3 row-layout-4) 
    )
  ;;was  '(simple-layout-1 row-layout-1 row-layout-2 row-layout-3 row-layout-4 simple-layout-7))
   ;;first row --title text
   (row-layout-1
    capi:row-layout
    '(title-rich-text-pane)
  ;;  :visible-min-height *title-pane-height
    )   
   ;;second row --instructions text
   (row-layout-2
    capi:row-layout
    '(instr-rich-text-pane )
 ;;   :visible-min-height *instructions-pane-height
    )  
   ;;third row -- push buttons
   (row-layout-3
    capi:row-layout
    '( push-button-panel-1)
    )
   ;;fourth row -- question text and answer buttons/text
   (row-layout-4
    capi:row-layout
    '( quest-rich-text-pane answer-button-panel)
 ;;   :visible-min-height *info-pane-height
  ;;  :background *fr-border-color
    ) 
   ;;end layouts
   )
  ;;menus
  (:menu-bar file-menu )
  (:menus
   (file-menu
    "File"
    (
     ("Select  Directory"
      :callback 'select-dir-callback
      :callback-type :interface)
     ("SAVE ALL SETTINGS"
      :callback 'save-settings-callback
      :callback-type :interface
      )
     ("Close"
      :callback 'close-frame-callback
      :callback-type :interface
      )
     ;;   photo-order-menu
     ;;   dir-or-file-order-menu
     )))
  ;;end new menus
  (:default-initargs
   :x *initial-x  :y *initial-y
   :visible-min-width *fr-visible-min-width
   ::visible-min-height *fr-visible-min-height
#|   :best-width *frame-internal-width
   :best-height *frame-internal-height|#
   :external-border  *external-border
   :internal-border *internal-border-width
   :window-styles '(:always-on-top)
   :layout 'column-layout-1
   :background *fr-border-color
   :title *shaq-frame-title  ;; "SHAQ FRAME TITLE"
   ))
|#

#|  ;;not valid CHECK  :items-callback '(previous-quest-frame-callback go-frame-callback)
    ;;was  (list "   Go to PREVIOUS   " " Exit SHAQ " (format nil "~%        GO TO NEXT QUESTION ~%          "))|#

#| error, not needed?   (setf test-layout-description-info (capi:layout-description 'answer-column-layout))
    ;;(afout 'out (format nil "XX test-layout-description-info= ~A~%" test-layout-description-info))|#
#|      (setf answer-array-list (eval answer-array)
            ans-instruction-text (eval instrs)
            ans-values-list (eval values))|#

          ;;  (capi:rich-text-pane-text quest-rich-text-pane question-text-formated)
                 ;;causes errorAPI::INITIAL-TEXT is missing from #<CAPI:RICH-TEXT-PANE QUEST-RICH-TEXT-PANE  23A5501B> (of class #<STANDARD-CLASS  CAPI:RICH-TEXT-PANE 20F13883>), when reading the value.
    ;; (setf (capi:rich-text-pane-text  quest-rich-text-pane )  question-text-formated )

         #|    (capi:rich-text-pane-text instr-rich-text-pane)  scale-instr-text)   |#       
        
#|        (if (string-equal selection-type "single")
            (setf (capi::layout-panes button-row-layout) '(previous-frame-button)))|#
        ;;not work (setf (capi-internals:enabled go-frame-button) NIL))
        ;;set the ans-instr-text
        ;;set the radio-button-panel items and ans-instr-text

        #|  (capi:set-button-panel-enabled-items
     controller1 :set t)|#
#| (setq list (capi:contain
               (make-instance 'capi:list-panel
                              :ITEMS '(:red :blue :green)
                              :SELECTED-ITEM :BLUE
                              :print-function
                              'string-capitalize)))
(capi:apply-in-pane-process
 layout #'(setf capi:layout-description)
 (list (make-instance 'capi:title-pane :text "Three")
       (make-instance 'capi:title-pane :text "Four")
       (make-instance 'capi:title-pane :text "Five"))
 layout)
|#


;;MAKE-QUESTION-FRAME
;;THIS VERSION WORKED WELL, EXCEPT POSSIBLE PROBLEM
;;   WITH PORTABILITY OF CHOICE-SELECTION TO NIL according to
;;  LW Hug feedback
;;
#|
(defun make-question-frame (qvar-string main-scale-sym previous-q-name)
  "In Frame-quest-functions.lisp.  Takes a qvar, gets a Q-VARLIST . Makes a frame and instance based upon that info."
  (let
      ((qvar (my-make-symbol qvar-string))
       (frame-name-text)
       (label) (spss-match ) (java-var) (q-num) (old-q-name ) (data-type) 
       (answer-panel) (array) (frame-title) ( fr-width) (fr-height) (java-file)
       (fr-answer-panel-sym)
       (fr-answer-panel-deflist)
       (instrs) (num-answers) (answer-array) (values) (selection-type) (data-type)  
       (reversed-item-p) (scored-reverse-p) (pre-selected-num)
       (ans-instruction-text)
       (answer-array-list)
       (ans-instr-text)
       (q-frame-inst)
     ;;  (scale-instr-text)
      (title-text)
       (instruction-text) ;;was (format nil "~%       SCALE INSTRUCTIONS GO HERE"))
      ;;doesn't work right  (format nil " ~V<~;SCALE INSTRUCTIONS GO HERE~;~;~>" *instr-text-width))
       (question-text-list)
       (question-text-formated)
       )
    ;;GATHER THE INFO NEEDED TO MAKE THE QUESTION FRAME
    ;;get the SCALE/SUBSCALE INFO
    (setf frame-name-text "Success and Happiness Questionnaire (SHAQ) QUESTIONS"
          scale-instr-text "EXAMPLE>> Instructions: How IMPORTANT is this to you?")

    ;;find the QUESTION VARIABLE LIST and values for all items in it
    (multiple-value-setq (label  spss-match  java-var  q-num  q-text-sym  data-type  answer-panel  array  frame-title   fr-width  fr-height  java-file)
        (get-quest-var-values qvar :return-values-p t))
    ;;(afout 'out (format nil "1 label= ~A  spss-match= ~A  java-var= ~A~%  q-num= ~A  q-text-sym= ~A  data-type= ~A~%  answer-panel= ~A~%  array= ~A~%" label  spss-match  java-var  q-num  q-text-sym  data-type  answer-panel  array ))
    
    ;;GET  QUESTION TEXT,  TITLE-TEXT,  INSTRUCTION-TEXT
    (multiple-value-setq (q-text-sym question-text-list title-text instruction-text)
        (get-question-text qvar))
    ;;creates one string with newlines--CAN USE  :character-format A plist. AND :paragraph-format A plist. TO add lines betw paragraphs, etc.
    ;;format them
    (setf question-text-formated (format-question-text q-num question-text-list :add-top-lines 2 :add-newlines 1 :justify-type :left :line-width  *quest-text-width)
          title-text (center-text title-text (- *fr-visible-min-width 80)))

    ;;get the FR-ANSWER-PANEL VARIABLES LIST
    (cond
     (label
      (setf fr-answer-panel-sym (my-make-symbol answer-panel))
      (if  fr-answer-panel-sym
          (setf fr-answer-panel-deflist (eval fr-answer-panel-sym)))
      (if  fr-answer-panel-deflist
          (multiple-value-setq (INSTRS num-answers ANSWER-ARRAY VALUES 
                                       selection-type data-type reversed-item-p 
                                       scored-reverse-p pre-selected-num)
              (get-answer-panel-keylist fr-answer-panel-deflist)))
     ;;(afout 'out (format nil "2 INSTRS= ~A~% num-answers= ~A~% ANSWER-ARRAY= ~A~% VALUES= ~A~% selection-type= ~A~% data-type= ~A~% reversed-item-p= ~A~% scored-reverse-p= ~A~% pre-selected-num= ~A~%" INSTRS num-answers ANSWER-ARRAY VALUES  selection-type data-type reversed-item-p scored-reverse-p pre-selected-num))

      ;;Use above vars to get INSTRUCTIONS, ANSWERS, VALUES, etc
      (setf answer-array-list (eval answer-array)
            ans-instruction-text (eval instrs)
            ans-values-list (eval values))
        ;;not needed?    ans-num-items (list-length answer-array-list))

      ;;(afout 'out (format nil "3 question-text-list= ~A~% answer-array-list= ~A~%ans-instruction-text= ~A~%ans-values-list= ~A~%title-text= ~A~%instruction-text= ~A~%question-text-formated= ~A~%"question-text-list  answer-array-list ans-instruction-text ans-values-list title-text instruction-text question-text-formated))

      (cond
       ((string-equal selection-type "single")
        (setf q-frame-inst (make-instance 'frame-quest-single-R-interface
                                          ;;args here
                                          :title frame-name-text
                                           ))
        (capi:display q-frame-inst))
       (t (setf q-frame-inst (make-instance 'frame-quest-multi-R-interface
                                            ;;args here
                                            :title frame-name-text
                                            ))
                  (capi:display q-frame-inst)))
       
      ;;MODIFY THE Q-FRAME-INST CONTENTS
      (with-slots (title-rich-text-pane instr-rich-text-pane 
                                        quest-rich-text-pane answer-button-panel
                                        go-frame-button previous-frame-button button-row-layout 
                                        answer-column-layout)  q-frame-inst
      ;;1-SET THE TITLE, INSTR, and QUESTION PANE TEXT
      (capi:apply-in-pane-process title-rich-text-pane
                   #'(setf capi:rich-text-pane-text) title-text  title-rich-text-pane )
        (capi:apply-in-pane-process instr-rich-text-pane
                   #'(setf capi:rich-text-pane-text) instruction-text  instr-rich-text-pane )
        (capi:apply-in-pane-process quest-rich-text-pane
                   #'(setf capi:rich-text-pane-text) question-text-formated quest-rich-text-pane )

      ;;SSS START HERE MAKING FRAMES W/ BUTTON PANELS
      (setf answer-button-panel 
            (make-radio-button-panel ans-instruction-text answer-array-list))
      (capi:apply-in-pane-process answer-column-layout
                                  #'(setf capi:layout-description)
                                          (list answer-button-panel)                                            
                                          answer-column-layout)

      ;;SSS START HERE   previous-q-name
      ;;Set button-panel with NO preselected buttons -- may cause extra firing of callback!!
      (capi:apply-in-pane-process answer-column-layout
                                  #'(setf capi:choice-selected-item)
                                          (list nil)                                            
                                          answer-button-panel)
  ;;model  (setf (capi:choice-selected-item answer-button-panel) nil)
  ;;yyy
    ;;set *current-qvar to qvar and *current-qvar-list so can access to this info in callbacks
    (setf *current-qvar  qvar
          ;;can I use CAPI:LAYOUT-DESCRIPTION NIL (CAPI:LAYOUT) instead??
          *current-button-panel answer-button-panel
          *current-qvar-list (list qvar-string :single q-text-sym q-num fr-answer-panel-sym num-answers  reversed-item-p scored-reverse-p))
      
        ;;display the frame-inst
        (capi:display q-frame-inst)
        ;;end with-slots
        )
      ;;end label clause
      )
     (t nil))
    q-frame-inst
    ))
|#

;;DELETE AFTER FINISH NEW VERSION??
;; THIS IS A WORKING SLIGHTLY MODIFIED SINGLE-SELECTION ONLY VERSION OF MAKE-QUESTION-FRAME
#|(defun make-question-frame (qvar-string main-scale-sym previous-q-name)
  "In Frame-quest-functions.lisp.  Takes a qvar, gets a Q-VARLIST . Makes a frame and instance based upon that info."
  (let
      ((qvar (my-make-symbol qvar-string))
       (frame-name-text)
       (label) (spss-match ) (java-var) (q-num) (old-q-name ) (data-type) 
       (answer-panel) (array) (frame-title) ( fr-width) (fr-height) (java-file)
       (fr-answer-panel-sym)
       (fr-answer-panel-deflist)
       (instrs) (num-answers) (answer-array) (values) (selection-type) (data-type)  
       (reversed-item-p) (scored-reverse-p) (pre-selected-num)
       (ans-instruction-text)
       (answer-array-list)
       (ans-instr-text)
       (q-frame-inst)
       ;;answer-button-layout -SPECIFIES SLOT NAME later in this function
     ;;  (scale-instr-text)
      (title-text)
      (title-text-formated)
       (instruction-text) 
       (instr-text-formated)
       (question-text-list)
       (question-text-formated)
       )
    ;;GATHER THE INFO NEEDED TO MAKE THE QUESTION FRAME
    ;;get the SCALE/SUBSCALE INFO
    (setf frame-name-text "Success and Happiness Questionnaire (SHAQ) QUESTIONS"
          scale-instr-text "EXAMPLE>> Instructions: How IMPORTANT is this to you?")

    ;;find the QUESTION VARIABLE LIST and values for all items in it
    (multiple-value-setq (label  spss-match  java-var  q-num  q-text-sym  data-type  answer-panel  array  frame-title   fr-width  fr-height  java-file)
        (get-quest-var-values qvar :return-values-p t))
    ;;(afout 'out (format nil "1 label= ~A  spss-match= ~A  java-var= ~A~%  q-num= ~A  q-text-sym= ~A  data-type= ~A~%  answer-panel= ~A~%  array= ~A~%" label  spss-match  java-var  q-num  q-text-sym  data-type  answer-panel  array ))
    
    ;;GET  QUESTION TEXT,  TITLE-TEXT,  INSTRUCTION-TEXT
    (multiple-value-setq (q-text-sym question-text-list title-text instruction-text)
        (get-question-text qvar))
    ;;creates one string with newlines--CAN USE  :character-format A plist. AND :paragraph-format A plist. TO add lines betw paragraphs, etc.

    ;;format the title-text, instr-text, question-text
    (setf  title-text-formated (format nil "~%~A" title-text)
#|           (format-string-list  (list title-text)
                                                    :add-top-lines 1 :add-newlines 1 :justify-type :left 
                                                    :line-width  (- *fr-visible-min-width 80)
                                                    :left-margin-spaces *title-text-left-margin-spaces)|#
           instr-text-formated  (format-string-list (list instruction-text)
                                                   :add-top-lines 1 :add-newlines 1 :justify-type :left 
                                                   :line-width  (- *fr-visible-min-width 80)
                                                   :left-margin-spaces *instr-text-left-margin-spaces)
           question-text-formated (format-question-text-list q-num question-text-list
                                                             :add-top-lines 2 :add-newlines 1
                                                             :justify-type :left
                                                             :left-margin-spaces *quest-text-left-margin-spaces
                                                             :line-width  *quest-text-width))
  ;;was        title-text (center-text title-text (- *fr-visible-min-width 80)))
         
    ;;get the FR-ANSWER-PANEL VARIABLES LIST
    (cond
     (label
      (setf fr-answer-panel-sym (my-make-symbol answer-panel))
      (if  fr-answer-panel-sym
          (setf fr-answer-panel-deflist (eval fr-answer-panel-sym)))
      (if  fr-answer-panel-deflist
          (multiple-value-setq (INSTRS num-answers ANSWER-ARRAY VALUES 
                                       selection-type data-type reversed-item-p 
                                       scored-reverse-p pre-selected-num)
              (get-answer-panel-keylist fr-answer-panel-deflist)))
    ;; (afout 'out (format nil "2 INSTRS= ~A~% num-answers= ~A~% ANSWER-ARRAY= ~A~% VALUES= ~A~% selection-type= ~A~% data-type= ~A~% reversed-item-p= ~A~% scored-reverse-p= ~A~% pre-selected-num= ~A~%" INSTRS num-answers ANSWER-ARRAY VALUES  selection-type data-type reversed-item-p scored-reverse-p pre-selected-num))

      ;;Use above vars to get INSTRUCTIONS, ANSWERS, VALUES, etc
      (setf answer-array-list (eval answer-array)
            ans-instruction-text (eval instrs)
            ans-values-list (eval values))
        ;;not needed?    ans-num-items (list-length answer-array-list))

      ;;(afout 'out (format nil "3 question-text-list= ~A~% answer-array-list= ~A~%ans-instruction-text= ~A~%ans-values-list= ~A~%title-text-formated= ~A~%instr-text-formated= ~A~%question-text-formated= ~A~%"question-text-list  answer-array-list ans-instruction-text ans-values-list title-text-formated instr-text-formated question-text-formated))

      ;;MAKE ANSWER-BUTTON-PANEL and QUEST FRAME INSTANCE
      (cond
       ((string-equal selection-type "single")
        (setf *call-shaq-question-single-callback-p T
              *single-selection-item T)

;; new version ============== SSS   ============ was later
;; MUST COME BEFORE INSTANCE DEFINED BECAUSE OF :BEFORE METHOD
         (make-answer-button-panel  ans-instruction-text answer-array-list 
                                   ans-values-list
                                   'answer-button-layout 'frame-quest-single-R-interface)
        (setf q-frame-inst (make-instance 'frame-quest-single-R-interface
                                          ;;args here
                                          :title frame-name-text
                                           ))
        (capi:display q-frame-inst))
       (t
        (setf *call-shaq-question-multi-callback-p T
              *single-selection-item NIL)
         (make-answer-button-panel  ans-instruction-text answer-array-list 
                                   ans-values-list
                                   'answer-button-layout 'frame-quest-multi-R-interface)
;;end new version ============
        (setf q-frame-inst (make-instance 'frame-quest-multi-R-interface
                                          ;;args here
                                          :title frame-name-text
                                           ))
        (capi:display q-frame-inst)))


 ;;  SSS    (break) I checked and the button panel is established at this point 
 ;; PROBLEM MUST BE BEFORE HERE   

      ;;MODIFY THE Q-FRAME-INST CONTENTS
      (with-slots (title-rich-text-pane instr-rich-text-pane 
                                        quest-rich-text-pane    ;;was answer-button-panel
                                        go-frame-button previous-frame-button button-row-layout 
                                        quest-ans-row-layout
                                        answer-button-layout)  q-frame-inst
      ;;1-SET THE TITLE, INSTR, and QUESTION PANE TEXT
      (capi:apply-in-pane-process title-rich-text-pane
                   #'(setf capi:rich-text-pane-text) title-text-formated  title-rich-text-pane )
        (capi:apply-in-pane-process instr-rich-text-pane
                   #'(setf capi:rich-text-pane-text) instr-text-formated  instr-rich-text-pane )
        (capi:apply-in-pane-process quest-rich-text-pane
                   #'(setf capi:rich-text-pane-text) question-text-formated quest-rich-text-pane )
    ;;    (afout (format nil "1 (capi:simple-pane-visible-height 'answer-button-layout)= ~A" (capi:simple-pane-visible-height answer-button-layout)))

;;THIS WAS OLD VERSION -- portability problem with choice-selection to nil??
#|
      (setf answer-button-panel 
            (make-radio-button-panel ans-instruction-text answer-array-list))
      (capi:apply-in-pane-process answer-column-layout
                                  #'(setf capi:layout-description)
                                          (list answer-button-panel)                                            
                                          answer-column-layout)

      ;;SSS START HERE   previous-q-name
      ;;Set button-panel with NO preselected buttons -- may cause extra firing of callback!!
      (capi:apply-in-pane-process answer-column-layout
                                  #'(setf capi:choice-selected-item)
                                          (list nil)                                            
                                          answer-button-panel)
 |#
  ;;model  (setf (capi:choice-selected-item answer-button-panel) nil)
  ;;yyy
    ;;set *current-qvar to qvar and *current-qvar-list so can access to this info in callbacks
    (setf *current-qvar  qvar
          ;;can I use CAPI:LAYOUT-DESCRIPTION NIL (CAPI:LAYOUT) instead??
         ;; *current-button-panel answer-button-panel
          *current-qvar-list (list qvar-string :single q-text-sym q-num fr-answer-panel-sym num-answers  reversed-item-p scored-reverse-p))
      
        ;;display the frame-inst
        (capi:display q-frame-inst)
      ;;  (afout (format nil "2 (capi:simple-pane-visible-height 'answer-button-layout)= ~A" (capi:simple-pane-visible-height 'answer-button-layout)))
        ;;end with-slots
        )
      ;;end label clause
      )
     (t nil))
    q-frame-inst
    ))|#

;;MORE TO DELETE 

;;SET THE GLOBAL VARIABLES
;;  (set-global-question-variables)

;; EXPERIMENTAL -- DROPPING MIDDLE LAYOUT FOR BUTTONS
;;  BEC CANT GET TEXT TO APPEAR
;;
#|(capi:define-interface frame-quest-single-R-interface ()
  ((selected-item-datalist
    :initarg :selected-item-datalist
    :accessor selected-item-datalist
    :initform nil
    :type :list
    :documentation "Data from selected item")
   )
  (:PANES
   ;;TITLE-RICH-TEXT-PANE xxx
   (title-rich-text-pane
    capi:rich-text-pane
    :character-format (list ;; :face *title-pane-font-face
                            :size  *title-pane-font-size 
                           ;; :color *title-pane-font-color
                            :bold T :slant :roman  :underline nil )
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
 ;;text done elsewhere  :text *title-area-text 
  ;;doesn't work :y 10
    )
   ;;INSTR-RICH-TEXT-PANE
   (instr-rich-text-pane
    capi:rich-text-pane
    :character-format  (list ;; :face *instr-pane-font-face 
                             :size  *instr-pane-font-size  
                          ;;   :color *instr-pane-font-color
                             :bold T :slant :roman  :underline nil )
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
    :visible-min-height *instr-pane-height :visible-max-height *instr-pane-height
    :external-min-width *instr-pane-width ;; :external-max-width *instr-pane-width
 ;;   :foreground *instr-pane-foreground 
    :background *instr-pane-background
 ;;text done elsewhere   :text  (format nil "~%   ~A  " *instr-area-text)
    )

   ;;QUESTION-RICH-TEXT-PANE xxx
   (quest-rich-text-pane
    capi:rich-text-pane
    :character-format (list  ;; :face *quest-pane-font-face
                            :size *quest-pane-font-size
                          ;;  :color *quest-pane-font-color
                            :bold *quest-pane-font-weight
                           :slant :roman  :underline nil )
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
  ;;  :visible-min-height *quest-pane-height :visible-max-height *quest-pane-height
    :visible-min-width *quest-pane-width ;; :visible-max-width *quest-pane-width
;;    :foreground *quest-pane-foreground 
    :background *quest-pane-background
 ;;   :text *quest-area-text 
    )
#|   (answer-button-panel
    capi:radio-button-panel
    )|#
   (previous-frame-button
    capi:push-button
    :background *previous-frame-button-background
    :text  *previous-frame-button-text
    :internal-min-width  *previous-frame-button-width
    :internal-min-height  *previous-frame-button-height
    :default-x *previous-frame-button-x
    :default-y *previous-frame-button-y
    :font  *previous-frame-button-font
    :callback 'previous-quest-frame-callback
    :callback-type :interface
    ;;was (gp:make-font-description :size *button-font-size  :weight :bold) ;; :slant :italic)
    ;;doesn't work    :character-format *title-pane-char-format
    ;;doesn't work?    :x 20   :y 20
    )
   ;;end panes
   )
   
  (:layouts
   ;;overall, column layout, 5 rows.
   (column-layout-1
    capi:column-layout ;; capi:grid-layout
    '(row-layout-1 row-layout-2 button-row-layout  quest-ans-row-layout) 
    )
   ;;first row --title text
   (row-layout-1
    capi:row-layout
    '(title-rich-text-pane)
    ;;  :visible-min-height *title-pane-height
    )   
   ;;second row --instructions text
   (row-layout-2
    capi:row-layout
    '(instr-rich-text-pane )
    ;;   :visible-min-height *instructions-pane-height
    )  
   ;;third row -- push buttons
   (button-row-layout
    capi:row-layout
     '(previous-frame-button) ;;  go-frame-button)    ;;left-button-filler-pane
  ;;  :visible-border *button-panel-visible-border
    :background *button-panel-background 
    :visible-min-height (- *button-pane-height 10)
    :visible-min-width *button-pane-width
    ;;  :x-adjust :center
    :y-adjust :center
 ;;    :x-ratios '(1.0   1.5)
   ;; :x-gap 400
    :visible-border nil
   )
   ;;fourth row -- question text and answer buttons/text
   ;;QUEST-ANS-ROW-LAYOUT
   (quest-ans-row-layout
    capi:row-layout
    '( quest-rich-text-pane  answer-button-layout) ;;was answer-button-panel)
    ;;   :visible-min-height *info-pane-height
    ;;  :background *fr-border-color
  ;;  :visible-min-height *answer-pane-height
  ;;  :visible-max-height *answer-pane-height
 ;;   :visible-min-width  (- *fr-visible-min-width (* 2 *fr-internal-border)) ;; :visiblel-max-width *answer-pane-width
    :background  *answer-pane-background
    ) 
  (answer-button-layout
    capi:row-layout
    ()
    :internal-border 10
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
   ))|#


#| ORIGINAL BEFORE EXPERIMENT
;;FRAME-QUEST-SINGLE-R-INTERFACE
;;
;;ddd
(capi:define-interface frame-quest-single-R-interface ()
  ((selected-item-datalist
    :initarg :selected-item-datalist
    :accessor selected-item-datalist
    :initform nil
    :type :list
    :documentation "Data from selected item")
   )
  (:PANES
   ;;TITLE-RICH-TEXT-PANE xxx
   (title-rich-text-pane
    capi:rich-text-pane
    :character-format (list :face *title-pane-font-face
                            :size  *title-pane-font-size 
                            :color *title-pane-font-color  :bold T :slant :roman  :underline nil )
    :paragraph-format  (list :alignment :center  ;; :left :right
                             ;;  :start-indent 5
                             :offset-indent 20
                             ;;  :relative-indent 1.0  ;;relative indent for rest of paragraphs
                             :tab-stops  '(5 10 15 20)
                             :numbering nil 
                             ;;OR :bullet, :arabic, :lowercase,:uppercase, :lower-roman or :upper-roman.
                             )
    :visible-border T
;;    :internal-border 20
    :visible-min-height *title-pane-height  :visible-max-height *title-pane-height
    :external-min-width *title-pane-width  ;; :external-max-width *title-pane-width
;;    :foreground *title-pane-foreground 
    :background *title-pane-pane-background
   :text *title-area-text 
    )
   ;;INSTR-RICH-TEXT-PANE
   (instr-rich-text-pane
    capi:rich-text-pane
    :character-format  (list :face *instr-pane-font-face 
                             :size  *instr-pane-font-size  
                             :color *instr-pane-font-color
                             :bold nil:slant :roman  :underline nil )
    :paragraph-format '(:alignment :center  ;; :left :right
                        ;;  :start-indent 5
                        :offset-indent 10
                        ;;  :relative-indent 1.0  ;;relative indent for rest of paragraphs
                        :tab-stops  '(5 10 15 20)
                        :numbering nil 
                        ;;OR :bullet, :arabic, :lowercase,:uppercase, :lower-roman or :upper-roman.
                        )
    :visible-border T
;;    :internal-border 20
    :visible-min-height *instr-pane-height :visible-max-height *instr-pane-height
    :external-min-width *instr-pane-width ;; :external-max-width *instr-pane-width
 ;;   :foreground *instr-pane-foreground 
    :background *instr-pane-background
    :text *instr-area-text 
    )

   ;;QUESTION-RICH-TEXT-PANE xxx
   (quest-rich-text-pane
    capi:rich-text-pane
    :character-format (list :face *quest-pane-font-face :size *quest-pane-font-size
                            :color *quest-pane-font-color  :bold nil:slant :roman  :underline nil )
    :paragraph-format '(:alignment :left ;; :center  ;; :left :right
                        ;;  :start-indent 5
                        :offset-indent 10
                        ;;  :relative-indent 1.0  ;;relative indent for rest of paragraphs
                        :tab-stops nil   ;;eg  (10 20 10)
                        :numbering nil 
                        ;;OR :bullet, :arabic, :lowercase,:uppercase, :lower-roman or :upper-roman.
                        )
    :visible-border T
    :visible-min-height *quest-pane-height :visible-max-height *quest-pane-height
    :visible-min-width *quest-pane-width ;; :visible-max-width *quest-pane-width
;;    :foreground *quest-pane-foreground 
    :background *quest-pane-background
 ;;   :text *quest-area-text 
    )
   (answer-button-panel
    capi:radio-button-panel
    )
   (previous-frame-button
    capi:push-button
    :background *previous-frame-button-background
    :text  *previous-frame-button-text
    :internal-min-width  *previous-frame-button-width
    :internal-min-height  *previous-frame-button-height
    :default-x *previous-frame-button-x
    :default-y *previous-frame-button-y
    :font  *previous-frame-button-font
    :callback 'previous-quest-frame-callback
    :callback-type :interface
    ;;was (gp:make-font-description :size *button-font-size  :weight :bold) ;; :slant :italic)
    ;;doesn't work    :character-format *title-pane-char-format
    ;;doesn't work?    :x 20   :y 20
    )
#|was (answer-button-panel
    capi:radio-button-panel
    #|    :character-format '(:face "times new roman" :size 12 ;;error  *pane3-font-size
                        :color :black :bold T :slant :roman  :underline nil )
    :paragraph-format '(:alignment :left ;; :center  ;; :left :right
                        ;;  :start-indent 5
                        :offset-indent 20
                        ;;  :relative-indent 1.0  ;;relative indent for rest of paragraphs
                        :tab-stops nil   ;;eg  (10 20 10)
                        :numbering nil 
                        ;;OR :bullet, :arabic, :lowercase,:uppercase, :lower-roman or :upper-roman.
                        )|#
    :items '(9 8 7 6 5 4 3 2 1)
   :layout-class 'capi:column-layout
    :layout-args '(:adjust :center :x 25 :y 25 :y-gap 20 :internal-border 25)
    :visible-border T
    :visible-min-height *answer-pane-height :visible-max-height *answer-pane-height
    :visible-min-width *answer-pane-width ;; :visiblel-max-width *answer-pane-width
;;    :foreground *answer-pane-foreground 
    :background *answer-pane-background
    :selected-items nil
    ;;   :text *answer-area-text 
    )|#
   )
   
  (:layouts
   ;;overall, column layout, 5 rows.
   (column-layout-1
    capi:column-layout ;; capi:grid-layout
    '(row-layout-1 row-layout-2 button-row-layout  quest-ans-row-layout) 
    )
   ;;was  '(simple-layout-1 row-layout-1 row-layout-2 row-layout-3 row-layout-4 simple-layout-7))
   ;;first row --title text
   (row-layout-1
    capi:row-layout
    '(title-rich-text-pane)
    ;;  :visible-min-height *title-pane-height
    )   
   ;;second row --instructions text
   (row-layout-2
    capi:row-layout
    '(instr-rich-text-pane )
    ;;   :visible-min-height *instructions-pane-height
    )  
   ;;third row -- push buttons
   ;;yyy
   (button-row-layout
    capi:row-layout
     '(previous-frame-button) ;;  go-frame-button)    ;;left-button-filler-pane
  ;;  :visible-border *button-panel-visible-border
    :background *button-panel-background 
    :visible-min-height (- *button-pane-height 10)
    :visible-min-width *button-pane-width
    ;;  :x-adjust :center
    :y-adjust :center
 ;;    :x-ratios '(1.0   1.5)
    :x-gap 400
    :visible-border nil
#|   USE LONLY FOR BUTTON-PANELS Can't use button-panels for capi:button class
    :layout-class 'capi:row-layout
   :layout-args '( :x-adjust  :center :x-gap 100 :fixed-size nil )|#
    ;;  :buttons   :button-class  
    ;;   :selection-callback 
    ;; :callbacks :callback-type  :action-callback
    ;; :items-callback  :items-count-function  :initial-focus
    ;;  :external-min-width *edit-pane-width ;; :external-max-width *edit-pane-width
    ;;  :default-x  :default-y
    ;; :window-styles 
    ;; :title-font  :title-gap  :title  :name  :message-args :message-font
   )
   ;;AAA QUEST-ANS-ROW-LAYOUT
   ;;fourth row -- question text and answer buttons/text
   (quest-ans-row-layout
    capi:row-layout
    '( quest-rich-text-pane  answer-button-layout) ;;was answer-button-panel)
    ;;   :visible-min-height *info-pane-height
    ;;  :background *fr-border-color
    :visible-min-height *answer-pane-height
    :visible-max-height *answer-pane-height
  ;;  :visible-min-width (- *fr-visible-min-width 30) ;; :visiblel-max-width *answer-pane-width
    :background *answer-pane-background
    ) 
   (answer-button-layout
    capi:column-layout
    ()
    :visible-min-height *answer-pane-height
    :visible-max-height *answer-pane-height
    :visible-min-width *answer-pane-width ;; :visiblel-max-width *answer-pane-width
    :background *answer-pane-background
    )
   ;;used with other make-button-panel
   #|(answer-column-layout
    capi:column-layout
    '(answer-button-panel)
    :visible-min-height *answer-pane-height :visible-max-height *answer-pane-height
    :visible-min-width *answer-pane-width ;; :visiblel-max-width *answer-pane-width
    :background *answer-pane-background
    )|#
   ;;end layouts
   )
  ;;MENUS
  (:menu-bar help-menu )
  (:menus
   (help-menu
    "SHAQ Help"
    (
     ("Question Help"
      :callback 'question-help-callback
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
   ::visible-min-height *fr-visible-min-height
   #|   :best-width *frame-internal-width
   :best-height *frame-internal-height|#
   :external-border  *external-border
   :internal-border *internal-border-width
   :window-styles '(:always-on-top)
   :layout 'column-layout-1
   :background *fr-border-color
   :title *shaq-frame-title  ;; "SHAQ FRAME TITLE"
   ))
|#



;;------ TEST AREA --------- HELP ----------------------
#|
;;THIS ONLY uses popup, can't use in a frame??
(capi:prompt-for-integer
"Enter an integer in the inclusive range [10,20]:"
:min 10 :max 20)
|#

;; (afout 'out (format nil "This is a test of x= ~A" 99))



;; DELETE IF NEW ONE WORKS
#|
(defun make-question-frame (qvar-string main-scale-sym previous-q-name 
                                        &key (selection-type :single-selection) quest-frame)
  "In Frame-quest-functions.lisp.  Takes a qvar, gets a Q-VARLIST . Makes a frame and instance based upon that info."
  (let
      ((qvar (my-make-symbol qvar-string))
       (frame-name-text)
       (label) (spss-match ) (java-var) (q-num) (old-q-name ) (data-type) 
       (answer-panel) (array) (frame-title) ( fr-width) (fr-height) (java-file)
       (fr-answer-panel-sym)
       (fr-answer-panel-deflist)
       (instrs) (num-answers) (answer-array) (values)
     ;;now an arg above (selection-type) 
       (data-type)  
       (reversed-item-p) (scored-reverse-p) (pre-selected-num)
       (ans-instruction-text)
       (answer-array-list)
       (ans-instr-text)
       (q-frame-inst)
       ;;answer-button-layout -SPECIFIES SLOT NAME later in this function
     ;;  (scale-instr-text)
      (title-text) ;;for top-center title area
      (title-text-formated)
       (instruction-text) 
       (instr-text-formated)
       (question-text-list)
       (question-text-formated)
       (single-sel-test-list
        (list 'single :single-selection "single""SINGLE"))
       (multi-sel-test-list   
        (list 'multiple 'multi "multiple" "MULTIPLE" :multiple-selection))
       )
    ;;(afout 'out (format nil "BEGINNING MAKE-QUESTION-FRAME, for qvar= ~A~% selection-type= ~A~% "qvar selection-type))
    ;;GATHER THE INFO NEEDED TO MAKE THE QUESTION FRAME
    ;;get the SCALE/SUBSCALE INFO
    
    (setf frame-name-text "Success and Happiness Questionnaire (SHAQ) QUESTIONS"
          scale-instr-text "EXAMPLE>> Instructions: How IMPORTANT is this to you?")

    (cond
     ((member selection-type (member selection-type single-sel-test-list :test 'equal ))
      ;;find the QUESTION VARIABLE LIST and values for all items in it
      (multiple-value-setq (label  spss-match  java-var  q-num  q-text-sym  data-type  answer-panel  array  frame-title   fr-width  fr-height  java-file)
          (get-quest-var-values qvar :return-values-p t))
      ;;(afout 'out (format nil "1 SINGLE-SEL CLAUSE:  label= ~A  spss-match= ~A  java-var= ~A~%  q-num= ~A  q-text-sym= ~A  data-type= ~A~%  answer-panel= ~A~%  array= ~A~%" label  spss-match  java-var  q-num  q-text-sym  data-type  answer-panel  array ))
    
      ;;GET  QUESTION TEXT,  TITLE-TEXT,  INSTRUCTION-TEXT
      (multiple-value-setq (q-text-sym question-text-list title-text instruction-text)
          (get-question-text qvar))
      ;;creates one string with newlines--CAN USE  :character-format A plist. AND :paragraph-format A plist. TO add lines betw paragraphs, etc.
    
      ;;end single-selection type
      )
     ((member selection-type multi-sel-test-list :test 'equal)
      ;;find the LIST OF QUESTION VARIABLE LISTS
      (setf *qvar-category qvar-string 
            *multi-selection-qvar-list (get-multi-selection-quest-var-values qvar-string))
      ;;(afout 'out (format nil "*MULTI-SELECTION-QVAR-LIST= ~A~%" *multi-selection-qvar-list))
      (setf  q-text-sym (getf *multi-selection-qvar-list :primary-qvar-sym)
            qvar (my-make-symbol  (getf *multi-selection-qvar-list :primary-qvar-sym))
            label (getf *multi-selection-qvar-list :primary-qvar-label)
            ;; q-name (getf *multi-selection-qvar-list  :primary-qvar-sym
            title-text (getf *multi-selection-qvar-list :primary-title-text)
            instruction-text  (getf *multi-selection-qvar-list :primary-instr-text)
            q-num  (getf *multi-selection-qvar-list :qnum)
            question-text-list  (getf *multi-selection-qvar-list :quest-text-list)
            qvar-name-list  (getf *multi-selection-qvar-list    :ans-name-list)
            ans-text-list  (getf *multi-selection-qvar-list  :ans-text-list)
            quest-data-list  (getf *multi-selection-qvar-list :ans-data-list)
            num-answers  (getf *multi-selection-qvar-list  :num-answers)
            )
      ;;test (setf xx (list :a 1 :b 2))  (getf  xx :b)

      ;;for compatibility with vertical-buttons, single-selection, etc.REPLACE ABOVE?
      (setf ans-instruction-text "Select ALL that apply to you"
            answer-array-list ans-text-list
            ans-values-list  quest-data-list
            reversed-item-p nil  scored-reverse nil
            ;;use another scheme for numbering???
            pre-selected-num q-num)

      ;;(afout 'out (format nil "*multi-selection-qvar-list ~A~% answer-array-list= ~A~%" *multi-selection-qvar-list answer-array-list))

      ;;VARS ABOVE SHOULD INCLUDE/MATCH SINGLE-SELECTION VARS BELOW
      ;; (label  spss-match  java-var  q-num  q-text-sym  data-type  answer-panel  array  frame-title 
      ;;(q-text-sym question-text-list title-text instruction-text)            
      ;;note: *multi-selection-qvar-list = ( :qvar-category :primary-qvar-sym  :primary-qvar-label :primary-title-text :primary-instr-text :quest-text-list :q-spss-name :ans-name-list (SPSS VAR NAME each item) ans-text-list :num-answers  :primary-title-text :primary-instr-text :quest-text-list  :qnum  :data-type :ans-data-list  :primary-java-var :primary-spss-match :spss-match-list :java-var-list)      
      ;;from below also need (INSTRS num-answers ANSWER-ARRAY VALUES  selection-type data-type reversed-item-p scored-reverse-p pre-selected-num)      
      ;; (last '("bio4job" "b-Primary occupation" "spss-match" ("bio4job")("INSTRUCTIONS: Select ALL of the following best describe your primary OCCUPATION." "If you have multiple occupations, choose all of them.")  (  ) :MULTI-ITEM))
      ;;      (setf answer-array-list  ans-instruction-text ans-values-list 

      ;;end multiple-selection type
      )
      (t (format t "SELECTION-TYPE UNSPECIFIED")))

    ;;FORMAT THE TITLE-TEXT, INSTR-TEXT, QUESTION-TEXT
    (setf  title-text-formated (format nil "~%~A" title-text)
          #| (format-string-list  (list title-text)
                                                    :add-top-lines 1 :add-newlines 1 :justify-type :left 
                                                    :line-width  (- *fr-visible-min-width 80)
                                                    :left-margin-spaces *title-text-left-margin-spaces)|#
           instr-text-formated  (format-string-list (list instruction-text)
                                                   :add-top-lines 1 :add-newlines 1 :justify-type :left 
                                                   :line-width  (- *fr-visible-min-width 80)
                                                   :left-margin-spaces *instr-text-left-margin-spaces)
           question-text-formated (format-question-text-list q-num question-text-list
                                                             :add-top-lines 2 :add-newlines 1
                                                             :justify-type :left
                                                             :left-margin-spaces *quest-text-left-margin-spaces
                                                             :line-width  *quest-text-width))
  ;;was        title-text (center-text title-text (- *fr-visible-min-width 80)))
         
    ;;get the FR-ANSWER-PANEL VARIABLES LIST (for single-selection only)
    (cond
     ((and label (member selection-type single-sel-test-list :test 'equal))
      (setf fr-answer-panel-sym (my-make-symbol answer-panel))
      (if  fr-answer-panel-sym
          (setf fr-answer-panel-deflist (eval fr-answer-panel-sym)))
      (if  fr-answer-panel-deflist
          (multiple-value-setq (INSTRS num-answers ANSWER-ARRAY VALUES 
                                       selection-type data-type reversed-item-p 
                                       scored-reverse-p pre-selected-num)
              (get-answer-panel-keylist fr-answer-panel-deflist)))
    ;;(afout 'out (format nil "2 INSTRS= ~A~% num-answers= ~A~% ANSWER-ARRAY= ~A~% VALUES= ~A~% selection-type= ~A~% data-type= ~A~% reversed-item-p= ~A~% scored-reverse-p= ~A~% pre-selected-num= ~A~%" INSTRS num-answers ANSWER-ARRAY VALUES  selection-type data-type reversed-item-p scored-reverse-p pre-selected-num))

      ;;Use above vars to get INSTRUCTIONS, ANSWERS, VALUES, etc
      (setf answer-array-list (eval answer-array)
            ans-instruction-text (eval instrs)
            ans-values-list (eval values))
        ;;not needed?    ans-num-items (list-length answer-array-list))
     ;;end single-selection
     )
     ;;multiple-selection vars all found above
     (t nil))
      ;;(afout 'out (format nil "3 question-text-list= ~A~% answer-array-list= ~A~%ans-instruction-text= ~A~%ans-values-list= ~A~%title-text-formated= ~A~%instr-text-formated= ~A~%question-text-formated= ~A~%"question-text-list  answer-array-list ans-instruction-text ans-values-list title-text-formated instr-text-formated question-text-formated))

      ;;MAKE ANSWER-BUTTON-PANEL and QUEST FRAME INSTANCE
      (cond
       ;;for single-selection frames
       ((member selection-type single-sel-test-list  :test 'equal)
        (setf *call-shaq-question-single-callback-p T
              *single-selection-item T)

;; MUST COME BEFORE INSTANCE DEFINED BECAUSE OF :BEFORE METHOD
        (make-answer-button-panel  ans-instruction-text answer-array-list 
                                   ans-values-list
                                   'answer-button-layout 'frame-quest-single-R-interface)

          (setf q-frame-inst (make-instance 'frame-quest-single-R-interface
                                            ;;args here
                                            :title frame-name-text
                                            ))

        (capi:display q-frame-inst))

;;AAA
       ;;for multiple-selection frames
       (t
        (setf *call-shaq-question-multi-callback-p T
              *single-selection-item NIL)
        ;;(afout 'out (format nil "4 question-text-list= ~A~% answer-array-list= ~A~%ans-instruction-text= ~A~%ans-values-list= ~A~%title-text-formated= ~A~%instr-text-formated= ~A~%question-text-formated= ~A~%"question-text-list  answer-array-list ans-instruction-text ans-values-list title-text-formated instr-text-formated question-text-formated))

         (make-answer-button-panel  ans-instruction-text answer-array-list 
                                   ans-values-list
                                   'answer-button-layout 'frame-quest-multi-R-interface
                                   :selection-type 'multiple)

        (setf q-frame-inst (make-instance 'frame-quest-multi-R-interface
                                          ;;args here
                                          :title frame-name-text
                                           ))

        ;;NOTE--MUST display BEFORE apply-in-pane-process
        (capi:display q-frame-inst)))

      ;;MODIFY THE Q-FRAME-INST CONTENTS
      (with-slots (title-rich-text-pane instr-rich-text-pane 
                                        quest-rich-text-pane   
                                        go-frame-button previous-frame-button 
                                        button-row-layout 
                                        quest-ans-row-layout
                                        answer-button-layout)  q-frame-inst
      ;;1-SET THE TITLE, INSTR, and QUESTION PANE TEXT
      (capi:apply-in-pane-process title-rich-text-pane
                   #'(setf capi:rich-text-pane-text) title-text-formated  title-rich-text-pane )
        (capi:apply-in-pane-process instr-rich-text-pane
                   #'(setf capi:rich-text-pane-text) instr-text-formated  instr-rich-text-pane )
        (capi:apply-in-pane-process quest-rich-text-pane
                   #'(setf capi:rich-text-pane-text) question-text-formated quest-rich-text-pane )
    ;;    (afout (format nil "1 (capi:simple-pane-visible-height 'answer-button-layout)= ~A" (capi:simple-pane-visible-height answer-button-layout)))

;;THIS WAS OLD VERSION -- portability problem with choice-selection to nil??
#|
      (setf answer-button-panel 
            (make-radio-button-panel ans-instruction-text answer-array-list))
      (capi:apply-in-pane-process answer-column-layout
                                  #'(setf capi:layout-description)
                                          (list answer-button-panel)                                            
                                          answer-column-layout)
      ;;Set button-panel with NO preselected buttons -- may cause extra firing of callback!!
      (capi:apply-in-pane-process answer-column-layout
                                  #'(setf capi:choice-selected-item)
                                          (list nil)                                            
                                          answer-button-panel)
 |#
  ;;model  (setf (capi:choice-selected-item answer-button-panel) nil)
  ;;yyy
    ;;set *current-qvar to qvar and *current-qvar-list so can access to this info in callbacks
    (setf *current-qvar  qvar
          ;;can I use CAPI:LAYOUT-DESCRIPTION NIL (CAPI:LAYOUT) instead??
         ;; *current-button-panel answer-button-panel
          *current-qvar-list (list qvar-string :single q-text-sym q-num fr-answer-panel-sym num-answers  reversed-item-p scored-reverse-p))
      
        ;;display the frame-inst
        (capi:display q-frame-inst)
      ;;  (afout (format nil "2 (capi:simple-pane-visible-height 'answer-button-layout)= ~A" (capi:simple-pane-visible-height 'answer-button-layout)))
        ;;end with-slots
        )

    q-frame-inst
    ;;end make-question-frame
    ))
|#



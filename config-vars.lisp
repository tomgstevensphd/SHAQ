;; ********************* config-vars.lisp ************************
;;

;;GENERAL SHAQ GLOBAL VARIABLES
;;
;; MOVED FROM CONFIG-SHAQ.LISP and U-SHAQ-MANAGEMENT FOR DELIVERY
;;
;;MAIN DATA LISTS
(defparameter  *shaq-data-list nil "data list of lists= (qvar :single q-text-sym q-num fr-answer-panel-sym num-answers  reversed-item-p scored-reverse-p ans-data-list) ans-data-list= (relval selected-item num-answers scored-reverse-p) or (mult-ans-list)REVISE THIS")
(defparameter *shaq-scaledata-list '(:shaq-scaledata-list) "REVISE--LIST VARS")
(defparameter *shaq-intro-sym-list NIL "To be completed later")
;;(defparameter *shaq-question-list IN FILE Q-questions.lisp
(defparameter *shaq-post-sym-list NIL "To be completed later")
(defparameter *shaq-scale-sym-list NIL "To be completed later")
(defparameter *shaq-files-loaded NIL "Value changed after load-shaq-files run")
(defparameter *shaq-main-process nil "Main shaq management-calc process runs in thread separate from shaq frames.")
(defparameter *shaq-run-questions-list "Main list of questions that shaq creates frames for and runs to collect user data, started in select-shaq-scales function.")

;;QUESTION SELECTION LISTS 
;; These are set by callbacks in intro frames etc.
(defparameter *run-select-SHAQ-scales nil)
(defparameter *run-all-shaq-scales nil)
(defparameter *run-all-except-career-scales-p nil)
(defparameter *run-HQ-scales-p nil)
(defparameter *run-only-academic-and-career-p  nil)
(defparameter *run-only-academic-p nil)
(defparameter *run-only-career-p nil)
(defparameter  *run-shaq-student-quests-p  nil)
(defparameter  *run-values-beliefs-quests-p nil)
(defparameter  *run-life-skills-quests-p  nil)
(defparameter  *run-interpersonal-quests-p  nil)
(defparameter  *run-outcome-quests-p  nil)
(defparameter  *run-career-quests-p  nil)



;;SHAQ-INITIALIZE
;;
;;ddd
(defun shaq-initialize ()
  ;;load files and defparameters -- SSS later move here?
  ;;DON'T USE IN DELIVER -- INSTEAD LOADED IN DELIVER FILE
  (unless *shaq-files-loaded
    (load "C:\\3-TS\\LISP PROJECTS TS\\SHAQ\\config-shaq.lisp"))
  ;;SHOW-DETAILS?
  ;;used selectively for calling show-text to make containers
  (defparameter *show-details nil)
  ;;SETTINGS PATH
  ;;note: ~/ writes to C:\\USERS\\SHERRY BENE STEVENS
  (defparameter *settings-filename "~/shaq-settings.db")
  (defparameter *results-filename "C:/SHAQ-RESULTS.txt")
  ;;FOR CAPI
  ;;  (defparameter *visible-border-p nil)
  ;;FOR MP
  (setf *shaq-initialized T)
  ;;END SHAQ-INITIALIZE
  )
  ;;to change color (setf (capi:simple-pane-foreground self) color))

;;FROME FRAME-QUEST-FUNCTIONS.LISP
(defparameter  *current-qvar nil "used to pass info to callbacks from SHAQ-manager")
(defparameter  *current-qvar-list nil "(qvar :single q-text-sym q-num fr-answer-panel-sym num-answers  reversed-item-p scored-reverse-p)")
(defparameter  *call-shaq-question-single-callback-p nil "causes the make-vertical-button-panel callback function to call the shaq append-my-vertical-button-panel-single-selection-callback")
(defparameter  *call-shaq-question-multi-callback-p nil "causes the make-vertical-button-panel callback function to call the shaq append-my-vertical-button-panel-multi-selection-callback")
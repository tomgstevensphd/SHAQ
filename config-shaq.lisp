;;********************** config-shaq.lisp ****************************
;;
;;SHOULD CONTAIN ALL? GLOBAL VARIABLES, ETC.
;;
;; LOADS SHAQ FILES AT BOTTOM OF THIS FILE

;;GGG ------------------------------------------- GLOBAL VARIABLES --------------------------------;;
;;
;;put in all key files
;;  (my-config-editor-after-start)
(defparameter *config-shaq-loaded t)
(unless (and (boundp '*deliver-version-p)
             *deliver-version-p)
  (defparameter *deliver-version-p  NIL))

    ;;  (setf selected-category-list *shaq-all-scale-categories))
      ;;(setf selected-category-list *shaq-main-scale-categories))
      ;;(setf selected-category-list *shaq-HQ-scale-categories))
#|      (setf selected-category-list 
            (append *shaq-academic-question-categories  
                    *shaq-career-major-interest-question-categories)))|#
      ;;(setf selected-category-list *shaq-academic-question-categories))
      ;;(setf selected-category-list 



#| NONE OF THESE NEEDED -- SEE FRAME-FUNCTIONS FILE??
(defun set-global-variables ()
  ;;FOR CAPI
  ;;Frame 
(defparameter *visible-border-p T)
(defparameter *frame-internal-width  800) 
(defparameter *frame-internal-height 600) ;; error :maximize)
(defparameter *border-width 30)
(defparameter *border-color :red)
  ;;edit panes
(defparameter  *title-pane-height 120)
(defparameter *info-pane-height 350)
(defparameter *info-pane-background-color :yellow)
(defparameter *edit-pane-width NIL ) ;;   (-  *frame-internal-width (* 2  *border-width) 10))
  ;;(defparameter *title-pane-foreground  :red )
  ;;(defparameter *title-pane-background  :WHITE)  
  ;; (defparameter *info-pane-foreground  :black )
  ;;(defparameter *info-pane-background  :yellow)  

  ;;button row
(defparameter *button-left-color-block 80)
(defparameter *button-panel-background :white)
(defparameter *button-row-max-height 80)

  ;;text
(defparameter *shaq-frame-title  "SHAQ CARES-Computer Assessment and Referral System")
(defparameter *title-area-text (format nil "~%SHAQ TITLE TEXT GOES HERE"))
(defparameter *info-area-text (format nil "~%~%This is test text, SHAQ info text goes here.")) 
(defparameter *button1-text "OK--Go to next frame")
(defparameter  *button2-text "BACK to PREVIOUS Frame")
(defparameter  *button3-text  "EXIT SHAQ")
  ;;to change color (setf (capi:simple-pane-foreground self) color))

  ;;fonts for GO, PREVIOUS, EXIT
(defparameter *button-font-size1 12)
(defparameter *button-font-size2 10)
(defparameter *button-font1 (gp:make-font-description :size *button-font-size1  :weight :bold))
(defparameter *button-font2 (gp:make-font-description :size *button-font-size2 :weight :bold))
(defparameter *button1-foreground :red)

  ;;title-pane fonts
(defparameter *title-pane-char-format '(:face "times new roman" :size 18
                                          :color :red :bold T :italic nil :underline nil ))
(defparameter *title-pane-parag-format   '(:alignment :center  ;; :left :right 
                                             :offset-indent 20 :tab-stops nil   ;;eg  (10 20 10)
                                             :numbering nil  ;;OR :bullet, :arabic, :lowercase,:uppercase, :lower-roman or :upper-roman.
                                             ;;  :start-indent 5
                                             ;;  :relative-indent 1.0  ;;relative indent for rest of paragraphs
                                             ))     

  ;;info pane fonts
(defparameter *info-pane-char-format '(:face "times new roman" :size 12
                                         :color :black :bold T :italic nil :underline nil ))
(defparameter *info-pane-parag-format '(:alignment :left ;; :center  ;; :left :right
                                          :offset-indent 20
                                          ;;  :start-indent 5  ;;  :relative-indent 1.0  ;;relative indent for rest of paragraphs
                                          :tab-stops nil   ;;eg  (10 20 10)
                                          :numbering nil  ;;OR :bullet, :arabic, :lowercase,:uppercase,
                                          ;;:lower-roman or :upper-roman.
                                          ))   

  ;;radio-button-panel fonts
(defparameter *radio-button-title-font 
    (gp:make-font-description :family "times new roman" :size 12  :weight :normal))
(defparameter *radio-button-font 
    (gp:make-font-description :family "times new roman" :size 10  :weight :normal))
  


  ;;confirm action and close shaq callbacks
(defparameter *confirm-action-button-text "YES" )
(defparameter *cancel-action-button-text "NO" )
(defparameter *confirm-action-text (format nil "~%~%Do you want to take this action?"))
  )|#


  ;;SET THE GLOBAL VARIABLES
;;  (set-global-variables)

;;XXX
;;      CURRENTLY LOAD OTHER FILES AFTER DEFINE GLOBAL VARSS ABOVE -- MAY HAVE BEEN UPDATED -- LATER CHANGE???

;; LOAD SHAQ FUNCTIONS
(defun load-shaq-files ()
  ;;FIRST CONFIG-VARS
  (load  "C:\\3-TS\\LISP PROJECTS TS\\SHAQ\\config-vars.lisp")
  ;;(load"C:\\3-TS\\LISP PROJECTS TS\\SHAQ\\      )
  (load "C:\\3-TS\\LISP PROJECTS TS\\MyUtilities\\U-tstring.lisp" )
  (load "C:\\3-TS\\LISP PROJECTS TS\\MyUtilities\\U-lists.lisp" )
  (load"C:\\3-TS\\LISP PROJECTS TS\\MyUtilities\\U-files.lisp" )
  (load"C:\\3-TS\\LISP PROJECTS TS\\MyUtilities\\U-clos.lisp" )
  (load "C:\\3-TS\\LISP PROJECTS TS\\MyUtilities\\U-LW-editor.lisp" )
  (load "C:\\3-TS\\LISP PROJECTS TS\\MyUtilities\\U-debug.lisp" )
  (load"C:\\3-TS\\LISP PROJECTS TS\\MyUtilities\\U-math.lisp" )
  ;;(load "C:\\3-TS\\LISP PROJECTS TS\\SHAQ\\bsInterpersonal.lisp")
  ;;(load "C:\\3-TS\\LISP PROJECTS TS\\SHAQ\\calc-scale-scores.lisp")
  ;;Not used (load "C:\\3-TS\\LISP PROJECTS TS\\SHAQ\\Cl-Per-Systems.lisp")
  (load "C:\\3-TS\\LISP PROJECTS TS\\SHAQ\\Cl-PERSIM.lisp")
  ;;(load "C:\\3-TS\\LISP PROJECTS TS\\SHAQ\\config-shaq.lisp")
  (load "C:\\3-TS\\LISP PROJECTS TS\\MyUtilities\\U-capi-buttons-etc.lisp")
  (load "C:\\3-TS\\LISP PROJECTS TS\\SHAQ\\Fr-answer-panel.lisp")
  ;;(load "C:\\3-TS\\LISP PROJECTS TS\\SHAQ\\Frame-buttons-maker.lisp")
  ;;(load "C:\\3-TS\\LISP PROJECTS TS\\SHAQ\\Frame-master-info.lisp")
  ;;(load "C:\\3-TS\\LISP PROJECTS TS\\SHAQ\\Frame-master-questions2.lisp")
  (load "C:\\3-TS\\LISP PROJECTS TS\\SHAQ\\Frame-quest-functions.lisp")

  ;;SSS later UNQUOTE following?? Temporarily redundant
  ;;(load "C:\\3-TS\\LISP PROJECTS TS\\SHAQ\\Frame-questions-master.lisp")

  ;;(load "C:\\3-TS\\LISP PROJECTS TS\\SHAQ\\Frame-radio-buttons-empty.lisp")
  ;;(load "C:\\3-TS\\LISP PROJECTS TS\\SHAQ\\Frame-radio-buttons-scroll.lisp")
  ;;(load "C:\\3-TS\\LISP PROJECTS TS\\SHAQ\\Frame-radio-buttons.lisp")
  ;;(load "C:\\3-TS\\LISP PROJECTS TS\\SHAQ\\Frame-test.lisp")
  ;;(load "C:\\3-TS\\LISP PROJECTS TS\\SHAQ\\Frame-test2.lisp")
  (load "C:\\3-TS\\LISP PROJECTS TS\\SHAQ\\Q-questions.lisp")
  (load "C:\\3-TS\\LISP PROJECTS TS\\SHAQ\\SHAQ-all-scale-and-question-var-lists.lisp")
 ;; (load "C:\\3-TS\\LISP PROJECTS TS\\SHAQ\\Frame-user-goals.lisp")
  ;;(load "C:\\3-TS\\LISP PROJECTS TS\\SHAQ\\Frames descriptions.lisp")
  (load "C:\\3-TS\\LISP PROJECTS TS\\SHAQ\\Frames-shaq-intros.lisp")
  ;;(load "C:\\3-TS\\LISP PROJECTS TS\\SHAQ\\Frames-SHAQ.lisp")
  ;;(load "C:\\3-TS\\LISP PROJECTS TS\\SHAQ\\java-person-classes.lisp")

  (load "C:\\3-TS\\LISP PROJECTS TS\\SHAQ\\U-data-functions.lisp")
  (load "C:\\3-TS\\LISP PROJECTS TS\\SHAQ\\U-data-results-functions.lisp")
  ;;  (load "C:\\3-TS\\LISP PROJECTS TS\\SHAQ\\U-SHAQ-syms-labels-functions.lisp")
  (load "C:\\3-TS\\LISP PROJECTS TS\\SHAQ\\U-SHAQ.lisp")
  (load "C:\\3-TS\\LISP PROJECTS TS\\SHAQ\\help-info.lisp")  
  (load "C:\\3-TS\\LISP PROJECTS TS\\SHAQ\\help-links.lisp")  
  (load "C:\\3-TS\\LISP PROJECTS TS\\SHAQ\\SHAQ-new-scales.lisp")  
  (load "C:\\3-TS\\LISP PROJECTS TS\\SHAQ\\U-HQ&composite-scales.lisp")
  (load "C:\\3-TS\\LISP PROJECTS TS\\SHAQ\\Frames-results.lisp")  
  ;;LOAD DRAKMA FOR INTERNET
  (unless (or *shaq-files-loaded (packagep 'drakma))
      (load "C:\\3-TS\\LISP PROJECTS TS\\MyLispWebs\\my-drakma-load.lisp"))

    ;;OLD 
;;  (cond
;;   ((null (packagep 'drakma))
      ;;from 2017-10-02
     ;;1-load quicklisp to load drakma
    ;; (load "C:\\3-TS\\LISP PROJECTS TS\\CL-Utilities\\Quicklisp\\quicklisp.lisp")
    ;;2017-10-02 added, but not sure required after first install?
    ;;IF GET ERROR, NOT INSTALLED, EVAL: (quicklisp-quickstart:install)
    ;;WAS C:\3-TS\LISP PROJECTS TS\CL-Utilities\Quicklisp\my-quicklisp-load.lisp
    ;; (sleep 5)    
       ;;2. load QUICKLISP AND DRAKMA 
      ;; (ql:quickload :drakma)     
        ;;end unless
;;        )
;;   (t nil))
  (sleep 3)
  (load "C:\\3-TS\\LISP PROJECTS TS\\SHAQ\\U-SHAQ-web.lisp")
 
;;NO-CAUSES INFINITE LOOP  (load "C:\\3-TS\\LISP PROJECTS TS\\SHAQ\\U-SHAQ-management.lisp")  
  ;;   (load "C:\\3-TS\\LISP PROJECTS TS\\SHAQ\\.lisp")  
  (setf  *shaq-files-loaded T)
  ;;end load-shaq-files
  )
 
 (load-shaq-files)



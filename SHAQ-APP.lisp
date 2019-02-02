;;*****************  SHAQ-APP.lisp *********************
;;
;;THE APPLICATION BUILDER FILE
;;
 (in-package "CL-USER")
 (load-all-patches)
 (require "embed")
;;SSSS START HERE, THIS IS LOADED AT END
;;following wasn't getting loaded and caused delivery error: BEC OF WRONG LISP?
;; (load "C:\\Program Files (x86)\\LispWorks\\lib\\7-0-0-0\\patches\\embed\\001\\0001.ofasl") ;;WAS => Error:  Package COM not found. NOW "does not exist"


;;CHANGES CERTAIN VARIABLES, ETC FOR DELIVERY
(defparameter *deliver-version-p T)

(defun my-config-editor-after-start ()
  "In .LISPWORKS -- PUT AT TOP OF KEY FILES, SO WHEN LOADED WILL MAKE CHANGES TO THE EDITOR THAT WON'T WORK IN .LISPWORKS"
  ;;DO NOTHING IN THE DELIVERY VERSIONS
  ;;Change the cursor
#|  (setf CAPI:*EDITOR-CURSOR-ACTIVE-STYLE*  :LEFT-BAR
        CAPI:*EDITOR-CURSOR-COLOR* :RED)|#
  )
;;PROCLAIM (see p91 LW7)
;;CAUSES INVALID ERROR (proclaim ’(optimize (debug 3) (safety 3) (speed 0) (space 0) ))

(defvar *SPLIT  T)  ;;when T causes split file (from LW code that autoloads) for signing
;;; Where we are going to save the application (except on Cocoa)
;;NO-do this outside of delivery (defparameter  *make-defs-file-p T)
(defvar *delivered-image-name*  "C:\\3-TS\\LISP PROJECTS TS\\SHAQ\\GoSHAQ")
(if *SPLIT
    (setf *delivered-image-name* "C:\\3-TS\\LISP PROJECTS TS\\SHAQ\\RunSHAQ"))

  (setf *OPEN-DOS-DEBUG-WINDOW T) ;;without this caused error if error

   (setf  COMPILER::*DEBUG-INFO* T)

;;; Load the application code.
;;; We compile the file to the temporary directory
;;;  because the current directory is not necessarily writable. #|  (defparameter *my-config-file* "C:\\3-TS\\LISP PROJECTS TS\\MyConfigFiles\\my-config.lisp"  "Path of config file for most of my projects--should be loaded in first loaded project file")|#
;;  (compile-file (current-pathname *my-config-file*)  :load t)

;;COMPILE/ LOAD SHAQ FUNCTIONS
  ;;(load"C:\\3-TS\\LISP PROJECTS TS\\SHAQ\\      )
 ;;CONFIG VARS
  (compile-file (current-pathname  "C:\\3-TS\\LISP PROJECTS TS\\SHAQ\\config-vars.lisp")  :load t)
  (compile-file (current-pathname "C:\\3-TS\\LISP PROJECTS TS\\MyUtilities\\U-tstring.lisp")  :load t)
  (compile-file (current-pathname "C:\\3-TS\\LISP PROJECTS TS\\MyUtilities\\U-lists.lisp")  :load t)
  (compile-file (current-pathname "C:\\3-TS\\LISP PROJECTS TS\\MyUtilities\\U-files.lisp")  :load t)
  (compile-file (current-pathname "C:\\3-TS\\LISP PROJECTS TS\\MyUtilities\\U-clos.lisp")  :load t)
  (compile-file (current-pathname "C:\\3-TS\\LISP PROJECTS TS\\MyUtilities\\U-LW-editor.lisp")  :load t)
  (compile-file (current-pathname "C:\\3-TS\\LISP PROJECTS TS\\MyUtilities\\U-debug.lisp")  :load t)
  
  (compile-file (current-pathname "C:\\3-TS\\LISP PROJECTS TS\\MyUtilities\\U-math.lisp")  :load t)
  ;;(load "C:\\3-TS\\LISP PROJECTS TS\\SHAQ\\config-shaq.lisp")  :load t)
  (compile-file (current-pathname  "C:\\3-TS\\LISP PROJECTS TS\\MyUtilities\\U-capi-buttons-etc.lisp")  :load t)
  (compile-file (current-pathname  "C:\\3-TS\\LISP PROJECTS TS\\SHAQ\\Cl-PERSIM.lisp")  :load t)
   ;;must load help-info before new-scales bec new-scales refers to help info
  (compile-file (current-pathname  "C:\\3-TS\\LISP PROJECTS TS\\SHAQ\\help-info.lisp")  :load t)  
  (compile-file (current-pathname  "C:\\3-TS\\LISP PROJECTS TS\\SHAQ\\SHAQ-new-scales-compile.lisp") :load t) 
  (compile-file (current-pathname  "C:\\3-TS\\LISP PROJECTS TS\\SHAQ\\SHAQ-new-scales-insts.lisp") :load t) 
 ;;SSSS ERROR Do not know how to fasl-dump #<BIO 20092CDF>. No user-defined "make-load-form" method.
;;SSSSS ADD MISSING FILES EG  MY INPUT INTERFACES HERE

  (compile-file (current-pathname  "C:\\3-TS\\LISP PROJECTS TS\\SHAQ\\Fr-answer-panel.lisp")  :load t)
  ;;(load "C:\\3-TS\\LISP PROJECTS TS\\SHAQ\\Frame-buttons-maker.lisp")  :load t)
  ;;(load "C:\\3-TS\\LISP PROJECTS TS\\SHAQ\\Frame-master-info.lisp")  :load t)
  ;;(load "C:\\3-TS\\LISP PROJECTS TS\\SHAQ\\Frame-master-questions2.lisp")
  (compile-file (current-pathname  "C:\\3-TS\\LISP PROJECTS TS\\SHAQ\\Q-questions.lisp")  :load t)
  (compile-file (current-pathname  "C:\\3-TS\\LISP PROJECTS TS\\SHAQ\\SHAQ-all-scale-and-question-var-lists.lisp")  :load t)
  (compile-file (current-pathname  "C:\\3-TS\\LISP PROJECTS TS\\SHAQ\\U-data-functions.lisp")  :load t)
  (compile-file (current-pathname  "C:\\3-TS\\LISP PROJECTS TS\\SHAQ\\Frame-quest-functions.lisp")  :load t)
  (compile-file (current-pathname  "C:\\3-TS\\LISP PROJECTS TS\\SHAQ\\U-data-results-functions.lisp")  :load t)
 ;; (compile-file (current-pathname  "C:\\3-TS\\LISP PROJECTS TS\\SHAQ\\U-SHAQ.lisp")  :load t)
  (compile-file (current-pathname  "C:\\3-TS\\LISP PROJECTS TS\\SHAQ\\help-links.lisp")  :load t)  
  (compile-file (current-pathname  "C:\\3-TS\\LISP PROJECTS TS\\SHAQ\\Frames-shaq-intros.lisp")  :load t)
  (compile-file (current-pathname  "C:\\3-TS\\LISP PROJECTS TS\\SHAQ\\U-HQ&composite-scales.lisp")  :load t)
#|  (cond
   ((null (packagep 'drakma)|#
     ;;1-load quicklisp to load drakma
   ;;old-now my-drakma-load.lisp autoloads quicklisp first  (compile-file (current-pathname  "C:\\3-TS\\LISP PROJECTS TS\\CL-Utilities\\Quicklisp\\my-quicklisp-load.lisp")  :load t)
       ;;2. load drakma
       ;;(ql:quickload :drakma)
   ;;done in U-shaq-web.lisp below (compile-file (current-pathname  "C:\\3-TS\\LISP PROJECTS TS\\MyLispWebs\\my-drakma-load.lisp")  :load t)
        ;;end clause
 ;;        ))
 ;;  (t nil))
;;SSSSS START HERE JUST TRYING TO LOAD FOLLOWING--ERRORS
  ;;load quicklisp
  (compile-file (current-pathname "C:\\3-TS\\LISP PROJECTS TS\\CL-Utilities\\Quicklisp\\my-quicklisp-load.lisp")  :load t)
  (sleep 1)
  ;;load drakma
  (ql:quickload :drakma)
  (sleep 2)
  (compile-file (current-pathname  "C:\\3-TS\\LISP PROJECTS TS\\SHAQ\\U-SHAQ-web.lisp")  :load t)
  (compile-file (current-pathname  "C:\\3-TS\\LISP PROJECTS TS\\SHAQ\\Frames-results.lisp")  :load t)  
  (compile-file (current-pathname  "C:\\3-TS\\LISP PROJECTS TS\\SHAQ\\U-SHAQ-management.lisp") :load t) 




  ;;NOTE THIS IS THE MPrun file VERSION OF SCREENSAVERMP
#|(compile-file (current-pathname "C:\\3-TS\\LISP PROJECTS TS\\screensaver\\screensaverMPrun.lisp")   ;; :output-file :temp 
             :load t)|#
;;(compile-file (current-pathname    "C:\\3-TS\\LISP PROJECTS TS\\screensaver\\screensaver2013.lisp")   ;; :output-file :temp           :load t)
;;; On Cocoa it is a little bit more complicated, because we need to
;;; create an application bundle.  We load the bundle creation code
;;; that is supplied with LispWorks, create the bundle and set
;;; *DELIVERED-IMAGE-NAME* to the value that this returns. We avoid
;;; copying the LispWorks file type associations by passing
;;; :DOCUMENT-TYPES NIL.  When the script is used to create a
;;; universal binary, it is called more than once. To avoid creating
;;; the bundle more than once, we check the result of
;;; SAVE-ARGUMENT-REAL-P before creating the bundle.

#|
#+cocoa
(when (save-argument-real-p)
  (compile-file (example-file "configuration/macos-application-bundle")
                :output-file :temp
                :load t)
  (setq *delivered-image-name*
        (write-macos-application-bundle "C:\\3-TS\\LISP PROJECTS TS\\MyUtilities\\TomsPhotoviewerScreensaver.app"  
            :document-types nil)))  
|#

;;DELIVER
;;; DELIVER THE APPLICATION -- I LISTED (ONLY) SOME OF THE KEYWORDS.
;;
;; TO REDIRECT THE RUNTIME OUTPUT, run the application in a command shell. This means a DOS command window (on Microsoft Windows), Terminal. app (Mac OS X) or a shell (Unix/Linux etc). Enter the application executable filename followed by > followed by the output filename, forexample, on Windows:
;;C:\Program Files\MyApp> myapp.exe > C:\temp\myapp-output.lisp
;; CD C:\3-TS\LISP PROJECTS TS\SHAQ
;; RUN-SHAQ.exe > C:\3-TS\LISP PROJECTS TS\shaq-run-output.lisp
;;
;;NOTE: THE ZERO before :interface is the deliver level, 0 is safest & incls debugging.
;;
;;ddd
(deliver  'run-shaq  *delivered-image-name* 0 :interface :capi :multiprocessing T  
          :SPLIT  *SPLIT
          :icon-file "C:\\3-TS\\LISP PROJECTS TS\\SHAQ\\balloon.ico";;must be .ico format
          :keep-debug-mode t  ;;Keyword Default value: (> 5 *delivery-level*) If this is non-nil, by default delivery retains the full TTY debugger, so it can be used when debugging delivered applications.
          ;; :analyse t ;; (analyzes what is before run, If the value of :analyse is a string or a pathname, it writes the analysis to this file, otherwise it writes to *standard-output*)
          ;; :call-count :all  ;;(analyzes what is left)
          ;; :clos-initarg-checking ;;complex--see def
          ;;  :diagnostics-file  -- if nil = *standard-output* otherwise
          ;; :keep-documentation  Default value: (= *delivery-level* 0) If non-nil, documentation strings in the image are preserved.

          ;; :compact -- makes functions static, great size reduction--see ref.
          ;;:classes-to-remove ;;a list naming the classes to be deleted from image during delivery.
          ;; :functions-to-remove  functions-list  
          ;; :clos-info :classes-and-methods  ;;print a list of the remaining classes, methods, or both, after execution terminates.
          :error-handler :btrace   ;;Default value: nil.The value :btrace changes error handling, so that a simple backtrace is generated whenever error is called.
          ;; :exports  list-of-symbols ;;Default value: nil. This keyword takes a list of symbols that should be exported from their home packages before any delivery work takes place.
          ;; :interrupt-function   ;;Default value: t A function to call when an interrupt occurs. When it is t, it is calling quit.

          ;;  :keep-structure-info (normally some kept)  This keyword controls the extent to which structure internals are shaken out of the image. If nil, all references from structure-objects to their conc-names, (BOA) constructors, copiers, slot names, printers and documentation are removed.
          ;; :keep-symbols keep-symbol-list ;; Default value: nil This keyword takes a list of symbols that are retained in the delivered image. A pointer to this list is kept throughout the delivery process, protecting them from garbage collection.
          ;; :registry-path  ;;Path for storing user preferences.On Microsoft Windows this is relative to HKEY_CURRENT_USER. 
          ;; :run-it  Default value: t If this is t, the function argument to deliver is used as the application startup function.
          ;; :startup-bitmap-file default value: nil A string naming a file containing an image to be displayed when the application starts.On Microsoft Windows, the image needs to be in Windows Bitmap format and must be Indexed Color rather than RGB color.
          ;; :versioninfo Default value: nilWindows only. Complex--see ref.
          ;; :warn-on-missing-templates Default value: nil Controls whether to warn about missing CLOS templates, which should be pre-compiled. See “Finding the necessary templates” on page 98 for details.
         ;;end DELIVER
          )


;;(deliver 'hello-world *delivered-image-name* 5 :interface :capi)

;; XXX AAAA************************** APPLICATION BUILDER OUTPUT *****************
;;
;; SEE FILE shaq-app-builder-output.lisp for OUTPUT
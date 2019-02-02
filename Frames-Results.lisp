;;**************************** Frames-results.lisp **************************
;;


;;FONTS
(defparameter *help-link-font (gp:make-font-description :weight :bold :size 10))
(defparameter *results-title-font (gp:make-font-description :weight :bold :size 11))
(defparameter *frame-title-font (gp:make-font-description :weight :bold :size 12))

;;MISC
(defparameter *default-browser-url *stevens-url-root)

;;TEXT
(defparameter *shaq-results-text (format nil "~%~%SHAQ RESULTS TEXT GOES HERE"))
(defparameter *shaq-results-pathname "c:/shaq-results/shaq-results.txt")
(defparameter  *part1-results-text "")
(defparameter  *part2-results-text "")
(defparameter  *part3-results-text "")
(defparameter  *help-links-text "")
(defparameter *separator-text
          "    ---------------------------------------------------------------------------------------------------------------------------------------------------"
          )



;;DISPLAY THE FILE CONTENTS
;;(LIST-ALL-FILE-OBJECTS "Frames-results")

(in-package "COMMON-LISP-USER")

;;FRAME-RESULTS-INTERFACE
;;
;;ddd
(capi:define-interface Frame-results-interface ()
  ((shaq-results-symbol
    :initarg :shaq-results-symbol
    :accessor shaq-results-symbol
    :initform nil
    :documentation "Symbol to be evaluated when saving or printing shaq text results")
   )
  (:panes
   (title-pane
    capi:rich-text-pane
    :visible-max-height 50
    :text (format nil "~%YOUR SUCCESS AND HAPPINESS ATTRIBUTES QUESTIONNAIRE (SHAQ) RESULTS ~% => SAVE YOUR RESULTS NOW--before you lose them!")
    :background :yellow
    :internal-border 10
    :visible-border :default
    :character-format (list :face *title-pane-font-face
                            :size  12  ;;*title-pane-font-size 
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
   (results-pane
    capi:rich-text-pane
    :text *shaq-results-text
    :background :light-blue
    :internal-border 10
    :visible-border :default
    :character-format (list :face *title-pane-font-face
                            :size  10  ;;*title-pane-font-size 
                            :color :navyblue    :bold nil :italic nil :underline nil ) ;;:darkslateblue
    :paragraph-format  (list :alignment :left   ;; :left :right
                             ;;no effect?  :start-indent 20
                             ;;no effect? :offset-indent 20
                             ;;  :relative-indent 1.0  ;;relative indent for rest of paragraphs
                             :tab-stops  '(5 10 15 20)
                             :numbering nil 
                             ;;OR :bullet, :arabic, :lowercase,:uppercase, :lower-roman or :upper-roman.
                             )
    )
   (push-button-1
    capi:push-button
    :text "SAVE SHAQ RESULTS"
    :background :red
    :callback 'save-shaq-results-callback
    :callback-type :item-interface
    )
#|   (push-button-2
    capi:push-button
    :text "Push-Button-2"
   :background :red  
    )
   (push-button-3
    capi:push-button
    :text "Push-Button-3"
   :background :red  
    )|#
   )
  (:layouts
   (column-layout-1
    capi:column-layout
    '(title-pane results-pane button-row-layout)
   :background :red    
    )
   (button-row-layout
    capi:row-layout
    '(push-button-1) ;; push-button-2 push-button-3)
   :background :red
   )
   )
  (:menu-bar menu-1 menu-2)
  (:menus
   (menu-1
    "FILE"
    (
     ("SAVE SHAQ Results"
      :callback 'save-shaq-results-callback
      :callback-type :item-interface)
    )
    )
   (menu-2
    "HELP"
    (
    ("Problems?"
      :callback 'shaq-problems-callback
      :callback-type  :interface)
#|     "Item-5"
     "Item-6")|#
   )
   ))
  (:default-initargs
   :best-height 660
   :best-width   900
   :layout 'column-layout-1
   :title "Your Success and Happiness Attributes (SHAQ) RESULTS"
   :title-font *results-title-font
   )
  ;;end Frame-results-interface
  )

;;TEST
(defun make-results-frame (shaq-results-text frame-title results-text-sym &key (x 10) ( y 10 ))
  "In Frames-results. Inputs results+ frame-name, produces a frame with text. results-text-sym is the global var that the results-text is set to. It's name is stored in the Frame slot for callback reference in saving the file, etc."
  (let*
      ((results-frame-inst) 
       )
   ;;make results frame instance
  ;;kkkk
   (setf results-frame-inst 
         (make-instance 'Frame-results-interface  :title frame-title :x x :y y
                        :shaq-results-symbol results-text-sym))   
   ;;added
    (capi:display results-frame-inst)
    (with-slots (results-pane) results-frame-inst
      ;;1-SET THE TEXT
      (capi:apply-in-pane-process   results-pane
                                    #'(setf capi:rich-text-pane-text) shaq-results-text  results-pane )
      ;;end with slots
      )   
#|      (with-slots (title-rich-text-pane instr-rich-text-pane 
                                        quest-rich-text-pane   
                                        go-frame-button previous-frame-button 
                                        button-row-layout 
                                        quest-ans-row-layout
                                        answer-button-layout)  q-frame-inst
        ;;1-SET THE TITLE, INSTR, and QUESTION PANE TEXT
        (capi:apply-in-pane-process title-rich-text-pane
                                    #'(setf capi:rich-text-pane-text) title-text-formated  title-rich-text-pane ) |#
   ;;end added
   ;;display the frame instance
    (capi:display results-frame-inst)
    ;;end let, make-results-frame
    ))
;;   (make-results-frame)



;;SHAQ-PROBLEMS-CALLBACK
;;
;;ddd
(defun shaq-problems-callback (interface)
     "In Frames-results"
         (show-text (format nil
             "
     THIS APP IS BEING TESTED, AND YOUR FEEDBACK CAN BE VERY HELPFUL.  ~%
   WE WELCOME:
      1. Information about any PROBLEMS you had taking SHAQ 
           or  UNDERSTANDING YOUR RESULTS.~%
      2. ANY CORRECTIONS IN SPELLING, WORDING, ETC.~%
      3. ANY SUGGESTIONS FOR IMPROVING YOUR EXPERIENCE WITH SHAQ.~%
      4. Any concerns about INTERNET SECURITY, PRIVACY, USE of your SHAQ DATA, etc.~%
      5. ANY OTHER COMMENTS~%~%
       ==> SEND EMAIL TO: Tom.Stevens@csulb.edu~%
      THANK YOU.~%~%~%
     --------------------------------------------------------------------------------------------------~%
      ANY PROBLEMS WITH THE SHAQ APP NOT WORKING RIGHT?   
       Email Dr. Stevens:  Tom.Stevens@csulb.edu ~%
       Please copy or write down any information you can
                           about the very last thing that happened (last window, etc) ~%
       ==>  If there are any ERROR MESSAGES,
      If you can, PLEASE COPY TEXT FROM THE DOS OUTPUT WINDOW
       1. Click on the left, top corner, choose edit, then copy. 
       2. Then Right-click on the text. 
       3. Paste the copied text into your email to Dr. Stevens about the error.~%~%
   ")   540  "PROBLEMS with SHAQ" :min-width 500)
   ;;yyyy SSS FIX THIS ETC.
#|       (capi:display info-interface-inst)
       (with-slots (info-pane) info-interface-inst
         #|(capi:apply-in-pane-process title-rich-text-pane
                                    #'(setf capi:rich-text-pane-text) title-text-formated  title-rich-text-pane )|#
         (capi:apply-in-pane-process (info-pane ) info-interface-inst
                                     #'(setf capi:rich-text-pane-text) info-pane info-interface-1-text)                                       ;;end with-slots
         )
       (capi:display info-interface-inst)|#
    ;;end let , shaq-problems-callback
    )


;;INFO-INTERFACE-1
;;
;;ddd
(capi:define-interface info-interface-1 ()
  ()
  (:panes
   (title-pane
    capi:rich-text-pane
    :visible-max-height 40
   :text "      
                                                  INFORMATION
"
   )
   (info-pane
    capi:rich-text-pane)
   (push-button-panel
    capi:push-button-panel
    :items '("CLOSE this window") ;; "Button 2" "Button 3")
    :callbacks '(close-info-pane-callback)
    :callback-type :item-interface
    :max-width t
    :visible-max-height 20 )
   )
  (:layouts
   (column-layout-1
    capi:column-layout
    '(title-pane info-pane push-button-panel))
   )
  (:default-initargs
   :layout 'column-layout-1
   :best-height 500
   :best-width 600
   :title "Information Window")
  )


;;CLOSE-INFO-PANE-CALLBACK
;;
;;ddd
(defun close-info-pane-callback (item interface)
  "In Frames-results"
  (capi:destroy interface)
  )

;; FRAME-HTML-RESULTS-INTERFACE
;;
;;ddd
(capi:define-interface Frame-html-results-interface ()
  ()
  (:panes
   (title-pane
    capi:rich-text-pane
    :visible-max-height 50
    :text (format nil "~%YOUR SUCCESS AND HAPPINESS ATTRIBUTES QUESTIONNAIRE (SHAQ) RESULTS ~% => SAVE YOUR RESULTS NOW--before you lose them!")
    :background :yellow
    :internal-border 10
    :visible-border :default
    :character-format (list :face *title-pane-font-face
                            :size  12  ;;*title-pane-font-size 
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
   (results-pane
    capi:browser-pane
   ;; :url *default-browser-url
;;ERROR    :text *shaq-html-results-text
    :background :light-blue
    :internal-border 10
    :visible-border :default
    )
   (push-button-1
    capi:push-button
    :text "SAVE SHAQ RESULTS"
    :background :red
    :callback 'save-shaq-results-callback
    :callback-type :item-interface
    )
   (push-button-2
    capi:push-button
    :text "Push-Button-2"
   :background :red  
    )
   (push-button-3
    capi:push-button
    :text "Push-Button-3"
   :background :red  
    )
   )
  (:layouts
   (column-layout-1
    capi:column-layout
    '(title-pane results-pane button-row-layout)
   :background :red    
    )
   (button-row-layout
    capi:row-layout
    '(push-button-1) ;; push-button-2 push-button-3)
   :background :red
   )
   )
  (:menu-bar menu-1 menu-2)
  (:menus
   (menu-1
    "FILE"
    (
     ("SAVE SHAQ Results"
      :callback 'save-shaq-results-callback
      :callback-type :item-interface)
    )
    )
   (menu-2
    "HELP"
    ("Item-4"
     "Item-5"
     "Item-6"))
   )
  (:default-initargs
   :best-height 660
   :best-width   800
   :layout 'column-layout-1
   :title "Your Success and Happiness Attributes (SHAQ) RESULTS"
   :title-font *results-title-font
   )
  ;;end Frame-html-results-interface
  )

;;SSSS PROBLEM, THIS CAN ONLY READ FROM A HTML FILE--NOT A STREAM ETC APPARENTLY, WOULD HAVE TO SAVE RESULTS TO A FILE BEFORE CAN USE THIS -- THINK ABOUT IT
;;  COULD SEND TO SERVER FIRST OR GET USER TO SAVE IT.

;;TEST
(defun make-html-results-frame (shaq-results-text frame-title)
  "In Frames-results. Inputs results+ frame-name, produces a frame with text."
  (let*
      ((results-frame-inst) 
       )
    ;;make results frame instance
    (setf results-frame-inst (make-instance 
                               'Frame-html-results-interface  :title frame-title))   
#|    (capi:display results-frame-inst)
    (with-slots (results-pane) results-frame-inst
      ;;1-SET THE TEXT
     ;;doesn't work (capi:apply-in-pane-process   'results-pane
                                    #'(setf capi:pane-text) shaq-results-text  'results-pane )
      ;;end with slots
      )      |#
    ;;display the frame instance
    (capi:display results-frame-inst)
    ;;end let, make-results-frame
    ))
;;   (make-html-results-frames  *shaq-html-results-text "SHAQ HTML RESULTS")



;;SAVE-SHAQ-RESULTS-CALLBACK
;;
;;bbb
(defun save-shaq-results-callback (item interface)
  "In Frames-results"
  (let
      ((text-results-symbol)
       (text-results)
       )
 ;;not needed?   (with-slots (shaq-results-symbol) interface
      (setf text-results-symbol (slot-value interface 'shaq-results-symbol))
            
    (setf *shaq-results-pathname
          (capi:prompt-for-file "SELECT FILE to Save SHAQ Results:" :pathname "/SHAQ-RESULTS/My SHAQ Results.txt" :filter "**.txt":operation :save))
   ;;       *shaq-results-pathname (pathname *shaq-results-path))
#|&key pathname ok-check filter filters :
if-exists if-does-not-exist file-package-is-directory operation owner
pane-args popup-args continuation => filename, successp, filtername
Arguments message|#
    (when  (and text-results-symbol *shaq-results-pathname)
        (with-open-file (out-str *shaq-results-pathname :direction :output
                                 :if-exists :supersede)
          ;;  (setf out1 (format nil "out-str= ~A" out-str))
          (format out-str "~%~A~%~%" (eval text-results-symbol))
          ;;end when, with-open-file
          ))
    ;;end let, save-shaq-results-callback
    ))
;;  (save-shaq-results-callback nil nil)
 
(defun save-shaq-results-callback-pt2 (item interface)
  "In Frames-results"
    (setf *shaq-results-pathname
          (capi:prompt-for-file "SELECT FILE to Save SHAQ Results:" :pathname "/SHAQ-RESULTS/My SHAQ Results.txt" :filter "**.txt":operation :save))
   ;;       *shaq-results-pathname (pathname *shaq-results-path))
#|&key pathname ok-check filter filters :
if-exists if-does-not-exist file-package-is-directory operation owner
pane-args popup-args continuation => filename, successp, filtername
Arguments message|#
    (with-open-file (out-str *shaq-results-pathname :direction :output
                             :if-exists :supersede)
    ;;  (setf out1 (format nil "out-str= ~A" out-str))
      (format out-str "~%~A~%~%"  )
      ;;end with-open-file
      )
    ;;end save-shaq-results-callback
    )

    

#|(defun select-slideshow-dir-callback (interface)  ;;works
  "In screensaverMP.lisp"
  (setf *photo-directory
        (capi:prompt-for-directory "Select Directory/Folder for Photo Slideshop"
                                   ;;:if-does-not-exist if-does-not-exist
                                   :pathname *photo-directory)
        *main-photo-directory *photo-directory)
  )    |#






;;xxx
;;RESULTS-HELP-INTERFACE ----------------------------------------------------------
;;ddd
(capi:define-interface results-help-interface ()
  ()
  (:panes
   (rich-text-pane
    capi:rich-text-pane
    :visible-max-height 70
    :text (format nil "~%SELF-HELP INTERNET LINKS--Based upon your SHAQ Results  
      * Click on the self-help links in the YELLOW or PINK boxes to explore ways of improving your SHAQ HQ score or other aspects of yourself. ~%*Use the slider on right to navigate webpage.")
 
        :background :yellow
        :internal-border 10
        :visible-border :default
        :character-format (list :face *title-pane-font-face
                                :size  12  ;;*title-pane-font-size 
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
   (browser-pane
    capi:browser-pane
    :url *default-browser-url
  ;;  :internal-max-width 1140
    )
   (list-panel-1
    capi:list-panel
    :items () ;;REPLACE THESE WITH (), DYNAMIC ITEMS
    :selection nil
    :action-callback 'show-helplink-callback
    :callback-type :item-interface
    :background :yellow
    :font *help-link-font
    :title "    PRIORITY HELP-LINKS FOR YOU"
    )
   (list-panel-2
    capi:list-panel
    :items () ;; '("Anxiety" "Unhappy-Depressed")
    :selection nil
    :action-callback 'show-helplink-callback
    :callback-type :item-interface
    :background :YELLOW
    :font *help-link-font
    )
   (list-panel-3
    capi:list-panel
    :items () ;; '("Anxiety" "Unhappy-Depressed")
    :selection nil
    :action-callback 'show-helplink-callback
    :callback-type :item-interface
    :background :YELLOW
    :font *help-link-font
    )
   (list-panel-4
    capi:list-panel
    :items  ()           ;; '("Time Management""Assertive Request" "Health Habits")
    :selection nil
    :action-callback 'show-helplink-callback
    :callback-type :item-interface
    :background :LIGHTPINK1
    :title "       OTHER HELP-LINKS FOR YOU"
    :font *help-link-font
    )
   (list-panel-5
    capi:list-panel
    :items ()  ;;'("Academic" "Career Planning" "Concentration")
    :selection nil
    :action-callback 'show-helplink-callback
    :callback-type :item-interface
    :background :LIGHTPINK1
    :font *help-link-font
    )
(list-panel-6
    capi:list-panel
    :items ()  ;;'("Academic" "Career Planning" "Concentration")
    :selection nil
    :action-callback 'show-helplink-callback
    :callback-type :item-interface
    :background :LIGHTPINK1
    :font *help-link-font
    )
#|   (multi-column-list-panel-1
    capi:multi-column-list-panel
    :items '(("Item" "One") ("Item" "Two") ("Item" "Three"))
    :selection 0
    :columns '((:title "Multi-Column-List-Panel-1") (:title "Another Column")))|#
  )
  (:layouts
   (column-layout-1
    capi:column-layout
    '( rich-text-pane browser-pane row-layout-1))
   (row-layout-1
    capi:row-layout
   '(list-panel-1 list-panel-2 list-panel-3 list-panel-4 list-panel-5 list-panel-6) ;;  '(multi-column-list-panel-1 ))  ;;multi-column-list-panel-2
   :visible-max-height 100
   :background :lightblue
  ;;not work :foreground :yellow
   :font *help-font
 
   )
   )
  (:menu-bar menu-1)
  (:menus
   (menu-1
    "HELP Menu"
    (
    ("Help with HelpInfo"
     :callback 'shaq-helpinfo-callback
     :callback-type :item-interface
    )
    ("Unhappy with Results?"
     :callback 'help-if-unhappy-callback
     :callback-type :item-interface
    )  
    )
    ))
  (:default-initargs
   :best-height 700
   :best-width 1200
   :layout 'column-layout-1
   :title "Results Help Internet Links"
   :title-font *frame-title-font
   ))


       

;;SHOW-HELPLINK-CALLBACK
;;
;;ddd
(defun show-helplink-callback (helplink-name interface)
  "in frames-results, displays chosen helplink in browser-pane"
  (let 
      ((file)
       (url-root *stevens-url-root)
       (url)
       (help-link-list)
       )
    (multiple-value-setq (file)
    (get-key-value-in-nested-lists `((,helplink-name 1 0)) *stevens-selfhelp-files))

    (setf url (format nil "~a~a" url-root file))
    
  (with-slots (browser-pane) interface
    (capi:browser-pane-navigate browser-pane url)
 ;;  (capi:browser-pane-property-put browser-pane :address-bar t) ;;not working
 ;;   (capi:browser-pane-property-put browser-pane :width 1000) ;; 'width 1000)  ;;not working
    
    ;;end with-slots
    )
  ;;end let, show-helplink-callback
    ))

;;test
;;  (get-key-value-in-nested-lists `(("reading help" 1 0)) *stevens-selfhelp-files) 
;; works = "reading_help.htm" "reading help" nil nil
;; 

;;SHAQ-HELPINFO-CALLBACK
;;
;;ddd
(defun shaq-helpinfo-callback (item interface)
 "In Frames-Results"
   (show-text (format nil "~%~%
                                                                                                     USING YOUR SHAQ RESULTS

    The value of your results: many of these scales and questions have been supported through previous research on more than 6,000 people. our previous research
    and the research of many others has shown how important life skills (and other shaq factors) are for achieving success and happiness in college, career, marriage 
    and other relationships, and other life areas. this web site has self-help information and internet links for developing life skills that can eventually make a big 
    difference in your life.

    TO DEVELOP YOUR LIFE SKILLS, FOLLOW OUR INTERNET LINKS, take courses, get psychological or other) counseling, go to workshops, and 
    read related books.

    WHAT CHANGES CAN INCREASE YOUR SUCCESS AND HAPPINESS MOST?
    You may want to focus your efforts on your lowest-scoring areas or on areas where you are the most unhappy. These are areas that may significantly affect
     your happiness, relationships, academic  or career success, or other emotions or life areas.~%
    we strongly suggest that you:
         1. GO TO OUR WEB SITE HELP LINKS provided and examine the brief suggestions for each area. 
             CLICK ON THE INTERNET HELP LINKS in the bottom SELF-HELP WINDOW (under the results help) to bring that web page into the right window
             (under the results text).
         2. SET GOALS AND PLAN: Start with one or two areas you think will make the greatest impact upon your success and happiness. set goals for what you want
             to accomplish, use our web site to help you plan, make your plan a priority, and get started. spending only a little time each week can make a huge difference
             over time. 
             THOSE LITTLE BITS OF EXTRA EFFORT USUALLY SEPARATE THE MOST SUCCESSFUL AND HAPPY FROM OTHERS IN THE LONG RUN.
         3. Follow additional links provided at our web site to get direct help.
         4. GET ADDITIONAL HELP from counseling, classes, books, or other resources suggested on our web page. we wish you good fortune in your efforts.

    YOUR PERSONALIZED LISTS OF RECOMMENDED SELF-HELP INTERNET LINKS:
    These help-links lists have been prepared especially for you based upon your SHAQ scores and upon our research results revealing the factors that seem to have
    the greatest impact upon peoples' happiness and success. The first list is the help-links list calculated to be the most important for you, and the second list is 
    a list of additional help-links that might be useful to you. Of course your own priorities of what aspects of yourself you want to develop and are MOST 
    MOTIVATED TO DEVELOP should be of prime importance.  Also, try to understand how developing some deeper factors that are ROOT CAUSES 
    of HAPPINESS and SUCCESS could be of greater help to you than some factors that may seem more obvious to you now.~%

         ==> IMPORTANT:  With your mouse, CLICK ON THE INTERNET HELP-LINK (at the bottom of the help-info window) 
                                                                         TO BRING UP THAT HELP-LINK PAGE.

   ")  530 "HELP with SELF-HELP Information" :min-width 800)
   )


;;HELP-IF-UNHAPPY-CALLBACK
;;
;;ddd
(defun help-if-unhappy-callback (item interface)
  "In Frames-Results"
  (show-text (format nil "~%
                              IF YOU ARE UNHAPPY WITH YOUR RESULTS~%
   SHAQ was designed so that only people with extremely high levels of skills or other attributes 
   would score high on most scales. the purpose of shaq is to help everyone find areas for 
   self-improvement--even people with high levels of the attributes. receiving more moderate
   scores (and many recommendations for improvement) does not indicate that there is something 
   wrong with you, it is meant only to help you find many possibilities to grow and find higher
   levels of success and happiness.

   Also, if you are a person who is very self-critical, you may have underrated yourself, on the
   other hand, if you are someone who is somewhat self-deceptive and received extremely 
   high scores, you may have overrated yourself.~%~%")
             250 "Unhappy with SHAQ Results?" :min-width 460)
  )



;;XXX --------------------------------- RESULTS TEXT ---------------------------------
#| :TEXT-DATA "sID" ("Name" " " :SINGLE " ") ("UserID" "222222" :SINGLE "222222") ("Sex" "Male" :SINGLE "Male" 1) ("Age" 22 :SINGLE 22 22) ("Email" "" :SINGLE "") ("USA?" "USA" :SINGLE "USA" 1) ("Nation" "USA" :SINGLE "USA") ("ZipCode" 44444 :SINGLE 44444) ("HrsWork" 22 :SINGLE 22 22)
 |#

;; MAKE-SHAQ-RESULTS-TEXT
;;
;;ddd
(defun make-shaq-results-text (&key (data-list *shaq-data-list) (set-global-results-text-vars-p  t))
  "in frames-results.  input *shaq-data-list or data-list of same format. returns complete shaq results text. if set-global-results-text-vars-p, then creates global vars *scales-results-text and *scales-ss-quests-results-text. note: (make-all-questions-text) must be run first."
  ;;define vars and find intro text data
  (let*
      ((credit-class-instructor "")
       (date-string  "")
       (id-data-list  (get-scale-datalist "sID"))
       ;;(third (get-key-value-in-nested-lists '(("sid" 1)) *shaq-data-list :return-list-p t))
       ;;(name  (get-nth-in-keylist "name" 1 id-data-list))
       ;; (last-name  "")  ;;sss change back to both first and last names -- info is in frame-callback??
       (sec)(min)(hour)(day)( month)( year)
       (time)
       (date)
       (user-id  (get-nth-in-keylist "userid" 1 id-data-list))
       (sex   (get-nth-in-keylist "sex" 1 id-data-list))
       (age-string  (get-nth-in-keylist "age" 1 id-data-list))
      ;; (emailaddress  (get-nth-in-keylist "email" 1 id-data-list))
       (zipcode   (get-nth-in-keylist "zipcode" 1 id-data-list))
       (hours-work-per-week-string (get-nth-in-keylist "hrswork" 1 id-data-list))
       (nation  (get-nth-in-keylist "nation" 1 id-data-list))
       (units-current-semester  "")  ;;???
       (studentprintdata "")  ;;make function
       #| done in process-scales-results
      (usertype-string  (make-multi-selection-quest-text 'utype))
       (usergoals-string (make-multi-selection-quest-text 'ugoals))
       (scalessel-string (make-multi-selection-quest-text 'scalessel))|#
       ;; (hq-results-text "you did not complete all of the scales required to calculate a happiness quotient (hq) score.") ;;make function
       ;;     (results-information " ")
       ;;studentprintdata ;;unitscurrentsemester  make function
       (hq-results-text)
       (scales-results-text)
       ;; (scales-subscales-results-text) 
       (scales-ss-quests-results-text)
       (priority-button-names)
       (other-button-names)
#|       (all-button-keylist-lists)
       (all-helplink-name-list)
       (all-helplink-url-list)
       (all-helplink-description-list)|#
       (all-quests-results-text)
       (intro-end-text "
  ==> NOTE: WINDOW 1 contains only PART 1: ALL SHAQ MAIN SCALE RESULTS  (no subscale or question results).
     WINDOW 2 contains PART 2: COMPLETE SHAQ RESULTS--ALL SCALE, SUBSCALE, AND QUESTION RESULTS.
")
       (intro-results-text "")
       (no-scale-results-text "")
       (pt1-scales-results-text "")
       (pt2-all-results-text "")
       (pt3-help&closing-text "")  
       (help-priority-list)
       (help-links-text "")
       )
    ;;find date and time
    (multiple-value-setq (sec min hour day month year)
        (decode-universal-time (get-universal-time)))
    (setf time (format nil "~a:~a" hour min)
          date (format nil "~a.~a.~a" month day year))
    (multiple-value-setq (date-string  date  time)
     (my-get-date-time))
    (setf *shaq-data-list (append *shaq-data-list (list :date date :time time)))
 
    ;;Because of stack overflow problems when sorting the help-links, increase size.
    (hcl:extend-current-stack 50)    ;;extends size by 50%                             
 
    ;;STEP 1: CREATE THE INTRO TEXT
   ;;1.1 find intro data done above 
    ;;1.2  write the intro text
    (setf  intro-results-text (make-shaq-results-intro-text date-string   user-id ;;name
                   sex   age-string    nation  zipcode   ;;emailaddress
                   hours-work-per-week-string))  
                 ;;was  usertype-string  usergoals-string scalessel-string ))

     ;;1.3 CREATE THE HQ TEXT
   ;;append hq text (creates either hq info or *defaulthqtext)
   (setf hq-results-text (make-hq-text))

     ;;1.4 CREATE THE NO-SCALE ITEMS TEXT
    (setf no-scale-results-text (make-no-scale-text))

   ;;STEP 2: FIND ALL SCALE, SUBSCALE, AND QUESTION DATA ARRANGED BY  SCALE; SUBSCALE1, SS1-Q1, SS1-Q2, ... SUBSCALE2 .... ETC.
    (multiple-value-setq (scales-results-text 
                          ;;scales-subscales-results-text 
                          scales-ss-quests-results-text
                          all-multi-quest-results-text
                          all-button-keylist-lists all-helplink-name-list all-helplink-url-list
                          all-helplink-description-list
                          help-priority-list
                          all-quests-results-text)
        (process-scales-results))    

    ;;STEP 3: MAKE HELP TEXT
   (multiple-value-setq (priority-button-names other-button-names)
        ;;make the help-links frame
        (make-helplink-priority-lists all-button-keylist-lists))
      ;;was  (make-help-frame  all-button-keylist-lists) ;;was all-helplink-name-list all-helplink-url-list  all-helplink-description-list )

      ;;make the help-links text
      (multiple-value-bind (priority-help-text other-help-text)
          (make-help-text priority-button-names other-button-names)

        ;;STEP 4: PUT TEXT PARTS TOGETHER & 
        ;;               MAKE THE CLOSING TEXT (include helplinks text from above)
        ;;add closing text to results text bodies
        (setf  pt3-help&closing-text 
               (make-results-text3-closing priority-help-text priority-help-text))

        ;;PUT RESULTS TEXT PARTS TOGETHER
        (setf pt1-scales-results-text 
              (format nil "~a~%~a%~a~%~a~%~a~%~a~%~a"
                      intro-results-text  intro-end-text
                      hq-results-text  *shaq-pt1-intro-text
                      scales-results-text   no-scale-results-text
                      pt3-help&closing-text) 
              pt2-all-results-text
              (format nil "~a~%~a~%~a~%~a~%~a~%~a~%~a~%~a"
                      intro-results-text  intro-end-text
                      hq-results-text  *shaq-pt2-intro-text
                      scales-ss-quests-results-text  no-scale-results-text
                      all-multi-quest-results-text
                      pt3-help&closing-text))   
               ;;end mvb
               )

    ;;SET GLOBAL VARIABLES?
      (if set-global-results-text-vars-p
          (setf  *pt1-scales-results-text pt1-scales-results-text
                 ;;*scales-subscales-results-text scales-subscales-results-text
                 *pt2-all-results-text  pt2-all-results-text))


      ;;STEP 5: WRITE TO MY WEBSITE
      ;;ssss do it here??



      ;;STEP 6: WRITE TO RESULTS-FRAME 

      ;;make the help-frame
      ;;SSSS START HERE AFTER FIX:  MUST USE (require "embed") in SHAQ-APP.lisp
      (make-help-frame priority-button-names other-button-names)

      ;;make results frame for each results-text
      ;;part 2: all results
      (make-results-frame pt2-all-results-text  "YOUR COMPLETE SHAQ RESULTS (for all scales, subscales, and questions)"
                          '*pt2-all-results-text  :x 50 :y 10)
      ;;part 1:scales only
      (make-results-frame  pt1-scales-results-text "YOUR SHAQ RESULTS FOR MAIN SCALES (ONLY)" '*pt1-scales-results-text :x 10 :y 10)




      ;;STEP 7: ASK USER IF WANTS TO SAVE LARGEST (& *SHAQ-DATA-LIST)
      ;;           to a file.
 
      ;;end let, make-shaq-results-text
      ))
;;TEST
;;SSSS START OVERALL RESULTS TEXT TESTING
;; (make-shaq-results-text)
;;note







;;CCC   MAKE-SHAQ-RESULTS-INTRO-TEXT
;;
;;;ddd
(defun make-shaq-results-intro-text ( date-string   user-id ;;name emailaddress
                   sex   age-string   
                   nation  zipcode   hours-work-per-week-string ) 
                   ;;usertype-string  usergoals-string scalessel-string) 
           (format nil "~%
                                                                    YOUR SHAQ CARES ASSESSMENT RESULTS~%  
                                                       SHAQ = SUCCESS AND HAPPINESS ATTRIBUTES QUESTIONNAIRE 
                                                     CARES = Computer Assessment and Recommendation Expert System
                                              From: http://www.csulb.edu/~~tstevens/success    Author: Tom G. Stevens PhD      

   DATE: ~A
               User ID: ~A     Sex: ~A     Age: ~A     
               Nation: ~A   Zip Code: ~A      Hours Work per Week: ~A

    ||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||

                                                    INFORMATION ABOUT YOUR SCALE AND QUESTION RESULTS"    
                 ;;the variables to include in text above 
                   date-string     user-id
                   sex   age-string   
                   nation  zipcode   hours-work-per-week-string  
                   ;;end make-shaq-intro-text
                   ))

(defparameter *shaq-pt1-intro-text 
           (format nil "~%                                                 
                                                                PART 1: YOUR MAIN SCALE RESULTS SUMMARY

    Your results are presented in two main parts: PART 1 lists all your MAIN SCALE SCORES ONLY.  Part 2 (in a separate window) lists ALL your results including all the scales, subscales, and question results, along with self-help internet links. Part 1 is meant to be an overview of your results.  Part 2 is a detailed view.

    PART 1: INFORMATION
    Part 1 gives your score on all main shaq scales you completed. each scale  consists of questions related to a common value or belief area, a life skill area, or other personal attribute that research has been shown to relates to success, happiness, health, relationship success, or other important life outcomes. 

    EACH SCALE INCLUDES THE FOLLOWING INFORMATION:
              * SCALE NAME AND SCALE DESCRIPTION. Often correlations with happiness or other outcomes are given. Correlations range from 0.0 to 1.000; 0.3 to 0.4 are good, 0.4 to 0.6 very good, above 0.6 unusually high for this type of research. (Statistical note: all quoted correlations are significant at the p < .001 level and sample N > 1500.) 
              * YOUR DATA. Your RELATIVE SCORE ranges from 0.0 to 1.000.  Normally the higher the score, the better.  The SD (standard deviation) is a measure of how much variation you had among the scale items.  For example, if you answered all the questions the same, the standard deviation would be about 0.0, meaning no variation/deviation at all.
              * GRAPHIC SCORE LINE: A graph line is drawn that reflects your relative score (see #2). Normally, the LONGER THE GRAPH, THE BETTER THE SCORE.
              * COMPARISON TO OTHERS' RESULTS.  Where possible, each scale also includes the Mean and Standard Deviation (SD) of all (3400) users in our research sample.

    ||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||"    ))


(defparameter *shaq-pt2-intro-text 
            (format nil "~%
                                                     PART 2: ALL RESULTS--YOUR SCALE, SUBSCALE, AND QUESTION RESULTS
                                                                                         WITH SELF-HELP INFORMATION

    INFORMATION 
    Part 2 provides a detailed look at ALL your SHAQ results.  Each subsection contains each of the following:
         1. MAIN SCALE RESULTS  In part 2 each scale is listed with all it's subscales (if any) and all its questions. (Scale questions divided and listed under each subscale section).
         2. SUBSCALE RESULTS.  Many main scales have been subdivided further into subscales which provide you with more detailed information about yourself related to the larger, more general category represented by the main scale.  The scores are presented the same way the scale scores are.

            UNDERSTANDING YOUR SCALE and SUBSCALE SCORES: Each scale/subscale includes the following:
              * SCALE NAME AND SCALE DESCRIPTION. Often correlations with happiness or other outcomes are given. Correlations range from 0.0 to 1.000; 0.3 to 0.4 are good, 0.4 to 0.6 very good, above 0.6 unusually high for this type of research. (Statistical note: all quoted correlations are significant at the p < .001 level and sample N > 1500.) 
              * YOUR DATA. Your RELATIVE SCORE ranges from 0.0 to 1.000.  Normally the higher the score, the better.  The SD (standard deviation) is a measure of how much variation you had among the scale items.  For example, if you answered all the questions the same, the standard deviation would be about 0.0, meaning no variation/deviation at all.
              * GRAPHIC SCORE LINE: A graph line is drawn that reflects your relative score (see #2). Normally, the LONGER THE GRAPH, THE BETTER THE SCORE.
              * COMPARISON TO OTHERS' RESULTS.  Where possible, each scale also includes the Mean and Standard Deviation (SD) of all (3400) users in our research sample.

         3. QUESTION RESULTS.  Your results for EVERY SCALE QUESTION are presented.  If the main scale has subscales, the questions are listed under the appropriate subscale.  The main scale includes all the questions of its' subscales.  Your individual question results lists every question that you answered. They are grouped by the scale of which they are members. Questions that are not part of any scale are listed separately, and questions that are part of more than one scale are listed under each scale. Each question lists essentially the same information listed above under the scales (except SD). Each question result includes the following:
               * The EXACT QUESTION you answered.
               * Your EXACT ANSWER to the question.
               * NORMAL OR REVERSED QUESTION. Relative-scores are generally scored so that a higher score is more desirable. For example, suppose a question read, \"I read poorly.\" and you answered \"I strongly agree.\"  Instead of giving a high relative score of 1.0 for the answer, SHAQ REVERSES the scoring so that the relative score would be a very low score. A note indicates when an item was a reverse-scored question.

         4. SELF-HELP SUGGESTIONS: In some cases, brief suggestions are printed out under the scale or question.
         5. INTERNET HELP LINKS: Our web site often contains specific suggestions on how to improve yourself in most of the areas covered by SHAQ. Some other internet self-help links are also provided.
          ==> WE STRONGLY SUGGEST THAT YOU FOLLOW and STUDY THE INTERNET HELP LINKS!

        UNDERSTANDING THE FACTORS UNDERLYING YOUR DEGREE OF HAPPINESS, SUCCESS, and OTHER OUTCOMES.  Correlations* from research results are included in information about many scales. The correlations are important for helping you determine the strength of the relationship between your scale scores and the emotional outcomes of happiness, low depression, low anxiety, and low anger/aggression. Other outcomes such as income, health, relationship outcomes, and academic success also have many moderate to strong correlations with SHAQ scales, but were only occassionally included with your results. For more information about these success factors, see the SHAQ research research summaries.

   *[UNDERSTANDING CORRELATIONS:  Correlations range from minus 1.0 to plus 1.0. A correlation of zero means there is no relationship between the variables (e.g. scale and happiness).  Generally correlations from 0.2 to 0.4 are moderate,  correlations of 0.4 to 0.6 are moderately high, and correlations above 0.6 are higher than usual in this type of research.
   Correlations ARE NOT ADDITIVE--that means that if  3 variables X1, X2, and X3 all are correlated with another variable (e.g. happiness), then their SUM CAN BE GREATER THAN 1.0.  (E.G. X1 could correlate 0.6 with happiness, X2  0.5 with happiness, and X3 .0.3 with happiness. The sum is 1.40, yet the maximum correlation for EACH individual factor is 1.0.) The reason for this apparent oddity is that X1, X2, and X3 can correlate with each other so that all 3 variables share some common factor with happiness.  You will see that many scales correlated 0.3 to 0.6 with happiness. These scales also correlated in similar ranges with each other. Put in a simpler way, more generally GOOD CORRELATES WITH GOOD!  People high in one positive factor tended to be high in others as well.  Similarly, people who scored low on one factor tended to score low on others as well. This was predicted by the theory behind SHAQ.  Part of the good news is that developing yourself on one important factor may have positive effects on other factors as well. For example, changing a top value (such as valuing honesty, integrity, or  happiness more) can have a wide effect on many other values, goals, and habits.]

   * TO LEARN MORE ABOUT SUCCESS OUTCOMES OR THE SHAQ RESEARCH, GO TO:  http://www.csulb.edu/~tstevens/h10conclusions.htm 
[Note: Correlations were included only when moderate and statistically significant, (normally p < .001).  SHAQ research included over 3400 people of a wide variety of ages, occupations, locations, religions, etc.]

    ||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||
" ))                                                       ;;results-information
                   ;;*part1-results-text
                   ;;*part2-results-text
  
;;test
;;  (make-shaq-results-intro-text "date-string"  "name " "user-id" "sex"   "age-string"   "emailaddress" "nation"  "zipcode"   "hours-work-per-week-string" "usertype-string"  "usergoals-string" "scalesel-string") 

;;make-results-text3-closing
;;
;;ddd
(defun make-results-text3-closing (priority-helplinks-text other-helplinks-text) 
  (format nil 
"
    ||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||

                                                                                        PART 3: USING YOUR SHAQ RESULT

    The value of your results: many of these scales and questions have been supported through previous research on more than 6,000 people. Our previous research and the research of many others has shown how important life skills (and other SHAQ factors) are for achieving success and happiness in college, career, marriage and other relationships, and other life areas. This web site has self-help information and internet links for developing life skills that can eventually make a significant difference in your life.

    TO DEVELOP YOUR LIFE SKILLS, FOLLOW OUR INTERNET LINKS, take courses, get psychological or other) counseling, go to workshops, and read related books.

    WHAT CHANGES CAN INCREASE YOUR SUCCESS AND HAPPINESS MOST?
    You may want to focus your efforts on your lowest-scoring areas or on areas where you are the most unhappy. These are areas that may significantly affect your happiness, relationships, academic  or career success, or other emotions or life areas.~%
    We strongly suggest that you:
         1. GO TO OUR WEB SITE HELP LINKS provided and examine the brief suggestions for each area. (All information is including Dr. Stevens' book is FREE.)
             CLICK ON THE INTERNET HELP LINKS in the bottom SELF-HELP WINDOW (under the results help) to bring that web page into the right window (under the results text).
         2. SET GOALS AND PLAN: Start with one or two areas you think will make the greatest impact upon your success and happiness. set goals for what you want to accomplish, use our web site to help you plan, make your plan a priority, and get started. spending only a little time each week can make a huge difference over time. 
             THOSE LITTLE BITS OF EXTRA EFFORT USUALLY SEPARATE THE MOST SUCCESSFUL AND HAPPY FROM OTHERS IN THE LONG RUN.
         3. Follow additional links provided at our web site to get direct help.
         4. GET ADDITIONAL HELP from counseling, classes, books, or other resources suggested on our web page. we wish you good fortune in your efforts.

    YOUR PERSONALIZED LISTS OF RECOMMENDED SELF-HELP INTERNET LINKS:
    These help-links lists have been prepared especially for you based upon your SHAQ scores and upon our research results revealing the factors that seem to have the greatest impact upon peoples' happiness and success. The first list is the help-links list calculated to be the most important for you, and the second list is a list of additional help-links that might be useful to you. Of course your own priorities of what aspects of yourself you want to develop and are MOST MOTIVATED TO DEVELOP should be of prime importance.  Also, try to understand how developing some deeper factors that are ROOT CAUSES of HAPPINESS and SUCCESS could be of greater help to you than some factors that may seem more obvious to you now.~%

    NOTE FOR COLLEGE STUDENTS: If you are a college student, you have a great opportunity in college to improve life skills while in college. college courses, student activities, counseling, workshops, and reading can help you develop life skills such as interpersonal skills, self-management skills, and thinking skills that can increase your success and happiness.
  
    IF YOU ARE UNHAPPY WITH YOUR RESULTS:  SHAQ was designed so that only people with extremely high levels of skills or other attributes would score high on most scales. the purpose of shaq is to help everyone find areas for self-improvement--even people with high levels of the attributes.  Receiving more moderate scores (and many recommendations for improvement) does not indicate that there is something wrong with you, it is meant only to help you find many possibilities to grow and find higher levels of success and happiness.  Also, if you are a person who is very self-critical, you may have underrated yourself.  On the other hand, if you are someone who is somewhat self-deceptive and received extremely high scores, you may have overrated yourself.
    --------------------------------------------------------------------------------------------------------------------------------------------------------------------------

                                                YOUR PERSONALIZED LISTS OF RECOMMENDED SELF-HELP INTERNET LINKS:

   These help-links lists have been prepared especially for you based upon your SHAQ scores and upon our research results revealing the factors that seem to have the greatest impact upon peoples' happiness and success. The first list is the help-links list calculated to be the most important for you, and the second list is a list of additional help-links that might be useful to you. Of course your own priorities of what aspects of yourself you want to develop and are MOST MOTIVATED TO DEVELOP should be of prime importance.  Please also try to understand how developing some  possibly deeper factors that are root causes of happiness and success could be of greater help to you than some factors that may seem more obvious to you now.

   >>>>>>>>>>>>>>>>>>> YOUR HIGHER PRIORITY HELP-LINKS:
~A

   >>>>>>>>>>>>>>>>>>> OTHER RECOMMENDED HELP-LINKS FOR YOU: 
~A

    ||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||
             
                                                WE WISH YOU A LIFE FILLED WITH HEALTH, SUCCESS, AND HAPPINESS  

   Author of SHAQ: Tom G. Stevens PhD, psychologist/professor emeritus, California State University, Long Beach.
   VISIT DR. STEVENS'  WEB SITE for 100's of pages of free self-help information (including free on-line copy of the book,
  \"YOU CAN CHOOSE TO BE HAPPY: 'RISE ABOVE' ANXIETY, ANGER, AND DEPRESSION\" at:    http://www.csulb.edu/~~tstevens
   EMAIL: tstevens@csulb.edu
   FEEDBACK: Please send your comments about your experience with shaq and any suggestions for improvement.~% 
   CONTACT DR. STEVENS FOR MORE INFORMATION ABOUT SHAQ OR TO USE SHAQ FOR RESEARCH OR OTHER PURPOSES.  (normally, 
   use of shaq is free with Dr. Stevens' permission for non-profit use as long as the author is given proper credit.)
          (c) 2014 Tom G. Stevens PhD
      "
                   ;;part3-results-text
                   priority-helplinks-text  ;;includes urls
                   other-helplinks-text
                   ;;end format, setf
                   ))

    #|(setf  *data-text 
           (format nil "          
       ~%//*** beginning new user ***         inst=  ~a ~% 
      date: ~a    ~%
      name: ~a ~a          userid: ~a~% 
      sex: ~a     age: ~a      email: ~a~% 
      nation:  ~a zipcode: ~a     hours work/week: ~a~%
      nation: ~a~%
 ---------------------------------------------------------------------------------------------------
        user type: ~%~a
       ~%~%
        user goals: ~%~a
       ~%~%
 ---------------------------------------------------------------------------------------------------
                                                   ***part 1:scale score results***~%"  

                   credit-class-instructor  date-string   first-name last-name  user-id  
                   sex   age-string   emailaddress
                   nation zipcode   hours-work-per-week-string
                   nation   
                   units-current-semester  
                   usertype-string  usergoals-string
                   hq-results-text
                   ))|#
 


;;PROCESS-SCALES-RESULTS
;;
;;ddd
(defun process-scales-results (&key (q-datalist *shaq-data-list) 
                                    (all-scales-datalist *shaq-scaledata-list)
                                    (incl-subscales-p t)  (omit-list '("sid")))
  "in frames-results.  take list of all data results and creates results text for all scales one at a time. returns (values scales-results-text scales-ss-quests-results-text
            all-button-keylist-lists all-helplink-name-list all-helplink-url-list
            all-helplink-description-list help-priority-list all-quests-results-text). note: button-keylist-list ends with user-help-priority (eg = .7)"
  (let*
      ((multi-sel-q-results-text "")
       (scales-results-text "")
      ;; (scales-subscales-results-text "")
       (scales-ss-quests-results-text "")
       (all-multi-quest-results-text "")
       ;;text symbols lists
      ;; (text-scalesyms)
       (text-scale-ss-syms)
       (text-scale-ss-qs-syms)
       (hq-results-text)
       ;;help lists
       (all-button-keylist-lists)
       (all-helplink-name-list)
       (all-helplink-url-list)
       (all-helplink-description-list)  
       (help-priority)
       (user-help-priority)
       (help-priority-list)
       (quests-intro-text 
" |||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||| QUESTION RESULTS FOR EACH SCALE (AND SUBSCALE)  ||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||
")
       (all-quests-results-text quests-intro-text)
     (item-var)
     (scale-type)
     (scalevar)
     (scale-inst)
     (scale-name)
     (scaledata-list)
     (scale-quests-text)
     (scale-quests-intro-text)
     (is-subscale-p)
     (subscale-quests-intro-text)
     (subscale-var)
     (subscale-inst)
     (subscale-name)
     (subscale-text)
     (mult-sel-quest-name)
     (multi-sel-quest-p)
     (super-scale)
     (scaledata-ss-list)
     (superclass)
     (scale-rel-score-text)
       )
   (loop
     for item in all-scales-datalist
#|     with item-var
     with scale-type
     with scalevar
     with scale-inst
     with scale-name
     with scaledata-list
    ;;with m with mean 
     ;;with total-score 
     ;;with max with max-score 
     ;;with s with sd 
     ;;with v with variance
     ;;with new-scale-p
     ;;with new-subscale-p
     ;;with qdata-list
     ;;with scale-quests
     with scale-quests-text
     with scale-quests-intro-text
     with is-subscale-p
     with subscale-quests-intro-text
     with subscale-var
     with subscale-inst
     with subscale-name
     with subscale-text
     ;;with omit-item-p
     ;;with multi-sel-quest-p
     with mult-sel-quest-name|#
;;eg (:subscaledata "ssreclosefriends" :n 2 :rel 1.0 :mn 7.0 :tot 14 :max 14 :sd 0.0 :var 0.0)
     do
     (cond
      ((member item '(scale  subscale scales :shaq-scaledata-list) :test 'equal)
       nil)
      ((member item omit-list)  nil)
#|      was (setf scale-name nil
             subscale-name nil
             omit-item-p t))|#
     ;;not needed??  (setf omit-item-p t))
     ((and (listp item)
           (or (equal (car item) :scaledata)(equal (car item) :subscaledata)))
      (setf scaledata-list item)
      #|       (multiple-value-setq (scale-type scale-name n num-item r rel-score m mean t total-score max max-score s sd v variance)
           (values-list item))|#
      (cond
       ((equal (car scaledata-list) :scaledata)
        (setf  is-subscale-p nil
               scalevar (second scaledata-list)
               item-var scalevar
               scale-inst (get-class-inst scalevar))
        ;;(afout 'out (format nil "scalevar= ~a" scalevar))
        (setf scale-name  (slot-value (eval scale-inst) 'scale-name)
              super-scale  scale-name
               scaledata-ss-list (get-scaledata-subscales scaledata-list)))
       ((equal (car scaledata-list) :subscaledata)
        (setf  is-subscale-p t
             subscale-var (second scaledata-list)
             item-var subscale-var
               subscale-inst (get-class-inst subscale-var)
               subscale-name  (slot-value (eval subscale-inst) 'scale-name)))
       (t nil))                   

      ;;process-scale-results finds the needed qvar data
       ;;not needed? (setf qdata-list item)
      (multiple-value-bind (scale-text button-keylist-list helplink-name-list 
                                       helplink-url-list helplink-description-list
                                       user-help-priority scale-quests)
          (process-scale-results item-var :is-subscale-p is-subscale-p 
                                 :super-scale super-scale  :scaledata-list scaledata-list)

        ;; this seems to print even for reg scales
        ;;(if is-subscale-p (afout 'out (format nil "after process-scale-results, scale-text= ~a~%" scale-text)))

        ;;for two different results windows:
        ;;     1. scales & subscales; 2a. scales with subscales; questions by subscale
        ;;  or  2b.scales,subscales with questions
        (cond
         ;;if no subscales for this scale
         ((null is-subscale-p)
          (setf scale-quests-intro-text
                (format nil "
    ================================= SCALE QUESTION RESULTS =================================
   >>>>>>>>>>>    QUESTION RESULTS FOR SCALE:  ~s" scale-name )
                scales-results-text
                (format nil "~a~a" scales-results-text scale-text)
                ;;scales-subscales-results-text
                ;;(format nil "~a~a" scales-subscales-results-text  scale-text)
                scales-ss-quests-results-text
                (format nil "~a~a" scales-ss-quests-results-text 
                        scale-text)
)
          ;;add quest text if no subscales for this scale
          ;;JJJ
          (unless scaledata-ss-list
            (setf scale-quests (get-scaledata-qvars scaledata-list)
             scale-quests-text (get-scale-quests-text scale-quests)
                  scales-ss-quests-results-text 
                  (format nil "~a~a~a" scales-ss-quests-results-text 
                             scale-quests-intro-text scale-quests-text)
                  all-quests-results-text
                  (format nil "~a~a~a"  all-quests-results-text 
                             scale-quests-intro-text  scale-quests-text)))
          ;;(afout 'out (format nil "scale scale-quests-text= ~a" scale-quests-text))
          ;;end no subscales clause
         )
         ;;if this is a subscale (of  scale)
         (is-subscale-p
          (setf subscale-quests-intro-text
                (format nil "~%
     ================================= SUBSCALE QUESTION RESULTS ================================

        ==>  QUESTION RESULTS FOR SUBSCALE:  ~a   
                  (SUBSCALE OF SCALE: ~a)" subscale-name  super-scale )

                ;;scales-subscales-results-text
                ;;(format nil "~a~a" scales-subscales-results-text scale-text)
                scales-ss-quests-results-text
                (format nil "~a~a" scales-ss-quests-results-text scale-text))

               ;;kkk;add quest text if no subscales for this scale and add to all-quests-results-text
               (setf scale-quests (get-scaledata-qvars scaledata-list)
                     scale-quests-text (get-scale-quests-text scale-quests)
                     scales-ss-quests-results-text 
                     (format nil "~a~a~a" scales-ss-quests-results-text 
                             subscale-quests-intro-text  scale-quests-text)
                     all-quests-results-text
                     (format nil "~a~a~a"  all-quests-results-text 
                             subscale-quests-intro-text  scale-quests-text))
            ;;(afout 'out (format nil "subscale scale-quests-text= ~a" scale-quests-text))
            ;;end is-subscale-p clause
              )               
         (t nil))
    
        ;;for the help info & buttons
        (setf all-button-keylist-lists (append all-button-keylist-lists (list button-keylist-list))
              all-helplink-name-list (append all-helplink-name-list helplink-name-list)
              all-helplink-url-list (append all-helplink-url-list helplink-url-list)
              all-helplink-description-list (append all-helplink-description-list 
                                                    helplink-description-list))
        ;;reset vars
        (setf scale-name nil
              subscale-name nil
              scalevar nil
              subscale-var nil
              qdata-list nil
              scaledata-list nil)
        ;;end mvb, :scale or :subscale clause
        ))
       ;;ccc multi in process-scales-results fix help info etc
       ((and (listp item)(equal (second item) :multi))
        (setf mult-sel-quest-name (third item))
        ;;kkkk  multi sel quest results  SSS START HERE, PUT MULTI AFTER SCALES RESULTS IN PART 2, AND OMIT IN PART 1???
       (multiple-value-bind (multi-sel-quest-text button-keylist-list helplink-name-list 
                                              helplink-url-list user-help-priority helplink-description-list)
           (make-multi-selection-quest-text  mult-sel-quest-name) 
        ;;(setf scales-results-text (format nil "~a~a~%" scales-results-text multi-sel-quest-text)
             ;;scales-subscales-results-text 
              ;; (format nil "~a~a" scales-subscales-results-text  multi-sel-quest-text)
               ;;multi-sel-q-results-text (format nil "~a~a" multi-sel-q-results-text multi-sel-quest-text)
               ;;all-multi-quest-results-text is separately created to put where want later
               (setf all-multi-quest-results-text 
                     (format nil "~a~a~a" all-multi-quest-results-text *separator-text
                             multi-sel-quest-text))
#|               scales-ss-quests-results-text 
                       (format nil "~a~a~a" scales-ss-quests-results-text *separator-text
                               multi-sel-quest-text)|#
               all-button-keylist-lists (append all-button-keylist-lists (list button-keylist-list))
               all-helplink-name-list (append all-helplink-name-list helplink-name-list)
               all-helplink-url-list (append all-helplink-url-list helplink-url-list)
               all-helplink-description-list 
                           (append all-helplink-description-list helplink-description-list)
               help-priority-list (append help-priority-list (list user-help-priority))
                           
         ;;reset vars
          (setf multi-sel-quest-p nil
                mult-sel-quest-name nil)
         ;;bbb :multi
         ;;end mvb, clause
         ))
      (t nil))
     
     ;;end loop
     )
#|   ;;append hq text (creates either hq info or *defaulthqtext)
   (setf hq-results-text (make-hq-text))
               scales-results-text
               (format nil "~a~a" hq-results-text scales-results-text )
              ;; scales-subscales-results-text 
               ;;(format nil "~a~a" hq-results-text scales-subscales-results-text)
               scales-ss-quests-results-text
               (format nil "~a~a" hq-results-text scales-ss-quests-results-text))|#

    (values scales-results-text    ;;was scales-subscales-results-text 
            scales-ss-quests-results-text all-multi-quest-results-text
            all-button-keylist-lists all-helplink-name-list all-helplink-url-list
            all-helplink-description-list help-priority-list
            all-quests-results-text)   
    ;;end let process-scales-results
    ))
;;test
;;  (process-scales-results)
;;  (multiple-value-setq (*scales-results-text *scales-ss-quests-results-text *all-button-keylist-lists *all-helplink-name-list *all-helplink-url-list *all-helplink-description-list *all-quests-results-text) (process-scales-results))
;; (get-scale-quests-text)


;;PROCESS-SCALE-RESULTS 
;; (modify based upon above function doing data analysis and adding to *shaq-data-list
;;
;;ddd
(defun process-scale-results (scalevar   &key  is-subscale-p scaledata-list 
                                           super-scale (data-list *shaq-data-list)
                                           (all-scales-datalist *shaq-scaledata-list) )
  "in frames-results,  1.given scale-name and question-data-list (in *shaq-data-list format) in data-list ,2.calcs scale data, 3. adds to *shaq-data-list, 4. writes data in formatted results. returns (values scale-text button-keylist-list helplink-name-list helplink-url-list helplink-description-list help-priority scale-quests). appends *shaq-data-list with (list scale-name  num-q-data-lists scale-rel-score scale-mean-score scale-max-score scale-sd scale-variance) and adds same items to slots in the scale'-inst. note: last item of  button-keylist-list is the user-help-priority."
 ;; (slot-value *st1higherself-inst  'mean-score)
  (let*
      ((scale-inst (eval (get-class-inst scalevar)))
       (scale-name (slot-value  scale-inst 'scale-name))
       (scale-description  (slot-value  scale-inst 'description))
       (scale-quests (slot-value scale-inst 'scale-questions))
       (scale-user-mean-text (slot-value scale-inst 'mean-score))
       (scale-user-mean (my-make-symbol scale-user-mean-text))
       (scale-user-sd-text (slot-value scale-inst 'standard-deviation))
       (scale-user-sd (my-make-symbol scale-user-sd-text))
       (scoring-formula '+) ;;not needed for shaq(slot-value scale-inst 'scoring-formula))
       (help-info (slot-value scale-inst 'help-info))
       (helplink-list (slot-value scale-inst 'help-links))  
       (help-priority (slot-value scale-inst 'help-priority))
       (user-help-priority)
       (help-priority-text "")
       (scale-superclass (car (find-direct-superclass-names scalevar)))
       (button-keylist-list)(helplink-name-list)( helplink-url-list)
       (helplink-description-list)
       (helplinks-lists)
       (num-quests) 
       (scale-rel-score) 
     ;;  (scale-SD)
       (q-scores)
       (num-qscores 0)
       (q-relative-scores)
       (q-max-scores)
       (total-q-rel-scores)
       (sum-sq-scores 0)
       (graph-string)
       (rating)
       ;;text
      ;;(superscale-text "")
       (mean-text "")
       (sd-text "")
       (rating-text "")
       (scale-text-p1 "")
       (helplink-text "")
       (helplink-url-text "")
       (helpinfo-text "")
       (scale-text-p2)
       (scale-text-all)
       )
                      
                               
    (unless scaledata-list (setf scaledata-list (get-scale-datalist scale-name)))
    ;;set some vars
       ;;E.G. (:SUBSCALEDATA   "SSB2ETHIC"  :N  4  :REL  0.325  :MN  3.25  :TOT  13  :MAX  40  :SD  3.8971143  :VAR  15.1875)
       (setf num-quests (getf scaledata-list :n)
             scale-rel-score (getf scaledata-list :rel)
             scale-rel-score-text (format nil "~3$" scale-rel-score))
             ;;scale-mean-score (getf scaledata-list :mn)
             ;;scale-max-score (getf scaledata-list :max)
             ;;scale-SD (getf scaledata-list :sd)
             ;;scale-variance (getf scaledata-list :var
    
    ;;(afout 'out (format nil "For SCALE= ~A~%SCALEDATA-LIST= ~A~% help-info= ~Sscale-description= ~S" scale-name  scaledata-list help-info scale-description))
    ;;for help-priority 
   ;;was (unless help-priority (setf help-priority 0))

   ;;if no help-priority, don't use it at all
   (when (and (numberp help-priority)
              (numberp scale-user-mean) (numberp scale-rel-score))
    ;;Adjust help-priority, because if help-priority = 0, multiply by 0, get 0.
    (cond
     ((> help-priority 0)
      (setf user-help-priority (* 2.0 help-priority (-  scale-user-mean scale-rel-score))))
     (t (setf user-help-priority (* 1.0  (-  scale-user-mean scale-rel-score)))))    
    
    ;;if  user-help-priority 
    (cond
     ((and (> user-help-priority 0.4) (< scale-rel-score .7))
      (setf help-priority-text 
 "
    =>  IMPORTANT: CHANGING THIS ATTRIBUTE MAY HAVE A SIGNIFICANT EFFECT ON YOUR HAPPINESS."))
     ((and (>  user-help-priority  0) (< scale-rel-score .8))
      (setf help-priority-text 
"
    => YOU MAY BENEFIT FROM IMPROVING THIS ATTRIBUTE."))      
     (t (setf help-priority-text  "") ))       
    ;;end when help-priority
    )
    ;;get the help information/links
    (multiple-value-setq (button-keylist-list helplink-name-list 
                                              helplink-url-list helplink-description-list) 
        (find-helplinks-info helplink-list)) ;; user-help-priority))
    ;;append the user-help-priority with a key
    (setf button-keylist-list (append button-keylist-list (list user-help-priority)))

      
      ;; 1.Finds question data in *shaq-data-list
  ;;2.calc scale data, 3. add to *shaq-data-list, 4. use here in results.

  (when scale-user-mean (setf mean-text 
           (format nil "~%     All Users Average/Mean Score: ~A" scale-user-mean-text)))
  (when  scale-user-sd (setf sd-text (format nil "  All Users SD: ~A" scale-user-sd-text)))
  (when  rating (setf rating-text (format nil "     RATING==> ~A" rating)))

    ;; make the graph-string
    (setf graph-string (make-graph-string scale-rel-score ))
    
    ;;DIFFERENT TEXTS FOR SCALES AND SUBSCALES
    (cond
     ((null is-subscale-p)
      ;;make scale text
      (setf scale-text1 (format nil "

   >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>> ~A CATEGORY SCALE <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<

   ====>  SCALE:  \"~A Scale\"    [Number of Questions: ~A]
    SCALE SCORE==>  ~A of possible 1.0: 
    SCORE GRAPH: ~A~A~A~A
    SCALE DESCRIPTION: ~A" scale-superclass scale-name num-quests scale-rel-score-text    graph-string mean-text sd-text     rating-text  scale-description ))
      )
     ;;otherwise it is a subscale
     (is-subscale-p
      ;;SSS WRITE NEW SUBSCALE TEXT HERE??
     ;; (when super-scale (setf superscale-text (format nil "of  SCALE: \"~A\"" super-scale)))
      (setf scale-text1 (format nil "  

         ****************************************** SUBSCALE of SCALE: ~S ******************************************

   >>>>>>>  SUBSCALE: ~S  
    SCALE SCORE==>  ~A of possible 1.0:   [Number of Questions: ~A]
    SCORE GRAPH: ~A~A~A~A
    SUBSCALE DESCRIPTION: ~A
" super-scale scale-name  scale-rel-score-text num-quests graph-string mean-text sd-text rating-text  scale-description ))
      )
     (t "ERROR? --IMPROPER LIST ITEM??"))

    ;;FOR EITHER SCALE OR SUBSCALE
    (when helplink-name-list (setf  helplink-text (format nil 
 "~%   INFORMATION AND LINKS, GO TO WEB PAGE: ~A" helplink-name-list)))
    (when helplink-url-list (setf helplink-url-text (format nil "
     Internet Address(URL)=> ~A" helplink-url-list)))
    (when (and  (not (equal help-info ""))) (setf  helpinfo-text (format nil "
    SUGGESTIONS:  ~A~A" help-info help-priority-text)))

    ;;put all of above together into scale-text-p2
    (setf scale-text-p2 
          (format nil "~A~A~A" helplink-text helplink-url-list helpinfo-text))   ;;was [scale-SD: ~A] 
    (unless scale-text-p2 (setf scale-text-p2 ""))    
    (setf SCALE-TEXT (format nil "~A~A~%" scale-text1  scale-text-p2 ))

    (values scale-text button-keylist-list helplink-name-list helplink-url-list helplink-description-list user-help-priority scale-quests)    
   ;;end  let, process-scale-results
    ))
;;;;needs eval to work
;;      (slot-value (eval (get-class-inst 'sT1HigherSelf ))  'description) 
;;TEST
;;   (process-scale-results "INTSS7COLLAB")
;;WORKS = 
#|"SCALE NAME:  INTSS7COLLAB Scale  For 7 questions:  RELATIVE SCALE SCORE==>  0.143 of possible 1.0: 
GRAPH of Relative Score: NIL  
   RATING==> NIL
SCALE DESCRIPTION: A key HQ scale. Neither partner manipulating or controlling.  Partners feel safe revealing weaknesses. Can work together or teach each other effectively. This scale correlated .317 with overall relationship success. ,.406 with overall happiness, .268 with low depression, .235 with low anxiety,.328 with low anger/aggression, and .271 with the health scale. (7 items)
 [scale-SD: 49] 
INFORMATION AND LINKS, GO TO WEB PAGE: NIL
Internet Address(URL)=> NIL
SUGGESTIONS:  
    ---------------------------------------------------------------------------------------------------------------------------------------------------"  NIL  NIL NIL NIL|#
#| ( :SCALE INTSS7COLLAB 
(CRTKLONG cr-Not one talk long before other SINGLE EXTREMELY accurate / like us 0.143 1 NIL 7 1 SCORED-NORMAL LIKEUS7REVERSE)
(CRTEWEAK cr-Not uncomfortable about tell weakness SINGLE EXTREMELY accurate / like us 0.143 1 NIL 7 1 SCORED-NORMAL LIKEUS7REVERSE)
(CRMANIPU cr-Not feel me or partner manipulate SINGLE EXTREMELY accurate / like us 0.143 1 NIL 7 1 SCORED-NORMAL LIKEUS7REVERSE)
(CRREPRAI cr-Partner gives more praise than criticism SINGLE EXTREMELY accurate / like us 0.143 1 NIL 7 1 SCORED-NORMAL LIKEUS7REVERSE)
(CRTEACH cr-Not problem teaching other SINGLE EXTREMELY accurate / like us 0.143 1 NIL 7 1 SCORED-NORMAL LIKEUS7REVERSE)
(CRTLKMOR cr-One partner not much more talkative SINGLE EXTREMELY accurate / like us 0.143 1 NIL 7 1 SCORED-NORMAL LIKEUS7REVERSE)
(INTWKTOG in-We enjoy working together SINGLE EXTREMELY accurate / like us 0.143 1 NIL 7 1 SCORED-NORMAL LIKEUS7REVERSE)|#


#|
SCALE NAME: Academic Achievements and Aptitudes Scale For 3 questions: {9, 12, 13, } RELATIVE SCALE SCORE==> 0.767 of possible 1.0: 
GRAPH of Relative Score: ||llllllllllllllllllllllllllllllllllllllllllllllllllllllllllll__________|| RATING==> Moderately High
SCALE DESCRIPTION: Previous grades and aptitude scores. Your previous grades and your aptitude scores reflect native intelligence, previous motivation, learning skills, and other factors. [SD: 0.678] 
INFORMATION AND LINKS, GO TO WEB PAGE: Learning & Study Skills
Internet Address(URL)=> http://front.csulb.edu/success/learning_&_study_skills.htm
SUGGESTIONS: It is difficult (but not impossible) to change your IQ. However, almost anyone with average intelligence can make top grades in college if they develop good learning skills and study habits. 
If your grades or aptitude scores are lower than you'd like, ask yourself what you can do to improve your motivation, work habits, and learning skills. Pay special attention 
to the motivation and learning skills scales below.
|#

;; note: (slot-value *semotcop-inst 'class-instance) = *PERSIM-INST




;;
;;ddd
#|(defun make-subscale&quests-text (scale &key (datalist *shaq-data-list))
  "In Frames-results, RETURNS  text for the scale, subscales (if any), and questions for each subscale (or scale)."
  (let
      ((scale-ss-quests-text)
       (scale-inst (get-class-inst scale))
       (subscales (get-subscale-names scale))
       (scale-qvar-list)
       (subscale-text)
       )
    (cond
     (subscales
      (setf subscale-text (make-scale-text   ???))
      (loop
       for subscale in subscales
       with ss-qvars
       with ss-quest-text
       do
       (setf ss-qvars (find-scales-qvars subscale))


   ;;FINISH HERE

   ;;make each subscale questions text after subscale text
       ;;end loop
       )
      ;;end subscales
      )
     (t

   ;;FINISH HERE make questions text for scale if no subscales??
   ))
    

    ;;end let, make-subscale&quests-text
    ))|#
;;TEST
;; (make-subscale&quests-text 


;;GET-SCALE-QUESTS-TEXT
;;
;;ddd
(defun get-scale-quests-text (qvar-list &key ;;scale-name subscale-name
                                        (num-newlines 1) (separator-text *separator-text))
  "In Frames-results, RETURNS (values quests-text scalename-list) text for the qvars in the list. num-newlines is the number of newlines before the text (default = 1)."
  (let
      ((quests-text "")
       (newlines)
       (scalename-list)
       (name-line-text)
       (qsym)
       (qtext-list)
       (qtext)
       (x)
       (scale-name)
       )
   
    (dotimes (n num-newlines)
      (setf newlines (format nil "~%"))
      )            
    (loop
     for qvar in qvar-list
     do
     (setf qsym (my-make-symbol (format nil "~AT" qvar))
           qtext-list (eval qsym))
     (multiple-value-bind (qtext x scale-name)
         (values-list qtext-list)
       (setf quests-text 
             (format nil "~A~%~A~A~A" quests-text separator-text  newlines qtext)
             scalename-list (append scalename-list (list scale-name)))
       ;;end mvb,loop
       ))
    (values quests-text scalename-list)
    ))
;;TEST
;; (get-scale-quests-text   '(THMRELIG THM10OTH)))
     



;;MAKE-ALL-QUESTIONS-TEXT
;;
;;ddd
(defun make-all-questions-text (&key (all-questsdata-list *shaq-data-list))
       "In Frames-results, RETURNS all-text-questsyms-list for all questions completed in order from *shaq-data-list.  Each item in the list is a symbol of the question qvarT set to a '(qvar quest-text qvar scale-name) -- later incl subscale?)"
  ;; e.g.  :SCALE   ST8ATTENTIONFUNEASY     (THMATTEN  "ts-Attention from others"    :SINGLE  "The most important thing in my life"   "1.000"   10  NIL  10  10  SCORED-NORMAL  PRIORITY10) ... etc.
;; GENERAL FORMAT (list qvar-string q-label :single  selected-text relative-score adjusted-int-score q-num num-answers selected-data nor-or-rev-scored answer-panel-sym))
;;OR  :text-data  "sID"   ("Name" "Tom Stevens" :SINGLE "Tom Stevens")   ("UserID" "333333" :SINGLE "333333")   ("Sex" "Male" :SINGLE "Male" 1) ETC.
;;OR (:MULTI-SEL-QUEST  "utype"  ("UTYPE"   :MULTI   "utype"   "UserType"   1   ("twanttho" "1" 1 T 1 1 (:XDATA :SCALES (HQ)))    ("tknowmor" "2" 1 T 1 1 (:XDATA :SCALES (HQ)))    ("twanthel" "3" 1 NIL 0 1 (:XDATA :SCALES (HQ)))   ("twantspe" "4" 1 NIL 0 1 (:XDATA :SCALES NIL))  ETC.
  (let
      ((all-text-questsyms-list)
     (is-scale-p)
     (scale-name)
     (msq-name)
     (msq-text-name)
     (qdata-list)
     (qvar)
     (qtext-sym)
       )
    (loop
     for item in all-questsdata-list
#|     with is-scale-p
     with scale-name
     with msq-name
     with msq-text-name
     with qdata-list
     with qvar
     with qtext-sym|#
     do
     (cond
      ((equal item :scale)
       (setf  is-scale-p t
             scale-name nil))
      ((and is-scale-p (null scale-name))
       (setf scale-name item))
      ;;for msq text questions
      ((and (listp item)(equal (car item) :multi-sel-quest))
       (setf msq-name (second item))
       (setf msq-text-name (my-make-symbol (format nil "~AT" msq-name))
             all-text-questsyms-list (append all-text-questsyms-list (list msq-text-name)))
       (set msq-text-name  
            (make-multi-selection-quest-text (second item))) ;; :msq-datalist item))
       )
      ;;for multi items in a normally single-selection scale
;;item would be (STUCOLLE :MULTI #24# "st-College attending" 7 ("cocsulb" "1" 1 T 1 7 NIL) ("cccsu" "2" 1 NIL 0 7 NIL) ("coucal" "3" 1 NIL 0 7 NIL) ("coopublc" "4" 1 T 1 7 NIL) ("coprivca" "5" 1 NIL 0 7 NIL) ("coprivot" "6" 1 T 1 7 NIL) ("cocacomc" "7" 1 NIL 0 7 NIL) ("coothcc" "8" 1 NIL 0 7 NIL) ("coothnat" "9" 1 NIL 0 7 NIL) ("coprgrad" "10" 1 NIL 0 7 NIL) ("cotech" "11" 1 NIL 0 7 NIL) ("highsch" "12" 1 NIL 0 7 NIL) ("coother" "13" 1 NIL 0 7 NIL))
      ((and (listp item) (equal (second item) :MULTI))
       (setf msq-name (car item)
             msq-text-name (my-make-symbol (format nil "~AT" msq-name))
             all-text-questsyms-list (append all-text-questsyms-list (list msq-text-name)))
       (set msq-text-name  
            (make-multi-selection-quest-text msq-name))
       )
      ;;for single selection questions in scales
      ((and scale-name (listp item))
       (setf qdata-list item
             qvar (first qdata-list)
             qtext-sym (my-make-symbol (format nil "~AT" qvar)))
       ;;JJJ
       (multiple-value-bind (qtext q-num answer score max-score relative-score reverse-score-p q-num quest-help-info-links-list)     
       (make-single-selection-question-text qvar :scale-name scale-name
                                            :qdata-list qdata-list)

         ;;find subscale name here or below or not at all (waste?)
         (set qtext-sym (list qtext qvar scale-name)) ;; subscale-name))   
         ;;add to the cumulative list
          (setf all-text-questsyms-list 
                (append all-text-questsyms-list (list qtext-sym)))
         ;;end mvb, clause
       ))
       ;;ignore, processed separately
      ((equal item :text-data)
       (setf scale-name nil)
       )
      (t nil)) 
 
     ;;end loop
     )
    all-text-questsyms-list
  ;;end let, make-all-questions-text
  ))
;;TEST
;; (setf *testaqt  (make-all-questions-text))
;;  (pprint *testaqt)


;;MAKE-SINGLE-SELECTION-QUESTION-TEXT
;;
;;ddd
(defun make-single-selection-question-text (qvar &key scale-name qdata-list 
                                                 append-scale-inst-p)
  "In Frames-results, RETURNS (values question-text q-num answer score max-score relative-score reverse-score-p q-num quest-help-info-links-list).  If append-scale-inst-p Appends scale-inst slot-value question-data-lists with ' (list q-num qvar relative-score score max-score reverse-score-p)."
  (let
      ((qvar-text (get-question-text-formated qvar :add-instrs-p T ))
       (q-num-text "")
       (question-text "")
       (reversed-item-p)
       (item-norm-or-rev)  ;;leave nil so will be purposely set below
       (reverse-scored-p)
        (nor-or-rev-scored)  ;;leave nil so will be purposely set below
       (answer)
       (scale-name1)
       (qvar-stfring)(q-label)(sel-type)
       (selected-text )(relative-score-text)( score)( q-num)( num-answers)
       ( selected-data)
       ( answer-panel-sym)
       (help-info)
       (help-links)
       (quest-help-info-links-list)
       (help-info-text "")
       (help-links-text "")
       (quest-graph "")
       (qvar-list (get-qvar-list  qvar))
       ;;scale inst-info
       (incl-in-results-p)
       )      

          (unless qdata-list
            (multiple-value-setq (qdata-list scale-name1)
                (find-single-selection-question-data qvar)))
          (unless scale-name
            (setf scale-name scale-name1))

       (multiple-value-bind (scale-inst-sym scale-inst scale-inst-string scale-string)
           (get-class-inst scale-name)
         ;;get more scale-slot info
         (setf incl-in-results-p (slot-value scale-inst 'incl-in-results-p))   

           ;;JJJ
           ;;set the values needed for question text
           (multiple-value-setq ( qvar  q-label sel-type  answer relative-score-text score q-num num-answers selected-data item-norm-or-rev nor-or-rev-scored answer-panel-sym)
               (values-list qdata-list))
           
           ;;2014-10 SET THE REVERSED-ITEM-P TO NORMAL-ITEM OR REVERSED-ITEM
           (unless item-norm-or-rev
             (multiple-value-setq ( reversed-item-p item-norm-or-rev )
                 (calc-is-quest-reversed  answer-panel-sym)))
           ;;yyyy

     (when append-scale-inst-p
       ;;append the scale-inst slot value list for calculating the scale score, etc.
       (append-slot-list scale-inst 'question-data-lists
                         (list q-num qvar relative-score-text score   num-answers 
                               nor-or-rev-scored item-norm-or-rev)))

     ;;make quest-graph
    (setf quest-graph (make-graph-string relative-score-text))

     ;;get the help-info and help-links (if any)
     (multiple-value-bind (help-info help-button-lists helplink-name-list helplink-url-list helplink-description-list)
         (find-qvar-help qvar)
       ;;put into a list for returning
       (setf quest-help-info-links-list (list help-info help-button-lists helplink-name-list helplink-url-list helplink-description-list))
       (if  (and (not (equal help-info "NA"))  (stringp help-info) (> (length help-info) 10))
           (setf help-info-text
                 (format nil "~%   SELF-HELP-INFO: ~A"help-info)))
       (if helplink-url-list 
           (setf help-links-text 
                 (format nil "~%   SELF-HELP-LINKS: ~A" helplink-url-list)))       
    ;;the q-num-text
    (cond
     (q-num (setf q-num-text (format nil "~A. " q-num)))
     (t (setf q-num-text  "")))
    ;;make the question text (unless incl-in-results-p)
    (unless (null incl-in-results-p)
      (setf question-text (format nil " >> QUESTION: ~A ~S
  YOUR ANSWER: ~A
  SCORE=> ~A of possible ~A equals RELATIVE SCORE=> ~A of possible 1.0; ~A
  GRAPH of Relative Score: ~A~A ~A" q-num-text qvar-text answer score num-answers relative-score-text  item-norm-or-rev quest-graph help-info-text   help-links-text))) ;;did incl rating help-links  
      (values question-text q-num answer score num-answers relative-score-text 
              nor-or-rev-scored item-norm-or-rev q-num quest-help-info-links-list)
      ;;end mbb, let, make-question-text
      ))))
;;TEST
;;  (make-single-selection-question-text (qvar &key scale-name qdata-list append-scale-inst-p)
;;  (make-single-selection-question-text  'THM6LEAR)
;;  (make-single-selection-question-text 'SLFCOPE)
;;  (make-single-selection-question-text  'COPBLAME)
;;

#|QUESTION: 1. There is no 'absolute' right and wrong or good or bad--it depends upon factors like your point of view, the situation, or one's cultural background.
YOUR ANSWER: Extremely important belief
SCORE=> 3 of possible 10 equals RELATIVE SCORE=>0.3 of possible 1.0: Item scored in REVERSE
GRAPH of Relative Score: ||llllllllllllllllllllllll____________________________|| RATING==> Below Average-consider changes
INFORMATION AND LINKS, GO TO WEB PAGE: Negative Thinking
_____Internet Address(URL)=> http://front.csulb.edu/success/negative_thinking.htm|#



;;KKK MAKE-MULTI-SELECTION-QUEST-TEXT
;;
;;ddd
(defun make-multi-selection-quest-text (multi-qvar &key quest-num multi-qvar-scaledata-list) 
 "In Frames-results, RETURNS (values multi-sel-quest-text help-info help-links). Finds multi-qvar-scaledata-list if not given."
  (let*
      ((multi-sel-quest-text "")
        (multi-selection-qvar-list (get-multi-selection-quest-var-values multi-qvar))        
       ;;use this if want ONLY selected items 
       ;;(selected-answer-text-list (get-multi-sel-items-ansqvar&text multi-qvar)) ;; :msq-datalist msq-datalist))
       (all-answers-datalist)
       (all-answers-text)
     ;;  (title-text "")
     ;;kkkk
       (all-answers-text "") 
       (instr-text "")
       (question-text "")                                 
       (selected-answer-text "")
       ;;added from make-question-frame
       ;;  (afout 'out (format nil "MULTI-SELECTION-QVAR-LIST= ~A~%" multi-selection-qvar-list))
       ;; (q-text-sym (getf multi-selection-qvar-list :primary-qvar-sym))
       ;; (qvar (my-make-symbol  (getf multi-selection-qvar-list :primary-qvar-sym)))
       ;; (label (getf multi-selection-qvar-list :primary-qvar-label))
       ;; q-name (getf multi-selection-qvar-list  :primary-qvar-sym
       (title-text (getf multi-selection-qvar-list :primary-title-text))
       (instruction-text  (getf multi-selection-qvar-list :primary-instr-text))
       (question-text-list  (getf multi-selection-qvar-list :quest-text-list))
       ;; (qvar-name-list  (getf multi-selection-qvar-list    :ans-name-list))
       ;;(ans-text-list  (getf multi-selection-qvar-list  :ans-text-list))
       ;;(quest-data-list  (getf multi-selection-qvar-list :ans-data-list))
       (num-answers  (getf multi-selection-qvar-list  :num-answers))
       (q-num quest-num)
       (q-num-text "")
       ;;not needed     ans-xdata-list  (getf *multi-selection-qvar-list :ans-xdata-list))
       (help-info (getf multi-selection-qvar-list  :help-info))
        (helplinks-list (getf multi-selection-qvar-list  :help-links))
        (button-keylist-list)
        (helplink-name-list) 
        (helplink-url-list)
        (helplink-description-list)
       )
    (unless multi-qvar-scaledata-list
      (setf multi-qvar-scaledata-list (get-multi-qvar-scaledata-list multi-qvar)))
    ;;eg:  (get-multi-qvar-scaledata-list 'bio4job) (BIO4JOB :MULTI "bio4job" "b-Primary occupation" 1 ("student" "1" 1 T 1 1 NIL) ("manager" "2" 1 T 1 1 NIL) ETC.

    (if  (null instruction-text) (setf instruction-text ""))
    (if q-num (setf q-num-text (format nil "~A. " q-num)))
    ;;make question text
    (cond
     ((null question-text-list) (setf question-text-list '("")))
     (T (dolist (text question-text-list) 
          (setf  question-text  (format nil "~A~A" question-text text)
                 ;;eliminate extra spaces and lines
                 question-text (my-substitute '#\space  '#\newline question-text)
                 question-text (my-delete-substring "  " question-text))
          ;;end dolist, T, cond
          )))
    ;;make answer text
;;  ("jewish" "2" 1 T 1 4 NIL)    ("latterd" "3" 1 NIL 0 4 NIL)
;; KKKK get-multi-sel-data-all-values&text
   (multiple-value-setq (all-answers-datalist all-answers-text)
       (get-multi-sel-data-all-values&text  multi-qvar-scaledata-list))

   #|use if only want text to incl selected answers (cond     
     ((null selected-answer-text-list) 
      (setf selected-answer-text ""))
     (T  (dolist (text selected-answer-text-list)
        (setf selected-answer-text (format nil "~A [ ~A ]" selected-answer-text  text)))))|#

    ;;make the multi-ans question text
    (setf multi-sel-quest-text (format nil "
  >> MULTI-SELECTION QUESTION: ~A \"~A\"   
   INSTRUCTIONS: \"~A\"
   YOUR ANSWERS (1=Checked): ~A 
   "q-num-text question-text  instruction-text all-answers-text ))

    ;;if there is any help information in the qvar list
    (if helplinks-list
        (multiple-value-setq (button-keylist-list helplink-name-list helplink-url-list helplink-description-list) ;; help-priority)
            (find-helplinks-info helplinks-list))) ;; user-help-priority))) ;; help-priority)))
    (if (or help-info helplinks-list)
        (setf multi-sel-quest-text (format nil  "~A     SELF-HELP TIPS: ~A
      SELF-HELP LINKS: ~A" multi-sel-quest-text help-info helplink-url-list)))
    ;;end help info addition

    ;;return values
    (values multi-sel-quest-text button-keylist-list helplink-name-list helplink-url-list helplink-description-list)
    ;;end let, make-multi-selection-quest-text
    ))
;;TEST
;;  (make-multi-selection-quest-text 'BIO1ETHN )
#|RESULTS = "   QUESTION: Which is your PRIMARY ETHNIC GROUP origin (May choose multiple if mixed ethnicity). 
   INSTRUCTIONS: Select ALL that apply to you
   YOUR ANSWER(S) :  [ North America ] 
   "|#
;; ;;  (make-multi-selection-quest-text 'SFAMILY)
;;  (make-multi-selection-quest-text 'SCALESSEL)
#|RESULTS = "   QUESTION: If you want your Happiness Quotient (HQ) Score and the most benefit from SHAQ, then check HQ1, HQ2, or HQ3.*HQ1 includes all main scales.*HQ2 also includes the academic-success scales.*HQ3 also includes the career/academic-major interest scales. If you do NOT want your Happiness Quotient (HQ) Score and you DO want to select only one or more SHAQ scales/parts, then SELECT the SCALE(S) you want to complete. 
   INSTRUCTIONS: Select ALL that apply to you
   YOUR ANSWER(S) :  
   " NIL NIL NIL NIL|#
;;  (make-multi-selection-quest-text 'STURESOURCE)



;;MAKE-GRAPH-STRING
;;
;;ddd
(defun make-graph-string (score  &key (substring "|") (intro-string "") (length 100) (begin 0) (end 1.0) (post-string ""))
  "In frames-results. INPUTS score or score-string Uses substring as a basic unit for the graph. If keep length at 100, should keep score between 0 and 1.0 normally."
  (let*
      ((graph-string "[")
       (space-string "")
       (graph)
       (graph-length )
       (units-in-total-string)
       (score-string)
       (space-length)
       )
    (cond
     ((stringp score)
        (setf score-string score
              score (convert-string-to-float score)))
     (t (setf score-string (format nil "~3$" score))))

    (unless (null score)
    (setf units-in-total-string (* (- end begin) length)
          graph-length  (round  (* score units-in-total-string))
          space-length (round (- units-in-total-string graph-length)))
 ;;   (setf *out1 graph-length)
#|    (loop
     for n from 1 to graph-length
     do
     (setf graph-string (format nil "~A~A" graph-string substring))
     ;;end loop
     )|#
    (setf graph-string (make-string graph-length :initial-element '#\|)
          space-string (make-string space-length :initial-element '#\.))
    ;;write the final line
     (format nil "~A ~A   ~A [~A~A] Max: ~A  ~A" intro-string score-string  begin  graph-string
             space-string  end post-string)
     ;;end unless,let, make-graph-string
     )))
;;TEST
;;  (make-graph-string 0.74 :intro-string "GRAPH of Relative Score:" )
;;  (make-graph-string 1.0 :intro-string "GRAPH of Relative Score:" )
;;  (make-graph-string 0.263 :intro-string "GRAPH of Relative Score:" )     





;;xxx ---------------------------------------------------------- MAKE HELP  FRAME AND  HELP TEXT (for end of results text)  ---------------------------------------------------


;;MAKE-HELP-



;;MAKE-HELP-FRAME
;;
;;ddd 
(defun make-help-frame (priority-helplink-names other-helplink-names)
;;was             ;;all-button-keylist-lists) ;;was all-helplink-name-list priority-list) ;;                      all-helplink-url-list  ) ;;  all-helplink-description-list)
  "In Frames-results.  NOTE: show-helplink-callback finds the url.  Uses make-helplink-priority-lists."
  (let
      ((help-frame-inst (make-instance 'results-help-interface))
      (n-priority-buttons (list-length priority-helplink-names))
       (n-other-buttons (list-length other-helplink-names))
       (priority-list-1)
       (priority-list-2)
       (priority-list-3)
       (other-list-1)
       (other-list-2)
       (other-list-3)
       (list-n 0)
       )
    
  ;;(afout 'out (format nil "priority-helplink-names=~A~%n-priority-buttons= ~A~%" priority-helplink-names n-priority-buttons))
     (loop
      for button-name in priority-helplink-names
      for n from 1 to n-priority-buttons
      do       
     (cond
       ((null button-name) nil)
      ((< n  5) (setf priority-list-1 (append priority-list-1 (list button-name))))
      ((<  n 11 )(setf priority-list-2 (append priority-list-2 (list button-name))))
      (t (setf priority-list-3 (append priority-list-3 (list button-name)))))
     ;;end loop
     )
     ;;for other buttons
     (loop
      for button-name in other-helplink-names
      for n from 1 to n-other-buttons
      do       
      (cond 
       ((null button-name) nil)
       ((< n  5) (setf other-list-1 (append other-list-1 (list button-name))))
       ((< n 11)(setf other-list-2 (append other-list-2 (list button-name))))
       (t (setf other-list-3 (append other-list-3 (list button-name)))))
      ;;end loop
      )
   ;;(afout 'out (format nil "priority-list-1= ~A~%other-list-1= ~A~%" priority-list-1 other-list-1))
 
    (capi:display help-frame-inst)

    (with-slots (list-panel-1 list-panel-2 list-panel-3 list-panel-4
                              list-panel-5 list-panel-6) help-frame-inst
      ;;priority panes
        (capi:apply-in-pane-process list-panel-1
                  #'(setf  capi:collection-items) priority-list-1 list-panel-1)
        (capi:apply-in-pane-process list-panel-2
                  #'(setf  capi:collection-items) priority-list-2 list-panel-2)
        (capi:apply-in-pane-process list-panel-3
                  #'(setf  capi:collection-items) priority-list-3 list-panel-3)

        ;;other panes
        (capi:apply-in-pane-process list-panel-4
                  #'(setf  capi:collection-items) other-list-1 list-panel-4)
        (capi:apply-in-pane-process list-panel-5
                  #'(setf  capi:collection-items) other-list-2 list-panel-5)
        (capi:apply-in-pane-process list-panel-6
                  #'(setf  capi:collection-items) other-list-3 list-panel-6)
        
#|        (capi:apply-in-pane-process instr-rich-text-pane
                                    #'(setf capi:rich-text-pane-text) instr-text-formated  instr-rich-text-pane )|#
        ;;redisplay
        (capi:display help-frame-inst)
        ;;end with-slots
        )
    ;;end let, make-help-frame
    ))
;;TEST
;;OLD, CHANGED SINCE
;;  (make-help-frame '((("life_goals_and_meaning.htm" "Life Goals-Values" "Life Goals and Meaning ") ("test_anxiety.htm"  "Perform Anxiety" "Reducing Test or Performance Anxiety") .1)(("assert req.html" "Assertive Request" "How to Make an Assertive Request for a Behavior Change" )("c14-lisn.htm" "Intimacy" "Assertive Communication Skills to Create Understanding and Intimacy" ) .6)))
;;WORKS, makes a frame and returns= (("assert req.html" "Assertive Request" "How to Make an Assertive Request for a Behavior Change") ("c14-lisn.htm" "Intimacy" "Assertive Communication Skills to Create Understanding and Intimacy"))   (("life_goals_and_meaning.htm" "Life Goals-Values" "Life Goals and Meaning ") ("test_anxiety.htm" "Perform Anxiety" "Reducing Test or Performance Anxiety"))


;;values returned by find-helplinks-info
;;help-button-lists
#|(("h9patsm.htm" "ch9 self-management" "ch-9: create a better world for yourself and others: get control of your time and yourself " "http://www.csulb.edu/~tstevens/h9patsm.htm.lisp") ("self-helplinks.htm" "self-help links" "self-help links" "http://www.csulb.edu/~tstevens/self-helplinks.htm.lisp"))
;;helplink-name-list
("ch9 self-management" "self-help links")
;;helplink-url-list
("http://www.csulb.edu/~tstevens/h9patsm.htm.lisp" "http://www.csulb.edu/~tstevens/self-helplinks.htm.lisp")
;;helplink-description-list
("ch-9: create a better world for yourself and others: get control of your time and yourself " "self-help links")
;;priority 1  |#



;;MAKE-HELPLINK-PRIORITY-LISTS
;;
;;ddd
(defun make-helplink-priority-lists  (all-button-keylist-lists &key (priority-cutoff 0.4)) 
;;was all-helplink-name-list priority-list) ;;   all-helplink-url-list  ) ;;  all-helplink-description-list)
  "In Frames-results.  NOTE: show-helplink-callback finds the url.  RETURNS (values priority-helplink-names other-helplink-names priority-helplink-keylists other-helplink-keylists)."
;; uses  E.G.   ("life_goals_and_meaning.htm" "Life Goals-Values" "Life Goals and Meaning ")
  (let
      ((priority-helplink-names)
       (other-helplink-names)
       (priority-helplink-keylists)
       (other-helplink-keylists)
#|      (n-priority-buttons) ;;(list-length priority-helplink-names))
       (n-other-buttons) ;; (list-length other-helplink-names))|#
       (priority-sorted-buttonlist)
       (list-n 0)
       )
    ;;first sort the all-helplink-keylist-lists by hghest priority 
    (setf priority-sorted-buttonlist
                         (my-sort-lists 0 all-button-keylist-lists :from-end t))
      
    (loop 
     for button-keylists in priority-sorted-buttonlist 
     with priority 
     do
   ;;(afout 'out (format nil "button-keylists= ~A~% priority-sorted-buttonlist= ~A~% " button-keylists priority-sorted-buttonlist))
     (setf priority (car (last button-keylists)))
     (when  (numberp priority)
       (loop
        for button-keylist in button-keylists
        with button-name
        do
        (when (listp button-keylist)
          (setf  button-name (second button-keylist))  
          ;;(afout 'out (format nil "button-name= ~A~%priority= ~A~%" button-name priority))
          ;;put button-name in either priority or other list
          (cond
          ;;DON'T ADD TO EITHER LIST IF ALREADY ON LIST -- NO DUPLICATES
          ((or (member button-name priority-helplink-names :test 'string-equal)
               (member button-name other-helplink-names :test 'string-equal))
           NIL)
           ((> priority priority-cutoff)
            (setf priority-helplink-names 
                  (append priority-helplink-names (list button-name))
                  priority-helplink-keylists
                  (append priority-helplink-keylists (list button-keylist))))
           (t (setf other-helplink-names (append other-helplink-names (list button-name))
                    other-helplink-keylists
                    (append other-helplink-keylists (list button-keylist)))))

          ;;end when,when loops
          ))))

  ;;  (setf *test-priority-links priority-helplink-names  *test-other-links other-helplink-names)
;;  (delete-duplicates *test-priority-links :test 'string-equal :from-end t)
  ;; 
    ;;NOT NEEDED, NEVER PUT ON LIST DELETE DUPLICATE HELP-BUTTONS (done in order)
#|    (setf priority-helplink-names  
          (delete-duplicates priority-helplink-names :test 'string-equal :from-end t)
          other-helplink-names
          (delete-duplicates other-helplink-names :test 'string-equal :from-end t))|#

     (setf n-priority-buttons (list-length priority-helplink-names)
                    n-other-buttons (list-length other-helplink-names))

    (values priority-helplink-names other-helplink-names priority-helplink-keylists other-helplink-keylists)
    ;;end let, make-help-frame
    ))


;;MAKE-HELP-TEXT
;;
;;ddd
(defun make-help-text (priority-helplink-names other-helplink-names
                                                &key  (url-root *stevens-url-root))  
    "In frames-results, INPUT user-scale prioritized lists created in make-help-frame,RETURNS results-help-text for use a end of shaq results text. RETURNS (values priority-help-text other-help-text). Includes URLs. "
    ;;eg ("assert req.html" "Assertive Request" "How to Make an Assertive Request for a Behavior Change")
    (let
        ((priority-help-text "")
         (other-help-text "")
         (main-lists (list priority-helplink-names other-helplink-names))       
         (helplink-info-list)
         (helplink-file)
         )
      (loop
       for main-list in main-lists
       for n from 1 to 2
       do       
       (loop
        for button-name  in main-list
        do
        (multiple-value-bind (helplink-keylist helplink-name url help-description)
            (find-helplink-info button-name :by-name-p t)
          ;;for the URL
          (setf helplink-file (car helplink-keylist))         
          ;;add actual url
          (setf url (format nil "~a~a" url-root helplink-file))

          ;;for the help-description
          (cond
           ((null help-description)
            (setf help-description ""))
           (t (setf help-description 
                    (format nil "       DESCRIPTION: ~A~%" help-description))))
          (cond
           ((null helplink-name) nil)
           ((= n 1) 
            (setf  priority-help-text (format nil 
                 "~A>>> LINK-NAME: ~A     URL: ~A~%~A"
                                  priority-help-text helplink-name   url  help-description)))
           ((= n 2)
            (setf  other-help-text (format nil 
                    "~A>>> LINK-NAME: ~A     URL: ~A~%~A" 
                                       other-help-text helplink-name  url  help-description)))
           (t nil))
          ;;end mvb, loops
          )))
   (values priority-help-text other-help-text)
      ;;end let,make-help-text
      ))
;;TEST
;;NEW  (make-help-text '("Assertive Request" "Intimacy""Clarify Life Goals-Values")'("Perform Anxiety" "Headaches""Ch2 Happiness Routes"))


;;make-no-scale-text
;;
;;ddd
(defun make-no-scale-text (&key (shaq-data-list *shaq-data-list))
  "In Frames-results, RETURNS no-scale-text."
  (let
      ((no-scale-text "     
      >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>> QUESTIONS NOT IN ANY SCALE <<<<<<<<<<<<<<<<<<<<<<<<<<<<<< ")
       (qvar-text)
       (no-scale-qvars (slot-value *no-scale-inst 'scale-questions))
       )
    (loop
     for qvar in no-scale-qvars
     do
     (setf qvar-text (make-single-selection-question-text qvar :scale-name "no-scale") ;;:append-scale-inst-p T )
           ;; &key scale-name qdata-list append-scale-inst-p
           no-scale-text (format nil "~A~%~A" no-scale-text qvar-text))
     ;;nnnn    
    ;;end loop
    )
   (setf no-scale-text (format nil "~A~%~%" no-scale-text))
    ;;end let, make-no-scale-text
    ))
;;TEST  
;; (make-no-scale-text)


;;FIND-QVAR-HELP
;;
;;ddd
(defun find-qvar-help (qvar) ;; &key (help-priority 0))
  "In Frames-results, RETURNS (values help-info help-button-lists helplink-name-list helplink-url-list helplink-description-list)"
  (let*
      ((qvar-list (get-qvar-list qvar))
       (qvar-help (sixth qvar-list))
       (help-info (second qvar-help))
       (helplinks-list (third qvar-help))  
       )
    (multiple-value-bind (help-button-lists helplink-name-list helplink-url-list helplink-description-list) ;; help-priority)
        ;;returns all nils if helplinks-list = na or nil
        (find-helplinks-info helplinks-list) ;; help-priority)  
      ;;return
      (values help-info help-button-lists helplink-name-list helplink-url-list helplink-description-list) ;; help-priority)
      )))



;;FIND-HELPLINKS-INFO
;;
;;ddd
(defun find-helplinks-info (helplinks-list ;; &optional (help-priority 0)
                                           &key  (link-root *stevens-url-root)
                                           (all-helplinks-list *stevens-selfhelp-files))
  "In Frames-results,for helplinks to ONE SCALE, etc. with ONE help-priority. Can have multiple helplinks. RETURNS (values  button-keylist-list helplink-name-list helplink-url-list helplink-description-list) BUTTON-KEYLIST-LIST contains full url path."
  (let
      ((helplink-keylist)
       (helplink-name-list)
       (help-button-lists)
       (helplink-name-list)
       (helplink-url-list)
       (helplink-description-list)
       (new-helplink-keylist)
       (helplink-name)
       (helplink-url)
       (helplink-desc)
       )
    (unless (or (null helplinks-list) (equal helplinks-list 'na))
      (loop
       for helplink in helplinks-list
       do
       (multiple-value-setq (helplink-keylist helplink-name helplink-url helplink-desc)
           (find-helplink-info helplink :link-root link-root ;;:priority help-priority 
                               :all-helplinks-list all-helplinks-list))
       (if (listp helplink-keylist)
           (setf helplink-name-list (append helplink-name-list (list helplink-name))
                 helplink-url-list (append helplink-url-list (list helplink-url))
                 helplink-description-list (append helplink-description-list 
                                                   (list helplink-desc))
                 help-button-lists  (append help-button-lists 
                                            (list (list helplink helplink-name helplink-desc helplink-url)))))
       ;;end loop, unless
       ))
    (values  help-button-lists helplink-name-list helplink-url-list helplink-description-list) ;; help-priority)
    ;;end let, find-helplinks-info
    ))
;;TEST
;;   (find-helplinks-info '("h9patsm.htm" "self-helpLinks.htm") 1) 
;; works, returns
#|
;;help-button-lists
(("h9patsm.htm" "Ch9 Self-Management" "Ch-9: Create a Better World for Yourself and Others: Get control of your time and yourself " "http://www.csulb.edu/~tstevens/h9patsm.htm.lisp") ("self-helpLinks.htm" "Self-Help Links" "Self-Help Links" "http://www.csulb.edu/~tstevens/self-helpLinks.htm.lisp"))
;;helplink-name-list
("Ch9 Self-Management" "Self-Help Links")
;;helplink-url-list
("http://www.csulb.edu/~tstevens/h9patsm.htm.lisp" "http://www.csulb.edu/~tstevens/self-helpLinks.htm.lisp")
;;helplink-description-list
("Ch-9: Create a Better World for Yourself and Others: Get control of your time and yourself " "Self-Help Links")  1
|#
 

;;FIND-HELPLINK-INFO
;;
;;ddd
(defun find-helplink-info (helplink &key (priority 0) (link-root *stevens-url-root)
                                 (all-helplinks-list *stevens-selfhelp-files) by-name-p )
  "In Frames-results, RETURNS (values  helplink-keylist helplink-name helplink-url helplink-description). Eg of a helplink file list (\"time_management.htm\" \"Time Management\" \"Time Management\") by-name-p inputs button-name instead of filename to find helplink."
  (let
      ((helplink-keylist)
       (helplink-file)
       (helplink-name)
       (helplink-url)
       (helplink-description)
       (n)
       )
    (cond
     (by-name-p
      (setf n 1))
     (t (setf n 0)))

    (setf helplink-keylist
          (get-key-value-in-nested-lists `((,helplink ,n T)) 
                                         all-helplinks-list :return-list-p t))
    (if (listp helplink-keylist)
        (setf helplink-file (first helplink-keylist)
              helplink-name (second helplink-keylist)
              helplink-url (format nil "~A~A"link-root helplink-file)
              helplink-description (third helplink-keylist)))
    (values  helplink-keylist helplink-name helplink-url helplink-description)
    ;;end let, find-helplink-info
    ))
;;TEST
;;   (find-helplink-info "learning_disabilities.htm") 
;;works, returns 
#|("learning_disabilities.htm" "Learning Disable" "Learning Disabilities")
"Learning Disable"
"http://www.csulb.edu/~tstevens/learning_disabilities.htm"
"Learning Disabilities" |#   
;;  (find-helplink-info "Perform Anxiety" :by-name-p t)  
;; works = ("test_anxiety.htm" "Perform Anxiety" "Reducing Test or Performance Anxiety")  "Perform Anxiety" "http://www.csulb.edu/~tstevens/test_anxiety.htm" "Reducing Test or Performance Anxiety"
       
       



;;old DELETE
#|(defun make-help-text (priority-button-keylists other-button-keylists 
                                                &key  (url-root *stevens-url-root))  
    "In frames-results, INPUT user-scale prioritized lists created in make-help-frame,RETURNS results-help-text for use a end of shaq results text. RETURNS (values priority-help-text other-help-text). Includes URLs. "
    ;;eg ("assert req.html" "Assertive Request" "How to Make an Assertive Request for a Behavior Change")
    (let
        ((priority-help-text "")
         (other-help-text "")
         (main-lists (list priority-button-keylists other-button-keylists))    
         )
      (loop
       for main-list in main-lists
       for n from 1 to 2
       do       
       (loop
        for button-keylist in main-list
        do
        (multiple-value-bind (file helplink-name help-description)
            (values-list button-keylist)
          ;;add actual url
          (setf url (format nil "~a~a" url-root file))
          (cond
           ((= n 1)
            (setf  priority-help-text (format nil 
 "~A>> LINK-NAME: ~A     URL: ~A
       DESCRIPTION: ~A~%" priority-help-text helplink-name   url  help-description)))
           ((= n 2)
            (setf  other-help-text (format nil 
 "~A>>> LINK-NAME: ~A     URL: ~A
       DESCRIPTION: ~A~%" other-help-text helplink-name   url  help-description)))
           (t nil))
          ;;end mvb, loops
          )))
   (values priority-help-text other-help-text)
      ;;end let,make-help-text
      ))|#
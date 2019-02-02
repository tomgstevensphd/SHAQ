;;********************** U-data-results-functions.lisp ************************
;;
;; Functions for manipulating SHAQ RESULTS DATA
;;  (after questions were answered, many on the *shaq-data-list )
;;
;;NOTE: To find a data list for a category etc, use GET-KEY-LIST
;; GET-KEY-VALUE-IN-NESTED-LIST ALSO VALUABLE
;;
;; MAIN FUNCTIONS INPUT - OUTPUT
;;
;; A. FUNCTIONS USING *SHAQ-DATA-LIST
;; 1.  GET-QVARLIST-IN-SHAQDATALIST 
;; INPUT: Searches *shaq-data-list for QVAR  
;; OUTPUT: QVARLIST*

;; 2.  GET-MULTI-ANSWER-SELECTED-ITEMS
;;  INPUT:  (qvar &key (all-data-list *shaq-data-list))  (a multi-selection qvar --generally a category such as BIO. Selected items have a value of 1 (vs 0 for non-selected). 
;;OUTPUT: (values selected-items-list  qvar) .

;;3.  GET-MULTI-SEL-XDATA-KEY-VALUES
;;  INPUT: (multisel-quest/cat  xkey &key (data-list *shaq-data-list))  (multisel-quest/cat = a multi-sel qvar symbol or string) 
;;   OUTPUT:  (values all-selected-one-xkey-values   qvar&one-xkey-values-list  sel-qvars-in-datalist)

;; B. FUNCTIONS USING MULTI-QVAR-LIST (a list returned from *shaq-data-list functions above.)
;; 1. GET-SELECTED-QVAR-LISTS
;;  INPUT:  multi-qvar-list  (from list returned by GET-MULTI-ANSWER-SELECTED-ITEMS)
;; OUTPUT: list of all SELECTED items from a multi-selection qvar --generally a category such as BIO. Selected items have a value of 1 (vs 0 for non-selected). RETURNS (values selected-items-list qvar) 

;; 2.  GET-SELECTED-QVARS&XDATA
;;  INPUT: multi-qvar-list &key xdata-key-list return-one-key-values) 
;;  NOTE: multi-qvar-list is a list returned by GET-MULTI-ANSWER-SELECTED-ITEMS.
;; OUTPUT: (values SELECTED-QVAR-XDATAKEY-VALUE-LISTS  qvar-cat  RETURN-ONE-KEY-VALUES-LIST  selected-qvars-lists)

;;FOR CALC HQ, GO TO  U-HQ&composite-scales.lisp

;;  ------------------ THE FUNCTION DEFUNS --------------------------------

;;GET-MULTI-ANSWER-SELECTED-ITEMS
;;
;;ddd

;;GET-QVARLIST-IN-SHAQDATALIST
;;
;;ddd
(defun get-qvarlist-in-shaqdatalist (qvar &key return-second-p  (data-list *shaq-data-list))
  "In U-data-results-functions.lisp, RETURNS qvar (STRING OR SYM) (values qvarlist data-list qvarlist-second-item. First searches for string qvars, then for symbols (as in multi-selection question lists). return-second-p also returns the item in the list following qvar."
  (let
      ((qvar-str (format nil "~A" qvar))
       (qvarlist)
       (qvarlist-second-item)
       )
    (setf qvarlist (get-key-value-in-nested-lists
                    `((,qvar-str 0)) data-list :return-list-p T))
    ;;(afout 'out (format nil "qvarlist= ~A~%" qvarlist))
    (unless qvarlist
      (setf qvarlist (get-key-value-in-nested-lists
                `((T 0 )(,qvar-str 0)) data-list :return-list-p T)))
    (unless (null qvarlist)
      (setf qvarlist-second-item (second qvarlist)))
    (values qvarlist qvarlist-second-item)
    ;;end let, get-qvarlist-in-shaqdatalist
    ))
;;TEST
;; ;;  (get-qvarlist-in-shaqdatalist 'COPBLAME)
;;  (get-qvarlist-in-shaqdatalist "stmajgpa")
;; WORKS--NEW QVAR-LISTS = ("stmajgpa" "st-Major GPA" :SINGLE "3.5-4.0 (A)" "1.000" 8 NIL 8 8 SCORED-NORMAL GPA8ANSARRAY)  "st-Major GPA"
;;  (get-qvarlist-in-shaqdatalist "UGOALS") ;; OR 'ugoals), both work
;; works, returns= ("UGOALS" :MULTI "UserGoals" "User goals for taking SHAQ." 1 ("gsuchap" "1" 1 T 1 1 (:XDATA :SCALES (HQ))) ("gemocop" "2" 1 NIL 0 1 (:XDATA :SCALES (HQ))) ("gslfest" "3" 1 NIL 0 1 (:XDATA :SCALES (VALUES-THEMES BELIEFS SKILLS-CONFIDENCE))) ("gprocrst" "4" 1 NIL 0 1 (:XDATA :SCALES (VALUES-THEMES "siecontr" "sselfman" "semotcop"))) ("gtimeman" "5" 1 NIL 0 1 (:XDATA :SCALES ("sselfman" "semotcop"))) ("grelat" "6" 1 T 1 1 (:XDATA :SCALES (INTERPERSONAL))) ("gmeetpeo" "7" 1 NIL 0 1 (:XDATA :SCALES (INTERPERSONAL))) ("glonelyf" "8" 1 NIL 0 1 (:XDATA :SCALES (HQ))) ("gexvalus" "9" 1 NIL 0 1 (:XDATA :SCALES (HQ))) ("gdepres" "10" 1 NIL 0 1 (:XDATA :SCALES (HQ))) ("ganxfear" "11" 1 NIL 0 1 (:XDATA :SCALES (HQ))) ("gaggrang" "12" 1 NIL 0 1 (:XDATA :SCALES (HQ))) ("gacadsuc" "13" 1 T 1 1 (:XDATA :SCALES (ACAD-LEARNING))) ("gcomplta1" "14" 1 T 1 1 (:XDATA :SCALES (HQ ACAD-LEARNING CAREER-INTEREST))) ("gcompltanomaj" "15" 1 NIL 0 1 (:XDATA :SCALES (HQ ACAD-LEARNING))) ("gcompltanoac" "16" 1 NIL 0 1 (:XDATA :SCALES (HQ))) ("gcarplan" "17" 1 NIL 0 1 (:XDATA :SCALES (CAREER-INTEREST))) ("gcaronly" "18" 1 NIL 0 1 (:XDATA :SCALES (CAREER-INTEREST))) ("gnottake" "19" 1 NIL 0 1 (:XDATA :SCALES NIL)))

;;TEST2
;;works  (get-qvarlist-in-shaqdatalist "utype" ) --works   :shaq-data-list data-list)
;;  (get-selected-qvars&xdata '("UTYPE" :MULTI "UserType" "User characteristics/assessment choices" 2 ("twanttho" "1" 1 T 1 2 (:XDATA :SCALES (HQ))) ("tknowmor" "2" 1 NIL 0 2 (:XDATA :SCALES (HQ))) ("twanthel" "3" 1 NIL 0 2 (:XDATA :SCALES (HQ))) ("twantspe" "4" 1 NIL 0 2 (:XDATA :SCALES NIL)) ("texperie" "5" 1 NIL 0 2 (:XDATA :SCALES NIL)) ("tprevshaq" "6" 1 T 1 2 (:XDATA :SCALES (PREVIOUS-USER))) ("wantspq" "7" 1 T 1 2 (:XDATA :SCALES (SPECIFIC-QUESTS))) ("tu100stu" "8" 1 NIL 0 2 (:XDATA :SCALES (HQ ACAD-LEARNING))) ("tcsulbst" "9" 1 NIL 0 2 (:XDATA :SCALES (ACAD-LEARNING))) ("tcolstu" "10" 1 NIL 0 2 (:XDATA :SCALES (ACAD-LEARNING))) ("totherst" "11" 1 NIL 0 2 (:XDATA :SCALES (ACAD-LEARNING))) ("tressub" "12" 1 NIL 0 2 (:XDATA :SCALES NIL)) ("tcolfaca" "13" 1 NIL 0 2 (:XDATA :SCALES NIL)) ("u-none" "14" 1 T 1 2 (:XDATA :SCALES NIL)))  :xdata-key-list '(:SCALES)  :return-one-key-values ':scales)
;;RETURNS (("twanttho" (:SCALES (HQ))) ("tprevshaq" (:SCALES (PREVIOUS-USER))) ("wantspq" (:SCALES (SPECIFIC-QUESTS))) ("u-none" (:SCALES NIL)))    "UTYPE"  (:SCALES HQ PREVIOUS-USER SPECIFIC-QUESTS)    (("twanttho" "1" 1 T 1 2 (:XDATA :SCALES (HQ))) ("tprevshaq" "6" 1 T 1 2 (:XDATA :SCALES (PREVIOUS-USER))) ("wantspq" "7" 1 T 1 2 (:XDATA :SCALES (SPECIFIC-QUESTS))) ("u-none" "14" 1 T 1 2 (:XDATA :SCALES NIL)))



;;GET-MULTI-SEL-ITEM
;;
;;ddd
(defun get-all-multi-sel-items-data (&key (scaledata-list *shaq-scaledata-list))
  "In U-data-results-functions, RETURNS (values  mult-sel-items-datalists multi-sel-item-names)"
  (let
      ((mult-sel-item-datalists)
       (multi-sel-item-names)
       (multi-item-p)
       (multi-item-name)
       (multi-qvar)
       (mult-sel-item-data)
        )
    (loop
     for item in scaledata-list
     do
     (when (listp item)
     (cond
      ((equal (second item) :multi)
       (setf mult-sel-item-data  item
             multi-item-name (third item)
             mult-sel-item-datalists (append mult-sel-item-datalists 
                                             (list mult-sel-item-data))
             multi-sel-item-names (append multi-sel-item-names
                                          (list multi-item-name))
             ;;reset vars
             mult-sel-item-data nil
             multi-item-name nil)
       )
      (t nil))
     ;;end when, loop
     ))
    (values mult-sel-item-datalists multi-sel-item-names)
    ;;end let, get-multi-sel-item
    ))
;;TEST
;; test it when have good data list
;;  (get-all-multi-sel-items-data)
;; works, returns (("UTYPE" :MULTI "utype" "UserType" 1 ("twanttho" "1" 1 NIL 0 1 (:XDATA :SCALES (HQ))) ("tknowmor" "2" 1 NIL 0 1 (:XDATA :SCALES (HQ))) ("twanthel" "3" 1 NIL 0 1 (:XDATA :SCALES (HQ))) ("twantspe" "4" 1 NIL 0 1 (:XDATA :SCALES NIL)) ("texperie" "5" 1 NIL 0 1 (:XDATA :SCALES NIL))  ETC.

;;GET-MULTI-QVAR-SCALEDATA-LIST
;;
;;ddd
(defun get-multi-qvar-scaledata-list (multi-qvar &key (shaq-scaledata-list *shaq-scaledata-list) all-multi-qvar-scaledata-lists)
    "In U-data-results-functions, RETURNS the entire scaledata-list for the multi-qvar eg.(\"UTYPE\" :MULTI \"utype\" \"UserType\" 1 (\"twanttho\" \"1\" 1 NIL 0 1 (:XDATA :SCALES (HQ)))  etc."
    (let
        ((multi-qvar-scaledata-list)
         )
      (unless all-multi-qvar-scaledata-lists
        (setf all-multi-qvar-scaledata-lists (get-all-multi-sel-items-data)))
      (loop
       for datalist in all-multi-qvar-scaledata-lists
       do
       (cond
        ((my-equal multi-qvar (car datalist))
         (setf multi-qvar-scaledata-list datalist)
         (return))
        (t nil))
       ;;end loop
       )
      multi-qvar-scaledata-list
      ;;end let, get-multi-qvar-scaledata-list
      ))
;;TEST
;;  (get-multi-qvar-scaledata-list "bio4job")
;; works, returns (BIO4JOB :MULTI "bio4job" "b-Primary occupation" 1 ("student" "1" 1 T 1 1 NIL) ("manager" "2" 1 T 1 1 NIL) ("propeop" "3" 1 NIL 0 1 NIL) ("protech" "4" 1 NIL 0 1 NIL) ("consulta" "5" 1 NIL 0 1 NIL) ("educator" "6" 1 NIL 0 1 NIL) ("sales" "7" 1 NIL 0 1 NIL) ("technici" "8" 1 NIL 0 1 NIL) ("clerical" "9" 1 NIL 0 1 NIL) ("service" "10" 1 NIL 0 1 NIL) ("ownbus10" "11" 1 NIL 0 1 NIL) ("othrsfem" "12" 1 NIL 0 1 NIL) ("other" "13" 1 NIL 0 1 NIL))



      
;;GET-MULTI-ANSWER-SELECTED-ITEMS
;;
;;ddd
(defun get-multi-answer-selected-items (qvar &key (all-data-list *shaq-data-list) msq-datalist)
  "In U-data-results-functions.lisp,  INPUT  a multi-selection qvar --generally a category such as BIO. Selected items have a value of 1 (vs 0 for non-selected). RETURNS (values selected-items-list qvar) . Returns selected-items-list= nil if none selected, Returns qvar = NIL if qvar not found."
 ;;EGmsq-data-list = (:MULTI-SEL-QUEST   "utype"   ("UTYPE"   :MULTI   "utype"   "UserType"   1   ("twanttho" "1" 1 T 1 1 (:XDATA :SCALES (HQ))) ... more ans items
  (let
      ((qvar-list msq-datalist)
       (selected-items-list)
       (qvar-result)
       )
    (unless qvar-list
      (setf  qvar-list (get-key-value-in-nested-lists `((,qvar 1)) all-data-list)))
    ;;  (get-key-value-in-nested-lists  `((T 0)("bio1ethn" 1)) *shaq-scaledata-list :return-list-p t) = works
    ;;(get-key-value-in-nested-lists  `(("bio1ethn" 1)) *shaq-data-list :return-list-p t) works
    (cond
     (qvar-list
      (multiple-value-setq (selected-items-list qvar-result)
          (get-selected-qvar-lists qvar-list))
      )
     (t nil))
    (values selected-items-list qvar-result)
    ;;end let, get-multi-answer-selected-items ;;was get-multi-value-selected-items
    ))
;;TEST
;; (setf  test-listxx '(this that (SCALESSEL :MULTI "scalessel" "scales-selected" 1 ("HQ1.HAPPINESS QUOTIENT Scales (Required for HQ)" "1" HQ-SCALES T 1) ("HQ2.HQ Score Scales + ACADEMIC SUCCESS Scales" "2" HQ-ACAD NIL 0) ("HQ3.HQ + Academic Success + ACADEMIC MAJOR CHOICE" "3" HQ-ACAD-CAR NIL 0) ("1.Top Life Themes and Values Scales" "4" THEMES T 1) ("2.World View Beliefs Scale" "5" WORLDVIEW NIL 0) ("3.Top Self and Life Beliefs Scales" "6" TBV-TB2 NIL 0) ("4.Internal vs. External Control of Your Life (IE) Scale" "7" IE NIL 0) ("5.Self-Confidence and Skills Scale" "8" SELF-CONF NIL 0) ("6.Self-Management Skills/Habits Scale" "9" SM NIL 0) ("7.Emotional Coping Skills/Habits Scale" "10" COPE NIL 0) ("R1.Assertion and Conflict-Resolution Skills/Habits" "11" ASSERTCR NIL 0) ("R2.Intimacy Skills/Habits" "12" INTIMACY NIL 0) ("R3.Independent-Intimacy in Relationships Skills/Habits" "13" INDEP-INT NIL 0) ("R4.Relationship Role Beliefs/Habits" "14" LIBROLE NIL 0) ("L1.Learning and Study Skills Scale" "15" STU-LRN NIL 0) ("L2.Student Academic Motivation Scale" "16" STUACMOTIV NIL 0) ("L3.Academic Major and Career Interest Scales" "17" CARGEN NIL 0) ("O1.Overall Happiness Scale" "18" HAP NIL 0) ("O2.Depression Scale" "19" RDEP NIL 0) ("O3.Anxiety Scale" "20" RANX NIL 0) ("O4.Anger and Aggression Scale" "21" RANG NIL 0) ("O5.Relationship Outcomes Scale" "22" RPEOPLE NIL 0) ("O6.Health Habits and Health Scale" "23" RHEALTH NIL 0))))
;; 
;;  (get-multi-answer-selected-items 'SCALESSEL :all-data-list test-listxx)
;;  WORKS, RETURNS = (("HQ1.HAPPINESS QUOTIENT Scales (Required for HQ)" "1" HQ-SCALES T 1) ("1.Top Life Themes and Values Scales" "4" THEMES T 1))     SCALESSEL
;;


;;GET-MULTI-SEL-DATA-ALL-VALUES&TEXT
;;
;;ddd
(defun get-multi-sel-data-all-values&text (multi-sel-item-scaledata-list 
                                           &key multi-qvar)
  "In U-data-results-functions, INPUT= scaledata output list (eg:(BIO1ETHN  :MULTI   \"bio1ethn\"  \"Primary Ethnic Group\"  3   (\"eafrica\" \"2\" 1 T 1 3 NIL)   (\"enoreur\" \"3\" 1 NIL 0 3 NIL) etc  , RETURNS  values LIST of  (ans-qvar ans-text ans-value ans-boolean) AND TEXT for each alternative. Can input multi-qvar INSTEAD of (multi-sel-item-scaledata-list = NIL). One MUST be provided."
  (let
      ((ans-qvar)
       (ans-boolean)
       (ans-value)
       (ans-text)
       (var-list)
       (ans-list)
       (all-answers-list)
       (bool-text "NoCk")
       (ans-text)
       (all-answers-text )
       )
   (unless multi-sel-item-scaledata-list
      (setf multi-sel-item-scaledata-list (get-multi-qvar-scaledata-list multi-qvar)))

    (when (and (listp multi-sel-item-scaledata-list)
               (equal (second multi-sel-item-scaledata-list) :multi))
      (setf var-list (nthcdr 5 multi-sel-item-scaledata-list))      
      (loop
       for varlist-item in var-list
       do
       (when  (listp varlist-item)
         (setf  ans-qvar (car varlist-item)
             ans-text (get-multi-sel-qvar-answer-text  ans-qvar)
                ans-boolean (fourth varlist-item)
                ans-value  (fifth varlist-item)
                var-list (list ans-qvar ans-text ans-value ans-boolean)
                all-answers-list (append  all-answers-list (list var-list)))
         (cond
          (all-answers-text
           (setf all-answers-text (format nil "~A; ~A [~A]" 
                                          all-answers-text ans-text  ans-value)))    
          (t (setf all-answers-text (format nil " ~A [~A]" 
                                             ans-text  ans-value))))
         ;;end when, loop, when
         )))
    (values all-answers-list all-answers-text)
    ;;end let, get-multi-sel-data-all-values&text
    ))
;;TEST 
;;  (get-multi-sel-data-all-values&text '(BIO1ETHN   :MULTI    "bio1ethn"   "Primary Ethnic Group"   3   ("enortham" "1" 1 T 1 3 NIL)   ("eafrica" "2" 1 T 1 3 NIL)   ("enoreur" "3" 1 NIL 0 3 NIL)   ("esoueur" "4" 1 NIL 0 3 NIL)  ("ecambodn" "5" 1 NIL 0 3 NIL)   ("echina" "6" 1 NIL 0 3 NIL)   ("ekorea" "7" 1 NIL 0 3 NIL)  ("ejapan" "8" 1 NIL 0 3 NIL)   ("evietnam" "9" 1 NIL 0 3 NIL)  ("eothrasn" "10" 1 NIL 0 3 NIL)  ("emexico" "11" 1 NIL 0 3 NIL)  ("ecentram" "12" 1 NIL 0 3 NIL)  ("esoutham" "13" 1 NIL 0 3 NIL)  ("epacific" "14" 1 NIL 0 3 NIL)  ("eother" "15" 1 NIL 0 3 NIL)))
;;works, returns (("enortham" "North America" 1 T) ("eafrica" "Africa" 1 T) ("enoreur" "Northern Europe" 0 NIL) ("esoueur" "Southern Europe" 0 NIL) ETC
;;"  North America [1]; Africa [1]; Northern Europe [0]; Southern Europe [0]; ETC
;;  (get-multi-sel-data-all-values&text NIL :multi-qvar 'BIO1ETHN) = SAME AS ABOVE



;;GET-MULTI-SEL-ITEMS-ANSQVAR&TEXT
;;
;;ddd
(defun get-multi-sel-items-ansqvar&text (multi-qvar &key (all-scales-datalist *shaq-scaledata-list) msq-datalist)
  "In U-data-results-functions, INPUT= a multi-sel qvar symbol or string. RETURNS (values selected-answer-text-list selected-answer-qvar-list  selected-qvar-lists). NOTE: identical/redundant values in *shaq-data-list."
  (let
      ((selected-qvar-lists
        (get-multi-answer-selected-items multi-qvar :all-data-list all-scales-datalist
                                         :msq-datalist msq-datalist))
       (selected-answer-qvar-list)
       (selected-answer-text-list)
     (ans-qvar)
     ( ans-text)
       )
    (loop
     for sel-ans-qvar-list in selected-qvar-lists
     do
     (cond
      ((listp sel-ans-qvar-list)
       (setf ans-qvar (car sel-ans-qvar-list)
             ans-text (get-multi-sel-qvar-answer-text  ans-qvar)
             selected-answer-qvar-list (append selected-answer-qvar-list (list ans-qvar))
             selected-answer-text-list (append selected-answer-text-list (list ans-text)))
       )
      (t ))
     ;;end loop
     )

    (values selected-answer-text-list selected-answer-qvar-list  selected-qvar-lists)
    ;;end let get-multi-sel-items-ansqvar&text
    ))
;;TEST
;;  (get-multi-sel-items-ansqvar&text 'UTYPE)
;; works, =  ("texperie" "wantspq")     ("Experienced self help user. " "I want to choose specific questionnaire(s).")     (("texperie" "5" 1 T 1 1 (:XDATA :SCALES NIL)) ("wantspq" "7" 1 T 1 1 (:XDATA :SCALES (SPECIFIC-QUESTS))))     

;;(twanttho 1 1 T 1 1 (XDATA SCALES (HQ)))
;;  (get-qvar-list "wantspq")
;;TEST USING *SHAQ-SCALEDATA-LIST
;;  (get-multi-sel-items-ansqvar&text 'BIO1ETHN :data-list *shaq-scaledata-list) 
;;WORKS = ("North America" "Cambodia")    ("enortham" "ecambodn")    (("enortham" "1" 1 T 1 6 NIL) ("ecambodn" "5" 1 T 1 6 NIL))

;;GET-MULTI-SEL-QVAR-ANSWER-TEXT
;;
;;ddd
(defun get-multi-sel-qvar-answer-text (qvar)
  "In U-data-results-functions, RETURNS answer text for a multi-selection question, with answer = qvar"
  (let
      ((answer-text-list (fifth (get-qvar-list qvar)))
       (answer-text "")                         
       )
    (loop
     for text in answer-text-list
     do
     (setf answer-text (format nil "~A~A" answer-text text))
     )
     answer-text
    ))
;;TEST
;;  (get-multi-sel-qvar-answer-text "wantspq")
;; works = "I want to choose specific questionnaire(s)."


;;GET-MULTI-SEL-XDATA-KEY-VALUES
;;
;;ddd
(defun get-multi-sel-xdata-key-values (multisel-quest/cat  xkey
                                                &key (data-list *shaq-data-list))
  "In U-data-results-functions, INPUT= a multi-sel qvar symbol or string.  RETURNS (values all-selected-one-xkey-values qvar&one-xkey-values-list sel-qvars-in-datalist)"
  (let
      ((cat-qvar-list-of-lists)
      ;; (qvar-one-key-values-list)
       )
    ;;get the qvar lists
     (setf cat-qvar-list-of-lists (get-qvarlist-in-shaqdatalist  multisel-quest/cat
                                                                :data-list data-list))
     ;;(afout 'out (format nil "cat-qvar-list-of-lists= ~A" cat-qvar-list-of-lists))
     ;;find the lists of selected cats, scales in above lists
     (multiple-value-bind (qvar&one-xkey-values-list   qvar-cat 
                                         all-selected-one-xkey-values sel-qvars-in-datalist)
         (get-selected-qvars&xdata cat-qvar-list-of-lists  
                              :xdata-key-list (list xkey) :return-one-key-values  xkey)
     ;;end mvb, let, get-multi-sel-xdata-key-values
     (values all-selected-one-xkey-values qvar&one-xkey-values-list sel-qvars-in-datalist)
     )))
;;TEST
;;  (get-multi-sel-xdata-key-values  "ugoals" :scales)
;;WORKS, =   (:SCALES HQ INTERPERSONAL ACAD-LEARNING HQ ACAD-LEARNING CAREER-INTEREST)   
;;(("gsuchap" (:SCALES (HQ))) ("grelat" (:SCALES (INTERPERSONAL))) ("gacadsuc" (:SCALES (ACAD-LEARNING))) ("gcomplta1" (:SCALES (HQ ACAD-LEARNING CAREER-INTEREST))))
;;(("gsuchap" "1" 1 T 1 1 (:XDATA :SCALES (HQ))) ("grelat" "6" 1 T 1 1 (:XDATA :SCALES (INTERPERSONAL))) ("gacadsuc" "13" 1 T 1 1 (:XDATA :SCALES (ACAD-LEARNING))) ("gcomplta1" "14" 1 T 1 1 (:XDATA :SCALES (HQ ACAD-LEARNING CAREER-INTEREST))))





;;GET-SELECTED-QVARS&XDATA
;;
;;ddd
(defun get-selected-qvars&xdata (multi-qvar-list &key xdata-key-list 
                                                      return-one-key-values)
   "In U-data-results-functions.lisp, INPUT from list returned by GET-MULTI-ANSWER-SELECTED-ITEMS.  Then RETURNS (values selected-qvar-xdatakey-value-lists  qvar-cat  return-one-key-values-list  selected-qvars-lists). First is a list of lists of all SELECTED item qvars with xdata-key-list or lists of all xdata if xdata-key-list = nil. Second is the qvar-cat of which the answers are = the qvars. If return-one-key-values = a key, then also returns a separate list of ONLY that key and a list of its values for all items without the qvar listed."
   (let
       ((selected-qvars-lists)
        (qvar-cat)
        (selected-qvar-xdatakey-value-lists)
        (value-lists-by-keys)
        (return-one-key-values-list (list return-one-key-values))
        (qvar)
        (xdata)
        (key-value-list)
        (key-value)
        (return-value)
        )
     (multiple-value-setq (selected-qvars-lists qvar-cat)
         (get-selected-qvar-lists multi-qvar-list))
     (loop
      for item-list in selected-qvars-lists
      do
      (setf qvar (first item-list)
            xdata (car (last item-list)))
      (unless (equal (car xdata) :xdata)
        (setf  xdata nil))
      ;;  (afout 'out (format nil "xdata=~A~%" xdata))
      (cond
       (xdata
        (setf  key-value-list
               (find-keys-and-values-in-list  xdata-key-list xdata)
               selected-qvar-xdatakey-value-lists 
               (append selected-qvar-xdatakey-value-lists 
                       (list (list qvar key-value-list))))     
        (cond
         (return-one-key-values
          (setf key-value 
                (find-keys-and-values-in-list (list return-one-key-values)
                                              key-value-list)
                return-value (second key-value))
          (unless (listp return-value)
            (setf return-value (list return-value)))
          (setf return-one-key-values-list (append return-one-key-values-list
                                                   return-value))
          )
         (t nil))
        ;;end xdata clause
        )
       (t nil))
      ;;end loop
      )
     (values selected-qvar-xdatakey-value-lists  qvar-cat  return-one-key-values-list  selected-qvars-lists)
     ;;end let,  get-selected-qvars&xdata ;; was get-selected-qvar-keys-values
     ))
;;TEST
;;  (get-selected-qvars&xdata '("UTYPE" :MULTI "UserType" "User characteristics/assessment choices" 2 ("twanttho" "1" 1 T 1 2 (:XDATA :SCALES (HQ))) ("tknowmor" "2" 1 NIL 0 2 (:XDATA :SCALES (HQ))) ("twanthel" "3" 1 NIL 0 2 (:XDATA :SCALES (HQ))) ("twantspe" "4" 1 NIL 0 2 (:XDATA :SCALES NIL)) ("texperie" "5" 1 NIL 0 2 (:XDATA :SCALES NIL)) ("tprevshaq" "6" 1 T 1 2 (:XDATA :SCALES (PREVIOUS-USER))) ("wantspq" "7" 1 T 1 2 (:XDATA :SCALES (SPECIFIC-QUESTS))) ("tu100stu" "8" 1 NIL 0 2 (:XDATA :SCALES (HQ ACAD-LEARNING))) ("tcsulbst" "9" 1 NIL 0 2 (:XDATA :SCALES (ACAD-LEARNING))) ("tcolstu" "10" 1 NIL 0 2 (:XDATA :SCALES (ACAD-LEARNING))) ("totherst" "11" 1 NIL 0 2 (:XDATA :SCALES (ACAD-LEARNING))) ("tressub" "12" 1 NIL 0 2 (:XDATA :SCALES NIL)) ("tcolfaca" "13" 1 NIL 0 2 (:XDATA :SCALES NIL)) ("u-none" "14" 1 T 1 2 (:XDATA :SCALES NIL)))  :xdata-key-list '(:SCALES)  :return-one-key-values ':scales)
;;; WORKS, = (("twanttho" (:SCALES (HQ))) ("tprevshaq" (:SCALES (PREVIOUS-USER))) ("wantspq" (:SCALES (SPECIFIC-QUESTS))) ("u-none" (:SCALES NIL)))     "UTYPE"    (:SCALES HQ PREVIOUS-USER SPECIFIC-QUESTS)      (("twanttho" "1" 1 T 1 2 (:XDATA :SCALES (HQ))) ("tprevshaq" "6" 1 T 1 2 (:XDATA :SCALES (PREVIOUS-USER))) ("wantspq" "7" 1 T 1 2 (:XDATA :SCALES (SPECIFIC-QUESTS))) ("u-none" "14" 1 T 1 2 (:XDATA :SCALES NIL)))




;;GET-SELECTED-QVAR-LISTS
;;
;;ddd
(defun get-selected-qvar-lists (multi-qvar-list)
  "In U-data-results-functions.lisp,  INPUT from list returned by GET-MULTI-ANSWER-SELECTED-ITEMS.  Then  RETURNS a list of all SELECTED items from a multi-selection qvar --generally a category such as BIO. Selected items have a value of 1 (vs 0 for non-selected). RETURNS (values selected-items-list qvar) . Returns selected-items-list= nil if none selected."
  (let
      ((selected-items-list)
     ( item)
     (  selected-p)
       )
    (loop
     for sublist in multi-qvar-list
     do
     ;;(afout 'out (format nil "sublist= ~A~%" sublist))
     (cond
      ((listp sublist)
         (setf selected-p (fourth sublist))
         (if selected-p
             (setf selected-items-list (append selected-items-list (list sublist))))
         )
      (t nil))
     ;;end loop
     )
    (values selected-items-list (car multi-qvar-list))
    ;;end let, get-selected-qvar-lists
    ))
;;TEST -- for multiple-selection quests only
;;  (get-selected-qvar-lists '("UTYPE" :MULTI "UserType" "User characteristics/assessment choices" 2 ("twanttho" "1" 1 T 1 2 (:XDATA :SCALES (HQ))) ("tknowmor" "2" 1 NIL 0 2 (:XDATA :SCALES (HQ))) ("twanthel" "3" 1 NIL 0 2 (:XDATA :SCALES (HQ))) ("twantspe" "4" 1 NIL 0 2 (:XDATA :SCALES NIL)) ("texperie" "5" 1 NIL 0 2 (:XDATA :SCALES NIL)) ("tprevshaq" "6" 1 T 1 2 (:XDATA :SCALES (PREVIOUS-USER))) ("wantspq" "7" 1 T 1 2 (:XDATA :SCALES (SPECIFIC-QUESTS))) ("tu100stu" "8" 1 NIL 0 2 (:XDATA :SCALES (HQ ACAD-LEARNING))) ("tcsulbst" "9" 1 NIL 0 2 (:XDATA :SCALES (ACAD-LEARNING))) ("tcolstu" "10" 1 NIL 0 2 (:XDATA :SCALES (ACAD-LEARNING))) ("totherst" "11" 1 NIL 0 2 (:XDATA :SCALES (ACAD-LEARNING))) ("tressub" "12" 1 NIL 0 2 (:XDATA :SCALES NIL)) ("tcolfaca" "13" 1 NIL 0 2 (:XDATA :SCALES NIL)) ("u-none" "14" 1 T 1 2 (:XDATA :SCALES NIL))))
;;WORKS, RETURNS =  (("twanttho" "1" 1 T 1 2 (:XDATA :SCALES (HQ))) ("tprevshaq" "6" 1 T 1 2 (:XDATA :SCALES (PREVIOUS-USER))) ("wantspq" "7" 1 T 1 2 (:XDATA :SCALES (SPECIFIC-QUESTS))) ("u-none" "14" 1 T 1 2 (:XDATA :SCALES NIL)))    "UTYPE"

;;short version
;;ddd
(defun pp-shaq-data-list ()
  "In U-data-results, pretty-prints  *shaq-data-list using pretty-print-shaq-data-list (&key (shaq-data-list *shaq-data-list "
  (pretty-print-shaq-data-list)
  )

;;not needed, just use (pprint *shaq-data-list)
;;PRETTY-PRINT-SHAQ-DATA-LIST
;;
;;ddd
#|(defun pretty-print-shaq-data-list (&key (shaq-data-list *shaq-data-list ))
  "In U-data-results, pretty-prints  *shaq-data-list or other specified data-list instead. Can just use regular PPRINT FUNCTION TOO."
  (let
      ((pretty-data-string (format nil "(:SHAQ-DATA-LIST~%"))
       (new-item-num -99)
       )
    (loop
     for item in shaq-data-list
     with scale-name
     with scale-list
     with new-scale-p
     do
     (incf new-item-num)
     (cond
      ((equal item :scale)
       (setf new-scale-p t
             new-item-num 0
             pretty-data-string (format nil "~S~%~% :SCALE" pretty-data-string)))
      ((= new-item-num 1)
       (setf scale-name item
             pretty-data-string (format nil "~S ~S" pretty-data-string scale-name)))      
      (T  (setf pretty-data-string (format nil "~S~%~S" pretty-data-string item))))
     ;;end loop
     )
    pretty-data-string
    ;;end let, pretty-print-shaq-data-list
    ))|#
;;TEST
;;  (pretty-print-shaq-data-list *shaq-data-list)
    
      


 
;;CALC-SCALE&SUBSCALE-SCORES 
;;
;;ddd
(defun calc-scale&subscale-scores (&key (data-list *shaq-data-list) (omit-list '(:shaq-data-list)))
  "In U-data-results-functions, COMPLETES *shaq-data-list for scales and subscales. Finds all scales in data-list, finds-subscales and questions for each. Then calculates scale and subscale scores and appends to end of *shaq-data-list. [currently won't append other data-lists]. RETURNS ALL-SCALEDATA-LISTwhich is a series of :scale and :subscale lists which has data for ALL scales taken on SHAQ. USES calc-scale-data whose doc =   1.Given scale-name and question-data-list (in *shaq-data-list format) in data-list ,2.calcs scale data, 3. adds to *shaq-data-list, 4. writes data in formatted results. RETURNS . Appends *shaq-data-list with :scaledata or :subscaledata then (list scale-name  num-scale-items scale-rel-score scale-mean-score scale-max-score scale-SD scale-variance) and adds same items to slots in the scale'-inst. ALSO sets SLOT-VALUE 'relative-score of the scale/subscale. EACH datalist contains scale-data  (list scale-type  scale-name  :N num-scale-items :REL scale-rel-score :MN scale-mean-score :TOT scale-total-score :MAX scale-max-score :SD scale-SD :VAR scale-variance)"
  (let
      (
       ;;do in loop (scale-data-list)
       ;;do in loop (subscale-data-list)
      ;; (scale-msq-data-list)
       (all-scaledata-list)
       (num-items (list-length data-list))
       (key)
       (q-data)
       (new-scale-p)
       (scale-name)
       (scale-data-list)
       (scale-qvar-names)
       (subscale-data-list)
       (process-scaledata-p)
       (msq-data-list)
       (subscale-inst)
       (qvar-names)
       (qvar-name)
       (item-qdata-p)
       (subscale-list)
       (scaledata)
       (subscaledata-list)
       )
    (loop
     for item in data-list
     for n from 1 to  num-items
     #|     with key
     with q-data
     with new-scale-p
     with scale-name
     with scale-data-list
     with scale-qvar-names
     with subscale-data-list
     with process-scaledata-p
     with msq-data-list
     ;;with msq-name
     with item-qdata-p
     with subscale-list
     with scaledata|#
     do
     ;; (afout 'out (format nil "NEW CYCLE n= ~A num-items= ~A~%  item= ~A~%scale-name=~A  item-qdata-p=~A~%scale-data-list= ~S~%subscale-data-list= ~S~%process-scaledata-p= ~A" n num-items item scale-name item-qdata-p scale-data-list subscale-data-list process-scaledata-p))
     (cond     
      ((member item omit-list :test 'equal) NIL)
      #|      ;;THESE KEYS MARK THE END OF A LIST OF SCALE QUESTIONS
      ((or (member item '(:scale :multi-sel-quest :text-data) :test 'equal)
           (= n num-items)) NIL)|#
      ((equal item :scale)
       (setf item-qdata-p nil
             new-scale-p T)
       ;;not needed msq-item-p nil)
       (when scale-data-list (setf process-scaledata-p T)))
      ((and new-scale-p (not (listp item)))
       (setf scale-name item
             new-scale-p nil
             scale-qvar-names nil
             item-qdata-p T))
      ;;in case of a :multi-sel-quest or :text-data item in the middle of a series of questions on a scale, etc. JUST ADD WHOLE LIST AS IS TO all-scaledata-list 
      ((and (listp item)
            (or (equal (second item) :MULTI)
            (equal (car item) :text-data)))
       (setf all-scaledata-list (append all-scaledata-list (list item))))
      
      ;;if none of above and item-qdata-p, add item to scale-data-list
      ((and item-qdata-p (listp item)(equal (third item) :single))
       (setf q-data  item ;;2014-10-18, these were qdata not q-data, qdata was unbound
             scale-data-list (append scale-data-list (list q-data))
             scale-qvar-names (append scale-qvar-names (list (car q-data)))))
      (t nil))

     ;;FOR PREVIOUS SCALE (IF THERE IS ONE) CALC THE SCORES
     ;;calcs scale scores and appends to *shaq-scaledata-list
     ;;must be separate so will process when item = :scale
     (cond
      (process-scaledata-p
       ;;added omit processing "no-scale" scales
       (unless  (or (null scale-name)(string-equal scale-name "no-scale"))
         (setf scaledata (calc-scale-data scale-name scale-data-list)
               scaledata (append scaledata (list :qv scale-qvar-names)))         
         ;;JJJ
         ;;CHECK FOR SUBSCALES, add to scaledatam, AND PROCESS THEM
         (setf subscale-list (find-direct-subclass-names scale-name))
         ;; (afout 'out (format nil "PreLoop, subscale-list= ~S~%" subscale-list))        
         (if subscale-list
             (setf scaledata (append scaledata (list :ss subscale-list))))
         ;;append the all-scaledata-list with scaledata
         (if scaledata  ;;in case it's nil
             (setf all-scaledata-list (append all-scaledata-list (list scaledata))))
         (loop
          for subscale-name in subscale-list
          ;;  with new-scale-p
          ;;with item-qdata-p
          do
          (setf subscale-inst (get-class-inst subscale-name)
                qvar-names (slot-value (eval subscale-inst) 'scale-questions))
          ;;find the subscale-data-list
          (setf subscale-data-list
                (make-subscale-datalist subscale-name qvar-names scale-data-list))
          ;;(afout 'out (format nil "In SubscaleLoop, subscale-name= ~S~%qvar-name= ~S~%qvar-names= ~Ssubscale-data-list= ~S~%" subscale-name qvar-name qvar-names subscale-data-list))
          ;;calcs scale scores and appends to *shaq-data-list
          (setf  subscaledata-list 
                 (append (calc-scale-data subscale-name subscale-data-list :is-subscale-p T)
                         (list :qv qvar-names))
                 all-scaledata-list (append all-scaledata-list (list subscaledata-list)))

          ;; (afout 'out (format nil "After append, all-scaledata-list= ~S~%" all-scaledata-list))
          ;;end subscale loop
          )
         ;;reset vars 
         (setf  scale-data-list nil 
                process-scaledata-p nil)
                             
         ;;end unless, process-scaledata-p clause
         ))
      (t nil))
     ;;end  outer scale loop
     )
    all-scaledata-list
    ;;end let, calc-scale&subscale-scores
    ))
;;TEST
 ;;  (setf *scaletest1 (calc-scale&subscale-scores))
;;   (pprint *scaletest1)
;; or (setf *shaq-scaledata-list (calc-scale&subscale-scores))



;;CALC-SCALE-DATA
;;
;;ddd
(defun calc-scale-data (scale-name quest-data-lists &key is-subscale-p (scoring-formula '+)) ;;alternative  append-data-lists-p (data-list *shaq-data-list) (scaledata-list *shaq-scaledata-list))
  "In U-data-results-functions.  1.Given scale-name and question-data-list (in *shaq-data-list format) in data-list ,2.calcs scale data, 3. adds to *shaq-data-list, 4. writes data in formatted results. RETURNS (values scaledata-list. Either :scaledata or :subscaledata then  scale-name :N  num-scale-items :REL scale-rel-score :MN scale-mean-score :TOT scale-total-scor :MAX scale-max-score :SD scale-SD :VAR scale-variance) and adds same items to slots in the scale'-inst. NOTE: :QV with qvar-list and :SS with subscale-list added in calling function."
  (let*
      ((scale-inst (eval (my-make-symbol 
                          (format nil "*~A-INST" scale-name))))
        (scale-description  (slot-value scale-inst 'description))
        (scale-type)
      ;; (helplink-list (get-key-list  helplink *stevens-selfhelp-files))
      ;; (help-info (slot-value scale-inst 'help-info))
           (q-scores)
       (q-relative-scores)
       (q-max-scores )
       (total-q-rel-scores)
       (scale-rel-score )
       (scale-rel-score-text)
       (scale-max-score)
       (scale-total-score 0)
       (scale-mean-score)
       (sum-sq-scores 0)
       (scale-variance)
       (dif-score)
       (sq-dif-score)
       (q-rel-score-num)
       (rating)
       (scale-SD  )
       (num-scale-items (list-length quest-data-lists))
       (q-name) (q-label) (selection-type ) (answer)
       (q-rel-score) (q-score) ( q-max-score) (q-num) 
       (q-norm-rev-scored) (q-ans-array)
       (x)
       (scale-data)
       (scaledata-list)
       )

    (cond
     ((null is-subscale-p) (setf scale-type :scaledata))
     (t (setf scale-type :subscaledata)))

  ;;  (format t "(fifth (car quest-data-lists))= ~S~%" (fifth (car quest-data-lists)))
  (cond
   ((= num-scale-items 0) nil)
   ;;check to make sure scale not nil and has a relative-score
   ;;SSS JUST ADDED THIS-- TEST WITH GOSHAQ
   (scale-name  
    ;;CALCULATE THE SCALE DATA
    (loop
     for qdata-list in quest-data-lists
     do
     ;;find the data values
     (multiple-value-setq (q-name q-label selection-type  answer  q-rel-score q-score x  q-max-score  q-num q-norm-rev-scored q-ans-array)
         (values-list  qdata-list))
     ;;convert rel-score string to number
     (setf q-rel-score-num (convert-string-to-float q-rel-score))
     ;;accumulate the scores
     (setf  q-scores (append q-scores (list q-score))
            q-relative-scores (append q-relative-scores (list q-rel-score-num))
            q-max-scores (append q-max-scores (list q-max-score))
            scale-total-score (+ scale-total-score q-score))
     ;;end loop
     )
    
    ;;calc the scale scores
    (setf  ;;done above  scale-total-score  (apply scoring-formula q-scores)
           scale-mean-score   (/ scale-total-score   (* num-scale-items 1.0))
           scale-max-score (apply '+ q-max-scores)
           total-q-rel-scores (apply '+ q-relative-scores)    
           scale-rel-score (/ (* 1.0 total-q-rel-scores) num-scale-items)
           scale-rel-score-text (format nil "~3$" scale-rel-score))              
          
    ;;find the Standard Deviation (SD)
    (loop
     for score in q-scores
     do
     (setf dif-score (- score   scale-mean-score)
           sq-dif-score (* dif-score dif-score)
           sum-sq-scores (+ sum-sq-scores sq-dif-score))
     ;;end loop
     )
    ;;variance and SD
    (setf scale-variance (/ (* sum-sq-scores 1.0) num-scale-items)
          scale-SD (sqrt scale-variance)) 

    
    ;;PUT DATA IN SCALE-INSTANCE AND *SHAQ-DATA-LIST and *shaq-scaledata-list
    (setf  scale-data  (list scale-type  scale-name  :N num-scale-items 
                             :REL scale-rel-score :MN scale-mean-score :TOT scale-total-score :MAX scale-max-score :SD scale-SD :VAR scale-variance))
    ;;(afout 'out (format nil "In calc-scale-data, scale-name= ~A~%scale-data= ~A~%" scale-name scale-data))
    ;;append the scaledata-list
    (setf scaledata-list (append scaledata-list  scale-data))
    ;;KKK
    ;;set relative-score slot-value (used later for HQ calc)
    (setf (slot-value scale-inst 'relative-score) scale-rel-score)

    ;;end scale not nil clause
    )
   (t nil))

#| not needed??
      (set-slot-values '(raw-score relative-score mean-score max-possible-value 
                                 SD variance)                      
                     (list scale-total-score scale-rel-score scale-mean-score scale-max-score
                           scale-SD  scale-variance))|#

          ;;  (rating  )
       ;;test  (apply '+  1 1 1 '(1 1 1)) = 6 ;;can be elements or a list at end.
    
       ;;scale-data= (list scale-name  num-scale-items scale-rel-score scale-mean-score scale-total-score scale-max-score scale-SD scale-variance)
       scaledata-list
   ;;end let, calc-scale-data
    ))
;;TEST
#| In SubscaleLoop, subscale-name= HAPSDMEANSPIRITSS
qvar-name= NIL
qvar-names= (HAPSELFD HAPSPIRI)subscale-data-list= ((HAPSELFD h-Happy w/ self & development SINGLE Extremely happy 1.000 7 NIL 7 7 SCORED-NORMAL HAPPY7) (HAPSPIRI h-Happy w/ meaning & spiritual/religious SINGLE Extremely happy 1.000 7 NIL 7 7 SCORED-NORMAL HAPPY7))|#
;;  (calc-scale-data 'HAPSDMEANSPIRITSS '((HAPSELFD "h-Happy w/ self & development" SINGLE "Extremely happy" 1.000 7 NIL 7 7 SCORED-NORMAL HAPPY7) (HAPSPIRI "h-Happy w/ meaning & spiritual/religious" SINGLE "Extremely happy" 1.000 7 NIL 7 7 SCORED-NORMAL HAPPY7)) :is-subscale-p T)
;; works = (:SUBSCALEDATA HAPSDMEANSPIRITSS (HAPSDMEANSPIRITSS 2 1.0 7 14 14 0.0 0))

;;   (setf *sdresult (let ((data-list '( :SCALE INTSS7COLLAB (CRTKLONG "cr-Not one talk long before other" SINGLE "EXTREMELY accurate / like us" 0.143 1 NIL 7 1 SCORED-NORMAL LIKEUS7REVERSE) (CRTEWEAK "cr-Not uncomfortable about tell weakness" SINGLE "EXTREMELY accurate / like us" 0.143 1 NIL 7 1 SCORED-NORMAL LIKEUS7REVERSE) (CRMANIPU "cr-Not feel me or partner manipulate" SINGLE "EXTREMELY accurate / like us" 0.143 1 NIL 7 1 SCORED-NORMAL LIKEUS7REVERSE) (CRREPRAI "cr-Partner gives more praise than criticism" SINGLE "EXTREMELY accurate / like us" 0.143 1 NIL 7 1 SCORED-NORMAL LIKEUS7REVERSE) (CRTEACH "cr-Not problem teaching other" SINGLE "EXTREMELY accurate / like us" 0.143 1 NIL 7 1 SCORED-NORMAL LIKEUS7REVERSE) (CRTLKMOR "cr-One partner not much more talkative"SINGLE "EXTREMELY accurate / like us" 0.143 1 NIL 7 1 SCORED-NORMAL LIKEUS7REVERSE) (INTWKTOG "in-We enjoy working together" SINGLE "EXTREMELY accurate / like us" 0.143 1 NIL 7 1 SCORED-NORMAL LIKEUS7REVERSE))))  (calc-scale-data (second data-list)(cddr data-list))))
;;works, appends    :SCALEDATA INTSS7COLLAB (INTSS7COLLAB 7 0.143 1 7 49 0.0 0))  to *shaq-data-list



#|  replace with process built into results manager???
(defun next-shaq-data-function (&key (data-list *shaq-data-list))
  "In U-data-results-functions"
  (let
      ((scale-name)
       (scale-quest-results-list)
       )
    (loop
     for qdata 
     with scale-data
     do


    ;;end let, next-shaq-data-function
    ))|#


;;NOT NEEDED, DO THIS WHEN PRINT RESULTS AND TAKE ONE SCALEDATA-LIST ITEM AT A TIME IN ORDER
#|;;GET-SCALE&SUBSCALE-DATALISTS
;;
;;ddd
(defun get-scale&subscale-datalists (scale-name
                           &key (scaledata-list *shaq-scaledata-list))
  "In U-data-results-functions, RETURNS (values scale-datalist subscale-datalists-list subscale-names-list) EG. (:SUBSCALEDATA \"SSDELODEPTREATS\" :N 2 :REL 0.10100001 :MN 1.0 :TOT 2 :MAX 20 :SD 0.0 :VAR 0.0)"
  (let
      ((scale-datalist)
       (subscale-datalists-list)
       (subscale-names-list)
       )
    (loop
     for item in scaledata-list
     with subscale-datalist
     with subscale-name
     do
     (cond
      ((|#
     
     

;;FIND-SINGLE-SELECTION-QUESTION-DATA
;;
;;ddd
(defun find-single-selection-question-data (qvar  &key (all-questdata-list *shaq-data-list))
  "U-data-results-functions, RETURNS QDATA-LIST = (values qdata-list scale-name) Where qdata-list = ( qvar  q-label sel-type  answer relative-score adjusted-int-score q-num num-answers selected-data nor-or-rev-scored answer-panel-sym)  EG. (THMSEDIS  \"ti-Self-discipline\"  :SINGLE  \"The most important thing in my life\"  \"1.000\"  10  NIL  10  10  SCORED-NORMAL  PRIORITY10)"
;;JJJ
  (let
      ((qdata-list)
       (scale-found-p)
       (scale-name)
       )
   (loop
    for item in all-questdata-list
    do
  ;; (format T "item= ~A~%" item)
    (cond
     ((equal item :scale)
      (setf scale-found-p t))
     (scale-found-p
      (setf scale-name item
            scale-found-p nil))
     ((and (listp item)(my-equal qvar (car item)))
       (setf qdata-list item)                
      (return))
      (t nil))
    ;;end loop
    )
   (values qdata-list scale-name)
   ;;end let, find-single-selection-question-data
   ))
;;TEST
;;  (find-single-selection-question-data 'SLFCOPE)
;; WORKS = (SLFCOPE "sc-Emotional coping skills" :SINGLE "Extremely confident" "1.000" 7 NIL 7 7 SCORED-NORMAL CONFIDENCE7)     SSLFCONF


#|(defun single-selection-callback (item-selected  interface)
  "In Frame-quest-functions.lisp, Main single-selection callback, converts and records data from the selection. NOTE: capi returns values 0 to (n - 1) in reverse order of my scheme. Therefore I use (- n (+ item-selected-data 1)) for normally scored items and (+ item-selected-data 1) for REV scored items. The integer scores are after these adjustments have been made. 
Appends *shaq-data-list with 
(list qvar-string :single relative-score adjusted-int-score  num-answers item-selected  item-selected-data nor-or-rev-scored)
 |#

    

;;GET-SCALE-DATALIST
;;
;;ddd
(defun get-scale-datalist (scale-name
                           &key (scaledata-list *shaq-scaledata-list))
  "In U-data-results-functions, RETURNS (values scale-datalist scale-type) EG. (:SUBSCALEDATA \"SSDELODEPTREATS\" :N 2 :REL 0.10100001 :MN 1.0 :TOT 2 :MAX 20 :SD 0.0 :VAR 0.0)"
  (let
      ((scale-type)
       (scale-datalist)
       )
    (loop
     for item in scaledata-list
     do
    ;;(afout 'out (format nil "item= ~A~%"  item))
    ;;(format T "item= ~A scale-type= ~A~%"  item scale-type)
     (cond
      ((and (listp item) (my-equal (second item) scale-name))
       (setf scale-type (first item)
             scale-datalist  item)
       (return))
      (t nil))
     ;;end loop
     )    
    (values  scale-datalist scale-type)
    ;;end let, get-scale-datalist
    ))
;;TEST
;;  (get-scale-datalist "INTSS7COLLAB")
;;  works = (:SCALEDATA INTSS7COLLAB :N 7 :REL 0.143 :MN 1.0 :TOT 7 :MAX 49 :SD 0.0 :VAR 0.0)     :SCALEDATA
;; (get-scale-datalist "sID")
#| (SCALESSEL
  :MULTI
  "scalessel"|#
;;new ("sID" :TEXT-DATA ("Name" " " :SINGLE " ")("UserID" "222222" :SINGLE "222222") ("Sex" "Male" :SINGLE "Male" 1) ("Age" 22 :SINGLE 22 22) ("Email" "" :SINGLE "") ("USA?" "USA" :SINGLE "USA" 1) ("Nation" "USA" :SINGLE "USA") ("ZipCode" 44444 :SINGLE 44444) ("HrsWork" 22 :SINGLE 22 22))

;;GET-TEXT-SCALE-DATA
;;
;;ddd
(defun get-textdata-answer (qvar-name scale-name 
                                      &key (datalist *shaq-scaledata-list) (nth 1))
  "In U-data-results-functions. RETURNS (values answer qvar-name). NOTE: If  datalist is a only a scale datalist, it must be the datalist INSIDE a list."
  (let*
      ((scaledata-list (get-scale-datalist scale-name))
       (answer (get-nth-in-keylist qvar-name nth scaledata-list))
       )
    (values answer qvar-name)
    ))

;; (get-textdata-answer "sex" "sID"   :datalist '(("sID" :TEXT-DATA ("Name" " " :SINGLE " ")("UserID" "222222" :SINGLE "222222") ("Sex" "Male" :SINGLE "Male" 1) ("Age" 22 :SINGLE 22 22) ("Email" "" :SINGLE "") ("USA?" "USA" :SINGLE "USA" 1) ("Nation" "USA" :SINGLE "USA") ("ZipCode" 44444 :SINGLE 44444) ("HrsWork" 22 :SINGLE 22 22))))


#| :TEXT-DATA "sID" ("Name" " " :SINGLE " ") ("UserID" "222222" :SINGLE "222222") ("Sex" "Male" :SINGLE "Male" 1) ("Age" 22 :SINGLE 22 22) ("Email" "" :SINGLE "") ("USA?" "USA" :SINGLE "USA" 1) ("Nation" "USA" :SINGLE "USA") ("ZipCode" 44444 :SINGLE 44444) ("HrsWork" 22 :SINGLE 22 22)
 |#



;;MAKE-SUBSCALE-DATALIST
;;
;;ddd
(defun make-subscale-datalist (subscale-name subscale-qvar-list scale-data-list)
  "In U-data-results-functions"
  (let
      ((subscale-datalist)
       (qvar)
       )
    (loop
     for qdata-list  in scale-data-list
     do
     (setf qvar (car qdata-list))
     (if (member qvar subscale-qvar-list :test 'equal)
         (setf subscale-datalist (append subscale-datalist (list qdata-list))))
     ;;end loop
     )
    (values subscale-datalist subscale-name)
    ;;end let, make-subscale-datalist
    ))



;;CALC-RELATIVE-SCORE
;;
;;ddd
(defun calc-relative-score (item-selected-data num-answers
                                               &key scored-reverse-p return-number-p) 
    "In U-data-results-functions, calculates the relative score which is score= item-selected-data on a scale that ranges from 1 to num-answer for the original scores, but converts to a relative score range of from 1.0 to 0 (never actually 0). RETURNS (values relative-score-text nor-or-rev-scored relative-score).  Returns 99 if item-selected-data not a number. return-number-p causes return a number instead of a string.Assumes that FIRST ITEM is HIGHEST SCORE, and last item is lowest score (eg. 1 of 7 highest, 7 of 7 lowest, bec SHAQ buttons laid out that way."
    (let
        ((adjusted-int-score)
         (nor-or-rev-scored)
         (relative-score 99)
         (relative-score-text "")
         )
      (cond
       ((numberp item-selected-data)
        (cond
         ;;("rhlfreqi" :SINGLE RHLFREQIQ "1" FREQ7REVERSE 7 T NIL 
         ;; ("rhlfreqi" "1.000" 7 7 "More than 60 days per year" SCORED-NORMAL))
         ((null scored-reverse-p)
          (setf adjusted-int-score (- num-answers item-selected-data)
                nor-or-rev-scored 'scored-normal))
         (t (setf adjusted-int-score (+ item-selected-data)
                  nor-or-rev-scored ''scored-reverse)))
        ;;was 
        ;;calc the relative-score
        (setf relative-score (/  adjusted-int-score  (* 1.0 num-answers)))

        ;;SSS use a different converter than format or $??
        (unless return-number-p
          (setf relative-score-text  (format nil "~3$" relative-score)))
        ;;end numberp
        )
       (t nil))
      (values relative-score-text nor-or-rev-scored relative-score)
      ;;end let, calc-relative-score
      ))
;;TEST
;;  (calc-relative-score  6  7) = "0.143"  SCORED-NORMAL
;; 



;;************************ OLD OUTDATED, BUT MAY WORK *************
;;
;;WORKS

;;WORKS FOR OLD FORMAT OF *SHAQ-SCALEDATA-LIST
#|(defun get-scale-datalist (scale-name
                           &key (datalist *shaq-scaledata-list))
  "In U-data-results-functions, RETURNS (values result-datalist scale-datalist) where result-datalist = (list :scale-type scale-type :name  name :num-items num-items :rel-score rel-score :mean-score mean-score :max-score max-score :SD SD :variance variance) given only name--can be symbol or string. result-datalist = "
  (let
      ((result-datalist)
       (scale-data-found-p)
       (scale-found-p)
       (scale-type)
       (scale-datalist)
       )
    (loop
     for item in datalist
     do
    ;;(afout 'out (format nil "item= ~A~%"  item))
    (format T "item= ~A scale-type= ~A~%"  item scale-type)
     (cond
     ((member item '(:scaledata :subscaledata) :test 'equal)
       (setf scale-type item))
      ((and scale-type (equal item scale-name))
       (setf scale-found-p T)
       (break)
       )     
      ((and scale-found-p (listp item))
       (setf scale-datalist item)
       (return))
      (t (setf scale-data-found-p nil 
               scale-found-p nil)))
     ;;end loop
     )
    (multiple-value-bind (name  num-items rel-score mean-score max-score SD variance)
        (values-list scale-datalist)
      (setf result-datalist
            (list :scale-type scale-type :name  name :num-quests num-items :rel-score rel-score :mean-score mean-score :max-score max-score :SD SD :variance variance))
      
    (values result-datalist scale-datalist)
    ;;end mvb,let, get-scale-datalist
    )))|#
;;TEST
;; following uses data from above function test
;;  (get-scale-datalist 'INTSS7COLLAB) ;;; :datalist *shaq-data-list)
;;works (:SCALE-TYPE :SCALEDATA :NAME INTSS7COLLAB :NUM-QUESTS 7 :REL-SCORE 0.143 :MEAN-SCORE 1 :MAX-SCORE 7 :SD 49 :VARIANCE 0.0)   
;; (get-scale-datalist "INTSS7COLLAB" :datalist *shaq-data-list)
;;

;;GET-SCALEDATA-QVARS  
;;
;;ddd
(defun get-scaledata-qvars (scaledata-list)
  "In U-data-results-functions, find the scale qvar list (following :qv key) in the scaledata-list in all-scaledata-lists = *shaq-scaledata-list"
    (nth 17 scaledata-list)
    )


;;GET-SCALEDATA-SUBSCALES 
;;
;;ddd
(defun get-scaledata-subscales (scaledata-list)
  "In U-data-results-functions, find the subscale list or nil (following :ss key) in the scaledata-list in all-scaledata-lists = *shaq-scaledata-list"
    (nth 19 scaledata-list)
    )
;;TEST
;;  (get-scaledata-subscales      '(:SCALEDATA  SWORLDVIEW   :N  11  :REL  0.68445457  :MN  5.3636365  :TOT  59  :MAX  86  :SD  3.4712515  :VAR  12.049587  :SS  ("SSWVGRATPT" "SSWVOPTIMS" "SSWVENTIT")))
;;works = ("SSWVGRATPT" "SSWVOPTIMS" "SSWVENTIT")


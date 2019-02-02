;;************************** SHAQ-syms-labels-functions.lisp *************************
;;
#|  From: *SHAQ-quest-variables-msl4
 ( RANX
 ("ranxperf" "ax-RevPerformance anxiety level" "spss-match" ("rAnxPerform" ))
 ("ranxallt" "ax-Not feel anxious almost all time" "spss-match" ("rAnxAllTime"))
 ("ranxpstd" "ax-RevPSTD symptoms chkl" "spss-match" ( "rAnxPSTD" ))
 ("ranxsoci" "ax-RevAnxiety with other people" "spss-match" ("rAnxSocial"))
 ("ranxocd" "ax-RevTimes lasting OCD problems" "spss-match" ("rAnxOCD"))
 ("ranxphob" "ax-RevNumber of phobias" "spss-match" ( "rAnxPhobia" ))
 ("ranxpani" "ax-RevNumber of panic attacks" "spss-match" ("rAnxPanic"))
 ("ranxmeds" "ax-RevTime meds for anxiety DEPRESSION?" "spss-match" ("rAnxMeds"))
 ("ranxther" "ax-Amount of therapy for anxiety" "spss-match" ("rAnxTherapy"))
  )
|#
#|  From : *all-shaq-pc-instances
(PC-INSTANCES
     "RealAnxiety.java"
     ("[]questionInstancesArray1)")
     ("\"rAnxPerform\"" "1" "rAnxPerformQ" "\"int\"" "FrAnswerPanel.LikeMe7Reverse" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight")
     ("\"rAnxAllTime\"" "2" "rAnxAllTimeQ" "\"int\"" "FrAnswerPanel.LikeMe7Reverse" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight")
     ("\"rAnxPSTD\"" "3" "rAnxPSTDQ" "\"int\"" "FrAnswerPanel.LikeMe7Reverse" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight")
     ("\"rAnxSocial\"" "4" "rAnxSocialQ" "\"int\"" "FrAnswerPanel.LikeMe7Reverse" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight")
     ("\"rAnxOCD\"" "5" "rAnxOCDQ" "\"int\"" "FrAnswerPanel.EpisodeFreq9Reverse" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight")
     ("\"rAnxPhobia\"" "6" "rAnxPhobiaQ" "\"int\"" "FrAnswerPanel.NumberTo12Reverse" "questionInstancesArray" "frameTitle" "frameDimWidth" "FrAnswerPanel.frHeight13;")
     ("\"rAnxPanic\"" "7" "rAnxPanicQ" "\"int\"" "FrAnswerPanel.NumberTo12Reverse" "questionInstancesArray" "frameTitle" "frameDimWidth" "FrAnswerPanel.frHeight13;")
     ("\"rAnxMeds\"" "8" "rAnxMedsQ" "\"int\"" "FrAnswerPanel.Duration11Reverse" "questionInstancesArray" "frameTitle" "frameDimWidth" "FrAnswerPanel.frHeight13;")
     ("\"rAnxTherapy\"" "9" "rAnxTherapyQ" "\"int\"" "FrAnswerPanel.EpisodeFreq9Reverse" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight")
     ("[]questionInstancesArray=newPCategory[totalQuestions];")
     ("[]helpArray=null;")
     ("[]helpResourcesArray;")
     )
||#
;;one of each
#| ("ranxperf" "ax-RevPerformance anxiety level" "spss-match" ("rAnxPerform" ))

     ("\"rAnxPerform\"" "1" "rAnxPerformQ" "\"int\"" "FrAnswerPanel.LikeMe7Reverse" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight")
|#

;;ddd
(defun add-pc-instance-info (sym-label-list all-pc-instances-list)
  "In U-SHAQ-syms-labels-functions.lisp, special function to add the original shaq pc-instance info to the sym-label-list. RETURNS  (values new-sym-label-list mismatch-error-list)."
  (let
      ((sl-list-length (length sym-label-list))
       (mismatch-error-list)
       (new-sym-label-list)
       )
    (loop 
     for sl-group-list in sym-label-list
     for n from 0 to sl-list-length 
     with sl-group-name
     with new-sl-group-list
     with cdr-sl-group-list
     do
     (setf  sl-group-name (car sl-group-list)
            new-sl-group-list (list sl-group-name)
            cdr-sl-group-list (cdr sl-group-list))
     (loop
      for sl-item in cdr-sl-group-list
      ;;sl-syms
      with sl-var
      with sl-var-descript
      with spss-match
      with new-sl-var-list-name
      with new-sl-var-list  
      with key-spec-lists1
      ;;pc-syms
      with pc-var-name-list
      with pc-var-name
      with pc-group-filename
      with pc-var-list   
      with pc-group-info-list ;;includes filename (second)
      with pc-extra-return-nth-list  ;;nil or not important
      do                 
      (cond
       ((and sl-item (listp sl-item))
        (setf  sl-var (car sl-item)
               sl-var-descript (second sl-item)
               spss-match (third sl-item))

        ;;find the pc-var-name to locate the pc-info on  major pc-category list
        (cond
         ((listp (setf pc-var-name-list (fourth sl-item)))
          (setf  pc-var-name (car pc-var-name-list))
          ;;in case there is a nested list inside above
          (if (listp pc-var-name) (setf pc-var-name (car pc-var-name))))
         (t (setf pc-var-name pc-var-name-list)))

         ;;IS THERE A PC-VAR-NAME?
         (cond
          (pc-var-name
           
           ;;start the new sl-list
           (setf new-sl-var-list (list sl-var sl-var-descript spss-match pc-var-name)
                 key-spec-lists1 (list '(T 0 1) (list pc-var-name 0)))
                  
           ;;(afout 'out (format nil "IN add-pc-instance-info 1: ~% sl-item= ~A~%sl-group-name= ~A~%  new-sl-group-list= ~A~%" sl-item sl-group-name new-sl-group-list ))
           ;; ("ranxpstd" "ax-RevPSTD symptoms chkl" "spss-match" ( "rAnxPSTD" ))

           ;;(afout 'out (format nil "2 PRE-GET sl-var= ~A~%sl-item= ~A~%key-spec-lists1= ~A~%"   sl-var sl-item key-spec-lists1))
           ;;yyy
           (multiple-value-setq (pc-var-list pc-var pc-extra-return-nth-list1 pc-extra-items)
               (get-key-value-in-nested-lists key-spec-lists1 all-pc-instances-list  :return-list-p t));;    :final-key-inside-keylist-p t
           ;;(afout 'out (format nil "3 POST GET pc-var-list= ~A~% pc-var= ~A~%pc-extra-return-nth-list1= ~A~% pc-extra-items= ~A~%"   pc-var-list pc-var pc-extra-return-nth-list1 pc-extra-items))

               
           ;;SSS FIX LATER TO GET FILENAME
           #|              (setf pc-group-filename (second pc-group-info-list)
                    pc-var-list (append pc-var-list (list pc-group-filename))))|#

           (cond
            ;;if match append the new-sl-group-list
            (pc-var
             ;;find the pc-group-filename from the return and add to pc-var-list
             (cond
              ((and pc-extra-items  (listp (car pc-extra-items)))
               (setf pc-group-filename (second (car pc-extra-items))
                     pc-var-list (append pc-var-list (list pc-group-filename))))
              (t nil))
             ;;set the new-sl-var-list by appending the pc-var-list to it
             (setf  new-sl-var-list (append new-sl-var-list (list pc-var-list))
                    new-sl-group-list (append new-sl-group-list (list new-sl-var-list)))
             ;;end found a pc-var match
             )
            (t 
             ;;if no match, go ahead and put old list onto new list with no-match message
             (setf  new-sl-var-list (append sl-item (list  'NO-PC-INST-MATCH))
                    mismatch-error-list (append mismatch-error-list (list new-sl-var-list))
                    new-sl-group-list (append new-sl-group-list (list new-sl-var-list)))))
           ;;end found a pc-var-name
           )
           (t  (setf  new-sl-var-list (append sl-item (list  'NO-PC-INST-MATCH))
                    mismatch-error-list (append mismatch-error-list (list new-sl-var-list))
                    new-sl-group-list (append new-sl-group-list (list new-sl-var-list)))))
           ;;end listp sl-item
           )
          (t  (setf  new-sl-group-list (append  new-sl-group-list  (list sl-item)))))
      ;;end inner loop
      )
     ;;  (t (setf mismatch-error-list (append mismatch-error-list (list sl-group-list)))))

      ;;(afout 'out (format nil "new-sl-group-list= ~A~%" new-sl-group-list))
     (setf  new-sym-label-list (append new-sym-label-list (list new-sl-group-list)))
     ;;(afout 'out (format nil "n= ~A new-sym-label-list= ~A~%" n new-sym-label-list))
     ;;end outer loop
     )
    
    ;;end add-pc-instance-info
    (values new-sym-label-list mismatch-error-list)
    ))
;;ACTUAL STEPS TO GENERATE *SHAQ-question-symbol-lists
;; STEP 1:  (progn (setf out nil) (multiple-value-setq (*testout-sls *testout-errors) (add-pc-instance-info *SHAQ-quest-variables-msl4 *all-shaq-pc-instances)))
;; STEP 2: PRINT  (progn (setf out nil) (setf *outputsp (print-nested-list *testout-sls :stream t :incl-quotes-p t)))
;;
;;  (get-key-value-in-nested-lists '((T 0) ("smtSDEVelopment" 0)) *all-shaq-pc-instances :return-list-p t) 
;; (get-key-value-in-nested-lists "iWorldviewFears.java" *all-shaq-pc-instances :return-list-p t) = nil
;;  (get-key-value-in-nested-lists slfCritThink

 





;;ADD-ORIG-QUEST-NAMES-TO-SYM-LABEL-LISTS
;;
;;ddd
(defun add-orig-quest-names-to-sym-label-lists (sym-label-list orig-name-list    &key min-seq-length)
  "In U-SHAQ-syms-labels-functions.lisp, special function to add the original shaq question names to the sym-label-list"
  (unless min-seq-length
    (setf min-seq-length 4))
  (let
      ((sl-list-length (length sym-label-list))
       (new-sl-group-list)
       (new-sym-label-list)
       )
    (loop 
     for sl-group-list in sym-label-list
     for n from 0 to sl-list-length
     with sl-group-name
     do
     (setf sl-group-name (car sl-group-list)
            new-sl-group-list (list sl-group-name))

     (loop
      for sl-var-list in sl-group-list
      with o-group-list
      with sl-var
      with new-sl-var-list
      with o-var-list     
      do
      (cond
       ((listp sl-var-list)
        (setf sl-var (car sl-var-list))
        (setf o-group-list 
              (find-key-value-in-nested-lists sl-group-name orig-name-list :return-list-p t))
        (cond
         (o-group-list
          (setf o-var-list (second (fuzzy-list-searcher sl-var  o-group-list   :min-seq-length min-seq-length)))
                ;;had to be exact match (find-list-item sl-var o-group-list ))  ;;nil if no match
          (setf new-sl-var-list (append sl-var-list (list o-var-list))
                new-sl-group-list (append  new-sl-group-list (list new-sl-var-list)))
          )
         (t 
          (setf new-sl-group-list 
                (append  sl-group-list (list "ORIG MATCH GROUP NOT FOUND")))
          (return)
         ))
        ;;end listp
        )
       (t  NIL)) ;; (setf new-sl-group-list (append (list new-sl-group-list (list sl-var-list))))))
            
      ;;end inner loop
      )
   ;;  ;;(afout 'out (format nil "new-sl-group-list= ~A~%" new-sl-group-list))
      (setf new-sym-label-list (append  new-sym-label-list (list (list new-sl-group-list))))
     ;;end outer loop
     )
    ;;end add-orig-quest-names-to-sym-label-lists
    new-sym-label-list
    ))
;;test   
;;step1  (progn (setf out nil) (setf *outputs1 (add-orig-quest-names-to-sym-label-lists *shaq-data-vars   *all-shaq-orig-question-names))) 
;;step2 (progn (setf out nil) (setf *outputsp (print-double-nested-list *outputs1 :stream t :incl-quotes-p t)))
;;step3 use min-seq-length = 3 to get extra matches
;;(progn (setf out nil) (setf *outputs1 (add-orig-quest-names-to-sym-label-lists *shaq-data-vars   *all-shaq-orig-question-names :min-seq-length 3)))
        
;;  (find-key-value-in-nested-lists 'lang  *all-shaq-orig-question-names :return-list-p t)       
;; (fuzzy-list-searcher "lvietnam"  '(LANG "bio7lang" "English" "Spanish" "Vietnamese" "Cambodian" "Chinese" "Korean" "Portuguese" "German" "French" "Other Asian" "Other European" "Other")  :min-seq-length 4)

(defun check-spss-syms (nested-shaq-sym-label-list nested-spss-java-list )
  "In SHAQ-syms-labels-list.lisp, special function to compare newer spss var symbols with older versions embedded in java files"
  ;;sss DELETE LATER
  (setf out nil)
  (let
      ((outer-sublist2)
       (sym1)
       (sym2)
       (result)
       (outer-sublist-n -1)
       (item-n -1)
       (lists-match-p)
       (new-sym-label-list)
       (nonmatch-sublists)
       (category1)
       (category2)
       (nonmatch-categories)
       )
    (loop
     for outer-sublist1 in  nested-shaq-sym-label-list
     with new-outer-sublist1
     do
      (incf outer-sublist-n)
      (setf category1 (car outer-sublist1))            
      (setf outer-sublist2
            (find-key-value-in-nested-lists  category1 nested-spss-java-list :return-list-p t))
      ;;(afout 'out (format nil "category1= ~A~%outer-sublist2= ~A~%" category1 outer-sublist2))
      ;;if so match the outer-sublists
      (cond
       ((and outer-sublist2 (listp outer-sublist2))
        (setf new-outer-sublist1 (list (car outer-sublist1)))

        ;;inner loop for outer sublist 
        (loop
         for item1 in outer-sublist1
         with new-sublist1
         do
          (incf item-n)
          (cond
           ;;if item1 is a sublist, process both items
           ((listp item1)
            (setf sym1 (car item1))
            (setf  sym2  (find-list-item sym1 outer-sublist2 T))
                   ;;was (nth item-n outer-sublist2))       
            (cond
             ((or (string-equal sym1 sym2)(equal sym1 sym2))
              (setf new-sublist1 (append item1 (list "spss-match"))
                    new-outer-sublist1 (append new-outer-sublist1 (list new-sublist1))))
             (t 
              (setf new-sublist1 (append item1 (list sym2))
                    new-outer-sublist1 (append new-outer-sublist1 (list new-sublist1)))
                 ))
            ;;end listp
              )
           (t nil))
          ;;end inner loop 
          )
           ;;append the whole sym-label-list
        (setf new-sym-label-list (append new-sym-label-list (list new-outer-sublist1)))
           ;;end lists-match-p
           )
       (t (setf nonmatch-sublists (append nonmatch-sublists (list item1 outer-sublist-n))
                nonmatch-categories (append nonmatch-categories (list (list sym1 sym2))))
                ))
      ;;end outer loop
      )
    ;;end check-spss-syms
    (values new-sym-label-list nonmatch-sublists nonmatch-categories)
    ))
;;SSS START MAKING ACTUAL NEW LISTS--PP OUTPUT
;;test
;;   (progn (setf out nil) (multiple-value-setq (*testout-sls1 *testout-errors1) (add-pc-instance-info *test-sl-list *test-pc-insts-list)))
;;  (multiple-value-setq (*new-sym-label-list *nonmatch-sublists *nonmatch-categories) (check-spss-syms *shaq-sym-label-list-by-cats *spss-var-strings-by-cats))
;;RESULTS 
;; *nonmatch-sublists = (NIL 31)
;; *nonmatch-categories = (("romcharm" "romcharm"))
;;  (print-nested-list *new-sym-label-list :stream t :incl-quotes-p t)

;;WORKS ------------------------------------------------------
;;(multiple-value-setq (*new-sym-label-list *nonmatch-sublists *nonmatch-categories) (check-spss-syms *shaq-sym-label-list-by-cats1 *spss-var-strings-by-cats1))
;;for testing only
;;xxx
#|
(defparameter *shaq-sym-label-list-by-cats1
`( ;;ID
  (id
   ("CaseNum" "CaseNumOrigFile")
   ("CaseType" "")
   ("SourceFile" "Source files PARTnum")
   ("FileDate" "")
   ("Instr" "Instructor")
   ("Resr" "Researcher")
   ("Name" "")
   ("IDnum" "")
   ("Sex" "Sex 1=M 2=F")
   ("Age" "")
   ("Email" "")
   ("ZipCode" "")
   ("Nation" "")
   ("HrsWork" "")
   ("UserRate" "")
   )
 (type
   ;;TYPE
   ("tknowmor" "t-Want to know more of self")
   ("texperie" "t-Experienced self-help user")
   ("twanttho" "t-Want thorough assessment")
   ("twantspe" "t-Want specific help")
   ("tworknga" "t-worknga")
   ("tu100stu" "t-CSULB U100 student")
   ("tcsulbst" "t-CSULB other student")
   ("totherst" "t-Other student")
   ("tcolstu" "t-Other college student")
   ("tinstruc" "t-Instructor")
   ("tcolfaca" "t-College faculty-admin")
   ("twanthel" "t-Want help with problem")
   ("wantspq" "g-Specific questionnaire")
   )
   ;;GOALS
   (goals
   ("gsuchap" "g-Success-happiness")
   ("gacadsuc" "g-Academic success")
   ("gemocop" "g-Emotional coping")
   ("gslfest" "g-Self-esteem")
   ("gprocrst" "g-Procrastination")
   ("gtimeman" "g-Time Management")
   ("grelat" "g-Relationships")
   ("gmeetpeo" "g-Meeting people")
   ("glonelyf" "g-Loneliness")
   ("gexvalus" "g-Explore Values")
   ("gdepres" "g-Depression")
   ("ganxfear" "g-Anxiety-fears")
   ("gaggrang" "g-Aggression-anger")
   ("gcomplta" "g-Complete assessment")
   ("gcarplan" "g-Career planning")
   ("gnottake" "g-Not taking for self")
   ("gcaronly" "g-Career help only")
   ("spersbio" "s-Biographical information")
   ("svemaapt" "s-Verbal, math aptitude scores")
   )
   (scales
   ;;SHAQ2000 SCALES
   ;;ACADEMIC-RELATED
   ("saachapt" "s-Acad achievements-aptsORIG")
   ("samotsat" "s-Acad motivation-satis")
   ("samotiv" "s-Acad motivation-intention")
   ("samotivORIG" "s-Acad motivationORIG")
   ("slrnskls" "s-Learning skills & habits")
   ("slrnarea" "s-Strong learning areas")
   ("slrndisb" "s-Learn disab-low confidence")
   ;;SM AND COPING
   ("sselfman" "s-Self-management skills")
   ("semotcop" "s-Emotional coping skills")
   ;;THEMES-VALUES
   ("slithach" "s-Life theme--achievement")
   ("slithsoc" "s-Life theme--social")
   ("slithneg" "s-Life theme--obligation, negative")
   ("slithint" "s-Life theme--internal values")
   ("slithachORIG" "s-Life theme--achievementORIG")
   ("slithsocORIG" "s-Life theme--socialORIG")
   ("slithnegORIG" "s-Life theme--obligation, negativeORIG")
   ("slithintORIG" "s-Life theme--internal valuesORIG")
   ;;SELF IE BELIEF ETC SCALES
   ("stbslfwo" "s-Self-worth beliefs")
   ("siecontr" "s-Int-Ext control beliefs")
   ("sworldvi" "s-Positive world view")
   ("sgrfears" "s-Low greatest fears")
   ("sslfconf" "s-Self-confidence areas")
   ;;INTERPERSONAL SRQ
   ("sassert" "s-Assertive conflict resolution habits")
   ("sintimat" "s-Intimacy habits")
   ("sindepre" "s-Independent intimacy habits")
   ("sromantc" "s-Romantic habits")
   ("slibrole" "s-Liberated role beliefs")
   ;;OUTCOMES
   ("sehappy" "s-Overall happiness")
   ("srelhlth" "s-Health outcomes")
   ("srpeople" "s-Relationship outcomes")
   ("srdepres" "s-LoDepression outcomes")
   ("sranxiet" "s-LoAnxiety symp+treat outcomes")
   ("srangagg" "s-LoAnger-aggression outcomes")
   ("sb2ethic" "s-Ethical beliefs")
   ;;CAREER INTERESTS
   ("sincar" "s-Career-major interest areas")
   ("sinbus" "s-Business major interests")
   ("sinengr" "s-Engineering major interests")
   ("sinfinea" "s-Fine art major interests")
   ("sinhelp" "s-Helping profession major interests")
   ("sinlang" "s-Language major interests")
   ("sinmed" "s-Medical major interests")
   ("sinmiltc" "s-Military major interests")
   ("sinnatsc" "s-Natural science major interests")
   ("sinsocsc" "s-Social science major interests")
   ("sinwoeth" "s-Womens or ethnics studies mj int")
   ("sinwrite" "s-Writing major interests")
   )
   (bio
   ;;OTHER OUTCOMES
   ;;EDUCATION
   ("bio3educ" "b-Highest education completed")
   ("biohsgpa" "b-High school GPA")
   ("biocolle" "b-College GPA")
   )
   (job
   ;;CURRENT OCCUPATION
   ("bio4job" "b-Primary occupation")
   ("student" "1-Student")
   ("manager" "2-Manager")
   ("propeop" "3-People professional")
   ("protech" "4-Technical professional")
   ("consulta" "5-Consultant")
   ("educator" "6-Educator")
   ("sales" "7-Sales")
   ("technici" "8-Other technical")
   ("clerical" "9-Clerical")
   ("service" "10-Service")
   ("ownbus10" "11-Own business")
   ("othrsfem" "12-othrsfem")
   ("other" "13-Other")
   ;;INCOME
   ("bio5inco" "b-Highest personal income")
   )
   (lang
   ;;LANGUAGES
   ("bio7lang" "b-Fluent languages")
   ("lenglish" "")
   ("lspanish" "")
   ("lvietnam" "")
   ("lcambodn" "")
   ("lchinese" "")
   ("lkorean" "")
   ("lportugu" "")
   ("lgerman" "")
   ("lfrench" "")
   ("lothrasn" "")
   ("lothreur" "")
   ("lother" "")
   )
   (ethnic
   ;;ETHNIC
   ("bio1ethn" "")
   ("enortham" "")
   ("eafrica" "")
   ("enoreur" "")
   ("esoueur" "")
   ("ecambodn" "")
   ("echina" "")
   ("ekorea" "")
   ("ejapan" "")
   ("evietnam" "")
   ("eothrasn" "")
   ("emexico" "")
   ("ecentram" "")
   ("esoutham" "")
   ("epacific" "")
   ("eother" "")
   )
   (religion
   ;;RELIGION
   ("biorelaf" "")
   ("catholic" "Catholic")
   ("jewish" "Jewish")
   ("islam" "Islam")
   ("latterd" "Latter Day Saints")
   ("buddhist" "Buddhist")
   ("baptist" "Baptist")
   ("methodst" "United Methodist")
   ("episcop" "Episopalian")
   ("lutheran" "Lutheran")
   ("presbyte" "Presbyterian")
   ("proliber" "Other liberal")
   ("profunda" "Other fundamentalist")
   ("noaffil" "No affiliation")
   ("agnostic" "Agnostic")
   ("othrnoan" "Other")
   )))
;;xxx
;;for testing only
(defparameter *spss-var-strings-by-cats1
  '(
    (id
     "CaseNum"
     "CaseType"
     "Group"
     "var2"
     "FileDate"
     "Instr"
     "Resr"
     "Name"
     "SSN"
     "Sex"
     "Age"
     "Email"
     "ZipCode"
     "Nation"
     "HrsWork"
     "UserRate")
    (type
     "tknowmor"
     "texperie"
     "twanttho"
     "twantspe"
     "tworknga"
     "tu100stu"
     "tcsulbst"
     "totherst"
     "tcolstu"
     "tinstruc"
     "tcolfaca"
     "twanthel"
     "wantspq")
    (goals
     "gsuchap"
     "gacadsuc"
     "gemocop"
     "gslfest"
     "gprocrst"
     "gtimeman"
     "grelat"
     "gmeetpeo"
     "glonelyf"
     "gexvalus"
     "gdepres"
     "ganxfear"
     "gaggrang"
     "gcomplta"
     "gcarplan"
     "gnottake"
     "gcaronly")
    (scales
     "spersbio"
     "saachapt"
     "samotsat"
     "samotiv"
     "slrnskls"
     "slrnarea"
     "slrndisb"
     "sselfman"
     "semotcop"
     "slithach"
     "slithsoc"
     "slithneg"
     "slithint"
     "stbslfwo"
     "siecontr"
     "sworldvi"
     "sgrfears"
     "sslfconf"
     "sassert"
     "sintimat"
     "sindepre"
     "sromantc"
     "slibrole"
     "sehappy"
     "srelhlth"
     "srpeople"
     "srdepres"
     "sranxiet"
     "srangagg"
     "sremotpr"
     "sb2ethic"
     "sincar"
     "sinbus"
     "sinengr"
     "sinfinea"
     "sinhelp"
     "sinlang"
     "sinmed"
     "sinmiltc"
     "sinnatsc"
     "sinsocsc"
     "sinwoeth"
     "sinwrite")
    (bio
     "bio3educ"
     "biohsgpa"
     "biocolle")
    (job
     "bio4job"
     "student"
     "manager"
     "propeop"
     "protech"
     "Consulta"
     "educator"
     "sales"
     "technici"
     "clerical"
     "service"
     "ownbus10"
     "othrsfem"
     "other"
     ;;other
      "bio5inco")))
|#



;;  (read-delimited-list #\]) 1 2 3 4 5 6 ]  ;;works = (1 2 3 4 5 6)
;;(my-read-symbol "1 2 3 4 5]" nil)
;;
(defun my-read-symbol (string delimiter)
  (with-input-from-string (stream string)
  (let*
      ((result   (read-delimited-list #\] stream ))
       )
    result
    )))




;;FORMAT-SHAQ-SYM-LABEL-LIST
;;
;;SSS START HERE MAKE SECOND ELEMENT OUTPUT A TRUE STRING??
;;
(defun format-shaq-sym-label-list (sym-label-list &key newline-p) ;; double-quotes)
  "In SHAQ-sym-label-list, format the raw list into a better lisp formated list. double-quotes can be nil all or label (default). NOTE:CAN'T GET IT TO MAKE A LIST WITH DOUBLE-QUOTES AROUND LABELS. Must car cdr the result lists for sym label."
  (let
      ((sym)
       (label-list)
       (label-string)
       (new-element)
       (new-sym-label-list)
       )
#|    (unless double-quotes
      (setf double-quotes 'label))|#

    (dolist (element sym-label-list)
      (setf sym (car element)
            label-list (cdr element))
      (cond
       ((> (list-length label-list) 0)
        (dolist (item label-list)
          (setf label-string (format nil "~S ~S" label-string item))
        ;;  (afout 'out (format nil "label-string= ~A" label-string))
          )
        ;;double-quotes options
#|        (cond
         ((null double-quotes)
          (setf  new-element (list sym label-string)))
         ((equal double-quotes 'label)
          (setf  new-element (list sym (format nil "~S" label-string))))
         ((equal double-quotes 'all)
          (setf  new-element (list #\" sym #\" #\" label-string #\")))
         )|#
        )       
       (t (setf new-element (list sym ))))
   ;;   (afout 'out (format nil "new-element= ~A~%" new-element))
      ;;append with new element-- add newline?
      (cond
       (newline-p
        (setf  new-sym-label-list (append new-sym-label-list (list new-element)(list #\newline))))
       (t
        (setf  new-sym-label-list (append new-sym-label-list (list new-element)))))
        ;;end dolist
      )
    new-sym-label-list
    ))

;;TEST
;; WORKS for printing lists of all symbols, must CAR, CDR THE LISTS TO GET SYMS AND LABELS OUT
;; (format nil "~A" "a b c d") = "a b c d"
;; (format nil  "~A~A"  "a"  "b") = "ab"
;;  (append '(x y) (list "a b c d")) = (X Y "a b c d")
;; (format nil "~A~%" (append '(x y) (list "a b c d"))) = "(X Y a b c d)"
;; NOTE USE OF 1-~S PLUS 2 ~A TOGETHER TO GET WHAT I WANT
;;1.  (format nil "~S~%" (append '(x y) (list "a b c d"))) = "(X Y \"a b c d\")"
;;2.  (format nil "~A"  "(X Y \"a b c d\")")  =  "(X Y \"a b c d\")"
;; (format nil "~S~%" (append '(x y) (list (format nil "~S ~S ~S ~S" "a" "b" #\c  #\d ))))
;;   returns  
;;  (printss)
(defun printss ()
  (setf out nil)
  ;; (afout 'out (format nil "~A"  (format-shaq-sym-label-list *SHAQ-sym-label-list-one-quote2 T)))"
 (format nil "~A"  (format-shaq-sym-label-list *SHAQ-sym-label-list-one-quote3 :newline-p T))
   ;; (format-shaq-sym-label-list *SHAQ-sym-label-list-one-quote1 :newline-p T)
  )
           






;;USE TO PRINT THE SHAQ-SYM-LIST AGAIN?? -- BUT MUST EDIT QUOTES AND SLASHES    
;;  (print-list-with-newlines *shaq-sym-label-list2 nil)




;;FIND-SHAQ-SYM-FROM-JAVA-SYM
;;
;;ddd
(defun find-shaq-sym-from-java-sym (java-sym sym-label-lists)
  "U-SHAQ-syms-labels-functions.lisp. Searches and returns sym-label list that matches java-sym returns (values sym-label-list NIL).  If none found, returns (values NIL java-sym)"
  (let
      ((sym)
       (return-sym-list-value)
       (return-java-unmatched-item)
       (match-p)
       (item-n 0)
       )
    (dolist (sl-list sym-label-lists)
      (incf item-n)
      (setf sym (car sl-list))
      (cond
       ((equal sym java-sym)
        (setf  return-sym-list-value sl-list)
        (return))
       (t nil))
      ;;end dolist
      )
    (unless return-sym-list-value
      (setf return-java-unmatched-item java-sym))
    (values return-sym-list-value  return-java-unmatched-item item-n)
    ))
;;test
;;for  srangagg and caripols
;; (find-shaq-sym-from-java-sym  "HQss"  *shaq-sym-label-list-all) 
;;  works, "srangagg" returns ("srangagg" "s-LoAnger-aggression outcomes")  NIL  80
;;  works, "HQss" returns ("HQss" "") NIL 877

;;NOTE: THERE ARE 877 ITEMS IN THIS LIST!!



  
  



;; hhh ----------------------------------------- HELP ---------------------------------------------------


;; (read-line "This is a test")

#| (with-input-from-string (is "0123")
    (do ((c (read-char is) (read-char is nil 'the-end)))
        ((not (characterp c)))
     (format t "~S " c)))|#

;; (write-to-string 't-Want) => "T-WANT"
;; (princ-to-string 't-Want) = "T-WANT"
;; (prin1-to-string  't-Want) = "T-WANT"
;;   (read-char 't)
;;   (string-stream "this")

#|(setq a "line 1
 line2") 
 (read-line (setq input-stream (make-string-input-stream a)))|#

#| (with-input-from-string (is "0123")
    (do ((c (read-char is) (read-char is nil 'the-end)))
        ((not (characterp c)))
     (format t "~S " c)))|#
#|>>  #\0 #\1 #\2 #\3
=>  NIL|#

#|(defun my-divide-string-pair (string-pair)
  (my-divide-string 10 string-pair )
    (print `(,**first-pt ,**last-pt)))|#
;;doesn't work
;;(my-divide-string-pair "Instr	Instructor") = ("" "Instr	Instructor") or  ("Instr	Instructor" "") 



;; (write-char #\a)   ;;>>  a =>  #\a
#| (with-output-to-string (s) 
   (write-char #\a s)
   (write-char #\Space s)
   (write-char #\b s))
=>  "a b"|#

#| (setq fstr (make-array '(0) :element-type 'base-char
                             :fill-pointer 0 :adjustable t)) ;; =>  "" 
 (with-output-to-string (s 'fstr)
    (format s "here's some output")
    (input-stream-p s))  ;;=>  false|#
;; fstr =>  "here's some output"

#| (with-input-from-string (s "Animal Crackers" :index j :start 6)
   (read s))  = CRACKERS|#
#| (with-input-from-string (s "Animal Crackers")
   (read s)) = ANIMAL|#


;; ---------------------------------- SOME DATA TO BE USED AND CHECKED ---
;;
;; COMPARE LISTS THAT WERE FORMED IN DIFFERENT WAYS
;;  SEE RESULTS IN FILE==>   SHAQ-sym-comparisons.lisp
;;
;;  (COMPARE-NESTED-LIST-ITEMS *shaq-sym-label-list-all 0 *current-Spss-Var-Names NIL)

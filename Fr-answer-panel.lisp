;; ********************* Fr-answer-panel.lisp *********************
;;
;; THE CONVERTED JAVA VERSION
;;
;; ERROR: NUM-ANSWERS= 15 NOT EQUAL NUM-BUTTONS= 14

;;xxx -------------------------------- FUNCTIONS USED BELOW -------------------------
;;SSSS PROBLEM WITH APPLICATION BUILDER
;; SO REDEFINING THIS HERE
(defun make-descending-list (highest-num list-length)
  "In U-lists.lisp"
     (loop
      for n downfrom highest-num  downto (+ (- highest-num list-length) 1)
      collect n)
    )

;;MAKE-ASCENDING-ARRAY
;;
;;ddd
(defun make-ascending-array (param-list)  ;; a list of  '(lowest-num list-length)
  "Actually makes an ascending list--name is for shaq compatibility. param-list is a list of '(lowest-num list-length) "
  (make-ascending-list (first param-list) (second param-list)))

;;MAKE-DESCENDING-ARRAY
;;
;;ddd
(defun make-descending-array (param-list)       ;;a list of   '(highest-num list-length)
  "Actually makes an ascending list--name is for shaq compatibility"
  (make-descending-list (first param-list) (second param-list)))
#|
package CaresProject2;
/**
 * Copyright:    Copyright (c) 1999
 * Company:      CSULB
 * @author Tom Stevens PhD
  * Class for making standard question formats--extends MakeFrQuJRadio--
|#
 
#|
public class FrAnswerPanel
         extends MakeFrQuJRadioButtons

  public  (  answerInstructions1,
   int numResponsesPerQuestion1,  [] answerTextArray1,
    intAnswerValueArray1,    choiceType1,   valueType1)
   ;;following two are omitted in this shorter constructor
   ;;   AnswerValueArray1, double[] doubleAnswerValueArray1)
  {
   answerInstructions    answerInstructions1;"
   numResponsesPerQuestion    numResponsesPerQuestion1;
   answerTextArray    answerTextArray1;
   choiceType    choiceType1;
   valueType    valueType1;
   ;;default already    booleanAnswerValueArray    {true, false)
   intAnswerValueArray    intAnswerValueArray1;
   ;;omitted: AnswerValueArray     AnswerValueArray1;
   ;;omitted:doubleAnswerValueArray    doubleAnswerValueArray1;
   ;;default already isSelectedNum    0;
  }

  public  (  answerInstructions1,
   int numResponsesPerQuestion1,   answerTextArray1,
    intAnswerValueArray1,    choiceType1,   valueType1,
   boolean isReversedItem1, boolean isScoredReverse1)
   ;;following two are omitted in this shorter constructor
   ;;   AnswerValueArray1, double[] doubleAnswerValueArray1)

  ;;JAVA CLASS STATIC VARIABLES SET USING DEFLISTS
   answerInstructions    answerInstructions1;
   numResponsesPerQuestion    numResponsesPerQuestion1;
   answerTextArray    answerTextArray1;
   choiceType    choiceType1;
   valueType    valueType1;
   ;;default already    booleanAnswerValueArray    {true, false)
   intAnswerValueArray    intAnswerValueArray1;
   ;;omitted: AnswerValueArray     AnswerValueArray1;
   ;;omitted:doubleAnswerValueArray    doubleAnswerValueArray1;
   ;;default already isSelectedNum    0;
   isReversedItem    isReversedItem1;
   isScoredReverse    isScoredReverse1;

   ;;VARIABLES VARYING FROM CLASS TO CLASS
   frameTitle    frameTitle1;
   answerInstructions    answerInstructions1;
   numResponsesPerQuestion    numResponsesPerQuestion1;
   answerTextArray    answerTextArray1;
   choiceType    choiceType1;
   valueType    valueType1;
    AnswerValueArray     AnswerValueArray1;
   ;;default already    booleanAnswerValueArray    {true, false)
   intAnswerValueArray    intAnswerValueArray1;
    AnswerValueArray     AnswerValueArray1;
   doubleAnswerValueArray    doubleAnswerValueArray1;
   ;;default already isSelectedNum    0; }
|#

;;INITIALIZE-FRAME-ANSWER-PANEL-ARRAYS
;;
;;ddd
(defun initialize-frame-answer-panel-arrays ()
  "In Fr-answer-panel.lisp, Initializes all of the main variables related to text and answer button panels for SHAQ. Currently just loads the file, so I can see the defs in the editor defs list."
  (load "C:\\3-TS\\LISP PROJECTS TS\\SHAQ\\Fr-answer-panel.lisp")
  (format t "~%~%==>  FRAME-ANSWER-PANEL-ARRAYS   INTIALIZED~%~%")
  )  
  

;; ANSWER INSTRUCTIONS TEXT and
;;   RESPONSE ALTERNATIVES TEXT
;; xxx
;;7
  (defparameter  LikeMe7Instructions   
    "Accuracy/degree like you:")
  (defparameter   LikeMe7AnswerArray   
    '("EXTREMELY accurate / like me"  "MODERATELY accurate / like me" 
              "MILDLY accurate / like me"  "UNCERTAIN, neutral, or midpoint" 
             "MILDLY inaccurate / unlike me"  "MODERATELY inaccurate / unlike me" 
              "EXTREMELY inaccurate / unlike me"))

;;7
  (defparameter  Agree7Instructions   
    "Strength you agree or disagree")
  (defparameter   Agree7AnswerArray   
    '("EXTREMELY agree"  "MODERATELY agree" 
                         "MILDLY agree"  "UNCERTAIN, neutral, or midpoint" 
                         "MILDLY disagree"  "MODERATELY disagree" 
                         "EXTREMELY disagree"))
;;8
  (defparameter   Agree8NotApplyAnswerArray   
    '("EXTREMELY agree"  "MODERATELY agree" 
                         "MILDLY agree"  "UNCERTAIN, neutral, or midpoint" 
                         "MILDLY disagree"  "MODERATELY disagree" 
                         "EXTREMELY disagree" "Question does not apply to me"))

;;7
  (defparameter  LikeUs7Instructions
    "Accuracy/degree like your relationship:")
  (defparameter  LikeUs7AnswerArray   
    '("EXTREMELY accurate / like us"  "MODERATELY accurate / like us" 
                                      "MILDLY accurate / like us"  "UNCERTAIN, neutral, or midpoint" 
                                      "MILDLY inaccurate / unlike us"  "MODERATELY inaccurate / unlike us" 
                                      "EXTREMELY inaccurate / unlike us"))
;;6
  (defparameter  PerCent6CopeInstructions   
    "When upset, percent of the time you ___________")
  (defparameter  PerCent6CopeAnswerArray   
    '("81 to 100 percent" "61 to 80 percent"  "41 to 60 percent" "21 to 40 percent" 
                          "1 to 20 percent" "Never/Almost never"))
;;10
  (defparameter  Percent10Instructions   
    "Percent of the time you ___________")
  (defparameter  Percent10AnswerArray   
    '("Greater than 90 percent" "80 to 89 percent"  "70 to 79 percent" 
                                "60 tp 69 percent"  "50 to 59 percent" "40 to 49 percent" 
                                "30 to 39 percent"  "20 to 29 percent" 
                                "10 tp 19 percent"  "Less than 10 percent"))
;;10
  (defparameter  Percentile10Instructions   
    "Compare yourself to all others in your age group:")
;;10
  (defparameter  PercentileCollege10Instructions   
    "Compare yourself to all other college students in your class level.")
;;10
  (defparameter  Percentile10AnswerArray   
    '("Upper 10%"  "Upper 11-20%" "Upper 21-30%" "Upper 31-40%" "Upper 41-50%" 
                   "Lower 40-49%"  "Lower 30-39%" "Lower 20-29%" "Lower 10-19%" "Lower 0-9%"))
;;9
  (defparameter  Priority9Instructions   
    "Importance to you:")
  (defparameter  Priority9AnswerArray   
    '("Extremely important to me"  "Very important to me"  "Moderately important to me" 
                                   "Mildly important to me" "Not sure if important or not to me"  "Mildly negative to me" 
                                   "Moderately negative to me"  "Very negative to me"  "Extremely negative to me" ))
;;10
  (defparameter  Priority10Instructions   
    "Importance to you:")
  ;;10 responses for following:
  (defparameter  Priority10AnswerArray    '(
                                            "The most important thing in my life" 
                                            "One of the most important things in my life" 
                                            "Extremely important"  "Very important" 
                                            "Moderately important"  "Mildly important" 
                                            "Not important, unsure, or neutral" 
                                            "Negative to me"  "Very negative to me"  "Extremely negative to me"))
;;7
  (defparameter  Confidence7Instructions    "Degree of confidence in this area:")
  (defparameter  Confidence7AnswerArray   
    '("Extremely confident" "Moderately confident" "Mildly confident" "Uncertain" 
                            "Mildly pessimistic" "Moderately pessimistic" "Extremely pessimistic"))
  ;;use this?? but requires 9 or 10 alternatives (defparameter  ConfidencePerCent
;;7
  (defparameter  Happy7Instructions    "Degree of happiness:")
  (defparameter  Happy7AnswerArray   
    '("Extremely happy" "Moderately happy" "Mildly happy" "Unsure or neutral" 
                        "Mildly unhappy" "Moderately unhappy" "Extremely unhappy"))


;; NUMBER ANSWER INSTRUCTIONS TEXT  and
;;   NUMBER ANSWER NUMBER TEXT
;;xxx
;;13
  (defparameter  NumberBy2Instructions    "Choose the closest number:")
  ;;13
  (defparameter  NumberTo12AnswerArray   
    '("12 or more" "11" "10" "9" "8" "7" "6" "5" "4" "3" "2" "1" "0"))
  ;;12
  (defparameter  NumberBy2AnswerArray   
    '("21 or more" "19-20" "17-18" "15-16" "13-14" "11-12" "9-10" "7-8" "5-6" "3-4" "1-2" "0"))

;; FREQUENCY INSTRUCTIONS TEXT and
;; FREQ ANSWERS
;;xxx
  (defparameter  Freq12Instructions    "Choose how often:")
  ;;12
  (defparameter  Freq12AnswerArray   
    '("More than once per day" "Once per day" "6 per week" "5 per week" 
                               "4 per week"  "3 per week" "2 per week" "Once per week" 
                               "3 per month" "2 per month" "Once per month" "Less than once per month"))
  ;;8
  (defparameter  Freq8AnswerArray   
    '("More than 10 per day" "6-10 per day" "1-5 per day" 
                             "1-6 per week" "1 to 5 per month" "Less than 1 per month" 
                             "Less than 1 per year" "Never/None"))
  (defparameter  Freq7Instructions    "Choose how often:")
 ;;7
  (defparameter  Freq7AnswerArray   
    '("More than 60 days per year" "About 31-60 days per year" 
                                   "About 15-30 days per year" "About 7-14 days per year" 
                                   "About 4-6 days per year" 
                                   "About 1-3 per year"  "Less than once per year"))


;; BELIEF ANSWER INSTRUCTIONS and
;; BELIEF ANSWERS
;; xxx

  (defparameter  Belief10Instructions   
    "Strength of your belief:")
  ;;10
  (defparameter  Belief10AnswerArray    '(
                                          "The most important belief in my life" 
                                          "One of the most important beliefs in my life" 
                                          "Extremely important belief"  "Very important belief" 
                                          "Moderately important belief"  "Mildly important belief" 
                                          "Not important, unsure, or neutral about this" 
                                          "Disagree, negative to me"  "Strongly disagree, very negative to me" 
                                          "Extremely disagree, extremely negative to me"))


;; FEARS INSTR AND ANSWERS
;;xxx
  ;;7
  (defparameter  Fear7Instructions   
    "Strength of your fear:")
  (defparameter  Fear7AnswerArray    '(
                                       "The most important fear in my life" 
                                       "One of the most important fears in my life" 
                                       "Extremely important fear"  "Very important fear" 
                                       "Moderately important fear"  "Mildly important fear" 
                                       "No fear at all"))


;;  GPA INSTRS AND ANSWERS
;; xxx
(defparameter GPAAnsArray
   '(GPALabel  14  GPA14TextArray 
                    Values14to1Array  "single" "int"))
  ;;7
(defparameter  GPA7TextArray    '("3.5-4.0 (A)" 
                                    "3.0-3.49 (B/B+)"  "2.5-2.99 (B-/B)"  "2.0-2.49 (C/C+)" 
                                    "1.5-1.99 (C-/C)"  "1.0-1.49 (D/D+)"  "0-.99 (D-/F)"))

;;SSS CHECK VALUES OF GPAS--THIS ONE MAY LEAVE NIL AS LAST
(defparameter  GPA8AnsArray
  '(GPALabel 8 GPA8TextArray Values8to1Array)) 
#|;;MODEL (defparameter  LikeMe7   
    '(LikeMe7Instructions  7 
                           LikeMe7AnswerArray  Values7to1Array  "single"  "int"))|#
  ;;8
(defparameter  GPA8TextArray    '("3.5-4.0 (A)" 
                                    "3.0-3.49 (B/B+)"  "2.5-2.99 (B-/B)"  "2.0-2.49 (C/C+)" 
                                    "1.5-1.99 (C-/C)"  "1.0-1.49 (D/D+)"  "0-.99 (D-/F)" "No GPA yet"))
  ;;13
(defparameter  GPA13TextArray    '("3.75-4.00" "3.5-3.74" 
                         "3.25-3.49" "3.00-3.24" "2.75-2.99" "2.5-2.74" "2.25-2.49" "2.00-2.24" 
                         "1.75-1.99" "1.5-1.74" "1.25-1.49" "1.00-1.24" "Below 1.00"))
  ;;14
(defparameter  GPA14TextArray    '("3.75-4.00" "3.50-3.74" 
                        "3.25-3.49" "3.00-3.24" "2.75-2.99" "2.50-2.74" "2.25-2.49" "2.00-2.24" 
                        "1.75-1.99" "1.50-1.74" "1.25-1.49" "1.00-1.24" "Below 1.00" "No GPA yet"))


  ;;EPISODE FREQ and DURATION INSTRS AND ANSWERS
  ;;xxx

  ;;9
(defparameter  EpisodeFreq9Instructions    "Frequency this has happend to you:")
(defparameter  EpisodeFreq9AnswerArray   
    '("Almost all the time" "More than 30 times in my life" 
                            "21-30 times in my life" "11-20 times in my life" "6-10 times in my life" 
                            "4-5 times in my life" "2-3 times in my life" "Once in my life" "Never/None"))
  ;;11
(defparameter  Duration11Instructions    "Length of time with condition:")
(defparameter  Duration11AnswerArray   
    '("Most or all of my life" "More than 3 years" "2-3 years" 
                               "1-2 years" "6-12 months" "3-6 months" "1-3 months" "1 to 4 weeks" 
                               "Less than 1 week" 
                               "In the past, but not now" "Never/Not at all"))

  ;; (ACADEMIC) UNITS INSTRS AND ANSWERS
  ;;xxx
  ;;12
(defparameter  unitsInstructions    "Number of units")
(defparameter  unitsAnswerArray   
    '("Over 20" "18-19" "17-18" "15-16" "13-14" 
                "11-12" "9-10" "7-8" "5-6" "3-4" 
                "1-2" "0"))

;; ------------------------- ADDED TO FR-ANSWER-PANES 2014 ------------------

   ;;FOR OTHER SINGLE R, SINGLE-ITEM QUESTIONS THAT

 ;;8
 (defparameter stuParentsEducAnswerArray '(
    "Doctoral degree"    "Masters degree"
    "Bachelors (4-year)college degree"     "High school degree"
    "Some high school-- no degree"    "Junior high (middle) school"
    "Elementary school"     "Less than elementary school"))

 ;;LATER FOLLOW UP WITH A TEXTBOX TO GET SCHOOL NAME
 ;;13
#| NOW A MULTI-ITEM Q
(defparameter stuCollegeAttendingAnswerArray '(
  "California State University, Long Beach" 
   "Another Calif State University campus" 
   "A University of California campus" 
   "A public university in another state" 
   "Private university in California" 
        "Private university in another state" 
        "Community college in California" 
        "Community college in another state" 
        "College or university in another nation" 
        "Graduate school independent of a college" 
        "Technical school"  "High school"  "Unsure or Other"))|#

 ;;10
 (defparameter stuClassLevelAnswerArray '("In doctoral level program" 
        "In masters level program"  "Other graduate school" 
        "Senior"  "Junior"  "Sophomore"  "Freshman" "First semester Freshman" 
        "Taking courses for personal or career development only"  "Unsure or Other"))
 ;;7
 (defparameter stuDegreeObjectiveAnswerArray '("Doctorate" 
        "Masters degree"  "Bachelor's Degree (4-year degree)" 
        "Community college degree (2-year degree)" 
        "Technical school degree"  "High school degree" 
        "Unsure or Other" ))
 ;;14 now is multi-selection
#| (defparameter stuMajorTypeAnswerArray '("Liberal arts (a language, history, etc.)" 
        "Social or behavioral science (psychology, sociology, etc.)" 
        "Biological science"  "Art" 
        "Other natural science (physics, chemistry, etc.)" 
        "Business"  "Engineering" 
        "Education"  "Medical or health-related"  "Other computer-related" 
        "Other technical"  "Recreation or physical education-related" 
        "Does not apply" 
        "Undecided or don't know"))|#
 ;;13
 (defparameter stuSpecialStatusAnswerArray '("Transfered from a community college to 4-year college" 
        "Transfered from another 4-year college" 
        "Adult returning to school" 
        "EOP Student " "U.S. Immigrant" "Here on student Visa" "In Honors program" 
        "Visa Student" "Disabled student" "Out of state student" 
        "Military--active or veteran" "Athlete on college team" 
         "None of above"))
 ;;8
#| now is mult-sel (defparameter stuResidenceAnswerArray '(
    "SINGLE--Live WITH PARENTS"     "SINGLE--Live IN DORMS" 
    "SINGLE caring for children" 
    "SINGLE--Other situation"   "MARRIED without children" 
    "MARRIED with children"  "MARITAL-LIKE RELATIONSHIP" 
    "OTHER"))|#
 ;;6

 ;;11
 (defparameter stuGPATrendAnswerArray '(
        "CONSISTENTLY HIGH (3.0-4.0)" 
        "INCREASED significantly after an ABSENCE from school" 
        "INCREASED significantly within that past year or so" 
        "INCREASED significantly a few semesters ago" 
        "Was LOWER, but has GRADUALLY INCREASED." 
        "CONSISTENTLY AVERAGE (2.0-3.0)" 
        "DECREASED significantly a few semesters ago" 
        "DECREASED significantly within the past year or so" 
        "CONSISTENTLY LOW (less than 2.0)" 
        "UP and DOWN dramatically in recent years" "Other"
        ))





;; -------------------------- END ADDED --------------------------------------

  ;;FRAME HEIGHTS
  ;;xxx
#|(defparameter  frHeight12    540)
(defparameter  frHeight13    560)
(defparameter  maxFrHeight    600)|#

;;XXX ------------------------------- LIST-ARRAY ANSWER VALUES ----------------------
  #|  /**
   * ARRAYS OF VALUES FOR STANDARD TYPES OF QUESTIONS
   */|#

(defparameter Values4to1Array    '(4  3  2  1))
(defparameter Values5to1Array    '(5  4  3  2  1))
(defparameter Values6to1Array    '(6  5  4  3  2  1))
(defparameter Values7to1Array    '(7  6  5  4  3  2  1))
(defparameter Values7to0Array    '(7  6  5  4  3  2  1 0))
(defparameter Values8to1Array    '(8  7  6  5  4  3  2  1))
(defparameter Values9to1Array    '(9  8  7  6  5  4  3  2  1))
(defparameter Values10to1Array    '(10  9  8  7  6  5  4  3  2  1))
(defparameter Values11to1Array    (Make-Descending-Array '(11  11)))
(defparameter Values12to1Array    (Make-Descending-Array '(12  12)))
(defparameter Values13to1Array    (Make-Descending-Array '(13  13)))
(defparameter Values14to1Array    (Make-Descending-Array '(14  14)))
(defparameter Values15to1Array    (Make-Descending-Array '(15  15)))
(defparameter Values16to1Array    (Make-Descending-Array '(16  16)))
(defparameter Values17to1Array    (Make-Descending-Array '(17  17)))
(defparameter Values18to1Array    (Make-Descending-Array '(18  18)))

  ;;ZERO-BASED FOR NOT APPLY GRADE   ETC ANSWERS
(defparameter  GPAValues14Array    '(3.875  3.625  3.375  3.125  2.875  2.625  2.375  2.125  1.875  1.625  1.375  1.125  0.5  0))
(defparameter Values13to0Array    (Make-Descending-Array '(13  14)))
(defparameter Values14to0Array    (Make-Descending-Array '(14  15)))
(defparameter Values8to0Array    '(8  7  6  5  4  3  2  1  0))

  ;;REVERSE SCORE ARRAYS
(defparameter Values1to5Array    (Make-Ascending-Array '(1  5 )))
(defparameter Values1to6Array    (Make-Ascending-Array '(1  6 )))
(defparameter Values1to7Array    (Make-Ascending-Array '(1  7 )))
(defparameter Values1to8Array    (Make-Ascending-Array '(1  8 )))
(defparameter Values1to9Array    (Make-Ascending-Array '(1  9 )))
(defparameter Values1to10Array    (Make-Ascending-Array '(1  10 )))
(defparameter Values1to11Array    (Make-Ascending-Array '(1  11 )))
(defparameter Values1to12Array    (Make-Ascending-Array '(1  12 )))
(defparameter Values1to13Array    (Make-Ascending-Array '(1  13 )))
(defparameter Values1to14Array    (Make-Ascending-Array '(1  14 )))
(defparameter Values1to15Array    (Make-Ascending-Array '(1  15 )))
(defparameter Values1to16Array    (Make-Ascending-Array '(1  16 )))
(defparameter Values1to17Array    (Make-Ascending-Array '(1  17 )))
(defparameter Values1to18Array    (Make-Ascending-Array '(1  18 )))
  ;;(defparameter Values1to19Array    (Make-Ascending-Array '(1  19 )))

  #|
  ;; instance created for using non-static methods and variables
  ;;static  MakeFrQuJRadioButtons     new MakeFrQuJRadioButtons())


  ;;      new  ()

  /**
   * The standard answer formats
   */|#

  ;;      new  ()
  ;;  (  answerInstructions1  
  ;;   int numResponsesPerQuestion1     answerTextArray1  
  ;;    intAnswerValueArray1      choiceType1     valueType1)
  #|(defparameter  NonStandard   new  ()
  ;;  nonStandard   new  ()
(defparameter  TempType   new  ()
(defparameter  Default   new  ()
|#
  ;;FOLLOWING INCLUDES "DOES NOT APPLY TO ME"

;;XXX --------------------------- FR-ANSWER-PANEL DEFINITION LISTS ------------------

(defparameter  LikeMe7   
    '(LikeMe7Instructions  7 
                           LikeMe7AnswerArray  Values7to1Array  "single"  "int"))

(defparameter  LikeMe8NotApply   
    '(LikeMe7Instructions  8 
                           Agree8NotApplyAnswerArray  Values8to1Array  "single"  "int"))

(defparameter  LikeMe7Reverse   
    '(LikeMe7Instructions  7 
                           LikeMe7AnswerArray  Values1to7Array  "single"  "int"  T  NIL))

(defparameter  LikeUs7   
    '(LikeUs7Instructions  7 
                           LikeUs7AnswerArray  Values7to1Array  "single"  "int"))

(defparameter  LikeUs7Reverse   
    '(LikeUs7Instructions  7 
                           LikeUs7AnswerArray  Values1to7Array  "single"  "int"  T  NIL))

(defparameter  PerCent6Cope   
    '(PerCent6CopeInstructions  6 
                                PerCent6CopeAnswerArray  Values6to1Array  "single"  "int"))

(defparameter  PerCent6CopeReverse   
    '(PerCent6CopeInstructions  6 
                                PerCent6CopeAnswerArray  Values1to6Array  "single"  "int" T  NIL))

(defparameter  Percent10   
    '(Percent10Instructions  10 
                             Percent10AnswerArray  Values10to1Array  "single"  "int"))

(defparameter  PercentileCollege10   
    '(PercentileCollege10Instructions  10 
                                       Percentile10AnswerArray  Values10to1Array  "single"  "int"))

(defparameter  Priority9   
    '(Priority9Instructions  9 
                             Priority9AnswerArray  Values9to1Array  "single"  "int"))

(defparameter  Priority10   
    '(Priority10Instructions  10 
                              Priority10AnswerArray  Values10to1Array  "single"  "int"))

(defparameter  Priority10Reverse   
    '(Priority10Instructions  10 
                              Priority10AnswerArray  Values1to10Array  "single"  "int" T  NIL))

(defparameter  Confidence7   
    '(Confidence7Instructions  7  Confidence7AnswerArray 
                               Values7to1Array  "single" "int"))

(defparameter  Happy7   
    '(Happy7Instructions  7  Happy7AnswerArray 
                          Values7to1Array  "single" "int"))

(defparameter  NumberTo12   
    '(NumberBy2Instructions  13  NumberTo12AnswerArray 
                             Values13to1Array  "single" "int"))

(defparameter  NumberTo12Reverse   
    '(NumberBy2Instructions  13  NumberTo12AnswerArray 
                             Values1to13Array  "single" "int"  T  NIL))

(defparameter  NumberBy2   
    '(NumberBy2Instructions  12  NumberBy2AnswerArray 
                             Values12to1Array  "single" "int"))

(defparameter  Freq12   
    '(Freq12Instructions  12  Freq12AnswerArray 
                          Values12to1Array  "single" "int"))

(defparameter  Freq8   
    '(Freq12Instructions  8  Freq8AnswerArray 
                          Values8to1Array  "single" "int"))

(defparameter  Freq8Reverse   
    '(Freq12Instructions  8  Freq8AnswerArray 
                          Values1to8Array  "single" "int" T  NIL))

(defparameter   Freq7   
    '(Freq7Instructions  7  Freq7AnswerArray 
                         Values7to1Array  "single" "int"))

(defparameter   Freq7Reverse   
    '(Freq7Instructions  7  Freq7AnswerArray 
                         Values1to7Array  "single" "int" T  NIL))

(defparameter  Belief10    
    '(Belief10Instructions  10  Belief10AnswerArray 
                            Values10to1Array  "single" "int"))

(defparameter  Belief10Reverse    
    '(Belief10Instructions  10  Belief10AnswerArray 
                            Values1to10Array  "single" "int"  T  NIL))

(defparameter  Percentile10   
    '("Choose the best answer"  10  Percent10AnswerArray 
                                Values10to1Array  "single" "int"))

(defparameter  Percent10Reverse   
    '(Percent10Instructions  10  Percent10AnswerArray 
                             Values1to10Array  "single" "int"  T  NIL))

(defparameter  Fear7Reverse   
    '(Fear7Instructions  7  Fear7AnswerArray 
                         Values1to7Array  "single" "int" T NIL))

(defparameter  Agree7   
    '(Agree7Instructions  7  Agree7AnswerArray 
                          Values7to1Array  "single" "int"))

(defparameter  Agree7Reverse   
    '(Agree7Instructions  7  Agree7AnswerArray 
                          Values1to7Array  "single" "int"  T  NIL))

(defparameter  EpisodeFreq9   
    '(EpisodeFreq9Instructions  9  EpisodeFreq9AnswerArray 
                                Values9to1Array  "single" "int"))

(defparameter  EpisodeFreq9Reverse   
    '(EpisodeFreq9Instructions  9  EpisodeFreq9AnswerArray 
                                Values1to9Array  "single" "int"  T  NIL))

(defparameter  Duration11   
    '(Duration11Instructions  11  Duration11AnswerArray 
                              Values11to1Array  "single" "int"))

(defparameter  Duration11Reverse   
    '(Duration11Instructions  11  Duration11AnswerArray 
                              Values1to11Array  "single" "int"  T  NIL))

(defparameter  units   
    '(unitsInstructions  12  unitsAnswerArray 
                              Values12to1Array   "single" "int" ))

(defparameter userrate7
  '(userRateInstrs 7 UserRateAnswerArray Values7to1Array "single" "int"))


(defparameter userRateInstrs  "We Value Your Opinion and We Listen")

(defparameter UserRateAnswerArray
      '("Very interesting/beneficial"
        "Moderately interesting/beneficial"
        "Mildly interesting/beneficial"
        "Uncertain or Neutral"
        "Mildly uninteresting/not beneficial"
        "Moderately uninteresting/not beneficial"
        "Very uninteresting/not beneficial"))
 
;;   jLabel2.setText("COMMENTS (Type in box below):");
  

 ;;LATER FOLLOW UP WITH A TEXTBOX TO GET SCHOOL NAME

;;ADDED PANEL DEFS 2014 ---------------------------------------------------

;; SINGLE ANSWER, SCORED

(defparameter rpeCommitAnsArray
   '("Degree of Commitment:"  13  rpeCommitTextArray 
                    Values13to1Array  "single" "int"))

;;12
(defparameter  rpeCommitTextArray
  '("Married--extremely high commitment"
  "Living together--extremely high commitment"
  "Not living together--extremely high commitment"
  "Married--moderate commitment"
  "Living together--moderate commitment"
  "Not living together--moderate commitment"
  "Married--low commitment"
  "Living together--low commitment"
  "Not living together--low commitment"
  "Dating one person regularly, but not in a committed relationship"
  "Previously married, but not now in a committed relationship"
  "Previously in a committed relationship, but not now"
  "Never in a committed relationship"))

(defparameter rhlphysiAnsArray
   '("Degree of  Physical Activity:"  9  rhlphysiTextArray 
                    Values9to1Array  "single" "int"))

;;9
(defparameter rhlphysiTextArray
  '("Excellent for competitive athlete"
        "Moderate for competitive athlete"
        "Excellent for non-athlete (and able to run 5 miles or more)"
        "Very good for non-athlete (could run a mile or more)"
        "Good (could walk 5-10 miles)"
        "Moderate (could walk 1-5 miles)"
        "Poor (would have trouble walking a mile)"
        "Very poor" 
        "Have prolonged illness that keeps conditioning very low"))


(defparameter rhlweighAnsArray
   '("Weight Compared to Ideal:"  10  rhlweighTextArray 
                    Values10to1Array  "single" "int"))
;;10
(defparameter  rhlweighTextArray 
  '("Ideal for my height"
        "1-10 pounds less than ideal"
        "Over 10 pounds less than ideal"
        "1-10 pounds high" "11-20 pounds high"
        "21-30 pounds high" "31-40 pounds high"
        "41-50 pounds high" "51-60 pounds high"
        "More than 60 pounds high"))

;;KKK
(defparameter acmstudyAnsArray
 '("Study time per class hour" 6  acmstudyTextArray
      Values6to1Array  "single" "int"))
;;6
(defparameter acmstudyTextArray
  '("4 or more study hours per in-class hour"
    "3 to 4 hours per class hour"
    "2 to 3 hours per class hour"
    "1 to 2 hours per class hour"
    "Less than 1 hour study per in-class hour per week"
    "Rarely ever study outside of class"))



;;biocolle
;;AAA
#|    PCategory bioHSGPA = new PCategory ("bioHSGPA", 8,
      bioHSGPAQ,"int", "",
      FrAnswerPanel.GPALabel, 14, FrAnswerPanel.NonStandard,
      FrAnswerPanel.GPA14TextArray, FrAnswerPanel.Values13to0Array,
      "single",questionInstancesArray, frameTitle, frameDimWidth, FrAnswerPanel.frHeight12);|#

(defparameter bio3educAnsArray
  '("Highest education level completed:" 8 bio3educTextArray
    Values8to1Array "single" "int" ))

(defparameter bio3educTextArray '("Doctorate""Masters Degree""Bachelor's Degree""Two-year Degree" "Technical Degree" "High School Degree" "Didn't Complete High School" "Other"))


;;----------------------------------- ACAD-LEARNING --------------------
 ;;8
(defparameter stuParentsEduc
   '(stuParentsEducInstrs  8 stuParentsEducAnswerArray 
                    Values8to1Array  "single" "int"))
(defparameter stuParentsEducInstrs "Highest education level obtained by either parent.")
                                               
#|    "Doctoral degree"    "Masters degree"
    "Bachelors (4-year)college degree"     "High school degree"
    "Some high school-- no degree"    "Junior high (middle) school"
    "Elementary school"     "Less than elementary school"))|#

 ;;10
(defparameter stuClassLevel 
   '(stuClassLevelInstrs 10 stuClassLevelAnswerArray
                  Values10to1Array  "single" "int"))
(defparameter  stuClassLevelInstrs  "Select best answer")
#|"In doctoral level program" 
        "In masters level program"  "Other graduate school" 
        "Senior"  "Junior"  "Sophomore"  "Freshman" "First semester Freshman" 
        "Taking courses for personal or career development only"  "Unsure or Other"))|#

 ;;7
(defparameter stuDegreeObjective 
   '(stuDegreeObjectiveInstrs 7 stuDegreeObjectiveAnswerArray 
                                    Values7to1Array   "single" "int"))
(defparameter stuDegreeObjectiveInstrs "What type of degree is your ultimate objective?")
#|above "Doctorate"         "Masters degree"  "Bachelor's Degree (4-year degree)" 
        "Community college degree (2-year degree)" 
        "Technical school degree"  "High school degree"         
"Unsure or Other" ))|#


 ;;6
(defparameter stuAcademicStatus
 '(stuAcademicStatusInstrs 6 stuAcademicStatusAnswerArray
                                 Values6to1Array  "single" "int"))
(defparameter  stuAcademicStatusInstrs "What is your current academic status?")
 (defparameter stuAcademicStatusAnswerArray '(
  "President's List--over 3.5 GPA last semester" 
  "Dean's List--over 3.0 GPA last semester" "Satisfactory--over 2.0 GPA" 
  "On Academic Probation" "Disqualified" 
  "Don't know"))

 ;;11
(defparameter stuGPATrend 
   '(stuGPATrendInstructions 11 stuGPATrendAnswerArray 
                             Values11to1Array  "single" "int"))
;; bec multi-ans, not needed?? (defparameter  stuGPATrendInstrs "Your GPA overall trend or changes?")
#|        "CONSISTENTLY HIGH (3.0-4.0)" 
        "INCREASED significantly after an ABSENCE from school" 
        "INCREASED significantly within that past year or so" 
        "INCREASED significantly a few semesters ago" 
        "Was LOWER, but has GRADUALLY INCREASED." 
        "CONSISTENTLY AVERAGE (2.0-3.0)" 
        "DECREASED significantly a few semesters ago" 
        "DECREASED significantly within the past year or so" 
        "CONSISTENTLY LOW (less than 2.0)" 
        "UP and DOWN dramatically in recent years" "Other"
        ))|#

;;SINGLE ANSWER, MULTI-ITEM, NON-SCORED
 ;;13  now is multi-selection
#| (defparameter stuCollegeAttending 
   '(stuCollegeAttendingInstructions 13 stuCollegeAttendingAnswerArray
                                    non-standard  "single" "int"))|#
#|  "California State University, Long Beach" 
   "Another Calif State University campus" 
   "A University of California campus" 
   "A public university in another state" 
   "Private university in California" 
        "Private university in another state" 
        "Community college in California" 
        "Community college in another state" 
        "College or university in another nation" 
        "Graduate school independent of a college" 
        "Technical school"  "High school"  "Unsure or Other"))|#
 ;;14
#| (defparameter stuMajorType  now is multi-answer
   '(Stumajortypeinstructions 13 stuMajorTypeAnswerArray
                                 non-standard  "single" "int"))|#
#|                              "Liberal arts (a language, history, etc.)" 
        "Social or behavioral science (psychology, sociology, etc.)" 
        "Biological science"  "Art" 
        "Other natural science (physics, chemistry, etc.)" 
        "Business"  "Engineering" 
        "Education"  "Medical or health-related"  "Other computer-related" 
        "Other technical"  "Recreation or physical education-related" 
        "Does not apply" 
        "Undecided or don't know"))|#

(defparameter stuFinDepend
   '(stufindefinstrs 6 stuFinDependTextArray
                              Values6to1Array   "single" "int"))
(defparameter stufindefinstrs "Which statement describes your financial support best?")

;;6
(defparameter stuFinDependTextArray  
  '(     "Fully self-supporting"
        "Almost fully self-supporting"
        "Depend heavily on financial aide"
        "Family support and work"
        "Entirely supported by family"
        "Other" ))

(defparameter bio5incoAnsArray
  '(bio5incoinstrs 11 bio5incoTextArray Values11to1Array "single" "int"))
(defparameter bio5incoinstrs
 "Your Highest Personal Income Level:")
;;11
(defparameter bio5incoTextArray
  '("Over $200,000" "$150,000 to $200,000" "$125,000 to $150,000" "$100,000 to $125,000" "$80,000 to $100,000" "$60,000 to $80,000" "$40,000 to $60,000" "$25,000 to $40,000" "$15,000 to $25,000" "$5,000 to $15,000" "Less than $5,000"))



 ;;8
#| (defparameter stuResidence 
   '(stuResidenceInstructions 8 stuResidenceAnswerArray
                              Values7to1Array   "single" "int"))|#
#|    "SINGLE--Live WITH PARENTS"     "SINGLE--Live IN DORMS" 
    "SINGLE caring for children" 
    "SINGLE--Other situation"   "MARRIED without children" 
    "MARRIED with children"  "MARITAL-LIKE RELATIONSHIP" 
    "OTHER"))|#
;;MULTI-ANS MULTI-ITEM QUESTIONS
 ;;13
(defparameter stuSpecialStatus
   '(stuSpecialStatusInstructions 13 stuSpecialStatusAnswerArray 
                                    non-standard  "multiple" "int"))
#|"Transfered from a community college to 4-year college" 
        "Transfered from another 4-year college" 
        "Adult returning to school" 
        "EOP Student " "U.S. Immigrant" "Here on student Visa" "In Honors program" 
        "Visa Student" "Disabled student" "Out of state student" 
        "Military--active or veteran" "Athlete on college team" 
         "None of above"))|#

   ;;added 2014
;;SSS DELETE?? NO LONGER USED -- REPLACED BY MULTI-SELECTION QVARS???
(defparameter userType 
   '(userTypeInstructions 16 userTypeAnswerArray 
                             non-standard  "multiple" "int"))
 (defparameter userTypeTitle   "SHAQ CARES: Selection of Your Questionnaires")
(defparameter userTypeInstructions "PLEASE CHECK ALL THAT APPLY  so SHAQ can decide which questionnaires to give you.")
;;      "Type of User  Check ALL that apply to you:"
;;16
(defparameter userTypeAnswerArray
      '("Experienced self help user."
        "I want a thorough assessment."  
        "Finishing quickly most important."  
      "I want help with a certain problem."
      "I want to choose specific questionnaire(s)."  
      "Previous SHAQ user." 
      "CSULB student completing UNIV 100 assignment."
      "Other college student completing assignment."
      "Other CSULB student completing assignment."  
      "Other college student."   
      "Other type of student."
      "I want ACADEMIC HELP ONLY."
      "College faculty member or administrator."  
      "Instructor wanting to establish credit for students."
      "Subject  in a SHAQ research project."
      "None of these categories fit me."))

 (defparameter userGoals1
   '(userGoals1Instructions 16 userGoals1AnswerArray 
                             non-standard  "multiple" "int"))

(defparameter userGoals1Q
    "PLEASE CHECK ALL THAT APPLY. What do you want to gain from taking SHAQ.")

(defparameter userGoals1Instructions  "I want help with:")

;;13
(defparameter userGoals1AnswerArray
    '("more success and happiness."   
      "better grades and/or academic success."   
      "self esteem."   
      "procrastination or self motivation." 
      "I want help choosing a major or career (additional 10 20 minutess)."   
      "time management or control of my life." 
      "marriage or relationships of any type."   
      "meeting people, dating more, etc.."   
      "overcoming loneliness, fear of being alone, or fear of rejection."  
      "understanding myself and my motivation."   
      "coping with unhappiness, apathy, grief, or depression."   
      "coping with stress, anxiety, fear, or guilt."   
      "coping with anger or aggression." ))


 (defparameter userGoals2
   '(userGoals2Instructions 16 userGoals2AnswerArray 
                             non-standard  "multiple" "int"))

(defparameter userGoals2Q
    "PLEASE CHECK ALL THAT APPLY  so SHAQ can decide which questionnaires to give you.  Checking any of the first 3 options will insure that you get an HQ (Happiness Quotient) Score.")

(defparameter userGoals2Instructions  "I want help with:")
;;5
  (defparameter userGoals2AnswerArray
      '("I want a complete assessment EXCEPT major choice (45 100 minutes?)."  
      "I want a complete assessment INCLUDING academic success and college major choice (60 110 minutes)." 
      "I want a complete assessment EXCEPT academic and college major choice 40 90 minutes)."  
      "I\'m not interested in SHAQ for my own self help." 
      "I ONLY want help choosing a college major."))
;; SSS END OF POSSIBLE DELETE --------------------------------

;;21
(defparameter specQuestAnswerArray
   '("Life Themes and Life Style Values"
     "Unconditional Self-Worth Scale"
     "Self-Confidence Scale"
     "Self-Esteem--Self-Actualization Characteristics Scale"
     "Internal External Control and Assertiveness Beliefs Scale"
     "Core Beliefs about Identity and Ethics"
     "Greatest Fears Scale"
     "Self Management: self-motivation and time management"
     "Emotional Coping Questionnaire"
     "Introductory Questionnaire for All Students"
     "Student Questionnaire"
     "Learning and Study Skills 1: Key Learning Skills"
     "Learning and Study Skills 2: Learning Areas"
     "Learning and Study Skills 3: Learning Disabilities Screening"
     "Interpersonal Communication and Conflict Resolution Scale"
     "Intimacy Scale"
     "Relationship Independence Scale"
     "Liberated Relationship Roles Scale"
     "Romantic Relationship Habits Scale"
     "College Major Interest Test (for choosing major or minor)"
     "Academic Motivation"
     ))
;;'   jButton1.setText("OK--Go to next frame");

(defparameter userRateAnsArray
  '("We Value Your Opinion and We Listen" 1 userRateAnsTextArray Values7to1Array "single" "int" ))

;;7 
(defparameter userRateAnsTextArray
  '("Very interesting/beneficial"
    "Moderately interesting/beneficial"
    "Mildly interesting/beneficial"
    "Uncertain or Neutral"
    "Mildly uninteresting/not beneficial"
    "Moderately uninteresting/not beneficial"
    "Very uninteresting/not beneficial"
    ))

#|"We Value Your Opinion and We Listen"
"How interesting and beneficial overall would you rate\n"

"Help us better help others--please give us your comments"

"COMMENTS (Type in box below):"
"For timely reading send comments to:  tstevens@csulb.edu"|#


"Your RESULTS will pop up after clicking on \"OK\" above."



#|Biographical Information Page
1.First Name 2.Middle Initial 3.Last Name 4.email address .5. Last 6 digits of SSN or other ID  (9 digit SSN for course credit)   Example = 111223333: 6.Age 7.Hours work/week 8.Sex 9.Are you completing this for course credit?  10.I live in [USA, Other Nation] 11. If not USA, country: 12. If USA, zip code:|#

#|bio3educ "1. Highest education completed?"
{Doctorate, Masters Degree, Bachelor's Degree, Two year Degree, Technical Degree, High School Degree, Didn't Complete High School, Other}
2. What was your high school grade average?
{3.75 4.00, 3.50 3.74, 3.25 3.49, 3.00 3.24, 2.75 2.99, 2.50 2.74, 2.25 2.49, 2.00 2.24, 1.75 1.99, 1.50 1.74, 1.25 1.49, 1.00 1.24, Below 1.00, No GPA yet}
biocolle "3. What is your overall college grade average?"
{3.75 4.00, 3.50 3.74, 3.25 3.49, 3.00 3.24, 2.75 2.99, 2.50 2.74, 2.25 2.49, 2.00 2.24, 1.75 1.99, 1.50 1.74, 1.25 1.49, 1.00 1.24, Below 1.00, No GPA yet}
4. Primary Occupation (check ALL that apply, then Click OK):
{Student, Manager/executive, Professional, People oriented, Professional, Technical, Consultant, Educator, Sales, Technician, Clerical, Service, Own business +10 employees, Other self employed, Other}
bio5inco "5. Highest Personal Income Level:"
{Over $200,000, $150,000 200,000, $125,000 150,000, $100,000 125,000, $80,000 100,000, $60,000 80,000, $40,000 60,000, $25,000 $40,000, $15,000 25,000, $5,000 15,000, Less than $5,000}
6. Check ALL languages that you speak fluently, then Click OK
{English, Spanish, Vietnamese, Cambodian, Chinese, Korean, Portuguese, German, French, Other Asian, Other European, Other}
7. Ethnic heritage (Check PRIMARY heritage region(s), then Click OK:
{North America, Africa, Northern Europe, Southern Europe, Cambodia, China, Korea, Japan, Vietnam, Other Asian, Mexico, Central America, South America, Pacific Island, Other or prefer not to answer}
8. What is your primary religious affiliation or preference?
{Catholic, Jewish, Islam, Latter Day Saints  Morman, Buddhist, Protestant  Baptist, Protestant  United Methodist, Protestant  Episcopal, Protestant  Lutheran, Protestant  Presbyterian, Protestant  Other Liberal, Protestant  Other Fundamentalist or Conservative, No affiliation, Agnostic or Atheist, Other or prefer not to answer}|#



;;end added 2014 ----------------------------

;; MISC  LABELS
;; xxx
(defparameter  GPALabel   "Scale A 4.0;  B 3.0;  C 2.0;  D 1.0;  F 0 ")
(defparameter  bestAnswerLabel   "Choose the best answer:")

   (format t "~%~%==>  FRAME-ANSWER-PANEL-ARRAYS   INTIALIZED~%~%")


;;XXX ----------------------------- FROM OTHER JAVA FILES
;;
;; FROM StudentBasicData.java

 
  ;;END OF INITIALIZATION FUNCTION -- NOT CURRENTLY USED
  ;;  )

;; EXECUTE THE INITIALIZATION ON LOAD
;; CHANGED THIS TO JUST LOAD THE FILE, SO I CAN SEE THE DEFS IN THE DEFS LIST
;; (initialize-frame-answer-panel-arrays)



#|/**
 * An array of ALL standard answer panels
 */
(defparameter  Standard sArray   
  '(LikeMe7  LikeUs7  Percentile10  PercentileCollege10  Priority9
  )
(defparameter  All sArray   
  '(NonStandard  TempType  Default 
  |#


  

;;xxx ------------------------------ ORIGINAL COPIED INFO FROM JAVA FILE -------------

#|
;; DIFERENT (ARG-LIST) FORMS OF THE PANEL CONSTRUCTORS

;;SHORT FORM --
  public FrAnswerPanel(String answerInstructions1,
   int numResponsesPerQuestion1, String[] answerTextArray1,
   int[] intAnswerValueArray1,  String choiceType1, String valueType1)
   //following two are omitted in this shorter constructor
   //String[] stringAnswerValueArray1, double[] doubleAnswerValueArray1)
  {
   answerInstructions = answerInstructions1;
   numResponsesPerQuestion = numResponsesPerQuestion1;
   answerTextArray = answerTextArray1;
   choiceType = choiceType1;
   valueType = valueType1;
   //default already = booleanAnswerValueArray = {true, false};
   intAnswerValueArray = intAnswerValueArray1;
   //omitted:stringAnswerValueArray = stringAnswerValueArray1;
   //omitted:doubleAnswerValueArray = doubleAnswerValueArray1;
   //default already isSelectedNum = 0;
  }

  public FrAnswerPanel(String answerInstructions1,
   int numResponsesPerQuestion1, String[] answerTextArray1,
   int[] intAnswerValueArray1,  String choiceType1, String valueType1,
   boolean isReversedItem1, boolean isScoredReverse1)
   //following two are omitted in this shorter constructor
   //String[] stringAnswerValueArray1, double[] doubleAnswerValueArray1)
  {
   answerInstructions = answerInstructions1;
   numResponsesPerQuestion = numResponsesPerQuestion1;
   answerTextArray = answerTextArray1;
   choiceType = choiceType1;
   valueType = valueType1;
   //default already = booleanAnswerValueArray = {true, false};
   intAnswerValueArray = intAnswerValueArray1;
   //omitted:stringAnswerValueArray = stringAnswerValueArray1;
   //omitted:doubleAnswerValueArray = doubleAnswerValueArray1;
   //default already isSelectedNum = 0;
   isReversedItem = isReversedItem1;
   isScoredReverse = isScoredReverse1;
  }

  public FrAnswerPanel(String answerInstructions1,
   int numResponsesPerQuestion1, String[] answerTextArray1,
   int[] intAnswerValueArray1,
   String choiceType1, String valueType1,
   String[] stringAnswerValueArray1, double[] doubleAnswerValueArray1)
|#
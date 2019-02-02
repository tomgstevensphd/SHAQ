;;************************* 1-SHAQ-DOCS.lisp *********************
;;
;; MISC SHAQ OVERALL DOCS
;;
;;CURRENT TASKS TO-DO
;;
#|
;;2014-09-25
* Use :help-priority 1 slot-value to list  help-links in special priority help area
* send to php file.

* POLISH FORMAT O F TEXT-RESULTS
 *line before subscale not subs qs
 *change name of subscale of ie  relationship autonomy 
 *delete first ugoals, utype, etc. let the process-scales-results do it
 *some SUGGESTIONS need newline

 * EXTRA \" BEFORE QUOTES


SSSS BEFORE MANUALLY TRY TO CHANGE THESE,
  FIX THE FUNCTION THAT FINDS "REVERSE" IN THE ARRAY AND FIXES
THE REVERSE, THEN RE-RUN THE RESULTS

  *REVERSE-SCORED EASIEST TO CHECK GRAPH LINES
SUBSCALE: \"No Entitlment Beliefs\
QUESTION: \"I am entitled to a good life, and people
 >> QUESTION: \"Life has been extremely unfair to me.
 >> QUESTION: \"Someone has injured me so much that it has ruined my life.
 >> QUESTION: \"I am entitled to the basic necessities of life such as good healt
   >>>>>>>  SUBSCALE: \"Unconditional Self-Worth\"
 >> QUESTION: \"I should always put other people's needs before my own.
 >> QUESTION: \"I should be loved or liked by everyone I meet.
>> QUESTION: \"I am weak and dependent on strong people for my happiness.
 >> QUESTION: \"I must be the best at everything I do.
 >> QUESTION: \"We must run our lives by rules, and people who break those rules must be severely punished or we will have chaos.
 >> QUESTION: \"There are winners and losers. If you are not strong and t
   >>>>>>>  SUBSCALE: \"Self-Acceptance\"  
 >> QUESTION: \"There are one or more aspects (or parts) of myself that I have a hard time accepting or do not like.
   >>>>>>>>>>>>  SCALE:  \"Internal vs External Control (
 >> QUESTION: \"I am very dependent upon someone (parent, spouse, etc.) to support or take care of me (emotionally, financially, socially, etc.).
   >>>>>>>  SUBSCALE: \"Not Codependent\" 
 >> QUESTION: \"I worry more about caring for someone else's needs or 
 >> QUESTION: \"I worry a great deal about taking care of someone with a 
   >>>>>>>  SUBSCALE: \"Control Own Emotions Beliefs\"
 >> QUESTION: \"People in my life are primarily responsible for my personality and my emotional reactions.
 >> QUESTION: \"Genetics and my biology are primarily responsible for my personality and my emotional reactions.
   >>>>>>>  SUBSCALE: \"Abstract Absolutes-Grounded Ethics\"
 >> QUESTION: \"There is no 'absolute' right and wrong or good or bad--it 
 >> QUESTION: \"If a person has a bad environement and/or genetics, they aren't really responsible for what they do.
 >> QUESTION: \"If society would base everything upon reason and science, we would have nothing to worry about.
   >>>>>>>  SUBSCALE: \"Forgiveness\"  \"of  SCALE: \"Absolute-Grounded, Integrated Ethics\"\"   [Number of Questions: 2]
 >> QUESTION: \"We must run our lives by rules, and people who break those rules must be severely punished or we will have chaos.
 >> QUESTION: \"People can only be completely forgiven and guilt-free if they are good enough (do enough of the right things).
   >>>>>>>  SUBSCALE: \"Abstract Principles-Entities Ethics\"  \"of  SCALE: \"Absolute-Grounded, Integrated Ethics\"\"   [Number of Questions: 2]
 >> QUESTION: \"One group in my life (such as my family, nation, culture, or religion) is so important that I would be almost nothing without
 >> QUESTION: \"Life has no meaning in itself, any meaning must be supplied by the individual.
   >>>>>>>  SUBSCALE: \"Not Astrology Belief\"  \"of  SCALE: \"Absolute-Grounded, Integrated Ethics\"\"   [Number of Questions: 1]
 >> QUESTION: \"I believe in phenomena like communicating with spirits of the deceased, seeing into the future, and astrology.
   >>>>>>>>>>>>  SCALE:  \"Low Greatest Fears Scale\"  
   >>>>>>>  SUBSCALE: \"Low Social Fears\"  \"
 >> QUESTION: \"Fear of being alone.
 >> QUESTION: \"Fear of not ever having a good marriage and/
SSS REVERSE DO REST OF FEAR SCALE

LAST ITEM IS  >> QUESTION: \"Fear of death.

 >> QUESTION: \"Worry, think negative thoughts, think of problems without thinking of good solutions
   >>>>>>>  SUBSCALE: \"Emotional Coping Without Blaming\"
 >> QUESTION: \"Outwardly express anger by losing your temper, crying, damaging something, or getting even.
 >> QUESTION: \"Think about whose fault it is, blame yoursel
 >> QUESTION: \"Withdraw from others, feel hurt, hold your e
 >> QUESTION: \"Think of the problem from a very critical or punitiv
 >> QUESTION: \"Get angry at yourself, think negative thoughts about yourself, or call yourself names.
   >>>>>>>  SUBSCALE: \"Emotional Coping Without Substance Abuse\
 >> QUESTION: \"Smoke a cigarette or tobacco product.
 >> QUESTION: \"Drink an alcoholic beverage, take street drugs, or use prescribed medication.
   >>>>>>>  SUBSCALE: \"Emotional Coping Without Eating\"
 >> QUESTION: \"Eat.

 >> QUESTION: \"In our conversations, one partner usually talks quite a bit more than the other.
 >> QUESTION: \"I frequently do not know what my partner really wants or feel
 >> QUESTION: \"One of us frequently worries about whether the other is really committed to this relationship.

   >>>>>>>>>>>>  SCALE:  \"Liberated, Equal Roles Scale\"   
 >> QUESTION: \"There are certain tasks that are MORE the man's res
 >> QUESTION: \"There are certain tasks that are MORE the woman's respon
>> QUESTION: \"The man should make the final decision.
 >> QUESTION: \"I would feel embarrassed if my partner did something considered more characteristic of the opposite sex 
 >> QUESTION: \"I want a relationship in which the man is stronger and more decisive than the woman.
 >> QUESTION: \"If the man and woman have a career conflict in which one has to quit his/her job, the woman should be the one to quit.

 >> QUESTION: \"A long term commitment (would) cause(s) me to f
 >> QUESTION: \"Partners should never argue or disagree if they are to have a truly happy relationship.
 >> QUESTION: \"The (marriage) relationship is more important than the happiness of one partner.
 >> QUESTION: \"When I refer to myself, I frequently say 'we' (meaning my partner and I).
 >> QUESTION: \"I find that I can't really enjoy myself very much if I go someplace without my partner.
 >> QUESTION: \"I don't know how I could be happy if I didn't have my partner.
 >> QUESTION: \"I hate to be alone for even a short time.
 >> QUESTION: \"It is NOT ok for one partner to go away for a weekend by themselves to think and be alone.
 >> QUESTION: \"One should always consult with their partner before making even small decisions.
 >> QUESTION: \"I frequently use words like \"always,\" \"never,\" or other exaggerations.
 >> QUESTION: \"If my partner gets angry at me, I usually get angry or defensive back.
 >> QUESTION: \"Overall, I criticize my partner quite a bit more than 
;;SSS CHECK GRAPHS FROM HERE??




*TRY SENDING TO HTML OUTPUT WINDOW AND USING HYPERLINKS TO NAVIGATE TO CATEGORIES AND SCALES??










|#




;;Q-VAR LISTS for :SINGLE-SELECTION QUESTIONS

;;from master file
 ( "slfachan"
 "sc-Self-development/change"
 "spss-match"
 "slfAchAndWork"
 ("slfAchAndWork" "25" "slfAchAndWorkQ" "int" "Confidence7" "questionInstancesArray" "frameTitle" "frameDimWidth" "frameDimHeight" "iSelf.java")
 (:help na na)
  )

;;from make-question-frame function in Frame-quest-functions
        (setf *current-qvar  qvar
              *current-qvar-list (list qvar-string :single q-text-sym label  fr-answer-panel-sym q-num num-answers  reversed-item-p scored-reverse-p))


;;from single-selection-callback in Frame-quest-functions
         (qvar *current-qvar)
         (qvar-string (first *current-qvar-list))
         (q-type (second *current-qvar-list))
         (q-label (third *current-qvar-list))
         (q-text-sym (fourth *current-qvar-list))        
         (answer-panel-sym (fifth *current-qvar-list))
         (q-num (slot-value interface 'quest-num)) 
         (num-answers (seventh  *current-qvar-list))
        ;;CHECK THESE-- SSS reversed-item-p scored-reverse-p
         (reversed-item-p (eighth *current-qvar-list))
         (scored-reverse-p (ninth *current-qvar-list))

;;from append-my-vertical-button-panel-single-selection-callback function in Frame-quest-functions
         (qvar *current-qvar)
         (qvar-string (first *current-qvar-list))
         (q-type (second *current-qvar-list))
         (q-text-sym (third *current-qvar-list))
         (q-label (fourth *current-qvar-list))
         (q-num (slot-value interface 'quest-num))   ;;was (fourth *current-qvar-list))
         (answer-panel-sym (fifth *current-qvar-list))
         (num-answers (seventh  *current-qvar-list))
         (reversed-item-p (eighth *current-qvar-list))
         (scored-reverse-p (ninth *current-qvar-list))

;;;;LATER TO APPEND *SHAQ-DATA-LIST
          (setf ans-data-list (list qvar-string :single q-label selected-text relative-score adjusted-int-score  q-num num-answers ;; deleted item-selected  (a lisp button object)
                                    selected-data  nor-or-rev-scored ))



;;ddd =================== DEBUGGING INFO ===============
#|
;;PROCESSED-SCALES
0 "BIO-MAQ"
1 "ACAD-ACH"
2 "ST1HIGHERSELF"
3 "ST2SOCINTIMNOFAM"
4 "ST3FAMCARE"
5 "ST4SUCCESSSTATUSMATER"
6 "ST5-ORDERPERFECTIONGOODNESS"
7 "ST6GODSPIRITRELIG"
8 "ST7IMPACTCHALLENGEEXPLOR"
9 "ST8ATTENTIONFUNEASY"
10 "ST9VALUESELFALLUNCOND"
11 "ST10OVERCMPROBACCEPTSELF"
12 "ST11DUTYPUNCTUAL"
13 "SWORLDVIEW"
14 "STBSLFWO"
15 "SIECONTR"
16 "SETHBEL"
17 "SGRFEARS"
18 "SSLFCONF"
19 "SSELFMAN"
20 "SEMOTCOP"
21 "INTSS1AASSERTCR"
22 "INTSS1BOPENHON"
23 "INTSS2ROMANTC"
24 "INTSS3LIBROLE"
25 "INTSS4LOVERES"
26 "INTSS5INDEP"
27 "INTSS6POSSUP"
28 "INTSS7COLLAB"
29 "SCOLLEGE"
30 "SSL1CONFIDEFFICSTUDYTEST"
31 "SSL1BCONFIDNOTAVOIDSTUDY"
32 "SSL2SATISCAMPUSFACFRIENDSGRDES"
33 "SSL3WRITEREADSKILLS"
34 "SSL4BLDMENTALSTRUCT"
35 "SSL5BASICSTUDYSKILLS"
36 "SSL6SELFMANACADGOALS"
37 "SSL7MATHSCIPRINC"
38 "SSL8STUDYENVIR"
39 "SSL9ATTENDHW"
40 "SSL10MEMNOTANX"
41 "SSL11NOTNONACADMOT"
42 "SSL12STDYTMAVAIL"
43 "SSL13VERBALAPT"
44 "SSL14MATHAPT"
45 "SINCAR"
46 "SINBUS"
47 "SINENGR"
48 "SINFINEA"
49 "SINHELP"
50 "SINLANG"
51 "SINMED"
52 "SINMILTC"
53 "INNATSCI"
54 "SINSOCSC"
55 "SINWOETH"
56 "SINWRITE"
;;PROCESSED-CATS = (HQ ACAD-LEARNING VALUES-THEMES BELIEFS SKILLS-CONFIDENCE INTERPERSONAL CAREER-INTEREST)
;;SCALECAT-LIST= ("BIO-MAQ" "ACAD-ACH" HQ PREVIOUS-USER SPECIFIC-QUESTS ACAD-LEARNING VALUES-THEMES BELIEFS SKILLS-CONFIDENCE "siecontr" "sselfman" "semotcop" INTERPERSONAL CAREER-INTEREST "sworldview" "sgrfears" "stbslfwo" "swvgratent" "sethbel" "sslfconf" "sehappy" "srdepres" "sranxiet" "srangagg" "no-scale" OUTCOME "sUserFeedback")
|#
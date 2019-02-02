;; **********************  help-info.lisp ********************
;;
;;SSS  WHAT TO DO WITH THE GPA ETC HELP INFO?
;;    COULD MAKE A FUNCTION THAT LOOKS AT >> GPA + IF PERSON IS
;;   A STUDENT TO MAKE A GPA-RELATED HELP-LINK AND HELP-INFO BELOW, >>> ALSO HRS-WORK + STUDENT + CHECK HELP-INFO BELOW.

;;ADD NEW HERE??
;;DISPLAY CONTENTS
;;(list-all-file-objects "help-info")

;;****************** SPECIFIC ACTIONS  (from recommendations.java) *****

;; ACTION CATEGORIES
;;
;; NOTE: THESE  *STARRED-NAMES ARE ALSO SLOTS IN F-PRINT FRAME FOR ;;			USER-PRINT
;;

(defparameter *ACTION-CATEGORIES 
  '(*A-RISK  *A-CAREER *A-LEARN *A-SELFM *A-PEOPLE *A-OTHER))
    ;;was incl *A-ADMIN

(defparameter  *A-RISK   '(*HS-GPA *CC-GPA  *4YR-GPA))

#|(defparameter *A-ADMIN
  '())|#

(defparameter *A-CAREER
  '(*CAR-PLAN))

(defparameter *A-LEARN
  '(*HRS-CLASS *COMP-MEM))

(defparameter *A-SELFM
  '(*TIME-MAN *NPROC15 *EX-STRESS   *HRS-UNITS *HRS-WORK *COPE))

(defparameter *A-PEOPLE
  '(*MENTR-C *MENTR-P *CLFRN13 *EX-FAMILY-LOAD))

#|(defparameter *A-OTHER
  '())|#


;; RECACADEMICSUCCESSTEXT;

;;ACTIONS TO BE PRINTED OUT

;;SSS WHAT TO DO ABOUT THESE -- USE ONLY FOR STUDENTS
(defparameter *HS-GPA
"  HIGH SCHOOL GRADE AVERAGE
     ==> Your high school grade average indicates that you may not do
         do well in college unless you correct the underlying problems.  ")

(defparameter *CC-GPA
"  COMMUNITY COLLEGE GRADE AVERAGE
     ==> Your community college grade average indicates that you may not
         do well in college unless you correct the underlying problems.  ")

(defparameter *4YR-GPA
"  COLLEGE GRADES
     ==> Your 4 year college grade average indicates that may NOT do well
         here unless you correct the underlying problems.  "
 )

(defparameter *CAR-PLAN
"  CAREER OR MAJOR DECISION-MAKING & PLANNING

     ==> ACTIONS TO HELP MAKE A CAREER DECISION
          * get career counseling and/or attend career workshop
            (FROM Counseling Center or Career Development Center)
          * Make a list what you want out of a career.  List all of the
            CRITERIA (or values) that are important to you in choosing a
            career--all of the pluses & minuses.  Use this to ASK QUESTIONS
            of all information sources.
            (EXAMPLE: independence, income, helping people, science, etc.)
          * GET CAREER INFORMATION from (Career Development Center)
          * INTERVIEW PERSONS IN THE OCCUPATIONS
            1) FACULTY in related areas
            2) PERSONS known by your family & friends
            3) See the WIN--Work Information Network directory
               which lists alumni interested in granting information
               interviews to students. (Career Devel Center)
            4) Call organizations 'cold' and ask for interviews
          * TAKE INTEREST TESTS (Counseling or Career Devel Cntrs)
          * TAKE INTRODUCTORY & OVERVIEW CLASSES IN THE MAJOR
          * TAKE CAREER DECISION CLASSES. "
  )


   ;;*G-LEARNvPERF " "
   ;;*B-FIXED-IQ " " ;;SCORE IN REVERSE
(defparameter *MENTR-P
"  COLLEGE MENTOR OR PERSONAL COUNSELOR
     ==> You might benefit from finding one or more persons with whom you
          can share some of your more personal feelings. If you have more
          difficult issues to discuss, go the your UNIVERSITY COUNSELING
          CENTER.        ")


;;added to ssl2SatisCampusFacFriendsGrdes
(defparameter *CONNECT-COL
"FACULTY MENTOR OR ADVISOR FOR ACADEMIC CONCERNS
     ==> It might really help you if you can find a FACULTY MEMBER,
          ADVISOR, or someone else who can serve as a mentor to you.
      ==> SOME ACTIONS YOU CAN TAKE
          * Get the names & phone numbers of at least 3 students in each
            class with whom you can exchange information about the class.
            call them if you miss a class or need help. Try to get students 
            who are reliable and good students.
          * TALK TO EACH PROFESSOR.  Even if you have to 'invent' questions,
            ask questions sometimes during and especially after class.
            write down when their office hours are and VISIT EACH PROFESSOR
            in his/her office at least twice during the semester.
          *find someone who serves as an academic advisor and go
            to that person regularly with questions.  Preferably, that
            would be a professor in your academic major department.        "
  )


   ;;*EX-HAPPINESS " "
;;moved to help-info for ssl12StdyTmAvail
#|(defparameter *HRS-WORK
"  WORK LOAD
     ==> You may be WORKING or INVOLVED WITH OTHER ACTIVIITES TOO MANY HOURS PER WEEK--with the unit load you are carrying--TO BE SUCCESSFUL IN COLLEGE.  DISCUSS THIS WITH YOUR ADVISOR "
  )|#
;;SSS ADD?
(defparameter *HRS-UNITS
"  SEMESTER UNIT LOAD
     ==> You may be TAKING TOO MANY UNITS TO ALLOW YOU TO BE
          SUCCESSFUL IN COLLEGE--discuss this with your advisor.")

(defparameter *HRS-CLASS
"  TIME STUDYING PER CLASS
     ==> You may not be STUDYING ENOUGH HOURS PER UNIT--generally in
          order to be successful,  students must generally STUDY A MINIMUM 
          OF 1-2 HOURS outside of class FOR EACH HOUR of lecture time.       ")

(defparameter *DROP-CLASSES
" DROPPING CLASSES can not only cost more money and delay graduation, but can also lower your self-confidence and ability to overcome difficulties. Assess why you are dropping classes and make needed changes.")

(defparameter *ATTEND-CLASS
" ATTENDING CLASS is ESSENTIAL to succeed in college.  Though some students can succeed in some classes with poor attendance, that is a poor strategy.  Attending EVERY CLASS is one of the most important strategies for for making good grades.")

(defparameter  *ENV-STUDY
"  STUDY ENVIRONMENT
     ==> You may not have a study environment(S) which is
        1--READILY AVAILABLE
        2--DISTRACTION FREE
        3--PLEASANT ENOUGH--so you look forward to going there.
     * Having this kind of environment is critical for good studying.
     * You may need MORE THAN ONE ENVIRONMENT to cover daytime at school, evenings, and weekends.
     * EXAMPLES: library, lawn, park, car, room with 'do not disturb' sign,
        empty classroom, at workplace, on bus, etc.
     * If you have a problem studying at home, TRY STAYING AT THE UNIVERSITY
        or stopping off on the way home to study.  "
  )

;;RECCOPINGTEXT;

;;XXX
(defparameter  *EX-FAMILY-LOAD
"  FAMILY RESPONSIBILITIES
     ==> WARNING: The amount of time, energy, and emotion that you are
          contributing to your family may significantly affect your
          success in college.
      ==> POSSIBLE ACTIONS MIGHT INCLUDE:
          * FAMILY AGREEMENT.  Make it clear to your family that you
            need 2 hours outside of class to study for every lecture hour
            if you are to succeed in college.  Try getting them to agree
            that they will not interrupt you during certain hours that
            are posted on the refrigerator.
          * POST 'I'M STUDYING' SIGN ON YOUR DOOR.  Get them to agree not
            to interrupt you when this sign is up.
          * Firmly--yet diplomatically--dealing with interruptions and
            requests for help and your time.
          * Studying ELSEWHERE so that you are not available to ask, try
            staying later at the University in the Library until you finish
            most or all that you need to do that day.
          * Reducing your academic or work load.
          * DISCUSSING THIS WITH YOUR ADVISOR OR A COUNSELOR    "
  )

(defparameter *EX-STRESS1
  "  EXTERNAL STRESSORS
     ==> WARNING: You seem to be under a high degree of external pressures
          or stressors.  If you do not deal effectively with these stressors
          such as heavy time demands and adapting to new situations, then
          you may become unhappy and find your academic success threatened.
")

(defparameter *COPE1
"  COPING WITH STRESS AND NEGATIVE FEELINGS--SUCH AS ANXIETY, DEPRESSION, ANGER
     ==> Research has shown that your habits of how you immediately respond
         to negative feelings can have a POWERFUL EFFECT ON YOUR
         OVERALL HAPPINESS AND SUCCESS in college, career, and relationships.
     ==> NEGATIVE COPING PATTERNS: Do you too often use
         a negative coping response to dealing with your negative feelings?
         These include avoiding problems, negative thinking, loosing your
         temper, or addictive behaviors (eating, smoking, drinking, drugs).
         Of these one of the most potentially harmful to success and happiness
         in life is ADDICTIVE COPING BEHAVIORS.  This is one of the best
         predictors of LATER SERIOUS ADDICTIONS.
     ==> if your recognize that you have a problem with negative coping
         behaviors, see a psychologist or counselor at your COUNSELING CENTER")

(defparameter *COPE2
"    ==> POSSIBLE POSITIVE COPING ACTIONS MIGHT INCLUDE
          >> USING GOOD 'COPING' STRATEGIES:
            * TUNE IN TO YOUR FEELINGS WHEN SOMETHING IS BOTHERING YOU--
              DON'T AVOID FACING FEELINGS OR PUT OFF DEALING WITH ISSUES.
            * USE YOUR FEELINGS TO IDENTIFY & FACE UNDERLYING ISSUES that you
              are worried about.
            * PROBLEM-SOLVING--Try to solve problems bothering you as they
              come up.  Get help if necessary.
              1) PRIORITIZING YOUR TASKS--Make a list of what you need
              to do, prioritizing the items, and only focussing on the
              highest priority ones can help planning and feelings.
              Put off the lower priority ones.
              2) BREAK BIG 'OVERWHELMING' TASKS INTO SMALL, 'DO-ABLE' STEPS
              3) SCHEDULE ON YOUR CALENDAR WHEN YOU WILL DO THESE STEPS
              4) GET STARTED & KEEP UPDATING YOUR 'TO DO' LIST
            * MAKE PLANS OF WHAT YOU WILL DO.  Also make BACK-UP PLANS of
              what you will do if your PLAN \"A\" goes wrong.
            * POSITIVE THINKING--Identify negative, self-defeating thoughts
              and try to REPLACE them with realistic constructive thoughts.
              Give yourself 'Pep talks'.
            * PROBLEM-SOLVING ACTIVITIES--Activities which help you reduce
              your problems or worries or make progress toward long-term
              goals can help you feel better.  EXAMPLES: doing a paper you
              are worried about, looking for a job, or doing things to meet
              people.
            * RECREATIONAL & PHYSICAL ACTIVITIES--Having fun and getting
              physical activity increase your happiness and your general
              motivation.  Ironically, keeping your life in balance between
              work and play can help you get more school work done if planned
              well. EXAMPLES: Music, enjoyable movies, dancing, sports,
              walking, bike riding, a drive, shopping, reading, sex, hobbies.
            * TALKING TO OTHERS--Friends, relatives, faculty, and advisors
              can help.  Go to those who seem to help you actually solve the
              problems and make you feel better.  Avoid persons with whom
              you feel worse after being with them. Just socializing and
              having interesting or fun times with people can also help.
       ==> TALK TO A COUNSELOR AT YOUR COUNSELING CENTER  "
  )

(defparameter *COPE
  (format nil "~A~A" *cope1 *cope2))

(defparameter *EX-STRESS
  (format nil "~A~A" *ex-stress1 *cope2))




;;XXX

;; RECFRIENDS

(defparameter *CLFRN13
"  CLOSE FRIENDS
     ==> Having CLOSE FRIENDS you can visit with regularly is very important
          to most people and can make a difference in how happy you are and
          even on your motivation to succeed in college.  You have indicated
          that you may not have enough close friends accessible to you now.
      ==> ACTIONS THAT MAY HELP
          >> JOINING ORGANIZATIONS
             EXAMPLES: Major department organizations, fraternities &
             sororities, sailing club, skiing club, water skiing club,
             sierra club, religious organizatins, ethnic clubs, etc.
          >> BEING MORE OPEN TO MEETING PEOPLE
             * INITIATING--conversations & invitations for a coke, study
               together, dinner, sports or other activities.  Being at
               a large university requires more conscious invitations or
               you will never get to know people outside of class.
               Spending time together and talking about personal interests
               and concerns are keys to making friends.
             * BEING MORE RECEPTIVE TO OTHERS--even people who might be
               a little different than previous friends.
          >> DEVELOPING YOU INTERPERSONAL SKILLS
             * TAKE CLASSES FOCUSSING ON INTERPERSONAL SKILLS
               (YOU WILL BE PROVIDED WITH A LIST OF SOME OF THESE CLASSES
                IN THE CLASS RECOMMENDATION SECTION)
             * PARTICIPATE IN WORKSHOPS OR GROUPS FOCUSSING ON DEVELOPING
               INTEPERSONAL SKILLS in meeting people, assertiveness,
               intimate communication, conflict resolution, etc.
               COUNSELING CENTER
             * READ 'SELF HELP' BOOKS--Go to that section in bookstores.
             * WATCH VIDEOTAPES ON MEETING PEOPLE, DATING, ASSERTIVENESS,
               CONVERSATIONAL SKILLS, & OVERCOMING ANXIETY (COUNSELING CNTR)
             * GET INDIVIDUAL COUNSELING AT COUNSELING CENTER  "
     )

;;xxx
;;  RECTIMEMANAGEMENT;

(defparameter *SDEV14
"     ==>  "
 )

(defparameter *NPROC15
"  PROCRASINATION--PUTTING JOBS OFF UNTIL TOO LATE
     ==>  PROCRASTINATION--You have indicated a possible problem with this
           dreaded affliction that faces many students.  All types of
           procrastination share one thing--THEY ARE MORE UNPLEASANT OR
           ANXIETY PRODUCING than other things to do.  So you do the other
           things--which may be less important but feel better.
       >>> There are several different types of procrastination.  Here are
           a few listed below with actions listed which might help.
           >> PROCRASTINATION DUE TO OVERWHELMING OR CONFUSING TASK
              The problem may be that it is so confusing and large that
              you don't know what to do and become discouraged so you avoid
              it.  Try the following:
              1) BREAK IT INTO SMALL STEPS--you may need help from someone
                 who knows how to do it.  Talk to your instructor or someone
                 else who has done it.  Or try LEARNING ASSISTANCE CENTER.
              2) PUT THEM ON A TIME SCHEDULE.  Work BACKWARD from the due date.
              3) START WITH EASY, DO-ABLE STEPS--try to make them more
                 interesting.
            >> HABITUAL PROCRASTINATION DUE TO LACK OF GOOD TIME MANAGEMENT
               (REFER TO THE SECTION ON TIME MANAGEMENT)
            >> PROCRASTINATION DUE TO UNPLEASANT TASK
               This task may not be difficult, but just unpleasant or boring.
               * POSITIVE THINKING--If you keep telling yourself how much
                 you hate it and how stupid it is, this self-talk just
                 takes away your motivation to get started.  Try thinking of
                 possible positive reasons for doing it.  How can it help
                 you?  How might you use it later?  How important is this
                 to your grades and your educational & career goals?
               * REWARDS--Try making a contract with yourself--or even with
                 another person.  If you get done by a certain time with a
                 certain level of quality, give yourself a reward.  It can
                 be an activity you like, a material thing, or even a
                 routine thing such as eating dinner.  Break big projects
                 that you are avoiding into smaller parts and reward your-
                 self after each step.
       ==> READ BOOKS ON PROCRASTINATION AND TIME MANAGEMENT
       ==> GET HELP AT A LEARNING ASSISTANCE CENTER OR COUNSELING CENTER  "
   )

(defparameter *TIME-MAN

"  MANAGING YOUR TIME--STUDY, WORK, & PLAY
     ==> TIME-MANAGEMENT.  From your answers it appears that you may not
          be using time management practices which can maximize your
          SUCCESS IN COLLEGE, IN YOUR CAREER, AND IN ENJOYING LIFE.
      ==> ACTIONS WHICH MAY HELP
          >> TRY REGULARLY DOING THE FOLLOWING
             1) WRITING SEMESTER OBJECTIVES.  At the beginning of the
                semester, write a list of goals & objectives of what you
                want to accomplish in each area of your life--your college
                work, at work, with family & friends, financially,
                recreation, health & physical activity, etc.
             2) MAKE A TYPICAL WEEK SCHEDULE. On a paper which lists
                all your waking hours 7 days a week, schedule your regular
                activiites.  Include CLASS TIMES, STUDY TIMES, WORK HOURS,
                'TIME OFF' or play time, social times, communiting time, etc.
                Schedule TWO HOURS STUDY PER ONE LECTURE HOUR.  If you have
                15 units, that means 30 hours of study time in addition to
                class time.  Some students will require less--others more.
             3) WEEKLY (or daily) PLANNING SESSIONS.  Review your semester
                objectives and do your weekly planning.
             4) KEEP PRIORITIZED 'TO DO' LISTS ON A CALENDAR
                **ONE METHOD THAT WORKS WELL: Take an 8 1/2 by 11 paper,
                make one column for days of the week and one column for
                EACH CLASS, plus one or more PERSONAL columns.
  EXAMPLE:
          DATE   | ENGLISH 100 |   MATH 113 | HISTORY 172 |  PERSONAL
       --------------------------------------------------------------------
        MON 9-9  | REVIEW-6hrs | PROBS CH-3 |   ----      | B-GET CAR FIXED
       --------------------------------------------------------------------
        TUE 9-10 |  **EXAM**   |   ------   | READ CH-9   | A-LOOK FOR JOB
       --------------------------------------------------------------------
        WED 9-11 |             | READ CH-4  | FINISH CH-9 |
       --------------------------------------------------------------------
             5) USE THIS LIST EVERY DAY BEFORE DOING YOUR ASSIGNMENTS
                * UPDATE IT IMMEDIATELY, WHEN YOU GET A NEW ASSIGMENT
                * When you get behind, rewrite items later.
                * Cross off completed items.
                * When you get an assigment back, write your grade down.
       >> SEE THE WORKSHOP OR VIDEOTAPE ON TIME MANAGEMENT
              (COUNSELING CENTER OR LEARNING ASSISTANCE CENTER) "
)

;;XXX

;; RECLEARNINGSKILLS;

(defparameter *COMP-MEM
"  MEMORY, STUDY EFFICIENCY, & LEARNING SKILLS
     ==> COMPREHENSION & MEMORY PROBLEMS--you may have habits that hurt your ability:
          * To UNDERSTAND DIFFICULT SUBJECTS or
          * REDUCE YOUR ABILITY TO REMEMBER material on exams.
     ==> ACTIONS THAT MAY HELP
          >> Read and study with a much GREATER EMPHASIS ON DEEPER
             UNDERSTANDING OF THE MATERIAL.  This may take longer initially
             but greatly increase both your original understanding and your
             memory for that material.  There is very strong evidence of this.
             * GET A OVERVIEW OF A CHAPTER OR SECTION BEFORE READING IT--
               Keep asking yourself, 'WHAT IS THIS CHAPTER OR SECTION
               ABOUT?'.
             * DO NOT GO TO THE NEXT PARAGRAPH, SECTION, OR CHAPTER
               UNTIL YOU UNDERSTAND THE ONE YOU ARE READING. The best
               students have trouble understanding, but they DO NOT GIVE
               UP--they think about it, look up terms from earlier chapters,
               or seek help if necessary.
             * Focus on UNDERSTANDING THE THEORETICAL PRINCIPLES BEHIND
               the examples your are reading. Ask yourself, 'WHAT ARE THE
               MAIN ABSTRACT OR GENERAL POINTS BEING MADE?'  How do these
               apply to a variety of problems, examples, or situations.
               These are the kind of things professors will test you on.
          >> BEFORE THE TEST REVIEW THE TEXT & ALL NOTES
             * BEFORE EACH CHAPTER & SECTION TEST YOURSELF--Ask yourself,
               'What is this about?' and try to recall all that you can
               from memory.  On areas that you miss or do not understand,
               study them and MARK THEM WITH A DIFFERENT COLOR.
             * REPEAT this 2-4 times for all text chapters, notes, and problems 
              covered by the exam.
           >> Learn the 'language' of the class and use these new terms
              and ideas in talking to classmates, your professor, friends,
              family, or others.
           >> Where possible USE THE NEW KNOWLEDGE IN YOUR DAILY
              LIFE--at least in how you think about things.
       ==> GO TO YOUR LEARNING ASSISTANCE CENTER and ask for help with
           memory, text reading, and/or comprehension "
    )


;;
;; (defparameter 

   ;;*SSN " "
   ;;*FIRST-NAME " "
   ;;*LAST-NAME " "
   ;;*ADDR-STR  " "
   ;;*ADDR-CITY " "
   ;;*ADDR-ZIP " "
   ;;*PHONE " "
   ;;*B-ETHNIC " "
   ;;*B-SEX " "
   ;;*B-AGE " "
   ;;*B-REL-LIVE " "
   ;;*EDUCATION " "
   ;;*ED-COL-TYPE   " "



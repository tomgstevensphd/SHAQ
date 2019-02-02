
;;
;;
;;jjj------------------------------------- FROM  HelpLinks.java --------------------------------
;; package CaresProject2;
#| * Title:        CARES Project
 * Description:  Computer Assessment and Recommendations Expert System
 * Copyright:    Copyright (c) 2000
 * Company:      California State University, Long Beach
 * @author Tom G. Stevens PhD|#

;;DISPLAY CONTENTS
;;(list-file-nested-lists "help-links")
;;(list-all-file-objects "help-links")


;; CLASS VARIABLES

;;CSULB URLs
(defparameter *stevens-url-root   "http://www.csulb.edu/~tstevens/")
(defparameter *sucRoot  "http://www.csulb.edu/~tstevens/success/")
(defparameter *csulbRoot   "http://www.csulb.edu/")
(defparameter *steRoot *stevens-url-root )  ;;

;; SUCCCESS TOP PAGES
(defparameter *hlink-success 
       '("Success Home Page" "success" ""  *sucRoot "index.html" ""))
(defparameter *hlink-helpHome 
       '("HELP HOME PAGE" "helpHome" ""  *sucRoot "help_home.htm" ""))
(defparameter *hlink-caresStart 
       '("SHAQ CARES Start" "caresStart" ""  *sucRoot "Caresl.htm" ""))
(defparameter *caresApplet 
       '("CARES Help Links" "caresApplet" ""  *sucRoot "CaresControll.htm" ""))
    ;;added 9-02
(defparameter *hlink-resultsHelp 
       '("SHAQ Results Help" "resultsHelp" ""  *sucRoot "shaqResultsInfo.htm" ""))
;;SELECTED KEY HELP FILES 2014
(defparameter *stevens-selfhelp-files
  '(
    ;;ACADEMIC-CAREER
    ("academic.htm" "Academic-related help" "Academic and Career Success")
    ("c15-carp.htm" "Career Planning" "How To Choose a Career or College Major: A Step-by-Step Guide ")
    ("time_management.htm" "Time Management" "Time Management")
    ("LEARN.htm" "Better Memory-Understanding" "Improving Memory, Comprehension, and Learning for Better Grades ")
    ("learning_&_study_skills.htm" "Learning-Study Skills"  " ")
    ("concentration.htm" "Concentration" "Improve Your Concentration" )
    ("procrastination.htm" "Procrastination" "Reduce Procrastination")
    ("writing_help.htm" "Writing Help" "Improve Your Writing ")
    ("test_anxiety.htm"  "Performance Anxiety" "Reducing Test or Performance Anxiety")
    ("calculating_gpa_etc.htm" "Calculate GPA"  "Calculating Grade Averages and Deficiencies" )
    ("Learning and Motivation Notes.htm" "Learning-Motivation"  "Learning and Motivation Notes")
    ("learning_disabilities.htm" "Learning Disablabilities?"  "Learning Disabilities")

    ;;SELF-MANAGEMENT-HEALTH (also see book chs -- esp ch9)
    ("life_goals_and_meaning.htm" "Clarify Life Goals-Values" "Clarify your Life Goals and Meaning")
    ("patsm96.htm" "Managing Time-Self"  "How to Get Control of Your Time and Yourself")
    ("wsps.htm" "Problem-Solving"  "Make Better Decisions Using the Systematic Problem-Solving Method ")
    ("headaches.htm"  "Headaches" "Coping with Headaches")
    ("health tips.htm" "Health Habits" "You Can Choose To Be Healthy by Changing Health Habits")
    ("weight_control.htm" "Weight Control" "Help Getting Control of Your Weight")
    ("smoking.htm" "Stop Smoking" "Stop Smoking Help Tips and Links")
    ("motivation_contract.htm" "Use Rewards" "Writing A Motivational Contract")
    ("possi.htm"  "Overwhelming Projects" "Managing and Completing Overwhelming and Complex Tasks and Projects Using POSSI")

    ;;EMOTIONS
    ("anxiety,_anger,_and_depression.htm" "Negative Emotions" "Choose To Be Happy and Overcome Negative Emotions") ;;tips plus Neg emotions start
    ("anxiety.htm" "Anxiety" "Methods for Reducing Anxiety and Stress" ) ;;general start
    ("b-anger.htm" "Anger-Aggression" "Overcome Anger and Aggression" )
    ("depression.htm" "Unhappy-Depressed" "Coping with Unhappiness, Depression, and Low Motivation" )
    ("grief_help.htm"  "Grief-Loss"  "Coping with Grief and Loss: Any kind of significant loss can cause a grief reaction")
    ("hrunway.htm" "Runaway Emotions" "The Runaway Emotions Cycle ")
#|    ;;FROM BOOK (duplicated below)
     ("hhapchkl.htm"  "Happy Checklist" "The Choose To Be Happy Checklist")
    ("ChooseToBeHappy.pdf" "Choose Happy Book" "You Can Choose To Be Happy: Rise Above Anxiety, Anger, and Depression--book free copy" )
    ("my-peek.htm" "RE: Happy Book"  "About the book, You Can Choose To Be Happy: Rise Above Anxiety, Anger, and Depression")
    ("hcontent.htm" "Happy Book Contents" "Contents of You Can Choose To Be Happy Book")
    ("hrunway.htm" "Runaway Emotions" "The Runaway Emotions Cycle ")
    ("hsummary.htm" "You Can Choose To Be Happy: Rise Above, Anxiety, Anger, and Depression Book Summary")|#

    ;;INTERPERSONAL
    ("assert req.html" "Assertive Request" "How to Make an Assertive Request for a Behavior Change" )
    ("assertion_training.htm" "Assertion Training" "Assertion Training") ;;Be More Competent and Confident With Anyone  )
    ("c-rejct.htm" "Lonely or Rejected?" "Beyond Fear of Rejection and Loneliness to Self-Confidence " )
    ("c14-lisn.htm" "Intimacy" "Assertive Communication Skills to Create Understanding and Intimacy" ) ;;list of skills/append in book
    ("conversational_skills.htm" "Meeting, Dating Skills" "Skills For Meeting People, Dating, and 
Developing Intimacy")
    ("overcoming_loneliness.htm" "Lonely?" "Methods of coping with loneliness, fears of rejection, and shyness")

    ("chaprels.htm" "Happy Relationships" "Choose To Be Happy In Relationships" ) ;;a few tips only
    ("developing_intimacy.htm" "Relationship Harmony" "Harmonious Relationships: Achieving Intimacy and Assertiveness" ) ;;a pretty good introduction/overview
    ("domestic_violence.htm" "Domestic Violence" "Domestic Violence")
    ("finding_mr_mrs_right.htm" "Finding Mr-Mrs Right" "Finding Mr or Ms Right: Developing the right dating and intimacy skills and how and where to find the right person")
    ("h-app-e-InterpersonalSkills.htm" "Conflict Resolution" "Assertive Communication Skills To Create Understanding and Intimacy" )
    ("Indep Intimacy vs Domin OH.htm" "Relationship Autonomy"  "Independent Intimacy Versus Dominance and Dependence Tips")


    ;;THERAPY ETC
    ("Cognitive Therapy.htm" "Cognitive Therapy" "Classic Cognitive Therapy Approaches" )
    ("Desensit.htm" "Self-Desensitization""Self-Desensitization Instructions: The most proven method to reduce phobias, anxiety, and fear")
    ("maximizingCounselingCenterImpact.htm"  "Maximizing Counseling and Psychological Services Impact")
 

   ;;THE WEBSITE
       (" index.html" "Dr. Stevens Website" "The You Can Choose To Be Happy Website: Dedicated to enhancing human happiness, self-development, and success")
    ("Iselfhelp.htm" "Dr. Stevens Self-Help"  "Dr. Tom Stevens\' Self-Help Information and Assessments ")
   ("sitemap.html" "Website Map" "Dr. Stevens' Website Map")


   ;;SHAQ
    ("//success//index.htm" "SHAQ" "The Success and Happiness Attributes Questionnaire (SHAQ)")

    ;;FROM BOOK (duplicated below)
     ("hhapchkl.htm"  "Happy Checklist" "The Choose To Be Happy Checklist")
    ("hpreface.htm"  "Book Preface" "Book Preface")
    ("ChooseToBeHappy.pdf" "Happy Book Download" "You Can Choose To Be Happy: Rise Above Anxiety, Anger, and Depression--book free copy" )
    ("my-peek.htm" "About Choose Happy Book"  "About the book, You Can Choose To Be Happy: Rise Above Anxiety, Anger, and Depression")
    ("hcontent.htm" "Happy Book Contents" "Contents of You Can Choose To Be Happy Book")

    ("hcontent-detailed.htm" "Book Detail TOC" "Detailed Contents of You Can Choose To Be Happy Book")
    ("hsummary.htm" "ChooseHappy Book Summary" "You Can Choose To Be Happy: Rise Above, Anxiety, Anger, and Depression Book Summary")
    ("hepilog.htm"  "ChooseHappy Book Epilogue""Book Epilogue")
    ("hauthor.htm" "Author Info"  "Brief Author Information")
    ("hbiblio.htm" "Bibliography"  "Brief Bibliography")
    ("hnegcog.htm" "Neg Cognitive Styles"  "Negative Cognitive Styles")

 ;;above   ("hrunway.htm" "Runaway Emotions" "The Runaway Emotions Cycle ")
    ;;to order a copy
    ("Iorder.htm"  "To Order Book " "To Order You Can Choose To Be Happy Book ")


    ;;BOOK CHAPTERS
    ("h1hap.htm" "Ch1 Happiness"  "Ch-1 Our Search for Happiness and Self-Actualization")
    ("h11intro.htm" "Meaning of Happiness ")
    ("h12maslo.htm" "Self-Actualization" "Maslow's Characteristics of Self-Actualized People ")
    ("h13topgo.htm" "Ultimate Concerns/Top Goals" "Your Ultimate Concerns Control Your Life")
    ("h14ethic.htm" "Ethics of Happiness as Top Goal" " ")
    ("h15b-BookResearch.htm" "Ch1 SHAQ Research" " ")
    ("h15terms.htm" "HQ, Success, Inner Power Meaning" " ")
    ("h16plan.htm" "Book Self-Develop Plan""The \"Choose to be Happy\" self-development plan" )

    ("h2choose.htm" "Ch2 Happiness Routes" "Ch-2 We Can Choose To Be Happy: Internal and External Routes to Happiness " )
    ("h21choic.htm"How Can I Choose To Be Happy?" " " ")
    ("h22route.htm" "Routes To Happiness" " ")

    ("h23explo.htm" "Self-Exploration" "Use Self-Exploration to find your inner sources of unhappiness" )
    ("h24probl.htm" "Ch2pt4 Common Personal Problems" "Where to go for help to common personal problems")
    ("h3hiself.htm" "Ch3 Higher Self" "Ch-3 Develop Your Higher Self: The part that loves you unconditionally")
    ("h31chang.htm" "Is Radical Change Possible?")
    ("h32decis.htm" "Source of Inner Guideance" " ")
    ("h33power.htm" "Inner Power Sources" " ")
    ("h34condu.htm" "Your Inner Conductor" " ")
    ("h35hero.htm" "Your Inner Hero" " ")

    ("h4world.htm" "Ch4 Positive World View" "Ch-4: Create a Positive World by Adopting a Positive World View  ")
    ("h41model.htm" "Power of Our Inner World" " ")
    ("h42chaos.htm" "Chaos vs Order/Progress" " ")
    ("h43dark.htm" "Dealing With Worst Fears" "How do we deal with \"the dark side\" of life and our greatest fears?")
    ("h44defic.htm" "Abundance vs Deficit Motivation")
    ("h45strea.htm" "Stream of Positive/Negative Thoughts " "Our Stream of thoughts control our immediate emotons.")

    ("h5self.htm" "Ch5 Self-Worth" "Ch-5: Develop Your Self-Worth and Self-Confidence")
    ("h51worth.htm" "Unconditional Self-Worth" "What is unconditional self-worth and how do I get it?")
    ("h52image.htm" "Changing Self-Image " " ")
    ("h53accep.htm" "Accepting ALL of Yourself " " ")
    ("h54confi.htm" "How do we get self-confidence? ")

    ("h6intern.htm" "Ch6 Internal Control" "Ch-6: From External to Internal Control of Your Life")
    ("h61asses.htm" "Am I Internal or External Controlled?" " ")
    ("h62sourc.htm" "Sources of I and E Control" " ")
    ("h63barri.htm" "Barriers to Internal Control " " ")

    ("h7hf1.htm" "Ch7 Harmonious Functioning" "Ch-7: Harmonious Functioning Creates Peak Learning, Performance, and Happiness")    
    ("h71what.htm" "Max Learning, Perform, Happiness" "Harmonious Functioning Maximizes Learning, Performance, and Happiness")
    ("h72theor.htm" "Understancing Harmonious Functioning" " ")
    ("h73delay.htm" "HF Increases Success, Health, Self-Esteem")
    ("h83harmo.htm" "MC2 Harmony" "Mental Control Strategy 2: Harmony of Motives")
    ("h84under.htm" "MC3 Understanding" "Mental Control Strategy 3: Understanding the Situation")
    ("h85agoal.htm" "MC4 Goals-Expectations" "Mental Control Strategy 4: Modifying Goals and Expectations")
    ("h85blapd.htm" "LAPDS Methods" "LAPDS Methods to Decrease or Increase Emotional Arousal")
    ("h85cdepr.htm" "Depression Causes" "Causes and Treatments of Depression ")
    ("h86optim.htm" "MC5 Optimism" "Mental Control Strategy 5: Optimism")
    ("h87focus.htm" "MC6 Focus " "Mental Control Strategy 6: Focus")

    ("h9patsm.htm""Ch9 Self-Management" "Ch-9: Create a Better World for Yourself and Others: Get control of your time and yourself ")
    ("h91value.htm" "Satisfaction of values--a key to your happiness")
    ("h92achie.htm" "Achievement" "Achievement")
    ("h93patsm.htm" "O-PATSM Self-Mangmt System" "O-PATSM: A system for managing your time and your life; learn how to accomplish more and have more fun!")


    ;;SHAQ RESEACH INFO
    ("Ch10-SHAQResearchResults.htm""Ch10 Book Conclusions"  "Ch-10: SHAQ Research and Book Conclusions")
    ("h-appF-demog.htm" "Appendix F: SHAQ Demographic Variables Relationship to Emotional and Success Outcome Variables")
    ("h10conclusions.htm"    "Ch-10: Book and Success and Happiness Questionnaire (SHAQ) Research Conclusions. HQ Formula for happiness, depression, anxiety, anger, relationship success, and academic and career success") 
    (" Use of SHAQ to Validate Model of Happiness.pdf" "")
    ("HQandSHAQresearch.htm"  "HQ & SHAQ Research" " ")
    ("h15b-BookResearch.htm" " " " ")
    ("Prof papers.htm" "Dr. Stevens' Papers" "Dr. Tom Stevens' Professional Papers")
    ("reading_help.htm"  "Reading Help" "Reading Help")
    ("rel-suc.htm"  "Relationship Success Factors" " ")
    ("sct-oh.htm"  "Spiritual Cognitive Therapy" "Spiritual Cognitive Therapy Overheads")
    ("self-development.htm"  "Self Development" "Self Development")
    ("self-helpLinks.htm"  "Self-Help Links" "Self-Help Links")
    ("self-motivation.htm"  "Self-Motivation" "Self-Motivation")

    ("sleep_problems.htm"  "Sleep Problems" "Sleep Problems")
    ("SpirituaCogTherOCCDHE-2003.pdf" "Spiritual Cognitive Therapy" "Spiritual Cognitive Therapy for Counselors")
    ("srq-wpa short.htm"  "Stevens Relationship Questionnaire " "Stevens Relationship Questionnaire (SRQ)")
    ("srq95.htm"  "SRQ Paper " "Stevens Relationship Questionnaire (SRQ) Paper")
    ("substance_abuse.htm"  "Substance Abuse" "Substance Abuse")
    ;;12/11/2013  05:13 PM    <DIR>          success


;;end of 2014 help-links
    ))
                 
  


;; ------------------------------- ORIGINAL HELP-LINKS IN LISP FORMAT -------------
;;XXX

#|public class HelpLink
  public HelpLink(String helpLinkName1, String name1, String description1,
    String urlRoot1, String urlFile1, String helpInfo1)
     name = name1;
     helpLinkName = helpLinkName1;
     description = description1;
     urlRoot = urlRoot1;
     urlFile = urlFile1;
     urlString = urlRoot+urlFile;
     helpInfo = helpInfo1;|#



   ;;MORE SPECIFIC SUCCESS HELPLINKS
(defparameter *hlink-academic 
       '("Academic" "academic" ""  *sucRoot "academic.htm" ""))
(defparameter *hlink-anger 
       '("Anger & Aggression" "anger" ""  *sucRoot "anger-aggression.htm" ""))
(defparameter *hlink-assertionTraining 
       '("Assertion Training" "assertionTraining" ""  *sucRoot "assertion_training.htm" ""))
(defparameter *hlink-negEmots 
       '("Negative Emotions" "negEmots" ""  *sucRoot "anxiety,_anger,_and_depression.htm" 
         "Research has shown that overcoming negative emotions using constructive methods is a significant predictor of "
         "success and happiness in many life areas--especially relationships."))
(defparameter *hlink-bookSites 
       '("Book Sites" "bookSites" ""  *sucRoot "book_sites.htm" ""))
(defparameter *hlink-media 
       '("Media" "media" ""  *sucRoot "books,_etc_.htm" ""))
(defparameter *hlink-calcGPA 
       '("Calculating GPA" "calcGPA" ""  *sucRoot "calculating_gpa_etc.htm" ""))
(defparameter *hlink-careerChoice 
       '("Career Choice" "careerChoice" ""  *sucRoot "career_choices.htm" ""))
(defparameter *hlink-cogSci 
       '("Cognitive Science" "cogSci" ""  *sucRoot "cognitive_science.htm" ""))
(defparameter *hlink-computerHelp 
       '("Computer Help" "computerHelp" ""  *sucRoot "computer_help.htm" ""))
(defparameter *hlink-concentrate 
       '("Concentration" "concentrate" ""  *sucRoot "concentration_or_sleep.htm" ""))
(defparameter *hlink-counseling 
       '("Counseling Resources" "counseling" ""  *sucRoot "counseling_resources.htm" ""))
(defparameter *hlink-createCourse 
       '("Creating Courses" "createCourse" ""  *sucRoot "creating_courses.htm" ""))
(defparameter *hlink-lbFresh 
       '("CSULB Freshman" "lbFresh" ""  *sucRoot "csulb_freshman.htm" ""))
(defparameter *hlink-dance 
       '("Dancing" "dance" ""  *sucRoot "dancing.htm" ""))
(defparameter *hlink-anxiety 
       '("Dealing with Anxiety" "anxiety" ""  *sucRoot "dealing_with_anxiety.htm" ""))
(defparameter *hlink-depression 
       '("Dealing with Depression" "depression" ""  *sucRoot "dealing_with_depression.htm" ""))
(defparameter *hlink-intimacy 
       '("Developing Intimacy" "intimacy" ""  *sucRoot "developing_intimacy.htm" ""))
(defparameter *hlink-doItSelf 
       '("Do-it-yourself" "doItSelf" ""  *sucRoot "do-it-yourself.htm" ""))
(defparameter *hlink-domViolence 
       '("Domestic Violence" "domViolence" ""  *sucRoot "domestic_violence.htm" ""))
(defparameter *hlink-stevensLinks 
       '("Dr. Stevens' Links" "stevensLinks" ""  *sucRoot "dr__stevens_links.htm" ""))
(defparameter *hlink-family 
       '("Family Issues" "family" ""  *sucRoot "family_issues.htm" ""))
(defparameter *hlink-finances 
       '("Finances" "finances" ""  *sucRoot "finances.htm" 
        "Learning to manage your money well can help reduce stress and increase your happiness."))
(defparameter *hlink-fitness 
       '("Fitness" "fitness" ""  *sucRoot "fitness.htm" ""))
(defparameter *hlink-faculty 
       '("For faculty" "faculty" ""  *sucRoot "for_faculty_etc_.htm" ""))
(defparameter *hlink-genealogy 
       '("Genealogy" "genealogy" ""  *sucRoot "geneology.htm" ""))
(defparameter *hlink-genHealth 
       '("Maximum Health and Longevity" "genHealth" ""  *sucRoot "physical_health.htm" 
         "You can affect your energy level, your chances of illness, and your longevity through good health habits. "
         "Learn more about how. Also, learn more about specific illnesses through our Internet links."))
(defparameter *hlink-genRef 
       '("general reference" "genRef" ""  *sucRoot "general_reference.htm" ""))
(defparameter *hlink-govSites 
       '("Government Sites" "govSites" ""  *sucRoot "government_sites.htm" ""))
(defparameter *hlink-headaches 
       '("Headaches" "headaches" ""  *sucRoot "headaches.htm" ""))
(defparameter *hlink-happy 
       '("How to be Happy" "happy" ""  *sucRoot "how_to_be_happy.htm" 
        "You can learn how to lead a happy life and overcome negative emotions. "
        "What could be more important than developing your 'Happiness IQ'?"))
(defparameter *hlink-humor 
       '("Humor" "humor" ""  *sucRoot "humor.htm" ""))
(defparameter *hlink-illness 
       '("Illness & Coping" "illness" ""  *sucRoot "illness_&_coping.htm" ""))
(defparameter *hlink-internetServices 
       '("Internet Services" "internetServices" ""  *sucRoot "internet_services.htm" ""))
(defparameter *hlink-intSocial 
       '("Internet Social Opportunities" "intSocial" ""  *sucRoot "internet_social.htm" ""))
(defparameter *hlink-interpersonal 
       '("Interpersonal Relations" "interpersonal" ""  *sucRoot "interpersonal.htm" ""))
(defparameter *hlink-k12Ed 
       '("K-12 Education" "k12Ed" ""  *sucRoot "k-12_education.htm" ""))
(defparameter *hlink-learning 
       '("Learning & Study Skills" "learning" ""  *sucRoot "learning_&_study_skills.htm" 
        "Good learning and study skills make learning more efficient and are at the core of making good grades. "
        "In addition our research showed a correlation of .37 with job status."))
(defparameter *hlink-learnDisable 
       '("Learning Disabilities" "learnDisable" ""  *sucRoot "learning_disabilities.htm" ""))
(defparameter *hlink-legal 
       '("Legal & Consumer" "legal" ""  *sucRoot "legal_consumer.htm" ""))
(defparameter *hlink-probSolve 
       '("Decisions" "probSolve" ""  *sucRoot "life_problems.htm" 
         "Learn a more systematic way to make important life decisions and solve daily problems."))
(defparameter *hlink-meaning 
       '("Values and Meaning" "meaning" ""  *sucRoot "life_goals_and_meaning.htm" ""))
(defparameter *hlink-motivation 
       '("Low Motivation" "motivation" ""  *sucRoot "low_motivation.htm" 
        "Motivation has generally been shown to be one of the most important factors in success in any life area. "
        "You can learn how to improve your motivation."))
(defparameter *hlink-math 
       '("Math Skills Help" "math" ""  *sucRoot "math_help.htm" "Go to our MATH help links page to get math techniques for solving many kinds of problems,\n"
    "to help you improve math study technques, or to help you with math homework."))
(defparameter *hlink-meetPeople 
       '("Meeting People" "meetPeople" ""  *sucRoot "meeting_people.htm" ""))
(defparameter *hlink-mentDisorders 
       '("Mental Disorders" "mentDisorders" ""  *sucRoot "mental_disorders.htm" ""))
(defparameter *hlink-negThink 
       '("Negative Thinking" "negThink" ""  *sucRoot "negative_thinking.htm" 
        "Negative thinking and its roots in a negative world view and/or low self-esteem is a key factor in anxiety, anger, and depression. "
        "Research has shown that discovering the inner causes and replacing negativity with more positive beliefs can lead to a more energetic, caring, and happier life."))
(defparameter *hlink-nutrician 
       '("Nutrician & Cooking" "nutrician" ""  *sucRoot "nutrician_cooking.htm" ""))
(defparameter *hlink-otherCollege 
       '("other college students" "otherCollege" ""  *sucRoot "other_college_students.htm" ""))
(defparameter *hlink-otherCSULB 
       '("For CSULB Students" "otherCSULB" ""  *sucRoot "other_csulb.htm" ""))
(defparameter *hlink-lonely 
       '("Overcoming Loneliness" "lonely" ""  *sucRoot "overcoming_loneliness.htm" ""))
(defparameter *hlink-parenting 
       '("Parenting" "parenting" ""  *sucRoot "parenting.htm" ""))
(defparameter *hlink-probation 
       '("Get Off Probation" "probation" ""  *sucRoot "probation.htm" ""))
(defparameter *hlink-procrastination 
       '("Procrastination" "procrastination" ""  *sucRoot "procrastination.htm" ""))
(defparameter *hlink-professionalLinks 
       '("Professional Organizations" "professionalLinks" ""  *sucRoot "professional_orgs.htm" ""))
(defparameter *hlink-psyRelated 
       '("Psychology-related" "psyRelated" ""  *sucRoot "psychology-related.htm" ""))
(defparameter *hlink-reading 
       '("Reading Help" "reading" ""  *sucRoot "reading_help.htm" ""))
(defparameter *hlink-conflict 
       '("Resolving Conflicts" "conflict" ""  *sucRoot "resolving_conflicts.htm" ""))
(defparameter *hlink-romance 
       '("Romance" "romance" ""  *sucRoot "romance.htm" ""))
(defparameter *hlink-science 
       '("Science Help" "science" ""  *sucRoot "science_help.htm" ""))
(defparameter *hlink-selfDevel 
       '("Self-Development" "selfDevel" ""  *sucRoot "self-development1.htm" ""))
(defparameter *hlink-selfEsteem 
       '("Self-Esteem" "selfEsteem" ""  *sucRoot "self-esteem.htm" ""))
(defparameter *hlink-selfHelpResources 
       '("Self-Help Resources" "selfHelpResources" ""  *sucRoot "Self-help Resources.htm" ""))
(defparameter *hlink-selfMotiv 
       '("Self-Motivation" "selfMotiv" ""  *sucRoot "self-motivation.htm" ""))
(defparameter *hlink-selfRelated 
       '("Self-Related Help" "selfRelated" ""  *sucRoot "self-related.htm" ""))
(defparameter *hlink-sexHealth 
       '("Sexual Health" "sexHealth" ""  *sucRoot "sexual_health.htm" ""))
(defparameter *hlink-smoke 
       '("Smoking Help" "smoke" ""  *sucRoot "smoking.htm" ""))
(defparameter *hlink-spiritual 
       '("Spiritual Life" "spiritual" ""  *sucRoot "spiritual_health.htm" ""))
(defparameter *hlink-sports 
       '("Sports" "sports" ""  *sucRoot "sports.htm" ""))
(defparameter *hlink-studentServices 
       '("Student Services" "studentServices" ""  *sucRoot "student_services.htm" ""))
(defparameter *hlink-substanceAbuse 
       '("Substance Abuse" "substanceAbuse" ""  *sucRoot "substance_abuse.htm" ""))
(defparameter *hlink-capsTapes 
       '("CAPS Self-Help Tapes" "capsTapes" ""  *sucRoot "tapes_etc_.htm" ""))
(defparameter *hlink-testAnxiety 
       '("Test Anxiety" "testAnxiety" ""  *sucRoot "test_anxiety.htm" ""))
(defparameter *hlink-timeManagement 
       '("Time Management" "timeManagement" ""  *sucRoot "time_management.htm" 
        "Good self-management of your time and your life gives you more control and reduces stress."))
(defparameter *hlink-lbTransfer 
       '("For CSULB Transfer Students" "lbTransfer" ""  *sucRoot "transfer_to_csulb.htm" ""))
(defparameter *hlink-travel 
       '("Travel" "travel" ""  *sucRoot "travel.htm" ""))
(defparameter *hlink-univ100 
       '("For UNIV 100 Students" "univ100" ""  *sucRoot "univ_100.htm" ""))
(defparameter *hlink-weight 
       '("Weight Control" "weight" ""  *sucRoot "weight_control.htm" ""))
(defparameter *hlink-writing 
       '("Writing Skills Help" "writing" ""  *sucRoot "writing_help.htm" 
       "Learning to write well is a vital skill in any profession and is a necessity for good grades in many courses.\n"
       "Go to our help links page to find many valuable writing tips and resources for writing assignments of all kinds."))
(defparameter *hlink-genInfo 
       '("General Information" "genInfo" ""  *sucRoot "general_information.htm" ""))
;;(defparameter *hlink- 
;;       '("name" "print" ""  *sucRoot ".htm" ""))
;;(defparameter *hlink- 
;;       '("name" "print" ""  *sucRoot ".htm" ""))
;;(defparameter *hlink- 
;;       '("name" "print" ""  *sucRoot ".htm" ""))
;;(defparameter *hlink- 
;;       '("name" "print" ""  *sucRoot ".htm" ""))
;;(defparameter *hlink- 
;;       '("name" "print" ""  *sucRoot ".htm" ""))

;;FROM TSTEVENS WEB SITE
    ;;top links
(defparameter *hlink-tstevens  
       '("Dr.Tom Stevens' Home Page" "tstevens" ""  *steRoot "index.html" ""))
(defparameter *hlink-myPeek 
       '("Choose To Be Happy Book" "myPeek" ""  *steRoot "my-peek.htm" ""))
(defparameter *hlink-stHapBkContents 
       '("Happiness Book Contents" "stHapBkContents" ""  *steRoot "hcontent.htm" ""))

    ;;MORE SPECIFIC LINKS
(defparameter *hlink-ieControl 
       '("Get Internal Control" "ieControl" ""  *sucRoot "internal control.htm" 
        "Too much dependence upon others or letting others dominate you or your time can lead to low assertiveness, anxiety, and depression. "
        "You can learn to become more internally controlled and assertive."))
(defparameter *hlink-worldView 
       '("Positive World View" "worldView" ""  *steRoot "h4world.htm" ""))
(defparameter *hlink-fears 
       '("Overcome Fears" "fears" ""  *steRoot "h43dark.htm" 
        "Overcoming underlying fears can be a powerful factor for increased self-confidence and happiness."))
(defparameter *hlink-abundance 
       '("Abundance Thinking" "abundance" ""  *steRoot "h44defic.htm" ""))
(defparameter *hlink-chaprels 
       '("Key Relationship Principles" "chaprels" ""  *steRoot "chaprels.htm" ""))
(defparameter *hlink-communicate 
       '("Listening and Assertive Skills" "communicate" ""  *steR
       "Good communication skills are a necessity for good relationships of all types. "
       "Many families are poor models, but you can learn to communicate better."))
(defparameter *hlink-selfWorth 
       '("Unconditional Self-Worth" "selfWorth" ""  *steRoot "h51worth.htm" 
       "Conditional self-love usually increases fears of failure, self-condemnation, susceptibility to external control, anxiety, and depression. "
      "Unconditional self-love tends to increase positive motivation and happiness."))
(defparameter *hlink-selfAccept 
       '("Self-Acceptance and Self-Worth" "selfAccept" ""  *steRoot "h53accep.htm" 
       "Loving and/or at least accepting every aspect of oneself and one's past is an important part of finding inner peace and high degrees of mental health and happiness."))
(defparameter *hlink-selfExplore  
       '("Self-Exploration and Analysis" "selfExplore" ""  *steRoot "h23explo.htm" 
      "Self-exploration and analysis are important ways you can understand what makes you happy and successful. "
      "Many people are afraid to look inside because they fear what they will find; however, most people who do it find it fascinating "
      "and grow stronger from it.  If you have a fear of looking inside or need help, see a competent therapist. Our help link gives a step-by-step method for self-exploration."))




;;(defparameter *hlink- 
;;       '("name" "print" ""  *steRoot ".htm" ""))
;;(defparameter *hlink- 
;;       '("name" "print" ""  *steRoot ".htm" ""))
;;(defparameter *hlink- 
;;       '("name" "print" ""  *steRoot ".htm" ""))
;;(defparameter *hlink- 
;;       '("name" "print" ""  *steRoot ".htm" ""))
;;(defparameter *hlink- 
;;       '("name" "print" ""  *steRoot ".htm" ""))




#|
NOTE: c:\temp\helpLinks.txt has copy of full file names with file extension.
academic
anger-aggression
anxiety,_anger,_and_depression
book_sites
books,_etc_
calculating_gpa_etc
career_choices
Caresl
CaresControll
cognitive_science
cognitive_science
computer_help
concentration_or_sleep
counseling_resources
creating_courses
csulb_freshman
dancing
dealing_with_anxiety
dealing_with_depression
developing_intimacy
do-it-yourself
domestic_violence
dr__stevens_links
family_issues
finances
fitness
for_faculty_etc_
geneology
general_health
general_reference
government_sites
headaches
how_to_be_happy
humor
illness_&_coping
internet_services
internet_social
interpersonal
k-12_education
learning_&_study_skills
legal_consumer
life_problems
life_goals_and_meaning
low_motivation
math_help
meeting_people
mental_disorders
negative_thinking
nutrician_cooking
other_college_students
other_csulb
overcoming_loneliness
parenting
probation
procrastination
professional_orgs
psychology-related
reading_help
resolving_conflicts
Resources by Topics
romance
science_help
self-development1
self-esteem
Self-help Resources
self-motivation
self-related
sexual_health
smoking
spiritual_health
sports
student_services
substance_abuse
tapes_etc_
test_anxiety
time_management
transfer_to_csulb
travel
univ_100
weight_control
writing_help
general_information
|#

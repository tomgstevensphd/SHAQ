
;;Replacement string in Regex Replace has backslash followed by illegal character " at index 0:

;;  (format nil " \"text\") = " \"text\" "
;;  (format nil " ~Ctext~C " #\" #\") = " \"text\" "
;;  (format nil " ~~tstevens")  = " ~tstevens"
;; (format nil "\~tstevens") = "  stevens
;;  (format nil " ~"text~"") = The variable TEXT~ is unbound. 

;;Replacement string in Regex Replace has backslash followed by illegal character " at index 0:

;;  (format nil " \"text\") = " \"text\" "
;;  (format nil " ~Ctext~C " #\" #\") = " \"text\" "
;;  (format nil " ~~tstevens")  = " ~tstevens"
;; (format nil "\~tstevens") = "  stevens
;;  (format nil " ~"text~"") = The variable TEXT~ is unbound. 

(defparameter *shaq-html-results-text
 "
;;
﻿<!DOCTYPE html PUBLIC \"-//W3C//DTD XHTML 1.0 Transitional//EN\" \"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd\">
<html xmlns=\"http://www.w3.org/1999/xhtml\">

<head>
<meta content=\"en-us\" http-equiv=\"Content-Language\" />
<meta content=\"text/html; charset=utf-8\" http-equiv=\"Content-Type\" />
<title>YOUR SHAQ CARES ASSESSMENT RESULTS</title>
<style type=\"text/css\">
.auto-style1 {
	text-align: center;
}
.auto-style2 {
	font-family: \"Times New Roman\", Times, serif;
	font-size: x-small;
}
.my-para-style1 {
	font-family: \"Times New Roman\";
	font-size: small;
	font-weight: normal;
	font-style: normal;
	background-color: #FFFF99;
}
.myH1-title-style {
	text-align: center;
	font-family: \"Times New Roman\", Times, serif;
	font-size: x-large;
	color: #FF0000;
}
.myCenterLargeRedS1 {
	font-family: \"Times New Roman\", Times, serif;
	font-size: large;
	text-align: center;
	color: #FF0000;
}
.myLeftMed {
	text-align: center;
	font-family: \"Times New Roman\", Times, serif;
	font-size: medium;
}
.auto-style7 {
	text-align: left;
}
.myCenterLargeBlack {
	font-family: \"Times New Roman\";
	font-size: medium;
	font-weight: bold;
	font-style: normal;
	text-align: center;
}
.auto-style8 {
	font-family: \"Times New Roman\", Times, serif;
	font-size: small;
}
.auto-style9 {
	font-size: large;
}
.auto-style10 {
	font-size: large;
	color: #FF0000;
}
.auto-style11 {
	font-family: \"Times New Roman\", Times, serif;
	font-size: medium;
}
.auto-style12 {
	color: #FF0000;
}
.auto-style13 {
	text-align: left;
	font-size: small;
}
.auto-style14 {
	font-size: x-small;
}
.auto-style15 {
	font-family: \"Times New Roman\", Times, serif;
	font-size: medium;
	color: #FF0000;
	font-weight: normal;
}
</style>
</head>

<body style=\"background-color: #FFFFCC\">

<h1 class=\"myH1-title-style\" strong=\"\"><br />
YOUR SHAQ CARES ASSESSMENT RESULTS</strong></h1>
<p class=\"myCenterLargeRedS1\"><strong>SHAQ = Success and Happiness Attributes Questionnaire
<br />
CARES = Computer Assessment and Recommendation Expert System</strong></p>
<p class=\"auto-style1\">From:
<a href=\"http://www.csulb.edu/~tstevens\">http://www.csulb.edu/~tstevens</a><br />
<br />
<strong>Tom G. Stevens PhD </strong></strong></p>
<p class=\"auto-style7\">
<br class=\"auto-style2\" />
<span class=\"auto-style8\">Date: </span><br class=\"auto-style8\" />
<span class=\"auto-style8\">Name: Tom Stevens UserID: 333333 Sex: Male Age: 22 Email: 
email </span><br class=\"auto-style8\" />
<span class=\"auto-style8\">Nation: USA ZipCode: 55555 Hours work/week: 22</span></p>
<p class=\"auto-style7\">CONTENTS (Click on link to go it it)<br />
<a href=\"#INFORMATION_ABOUT_YOU_AND_YOUR_SHAQ_PREFERANCES:\">
<span class=\"auto-style14\">INFORMATION_ABOUT_YOU_AND_YOUR_SHAQ_PREFERANCES</span></a><br />
<span class=\"auto-style14\"><a href=\"#PART_1:_YOUR_MAIN_SCALE_RESULTS_SUMMARY\">
PART_1:_YOUR_MAIN_SCALE_RESULTS_SUMMARY</a></span><br />
<a href=\"#SCALE:_sT1:_Higher_Self_and_IntegrityValues-Beliefs_Scale\">
<span class=\"auto-style14\">
SCALE:_sT1:_Higher_Self_and_IntegrityValues-Beliefs_Scale</span></a><br class=\"auto-style14\" />
<a href=\"#PART_2:_YOUR_SCALE,_SUBSCALE,_AND_QUESTION_RESULTS_with_SELF-HELP_INFORMATION\">
<span class=\"auto-style14\">
PART_2:_YOUR_SCALE,_SUBSCALE,_AND_QUESTION_RESULTS_with_SELF-HELP_INFORMATION</span></a><br class=\"auto-style14\" />
<a href=\"#SCALE:_/Unconditional_Worth_of_Self_and_Others_Scale/\">
<span class=\"auto-style14\">SCALE:_\Unconditional_Worth_of_Self_and_Others_Scale\</span></a><br class=\"auto-style14\" />
<a href=\"#SUBSCALE:_/Unconditional_Self-Worth/\"><span class=\"auto-style14\">
SUBSCALE:_\Unconditional_Self-Worth\</span></a><br class=\"auto-style14\" />
<a href=\"#PART_3:_USING_YOUR_SHAQ_RESULTS\"><span class=\"auto-style14\">
PART_3:_USING_YOUR_SHAQ_RESULTS</span></a><br />
<br />
<br />
</p>
<p class=\"auto-style13\"><strong>
<a name=\"INFORMATION_ABOUT_YOU_AND_YOUR_SHAQ_PREFERANCES:\">INFORMATION ABOUT YOU 
AND YOUR SHAQ PREFERANCES:</a></strong><br />
<span class=\"auto-
style2\">--------------------------------------------------------------------------------------------------------------------------------------------
-------</span><br class=\"auto-style2\" />
<span class=\"auto-style2\">&gt;&gt; MULTI-SELECTION QUESTION: \"==&gt; FIND YOUR 
HAPPINESS QUOTIENT (HQ). Research shows that 75% of people's overall happiness score 
is accounted for by the SHAQ HQ score (Stevens, 2009). Your HQ values, beliefs, 
and life skills may be powerful influences on your past, current, and future happiness. 
HQ factors are CONTROLLABLE factors: you can choose to be happy by improving them. 
==&gt; Why are you taking SHAQ?\" </span><br class=\"auto-style2\" />
<span class=\"auto-style2\">INSTRUCTIONS: \"Select ALL that apply to you\"</span><br class=\"auto-style2\" />
<span class=\"auto-style2\">YOUR ANSWER(S) : [ Want a thorough assessment and/or my 
Happiness Quotient (HQ) Score. ] [ Want to understand myself better. ] </span>
<br class=\"auto-style2\" />
<span class=\"auto-
style2\">--------------------------------------------------------------------------------------------------------------------------------------------
-------</span><br class=\"auto-style2\" />
<span class=\"auto-style2\">&gt;&gt; MULTI-SELECTION QUESTION: \"Your Self-Help GOALS: 
* Check ALL that you want SHAQ to help with. * Check an HQ BOX if you want your 
HQ,HAPPINESS QUOTIENT Score. \" </span><br class=\"auto-style2\" />
<span class=\"auto-style2\">INSTRUCTIONS: \"Select ALL that apply to you\"</span><br class=\"auto-style2\" />
<span class=\"auto-style2\">YOUR ANSWER(S) : [ More success and happiness. ] [ Improve 
coping with emotions. ] [ HQ score and complete SHAQ INCLUDING academic success &amp; 
college-major choice (60-110 minutes?). ] </span><br class=\"auto-style2\" />
<span class=\"auto-
style2\">--------------------------------------------------------------------------------------------------------------------------------------------
-------</span><br class=\"auto-style2\" />
<span class=\"auto-style2\">&gt;&gt; MULTI-SELECTION QUESTION: \"Select ALL of the
following that best describe your primary OCCUPATION.=&gt; If you have multiple 
occupations, choose all of them.\" </span><br class=\"auto-style2\" />
<span class=\"auto-style2\">INSTRUCTIONS: \"Select ALL that apply to you\"</span><br class=\"auto-style2\" />
<span class=\"auto-style2\">YOUR ANSWER(S) : [ Student ] [ People-related professional 
] </span><br class=\"auto-style2\" />
<span class=\"auto-
style2\">--------------------------------------------------------------------------------------------------------------------------------------------
-------</span><br class=\"auto-style2\" />
<span class=\"auto-style2\">&gt;&gt; MULTI-SELECTION QUESTION: \"Check ALL languages 
you SPEAK FLUENTLY\" </span><br class=\"auto-style2\" />
<span class=\"auto-style2\">INSTRUCTIONS: \"Select ALL that apply to you\"</span><br class=\"auto-style2\" />
<span class=\"auto-style2\">YOUR ANSWER(S) : [ English ] </span>
<br class=\"auto-style2\" />
<span class=\"auto-
style2\">--------------------------------------------------------------------------------------------------------------------------------------------
-------</span><br class=\"auto-style2\" />
<span class=\"auto-style2\">&gt;&gt; MULTI-SELECTION QUESTION: \"Which is your PRIMARY 
ETHNIC GROUP origin (May choose multiple if mixed ethnicity). \" </span>
<br class=\"auto-style2\" />
<span class=\"auto-style2\">INSTRUCTIONS: \"Select ALL that apply to you\"</span><br class=\"auto-style2\" />
<span class=\"auto-style2\">YOUR ANSWER(S) : [ North America ] </span>
<br class=\"auto-style2\" />
<span class=\"auto-
style2\">--------------------------------------------------------------------------------------------------------------------------------------------
-------</span><br class=\"auto-style2\" />
<span class=\"auto-style2\">&gt;&gt; MULTI-SELECTION QUESTION: \"What is your primary 
RELIGIOUS preference? (May choose multiple.) \" </span>
<br class=\"auto-style2\" />
<span class=\"auto-style2\">INSTRUCTIONS: \"Select ALL that apply to you\"</span><br class=\"auto-style2\" />
<span class=\"auto-style2\">YOUR ANSWER(S) : [ Catholic ] [ Jewish ] </span>
<br class=\"auto-style2\" />
<span class=\"auto-
style2\">--------------------------------------------------------------------------------------------------------------------------------------------
-------</span><br class=\"auto-style2\" />
<span class=\"auto-style2\">&gt;&gt; MULTI-SELECTION QUESTION: \"\" </span>
<br class=\"auto-style2\" />
<span class=\"auto-style2\">INSTRUCTIONS: \"Select ALL that apply to you\"</span><br class=\"auto-style2\" />
<span class=\"auto-style2\">YOUR ANSWER(S) : </span></p>
<p class=\"auto-style1\"><br class=\"auto-style2\" />
<span class=\"auto-
style2\">||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||
|||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||</span><br class=\"auto-style2\" />
<br class=\"auto-style2\" />
<span class=\"auto-style11\">&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;
<a name=\"YOUR_HAPPINESS_QUOTIENT_(HQ)_SCORE_\"><span class=\"auto-style12\">
<strong>YOUR HAPPINESS QUOTIENT (HQ) SCORE</strong></span> </a>&lt;&lt;&lt;&lt;&lt;&lt;&lt;&lt;&lt;&lt;&lt;&lt;&lt;&lt;&lt;&lt;&lt;
</span><br class=\"auto-style11\" />
<span class=\"auto-style11\">==&gt; YOUR HQ SCORE: 109.85 </span>
<span class=\"auto-style8\">[All users average/mean score = 100, StandardDeviation 
(SD) = 10] </span>
</p>
<p class=\"SHAQ-results-style1\"><span class=\"auto-style8\">* HQ MEANING and IMPORTANCE</span><br class=\"auto-style8\" />
<span class=\"auto-style8\">Your results are based upon the data analysis of hundreds 
of persons who have completed SHAQ. Your HQ score is calculated from a composite 
score from 13 SHAQ scales. The underlying regression model based upon these scales 
correlates very well with peoples overall happiness (R = .787) and was able to account 
for a high percentage of the overall happiness score (61.9 %). That means that key 
SHAQ scales accounted for more of the variance than all unknown factors combined 
(38.1%). Uown factors could include genetic factors, circumstantial factors, and 
other unknown personal factors. These 13 SHAQ scales together are very good at summarizing 
the factors that correlate with happiness. Though we cannot say for sure that these 
SHAQ variables cause overall happiness, you can see that it might be a very good 
idea to try to maximize these factors within yourself if you want to maximize your 
happiness in your future. Note that these 13 factors are all primarily determined 
our previous learning and we CAN CHANGE THEM BY NEW LEARNING. The 13 SHAQ scales 
are Self-management skills, Emotional coping skills, Life theme--achievement, Life 
theme--internal values, Self-worth beliefs, Internal control beliefs, Positive world 
view, Low greatest fears, Self-confidence areas, Assertive conflict resolution habits, 
Intimacy habits, Independent intimacy habits Romantic habits </span>
<br class=\"auto-style8\" />
<br class=\"auto-style8\" />
<span class=\"auto-style8\">* HOW YOUR HQ SCORE COMPARES TO OTHERS' HQ SCORES</span><br class=\"auto-style8\" />
<span class=\"auto-style8\">We used IQ (Intelligence Quotient) as our model for computing 
your score. The following list shows first a percentile then a HQ score. For example 
an HQ score of 112 would be about the 80th percentile. That means that about 80% 
of all people completing SHAQ scored below 112. Percentiles with corresponding HQ 
score: 10=88; 20=92; 25=94; 30=95; 40=97; 0=5100; 60=103; 70=105; 75=107; 80=108; 
90=112; 95=116; 99=125 (like IQ, the average/mean = 100 and SD = 10). </span>
<br class=\"auto-style8\" />
<br class=\"auto-style8\" />
<span class=\"auto-style8\">* HOW TO INCREASE YOUR HQ </span>
<br class=\"auto-style8\" />
<span class=\"auto-style8\">Study your results from the 13 scales listed above. Identify 
scales that may be areas of your life that you would like to improve. You can start 
you program to improve your HQ by (1) studying the questions to see why you scored 
the way you did and (2) follow the help links suggested under each scale to read 
more about how you can improve yourself in that area.</span></p>
<h2 class=\"auto-style1\"><br />
<span class=\"auto-
style9\">||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||
||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||</span><br class=\"auto-
style9\" />
<br class=\"auto-style9\" />
<span class=\"auto-style10\">INFORMATION ABOUT YOUR SCALE AND QUESTION RESULTS<br />
</span><br class=\"auto-style9\" />
<span class=\"auto-style9\">Your results are presented in two main parts: <br />
Part 1 lists 
all the main scale scores and <br />
Part 2 lists all the scales, subscales, and question results, along with self-help Internet links.</span><br class=\"auto-style9\" />
<span class=\"auto-
style9\">--------------------------------------------------------------------------------------------------------------------------------------------
-------</span><br class=\"auto-style9\" />
<br class=\"auto-style9\" />
<span class=\"auto-style10\"><a name=\"PART_1:_YOUR_MAIN_SCALE_RESULTS_SUMMARY\">PART 1: YOUR MAIN SCALE RESULTS SUMMARY</a></span><br class=\"auto-
style9\" />
</h2>
<p class=\"SHAQ-results-style1\"><span class=\"auto-style8\"><strong>PART 1: INFORMATION</strong></span><br class=\"auto-style8\" />
<span class=\"auto-style8\">Part 1 gives your score on all main SHAQ scales you completed. 
Each scale consists of questions related to a common </span>
<br class=\"auto-style8\" />
<span class=\"auto-style8\">value or belief area, a life skill area, or other personal 
attribute that research has been shown to relates to success, happiness, </span>
<br class=\"auto-style8\" />
<span class=\"auto-style8\">health, relationship success, or other important life 
outcomes. </span><br class=\"auto-style8\" />
<br class=\"auto-style8\" />
<span class=\"auto-style8\"><strong>Each scale includes most of the following information:</strong></span><strong><br class=\"auto-style8\" />
</strong>
<span class=\"auto-style8\"><strong>1. THE SCALE NAME AND SCALE DESCRIPTION.</strong> Often correlations 
with happiness or other outcomes are given. Correlations range from 0.0 to 1.000; 
.3 to .4 good, .4 to .6 very good, above .6 unusually </span>
<br class=\"auto-style8\" />
<span class=\"auto-style8\">high for this type of research. (Statistical note: correlations 
are significant at .001 level and sample N &gt; 1500.) </span>
<br class=\"auto-style8\" />
<span class=\"auto-style8\"><strong>2. DATA. Your RELATIVE SCORE (which ranges from 0.0 to 
1.000). </strong>Normally the higher the score, the better). The SD (standard deviation) 
is a measure of how much variation you had among the scale items. For example, if 
you answered all the questions the same, the standard deviation would be about 0.0.
</span><br class=\"auto-style8\" />
<span class=\"auto-style8\"><strong>3. GRAPHIC SCORE LINE: </strong>A graph line is drawn that reflects 
your RELATIVE SCORE (see #2). Normally,the longer the graph, the better the score.</span><br class=\"auto-style8\" />
<span class=\"auto-style8\"><strong>4. SUGGESTIONS and HELP-LINKS: </strong>
Information related to you and what you can do to improve yourself in this area, 
and INTERNET LINKS to relevant self-help information.</span></p>
<p class=\"SHAQ-results-style1\"><span class=\"auto-style8\">******************************************** VALUES-THEMES 
CATEGORY ****************************************** </span>
<br class=\"auto-style8\" />
<span class=\"auto-style8\">&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; 
<a name=\"SCALE:_sT1:_Higher_Self_and_IntegrityValues-Beliefs_Scale\">SCALE: \"sT1: 
Higher Self and IntegrityValues-Beliefs Scale\"</a> [Number of Questions: 10]</span><br class=\"auto-style8\" />
<span class=\"auto-style8\">SCALE SCORE==&gt; 1.000 of possible 1.0: </span>
<br class=\"auto-style8\" />
<span class=\"auto-style8\">SCORE GRAPH: 1.000 0 
[||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||] 
Max: 1.0 </span><br class=\"auto-style8\" />
<span class=\"auto-style8\">All Users Average/Mean Score: .749 All Users SD: .140</span><br class=\"auto-style8\" />
<span class=\"auto-style8\">SCALE DESCRIPTION: Values self happiness, integrity, development, 
learning, discipline, self-sufficiency, independence, balance, and strong philosophy 
of life. This scale correlated .380 with overall happiness, .166 with low depression, 
.137 with low anxiety,.327 with low anger/aggression, .327 with the health scale, 
and .351 with overall relationship success, (10 items) INFORMATION AND LINKS, GO 
TO WEB PAGE: (Ch3 Higher Self)(http://www.csulb.edu/~tstevens/h3hiself.htm.lisp)</span><br class=\"auto-style8\" />
<span class=\"auto-style8\">SUGGESTIONS: Valuing happiness, integrity, self-development, 
a strong personal philosophy, and these other values seem to be an important component 
of living a happy life.</span><br class=\"auto-style8\" />
<br class=\"auto-style8\" />
<br class=\"auto-style8\" />
</p>
<h2 class=\"auto-style1\"><br class=\"auto-style2\" />
<strong>
<br class=\"auto-style2\" />
</strong>
<span class=\"auto-
style11\"><strong>|||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||
|||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||
</strong></span><strong><br class=\"auto-style11\" />
<br class=\"auto-style11\" />
</strong>
<span class=\"auto-style15\"><strong>
<a name=\"PART_2:_YOUR_SCALE,_SUBSCALE,_AND_QUESTION_RESULTS_with_SELF-HELP_INFORMATION\">PART 2: YOUR SCALE, SUBSCALE, AND QUESTION RESULTS with 
SELF-HELP INFORMATION</a></strong></span></h2>
<p class=\"SHAQ-results-style1\"><span class=\"auto-style8\"><strong>PART 2: INFORMATION 
</strong></span><br class=\"auto-style8\" /><span class=\"auto-style8\">Part 2 provides a detailed look at your SHAQ results. 
Each subsection contains each of the following:</span><br class=\"auto-style8\" />
<span class=\"auto-style8\"><strong>1. MAIN SCALE RESULTS </strong>(same as in part 1 above--repeated 
for your convenience)</span><br class=\"auto-style8\" /><span class=\"auto-style8\">
<strong>2. SUBSCALE RESULTS. </strong>Many main scales have been subdivided 
further into subscales which provide you with more detailed information about yourself 
related to the larger, more general category represented by the main scale. The 
scores are presented the same way the scale scores are.</span><br class=\"auto-style8\" />
<span class=\"auto-style8\"><strong>3. QUESTION RESULTS. </strong>Your results for every main scale 
question are presented. If the main scale has subscales, the questions are listed 
under the appropriate subscale. The main scale includes all the questions of its' 
subscales. Your Individual Question Results lists every question that you answered. 
They are grouped by </span><br class=\"auto-style8\" /><span class=\"auto-style8\">the scale of which they are members. Questions that are 
not part of any scale are listed separately, and questions that are part of more 
than one scale are listed under each scale. Each question lists essentially the 
same information listed above under the scales (except SD). Each question result 
includes:</span><br class=\"auto-style8\" /><span class=\"auto-style8\">3.1. The exact question you answered.</span><br class=\"auto-style8\" />
<span class=\"auto-style8\">3.2. Your exact answer to the question.</span><br class=\"auto-style8\" />
<span class=\"auto-style8\">3.3. Normal or Reverse Scored? Relative-scores are generally 
scored so that a higher score is more desireable. For example, suppose a question 
read, \"I read poorly.\" and you answered \"I strongly agree.\" Instead of giving 
a high relative score of 1.0 for the answer, SHAQ REVERSES the scoring so that the 
relative score would be a very low score. A note indicates when an item was scored 
in reverse.</span><br class=\"auto-style8\" /><span class=\"auto-style8\"><strong>4. UNDERSTANDING YOUR SCORE. 
</strong>To understand your relative 
score, SD, graphic score, or rating, see \"Part 1: Information\" above (Items 1-4).</span><br class=\"auto-style8\" />
<span class=\"auto-style8\"><strong>5. INTERNET HELP LINK: </strong>Our web site contains brief, specific 
suggestions on how to improve yourself in most of the areas covered by SHAQ as well 
as other Internet self-help links.</span><br class=\"auto-style8\" />
<span class=\"auto-style8\"><strong>==&gt; WE STRONGLY SUGGEST THAT YOU FOLLOW THE INTERNET 
HELP LINKS!</strong></span><br class=\"auto-style8\" /><span class=\"auto-style8\">
<strong>6. SUGGESTIONS: </strong>In some cases, brief suggestions are printed 
out under the scale or question.</span></p>
<p class=\"SHAQ-results-style1\"><span class=\"auto-style8\">*************************************** BELIEFS CATEGORY 
************************************** </span><br class=\"auto-style8\" />
<span class=\"auto-style8\">&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; 
<a name=\"SCALE:_\Unconditional_Worth_of_Self_and_Others_Scale\">SCALE: 
\"Unconditional Worth of Self and Others Scale\"</a> [Number of Questions: 11]</span><br class=\"auto-style8\" />
<span class=\"auto-style8\">SCALE SCORE==&gt; 0.427 of possible 1.0: </span>
<br class=\"auto-style8\" />
<span class=\"auto-style8\">SCORE GRAPH: 0.427 0 
[|||||||||||||||||||||||||||||||||||||||||||.........................................................] 
Max: 1.0 </span><br class=\"auto-style8\" />
<span class=\"auto-style8\">All Users Average/Mean Score: .595 All Users SD: .126</span><br class=\"auto-style8\" />
<span class=\"auto-style8\">SCALE DESCRIPTION: A key HQ scale. Degree to which one 
accepts/values all parts of one's self and others not contingent on others' individual 
characteristics or behaviors. Unconditionally valuing yourself and others means 
that an important part of a person's worth is not dependent upon their success, 
income, appearance, personality, ethnic group, morality, or any other quality. Self-worth 
is the unconditional aspect of self-esteem. It differs from self-confidence which 
is the aspect conditional upon success or other factors. It correlates .391 with 
overall happiness, .283 with low depression, .260 with low anxiety,.300 with low 
anger/aggression. INFORMATION AND LINKS, GO TO WEB PAGE: (Ch5 Self-Worth)(http://www.csulb.edu/~tstevens/h5self.htm.lisp)</span><br class=\"auto-
style8\" />
<span class=\"auto-style8\">SUGGESTIONS: If you didn't score high, then look over 
the individual items and focus on beliefs that may be more negative, lower self-esteem, 
lower self-effectiveness, or lower happiness. Also, check your score and responses 
on the Life Themes scale. Internal mental values can help you achieve greater unconditional 
self-worth. Then go to our help link.</span><br class=\"auto-style8\" />
<br class=\"auto-style8\" />
<span class=\"auto-style8\">========================================== SUBSCALE ==========================================</span><br class=\"auto-
style8\" />
<span class=\"auto-style8\">&gt;&gt;&gt;&gt;&gt;&gt;&gt; 
<a name=\"SUBSCALE:_\Unconditional_Self-Worth\">SUBSCALE: \"Unconditional 
Self-Worth\"</a> \"of SCALE: \"Unconditional Worth of Self and Others\" \" [Number of 
Questions: 6]</span><br class=\"auto-style8\" />
<span class=\"auto-style8\">SCALE SCORE==&gt; 0.100 of possible 1.0: </span>
<br class=\"auto-style8\" />
<span class=\"auto-style8\">SCORE GRAPH: 0.100 0 
[||||||||||..........................................................................................] 
Max: 1.0 </span><br class=\"auto-style8\" />
<span class=\"auto-style8\">All Users Average/Mean Score: .655 All Users SD: 165</span><br class=\"auto-style8\" />
<span class=\"auto-style8\">SUBSCALE DESCRIPTION: Self-worth based upon being human 
and internal qualities--not based upon being liked, strong, the best, living by 
the rules, being a winner, or any other conditional or external factor. (6 items)</span><br class=\"auto-style8\" />
<span class=\"auto-style8\">INFORMATION AND LINKS, GO TO WEB PAGE: (Ch5 Self-Worth)(http://www.csulb.edu/~tstevens/h5self.htm.lisp)</span><br class=
\"auto-style8\" />
<span class=\"auto-style8\">SUGGESTIONS: Improving unconditional self-worth can reduced 
anxiety about what others think of you, about being successful, or many other frequent 
causes of anxiety and depression.</span><br class=\"auto-style8\" />
<br class=\"auto-style8\" />
<br class=\"auto-style8\" />
<span class=\"auto-style8\">==================================== SUBSCALE QUESTION 
RESULTS ===================================</span><br class=\"auto-style8\" />
<span class=\"auto-style8\">&gt;&gt;&gt; QUESTION RESULTS FOR SUBSCALE: Unconditional 
Self-Worth (Subscale of SCALE: Unconditional Worth of Self and Others)</span><br class=\"auto-style8\" />
<span class=\"auto-
style8\">--------------------------------------------------------------------------------------------------------------------------------------------
-------</span><br class=\"auto-style8\" />
<span class=\"auto-style8\">&gt;&gt; QUESTION: \"I should always put other people's 
needs before my own.</span><br class=\"auto-style8\" />
<span class=\"auto-style8\">INSTRUCTIONS: To what degree do you believe the following.\"</span><br class=\"auto-style8\" />
<span class=\"auto-style8\">YOUR ANSWER: The most important belief in my life</span><br class=\"auto-style8\" />
<span class=\"auto-style8\">SCORE=&gt; 1 of possible 10 equals RELATIVE SCORE=&gt; 
0.100 of possible 1.0; SCORED-NORMAL</span><br class=\"auto-style8\" />
<span class=\"auto-style8\">GRAPH of Relative Score: 0.100 0 
[||||||||||..........................................................................................] 
Max: 1.0 </span><br class=\"auto-style8\" />
<span class=\"auto-
style8\">--------------------------------------------------------------------------------------------------------------------------------------------
-------</span><br class=\"auto-style8\" />
<span class=\"auto-style8\">&gt;&gt; QUESTION: \"I should be loved or liked by everyone 
I meet.</span><br class=\"auto-style8\" />
<span class=\"auto-style8\">INSTRUCTIONS: To what degree do you believe the following.\"</span><br class=\"auto-style8\" />
<span class=\"auto-style8\">YOUR ANSWER: The most important belief in my life</span><br class=\"auto-style8\" />
<span class=\"auto-style8\">SCORE=&gt; 1 of possible 10 equals RELATIVE SCORE=&gt; 
0.100 of possible 1.0; SCORED-NORMAL</span><br class=\"auto-style8\" />
<span class=\"auto-style8\">GRAPH of Relative Score: 0.100 0 
[||||||||||..........................................................................................] 
Max: 1.0 </span><br class=\"auto-style8\" />
<span class=\"auto-
style8\">--------------------------------------------------------------------------------------------------------------------------------------------
-------</span><br class=\"auto-style8\" />
<span class=\"auto-style8\">&gt;&gt; QUESTION: \"I am weak and dependent on strong 
people for my happiness.</span><br class=\"auto-style8\" />
<span class=\"auto-style8\">INSTRUCTIONS: To what degree do you believe the following.\"</span><br class=\"auto-style8\" />
<span class=\"auto-style8\">YOUR ANSWER: The most important belief in my life</span><br class=\"auto-style8\" />
<span class=\"auto-style8\">SCORE=&gt; 1 of possible 10 equals RELATIVE SCORE=&gt; 
0.100 of possible 1.0; SCORED-NORMAL</span><br class=\"auto-style8\" />
<span class=\"auto-style8\">GRAPH of Relative Score: 0.100 0 
[||||||||||..........................................................................................] 
Max: 1.0 </span><br class=\"auto-style8\" />
<br class=\"auto-style8\" />
<span class=\"auto-style8\">xxx</span><br class=\"auto-style8\" />
<span class=\"auto-style8\">*************************************** OUTCOME CATEGORY 
************************************** </span><br class=\"auto-style8\" />
<span class=\"auto-style8\">&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; SCALE: 
\"Physical Health Scale\" [Number of Questions: 6]</span><br class=\"auto-style8\" />
<span class=\"auto-style8\">SCALE SCORE==&gt; 0.401 of possible 1.0: </span>
<br class=\"auto-style8\" />
<span class=\"auto-style8\">SCORE GRAPH: 0.401 0 
[||||||||||||||||||||||||||||||||||||||||............................................................] 
Max: 1.0 </span><br class=\"auto-style8\" />
<span class=\"auto-style8\">All Users Average/Mean Score: .702 All Users SD: .133</span><br class=\"auto-style8\" />
<span class=\"auto-style8\">SCALE DESCRIPTION: General indicators of your physical 
health. Frequency of illness, alcohol and drug use, weight, and conditioning estimates. 
(6 items) INFORMATION AND LINKS, GO TO WEB PAGE: (Health Habits)(http://www.csulb.edu/~tstevens/health 
tips.htm.lisp)</span><br class=\"auto-style8\" />
<span class=\"auto-style8\">SUGGESTIONS: Research has conistently shown that your 
daily eating, exercise, addicitve, stress-related, and other health-related habits 
can have a huge effect on your health over a period of years. Moderate to vigorous 
daily exercise, good nutrition, not smoking or using drugs, 7-8 hours sleep/night, 
keeping weight down, having a minimally stressful, happy life, and not engaging 
is physically risky activities have all been shown to be important for long-term 
physical health. If you are unsure of what is healthy exercise, nutrician, etc., 
begin reading to find out. Your life may depend upon it.</span><br class=\"auto-style8\" />
<br class=\"auto-style8\" />
<span class=\"auto-style8\">========================================== SUBSCALE ==========================================</span><br class=\"auto-
style8\" />
<span class=\"auto-style8\">&gt;&gt;&gt;&gt;&gt;&gt;&gt; SUBSCALE: \"Low Addictive 
Habits\" \"of SCALE: \"Physical Health\"\" [Number of Questions: 3]</span><br class=\"auto-style8\" />
<span class=\"auto-style8\">SCALE SCORE==&gt; 0.125 of possible 1.0: </span>
<br class=\"auto-style8\" />
<span class=\"auto-style8\">SCORE GRAPH: 0.125 0 
[||||||||||||........................................................................................] 
Max: 1.0 </span><br class=\"auto-style8\" />
<span class=\"auto-style8\">SUBSCALE DESCRIPTION: Health Outcome Subscale--Low addictive 
habits (smoking, alcohol, drugs). (3 items)</span><br class=\"auto-style8\" />
<span class=\"auto-style8\">INFORMATION AND LINKS, GO TO WEB PAGE: (Substance Abuse 
Stop Smoking Weight Control )(http://www.csulb.edu/~tstevens/substance_abuse.htm.lisp 
http://www.csulb.edu/~tstevens/smoking.htm.lisp http://www.csulb.edu/~tstevens/weight_control.htm.lisp 
http://www.csulb.edu/~tstevens/h31chang.htm.lisp)</span><br class=\"auto-style8\" />
<span class=\"auto-style8\">SUGGESTIONS: Addictive habits such as alcohol or substance 
abuse, smoking, and overeating can have very serious effect on all areas of happiness 
and success. If you have an addictive habit, your first concern should be to make 
eliminating the addictive behavior a top priority in your life. Joining a 12-step 
program or getting professional treatment is almost a necessity for alcohol and 
substance abuse.</span><br class=\"auto-style8\" />
<br class=\"auto-style8\" />
<br class=\"auto-style8\" />
<span class=\"auto-style8\">==================================== SUBSCALE QUESTION 
RESULTS ===================================</span><br class=\"auto-style8\" />
<span class=\"auto-style8\">&gt;&gt;&gt; QUESTION RESULTS FOR SUBSCALE: Low Addictive 
Habits (Subscale of SCALE: Physical Health)</span><br class=\"auto-style8\" />
<span class=\"auto-
style8\">--------------------------------------------------------------------------------------------------------------------------------------------
-------</span><br class=\"auto-style8\" />
<span class=\"auto-style8\">&gt;&gt; QUESTION: \"How many drinks of alcohol do you 
average?</span><br class=\"auto-style8\" />
<span class=\"auto-style8\">INSTRUCTIONS: What best describes your health and your 
habits?\"</span><br class=\"auto-style8\" />
<span class=\"auto-style8\">YOUR ANSWER: More than 10 per day</span><br class=\"auto-style8\" />
<span class=\"auto-style8\">SCORE=&gt; 1 of possible 8 equals RELATIVE SCORE=&gt; 
0.125 of possible 1.0; SCORED-NORMAL</span><br class=\"auto-style8\" />
<span class=\"auto-style8\">GRAPH of Relative Score: 0.125 0 
[||||||||||||........................................................................................] 
Max: 1.0 </span><br class=\"auto-style8\" />
<span class=\"auto-
style8\">--------------------------------------------------------------------------------------------------------------------------------------------
-------</span><br class=\"auto-style8\" />
<span class=\"auto-style8\">&gt;&gt; QUESTION: \"How often do you use cigarettes or 
other tobacco products?</span><br class=\"auto-style8\" />
<span class=\"auto-style8\">INSTRUCTIONS: What best describes your health and your 
habits?\"</span><br class=\"auto-style8\" />
<span class=\"auto-style8\">YOUR ANSWER: More than 10 per day</span><br class=\"auto-style8\" />
<span class=\"auto-style8\">SCORE=&gt; 1 of possible 8 equals RELATIVE SCORE=&gt; 
0.125 of possible 1.0; SCORED-NORMAL</span><br class=\"auto-style8\" />
<span class=\"auto-style8\">GRAPH of Relative Score: 0.125 0 
[||||||||||||........................................................................................] 
Max: 1.0 </span><br class=\"auto-style8\" />
<span class=\"auto-
style8\">--------------------------------------------------------------------------------------------------------------------------------------------
-------</span><br class=\"auto-style8\" />
<span class=\"auto-style8\">&gt;&gt; QUESTION: \"How many often do you take illegal 
drugs on average?</span><br class=\"auto-style8\" />
<span class=\"auto-style8\">INSTRUCTIONS: What best describes your health and your 
habits?\"</span><br class=\"auto-style8\" />
<span class=\"auto-style8\">YOUR ANSWER: More than 10 per day</span><br class=\"auto-style8\" />
<span class=\"auto-style8\">SCORE=&gt; 1 of possible 8 equals RELATIVE SCORE=&gt; 
0.125 of possible 1.0; SCORED-NORMAL</span><br class=\"auto-style8\" />
<span class=\"auto-style8\">GRAPH of Relative Score: 0.125 0 
[||||||||||||........................................................................................] 
Max: 1.0 </span><br class=\"auto-style8\" />
<span class=\"auto-style8\">========================================== SUBSCALE ==========================================</span><br class=\"auto-
style8\" />
<span class=\"auto-style8\">&gt;&gt;&gt;&gt;&gt;&gt;&gt; SUBSCALE: \"Low Illness Frequency\" 
\"of SCALE: \"Physical Health\"\" [Number of Questions: 1]</span><br class=\"auto-style8\" />
<span class=\"auto-style8\">SCALE SCORE==&gt; 0.143 of possible 1.0: </span>
<br class=\"auto-style8\" />
<span class=\"auto-style8\">SCORE GRAPH: 0.143 0 
[||||||||||||||......................................................................................] 
Max: 1.0 </span><br class=\"auto-style8\" />
<span class=\"auto-style8\">SUBSCALE DESCRIPTION: Health Outcomes Subscale Low Frequency 
of Illness. (1 item)</span><br class=\"auto-style8\" />
<span class=\"auto-style8\">INFORMATION AND LINKS, GO TO WEB PAGE: (Health Habits)(http://www.csulb.edu/~tstevens/health 
tips.htm.lisp)</span><br class=\"auto-style8\" />
<span class=\"auto-style8\">SUGGESTIONS: Your health is perhaps your most precious 
resource. Simple differences in people's daily health habits add together in time 
to create many years difference in health and longevity. </span>
<br class=\"auto-style8\" />
<br class=\"auto-style8\" />
<br class=\"auto-style8\" />
<span class=\"auto-style8\">==================================== SUBSCALE QUESTION 
RESULTS ===================================</span><br class=\"auto-style8\" />
<span class=\"auto-style8\">&gt;&gt;&gt; QUESTION RESULTS FOR SUBSCALE: Low Illness 
Frequency (Subscale of SCALE: Physical Health)</span><br class=\"auto-style8\" />
<span class=\"auto-
style8\">--------------------------------------------------------------------------------------------------------------------------------------------
-------</span><br class=\"auto-style8\" />
<span class=\"auto-style8\">&gt;&gt; QUESTION: \"How often did you get sick the past 
3 years?</span><br class=\"auto-style8\" />
<span class=\"auto-style8\">INSTRUCTIONS: What best describes your health and your 
habits?\"</span><br class=\"auto-style8\" />
<span class=\"auto-style8\">YOUR ANSWER: More than 60 days per year</span><br class=\"auto-style8\" />
<span class=\"auto-style8\">SCORE=&gt; 1 of possible 7 equals RELATIVE SCORE=&gt; 
0.143 of possible 1.0; SCORED-NORMAL</span><br class=\"auto-style8\" />
<span class=\"auto-style8\">GRAPH of Relative Score: 0.143 0 
[||||||||||||||......................................................................................] 
Max: 1.0 </span><br class=\"auto-style8\" />
<span class=\"auto-style8\">========================================== SUBSCALE ==========================================</span><br class=\"auto-
style8\" />
<span class=\"auto-style8\">&gt;&gt;&gt;&gt;&gt;&gt;&gt; SUBSCALE: \"Physical Exercise, 
Low Weight\" \"of SCALE: \"Physical Health\"\" [Number of Questions: 2]</span><br class=\"auto-style8\" />
<span class=\"auto-style8\">SCALE SCORE==&gt; 0.944 of possible 1.0: </span>
<br class=\"auto-style8\" />
<span class=\"auto-style8\">SCORE GRAPH: 0.944 0 
[||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||......] 
Max: 1.0 </span><br class=\"auto-style8\" />
<span class=\"auto-style8\">SUBSCALE DESCRIPTION: Health Outcome Subscale--physical 
excercise, low weight.(2 items)</span><br class=\"auto-style8\" />
<span class=\"auto-style8\">INFORMATION AND LINKS, GO TO WEB PAGE: (Weight Control)(http://www.csulb.edu/~tstevens/WEIGHT_CONTROL.HTM.lisp)</span><br 
class=\"auto-style8\" />
<span class=\"auto-style8\">SUGGESTIONS: Adequate physical exercise and health eating 
habits are major causes of health and longevity.</span><br class=\"auto-style2\" />
</p>
<h2 class=\"auto-style1\">
<br class=\"auto-style2\" />
<span class=\"auto-
style2\">||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||
|||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||</span><br class=\"auto-style2\" />
<br class=\"auto-style2\" />
<span class=\"auto-style15\"><strong><a name=\"PART_3:_USING_YOUR_SHAQ_RESULTS\">PART 3: USING YOUR SHAQ RESULTS</a></strong></span></h2>
<p class=\"SHAQ-results-style1\"><span class=\"auto-style8\"><strong>THE VALUE OF YOUR RESULTS: 
</strong>Many of these scales and questions 
have been supported through previous research on more than 6,000 people. Our previous 
research and the research of many others has shown how important life skills (and 
other SHAQ factors) are for achieving success and happiness in college, career, 
marriage and other relationships, and other life areas. This web site has self-help 
information and Internet links for developing life skills that can eventually make 
a big difference in your life.</span><br class=\"auto-style8\" />
<br class=\"auto-style8\" />
<span class=\"auto-style8\"><strong>NOTE FOR COLLEGE STUDENTS: </strong>If you are a college student, 
you have a great opportunity in college to improve life skills while in college. 
College courses, student activities, counseling, workshops, and reading can help 
you develop life skills such as interpersonal skills, self-management skills, and 
thinking skills that can increase your success and </span>
<br class=\"auto-style8\" />
<span class=\"auto-style8\">happiness.</span><br class=\"auto-style8\" />
<br class=\"auto-style8\" />
<span class=\"auto-style8\"><strong>TO DEVELOP YOUR LIFE SKILLS: </strong>Follow our Internet links, 
take courses, get psychological or other) counseling, go to workshops, and read 
related books.</span><br class=\"auto-style8\" />
<br class=\"auto-style8\" />
<span class=\"auto-style8\"><strong>WHAT CHANGES CAN INCREASE YOUR SUCCESS AND HAPPINESS MOST?</strong></span><br class=\"auto-style8\" />
<span class=\"auto-style8\">You may want to focus your efforts on your lowest-scoring 
areas or on areas where you are the most unhappy. </span>
<br class=\"auto-style8\" />
<span class=\"auto-style8\">These are areas that may significantly effect your academic, 
career, relationship, or other personal success and happiness.</span><br class=\"auto-style8\" />
<br class=\"auto-style8\" />
<span class=\"auto-style8\"><strong>We strongly suggest that you:</strong></span><strong><br class=\"auto-style8\" />
</strong>
<span class=\"auto-style8\"><strong>1. GO TO OUR WEB SITE HELP LINKS </strong>provided and examine 
the brief suggestions for each area. </span><br class=\"auto-style8\" />
<span class=\"auto-style8\">Click on the INTERNET HELP LINKS in the LEFT WINDOW (under 
the Results Help) to bring that web page into the RIGHT WINDOW (under the Results 
Text).</span><br class=\"auto-style8\" />
<span class=\"auto-style8\"><strong>2. SET GOALS AND PLAN:</strong> identify one or two areas you think 
will make the greatest impact upon your success and happiness. Set goals for what 
you want to accomplish, use our web site to help you plan, make your plan a priority, 
and GET STARTED. Spending only a little time each week can make a huge difference 
over time. </span><br class=\"auto-style8\" />
<span class=\"auto-style8\">Those little bits of extra effort usually separate the 
most successful and happy from others in the long run.</span><br class=\"auto-style8\" />
<span class=\"auto-style8\"><strong>3. FOLLOW ADDITIONAL LINKS </strong>provided at our web site to 
get direct help.</span><br class=\"auto-style8\" />
<span class=\"auto-style8\"><strong>4. GET ADDITIONAL HELP</strong> from counseling, classes, books, 
or other resources suggested on our web page. We wish you good fortune in your efforts.</span><br class=\"auto-style8\" />
<br class=\"auto-style8\" />
<span class=\"auto-style8\"><strong>IF YOU ARE UNHAPPY WITH YOUR RESULTS:&nbsp;
</strong>SHAQ was designed 
so that only people with extremely high levels of skills or other attributes would 
score high on most scales. The purpose of SHAQ is to help everyone find areas for 
self-improvement--even people with high levels of the attributes. Receiving more 
moderate scores (and many recommendations for improvement) does NOT indicate that 
there is something wrong with you, it is meant only to help you find many possibilities 
to grow and find higher levels of success and happiness.</span><br class=\"auto-style8\" />
<span class=\"auto-style8\">Also, if you are a person who is very self-critical, you 
may have underrated yourself. On the other hand, if you are someone who is somewhat 
self-deceptive and received extremely high scores, you may have overrated yourself.</span><br class=\"auto-style8\" />
<span class=\"auto-
style8\">--------------------------------------------------------------------------------------------------------------------------------------------
-------</span><br class=\"auto-style8\" />
<span class=\"auto-style8\"><strong>LIST OF RECOMMENDED SELF-HELP INTERNET LINKS:</strong></span></p>
<p class=\"auto-style1\">
<br class=\"auto-style2\" />
<span class=\"auto-
style2\">||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||
|||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||</span><br class=\"auto-style2\" />
<br class=\"auto-style2\" />
<span class=\"auto-style11\"><strong>WE WISH YOU A LIFE FILLED WITH HEALTH, SUCCESS, AND HAPPINESS
</strong>
</span><br class=\"auto-style2\" />
<br class=\"auto-style2\" />
<span class=\"auto-style8\">Author of SHAQ: Tom G. Stevens PhD, Psychologist/Professor 
Emeritus, California State University, Long Beach.</span><br class=\"auto-style8\" />
<span class=\"auto-style8\">Visit Dr. Stevens' WEB SITE for 100's of pages of free 
self-help information (including free on-line copy of the book,</span><br class=\"auto-style8\" />
<span class=\"auto-style8\">\"You Can Choose To Be Happy: 'Rise Above' Anxiety, Anger, 
and Depression\" <br />
at: <a href=\"http://www.csulb.edu/~stevens\">http://www.csulb.edu/~stevens</a><br />
EMAIL: tstevens@csulb.edu</span><br class=\"auto-style8\" />
<span class=\"auto-style8\">FEEDBACK: Please send your comments about your experience 
with SHAQ and any <br />
suggestions for improvement.</span><br class=\"auto-style8\" />
<br class=\"auto-style8\" />
<span class=\"auto-style8\">Contact Dr. Stevens for more information about SHAQ or 
to use SHAQ for research or other purposes. <br />
(Normally, use of SHAQ is free with Dr. Stevens' permission for non-profit 
use as long as the author is given proper credit.)</span><br class=\"auto-style8\" />
<span class=\"auto-style8\">(c) 2014 Tom G. Stevens PhD </span>
<br class=\"auto-style2\" />
</p>
</a>

</body>

</html>
")

;;************************ 1 All SHAQ reversed questions.lisp****************

;; CL-USER 113 > (find-matched-questions "reverse" )
;;ALL MATCHED QVARS --scored in reverse
(defparameter *shaq-reverse-scored-qvars '("stuextmo" "stuconfu" "acmtime" "lrnunasn" "lrncolmt" "lrnknowt" "lrnproof" "lrnrread" "lrntestt" "lrntimas" "lrntired" "lrntanxi" "lrnsmart" "lrnaread" "lrnrslow" "copnegth" "copcopea" "copemota" "copavops" "copblame" "copwdrw" "copsmoke" "copdrug" "copnegph" "copselfb" "copavoat" "tbvothfi" "tbvliked" "tbvweak" "tbvbest" "tbventit" "tbvrules" "tbvwinne" "thvselfa" "iecgenet" "iecpeopl" "iecdepen" "ieccofee" "ieccoprb" "wovnfair" "woventit" "wovinjur" "wovhappy" "wovpoor" "wovill" "wovdeath" "wovalone" "wovnolov" "wovliked" "wovperso" "wovprobl" "wovdisco" "wovsucce" "crtklong" "crteweak" "crexaggr" "crmanipu" "crreprai" "crteach" "crangang" "criprais" "crtlkmor" "intcomit" "intwktog" "intknpfe" "inrbealn" "inalcnst" "inrinhap" "innevarg" "inrsaywe" "incomtwo" "inenalon" "inokalon" "inrhatea" "lromtask" "lroftask" "lrmfinal" "lroembar" "lromstro" "lrcarcon" "rhlfreqi" "rhlalcoh" "rhlsmoke" "rhldrugs" "rdepfeel" "rdepthou" "rdepdyss" "rdepmajs" "rdepmeds" "rdepther" "ranxperf" "ranxallt" "ranxpstd" "ranxsoci" "ranxocd" "ranxphob" "ranxpani" "ranxmeds" "ranxther" "rangfeel" "rangyell" "rangdomi" "rangthou" "rangdest" "tb2relat" "tb2punis" "tbv2notr" "tb2groum" "tb2selfm" "tb2gdwrk" "tb2reaso" "tbv2astr"))

;; ALL REVERSE SCORED QUESTION-TEXTS
;;PPRINT VERSION BELOW; LIST-LENGTH = 112
(defparameter *shaq-reverse-scored-quests '("Meeting expectations of my parents or others is the most important reason I am in school."
 "I don't know why I am in school or what I want from an education."
 "My schedule gives me so little time to study that it seriously affects my grades."
 "Do you have a great deal of difficulty understanding assignments and beginning them?"
 "Were you ever made to feel that you were not college material?"
 "Do you feel that you know the material, but are unable to do well on a test?"
 "Would you feel very unsure about turning in a paper that has been proofread by someone else?"
 "Do you usually have to read textbooks 2-3 times or more to make sense of them?"
 "Could you do better on tests if you were allowed a lot more time?"
 "Do you spend too much time on one assignment which causes you to not complete other assignments?"
 "Does reading for one hour make you very tired?"
 "Do you feel more anxiety about tests than most of your classmates?"
 "Do you feel that you're a lot smarter than your grades indicate?"
 "Do you avoid reading so much that it is a big problem?"
 "Do you generally read much slower than other people?"
 "Worry, think negative thoughts, think of problems without thinking of good solutions"
 "Eat."
 "Outwardly express anger by losing your temper, crying, damaging something, or getting even."
 "Avoid thinking about problems by sleeping, keeping busy, or putting it off."
 "Think about whose fault it is, blame yourself, or blame others."
 "Withdraw from others, feel hurt, hold your emotions in, feel sorry for yourself."
 "Smoke a cigarette or tobacco product."
 "Drink an alcoholic beverage, take street drugs, or use prescribed medication."
 "Think of the problem from a very critical or punitive point of view. (Examples: \"I must not make mistakes.\" or \"God may send me to Hell\")"
 "Get angry at yourself, think negative thoughts about yourself, or call yourself names."
 "How often have you missed work, school, or other important activities because you were so upset (anxious, depressed, etc.) that you couldn't cope."
 "I should always put other people's needs before my own."
 "I should be loved or liked by everyone I meet."
 "I am weak and dependent on strong people for my happiness."
 "I must be the best at everything I do."
 "I am entitled to a good life, and people I care for should try to help meet my needs."
 "We must run our lives by rules, and people who break those rules must be severely punished or we will have chaos."
 "There are winners and losers. If you are not strong and take advantage of others before they take advantage of you and you will be a loser."
 "There are one or more aspects (or parts) of myself that I have a hard time accepting or do not like."
 "Genetics and my biology are primarily responsible for my personality and my emotional reactions."
 "People in my life are primarily responsible for my personality and my emotional reactions."
 "I am very dependent upon someone (parent, spouse, etc.) to support or take care of me (emotionally, financially, socially, etc.)."
 "I worry more about caring for someone else's needs or feelings than my own (e.g. family member(s), lover, friend(s), etc.)."
 "I worry a great deal about taking care of someone with a serious problem (e.g. illness, an addiction, a psychological disorder, etc."
 "Life has been extremely unfair to me."
 "I am entitled to the basic necessities of life such as good health care, good income, people caring for me, etc."
 "Someone has injured me so much that it has ruined my life."
 "Fear of not getting a job or career you will be happy with."
 "Fear of not having enough income or money."
 "Fear of having a serious illness."
 "Fear of death."
 "Fear of being alone."
 "Fear of not ever having a good marriage and/or family life."
 "Fear of not having close enough friends."
 "Fear of not becoming the kind of person you want to be."
 "Fear of never overcoming some personal, psychological, or other type of problem."
 "Fear that something about you will be discovered, punished, or made public."
 "Fear of not obtaining the academic or career success you want."
 "One partner usually talks a long time before the other partner has a chance."
 "I do not really feel very comfortable telling my partner about my weaknesses or something I have done wrong."
 "I frequently use words like \"always,\" \"never,\" or other exaggerations."
 "I frequently feel as if my partner is manipulating me or that I am manipulating my partner."
 "Overall, my partner gives me a lot more criticism than praise."
 "If one of us tries to teach the other something, we usually end up having some hard feelings."
 "If my partner gets angry at me, I usually get angry or defensive back."
 "Overall, I criticize my partner quite a bit more than I praise him/her."
 "In our conversations, one partner usually talks quite a bit more than the other."
 "A long term commitment (would) cause(s) me to feel trapped."
 "My partner and I do NOT enjoy working at the same task together."
 "I frequently do not know what my partner really wants or feels."
 "It is NOT ok for one partner to go away for a weekend by themselves to think and be alone."
 "One should always consult with their partner before making even small decisions."
 "The (marriage) relationship is more important than the happiness of one partner."
 "Partners should never argue or disagree if they are to have a truly happy relationship."
 "When I refer to myself, I frequently say 'we' (meaning my partner and I)."
 "One of us frequently worries about whether the other is really committed to this relationship."
 "I find that I can't really enjoy myself very much if I go someplace without my partner."
 "I don't know how I could be happy if I didn't have my partner."
 "I hate to be alone for even a short time."
 "There are certain tasks that are MORE the man's responsibility, such as providing economic support, taking care of the car, etc."
 "There are certain tasks that are MORE the woman's responsibility, such as cleaning house, fixing meals, etc."
 "The man should make the final decision."
 "I would feel embarrassed if my partner did something considered more characteristic of the opposite sex in front of other people (such as a woman working on the car or a man crying)."
 "I want a relationship in which the man is stronger and more decisive than the woman."
 "If the man and woman have a career conflict in which one has to quit his/her job, the woman should be the one to quit."
 "How often did you get sick the past 3 years?"
 "How many drinks of alcohol do you average?"
 "How often do you use cigarettes or other tobacco products?"
 "How many often do you take illegal drugs on average?"
 "I often feel sad, apathetic, listless, or depressed."
 "I often feel worthless, very guilty, or think very negative thoughts about my future, the world, death, or myself."
 "If you have felt depressed and had 2 or more of the following symptoms regularly, how long have you had them?
  * feel sad, unhappy, or depressed most of the day for most days
  * feel low energy, tiredness most of the time
  * have poor concentration and trouble making decisions
  * feel hopeless or doomed
  * have feelings of low self-esteem
  * have poor appetite or overeat
  * sleep too little or too much most of the time."
 "How many times for 2 or more weeks at a time, have you had 5 (or more) of the following symptoms:
 * feel very depressed
 * have markedly less interest or pleasure in almost all daily activities
 * diminished ability to concentrate or think
 * feel worthless and/or very guilty
 * not be able to sleep or sleep much more than usual
 * have very low energy
 * significant weight loss or gain (without effort)
 * move much more slowly (motor retardation) or quickly (agitation) than usual
 * have recurring thoughts of death or suicidal thoughts"
 "Length of time that you have been prescribed medication for depression."
 "Amount of counseling or psychotherapy for depression."
 "Do you feel excessively nervous or anxious when speaking or performing in front of others."
 "Do you worry or feel nervous or anxious almost all of the time?"
 "Do you suffer from post-traumatic stress symptoms?

[Were you ever exposed to some life-threatening, abusive, or shocking traumatic event(s) where you felt extremely frightened and helpless AND still have frequent episodes of flashbacks, numbness, detachment, distress, avoidance of similar situations, or other symptoms that significantly interfere in your life?]"
 "Do you feel very nervous or anxious almost any time you are with other people?"
 "How many times have you had a lasting problem with obsessions or compulsions?

[Obsessions definition: recurring, uncontrollable thoughts or images that you cannot get out of your mind, and cause distress.
Compulsions definition: repeating outward or mental acts (e.g. washing, ordering, checking, praying, counting, repeating words) because one feels compelled to.
Both obsessions and compulsions are usually not realistically connected to any immediate outside problem or are excessive.]"
 "How many genuine phobias do you think you have?

[Phobia definition: repeated intense, excessive, and unreasonable fear or anxiety elicited by a specific object, animal, or situation. Or, do you have a fear of almost all social contact?]"
 "About how many genuine panic attacks have you had during the past 5 years?

[Panic attack definition: four or more of the following symptoms together for 10 minutes or more:
   pounding heart; trembling; trouble breathing; chest pain; feeling dizzy;    feeling detached or numb; plus fears of dying, going crazy, or losing control]"
 "Length of time that you have been prescribed medication for anxiety, obsessions/compulsions, phobias, or panic disorder."
 "Amount of counseling or psychotherapy for excessive stress, anxiety, obsessions/compulsions, phobias, or panic disorder."
 "How often do you get angry and lose your temper?"
 "How often do you yell at someone or call someone hurtful names?"
 "How often do you get someone to do what you want by criticizing them, out-talking them, getting angry, or threatening them."
 "How often do you think about getting even with someone who has hurt you?"
 "How often do you damage objects or property, hurt animals or people purposely, or break the law?"
 "There is no 'absolute' right and wrong or good or bad--it depends upon factors like your point of view, the situation, or one's cultural background."
 "We must run our lives by rules, and people who break those rules must be severely punished or we will have chaos."
 "If a person has a bad environement and/or genetics, they aren't really responsible for what they do."
 "One group in my life (such as my family, nation, culture, or religion) is so important that I would be almost nothing without them. Life wouldn't be worth living."
 "Life has no meaning in itself, any meaning must be supplied by the individual."
 "People can only be completely forgiven and guilt-free if they are good enough (do enough of the right things)."
 "If society would base everything upon reason and science, we would have nothing to worry about."
 "I believe in phenomena like communicating with spirits of the deceased, seeing into the future, and astrology."))



;;; ===================== ORIGINAL OUTPUT ======================
;;NON-PPRINT LIST
#|("Meeting expectations of my parents or others is the most important reason I am in school." "I don't know why I am in school or what I want from an education." "My schedule gives me so little time to study that it seriously affects my grades." "Do you have a great deal of difficulty understanding assignments and beginning them?" "Were you ever made to feel that you were not college material?" "Do you feel that you know the material, but are unable to do well on a test?" "Would you feel very unsure about turning in a paper that has been proofread by someone else?" "Do you usually have to read textbooks 2-3 times or more to make sense of them?" "Could you do better on tests if you were allowed a lot more time?" "Do you spend too much time on one assignment which causes you to not complete other assignments?" "Does reading for one hour make you very tired?" "Do you feel more anxiety about tests than most of your classmates?" "Do you feel that you're a lot smarter than your grades indicate?" "Do you avoid reading so much that it is a big problem?" "Do you generally read much slower than other people?" "Worry, think negative thoughts, think of problems without thinking of good solutions" "Eat." "Outwardly express anger by losing your temper, crying, damaging something, or getting even." "Avoid thinking about problems by sleeping, keeping busy, or putting it off." "Think about whose fault it is, blame yourself, or blame others." "Withdraw from others, feel hurt, hold your emotions in, feel sorry for yourself." "Smoke a cigarette or tobacco product." "Drink an alcoholic beverage, take street drugs, or use prescribed medication." "Think of the problem from a very critical or punitive point of view. (Examples: \"I must not make mistakes.\" or \"God may send me to Hell\")" "Get angry at yourself, think negative thoughts about yourself, or call yourself names." "How often have you missed work, school, or other important activities because you were so upset (anxious, depressed, etc.) that you couldn't cope." "I should always put other people's needs before my own." "I should be loved or liked by everyone I meet." "I am weak and dependent on strong people for my happiness." "I must be the best at everything I do." "I am entitled to a good life, and people I care for should try to help meet my needs." "We must run our lives by rules, and people who break those rules must be severely punished or we will have chaos." "There are winners and losers. If you are not strong and take advantage of others before they take advantage of you and you will be a loser." "There are one or more aspects (or parts) of myself that I have a hard time accepting or do not like." "Genetics and my biology are primarily responsible for my personality and my emotional reactions." "People in my life are primarily responsible for my personality and my emotional reactions." "I am very dependent upon someone (parent, spouse, etc.) to support or take care of me (emotionally, financially, socially, etc.)." "I worry more about caring for someone else's needs or feelings than my own (e.g. family member(s), lover, friend(s), etc.)." "I worry a great deal about taking care of someone with a serious problem (e.g. illness, an addiction, a psychological disorder, etc." "Life has been extremely unfair to me." "I am entitled to the basic necessities of life such as good health care, good income, people caring for me, etc." "Someone has injured me so much that it has ruined my life." "Fear of not getting a job or career you will be happy with." "Fear of not having enough income or money." "Fear of having a serious illness." "Fear of death." "Fear of being alone." "Fear of not ever having a good marriage and/or family life." "Fear of not having close enough friends." "Fear of not becoming the kind of person you want to be." "Fear of never overcoming some personal, psychological, or other type of problem." "Fear that something about you will be discovered, punished, or made public." "Fear of not obtaining the academic or career success you want." "One partner usually talks a long time before the other partner has a chance." "I do not really feel very comfortable telling my partner about my weaknesses or something I have done wrong." "I frequently use words like \"always,\" \"never,\" or other exaggerations." "I frequently feel as if my partner is manipulating me or that I am manipulating my partner." "Overall, my partner gives me a lot more criticism than praise." "If one of us tries to teach the other something, we usually end up having some hard feelings." "If my partner gets angry at me, I usually get angry or defensive back." "Overall, I criticize my partner quite a bit more than I praise him/her." "In our conversations, one partner usually talks quite a bit more than the other." "A long term commitment (would) cause(s) me to feel trapped." "My partner and I do NOT enjoy working at the same task together." "I frequently do not know what my partner really wants or feels." "It is NOT ok for one partner to go away for a weekend by themselves to think and be alone." "One should always consult with their partner before making even small decisions." "The (marriage) relationship is more important than the happiness of one partner." "Partners should never argue or disagree if they are to have a truly happy relationship." "When I refer to myself, I frequently say 'we' (meaning my partner and I)." "One of us frequently worries about whether the other is really committed to this relationship." "I find that I can't really enjoy myself very much if I go someplace without my partner." "I don't know how I could be happy if I didn't have my partner." "I hate to be alone for even a short time." "There are certain tasks that are MORE the man's responsibility, such as providing economic support, taking care of the car, etc." "There are certain tasks that are MORE the woman's responsibility, such as cleaning house, fixing meals, etc." "The man should make the final decision." "I would feel embarrassed if my partner did something considered more characteristic of the opposite sex in front of other people (such as a woman working on the car or a man crying)." "I want a relationship in which the man is stronger and more decisive than the woman." "If the man and woman have a career conflict in which one has to quit his/her job, the woman should be the one to quit." "How often did you get sick the past 3 years?" "How many drinks of alcohol do you average?" "How often do you use cigarettes or other tobacco products?" "How many often do you take illegal drugs on average?" "I often feel sad, apathetic, listless, or depressed." "I often feel worthless, very guilty, or think very negative thoughts about my future, the world, death, or myself." "If you have felt depressed and had 2 or more of the following symptoms regularly, how long have you had them?
  * feel sad, unhappy, or depressed most of the day for most days
  * feel low energy, tiredness most of the time
  * have poor concentration and trouble making decisions
  * feel hopeless or doomed
  * have feelings of low self-esteem
  * have poor appetite or overeat
  * sleep too little or too much most of the time." "How many times for 2 or more weeks at a time, have you had 5 (or more) of the following symptoms:
 * feel very depressed
 * have markedly less interest or pleasure in almost all daily activities
 * diminished ability to concentrate or think
 * feel worthless and/or very guilty
 * not be able to sleep or sleep much more than usual
 * have very low energy
 * significant weight loss or gain (without effort)
 * move much more slowly (motor retardation) or quickly (agitation) than usual
 * have recurring thoughts of death or suicidal thoughts" "Length of time that you have been prescribed medication for depression." "Amount of counseling or psychotherapy for depression." "Do you feel excessively nervous or anxious when speaking or performing in front of others." "Do you worry or feel nervous or anxious almost all of the time?" "Do you suffer from post-traumatic stress symptoms?

[Were you ever exposed to some life-threatening, abusive, or shocking traumatic event(s) where you felt extremely frightened and helpless AND still have frequent episodes of flashbacks, numbness, detachment, distress, avoidance of similar situations, or other symptoms that significantly interfere in your life?]" "Do you feel very nervous or anxious almost any time you are with other people?" "How many times have you had a lasting problem with obsessions or compulsions?

[Obsessions definition: recurring, uncontrollable thoughts or images that you cannot get out of your mind, and cause distress.
Compulsions definition: repeating outward or mental acts (e.g. washing, ordering, checking, praying, counting, repeating words) because one feels compelled to.
Both obsessions and compulsions are usually not realistically connected to any immediate outside problem or are excessive.]" "How many genuine phobias do you think you have?

[Phobia definition: repeated intense, excessive, and unreasonable fear or anxiety elicited by a specific object, animal, or situation. Or, do you have a fear of almost all social contact?]" "About how many genuine panic attacks have you had during the past 5 years?

[Panic attack definition: four or more of the following symptoms together for 10 minutes or more:
   pounding heart; trembling; trouble breathing; chest pain; feeling dizzy;    feeling detached or numb; plus fears of dying, going crazy, or losing control]" "Length of time that you have been prescribed medication for anxiety, obsessions/compulsions, phobias, or panic disorder." "Amount of counseling or psychotherapy for excessive stress, anxiety, obsessions/compulsions, phobias, or panic disorder." "How often do you get angry and lose your temper?" "How often do you yell at someone or call someone hurtful names?" "How often do you get someone to do what you want by criticizing them, out-talking them, getting angry, or threatening them." "How often do you think about getting even with someone who has hurt you?" "How often do you damage objects or property, hurt animals or people purposely, or break the law?" "There is no 'absolute' right and wrong or good or bad--it depends upon factors like your point of view, the situation, or one's cultural background." "We must run our lives by rules, and people who break those rules must be severely punished or we will have chaos." "If a person has a bad environement and/or genetics, they aren't really responsible for what they do." "One group in my life (such as my family, nation, culture, or religion) is so important that I would be almost nothing without them. Life wouldn't be worth living." "Life has no meaning in itself, any meaning must be supplied by the individual." "People can only be completely forgiven and guilt-free if they are good enough (do enough of the right things)." "If society would base everything upon reason and science, we would have nothing to worry about." "I believe in phenomena like communicating with spirits of the deceased, seeing into the future, and astrology."))|#

;;ddd
(defparameter *shaq-reverse-scored-quests-by-cat '((STUFEEL ("Meeting expectations of my parents or others is the most important reason I am in school.")) (STUFEEL ("Meeting expectations of my parents or others is the most important reason I am in school." "I don't know why I am in school or what I want from an education.")) (STUACMOTIV ("My schedule gives me so little time to study that it seriously affects my grades.")) (STU-LRN ("Do you have a great deal of difficulty understanding assignments and beginning them?")) (STU-LRN ("Do you have a great deal of difficulty understanding assignments and beginning them?" "Were you ever made to feel that you were not college material?")) (STU-LRN ("Do you have a great deal of difficulty understanding assignments and beginning them?" "Were you ever made to feel that you were not college material?" "Do you feel that you know the material, but are unable to do well on a test?")) (STU-LRN ("Do you have a great deal of difficulty understanding assignments and beginning them?" "Were you ever made to feel that you were not college material?" "Do you feel that you know the material, but are unable to do well on a test?" "Would you feel very unsure about turning in a paper that has been proofread by someone else?")) (STU-LRN ("Do you have a great deal of difficulty understanding assignments and beginning them?" "Were you ever made to feel that you were not college material?" "Do you feel that you know the material, but are unable to do well on a test?" "Would you feel very unsure about turning in a paper that has been proofread by someone else?" "Do you usually have to read textbooks 2-3 times or more to make sense of them?")) (STU-LRN ("Do you have a great deal of difficulty understanding assignments and beginning them?" "Were you ever made to feel that you were not college material?" "Do you feel that you know the material, but are unable to do well on a test?" "Would you feel very unsure about turning in a paper that has been proofread by someone else?" "Do you usually have to read textbooks 2-3 times or more to make sense of them?" "Could you do better on tests if you were allowed a lot more time?")) (STU-LRN ("Do you have a great deal of difficulty understanding assignments and beginning them?" "Were you ever made to feel that you were not college material?" "Do you feel that you know the material, but are unable to do well on a test?" "Would you feel very unsure about turning in a paper that has been proofread by someone else?" "Do you usually have to read textbooks 2-3 times or more to make sense of them?" "Could you do better on tests if you were allowed a lot more time?" "Do you spend too much time on one assignment which causes you to not complete other assignments?")) (STU-LRN ("Do you have a great deal of difficulty understanding assignments and beginning them?" "Were you ever made to feel that you were not college material?" "Do you feel that you know the material, but are unable to do well on a test?" "Would you feel very unsure about turning in a paper that has been proofread by someone else?" "Do you usually have to read textbooks 2-3 times or more to make sense of them?" "Could you do better on tests if you were allowed a lot more time?" "Do you spend too much time on one assignment which causes you to not complete other assignments?" "Does reading for one hour make you very tired?")) (STU-LRN ("Do you have a great deal of difficulty understanding assignments and beginning them?" "Were you ever made to feel that you were not college material?" "Do you feel that you know the material, but are unable to do well on a test?" "Would you feel very unsure about turning in a paper that has been proofread by someone else?" "Do you usually have to read textbooks 2-3 times or more to make sense of them?" "Could you do better on tests if you were allowed a lot more time?" "Do you spend too much time on one assignment which causes you to not complete other assignments?" "Does reading for one hour make you very tired?" "Do you feel more anxiety about tests than most of your classmates?")) (STU-LRN ("Do you have a great deal of difficulty understanding assignments and beginning them?" "Were you ever made to feel that you were not college material?" "Do you feel that you know the material, but are unable to do well on a test?" "Would you feel very unsure about turning in a paper that has been proofread by someone else?" "Do you usually have to read textbooks 2-3 times or more to make sense of them?" "Could you do better on tests if you were allowed a lot more time?" "Do you spend too much time on one assignment which causes you to not complete other assignments?" "Does reading for one hour make you very tired?" "Do you feel more anxiety about tests than most of your classmates?" "Do you feel that you're a lot smarter than your grades indicate?")) (STU-LRN ("Do you have a great deal of difficulty understanding assignments and beginning them?" "Were you ever made to feel that you were not college material?" "Do you feel that you know the material, but are unable to do well on a test?" "Would you feel very unsure about turning in a paper that has been proofread by someone else?" "Do you usually have to read textbooks 2-3 times or more to make sense of them?" "Could you do better on tests if you were allowed a lot more time?" "Do you spend too much time on one assignment which causes you to not complete other assignments?" "Does reading for one hour make you very tired?" "Do you feel more anxiety about tests than most of your classmates?" "Do you feel that you're a lot smarter than your grades indicate?" "Do you avoid reading so much that it is a big problem?")) (STU-LRN ("Do you have a great deal of difficulty understanding assignments and beginning them?" "Were you ever made to feel that you were not college material?" "Do you feel that you know the material, but are unable to do well on a test?" "Would you feel very unsure about turning in a paper that has been proofread by someone else?" "Do you usually have to read textbooks 2-3 times or more to make sense of them?" "Could you do better on tests if you were allowed a lot more time?" "Do you spend too much time on one assignment which causes you to not complete other assignments?" "Does reading for one hour make you very tired?" "Do you feel more anxiety about tests than most of your classmates?" "Do you feel that you're a lot smarter than your grades indicate?" "Do you avoid reading so much that it is a big problem?" "Do you generally read much slower than other people?")) (COPE ("Worry, think negative thoughts, think of problems without thinking of good solutions")) (COPE ("Worry, think negative thoughts, think of problems without thinking of good solutions" "Eat.")) (COPE ("Worry, think negative thoughts, think of problems without thinking of good solutions" "Eat." "Outwardly express anger by losing your temper, crying, damaging something, or getting even.")) (COPE ("Worry, think negative thoughts, think of problems without thinking of good solutions" "Eat." "Outwardly express anger by losing your temper, crying, damaging something, or getting even." "Avoid thinking about problems by sleeping, keeping busy, or putting it off.")) (COPE ("Worry, think negative thoughts, think of problems without thinking of good solutions" "Eat." "Outwardly express anger by losing your temper, crying, damaging something, or getting even." "Avoid thinking about problems by sleeping, keeping busy, or putting it off." "Think about whose fault it is, blame yourself, or blame others.")) (COPE ("Worry, think negative thoughts, think of problems without thinking of good solutions" "Eat." "Outwardly express anger by losing your temper, crying, damaging something, or getting even." "Avoid thinking about problems by sleeping, keeping busy, or putting it off." "Think about whose fault it is, blame yourself, or blame others." "Withdraw from others, feel hurt, hold your emotions in, feel sorry for yourself.")) (COPE ("Worry, think negative thoughts, think of problems without thinking of good solutions" "Eat." "Outwardly express anger by losing your temper, crying, damaging something, or getting even." "Avoid thinking about problems by sleeping, keeping busy, or putting it off." "Think about whose fault it is, blame yourself, or blame others." "Withdraw from others, feel hurt, hold your emotions in, feel sorry for yourself." "Smoke a cigarette or tobacco product.")) (COPE ("Worry, think negative thoughts, think of problems without thinking of good solutions" "Eat." "Outwardly express anger by losing your temper, crying, damaging something, or getting even." "Avoid thinking about problems by sleeping, keeping busy, or putting it off." "Think about whose fault it is, blame yourself, or blame others." "Withdraw from others, feel hurt, hold your emotions in, feel sorry for yourself." "Smoke a cigarette or tobacco product." "Drink an alcoholic beverage, take street drugs, or use prescribed medication.")) (COPE ("Worry, think negative thoughts, think of problems without thinking of good solutions" "Eat." "Outwardly express anger by losing your temper, crying, damaging something, or getting even." "Avoid thinking about problems by sleeping, keeping busy, or putting it off." "Think about whose fault it is, blame yourself, or blame others." "Withdraw from others, feel hurt, hold your emotions in, feel sorry for yourself." "Smoke a cigarette or tobacco product." "Drink an alcoholic beverage, take street drugs, or use prescribed medication." "Think of the problem from a very critical or punitive point of view. (Examples: \"I must not make mistakes.\" or \"God may send me to Hell\")")) (COPE ("Worry, think negative thoughts, think of problems without thinking of good solutions" "Eat." "Outwardly express anger by losing your temper, crying, damaging something, or getting even." "Avoid thinking about problems by sleeping, keeping busy, or putting it off." "Think about whose fault it is, blame yourself, or blame others." "Withdraw from others, feel hurt, hold your emotions in, feel sorry for yourself." "Smoke a cigarette or tobacco product." "Drink an alcoholic beverage, take street drugs, or use prescribed medication." "Think of the problem from a very critical or punitive point of view. (Examples: \"I must not make mistakes.\" or \"God may send me to Hell\")" "Get angry at yourself, think negative thoughts about yourself, or call yourself names.")) (COPE ("Worry, think negative thoughts, think of problems without thinking of good solutions" "Eat." "Outwardly express anger by losing your temper, crying, damaging something, or getting even." "Avoid thinking about problems by sleeping, keeping busy, or putting it off." "Think about whose fault it is, blame yourself, or blame others." "Withdraw from others, feel hurt, hold your emotions in, feel sorry for yourself." "Smoke a cigarette or tobacco product." "Drink an alcoholic beverage, take street drugs, or use prescribed medication." "Think of the problem from a very critical or punitive point of view. (Examples: \"I must not make mistakes.\" or \"God may send me to Hell\")" "Get angry at yourself, think negative thoughts about yourself, or call yourself names." "How often have you missed work, school, or other important activities because you were so upset (anxious, depressed, etc.) that you couldn't cope.")) (TBV ("I should always put other people's needs before my own.")) (TBV ("I should always put other people's needs before my own." "I should be loved or liked by everyone I meet.")) (TBV ("I should always put other people's needs before my own." "I should be loved or liked by everyone I meet." "I am weak and dependent on strong people for my happiness.")) (TBV ("I should always put other people's needs before my own." "I should be loved or liked by everyone I meet." "I am weak and dependent on strong people for my happiness." "I must be the best at everything I do.")) (TBV ("I should always put other people's needs before my own." "I should be loved or liked by everyone I meet." "I am weak and dependent on strong people for my happiness." "I must be the best at everything I do." "I am entitled to a good life, and people I care for should try to help meet my needs.")) (TBV ("I should always put other people's needs before my own." "I should be loved or liked by everyone I meet." "I am weak and dependent on strong people for my happiness." "I must be the best at everything I do." "I am entitled to a good life, and people I care for should try to help meet my needs." "We must run our lives by rules, and people who break those rules must be severely punished or we will have chaos.")) (TBV ("I should always put other people's needs before my own." "I should be loved or liked by everyone I meet." "I am weak and dependent on strong people for my happiness." "I must be the best at everything I do." "I am entitled to a good life, and people I care for should try to help meet my needs." "We must run our lives by rules, and people who break those rules must be severely punished or we will have chaos." "There are winners and losers. If you are not strong and take advantage of others before they take advantage of you and you will be a loser.")) (TBV ("I should always put other people's needs before my own." "I should be loved or liked by everyone I meet." "I am weak and dependent on strong people for my happiness." "I must be the best at everything I do." "I am entitled to a good life, and people I care for should try to help meet my needs." "We must run our lives by rules, and people who break those rules must be severely punished or we will have chaos." "There are winners and losers. If you are not strong and take advantage of others before they take advantage of you and you will be a loser." "There are one or more aspects (or parts) of myself that I have a hard time accepting or do not like.")) (IE ("Genetics and my biology are primarily responsible for my personality and my emotional reactions.")) (IE ("Genetics and my biology are primarily responsible for my personality and my emotional reactions." "People in my life are primarily responsible for my personality and my emotional reactions.")) (IE ("Genetics and my biology are primarily responsible for my personality and my emotional reactions." "People in my life are primarily responsible for my personality and my emotional reactions." "I am very dependent upon someone (parent, spouse, etc.) to support or take care of me (emotionally, financially, socially, etc.).")) (IE ("Genetics and my biology are primarily responsible for my personality and my emotional reactions." "People in my life are primarily responsible for my personality and my emotional reactions." "I am very dependent upon someone (parent, spouse, etc.) to support or take care of me (emotionally, financially, socially, etc.)." "I worry more about caring for someone else's needs or feelings than my own (e.g. family member(s), lover, friend(s), etc.).")) (IE ("Genetics and my biology are primarily responsible for my personality and my emotional reactions." "People in my life are primarily responsible for my personality and my emotional reactions." "I am very dependent upon someone (parent, spouse, etc.) to support or take care of me (emotionally, financially, socially, etc.)." "I worry more about caring for someone else's needs or feelings than my own (e.g. family member(s), lover, friend(s), etc.)." "I worry a great deal about taking care of someone with a serious problem (e.g. illness, an addiction, a psychological disorder, etc.")) (WORLDVIEW ("Life has been extremely unfair to me.")) (WORLDVIEW ("Life has been extremely unfair to me." "I am entitled to the basic necessities of life such as good health care, good income, people caring for me, etc.")) (WORLDVIEW ("Life has been extremely unfair to me." "I am entitled to the basic necessities of life such as good health care, good income, people caring for me, etc." "Someone has injured me so much that it has ruined my life.")) (WORLDVIEW ("Life has been extremely unfair to me." "I am entitled to the basic necessities of life such as good health care, good income, people caring for me, etc." "Someone has injured me so much that it has ruined my life." "Fear of not getting a job or career you will be happy with.")) (WORLDVIEW ("Life has been extremely unfair to me." "I am entitled to the basic necessities of life such as good health care, good income, people caring for me, etc." "Someone has injured me so much that it has ruined my life." "Fear of not getting a job or career you will be happy with." "Fear of not having enough income or money.")) (WORLDVIEW ("Life has been extremely unfair to me." "I am entitled to the basic necessities of life such as good health care, good income, people caring for me, etc." "Someone has injured me so much that it has ruined my life." "Fear of not getting a job or career you will be happy with." "Fear of not having enough income or money." "Fear of having a serious illness.")) (WORLDVIEW ("Life has been extremely unfair to me." "I am entitled to the basic necessities of life such as good health care, good income, people caring for me, etc." "Someone has injured me so much that it has ruined my life." "Fear of not getting a job or career you will be happy with." "Fear of not having enough income or money." "Fear of having a serious illness." "Fear of death.")) (WORLDVIEW ("Life has been extremely unfair to me." "I am entitled to the basic necessities of life such as good health care, good income, people caring for me, etc." "Someone has injured me so much that it has ruined my life." "Fear of not getting a job or career you will be happy with." "Fear of not having enough income or money." "Fear of having a serious illness." "Fear of death." "Fear of being alone.")) (WORLDVIEW ("Life has been extremely unfair to me." "I am entitled to the basic necessities of life such as good health care, good income, people caring for me, etc." "Someone has injured me so much that it has ruined my life." "Fear of not getting a job or career you will be happy with." "Fear of not having enough income or money." "Fear of having a serious illness." "Fear of death." "Fear of being alone." "Fear of not ever having a good marriage and/or family life.")) (WORLDVIEW ("Life has been extremely unfair to me." "I am entitled to the basic necessities of life such as good health care, good income, people caring for me, etc." "Someone has injured me so much that it has ruined my life." "Fear of not getting a job or career you will be happy with." "Fear of not having enough income or money." "Fear of having a serious illness." "Fear of death." "Fear of being alone." "Fear of not ever having a good marriage and/or family life." "Fear of not having close enough friends.")) (WORLDVIEW ("Life has been extremely unfair to me." "I am entitled to the basic necessities of life such as good health care, good income, people caring for me, etc." "Someone has injured me so much that it has ruined my life." "Fear of not getting a job or career you will be happy with." "Fear of not having enough income or money." "Fear of having a serious illness." "Fear of death." "Fear of being alone." "Fear of not ever having a good marriage and/or family life." "Fear of not having close enough friends." "Fear of not becoming the kind of person you want to be.")) (WORLDVIEW ("Life has been extremely unfair to me." "I am entitled to the basic necessities of life such as good health care, good income, people caring for me, etc." "Someone has injured me so much that it has ruined my life." "Fear of not getting a job or career you will be happy with." "Fear of not having enough income or money." "Fear of having a serious illness." "Fear of death." "Fear of being alone." "Fear of not ever having a good marriage and/or family life." "Fear of not having close enough friends." "Fear of not becoming the kind of person you want to be." "Fear of never overcoming some personal, psychological, or other type of problem.")) (WORLDVIEW ("Life has been extremely unfair to me." "I am entitled to the basic necessities of life such as good health care, good income, people caring for me, etc." "Someone has injured me so much that it has ruined my life." "Fear of not getting a job or career you will be happy with." "Fear of not having enough income or money." "Fear of having a serious illness." "Fear of death." "Fear of being alone." "Fear of not ever having a good marriage and/or family life." "Fear of not having close enough friends." "Fear of not becoming the kind of person you want to be." "Fear of never overcoming some personal, psychological, or other type of problem." "Fear that something about you will be discovered, punished, or made public.")) (WORLDVIEW ("Life has been extremely unfair to me." "I am entitled to the basic necessities of life such as good health care, good income, people caring for me, etc." "Someone has injured me so much that it has ruined my life." "Fear of not getting a job or career you will be happy with." "Fear of not having enough income or money." "Fear of having a serious illness." "Fear of death." "Fear of being alone." "Fear of not ever having a good marriage and/or family life." "Fear of not having close enough friends." "Fear of not becoming the kind of person you want to be." "Fear of never overcoming some personal, psychological, or other type of problem." "Fear that something about you will be discovered, punished, or made public." "Fear of not obtaining the academic or career success you want.")) (ASSERTCR ("One partner usually talks a long time before the other partner has a chance.")) (ASSERTCR ("One partner usually talks a long time before the other partner has a chance." "I do not really feel very comfortable telling my partner about my weaknesses or something I have done wrong.")) (ASSERTCR ("One partner usually talks a long time before the other partner has a chance." "I do not really feel very comfortable telling my partner about my weaknesses or something I have done wrong." "I frequently use words like \"always,\" \"never,\" or other exaggerations.")) (ASSERTCR ("One partner usually talks a long time before the other partner has a chance." "I do not really feel very comfortable telling my partner about my weaknesses or something I have done wrong." "I frequently use words like \"always,\" \"never,\" or other exaggerations." "I frequently feel as if my partner is manipulating me or that I am manipulating my partner.")) (ASSERTCR ("One partner usually talks a long time before the other partner has a chance." "I do not really feel very comfortable telling my partner about my weaknesses or something I have done wrong." "I frequently use words like \"always,\" \"never,\" or other exaggerations." "I frequently feel as if my partner is manipulating me or that I am manipulating my partner." "Overall, my partner gives me a lot more criticism than praise.")) (ASSERTCR ("One partner usually talks a long time before the other partner has a chance." "I do not really feel very comfortable telling my partner about my weaknesses or something I have done wrong." "I frequently use words like \"always,\" \"never,\" or other exaggerations." "I frequently feel as if my partner is manipulating me or that I am manipulating my partner." "Overall, my partner gives me a lot more criticism than praise." "If one of us tries to teach the other something, we usually end up having some hard feelings.")) (ASSERTCR ("One partner usually talks a long time before the other partner has a chance." "I do not really feel very comfortable telling my partner about my weaknesses or something I have done wrong." "I frequently use words like \"always,\" \"never,\" or other exaggerations." "I frequently feel as if my partner is manipulating me or that I am manipulating my partner." "Overall, my partner gives me a lot more criticism than praise." "If one of us tries to teach the other something, we usually end up having some hard feelings." "If my partner gets angry at me, I usually get angry or defensive back.")) (ASSERTCR ("One partner usually talks a long time before the other partner has a chance." "I do not really feel very comfortable telling my partner about my weaknesses or something I have done wrong." "I frequently use words like \"always,\" \"never,\" or other exaggerations." "I frequently feel as if my partner is manipulating me or that I am manipulating my partner." "Overall, my partner gives me a lot more criticism than praise." "If one of us tries to teach the other something, we usually end up having some hard feelings." "If my partner gets angry at me, I usually get angry or defensive back." "Overall, I criticize my partner quite a bit more than I praise him/her.")) (ASSERTCR ("One partner usually talks a long time before the other partner has a chance." "I do not really feel very comfortable telling my partner about my weaknesses or something I have done wrong." "I frequently use words like \"always,\" \"never,\" or other exaggerations." "I frequently feel as if my partner is manipulating me or that I am manipulating my partner." "Overall, my partner gives me a lot more criticism than praise." "If one of us tries to teach the other something, we usually end up having some hard feelings." "If my partner gets angry at me, I usually get angry or defensive back." "Overall, I criticize my partner quite a bit more than I praise him/her." "In our conversations, one partner usually talks quite a bit more than the other.")) (INTIMACY ("A long term commitment (would) cause(s) me to feel trapped.")) (INTIMACY ("A long term commitment (would) cause(s) me to feel trapped." "My partner and I do NOT enjoy working at the same task together.")) (INTIMACY ("A long term commitment (would) cause(s) me to feel trapped." "My partner and I do NOT enjoy working at the same task together." "I frequently do not know what my partner really wants or feels.")) (INDEP-INT ("It is NOT ok for one partner to go away for a weekend by themselves to think and be alone.")) (INDEP-INT ("It is NOT ok for one partner to go away for a weekend by themselves to think and be alone." "One should always consult with their partner before making even small decisions.")) (INDEP-INT ("It is NOT ok for one partner to go away for a weekend by themselves to think and be alone." "One should always consult with their partner before making even small decisions." "The (marriage) relationship is more important than the happiness of one partner.")) (INDEP-INT ("It is NOT ok for one partner to go away for a weekend by themselves to think and be alone." "One should always consult with their partner before making even small decisions." "The (marriage) relationship is more important than the happiness of one partner." "Partners should never argue or disagree if they are to have a truly happy relationship.")) (INDEP-INT ("It is NOT ok for one partner to go away for a weekend by themselves to think and be alone." "One should always consult with their partner before making even small decisions." "The (marriage) relationship is more important than the happiness of one partner." "Partners should never argue or disagree if they are to have a truly happy relationship." "When I refer to myself, I frequently say 'we' (meaning my partner and I).")) (INDEP-INT ("It is NOT ok for one partner to go away for a weekend by themselves to think and be alone." "One should always consult with their partner before making even small decisions." "The (marriage) relationship is more important than the happiness of one partner." "Partners should never argue or disagree if they are to have a truly happy relationship." "When I refer to myself, I frequently say 'we' (meaning my partner and I)." "One of us frequently worries about whether the other is really committed to this relationship.")) (INDEP-INT ("It is NOT ok for one partner to go away for a weekend by themselves to think and be alone." "One should always consult with their partner before making even small decisions." "The (marriage) relationship is more important than the happiness of one partner." "Partners should never argue or disagree if they are to have a truly happy relationship." "When I refer to myself, I frequently say 'we' (meaning my partner and I)." "One of us frequently worries about whether the other is really committed to this relationship." "I find that I can't really enjoy myself very much if I go someplace without my partner.")) (INDEP-INT ("It is NOT ok for one partner to go away for a weekend by themselves to think and be alone." "One should always consult with their partner before making even small decisions." "The (marriage) relationship is more important than the happiness of one partner." "Partners should never argue or disagree if they are to have a truly happy relationship." "When I refer to myself, I frequently say 'we' (meaning my partner and I)." "One of us frequently worries about whether the other is really committed to this relationship." "I find that I can't really enjoy myself very much if I go someplace without my partner." "I don't know how I could be happy if I didn't have my partner.")) (INDEP-INT ("It is NOT ok for one partner to go away for a weekend by themselves to think and be alone." "One should always consult with their partner before making even small decisions." "The (marriage) relationship is more important than the happiness of one partner." "Partners should never argue or disagree if they are to have a truly happy relationship." "When I refer to myself, I frequently say 'we' (meaning my partner and I)." "One of us frequently worries about whether the other is really committed to this relationship." "I find that I can't really enjoy myself very much if I go someplace without my partner." "I don't know how I could be happy if I didn't have my partner." "I hate to be alone for even a short time.")) (LIBROLE ("There are certain tasks that are MORE the man's responsibility, such as providing economic support, taking care of the car, etc.")) (LIBROLE ("There are certain tasks that are MORE the man's responsibility, such as providing economic support, taking care of the car, etc." "There are certain tasks that are MORE the woman's responsibility, such as cleaning house, fixing meals, etc.")) (LIBROLE ("There are certain tasks that are MORE the man's responsibility, such as providing economic support, taking care of the car, etc." "There are certain tasks that are MORE the woman's responsibility, such as cleaning house, fixing meals, etc." "The man should make the final decision.")) (LIBROLE ("There are certain tasks that are MORE the man's responsibility, such as providing economic support, taking care of the car, etc." "There are certain tasks that are MORE the woman's responsibility, such as cleaning house, fixing meals, etc." "The man should make the final decision." "I would feel embarrassed if my partner did something considered more characteristic of the opposite sex in front of other people (such as a woman working on the car or a man crying).")) (LIBROLE ("There are certain tasks that are MORE the man's responsibility, such as providing economic support, taking care of the car, etc." "There are certain tasks that are MORE the woman's responsibility, such as cleaning house, fixing meals, etc." "The man should make the final decision." "I would feel embarrassed if my partner did something considered more characteristic of the opposite sex in front of other people (such as a woman working on the car or a man crying)." "I want a relationship in which the man is stronger and more decisive than the woman.")) (LIBROLE ("There are certain tasks that are MORE the man's responsibility, such as providing economic support, taking care of the car, etc." "There are certain tasks that are MORE the woman's responsibility, such as cleaning house, fixing meals, etc." "The man should make the final decision." "I would feel embarrassed if my partner did something considered more characteristic of the opposite sex in front of other people (such as a woman working on the car or a man crying)." "I want a relationship in which the man is stronger and more decisive than the woman." "If the man and woman have a career conflict in which one has to quit his/her job, the woman should be the one to quit.")) (RHEALTH ("How often did you get sick the past 3 years?")) (RHEALTH ("How often did you get sick the past 3 years?" "How many drinks of alcohol do you average?")) (RHEALTH ("How often did you get sick the past 3 years?" "How many drinks of alcohol do you average?" "How often do you use cigarettes or other tobacco products?")) (RHEALTH ("How often did you get sick the past 3 years?" "How many drinks of alcohol do you average?" "How often do you use cigarettes or other tobacco products?" "How many often do you take illegal drugs on average?")) (RDEP ("I often feel sad, apathetic, listless, or depressed.")) (RDEP ("I often feel sad, apathetic, listless, or depressed." "I often feel worthless, very guilty, or think very negative thoughts about my future, the world, death, or myself.")) (RDEP ("I often feel sad, apathetic, listless, or depressed." "I often feel worthless, very guilty, or think very negative thoughts about my future, the world, death, or myself." "If you have felt depressed and had 2 or more of the following symptoms regularly, how long have you had them?
  * feel sad, unhappy, or depressed most of the day for most days
  * feel low energy, tiredness most of the time
  * have poor concentration and trouble making decisions
  * feel hopeless or doomed
  * have feelings of low self-esteem
  * have poor appetite or overeat
  * sleep too little or too much most of the time.")) (RDEP ("I often feel sad, apathetic, listless, or depressed." "I often feel worthless, very guilty, or think very negative thoughts about my future, the world, death, or myself." "If you have felt depressed and had 2 or more of the following symptoms regularly, how long have you had them?
  * feel sad, unhappy, or depressed most of the day for most days
  * feel low energy, tiredness most of the time
  * have poor concentration and trouble making decisions
  * feel hopeless or doomed
  * have feelings of low self-esteem
  * have poor appetite or overeat
  * sleep too little or too much most of the time." "How many times for 2 or more weeks at a time, have you had 5 (or more) of the following symptoms:
 * feel very depressed
 * have markedly less interest or pleasure in almost all daily activities
 * diminished ability to concentrate or think
 * feel worthless and/or very guilty
 * not be able to sleep or sleep much more than usual
 * have very low energy
 * significant weight loss or gain (without effort)
 * move much more slowly (motor retardation) or quickly (agitation) than usual
 * have recurring thoughts of death or suicidal thoughts")) (RDEP ("I often feel sad, apathetic, listless, or depressed." "I often feel worthless, very guilty, or think very negative thoughts about my future, the world, death, or myself." "If you have felt depressed and had 2 or more of the following symptoms regularly, how long have you had them?
  * feel sad, unhappy, or depressed most of the day for most days
  * feel low energy, tiredness most of the time
  * have poor concentration and trouble making decisions
  * feel hopeless or doomed
  * have feelings of low self-esteem
  * have poor appetite or overeat
  * sleep too little or too much most of the time." "How many times for 2 or more weeks at a time, have you had 5 (or more) of the following symptoms:
 * feel very depressed
 * have markedly less interest or pleasure in almost all daily activities
 * diminished ability to concentrate or think
 * feel worthless and/or very guilty
 * not be able to sleep or sleep much more than usual
 * have very low energy
 * significant weight loss or gain (without effort)
 * move much more slowly (motor retardation) or quickly (agitation) than usual
 * have recurring thoughts of death or suicidal thoughts" "Length of time that you have been prescribed medication for depression.")) (RDEP ("I often feel sad, apathetic, listless, or depressed." "I often feel worthless, very guilty, or think very negative thoughts about my future, the world, death, or myself." "If you have felt depressed and had 2 or more of the following symptoms regularly, how long have you had them?
  * feel sad, unhappy, or depressed most of the day for most days
  * feel low energy, tiredness most of the time
  * have poor concentration and trouble making decisions
  * feel hopeless or doomed
  * have feelings of low self-esteem
  * have poor appetite or overeat
  * sleep too little or too much most of the time." "How many times for 2 or more weeks at a time, have you had 5 (or more) of the following symptoms:
 * feel very depressed
 * have markedly less interest or pleasure in almost all daily activities
 * diminished ability to concentrate or think
 * feel worthless and/or very guilty
 * not be able to sleep or sleep much more than usual
 * have very low energy
 * significant weight loss or gain (without effort)
 * move much more slowly (motor retardation) or quickly (agitation) than usual
 * have recurring thoughts of death or suicidal thoughts" "Length of time that you have been prescribed medication for depression." "Amount of counseling or psychotherapy for depression.")) (RANX ("Do you feel excessively nervous or anxious when speaking or performing in front of others.")) (RANX ("Do you feel excessively nervous or anxious when speaking or performing in front of others." "Do you worry or feel nervous or anxious almost all of the time?")) (RANX ("Do you feel excessively nervous or anxious when speaking or performing in front of others." "Do you worry or feel nervous or anxious almost all of the time?" "Do you suffer from post-traumatic stress symptoms?

[Were you ever exposed to some life-threatening, abusive, or shocking traumatic event(s) where you felt extremely frightened and helpless AND still have frequent episodes of flashbacks, numbness, detachment, distress, avoidance of similar situations, or other symptoms that significantly interfere in your life?]")) (RANX ("Do you feel excessively nervous or anxious when speaking or performing in front of others." "Do you worry or feel nervous or anxious almost all of the time?" "Do you suffer from post-traumatic stress symptoms?

[Were you ever exposed to some life-threatening, abusive, or shocking traumatic event(s) where you felt extremely frightened and helpless AND still have frequent episodes of flashbacks, numbness, detachment, distress, avoidance of similar situations, or other symptoms that significantly interfere in your life?]" "Do you feel very nervous or anxious almost any time you are with other people?")) (RANX ("Do you feel excessively nervous or anxious when speaking or performing in front of others." "Do you worry or feel nervous or anxious almost all of the time?" "Do you suffer from post-traumatic stress symptoms?

[Were you ever exposed to some life-threatening, abusive, or shocking traumatic event(s) where you felt extremely frightened and helpless AND still have frequent episodes of flashbacks, numbness, detachment, distress, avoidance of similar situations, or other symptoms that significantly interfere in your life?]" "Do you feel very nervous or anxious almost any time you are with other people?" "How many times have you had a lasting problem with obsessions or compulsions?

[Obsessions definition: recurring, uncontrollable thoughts or images that you cannot get out of your mind, and cause distress.
Compulsions definition: repeating outward or mental acts (e.g. washing, ordering, checking, praying, counting, repeating words) because one feels compelled to.
Both obsessions and compulsions are usually not realistically connected to any immediate outside problem or are excessive.]")) (RANX ("Do you feel excessively nervous or anxious when speaking or performing in front of others." "Do you worry or feel nervous or anxious almost all of the time?" "Do you suffer from post-traumatic stress symptoms?

[Were you ever exposed to some life-threatening, abusive, or shocking traumatic event(s) where you felt extremely frightened and helpless AND still have frequent episodes of flashbacks, numbness, detachment, distress, avoidance of similar situations, or other symptoms that significantly interfere in your life?]" "Do you feel very nervous or anxious almost any time you are with other people?" "How many times have you had a lasting problem with obsessions or compulsions?

[Obsessions definition: recurring, uncontrollable thoughts or images that you cannot get out of your mind, and cause distress.
Compulsions definition: repeating outward or mental acts (e.g. washing, ordering, checking, praying, counting, repeating words) because one feels compelled to.
Both obsessions and compulsions are usually not realistically connected to any immediate outside problem or are excessive.]" "How many genuine phobias do you think you have?

[Phobia definition: repeated intense, excessive, and unreasonable fear or anxiety elicited by a specific object, animal, or situation. Or, do you have a fear of almost all social contact?]")) (RANX ("Do you feel excessively nervous or anxious when speaking or performing in front of others." "Do you worry or feel nervous or anxious almost all of the time?" "Do you suffer from post-traumatic stress symptoms?

[Were you ever exposed to some life-threatening, abusive, or shocking traumatic event(s) where you felt extremely frightened and helpless AND still have frequent episodes of flashbacks, numbness, detachment, distress, avoidance of similar situations, or other symptoms that significantly interfere in your life?]" "Do you feel very nervous or anxious almost any time you are with other people?" "How many times have you had a lasting problem with obsessions or compulsions?

[Obsessions definition: recurring, uncontrollable thoughts or images that you cannot get out of your mind, and cause distress.
Compulsions definition: repeating outward or mental acts (e.g. washing, ordering, checking, praying, counting, repeating words) because one feels compelled to.
Both obsessions and compulsions are usually not realistically connected to any immediate outside problem or are excessive.]" "How many genuine phobias do you think you have?

[Phobia definition: repeated intense, excessive, and unreasonable fear or anxiety elicited by a specific object, animal, or situation. Or, do you have a fear of almost all social contact?]" "About how many genuine panic attacks have you had during the past 5 years?

[Panic attack definition: four or more of the following symptoms together for 10 minutes or more:
   pounding heart; trembling; trouble breathing; chest pain; feeling dizzy;    feeling detached or numb; plus fears of dying, going crazy, or losing control]")) (RANX ("Do you feel excessively nervous or anxious when speaking or performing in front of others." "Do you worry or feel nervous or anxious almost all of the time?" "Do you suffer from post-traumatic stress symptoms?

[Were you ever exposed to some life-threatening, abusive, or shocking traumatic event(s) where you felt extremely frightened and helpless AND still have frequent episodes of flashbacks, numbness, detachment, distress, avoidance of similar situations, or other symptoms that significantly interfere in your life?]" "Do you feel very nervous or anxious almost any time you are with other people?" "How many times have you had a lasting problem with obsessions or compulsions?

[Obsessions definition: recurring, uncontrollable thoughts or images that you cannot get out of your mind, and cause distress.
Compulsions definition: repeating outward or mental acts (e.g. washing, ordering, checking, praying, counting, repeating words) because one feels compelled to.
Both obsessions and compulsions are usually not realistically connected to any immediate outside problem or are excessive.]" "How many genuine phobias do you think you have?

[Phobia definition: repeated intense, excessive, and unreasonable fear or anxiety elicited by a specific object, animal, or situation. Or, do you have a fear of almost all social contact?]" "About how many genuine panic attacks have you had during the past 5 years?

[Panic attack definition: four or more of the following symptoms together for 10 minutes or more:
   pounding heart; trembling; trouble breathing; chest pain; feeling dizzy;    feeling detached or numb; plus fears of dying, going crazy, or losing control]" "Length of time that you have been prescribed medication for anxiety, obsessions/compulsions, phobias, or panic disorder.")) (RANX ("Do you feel excessively nervous or anxious when speaking or performing in front of others." "Do you worry or feel nervous or anxious almost all of the time?" "Do you suffer from post-traumatic stress symptoms?

[Were you ever exposed to some life-threatening, abusive, or shocking traumatic event(s) where you felt extremely frightened and helpless AND still have frequent episodes of flashbacks, numbness, detachment, distress, avoidance of similar situations, or other symptoms that significantly interfere in your life?]" "Do you feel very nervous or anxious almost any time you are with other people?" "How many times have you had a lasting problem with obsessions or compulsions?

[Obsessions definition: recurring, uncontrollable thoughts or images that you cannot get out of your mind, and cause distress.
Compulsions definition: repeating outward or mental acts (e.g. washing, ordering, checking, praying, counting, repeating words) because one feels compelled to.
Both obsessions and compulsions are usually not realistically connected to any immediate outside problem or are excessive.]" "How many genuine phobias do you think you have?

[Phobia definition: repeated intense, excessive, and unreasonable fear or anxiety elicited by a specific object, animal, or situation. Or, do you have a fear of almost all social contact?]" "About how many genuine panic attacks have you had during the past 5 years?

[Panic attack definition: four or more of the following symptoms together for 10 minutes or more:
   pounding heart; trembling; trouble breathing; chest pain; feeling dizzy;    feeling detached or numb; plus fears of dying, going crazy, or losing control]" "Length of time that you have been prescribed medication for anxiety, obsessions/compulsions, phobias, or panic disorder." "Amount of counseling or psychotherapy for excessive stress, anxiety, obsessions/compulsions, phobias, or panic disorder.")) (RANG ("How often do you get angry and lose your temper?")) (RANG ("How often do you get angry and lose your temper?" "How often do you yell at someone or call someone hurtful names?")) (RANG ("How often do you get angry and lose your temper?" "How often do you yell at someone or call someone hurtful names?" "How often do you get someone to do what you want by criticizing them, out-talking them, getting angry, or threatening them.")) (RANG ("How often do you get angry and lose your temper?" "How often do you yell at someone or call someone hurtful names?" "How often do you get someone to do what you want by criticizing them, out-talking them, getting angry, or threatening them." "How often do you think about getting even with someone who has hurt you?")) (RANG ("How often do you get angry and lose your temper?" "How often do you yell at someone or call someone hurtful names?" "How often do you get someone to do what you want by criticizing them, out-talking them, getting angry, or threatening them." "How often do you think about getting even with someone who has hurt you?" "How often do you damage objects or property, hurt animals or people purposely, or break the law?")) (TB2 ("There is no 'absolute' right and wrong or good or bad--it depends upon factors like your point of view, the situation, or one's cultural background.")) (TB2 ("There is no 'absolute' right and wrong or good or bad--it depends upon factors like your point of view, the situation, or one's cultural background." "We must run our lives by rules, and people who break those rules must be severely punished or we will have chaos.")) (TB2 ("There is no 'absolute' right and wrong or good or bad--it depends upon factors like your point of view, the situation, or one's cultural background." "We must run our lives by rules, and people who break those rules must be severely punished or we will have chaos." "If a person has a bad environement and/or genetics, they aren't really responsible for what they do.")) (TB2 ("There is no 'absolute' right and wrong or good or bad--it depends upon factors like your point of view, the situation, or one's cultural background." "We must run our lives by rules, and people who break those rules must be severely punished or we will have chaos." "If a person has a bad environement and/or genetics, they aren't really responsible for what they do." "One group in my life (such as my family, nation, culture, or religion) is so important that I would be almost nothing without them. Life wouldn't be worth living.")) (TB2 ("There is no 'absolute' right and wrong or good or bad--it depends upon factors like your point of view, the situation, or one's cultural background." "We must run our lives by rules, and people who break those rules must be severely punished or we will have chaos." "If a person has a bad environement and/or genetics, they aren't really responsible for what they do." "One group in my life (such as my family, nation, culture, or religion) is so important that I would be almost nothing without them. Life wouldn't be worth living." "Life has no meaning in itself, any meaning must be supplied by the individual.")) (TB2 ("There is no 'absolute' right and wrong or good or bad--it depends upon factors like your point of view, the situation, or one's cultural background." "We must run our lives by rules, and people who break those rules must be severely punished or we will have chaos." "If a person has a bad environement and/or genetics, they aren't really responsible for what they do." "One group in my life (such as my family, nation, culture, or religion) is so important that I would be almost nothing without them. Life wouldn't be worth living." "Life has no meaning in itself, any meaning must be supplied by the individual." "People can only be completely forgiven and guilt-free if they are good enough (do enough of the right things).")) (TB2 ("There is no 'absolute' right and wrong or good or bad--it depends upon factors like your point of view, the situation, or one's cultural background." "We must run our lives by rules, and people who break those rules must be severely punished or we will have chaos." "If a person has a bad environement and/or genetics, they aren't really responsible for what they do." "One group in my life (such as my family, nation, culture, or religion) is so important that I would be almost nothing without them. Life wouldn't be worth living." "Life has no meaning in itself, any meaning must be supplied by the individual." "People can only be completely forgiven and guilt-free if they are good enough (do enough of the right things)." "If society would base everything upon reason and science, we would have nothing to worry about.")) (TB2 ("There is no 'absolute' right and wrong or good or bad--it depends upon factors like your point of view, the situation, or one's cultural background." "We must run our lives by rules, and people who break those rules must be severely punished or we will have chaos." "If a person has a bad environement and/or genetics, they aren't really responsible for what they do." "One group in my life (such as my family, nation, culture, or religion) is so important that I would be almost nothing without them. Life wouldn't be worth living." "Life has no meaning in itself, any meaning must be supplied by the individual." "People can only be completely forgiven and guilt-free if they are good enough (do enough of the right things)." "If society would base everything upon reason and science, we would have nothing to worry about." "I believe in phenomena like communicating with spirits of the deceased, seeing into the future, and astrology."))))


;;CL-USER 1 > (pprint *shaq-reverse-scored-qvars-by-cat)
;;QUEST NUMBER WITHIN SCALE PRINTED TO RIGHT
(defparameter *shaq-reverse-scored-qvars-by-cat
 '(((STUFEEL ("stuextmo"))5
 (STUFEEL ("stuconfu"))9

 (STUACMOTIV ("acmtime"))8
 ;;LEARN DISABIL
 (STU-LRN ("lrnunasn"))1
 (STU-LRN ("lrncolmt"))2
 (STU-LRN ("lrnknowt"))3
 (STU-LRN ("lrnproof"))4
 (STU-LRN ("lrnrread"))5
 (STU-LRN ("lrntestt"))6
 (STU-LRN ("lrntimas"))7
  ;;there is a 13th quest 8 missing? too much time on 1 assign
 (STU-LRN ("lrntired"))9
 (STU-LRN ("lrntanxi"))10
 (STU-LRN ("lrnsmart"))11
 (STU-LRN ("lrnaread"))12
 (STU-LRN ("lrnrslow"))13


 (COPE ("copnegth")) 1
 (COPE ("copcopea")) 2
 (COPE ("copemota")) 4
 (COPE ("copavops")) 5
 (COPE ("copblame")) 6
 (COPE ("copwdrw")) 7
 (COPE ("copsmoke")) 11
 (COPE ("copdrug")) 12
 (COPE ("copnegph")) 14
 (COPE ("copselfb")) 15
 (COPE ("copavoat")) 19
 (TBV ("tbvothfi")) 1
 (TBV ("tbvliked"))2
 (TBV ("tbvweak")) 3
 (TBV ("tbvbest"))4
 (TBV ("tbventit")) 5
 (TBV ("tbvrules")) 6
 (TBV ("tbvwinne")) 7
 (TBV ("thvselfa")) 11
 (IE ("iecgenet")) 3
 (IE ("iecpeopl"))4
 (IE ("iecdepen"))5
 (IE ("ieccofee")) 6 
 (IE ("ieccoprb")) 7
 (WORLDVIEW ("wovnfair")) 4
 (WORLDVIEW ("woventit")) 5
 (WORLDVIEW ("wovinjur")) 6
;;GREATEST FEARS 
 (WORLDVIEW ("wovhappy")) 1
 (WORLDVIEW ("wovpoor")) 2
 (WORLDVIEW ("wovill"))3
 (WORLDVIEW ("wovdeath"))4
 (WORLDVIEW ("wovalone"))5
 (WORLDVIEW ("wovnolov"))6
 (WORLDVIEW ("wovliked"))7
 (WORLDVIEW ("wovperso"))8
 (WORLDVIEW ("wovprobl"))9
 (WORLDVIEW ("wovdisco"))10
 (WORLDVIEW ("wovsucce"))11

 (ASSERTCR ("crtklong")) 5
 (ASSERTCR ("crteweak"))7
 (ASSERTCR ("crexaggr")) 10
 (ASSERTCR ("crmanipu"))11
 (ASSERTCR ("crreprai"))16
 (ASSERTCR ("crteach"))17
 (ASSERTCR ("crangang"))20
 (ASSERTCR ("criprais")) 21
 (ASSERTCR ("crtlkmor"))23

 (INTIMACY ("intcomit")) 2
 (INTIMACY ("intwktog"))12
 (INTIMACY ("intknpfe"))13

 (INDEP-INT ("inrbealn"))1
 (INDEP-INT ("inalcnst"))2
 (INDEP-INT ("inrinhap"))6
 (INDEP-INT ("innevarg"))7
 (INDEP-INT ("inrsaywe"))9
 (INDEP-INT ("incomtwo"))10
 (INDEP-INT ("inenalon"))13
 (INDEP-INT ("inokalon"))14
 (INDEP-INT ("inrhatea"))15

 (LIBROLE ("lromtask"))1
 (LIBROLE ("lroftask"))2
 (LIBROLE ("lrmfinal"))3
 (LIBROLE ("lroembar"))4
 (LIBROLE ("lromstro"))5
 (LIBROLE ("lrcarcon"))7

 (RHEALTH ("rhlfreqi"))1
 (RHEALTH ("rhlalcoh"))2
 (RHEALTH ("rhlsmoke"))3
 (RHEALTH ("rhldrugs"))4

 (RDEP ("rdepfeel"))1
 (RDEP ("rdepthou"))2
 (RDEP ("rdepdyss"))3
 (RDEP ("rdepmajs"))4
 (RDEP ("rdepmeds"))5
 (RDEP ("rdepther"))6

 (RANX ("ranxperf"))1
 (RANX ("ranxallt"))2
 (RANX ("ranxpstd"))3
 (RANX ("ranxsoci"))4
 (RANX ("ranxocd"))5
 (RANX ("ranxphob"))6
 (RANX ("ranxpani"))7
 (RANX ("ranxmeds"))8
 (RANX ("ranxther"))9

 (RANG ("rangfeel"))1
 (RANG ("rangyell"))2
 (RANG ("rangdomi"))3
 (RANG ("rangthou"))4
 (RANG ("rangdest"))5

 (TB2 ("tb2relat"))1
 (TB2 ("tb2punis"))2
 (TB2 ("tbv2notr"))3
 (TB2 ("tb2groum"))4
 (TB2 ("tb2selfm"))5
 (TB2 ("tb2gdwrk"))6
 (TB2 ("tb2reaso"))9
 (TB2 ("tbv2astr"))))10
 )

;;CL-USER 2 > (list-length *shaq-reverse-scored-qvars-by-cat) = 112





#|(defparameter *shaq-reverse-scored-qvars-by-cat '((STUFEEL ("stuextmo")) (STUFEEL ("stuconfu")) (STUACMOTIV ("acmtime")) (STU-LRN ("lrnunasn")) (STU-LRN ("lrncolmt")) (STU-LRN ("lrnknowt")) (STU-LRN ("lrnproof")) (STU-LRN ("lrnrread")) (STU-LRN ("lrntestt")) (STU-LRN ("lrntimas")) (STU-LRN ("lrntired")) (STU-LRN ("lrntanxi")) (STU-LRN ("lrnsmart")) (STU-LRN ("lrnaread")) (STU-LRN ("lrnrslow")) (COPE ("copnegth")) (COPE ("copcopea")) (COPE ("copemota")) (COPE ("copavops")) (COPE ("copblame")) (COPE ("copwdrw")) (COPE ("copsmoke")) (COPE ("copdrug")) (COPE ("copnegph")) (COPE ("copselfb")) (COPE ("copavoat")) (TBV ("tbvothfi")) (TBV ("tbvliked")) (TBV ("tbvweak")) (TBV ("tbvbest")) (TBV ("tbventit")) (TBV ("tbvrules")) (TBV ("tbvwinne")) (TBV ("thvselfa")) (IE ("iecgenet")) (IE ("iecpeopl")) (IE ("iecdepen")) (IE ("ieccofee")) (IE ("ieccoprb")) (WORLDVIEW ("wovnfair")) (WORLDVIEW ("woventit")) (WORLDVIEW ("wovinjur")) (WORLDVIEW ("wovhappy")) (WORLDVIEW ("wovpoor")) (WORLDVIEW ("wovill")) (WORLDVIEW ("wovdeath")) (WORLDVIEW ("wovalone")) (WORLDVIEW ("wovnolov")) (WORLDVIEW ("wovliked")) (WORLDVIEW ("wovperso")) (WORLDVIEW ("wovprobl")) (WORLDVIEW ("wovdisco")) (WORLDVIEW ("wovsucce")) (ASSERTCR ("crtklong")) (ASSERTCR ("crteweak")) (ASSERTCR ("crexaggr")) (ASSERTCR ("crmanipu")) (ASSERTCR ("crreprai")) (ASSERTCR ("crteach")) (ASSERTCR ("crangang")) (ASSERTCR ("criprais")) (ASSERTCR ("crtlkmor")) (INTIMACY ("intcomit")) (INTIMACY ("intwktog")) (INTIMACY ("intknpfe")) (INDEP-INT ("inrbealn")) (INDEP-INT ("inalcnst")) (INDEP-INT ("inrinhap")) (INDEP-INT ("innevarg")) (INDEP-INT ("inrsaywe")) (INDEP-INT ("incomtwo")) (INDEP-INT ("inenalon")) (INDEP-INT ("inokalon")) (INDEP-INT ("inrhatea")) (LIBROLE ("lromtask")) (LIBROLE ("lroftask")) (LIBROLE ("lrmfinal")) (LIBROLE ("lroembar")) (LIBROLE ("lromstro")) (LIBROLE ("lrcarcon")) (RHEALTH ("rhlfreqi")) (RHEALTH ("rhlalcoh")) (RHEALTH ("rhlsmoke")) (RHEALTH ("rhldrugs")) (RDEP ("rdepfeel")) (RDEP ("rdepthou")) (RDEP ("rdepdyss")) (RDEP ("rdepmajs")) (RDEP ("rdepmeds")) (RDEP ("rdepther")) (RANX ("ranxperf")) (RANX ("ranxallt")) (RANX ("ranxpstd")) (RANX ("ranxsoci")) (RANX ("ranxocd")) (RANX ("ranxphob")) (RANX ("ranxpani")) (RANX ("ranxmeds")) (RANX ("ranxther")) (RANG ("rangfeel")) (RANG ("rangyell")) (RANG ("rangdomi")) (RANG ("rangthou")) (RANG ("rangdest")) (TB2 ("tb2relat")) (TB2 ("tb2punis")) (TB2 ("tbv2notr")) (TB2 ("tb2groum")) (TB2 ("tb2selfm")) (TB2 ("tb2gdwrk")) (TB2 ("tb2reaso")) (TB2 ("tbv2astr"))))|#

;;ddd
(defparameter *all-shaq-qvar-cats '(ID UTYPE UGOALS SCALESSEL BIO3EDUC BIO4JOB BIO7LANG BIO1ETHN BIORELAF SFAMILY NO-SCALE STUCOLLE STUMAJOR STUSPECI STURESID STU-DATA STGPATRE STUAPT STUFEEL STURESOURCE STUACMOTIV STU-LRN SM COPE THEMES TBV IE WORLDVIEW SELF-CONF ASSERTCR INTIMACY INDEP-INT ROM LIBROLE HAP RHEALTH RPEOPLE RDEP RANX RANG REMOT TB2 CARGEN CARBUS CARENGR CARFINE CARHELP CARLANG CARMED CARLAW CARNATSCI CARBESCI CARETHNIC CARWRITE USER-FB))


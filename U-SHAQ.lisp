;; ****************************** U-SHAQ.lisp ***********************
;;
;;;;put in all key files
  (my-config-editor-after-start)

;;JAVA TO LISP FUNCTIONS ETC MOVED TO  MyUtilities/U-java-to-lisp-shaq.lisp
;;

 

#|
  public static int[] makeAscendingArray(int firstNum, int length)
  {
    int[] array = new int[length];;
    int i = 0;
    int newNum = firstNum - 1;
    for (i = 0; i < length; i++)
    {
      newNum++;
      array[i] = newNum;
      //System.out.println("newNum = "+ newNum);
    }
    return array;
  }
  /**
   * Makes an array that looks like {15,14,13,12, etc}
   */

  public static int[] makeDescendingArray(int firstNum1, int length)
  {
    int[] array = new int[length];;
    int i = 0;
    int newNum = firstNum1 + 1;
    //System.out.println("RESET newNum= firstNum1 + 1 = "+ newNum);
    for (i = 0; i < length; i++)
    {
      newNum = newNum - 1;
      array[i] = newNum;
    //System.out.println("newNum= "+ newNum);
    }
    //System.out.println("array elements= "+ printArrayToStringNums(array));
    return array;
  }

  public static double calcStandardDeviation(double[] scoreArray, int numItems,
    double mean)
  {
   double standardDeviation = 0;
   try
   {
    double square = 0;
    double deviation = 0;
    double deviationSquared = 0;
    double sumDeviationsSquared = 0;
    double meanSquaredDevs = 0;
    int i = 0;
    numItems = scoreArray.length;

    for (i = 0; i < numItems; i++)
    {
      deviation = scoreArray[i] - mean;
      deviationSquared = deviation * deviation;
      sumDeviationsSquared = sumDeviationsSquared + deviationSquared;
    }
    meanSquaredDevs = sumDeviationsSquared / numItems;
    standardDeviation = Math.sqrt(meanSquaredDevs);

    }
   catch (Exception e)
   {System.out.println("Error in finding standard deviation for array of numItems= "+
       numItems);
   }
   return standardDeviation;
  }
|#

;;PRINT-SHAQ-QUESTION-INFO
;;
;;ddd
(defun print-shaq-single-R-question-info (&key (all-shaq-quests  *all-SHAQ-questions)
                                               (begin-sep "=============")
                                               (end-sep "============="))
  "In U-SHAQ, prints question qvar symbol, question symbol, and question text"
  (let 
      ((cat-list)
       (cat)
       ;;(cat-text-list)
       (quest-list)
       (q-sym)
       (qvar)
       (q-text)
       (q-newtext)
       (new-quest-list)
       (new-quest-text-list)
       (all-quests-list)
       (all-quests-text-string "")
       )
    (loop
     for cat-list in all-shaq-quests
     do    
     (setf cat (car cat-list))

    (loop
     for quest-list in cat-list
     for n from 1 to (length cat-list)
     ;;error with q-newtext ""
     do
     (setf q-newtext "")
     ;;(afout 'out (format nil "quest-list= ~A~%" quest-list))
     (cond
      ((listp quest-list)
       (setf q-sym (car quest-list)
             q-text (second quest-list))

       (cond
        ((listp q-text) ;;         (and (listp q-text) (stringp (car q-text)))

         ;;add the category before first question
         (when (= n 1)
           (setf all-quests-list (append all-quests-list (list cat))
                 all-quests-text-string (format nil "~A~%~%CATEGORY: ~A~%"all-quests-text-string  cat)))

         ;;make the qvar string
         (setf q-sym-str (format nil "~A" q-sym)
                length-q-sym-str (length q-sym-str)
                qvar (subseq q-sym-str 0 (- length-q-sym-str 2)))

         ;;to put all text parts together from question text list
         (loop
          for text in q-text
          do
          (when (stringp text)
            (setf  q-newtext (format nil "~A ~A"q-newtext text)))
          ;;end inner loop
          )
         (setf all-quests-text-string (format nil "~A~%~%QUESTION QVAR SYMBOL: ~A~%QUESTION TEXT: ~A" all-quests-text-string qvar q-newtext)
               all-quests-list (append all-quests-list (list (list qvar q-newtext))))
         ;;(afout 'out (format nil "END qvar= ~A q-newtext= ~A~%"  qvar q-newtext))
         
         ;;end (and (listp q-text) etc clause
         )
        (t nil))
       ;;end listp clause, outer cond
       ))
     ;;end  2 outer loops
     ))
    (values all-quests-list all-quests-text-string)
    ;;end let, print-shaq-single-R-question-info
    ))
;;TEST
;;FOR ALL QUESTIONS
;; (multiple-value-setq (*all-quests-list2 *all-quests-string2) (print-shaq-single-R-question-info))
;; (pprint *all-quests-list2)
;; (pprint *all-quests-string2)

;;FOR TESTING ONLY (print-shaq-single-R-question-info :all-shaq-quests *test-quests2 )
               


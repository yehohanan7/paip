(defparameter *simple-grammer*
  '((sentence -> (noun-phrase  verb-phrase))
    (noun-phrase -> (Article Noun))
    (verb-phrase -> (Verb nount-phrase))
    (Article -> the a)
    (Noun -> man ball woman table)
    (Verb -> hit took saw liked))
  "a simple grammer")

(defvar *grammer* *simple-grammer*)

(defun rule-lhs (rule)
  "The left hand side of the rule"
  (first rule))

(defun rule-rhs (rule)
  "The right hand side of the rule"
  (rest (rest rule)))

(defun rewrites (category)
  "Return possible rewrites for this category"
  (rule-rhs (assoc category *grammer*)))






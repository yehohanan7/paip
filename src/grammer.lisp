(in-package #:paip)

(defun random-elt (choices)
  (elt choices (random (length choices))))

(defun one-of (choices)
  (list (random-elt choices)))

(defun Verb ()
  (one-of '(hit took saw liked)))

(defun Noun ()
  (one-of '(man ball woman table)))

(defun Article ()
  (one-of '(the a)))

(defun noun-phrase ()
  (append (Article) (Noun)))

(defun verb-phrase ()
  (append (Verb) (noun-phrase)))

(defun sentence ()
  (append (noun-phrase) (verb-phrase)))





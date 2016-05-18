(defun bin-string (string n)
  (if (= n 0)
      (format t "~A~%" string)
      (progn
        (bin-string (concatenate 'string "0" string) (1- n))
        (bin-string (concatenate 'string "1" string) (1- n)))))

(bin-string "" 2)


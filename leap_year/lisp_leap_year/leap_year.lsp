(defun leap_year (year)
  (destructuring-bind (fh h f)
      (mapcar #'(lambda (n) (zerop (mod year n))) '(400 100 4))
    (or fh (and (not h) f))
  )
)

(defun main()
  (loop for idx_i from 1999 to 2101
    do (format t "leap_year(~A)=<~A>~%" idx_i (leap_year idx_i))
  )
)

(main)
(exit)

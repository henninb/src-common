(defun date_utc_function(n)
  n
)

(defun main()
  (loop for idx_i from 1 to 10
    do (format t "date_utc_function(~A)=<~A>~%" idx_i (date_utc_function idx_i))
  )
)

(main)
(exit)

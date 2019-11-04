(defun sidereal_time_function(n)
  n
)

(defun main()
  (loop for idx_i from 1 to 10
    do (format t "sidereal_time_function(~A)=<~A>~%" idx_i (sidereal_time_function idx_i))
  )
)

(main)
(exit)

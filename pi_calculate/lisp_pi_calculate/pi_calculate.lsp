(defun pi_calculate_function(n)
  n
)

(defun main()
  (loop for idx_i from 1 to 10
    do (format t "pi_calculate_function(~A)=<~A>~%" idx_i (pi_calculate_function idx_i))
  )
)

(main)
(exit)

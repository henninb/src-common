(defun linear_combination_function(n)
  n
)

(defun main()
  (loop for idx_i from 1 to 10
    do (format t "linear_combination_function(~A)=<~A>~%" idx_i (linear_combination_function idx_i))
  )
)

(main)
(exit)

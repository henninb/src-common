(defun random_number_function(n)
  n
)

(defun main()
  (loop for idx_i from 1 to 10
    do (format t "random_number_function(~A)=<~A>~%" idx_i (random_number_function idx_i))
  )
)

(main)
(exit)

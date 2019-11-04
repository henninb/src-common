(defun permute_print_integer_function(n)
  n
)

(defun main()
  (loop for idx_i from 1 to 10
    do (format t "permute_print_integer_function(~A)=<~A>~%" idx_i (permute_print_integer_function idx_i))
  )
)

(main)
(exit)

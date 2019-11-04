(defun passwd_input_function(n)
  n
)

(defun main()
  (loop for idx_i from 1 to 10
    do (format t "passwd_input_function(~A)=<~A>~%" idx_i (passwd_input_function idx_i))
  )
)

(main)
(exit)

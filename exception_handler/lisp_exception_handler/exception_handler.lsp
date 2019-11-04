(defun exception_handler_function(n)
  n
)

(defun main()
  (loop for idx_i from 1 to 10
    do (format t "exception_handler_function(~A)=<~A>~%" idx_i (exception_handler_function idx_i))
  )
)

(main)
(exit)

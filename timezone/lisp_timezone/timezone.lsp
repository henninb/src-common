;comment

(defun timezone_function(n)
  n
)

(defun main()
  (loop for idx_i from 1 to 10
    do (format t "timezone_function(~A)=<~A>~%" idx_i (timezone_function idx_i))
  )
)

(main)
(exit)

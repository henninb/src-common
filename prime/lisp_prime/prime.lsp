(defun prime_function(n)
  n
)

(defun main()
  (loop for idx_i from 1 to 10
    do (format t "prime_function(~A)=<~A>~%" idx_i (prime_function idx_i))
  )
)

(main)
(exit)

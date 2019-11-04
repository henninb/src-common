(defun recursive_addition_function(n)
  n
)

(defun sum (n m)
  "Recursively increment N and decrement M untill M = 0"
  (if (= m 0) ;; don't use EQ for numbers, use EQL or =.
    n
    (sum (1+ n) (1- m)))) ;; Otherwise recursive call

(defun main()
  (loop for idx_i from 1 to 10
    do (format t "recursive_addition_function(~A)=<~A>~%" idx_i (recursive_addition_function idx_i))
  )
)

(main)
(exit)

(defun fibonacci_old(n)
  (if (or (zerop n) (= n 1))
      1
    (+ (fibonacci_old(- n 1)) (fibonacci_old(- n 2)))
  )
)

(defun fibonacci_new (n)
  (if (< n 2)
      n
      (+ (fibonacci_new (- n 1)) (fibonacci_new (- n 2)))
  )
)

(defun fibonacci(n)
  (cond
    ((= n 0)
      0
    ) ;_ end of the first then condition
    ((= n 1)
      1
    ) ;_ end of the second then condition
    ((> n 1)
      (+ (fibonacci (- n 1)) (fibonacci (- n 2)))
    )
  ) ;_ end of cond statement
)

(defun main()
  (loop for idx_i from 1 to 24
    do (format t "fibonacci(~A)=<~A>~%" idx_i (fibonacci_new idx_i))
  )
)

(main)
(exit)

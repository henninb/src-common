(defun factorial(n)
  "Compute the N'th factorial number."
  (if (or (zerop n) (= n 1))
      1
    (* (factorial(- n 1)) n)
  )
)

(defun main()
  (loop for idx_i from 1 to 25
    do (format t "factorial(~A)=<~A>~%" idx_i (factorial idx_i))
  )
)

(main)
(exit)

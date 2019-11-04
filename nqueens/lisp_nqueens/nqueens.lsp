(defun nqueens_function(n)
  n
)

(defun main()
  (loop for idx_i from 1 to 10
    do (format t "nqueens_function(~A)=<~A>~%" idx_i (nqueens_function idx_i))
  )
)

(main)
(exit)

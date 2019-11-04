(defun magic_squares_function(n)
  n
)

(defun main()
  (loop for idx_i from 1 to 10
    do (format t "magic_squares_function(~A)=<~A>~%" idx_i (magic_squares_function idx_i))
  )
)

(main)
(exit)

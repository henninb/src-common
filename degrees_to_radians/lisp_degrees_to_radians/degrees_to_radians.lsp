(defun degrees_to_radians_function(n)
  n
)

(defun main()
  (loop for idx_i from 1 to 10
    do (format t "degrees_to_radians_function(~A)=<~A>~%" idx_i (degrees_to_radians_function idx_i))
  )
)

(main)
(exit)

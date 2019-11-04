(defun epoch_conversion_function(n)
  n
)

(defun main()
  (loop for idx_i from 1 to 10
    do (format t "epoch_conversion_function(~A)=<~A>~%" idx_i (epoch_conversion_function idx_i))
  )
)

(main)
(exit)

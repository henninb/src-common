(defun json_write_function(n)
  n
)

(defun main()
  (loop for idx_i from 1 to 10
    do (format t "json_write_function(~A)=<~A>~%" idx_i (json_write_function idx_i))
  )
)

(main)
(exit)

(defun hostname_info_function(n)
  n
)

(defun main()
  (loop for idx_i from 1 to 10
    do (format t "hostname_info_function(~A)=<~A>~%" idx_i (hostname_info_function idx_i))
  )
)

(main)
(exit)

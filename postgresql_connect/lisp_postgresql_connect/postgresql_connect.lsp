;comment

(defun postgresql_connect_function(n)
  n
)

(defun main()
  (loop for idx_i from 1 to 10
    do (format t "postgresql_connect_function(~A)=<~A>~%" idx_i (postgresql_connect_function idx_i))
  )
)

(main)
(exit)

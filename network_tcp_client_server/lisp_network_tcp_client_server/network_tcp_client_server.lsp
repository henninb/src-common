(defun network_tcp_client_server_function(n)
  n
)

(defun main()
  (loop for idx_i from 1 to 10
    do (format t "network_tcp_client_server_function(~A)=<~A>~%" idx_i (network_tcp_client_server_function idx_i))
  )
)

(main)
(exit)

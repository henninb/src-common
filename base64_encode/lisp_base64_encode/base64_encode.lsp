(defun base64_encode_function(n)
  n
)

(defun main()
  (loop for idx_i from 1 to 10
    do (format t "base64_encode_function(~A)=<~A>~%" idx_i (base64_encode_function idx_i))
  )
)

(main)
(exit)

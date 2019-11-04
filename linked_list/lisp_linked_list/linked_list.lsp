(defun linked_list_function(n)
  n
)

(defun main()
  (loop for idx_i from 1 to 10
    do (format t "linked_list_function(~A)=<~A>~%" idx_i (linked_list_function idx_i))
  )
)

(main)
(exit)

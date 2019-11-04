;comment

(defun example_function(x)
  (* (- (+ x x) x) (/ x 1))
)

(defun main()
  (loop for idx_i from 1 to 9
    do (format t "example_function(~A)=<~A>~%" idx_i (example_function idx_i))
  )
)

(main)
(exit)

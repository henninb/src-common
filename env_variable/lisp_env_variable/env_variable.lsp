;comment

(defun env_variable_function(x)
  (* (- (+ x x) x) (/ x 1))
)

(defun main()
  ;(print (getenv "OS"))
  (print (sb-ext:posix-getenv "OS"))
)

(main)
(exit)

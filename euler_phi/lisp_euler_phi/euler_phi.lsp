(defun r_gcd(a b)
  (if (= b 0) a (r_gcd b (mod a b)))
)

;need to use let to write this properly
;(defvar x 0)
;(defun totient_phi (n)
;  (setq x 0)
;  (loop for r from 1 to n
;    do (when (= (r_gcd r n) 1) (incf x 1))
;  )
;  x
;)

(defun euler_phi (n)
  (let ((x 0))
    (loop for r from 1 to n
      do (when (= (r_gcd r n) 1) (incf x 1))
    )
    x
  )
)

(defun main()
  (loop for idx_i from 1 to 25
    do (format t "euler_phi(~A)=<~A>~%" idx_i (euler_phi idx_i))
  )
)

(main)
(exit)

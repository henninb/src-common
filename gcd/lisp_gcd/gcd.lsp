(defun r_gcd(a b)
  (if (= b 0) a (r_gcd b (mod a b)))
)

(defun main()
  (format t "gcd(~A, ~A)=<~A>~%" 25 5 (gcd 25 5))
  (format t "r_gcd(~A, ~A)=<~A>~%" 25 5 (r_gcd 25 5))
)

(main)
(exit)

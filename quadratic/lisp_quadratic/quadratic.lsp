(defun quadratic-roots (a b c)
    "Returns the roots of a quadratic equation aX^2 + bX + c = 0"
    (let ((discriminant (- (* b b) (* 4 a c))))
      (values (/ (+ (- b) (sqrt discriminant)) (* 2 a))
              (/ (- (- b) (sqrt discriminant)) (* 2 a)))))

;(print (quadratic-roots 1 2 4))
(print (quadratic-roots 1 -14 45))
(print (quadratic-roots 1 17 70))
(exit)

; Gets the Easter date for a given Year 'year'

(defun easterCalculator (year)
  (let ((golden-year (+ 1 (mod year 19)))  (century (+ (/ year 100) 1)))
  (let ((skipped-leap-years (- (/ (* 3 century) 4) 12))    (correction-factor (- (/ (+ (* 8 century) 5) 25) 5)))
  (let ((d (- (/ (* 5 year) 4) skipped-leap-years 10))
  (epac (mod (- (+ (* 11 golden-year) 20 correction-factor)                                                    skipped-leap-years) 30)))
  (if (or (and (= epac 25) (> golden-year 11)) (= epac 24))
  (incf epac))  (let ((n (- 44 epac)) (month nil) (day-of-month nil))
  (if (< n 21)
  (setf n (+ 30 n)))
  (setf n (- (+ n 7) (mod (+ d n) 7)))    (cond ((> n 31)
  (setf month 'APRIL)
  (setf day-of-month (- n 31)))
  (t     (setf month 'MARCH)
  (setf day-of-month n)))    (format nil "~a.~a.~a" (round day-of-month) month year)))))
)

(defun main()
  (loop for idx_i from 2018 to 2100
    do (format t "easterCalculator(~A)=<~A>~%" idx_i (easterCalculator idx_i))
  )
)

(main)
(exit)

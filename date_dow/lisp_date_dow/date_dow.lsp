(defconstant *day-names* '("Monday" "Tuesday" "Wednesday" "Thursday" "Friday" "Saturday" "Sunday"))

(defun day-of-week (month day  year)
    "Returns the day of the week as an integer. Monday is 0."
    (nth-value
     6
     (decode-universal-time
      (encode-universal-time 0 0 0 day month year 0)
      0)))

;(multiple-value-bind
;    (second minute hour date month year day-of-week dst-p tz)
;    (get-decoded-time)
;    (format t "It is now ~2,'0d:~2,'0d:~2,'0d of ~a, ~d/~2,'0d/~d (GMT~@d)"
;          hour
;          minute
;          second
;          (nth day-of-week *day-names*)
;          month
;          date
;          year
;          (- tz)))

(print (day-of-week 12 23 1965))
(print (day-of-week 1 22 2010))

(exit)

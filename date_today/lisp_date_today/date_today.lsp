(defun date_today_old ()
  "local"
  (multiple-value-bind (sec min1 hour day month year dow dst-p tz)
    (get-decoded-time)
    (declare (ignore dow dst-p tz))
    (format nil "local=<~d-~2,'0d-~2,'0d ~2,'0d:~2,'0d:~2,'0d>" year month day hour min1 sec))
)

(defun date_utc_old ()
  "utc"
  (multiple-value-bind (sec min1 hour day month year dow dst-p tz)
  (decode-universal-time (get-universal-time) 0)
  (declare (ignore dow dst-p tz))
  ;(format nil "utc=<~2,'0d:~2,'0d:~2,'0d>" hour min1 sec))
  (format nil "utc=<~d-~2,'0d-~2,'0d ~2,'0d:~2,'0d:~2,'0d>" year month day hour min1 sec)
  )
)

(defun date_today ()
  "local"
  (let (
         (year (nth-value 5 (get-decoded-time)))
         (month (nth-value 4 (get-decoded-time)))
         (day (nth-value 3 (get-decoded-time)))
         (hour (nth-value 2 (get-decoded-time)))
         (min1 (nth-value 1 (get-decoded-time)))
         (sec (nth-value 0 (get-decoded-time)))
       )
    (format nil "local=<~d-~2,'0d-~2,'0d ~2,'0d:~2,'0d:~2,'0d>~%" year month day hour min1 sec)
  )
)

(defun date_utc ()
  "utc"
  (let (
         (year (nth-value 5 (decode-universal-time (get-universal-time) 0)))
         (month (nth-value 4 (decode-universal-time (get-universal-time) 0)))
         (day (nth-value 3 (decode-universal-time (get-universal-time) 0)))
         (hour (nth-value 2 (decode-universal-time (get-universal-time) 0)))
         (min1 (nth-value 1 (decode-universal-time (get-universal-time) 0)))
         (sec (nth-value 0 (decode-universal-time (get-universal-time) 0)))
       )
    (format nil "utc=<~d-~2,'0d-~2,'0d ~2,'0d:~2,'0d:~2,'0d>~%" year month day hour min1 sec)
  )
)

(defun utc_dow (day month year)
    "Returns the day of the week as an integer.  Monday is 0."
    (nth-value 6 (decode-universal-time (encode-universal-time 0 0 0 day month year 0) 0))
)



(defun main()
  (format t (date_today))
  (format t (date_utc))
  (format t "seconds since Jan 1 1900 UTC=(~A)~%" (get-universal-time))
)

(main)
(exit)

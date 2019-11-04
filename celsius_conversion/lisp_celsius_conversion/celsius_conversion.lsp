(defun toFahrenheit(x)
  (+ 32.0 (* (/ 9.0 5.0) x))
)
(defun toCelsius(x)
  (* (- x 32.0) (/ 5.0 9.0))
)

(defun main()
    (format t "toFahrenheit(~5,2F)=<~5,2F>~%" 21.0 (toFahrenheit 21.0))
    (format t "toCelsius(~5,2F)=<~5,2F>~%" 70.0 (toCelsius 70.0))
)

(main)
(exit)

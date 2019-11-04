;comment
(define (toFahrenheit x)
  (+ 32.0 (* (/ 9.0 5.0) x))
)
(define (toCelsius x)
  (* (- x 32.0) (/ 5.0 9.0))
)

(define (main)
  ;(format #t "toFahrenheit(~a)=<~a>\n" 21.0 (toFahrenheit 21.0))
  (display (string-append "toFahrenheit(" (number->string 21.0) ")=<" (number->string (toFahrenheit 21.0)) ">\n"))
  ;(format #t "toCelsius(~a)=<~a>\n" 70 (toCelsius 70.0))
  (display (string-append "toCelsius(" (number->string 21.0) ")=<" (number->string (toCelsius 70.0)) ">\n"))
)

(main)
(exit)

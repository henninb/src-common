(define (fibonacci n)
  (if (< n 2)
      n
      (+ (fibonacci (- n 1)) (fibonacci (- n 2)))
  )
)

(define (main)
  (do ((idx_i 1 (+ idx_i 1)))
    ((> idx_i 24))
    ;(format #t "fibonacci(~a)=<~a>\n" idx_i (fibonacci idx_i))
    (display (string-append "fibonacci(" (number->string idx_i) ")=<" (number->string (fibonacci idx_i)) ">\n"))
  )
)

(main)
(exit)

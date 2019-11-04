(define factorial
  (lambda (n)
    (if (= n 0) 1
        (* n (factorial (- n 1)))))
)

(define (main)
  (do ((idx_i 1 (+ idx_i 1)))
    ((> idx_i 13))
    ;(format #t "factorial(~a)=<~a>\n" idx_i (factorial idx_i))
    (display (string-append "factorial(" (number->string idx_i) ")=<" (number->string (factorial idx_i)) ">\n"))
  )
)

(main)
(exit)


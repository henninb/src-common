;comment

(define (r_gcd a b)
  (if (= b 0) a
    (r_gcd b (modulo a b))
  )
)

(define (main)
  (display (string-append "r_gcd(24 4)=<" (number->string (r_gcd 24 4)) ">\n"))
  (display (string-append "r_gcd(5 25)=<" (number->string (r_gcd 5 25)) ">\n"))
  ;(format #t "r_gcd()=<~a>\n" (r_gcd 24 4))
  ;(format #t "r_gcd()=<~a>\n" (r_gcd 5 25))
)

(main)
(exit)

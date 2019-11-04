;comment

(define (rec_for_loop n)
  (if (= n 0)
    n
   (rec_for_loop (- n 1))
  )
  ;(format #t "~a\n"  n)
  (display (string-append (number->string n) "\n"))
)

(define (main)
  (rec_for_loop 10)
)

(main)
(exit)



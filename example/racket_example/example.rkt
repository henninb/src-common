#lang racket/base

(define (example_function x)
  (* (- (+ x x) x) (/ x 1))
)

(define (main)
  (do ((idx_i 1 (+ idx_i 1)))
    ((> idx_i 9))
    (display (string-append "example_function(" (number->string idx_i) ")=<" (number->string (example_function idx_i)) ">\n"))

  )
)

(main)

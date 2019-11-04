;comment
;(use-modules (ice-9 format))
;(use (ice-9 format))
;(use lib/srfi1 lib/http-client)
;(load "~~lib/gambcext")

(define (example_function x)
  (* (- (+ x x) x) (/ x 1))
)

(define (main)
  (do ((idx_i 1 (+ idx_i 1)))
    ((> idx_i 9))
    (display (string-append "example_function(" (number->string idx_i) ")=<" (number->string (example_function idx_i)) ">\n"))
    ;(print idx_i) (newline)
    ;(print "The procedure returned " (name (+ 1 2) (+ 3 4)) ".\n")

  )
)

(main)
(exit)

;(define-module (leap-year)
;  #:export (leap-year?))
;https://github.com/exercism/scheme/blob/master/exercises/leap/example.scm

(define leap-year?
  (lambda (year)
    (and (= (modulo year 4) 0)
         (or (not (= (modulo year 100) 0))
             (= (modulo year 400) 0))))
)



;(define (main)
;  ;(do ((idx_i 1 (+ idx_i 1)))
;  ;  ((> idx_i 9))
;  ;  (display (string-append "example_function(" (number->string idx_i) ")=<" (number->string (example_function idx_i)) ">\n"))
;  ;)
;  ;(leap-year 2017)
;)
;
;(main)
(exit)
;(define *start* 0)
;(define *aux* 1)
;(define *end* 2)

;(define hanoi
;  (lambda (n start aux end)
;    (if (= n 1)
;      (list start end)
;      (append
;        (hanoi (- n 1) start aux end)
;        (list start aux)
;        (hanoi (- n 1) aux start end)))))

;Solving the Tower of Hanoi in Scheme
(define (move N from to spare)
  (if (= N 0)
      (display "")
      (begin
        (move (- N 1) from spare to)
        (display "move from ")(display from)(display " to ")(display to)(display "\n")
        (move (- N 1) spare to from))))

(move 3 'start 'end 'spare)
;(display (hanoi))
(exit)

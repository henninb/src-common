;(in-package :User)
;(define (hanoi n a b c)
;    (if (eqv? n 0) '()
;    (append (hanoi (- n 1) a c b)
;        (list (cons a b))
;        (hanoi (- n 1) c b a)))
;)

; Simple towers of Hanoi program. Note that Start-Peg and Goal-Peg are
; integers from 1 to 3 indicating the peg number. Ie to move 4 discs,
; starting on the first peg and finishing on the last one, execute(Towers 4 1 3)

(defun Towers (Number-of-Discs Start-Peg Goal-Peg)
  (cond
    ((= 1 Number-of-Discs) (format t "~%Move Top Disc from peg ~D to peg ~D."
       Start-Peg Goal-Peg))
    (t (Towers (1- Number-of-Discs)
      Start-Peg
        (Remaining-Peg Start-Peg Goal-Peg))
        (Towers 1 Start-Peg Goal-Peg)
        (Towers (1- Number-of-Discs)
        (Remaining-Peg Start-Peg Goal-Peg)
          Goal-Peg))))

; Given two peg numbers, what is the peg number of the third peg?

(defun Remaining-Peg (Peg1 Peg2)
  (- 6 Peg1 Peg2))

(towers 2 1 2)
(towers 3 1 2)
(towers 4 1 2)
;(hanoi 3 1 2 3)
;(newline)
(exit)

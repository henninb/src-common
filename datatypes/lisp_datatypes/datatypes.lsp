(defun datatypes_function(n)
  n
)

(defun main()
  (loop for idx_i from 1 to 10
    do (format t "datatypes_function(~A)=<~A>~%" idx_i (datatypes_function idx_i))
  )
)

;constants
;(defconstant PI 3.141592)

;if condition
(if (= 1 0) 1 0)
(print (if (= 1 0) 1 0))

(print "n")

;square root example
(print (sqrt 4))

;setq/setf are not variable declaration operators, but variable modification operators, as implied by their names.

; defvar is a global variable
(defvar x 10)
(defvar y 34.567)
(defvar z 0.551)
(defvar ch nil)
(defvar n 123.78)
(defvar bg 11.0e+4)
(defvar r 124/2)

(print x)
(write x)
(print y)
(print n)
(print ch)
(print bg)
(print r)

(print (type-of x))
(print (type-of y))
(print (type-of n))
(print (type-of ch))
(print (type-of bg))
(print (type-of r))

(defmacro setTo10(num)
  (setq num 10)
  (print num)
  (print "")
)

(setTo10 40)
(setq x 100)
(print x)
(defvar A 10)
(print A)
; incriment A by 3
(incf A 3)
(print A)
;decriment A by 4
(decf A 4)
(print A)
(print (+ A 4))
(print (- A 4))
(print (/ A 3))
(print (mod A 3))
(print (rem A 4))
(print (gcd A 4))
(print (= A 4))
(print (= A 9))
(print (/= A 4))
(print (> A 4))
(print (min A 4))
(print (max A 4))

;using when
(setq a 100)
(when (> a 20)
   (format t "~% a is greater than 20")
)
(format t "~% value of a is ~d ~%" a)
(write-string "test")

(let ((x 'a) (y 'b)(z 'c))
)

(defun myfunction(context p)
  (declare (ignore context))
  (print p)
)


(let ( (a 7))
  (+ a 1)
  (print a)
)

;(defun strcat* (string-designators)
;  "Concatenate all the strings in STRING-DESIGNATORS."
;  (with-output-to-string (strcat)
;    (dotree (s string-designators)
;      (princ s strcat)))
;)
;(strcat "1234" "567890")
;(substr "Jeff Sanders" 1 6)

(length (list "hop" "skip" "jump"))
;(list-ref (list "hop" "skip" "jump") 0)

(member "fall" (list "hop" "skip" "jump"))


;(filter positive? (list 1 -2 6 7 0))
;(first (list 1 2 3))


;(map sqrt (list 1 4 9 16))
(list 1 4 9 16)

(defun sum (n m)
  "Recursively increment N and decrement M untill M = 0"
  (if (= m 0) ;; don't use EQ for numbers, use EQL or =.
    n
    (sum (1+ n) (1- m)))
)
(trace sum)

(print (sum 4 7))

(defun rec_for_loop (n)
  "recursive"
  (if (= n 0)
    n
   (rec_for_loop (- n 1))
  )
  (print n)
)

(trace rec_for_loop)

(print (rec_for_loop 10))

(defun explode_list (input)
   (if (null input)
    nil                            ; list termination
     (cons
      (list (first input))         ; create singleton list with first element
      (explode_list (rest input))  ; concatenate with the rest of the list
  ))
)

(cons 1 (cons 2 nil))
(nth 0 '(a b c d))

(defun rec_for_loop_reverse (n)
  "recursive for loop reverse does not work"
  (if (= n 0)
    n
   (rec_for_loop_reverse (- n 1))
  )
)

(defun fdouble (x)
  "Multiple X by 2."
  (* 2 x)
)

(print (fdouble (fdouble (fdouble (fdouble 1)))))

(defun find-even (L)
  "Given a list L of numbers, return the leftmost even member."
  (if (null L)
      nil
    (if (evenp (first L))
        (first L)
      (find-even (rest L)))
  )
)

(main)
(exit)

(defun bubble-sort (array cmp-fun)
  "Bubble sort"
  (let ((result (copy-seq array)))
    (loop for i from (1- (length result)) downto 0 do
      (loop for j from 0 to i
        when (funcall cmp-fun (aref result i) (aref result j)) do
          (rotatef (aref result i) (aref result j)) ))
    result
  )
)


(defun main()
  (print #(10 2 4 1 6 5 8 7 3 9))
  (print (bubble-sort #(10 2 4 1 6 5 8 7 3 9) #'<))
  (print "")
)

(main)
(exit)

(defun rec_for_loop (n)
  "recursive for loop"
  (if (= n 0)
    n
   (rec_for_loop (- n 1))
  )
  (print n)
)

(defun rec_for_loop_reverse (n)
  "recursive for loop"
  (if (= n 0)
   (rec_for_loop_reverse (- n 1))
  )
)
;let rec for_loop x =
;  if x = 0 then
;    0 |> ignore
;  else
;    (for_loop (x-1))
;    printfn "%d" x
;  ;;

(defun main()
  ;(loop for idx_i from 1 to 10
    ;do (format t "recursive_for_loop_function(~A)=<~A>~%" idx_i (recursive_for_loop_function idx_i))
  ;  do (format t "recursive_for_loop_function(~A)=<~A>~%" idx_i (recursive_for_loop_function idx_i))
  ;)
  (rec_for_loop 10)
  (rec_for_loop_reverse 10)
)

(main)
(exit)

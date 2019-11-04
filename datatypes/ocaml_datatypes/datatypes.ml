(* Variables MUST start with lower case letter or low line _. *)
(* declare x to be a mutable variable of type “int ref” *)
let x = ref 3;;

(* reset the value of x *)
x := 4;;

(* syntax for getting the value of x *)
!x;;

x := !x + 1;;  (* increase x by 1 *)

print_int !x;;
print_string "\n";;

(int_of_float 3.) + 1 ;; (* change float to int, then add 1 *)

(float_of_int 3) +. 2.2;; (* change int to float, then add a float. *)

print_string (string_of_float 3.2);; (* change float to string *)

print_string "\n";;

print_string (string_of_int 3);; (* change int to string *)
print_string "\n";;

3 ;;    (* int *)
3. ;;   (* float *)
'x' ;;  (* char *)
"something" ;; (* string *)
true;;             (* bool *)
false;;            (* bool *)
() ;;              (* unit *)

Printf.printf "%B" (3 < 4);;            (* prints true *)
print_string "\n";;
Printf.printf "%B" (true && false);;    (* prints false *)
print_string "\n";;
Printf.printf "%B" (true || (3 < 4));;    (* prints true *)
print_string "\n";;

(* syntax of function with 2 parameters *)
fun x y -> x +. y ;;

(* apply it to 2 arguments *)
(fun x y -> x +. y) 3. 4. ;;

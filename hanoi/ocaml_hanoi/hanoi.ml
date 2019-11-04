(* move n discs from a to z (using third peg named x) *)
let rec hanoi move n a z x = if n = 0 then () else
  (hanoi move (n-1) a x z ; move n a z ; hanoi move (n-1) x z a)
let printmove disc a b = print_endline
("Move disc " ^ (string_of_int disc) ^ " from " ^ a ^ " to " ^ b) ;;
hanoi printmove 4 "peg A" "peg C" "peg B"

let main () =
  if  Array.length Sys.argv <> 1 then
    begin
      Printf.printf "%s <noargs>\n" Sys.argv.(0);
      exit 1
    end
  else
    begin
      for idx_i = 1 to 10 do
        (*Printf.printf "calculateEasterSunday(%d)=<%s>\n" idx_i (calculateEasterSunday(idx_i)) *)
      done;
    end
let _ = main ()

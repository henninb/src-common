(* rec - implies recursion *)
let rec fibonacci(x) = if x = 0 then 0 else if x = 1 then 1 else fibonacci(x - 2) + fibonacci(x - 1);;

let main () =
  if  Array.length Sys.argv <> 1 then
    begin
      Printf.printf "%s <noargs>\n" Sys.argv.(0);
      exit 1
    end
  else
    begin
    for idx_i = 1 to 24 do
      Printf.printf "fibonacci(%d)=<%d>\n" idx_i (fibonacci(idx_i))
    done;
    end

let _ = main ()

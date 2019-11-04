(* comment *)

let example_function(n) = if n < 0 then abs n else (n + n - n) * (n / 1) * (int_of_float 1.25);;

let main () =
  if  Array.length Sys.argv <> 1 then
    begin
      Printf.printf "%s <noargs>\n" Sys.argv.(0);
      exit 1
    end
  else
    begin
    for idx_i = 1 to 9 do
      Printf.printf "example_function(%d)=<%d>\n" idx_i (example_function(idx_i))
    done;
    end

let _ = main ()

let rec factorial(n) = if n = 1 then 1 else n * factorial(n - 1);;

let main () =
  if  Array.length Sys.argv <> 1 then
    begin
      Printf.printf "%s <noargs>\n" Sys.argv.(0);
      exit 1
    end
  else
    begin
    for idx_i = 1 to 15 do
      Printf.printf "factorial(%d)=<%d>\n" idx_i (factorial(idx_i))
    done;

    end

let _ = main ()

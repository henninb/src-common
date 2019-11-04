let inc = fun n -> n + 1;;

inc(2);;

let f4 (a,b,c) = a + b * c;;

f4 (2,3,4);;

let main () =
  if  Array.length Sys.argv <> 1 then
    begin
      Printf.printf "%s <noargs>\n" Sys.argv.(0);
      exit 1
    end
  else
    begin
    for idx_i = 1 to 9 do
      Printf.printf "inc(%d)=<%d>\n" idx_i (inc(idx_i))
    done;
    end

let _ = main ()

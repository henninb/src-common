(* comment *)

let toFahrenheit(x) = x *. (9.0 /. 5.0) +. 32.0;;
let toCelsius(x) = (x -. 32.0) *. (5.0 /. 9.0);;

let main () =
  if  Array.length Sys.argv <> 1 then
    begin
      Printf.printf "%s <noargs>\n" Sys.argv.(0);
      exit 1
    end
  else
    begin
      Printf.printf "toFahrenheit(%d)=<%f>\n" 21 (toFahrenheit(21.0));
      Printf.printf "toCelsius(%d)=<%f>\n" 70 (toCelsius(70.0))
    end

let _ = main ()



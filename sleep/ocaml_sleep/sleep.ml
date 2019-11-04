(* comments *)
let seconds = 5;;


let main () =
  if  Array.length Sys.argv <> 1 then
    begin
      Printf.printf "%s <noargs>\n" Sys.argv.(0);
      exit 1
    end
  else
    begin
      print_endline "Sleeping...";
      Unix.sleep seconds;
      print_endline "Awake!"
    end

let _ = main ()

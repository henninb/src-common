let main () =
  if  Array.length Sys.argv <> 2 then
    begin
      Printf.printf "%s <arg1>\n" Sys.argv.(0);
      exit 1
    end
  else
    begin
      print_endline "begining of program"
    end

let _ = main ()

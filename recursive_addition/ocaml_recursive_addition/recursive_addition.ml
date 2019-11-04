let rec_add x  y =
    if y = 0 then
      x
    else
      1 + rec_add(x,(y - 1));;

let main () =
  if  Array.length Sys.argv <> 1 then
    begin
      Printf.printf "%s <noargs>\n" Sys.argv.(0);
      exit 1
    end
  else
    begin
      print_endline "begining of program"
    end

let _ = main ()

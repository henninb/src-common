let rec bsort s =
  let rec _bsort = function
    | x :: x2 :: xs when x > x2 ->
        x2 :: _bsort (x :: xs)
    | x :: x2 :: xs ->
        x :: _bsort (x2 :: xs)
    | s -> s
  in
  let t = _bsort s in
    if t = s then t
    else bsort t;;

let rec print_list = function
[] -> ()
| e::l -> print_int e ; print_string " " ; print_list l;;

let main () =
  let x = [10; 2; 4; 1; 6; 5; 8; 7; 3; 9]
  in
  if  Array.length Sys.argv <> 1 then
    begin
      Printf.printf "%s <noargs>\n" Sys.argv.(0);
      exit 1
    end
  else
    begin
     print_list ( x ); Printf.printf "\n";
     print_list ( bsort x ); Printf.printf "\n";
     exit 0
    end

let _ = main ()

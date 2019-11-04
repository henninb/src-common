let rec range = function 0 -> [] | n -> range(n-1) @ [n]

let factors n =
  List.filter (fun v -> (n mod v) = 0) (range n)

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

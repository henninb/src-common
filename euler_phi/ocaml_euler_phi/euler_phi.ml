let rec gcd a b =
  if a = 0 then
    b
  else if b = 0 then
    a
  else if a > b then
    gcd b (a mod b)
  else
    gcd a (b mod a);;

let x = ref 0;;

let euler_phi n =
  for idx_i = 1 to n do
    if 1 = (gcd idx_i n) then
      Printf.printf " * "
    else
      Printf.printf " "
  done;
    !x;;

(*
let euler_phi_new n =
  for idx_i = 1 to n do
    if 1 = (gcd idx_i n) then
    begin
      !x = 1;
      Printf.printf " * "
    end
    else
    begin
      !x = 1;
      Printf.printf " "
    end
  done;
    !x;;
*)

let main () =
  if  Array.length Sys.argv <> 1 then
    begin
      Printf.printf "%s <noargs>\n" Sys.argv.(0);
      exit 1
    end
  else
    begin
      for idx_i = 1 to 24 do
        Printf.printf "euler_phi(%d)=<%d>\n" idx_i (euler_phi(idx_i));
        Printf.printf "euler_phi(%d)=<%d>\n" idx_i (euler_phi(idx_i))
      done;
    end

let _ = main ()


let rec gcd a b =
  if      a = 0 then b
  else if b = 0 then a
  else if a > b then gcd b (a mod b)
  else               gcd a (b mod a);;

let main () =
  let x = gcd 144 12 and
      y = gcd 64 12
  in
  if  Array.length Sys.argv <> 1 then
    begin
      Printf.printf "%s <noargs>\n" Sys.argv.(0);
      exit 1
    end
  else
    begin
      Printf.printf "gcd(144,12) %d\n" x;
    end

let _ = main ()

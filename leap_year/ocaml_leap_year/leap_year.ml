let isLeapYear( year ) =
  if( year > 1581 ) then
    (((year mod 4 = 0) && (year mod 100 > 0)) || (year mod 400 == 0))
  else
    false

(*
let isLeapYear(year) =
case (year mod 100, year mod 400) of
     (0,0) => true |
     (0,_) => false |
     _ => year mod 4 = 0;;
*)
(*
let leap_year(year) =
   case(year mod 100, year mod 400, year mod 4) of
       (_,0,_) => true  |
       (0,_,_) => false |
       (_,_,0) => true  |
       _ => false;;
*)

let main () =
  if  Array.length Sys.argv <> 1 then
    begin
      Printf.printf "%s <noargs>\n" Sys.argv.(0);
      exit 1
    end
  else
    begin
    for idx_i = 1999 to 2100 do
      Printf.printf "isLeapYear(%d)=<%B>\n" idx_i (isLeapYear(idx_i))
    done;

    end

let _ = main ()

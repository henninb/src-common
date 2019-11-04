let calculateEasterSunday (year) =
  let g = ((year mod 19) + 1) in
  let s = ((year - 1600) / 100) - ((year - 1600) / 400) in
  let l = (((year - 1400) / 100) * 8) / 25 in
  let pp = (30003 - 11 * g + s - l) mod 30 in
  let p = if pp = 28 then (if g > 11 then 27 else 0) else if pp = 29 then 28 else pp in
  let d = (year + (year / 4) - (year / 100) + (year / 400)) mod 7 in
  let x = ((70004 - d - p) mod 7) + 1 in
  let month = if (p + x) < 11 then 3 else 4 in
  let day = if (p + x) < 11 then ((p + x) + 21) else ((p + x) - 10) in
  String.concat "-" [string_of_int(year); string_of_int(month);string_of_int(day)];;

let main () =
  if  Array.length Sys.argv <> 1 then
    begin
      Printf.printf "%s <noargs>\n" Sys.argv.(0);
      exit 1
    end
  else
    begin
      for idx_i = 2018 to 2100 do
        Printf.printf "calculateEasterSunday(%d)=<%s>\n" idx_i (calculateEasterSunday(idx_i))
      done;
    end
let _ = main ()



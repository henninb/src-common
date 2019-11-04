(* comment *)
open Unix;;

let computeDateDoy year month day =
  let n1 = 275 * month / 9 in
  let n2 = (month + 9) / 12 in
  let n3 = (1 + ((year - 4 * (year / 4) + 2) / 3)) in
  let n = n1 - (n2 * n3) + day - 30 in
  n;;

let datetimeToEpoch years months day hours mins secs =
  let epoch_start = ref 1970 in
  let total_days = ref 0 in
  let total_secs = ref 0 in

  while  !epoch_start < years  do
    total_days := !total_days + (computeDateDoy !epoch_start 12 31);
    epoch_start := !epoch_start + 1
  done;

  total_days := !total_days + (computeDateDoy years months (day-1));
  total_secs := (!total_days * 86400) + (hours * 60 * 60) + (mins * 60) + secs;

  !total_secs;;

let main () =
  let tm = time() in
  let utc = gmtime tm in
  let year = 1900 + utc.tm_year in
  let month = 1 + utc.tm_mon in
  let day = utc.tm_mday in
  let hour = utc.tm_hour in
  let min = utc.tm_min in
  let sec = utc.tm_sec in
  if  Array.length Sys.argv <> 1 then
    begin
      Printf.printf "%s <noargs>\n" Sys.argv.(0);
      exit 1
    end
  else
    begin
    Printf.printf "epoch=<%d>\n" (datetimeToEpoch year month day hour min sec);
    exit 0
    end

let _ = main ()

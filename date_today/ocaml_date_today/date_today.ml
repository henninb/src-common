(* comment *)

open Unix;;

let main () =
  let tm = time() in
  let utc = gmtime tm in
  let local = localtime tm in
  if  Array.length Sys.argv <> 1 then
    begin
      Printf.printf "%s <noargs>\n" Sys.argv.(0);
      exit 1
    end
  else
    begin
      Printf.printf "utc=<%d-%02d-%02d %02d:%02d:%02d>\n" (1900 + utc.tm_year) (1 + utc.tm_mon) utc.tm_mday utc.tm_hour utc.tm_min utc.tm_sec;
      Printf.printf "local=<%d-%02d-%02d %02d:%02d:%02d>\n" (1900 + local.tm_year) (1 + local.tm_mon) local.tm_mday local.tm_hour local.tm_min local.tm_sec;
      exit 0
    end

let _ = main ()

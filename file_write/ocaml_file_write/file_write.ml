open Printf

(* by line *)
let () =
  let ic = open_in "input.txt" in
  let oc = open_out "output.txt" in
  try
    while true do
      let s = input_line ic in
      output_string oc s;
      output_char oc '\n';
    done
  with End_of_file ->
    close_in ic;
    close_out oc;
;;

(* by char *)
let () =
  let ic = open_in "input.txt" in
  let oc = open_out "output.txt" in
  try
    while true do
      let c = input_char ic in
      output_char oc c
    done
  with End_of_file ->
    close_in ic;
    close_out oc;
;;

let file_write fname message =
  let oc = open_out fname in    (* create or truncate file, return channel *)
  fprintf oc "%s\n" message;
  close_out oc;                (* flush and close the channel *)

(* let file_read fname = *)
  let ic = open_in fname in
  try
    let line = input_line ic in  (* read line from in_channel and discard \n *)
    print_endline line;          (* write the result to stdout *)
    flush stdout;                (* write on the underlying device now *)
    close_in ic                  (* close the input channel *)

  with e ->                      (* some unexpected exception occurs *)
    close_in_noerr ic;           (* emergency closing *)
    raise e                      (* exit with error: files are closed but
                                    channels are not flushed *)

let main () =
  if  Array.length Sys.argv <> 1 then
    begin
      Printf.printf "%s <noargs>\n" Sys.argv.(0);
      exit 1
    end
  else
    begin
      file_write "output.txt" "skol";
      exit 0
    end

let _ = main ()

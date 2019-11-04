(* comment *)
(*
open Date;
open Time;
*)

fun rec_for_loop_reverse(x) = if x = 0 then (0) else (print(Int.toString(x) ^ "\n");1 + rec_for_loop_reverse(x - 1));
fun rec_for_loop(x) = if x = 0 then print("") else (rec_for_loop(x - 1);print(Int.toString(x) ^ "\n"));

fun main() =
  let
    val args = CommandLine.arguments();
    val argc = List.length(args);
    val prgmName = "example";
  in
    if argc <> 0 then
    (
      print("Usage: " ^ prgmName  ^ " <noargs>\n");
      OS.Process.exit OS.Process.failure
    )
    else
    (
      rec_for_loop(10);
      rec_for_loop_reverse(10)
    )
  end;

val _ = main();

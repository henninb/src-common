open Date;
open Time;


fun main() =
  let
    val args = CommandLine.arguments();
    val argc = List.length(args);
    val prgmName = "date_utc";
    val date_now = Date.fromTimeLocal(Time.now());
    val date_utc = Date.fromTimeUniv(Time.now());
  in
    if argc <> 0 then
    (
      print("Usage: " ^ prgmName  ^ " <noargs>\n");
      OS.Process.exit OS.Process.failure
    )
    else
    (
      print(Date.toString(date_utc) ^ "\n")
    )
  end;

val _ = main();

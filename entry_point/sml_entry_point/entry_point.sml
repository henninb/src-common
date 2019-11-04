(*comment *)

fun main() =
  let
    val args = CommandLine.arguments()
    val argc = List.length(args)
    val prgmName = "entry_point"
  in
    if argc <> 1 then
    (
      print("Usage: " ^ prgmName  ^ " <arg1>\n");
      OS.Process.exit OS.Process.failure
    )
    else
    (
      print("arg1= " ^ List.nth(args, 0) ^  "\n")
    )
  end;

val _ = main();

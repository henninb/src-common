(* comment *)
open Real;

fun to_fahrenheit (x) = x * (9.0/5.0) + 32.0
fun to_celsius (x) = (x - 32.0) * (5.0/9.0)

fun main() =
  let
    val args = CommandLine.arguments()
    val argc = List.length(args)
    val prgmName = "celsius_conversion"
  in
    if argc <> 0 then
    (
      print("Usage: " ^ prgmName  ^ " <noargs>\n");
      OS.Process.exit OS.Process.failure
    )
    else
    (
      print("to_celsius(70.0)=<" ^ Real.toString(to_celsius(70.0)) ^ ">\n");
      print("to_fahrenheit(21.0)=<" ^ Real.toString(to_fahrenheit(21.0)) ^ ">\n")
    )
  end;

val _ = main();

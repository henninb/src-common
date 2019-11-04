fun env_variable_function(n) = if n < 0 then abs n else (n + n - n) * (n div 1);
fun rec_for_loop(x) = if x = 0 then print("") else (rec_for_loop(x - 1);print("env_variable_function(" ^ Int.toString(x) ^ ")=<" ^ Int.toString(env_variable_function(x)) ^ ">\n"));

fun main() =
  let
    val args = CommandLine.arguments()
    val argc = List.length(args)
    val prgmName = "env_variable"
  in
    if argc <> 0 then
    (
      print("Usage: " ^ prgmName  ^ " <noargs>\n");
      OS.Process.exit OS.Process.failure
    )
    else
    (
      print(OS.Process.getEnv "OS");
      OS.Process.exit((OS.Process.success)
    )
  end;

val _ = main();

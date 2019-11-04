fun main() =
  let
    val args = CommandLine.arguments();
    val argc = List.length(args);
    val prgmName = "date_dow";
    val date_now = Date.fromTimeLocal(Time.now());
    val d1 = Date.weekDay(date_now);
  in
    if argc <> 0 then
    (
      print("Usage: " ^ prgmName  ^ " <noargs>\n");
      OS.Process.exit OS.Process.failure
    )
    else
    (
      print (Date.fmt "%A\n" date_now)
    )

  end;

val _ = main();

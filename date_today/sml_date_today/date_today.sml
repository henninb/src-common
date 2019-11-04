val pad2 = StringCvt.padLeft #"0" 2;
val pad4 = StringCvt.padLeft #"0" 4;

val fromMonthCode =
fn Date.Jan => 1 | Date.Feb => 2 | Date.Mar => 3 | Date.Apr => 4
 | Date.May => 5 | Date.Jun => 6 | Date.Jul => 7 | Date.Aug => 8
 | Date.Sep => 9 | Date.Oct => 10 | Date.Nov => 11 | Date.Dec => 12;

fun date_today() =
  let
    val now = Date.fromTimeLocal(Time.now())
    val year = Date.year(now)
    val month = fromMonthCode(Date.month(now))
    val day = Date.day(now)
    val hour = Date.hour(now)
    val min = Date.minute(now)
    val sec = Date.second(now)
  in
    print("local=<" ^ Int.toString(year) ^ "-" ^ Int.toString(month) ^ "-" ^ Int.toString(day) ^ " " ^ Int.toString(hour) ^ ":" ^ Int.toString(min) ^ ":" ^ Int.toString(sec) ^ ">\n")
  end;

fun date_utc() =
  let
    val utc = Date.fromTimeUniv(Time.now())
    val year = Date.year(utc)
    val month = fromMonthCode(Date.month(utc))
    val day = Date.day(utc)
    val hour = Date.hour(utc)
    val min = Date.minute(utc)
    val sec = Date.second(utc)
  in
    print("utc=<" ^ Int.toString(year) ^ "-" ^ Int.toString(month) ^ "-" ^ Int.toString(day) ^ " " ^ Int.toString(hour) ^ ":" ^ Int.toString(min) ^ ":" ^ Int.toString(sec) ^ ">\n")
  end;

fun main() =
  let
    val args = CommandLine.arguments()
    val argc = List.length(args)
    val prgmName = "date_today"
  in
    if argc <> 0 then
    (
      print("Usage: " ^ prgmName  ^ " <noargs>\n");
      OS.Process.exit OS.Process.failure
    )
    else
    (
      date_today();
      date_utc()
    )
  end;

val _ = main();

(* comment *)

fun isLeapYear(year) =
case (year mod 100, year mod 400) of
     (0,0) => true |
     (0,_) => false |
     _ => year mod 4 = 0;

fun rec_for_loop(x, max) = if x = max then (0) else (print("leap_year" ^ Int.toString(x) ^  Bool.toString(isLeapYear(1976)) ^ "\n");1 + rec_for_loop( x + 1, max));

fun leap2(year) =
   case(year mod 100, year mod 400, year mod 4) of
       (_,0,_) => true  |
       (0,_,_) => false |
       (_,_,0) => true  |
       _ => false;

fun printLeapYears( startYear, stopYear ) =
    if startYear = stopYear then
      ""
    else
      (print(Int.toString(startYear) ^ " " ^ Bool.toString(isLeapYear(startYear)) ^"\n"); printLeapYears(startYear + 1, stopYear));

fun main() =
  let
    val args = CommandLine.arguments()
    val argc = List.length(args)
    val prgmName = "leap_year"
    val x = 4;
    val y = 6;
  in
    if argc <> 0 then
    (
      print("Usage: " ^ prgmName ^ " <noargs>\n");
      OS.Process.exit OS.Process.failure
    )
    else
    (
      print("")
    )

  end;

val _ = main();

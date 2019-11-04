(* comment *)
val pad2 = StringCvt.padLeft #"0" 2;

fun calculateEasterSunday( year ) =
  let
    val G = (year mod 19) + 1;
    val S = ((year - 1600) div 100) - ((year - 1600) div 400);
    val L = (((year - 1400) div 100) * 8) div 25;
    val PP = (30003 - 11 * G + S - L) mod 30;
    val P = if PP = 28 then (if G > 11 then 27 else 0) else if PP = 29 then 28 else PP;
    val D = (year + (year div 4) - (year div 100) + (year div 400)) mod 7;
    val X = ((70004 - D - P) mod 7) + 1;
    val month = if (P + X) < 11 then 3 else 4;
    val day = if (P + X) < 11 then ((P + X) + 21) else ((P + X) - 10);
  in
    print(Int.toString(year) ^ "-" ^ pad2(Int.toString(month)) ^ "-" ^ pad2(Int.toString(day)) ^ "\n")
  end;

fun main() =
  let
    val args = CommandLine.arguments()
    val argc = List.length(args)
    val prgmName = "easter_calculator"
  in
    if argc <> 0 then
    (
      print("Usage: " ^ prgmName ^ "<noargs>\n");
      OS.Process.exit OS.Process.failure
    )
    else
    (
      calculateEasterSunday(2018)
    )
  end;

val _ = main();

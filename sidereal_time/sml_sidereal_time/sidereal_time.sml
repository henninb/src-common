val fromMonthCode =
fn Date.Jan => 1 | Date.Feb => 2 | Date.Mar => 3 | Date.Apr => 4
 | Date.May => 5 | Date.Jun => 6 | Date.Jul => 7 | Date.Aug => 8
 | Date.Sep => 9 | Date.Oct => 10 | Date.Nov => 11 | Date.Dec => 12;

fun getGmtTime(h, min, s) =
  let
    val now = Date.fromTimeUniv(Time.now());
    val hour = Date.hour(now);
    val minutes = Date.minute(now);
    val seconds = Date.second(now);
  in
    Real.fromInt(hour) + Real.fromInt(minutes) / 60.0 + Real.fromInt(seconds) / 3600.0
  end;

fun julian_date(y, m, d) =
    let
      val y = y + 8000;
      val y = if m < 3 then y - 1 else y;
      val m = if m < 3 then m + 12 else m;
      val result = ((y * 365) + (y div 4) - (y div 100) + (y div 400) - 1200820 + (m * 153 + 3) div 5 - 92 + d - 1);
    in
      Real.fromInt(result) - 0.5
    end;

fun julian_date_time( y, m, d, h, min, s ) =
let
  val u = getGmtTime(h, min, s);
  val y = if y < 1900 then y + 1900 else y;
  val m = if m <= 2 then m + 12 else m;
  val y = if m <= 2 then y - 1 else y;
  val y = Real.fromInt(y);
  val m = Real.fromInt(m);
  val d = Real.fromInt(d);
  in
  Real.fromInt(Real.trunc(365.25 * (y + 4716.0))) + Real.fromInt(Real.trunc(30.6001 * (m + 1.0))) + d - 13.0 - 1524.5 + (u / 24.0)
end;

fun GM_sidereal_time( jd ) =
let
  val MJD = jd - 2400000.5;
  val MJD0 = Real.fromInt(Real.trunc(MJD));
  val ut = (MJD - MJD0) * 24.0;
  val t_eph = (MJD0 - 51544.5) / 36525.0;
in
 6.697374558 + 1.0027379093 * ut + (8640184.812866 + (0.093104 - 0.0000062 * t_eph) * t_eph) * t_eph / 3600.0
end;

fun LM_sidereal_time( jd, longitude ) =
let
  val GMST = GM_sidereal_time( jd );
  val X = (GMST + longitude / 15.0) / 24.0;
  val X = X - Real.fromInt(Real.trunc(X));
  val X = if X < 0.0 then X + 1.0 else X;
in
  24.0 * X
end;

fun frac(X) =
let
  val X = X - Real.fromInt(Real.trunc(X));
  val X = if X < 0.0 then X + 1.0 else X;
in
  X
end;

fun PrintHoursMinutesSeconds(t) =
let
  val X = t - Real.fromInt(Real.trunc(t));
  val X = if X < 0.0 then X + 1.0 else X;
  val hrs = Real.trunc(t);
  val hrs_str = Int.toString(hrs);
  val hrs_str = StringCvt.padLeft #"0" 2 hrs_str;
  val min = Real.trunc(60.0 * X);
  val min_str = Int.toString(min);
  val min_str = StringCvt.padLeft #"0" 2 min_str;
  val secs = Real.trunc(60.0 * (60.0 * X - Real.fromInt(min)));
  val secs_str = Int.toString(Real.trunc(60.0 * (60.0 * X - Real.fromInt(min))));
  val secs_str = StringCvt.padLeft #"0" 2 secs_str;

  (* val _ = print(hrs_str ^ ":" ^ min_str ^ ":" ^ secs_str ^ "\n"); *)
in
  (print(hrs_str ^ ":" ^ min_str ^ ":" ^ secs_str ^ "\n"))
end;

val now = Date.fromTimeUniv(Time.now());
val year = Date.year(now);
val month = fromMonthCode(Date.month(now));
val day = Date.day(now);
val hour = Date.hour(now);
val minutes = Date.minute(now);
val seconds = Date.second(now);

(*
val _ = print(Int.toString(year) ^ "." ^ Int.toString(month) ^ "." ^ Int.toString(day) ^ "\n");
val _ = print(Real.toString(julian_date(year, month, day)) ^ "\n");
val _ = print(Real.toString(julian_date_time(year, month, day, hour, minutes, seconds)) ^ "\n");
*)
val jd = julian_date_time(year, month, day, hour, minutes, seconds);

val LMST = LM_sidereal_time(jd, ~93.263);
val _ = PrintHoursMinutesSeconds(LMST);

val GMST = GM_sidereal_time(jd);
val _ = PrintHoursMinutesSeconds(frac(GMST) * 24.0);

(*
val x = StringCvt.padLeft #"0" 2 "9";
val _ = print (x ^ "\n");

val x = Int.toString(9);
val x = StringCvt.padLeft #"0" 2 x;
val _ = print (x ^ "\n");
*)
(*
StringCvt.padLeft #" " 8 (Int.fmt StringCvt.HEX 1200);
val it = "     4b0" : string

StringCvt.padLeft #" " 8;
val it = fn : string -> string

- StringCvt.padLeft #" ";
val it = fn : int -> string -> string

- StringCvt.padLeft;
val it = fn : char -> int -> string -> string
*)

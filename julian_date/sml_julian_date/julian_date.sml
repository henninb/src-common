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

val now = Date.fromTimeUniv(Time.now());
val year = Date.year(now);
val month = fromMonthCode(Date.month(now));
val day = Date.day(now);
val hour = Date.hour(now);
val minutes = Date.minute(now);
val seconds = Date.second(now);

val _ = print(Int.toString(year) ^ "." ^ Int.toString(month) ^ "." ^ Int.toString(day) ^ "\n");
val _ = print(Real.toString(julian_date(year, month, day)) ^ "\n");
val _ = print(Real.toString(julian_date_time(year, month, day, hour, minutes, seconds)) ^ "\n");

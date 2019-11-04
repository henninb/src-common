with text_io;
use text_io;
with ada.command_line;
use ada.command_line;
with calendar;
use calendar;

procedure julian_date is
  package int_io is new integer_io(integer);
  use int_io;
  package float1_io is new float_io(float);
  use float1_io;

  jd : float := 0.0;
  Now : Time := Calendar.Clock;
  Year : Year_Number;
  Month : Month_Number;
  Day : Day_Number;
  --Hour: Hour_Number;
  --jd1 : integer;

  function julian_date( y  : in  integer; m : in integer; d  : in  integer) return float is
    year: integer := y;
    month: integer := m;
  begin
    year := y + 8000;
    if m < 3 then
      year:= year - 1;
      month := m + 12;
    end if;
    return float((year * 365) + (year / 4) - (year / 100) + (year / 400) - 1200820 + (month * 153 + 3) / 5 - 92 + d - 1) - 0.5;
  end julian_date;

begin
  if argument_count /= 0 then
    put_line("Usage: " & command_name & " <noargs>");
    set_exit_status(failure);
    return;
  end if;

  Month := Calendar.Month(Date => Now);
  Day := Calendar.Day(Date => Now);
  Year := Calendar.Year(Date => Now);
  --jd1 := Calendar.Julian_Day(Year, Month, Day);
  put_line("today is: " & Integer'Image(Year) & "-" & Integer'Image(Month) & "-" & Integer'Image(Day));

  jd := julian_date(year, month, day);

  put(Float'Image(jd));
  put_line("");
  --put(jd.all, 6, 6, 0);
  put(jd, 0, 2, 0);
end julian_date;

with text_io;
use text_io;
with ada.command_line;
use ada.command_line;
with Ada.Calendar;
with Ada.Calendar.Formatting;
with gnat.calendar.time_io;
with GNAT.Calendar;
use GNAT.Calendar;
with ada.real_time;
use ada.real_time;
--with Ada.Calendar.Conversions;
--with Ada.Calendar.Arithmetic;
--with Ada.Calendar.Time_Zones;
--use Ada.Calendar.Time_Zones;
--with calendar;
--use calendar;

procedure  date_dow is
  package int_io is new integer_io(integer);
  use int_io;
  package float1_io is new float_io(float);
  use float1_io;

  --epoch : constant Ada.Calendar.Time := Ada.Calendar.Time_Of(1970, 01, 01);
  Epoch : constant Ada.Calendar.Time := Ada.Calendar.Formatting.Time_Of(1970, 1, 1, 0.0);
  Epoch_now : constant Ada.Real_Time.Time := Ada.Real_Time.Clock;
  --Epoch_local : constant Ada.Calendar.Time := Ada.Calendar.Formatting.Time_Of_At_Locale(1970, 1, 1, 0.0);

  now : Ada.Calendar.time := Ada.Calendar.Clock;
  years : integer;
  months : integer;
  days : integer;
  hours : integer;
  mins : integer;
  secs : integer;

begin
  if argument_count /= 0 then
    put_line("Usage: " & command_name & " <noargs>");
    set_exit_status(failure);
    return;
  end if;

  years := (Ada.Calendar.Year(now));
  months := (Ada.Calendar.Month(now));
  days := (Ada.Calendar.Day(now));
  hours := ((Hour(Now)));
  mins := ((Minute(Now)));
  secs := (Second(Now));
  --put_line ("Hour :" & Hour(Now)'Img);
  --put_line ("Minute :" & Minute(Now)'Img);
  --put_line ("Second :" & Second(Now)'Img);
  Put_line ("Day_Of_Week :" & Day_Of_Week(Now)'Img);
  Put_line ("Day_In_Year :" & Day_In_Year(Now)'Img);
  put_line ("Week_In_Year :" & Week_In_Year(Now)'Img);

  gnat.calendar.time_io.put_time(ada.calendar.clock, "datetime Local - %Y-%m-%d Time: %H:%M:%S");
  put_line("");
  put_line("datetime UTC - " & Ada.Calendar.Formatting.Image(now));
end  date_dow;

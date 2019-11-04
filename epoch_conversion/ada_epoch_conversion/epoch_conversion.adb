with text_io;
use text_io;
with ada.command_line;
use ada.command_line;
with ada.real_time;
use ada.real_time;
with Ada.Calendar;
with Ada.Calendar.Formatting;
with gnat.calendar.time_io;
with GNAT.Calendar; use GNAT.Calendar;
with Ada.Calendar.Conversions;
with Ada.Calendar.Arithmetic;
--GNAT.Calendar.Time_IO
with Ada.Calendar.Time_Zones;
use Ada.Calendar.Time_Zones;
with Ada.Calendar.Conversions;

procedure epoch_conversion is
  package int_io is new integer_io(integer);
  use int_io;
  package float1_io is new float_io(float);
  use float1_io;

  now : Ada.Calendar.time;
  utc : Ada.Calendar.time;
  years : integer;
  months : integer;
  days : integer;
  hours : integer;
  mins : integer;
  secs : integer;
  epoch: integer;

  function computeDateDoy( year: integer; month: integer; mday:integer ) return integer is
    n1: integer := 275 * month / 9;
    n2: integer := (month + 9) / 12;
    n3: integer := (1 + ((year - 4 * (year / 4) + 2) / 3));
    n: integer := n1 - (n2 * n3) + mday - 30;
  begin
    return n;
  end computeDateDoy;

  function datetimeToEpoch( years:integer; months:integer; mday:integer; hours:integer; mins:integer; secs:integer ) return integer is
    epoch_start : integer := 1970;
    total_days : integer := 0;
    total_secs : integer := 0;
  begin
    while( epoch_start < years ) loop
      total_days := total_days + computeDateDoy(epoch_start, 12, 31);
      epoch_start := epoch_start + 1;
    end loop;
    total_days := total_days + computeDateDoy(years, months, mday - 1);
    total_secs := (total_days * 86400) + (hours * 60 * 60) + (mins * 60) + secs;
    return total_secs;
  end datetimeToEpoch;

begin
  if argument_count /= 0 then
    put_line("Usage: " & command_name & " <noargs>");
    set_exit_status(failure);
    return;
  end if;

  now := Ada.Calendar.Clock;
  months := Ada.Calendar.Month(Date => now);
  days := Ada.Calendar.Day(Date => now);
  years := Ada.Calendar.Year(Date => now);
  hours := GNAT.Calendar.Hour(now);
  mins := GNAT.Calendar.Minute(now);
  secs := GNAT.Calendar.Second(now);
  utc :=  Ada.Calendar.Formatting.Time_Of( years, months, days, hours, mins, secs, 0.0, false, 2*60*(UTC_Time_Offset/60));
  months := Ada.Calendar.Month(Date => utc);
  days := Ada.Calendar.Day(Date => utc);
  years := Ada.Calendar.Year(Date => utc);
  hours := GNAT.Calendar.Hour(utc);
  mins := GNAT.Calendar.Minute(utc);
  secs := GNAT.Calendar.Second(utc);


  epoch := datetimeToEpoch(years, months, days, hours, mins, secs);
  put_line("datetimeToEpoch=(" & Integer'Image(epoch) & ")");

  gnat.calendar.time_io.put_time(ada.calendar.clock, "INFO: localtime=<%Y/%m/%d %H:%M:%S>");
  put_line("");
  put_line("INFO: utc=<" & Ada.Calendar.Formatting.Image(now) & ">");
end epoch_conversion;

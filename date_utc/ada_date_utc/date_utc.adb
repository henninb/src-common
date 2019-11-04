with text_io;
use text_io;
with ada.command_line;
use ada.command_line;
with calendar;
use calendar;
--with Ada.Calendar;
with GNAT.Calendar;
use GNAT.Calendar;
with Ada.Calendar;             use Ada.Calendar;
with Ada.Calendar.Formatting;  use Ada.Calendar.Formatting;
with Ada.Calendar.Time_Zones;  use Ada.Calendar.Time_Zones;
with Ada.Text_IO;              use Ada.Text_IO;

procedure date_utc is
  package int_io is new integer_io(integer);
  use int_io;
  package float1_io is new float_io(float);
  use float1_io;

  procedure date_utc is
    now : Ada.Calendar.time;
    utc : Ada.Calendar.time;
    years : integer;
    months : integer;
    days : integer;
    hours : integer;
    mins : integer;
    secs : integer;
    utc_offset: Time_Offset := 0;
  begin
    now := Ada.Calendar.Clock;
    put_line("Timezone: " & Time_Offset'image(UTC_Time_Offset/60));
    now := Ada.Calendar.Clock;
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

    put_line("INFO: utc=<" & Integer'Image(years) & "-" & Integer'Image(months) & "-" & Integer'Image(days) & Integer'Image(hours) & ":" & Integer'Image(mins) & ":" & Integer'Image(secs) & ">");
    put(Image(Date => Clock, Time_Zone => Ada.Calendar.Time_Zones.UTC_Time_Offset));
    put_line("");
    put(Image(Date => Clock, Time_Zone => utc_offset));
    put_line("");
  end date_utc;
begin
  if argument_count /= 0 then
    put_line("Usage: " & command_name & " <noargs>");
    set_exit_status(failure);
    return;
  end if;
  date_utc;

end date_utc;

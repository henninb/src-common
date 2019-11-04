with text_io;
use text_io;
with ada.command_line;
use ada.command_line;
with calendar;
use calendar;
with ada.real_time;
use ada.real_time;
--use Calendar.Formatting;

procedure sidereal_time is
  package int_io is new integer_io(integer);
  use int_io;
  package float1_io is new float_io(float);
  use float1_io;

  type string is array(Positive range <>) of character;

function getGmtTime( d: integer) return float is
  --time_t now;
  --struct tm *tm_ptr;
  now  : TIME := Calendar.Clock;
  hour : Hour_Number := Month(Date => Now);
  min : integer := 15;
  sec : integer := 25;
begin
  --now = time( NULL );
  --//tm_ptr = localtime(&now);
  --tm_ptr = gmtime(&now);

  return float(hour) + float(min) / 60.0 + float(sec) / 3600.0;
end getGmtTime;

function julian_date_time( d: integer; m: integer; y: integer; u: float ) return float is
  y1 : integer := y;
  m1 : integer := m;
  begin
  if ( y1 < 1900 ) then
    y1 := y1 + 1900;
  end if;

  if ( m < 3 ) then
    m1 := m1 + 12;
    y1 := y1 - 1;
  end if;
  return ((365.25 * float(y1 + 4716))) + ((30.6001 * float(m1 + 1))) + float(d) - 13.0 - 1524.5 + u / 24.0;
end julian_date_time;

begin
  if argument_count /= 0 then
    put_line("Usage: " & command_name & " <noargs>");
    set_exit_status(failure);
    return;
  end if;
  for idx_i in Integer range 1 .. 10 loop
    put_line("function(" & Integer'Image(idx_i) & ")=" & "results");
  end loop;
  --2#11111#  -- the binary (base 2) value 11111
  --16#1F#    -- the hexadecimal (base 16) value 1F
  --put_line(argument(1));
end sidereal_time;

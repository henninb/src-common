with text_io;
use text_io;
with ada.command_line;
use ada.command_line;

procedure celsius_conversion is
  package int_io is new integer_io(integer);
  use int_io;
  package float1_io is new float_io(float);
  use float1_io;

  type string is array(Positive range <>) of character;

  function toCelsius( x : float ) return float is
  begin
    return (x - 32.0) * (5.0/9.0);
   end toCelsius;

  function toFahrenheit( x : float ) return float is
  begin
    return  x * (9.0/5.0) + 32.0;
   end toFahrenheit;
begin
  if argument_count /= 0 then
    put_line("Usage: " & command_name & " <noargs>");
    set_exit_status(failure);
    return;
  end if;
  put_line("toCelsius(" & Integer'Image(70) & ")= " & Float'Image(toCelsius(70.0)));
  put_line("toFahrenheit(" & Integer'Image(21) & ")= " & Float'Image(toFahrenheit(21.0)));
  put(toCelsius(70.0), 0, 2, 0);
  put_line("");
  put(toFahrenheit(21.0), 0, 2, 0);
end celsius_conversion;

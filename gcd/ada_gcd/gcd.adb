with text_io;
use text_io;
with ada.command_line;
use ada.command_line;

procedure gcd is
  package int_io is new integer_io(integer);
  use int_io;
  package float1_io is new float_io(float);
  use float1_io;

  x : integer := 0;
  y : integer := 0;

  function r_gcd(a : integer; b : integer ) return integer is
  begin
    if b = 0 then
      return a;
    else
      return r_gcd(b, (a mod b));
    end if;
  end r_gcd;
begin
  if argument_count /= 0 then
    put_line("Usage: " & command_name & " <noargs>");
    set_exit_status(failure);
    return;
  end if;
  --x := integer'Value(argument(1));
  --y := integer'Value(argument(2));
  put_line("r_gcd(45, 5)=" & Integer'Image(r_gcd(45, 5)));
  put_line("r_gcd(45, 7)=" & Integer'Image(r_gcd(45, 7)));
  put_line("r_gcd(12, 144)=" & Integer'Image(r_gcd(12, 144)));
end gcd;

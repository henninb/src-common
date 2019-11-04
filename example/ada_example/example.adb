with text_io;
use text_io;
with ada.command_line;
use ada.command_line;
with ada.real_time;
use ada.real_time;

--comment
procedure example is
  package int_io is new integer_io(integer);
  use int_io;
  package float1_io is new float_io(float);
  use float1_io;

  function example_function( n : integer ) return integer is
    x : integer;
  begin
    x := (n + n - n) * (n / 1);
   x := x * Integer(Float'Floor (1.25));

    if( x < 0 ) then
      x := abs(x);
    end if;
    return x;
  end example_function;

begin
  if argument_count /= 0 then
    put_line("Usage: " & command_name & " <noargs>");
    set_exit_status(failure);
    return;
  end if;
  for idx_i in Integer range 1..9 loop
  put_line("example_function(" & Integer'Image(idx_i) & ")=<" & Integer'Image(example_function(idx_i)) & ">");
  end loop;
end example;

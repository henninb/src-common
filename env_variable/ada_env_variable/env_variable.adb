with text_io;
use text_io;
with ada.command_line;
use ada.command_line;
with ada.real_time;
use ada.real_time;
with Ada.Environment_Variables; use Ada.Environment_Variables;

--comment
procedure env_variable is
  package int_io is new integer_io(integer);
  use int_io;
  package float1_io is new float_io(float);
  use float1_io;

  function env_variable_function( n : integer ) return integer is
    x : integer;
  begin
    x := (n + n - n) * (n / 1);
   x := x * Integer(Float'Floor (1.25));

    if( x < 0 ) then
      x := abs(x);
    end if;
    return x;
  end env_variable_function;

begin
  if argument_count /= 0 then
    put_line("Usage: " & command_name & " <noargs>");
    set_exit_status(failure);
    return;
  end if;
  put_line("needs work");
end env_variable;

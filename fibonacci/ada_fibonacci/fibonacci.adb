with text_io;
use text_io;
with ada.command_line;
use ada.command_line;

procedure fibonacci is
  package int_io is new integer_io(integer);
  use int_io;
  package float1_io is new float_io(float);
  use float1_io;

  --idx_i : integer := 0;

  function fibonacci( n : integer ) return integer is
  begin
    if n = 0 then
      return 0;
    elsif n = 1 then
      return 1;
    else
      return (fibonacci(n - 1)) + (fibonacci(n - 2));
    end if;
   end fibonacci;
begin
  if argument_count /= 0 then
    put_line("Usage: " & command_name & " <noargs>");
    set_exit_status(failure);
    return;
  end if;

  for idx_i in Integer range 1 .. 24 loop
    put_line("fibonacci(" & Integer'Image(idx_i) & ")=<" & Integer'Image(fibonacci(idx_i)) & ">");
  end loop;
  --n := integer'Value(argument(1));
  --put(fibonacci(n));
end fibonacci;

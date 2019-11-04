with text_io;
use text_io;
with ada.command_line;
use ada.command_line;

procedure factorial is
  package int_io is new integer_io(natural);
  use int_io;
  package float1_io is new float_io(float);
  use float1_io;

  function factorial( n : natural ) return natural is
  begin
    if n = 0 then
      return 0;
    elsif n = 1 then
      return 1;
    else
      return (n * factorial(n - 1));
    end if;
   end factorial;
begin
  if argument_count /= 0 then
    put_line("Usage: " & command_name & " <noargs>");
    set_exit_status(failure);
    return;
  end if;

  for idx_i in natural range 1 .. 12 loop
    put_line("factorial(" & natural'Image(idx_i) & ")=<" & natural'Image(factorial(idx_i)) & ">");
  end loop;

  --n := natural'Value(argument(1));
  --put(factorial(n));
end factorial;

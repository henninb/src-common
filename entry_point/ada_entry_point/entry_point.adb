with text_io;
use text_io;
with ada.command_line;
use ada.command_line;

procedure entry_point is
  package int_io is new integer_io(integer);
  use int_io;
  package float1_io is new float_io(float);
  use float1_io;

begin
  if argument_count /= 1 then
    put_line("Usage: " & command_name & " <arg1>");
    set_exit_status(failure);
    return;
  end if;

  put_line(argument(1));

  if argument_count /= 0 then
    put_line("Usage: " & command_name & " <noargs>");
    set_exit_status(failure);
    return;
  end if;
end entry_point;

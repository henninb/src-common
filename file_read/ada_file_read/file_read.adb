with text_io;
use text_io;
with ada.command_line;
use ada.command_line;

procedure file_read is
  package int_io is new integer_io(integer);
  use int_io;
  package float1_io is new float_io(float);
  use float1_io;

  ifp : file_type;
  ch : character;
begin
  if argument_count /= 0 then
    put_line("Usage: " & command_name & " <noargs>");
    set_exit_status(failure);
    return;
  end if;

    --declare
    --fname : string renames argument(1);
    --begin
        open(ifp, in_file, argument(1));
        while not end_of_file(ifp) loop
            while not end_of_line(ifp) loop
                get(ifp, ch);
                put(ch);
            end loop;
            skip_line(ifp);
        end loop;
        close(ifp);
    --end;
end file_read;

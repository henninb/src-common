with text_io;
use text_io;
with ada.command_line;
use ada.command_line;

procedure file_write is
  package int_io is new integer_io(integer);
  use int_io;
  package float1_io is new float_io(float);
  use float1_io;

  ofp : file_type;
begin
  if argument_count /= 0 then
    put_line("Usage: " & command_name & " <noargs>");
    set_exit_status(failure);
    return;
  end if;

  declare
  --ofname : string renames argument(1);
  fname : String(1..11);
  begin
    fname := "outfile.txt";
    create(ofp, out_file, fname);
    put(ofp, "hello world");
    new_line(ofp);
    close(ofp);
  end;
end file_write;

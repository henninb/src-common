with Ada.Float_Text_Io;
use Ada.Float_Text_Io;
with text_io;
use text_io;
with ada.command_line;
use ada.command_line;

procedure Sleep is
  package int_io is new integer_io(integer);
  use int_io;
  package float1_io is new float_io(float);
  use float1_io;

  type string is array(Positive range <>) of character;
begin
  if argument_count /= 0 then
    put_line("Usage: " & command_name & " <noargs>");
    set_exit_status(failure);
    return;
  end if;
   Put_Line("Sleeping...");
   delay Duration(5);
   Put_Line("Awake!");
end Sleep;

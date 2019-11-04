with text_io;
use text_io;

--with Ada.Text_IO, Ada.Integer_Text_IO;
--use Ada.Text_IO, Ada.Integer_Text_IO;

with ada.command_line;
use ada.command_line;

procedure permute_print_integer is
  package int_io is new integer_io(integer);
  use int_io;
  package float1_io is new float_io(float);
  use float1_io;

  type string is array(Positive range <>) of character;
  type LIST_TYP is array (Positive range <>) of integer;
  type ARRAY_TYP is array(0..2) of integer;
  list : ARRAY_TYP;

  procedure permute_print_integer( list : in out ARRAY_TYP; startingIndex: in integer; listLength : in integer )  is
  tmp : integer;
  begin
    if startingIndex = listLength then
      for idx in 0..(listLength-1) loop
      --for idx in list'Range loop
        put(list(idx));
      end loop;
      put_line("");
    else
      for idx_i in startingIndex..(listLength-1)  loop
        tmp := list(idx_i);
        list(idx_i) := list(startingIndex);
        list(startingIndex) := tmp;
        permute_print_integer(list, startingIndex + 1, listLength);
        tmp := list(idx_i);
        list(idx_i) := list(startingIndex);
        list(startingIndex) := tmp;
      end loop;
    end if;
  end permute_print_integer;
begin
  if argument_count /= 0 then
    put_line("Usage: " & command_name & " <noargs>");
    set_exit_status(failure);
    return;
  end if;

  list(0) := 1;
  list(1) := 2;
  list(2) := 3;
  put_line("=================");
  permute_print_integer(list, 0, 3);
  --put_line(argument(1));
end permute_print_integer;

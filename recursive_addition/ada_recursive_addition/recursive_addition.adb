with text_io;
use text_io;
with ada.command_line;
use ada.command_line;

procedure recursive_addition is
  package number_io is new integer_io(integer);
  use number_io;
  package float1_io is new float_io(float);
  use float1_io;

  type string is array(Positive range <>) of character;

  --x : integer := 0;
  --y : integer := 0;

  function rec_add(x : integer; y : integer) return integer is
  begin
    if y = 0 then
      return x;
    else
      return( 1 + rec_add(x, y - 1) );
    end if;
  end rec_add;

begin
  if argument_count /= 0 then
    put_line("Usage: " & command_name & " <noargs>");
    set_exit_status(failure);
    return;
  end if;

  put_line("value: " & integer'Image(rec_add(integer'value("8"), integer'value("6"))));

end recursive_addition;

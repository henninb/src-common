with text_io;
use text_io;
with ada.command_line;
use ada.command_line;

procedure recursive_for_loop is
  package number_io is new integer_io(integer);
  use number_io;
  package float1_io is new float_io(float);
  use float1_io;

  type string is array(Positive range <>) of character;

  function rec_for_loop(x : integer; max : integer) return integer is
  begin
    if x = max then
      return 0;
    else
      put_line(integer'Image(x));
      return(1 + rec_for_loop(x + 1, max));
    end if;
  end rec_for_loop;

  function rec_count_odd(x : integer; max : integer) return integer is
  begin
    if x = max then
      return 0;
    else
      if x mod 2 = 0 then
        return(0 + rec_count_odd(x + 1, max));
      else
        put_line(integer'Image(x));
        return(1 + rec_count_odd(x + 1, max));
      end if;
    end if;
  end rec_count_odd;


begin
  if argument_count /= 0 then
    put_line("Usage: " & command_name & " <noargs>");
    set_exit_status(failure);
    return;
  end if;

  put_line("value: " & integer'Image(rec_for_loop(0, 100)));
  put_line("value: " & integer'Image(rec_count_odd(0, 100)));

end recursive_for_loop;

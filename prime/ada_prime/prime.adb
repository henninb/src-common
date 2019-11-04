with text_io;
use text_io;
with ada.command_line;
use ada.command_line;

procedure prime is
  package int_io is new integer_io(integer);
  use int_io;
  package float1_io is new float_io(float);
  use float1_io;

  type string is array(Positive range <>) of character;

  function isPrime( number : integer ) return integer is
  begin
  for idx_i in 2..(number - 1) loop
    if (number mod idx_i = 0) and (idx_i /= number) then
      return 0;
    end if;
  end loop;
  return 1;
  end isPrime;
begin
  if argument_count /= 0 then
    put_line("Usage: " & command_name & " <noargs>");
    set_exit_status(failure);
    return;
  end if;
  --put_line("Move Disk From " & "1" & " to " & "2");
  for idx_i in 1.. 100 loop
    put_line("prime " &  Integer'Image(idx_i) & "=" &  Integer'Image(isPrime(idx_i)));
  end loop;
  --put_line(argument(1));
end prime;


with text_io;
use text_io;
with ada.command_line;
use ada.command_line;

procedure leap_year is
  package int_io is new integer_io(integer);
  use int_io;
  package float1_io is new float_io(float);
  use float1_io;

  function isLeapYear (Year : Integer) return Boolean is
  begin
    if Year rem 100 = 0 then
      return Year rem 400 = 0;
    else
      return Year rem 4 = 0;
    end if;
  end isLeapYear;
begin
  if argument_count /= 0 then
    put_line("Usage: " & command_name & " <noargs>");
    set_exit_status(failure);
    return;
  end if;
  --check for leap year
  for idx_i in Integer range 1999 .. 2100 loop
    put_line("isLeapYear(" & Integer'Image(idx_i) & ")=<" & Boolean'Image(isLeapYear(idx_i)) & ">");
  end loop;

end leap_year;

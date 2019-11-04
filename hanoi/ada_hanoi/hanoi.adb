with text_io;
use text_io;
with ada.command_line;
use ada.command_line;

procedure hanoi is
  package number_io is new integer_io(integer);
  use number_io;
  package float1_io is new float_io(float);
  use float1_io;

  procedure hanoi( x : integer; from : character; to: character; aux : character ) is
  begin
    if x = 1 then
      put_line("Move Disk From " & from & " to " & to);
    else
      hanoi(x - 1, from, aux, to);
      put_line("Move Disk From " & from & " to " & to);
      hanoi(x - 1, aux, to, from);
    end if;
  end hanoi;

--void hanoi( int x, char from, char to, char aux ) {
--  if( x == 1 ) {
--    printf("Move Disk From %c to %c\n",from,to);
--  } else {
--    hanoi(x-1,from,aux,to);
--    printf("Move Disk From %c to %c\n",from,to);
--    hanoi(x-1,aux,to,from);
--  }
--}


begin
  if argument_count /= 0 then
    put_line("Usage: " & command_name & " <noargs>");
    set_exit_status(failure);
    return;
  end if;

  --hanoi();
  hanoi(3,'A','B','C');
end hanoi;

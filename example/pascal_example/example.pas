program example;
{
var
  idx : integer;
  msg : array [1..16] of char;
  ch : char;
  writeln(paramstr(1));
}
begin
  if paramcount <> 0 then
  begin
     writeln('Usage: ', paramstr(0), ' <noargs>');
     halt(1)
  end;
  writeln('fix pascal');
end.

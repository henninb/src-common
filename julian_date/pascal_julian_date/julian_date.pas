program julian_date_main;
  var x:real;
{
var
  idx : integer;
  msg : array [1..16] of char;
  ch : char;
}
  function julian_date(  y  : integer; m : integer; d  :  integer ) : real;
    var year : integer;
    month : integer;
  begin
    year := y + 8000;
    if m < 3 then
    begin
      year := year - 1;
      month := m + 12;
    end;
    return ((year * 365) + (year div 4) - (year div 100) + (year div 400) - 1200820 + (month * 153 + 3) div 5 - 92 + d - 1) - 0.5;
  end;

begin
  if paramcount <> 0 then
  begin
     writeln('Usage: ', paramstr(0), ' <noargs>');
     halt(1)
  end;
  x := julian_date(2010, 1, 26);
  writeln(x:20:2);
end.

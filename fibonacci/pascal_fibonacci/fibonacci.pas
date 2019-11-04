program fibonacci_main;
  var x : integer;

  function fibonacci( n : integer ) : integer;
  begin
    if n = 0 then
    begin
      return 0;
    end
    else if n = 1 then
    begin
      return 1
    end
    else
    begin
      return fibonacci( n - 1 ) + fibonacci( n - 2 );
    end
  end;

begin
  if paramcount <> 0 then
  begin
     writeln('Usage: ', paramstr(0), ' <noargs>');
     halt(1)
  end;
  writeln(fibonacci(5));
  //paramstr(1)
end.

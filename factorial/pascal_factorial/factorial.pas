program factorial_main;
  var x : integer;

  function factorial( n : integer ) : integer;
  begin
    if n = 0 then
    begin
      return 0;
    end
    else if n = 1 then
    begin
      return 1;
    end
    else
    begin
      return(n * factorial( n - 1 ));
    end
  end;

begin
  if paramcount <> 1 then
  begin
     writeln('Usage: ', paramstr(0), ' <N>');
     halt(1)
  end;
  writeln(' ' , factorial(5));
  //paramstr(1)
end.

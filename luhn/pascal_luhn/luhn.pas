program luhn;
  function luhnSum( cardNumber : string ) : integer;
    var factor :integer := 1;
    luhn_sum :integer := 0;
    inum :integer := 0;
    idx : integer := 0;
  begin
    for idx := Length(cardNumber) - 1 downto 0 do
    begin
      {inum := cardNumber[idx] - 48;}
      if ( factor = 2 ) then
      begin
        begin
        inum := inum * 2;
        end
        if ( inum > 9 ) then
        begin
          inum := inum - 9;
        end
      end;
        begin
        luhn_sum := inum + luhn_sum;
        end
        if ( factor = 1 ) then
        begin
          factor := 2;
        end
        else
        begin
          factor := 1;
        end
    end;
    begin
      return (luhn_sum);
    end
  end;
begin
  if paramcount <> 0 then
  begin
     writeln('Usage: ', paramstr(0), ' <noargs>');
     halt(1)
  end;

end.

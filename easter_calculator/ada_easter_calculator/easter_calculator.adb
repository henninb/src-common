with text_io;
use text_io;
with ada.command_line;
use ada.command_line;

procedure easter_calculator is
  procedure easterCalculator( year : integer) is
    A: integer;
    B: integer;
    C: integer;
    D: integer;
    E: integer;
    DAYNUM: integer;
    MONTH: integer;
  begin
    A := year MOD 19;
    B := year MOD 4;
    C := year MOD 7;
    D := (19 * A + 24) MOD 30;
    E := (2*B + 4*C + 6*D + 5) MOD 7;
    DAYNUM := 22 + D + E;
    MONTH := 3;

    if DAYNUM > 31 then
      MONTH := 4;
      if MONTH = 4 then
        DAYNUM := DAYNUM MOD 31;
        put_line("easterCalculator=(" & Integer'Image(year) & ")=<" & Integer'Image(MONTH) & "/" & Integer'Image(DAYNUM) & "/" & Integer'Image(year) & ">");
      end if;
    else
      put_line("easterCalculator=(" & Integer'Image(year) & ")<" & Integer'Image(MONTH) & "/" & Integer'Image(DAYNUM) & "/" & Integer'Image(year) & ">");
    end if;
  end easterCalculator;
  begin
    if argument_count /= 0 then
      put_line("Usage: " & command_name & " <noargs>");
      set_exit_status(failure);
      return;
    end if;

    for idx_i in Integer range 2019 .. 2100 loop
      easterCalculator(idx_i);
    end loop;
end easter_calculator;

with text_io;
use text_io;
with ada.command_line;
use ada.command_line;

procedure luhn is
  package int_io is new integer_io(integer);
  use int_io;
  package float1_io is new float_io(float);
  use float1_io;

  type string is array(Positive range <>) of character;
  --cardNumber : string(1..16);
  --cardNumber : string := "6011000000000012";

  function luhnSum( cardNumber : string ) return integer is
    factor :integer := 1;
    luhn_sum :integer := 0;
    inum :integer := 0;
    idx : integer := 0;
  begin
    for idx in reverse 1..(cardNumber'length) loop
      inum := character'pos(cardNumber(idx)) - 48;
      if ( factor = 2 ) then
        inum := inum * 2;
        if ( inum > 9 ) then
          -- sum of the two digits for the two digits sum
          inum := inum - 9;
        end if;
      end if;

      luhn_sum := inum + luhn_sum;
      if( factor = 1 ) then
        factor := 2;
      else
        factor := 1;
      end if;
    end loop;
    return luhn_sum;
  end luhnSum;


  procedure luhnCheck( cardNumber : string ) is
    luhn_sum : integer := 0;
  begin
    luhn_sum := luhnSum(cardNumber);

    --put_line(cardNumber);
    if (luhn_sum mod 10 = 0 ) then
      put(" is valid: ");
    else
      put(" is NOT valid: ");
    end if;
  end luhnCheck;

begin
  if argument_count /= 0 then
    put_line("Usage: " & command_name & " <noargs>");
    set_exit_status(failure);
    return;
  end if;
  put("379126015215813"); luhnCheck("379126015215813");  put(luhnSum("379126015215813")); put_line("");
  put("4987002233114458"); luhnCheck("4987002233114458");  put(luhnSum("4987002233114458")); put_line("");
  put("6011000000000013"); luhnCheck("6011000000000013");  put(luhnSum("6011000000000013")); put_line("");
  put("6011000000000012"); luhnCheck("6011000000000012");  put(luhnSum("6011000000000012")); put_line("");

end luhn;

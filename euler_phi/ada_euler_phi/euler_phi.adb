with text_io;
use text_io;
with ada.command_line;
use ada.command_line;

-- euler_phi.adb: compute Euler's phi function, number of relatively prime

-- phi(n) is the number of positive integers m such that
--   1<=m<n and gcd(m,n)=1

procedure euler_phi is
  package int_io is new integer_io(integer);
  use int_io;
  package float1_io is new float_io(float);
  use float1_io;

  idx_i : integer := 0;

  function euler_phi (n: positive) return positive is
     remainder, phi : positive := n;
     odd : positive;
  begin
     if remainder mod 2 = 0 then
        phi := phi / 2;
        while remainder mod 2 =0 loop remainder := remainder / 2; end loop;
     end if;
     odd := 3;
     while odd <= remainder loop
        if remainder mod odd = 0 then
           -- "odd" must be prime factor of remainder
           phi := phi * (odd - 1) / odd;
           while remainder mod odd = 0 loop remainder := remainder / odd; end loop;
        end if;
        odd := odd + 2;
     end loop;
     return (phi);
  end euler_phi;
begin
  if argument_count /= 0 then
    put_line("Usage: " & command_name & " <noargs>");
    set_exit_status(failure);
    return;
  end if;

  --n := integer'Value(argument(1));
  for idx_i in Integer range 1 .. 24 loop
    put_line("euler_phi(" & Integer'Image(idx_i) & ")=<" & Integer'Image(euler_phi(idx_i)) & ">");
  end loop;
  --put_line(euler_phi(5));
end euler_phi;

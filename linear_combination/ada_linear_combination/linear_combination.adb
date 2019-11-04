with text_io;
use text_io;
with ada.command_line;
use ada.command_line;

procedure linear_combination is
  package int_io is new integer_io(integer);
  use int_io;
  package float1_io is new float_io(float);
  use float1_io;

  --The Procedure print_linear_combination takes in the x and y inputed by the user. It also
  --takes in the numbers computed by gcd_linear_combination that make the equation a linear
  --combination (f and g). The gcd_linear_combination (answer) is the last variable inputed.
  --The procedure print_linear_combination then print_linear_combinations the equation of the linear combination
  --to the screen.
  procedure print_linear_combination( x, y, f, g, answer : in integer ) is
  begin
    put_line("The Linear Combination is: ");
    put(x, 1);
    put("*(");
    put(f, 1);
    put(")+");
    put(y, 1);
    put("*(");
    put(g, 1);
    put(") = ");
    put(answer, 1);
    new_line;
  end print_linear_combination;

--The procedure gcd_linear_combination takes in two numbers (x and y) and finds the gcd_linear_combination of
--the two numbers. The procedure print_linear_combination is called when the gcd is found.
  procedure gcd_linear_combination(x,y:in integer) is
    a2,b3:integer := 1;
    a3,b2:integer := 0;
    a1:integer := x;
    b1:integer := y;
  begin
    loop
      if  a1 = b1 then
        print_linear_combination(x, y, b2, b3, b1);
        print_linear_combination(x, y, a2, a3, a1);
        exit;
      elsif a1 > b1 then
        a1:= a1-b1;
        a2:= a2-b2;
        a3:= a3-b3;
      elsif b1 > a1 then
        b1:= b1-a1;
        b2:= b2-a2;
        b3:= b3-a3;
      end if;
    end loop;
  end gcd_linear_combination;

begin
  if argument_count /= 0 then
    put_line("Usage: " & command_name & " <noargs>");
    set_exit_status(failure);
    return;
  end if;

  gcd_linear_combination(6,29);
  gcd_linear_combination(8,45);
  new_line;
end linear_combination;

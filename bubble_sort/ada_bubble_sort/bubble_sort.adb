with Ada.Text_IO; use Ada.Text_IO;
with bubble_sort_module;

procedure bubble_sort is
 type Arr is array (Positive range <>) of Integer;
 procedure Sort is new
  Bubble_Sort_module
   (Element => Integer,
    Index   => Positive,
    Arr     => Arr);
 A : Arr := (10, 2, 4, 1, 6, 5, 8, 7, 3, 9);
begin
 for idx_i in A'Range loop
  Put(Integer'Image(A (idx_i)));
 end loop;
 put_line("");
 Sort (A);
 for idx_i in A'Range loop
  Put(Integer'Image(A (idx_i)));
 end loop;
 New_Line;
end bubble_sort;

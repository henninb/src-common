procedure bubble_sort_module (a : in out arr) is
 finished : boolean;
 temp     : element;
begin
 loop
  finished := true;
  for j in a'first .. index'pred (a'last) loop
   if a (index'succ (j)) < a (j) then
    finished := false;
    temp := a (index'succ (j));
    a (index'succ (j)) := a (j);
    a (j) := temp;
   end if;
  end loop;
  exit when finished;
 end loop;
end bubble_sort_module;

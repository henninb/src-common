fun hanoi (x, from, dest, aux) =
  if x = 0 then (
    print("Move Disk From " ^ Char.toString(from) ^ " to " ^ Char.toString(dest) ^ "\n")
  )
  else (
    hanoi(x-1,from,aux,dest);
    print("Move Disk From " ^ Char.toString(from) ^ " to " ^ Char.toString(dest) ^ "\n");
    hanoi(x-1,aux, dest,from)
  );

val _ = hanoi(3, #"A", #"C", #"B");

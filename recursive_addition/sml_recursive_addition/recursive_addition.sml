fun rec_add(x,y) = if y = 0 then x else 1 + rec_add(x, y-1);

val x = rec_add(9, 7);

val _ = print("rec_add: " ^ Int.toString(x) ^ "\n");

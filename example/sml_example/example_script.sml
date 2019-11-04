(*open CommandLine;*)
open TextIO;
(* open Int; *)
load "Int";

(* add two integers *)
fun add(x, y) =
    if y = 0 then x else 1 + add(x, y - 1);

val _ = print "hello world\n";
val _ = print(Int.toString(add(2, 3)) ^ "\n");
val _ = add(2, 3);
val _ = print(Int.toString(add(10, 13)) ^ "\n");
quit();

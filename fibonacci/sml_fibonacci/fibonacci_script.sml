load "TextIO";
load "Int";
load "Mosml";

fun fib(0) = 1
  | fib(1) = 1
  | fib(n) = fib(n - 2) + fib(n - 1);

(*
load "Int";
val myval = print(Int.toString(fib(10)) ^ "\n");
val _ = print(Int.toString(fib(10)) ^ "\n");
quit();
*)

val _ =
    case Mosml.argv () of
    [_, arg1] => (
      let
        (* val x = valOf(Int.fromString(arg1)); *)
        val x = 10
      in
        print(Int.toString(fib(x)) ^ "\n")
      end
    )
    | _ => (
      TextIO.output(TextIO.stdErr, "Usage: fib <number>\n")
    )
quit();

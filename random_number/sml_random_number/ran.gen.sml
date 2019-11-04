(* random *)
(* deck *)
(* deal *)

(*
val s = Random.rand(1,1000);
val r = rand(891234,25321);

val r = Random.rand(IntInf.toInt(IntInf.mod(Time.toSeconds(Time.now()), 65536)), 0);

*)

fun genRandCard() =
  let
    open Random
    val gen = newgen()
  in
    (range (0, 51) gen)
  end;

fun genRandCard1() =
  let
    open Random
    val gen = newgen()
    val arg1 = (range(0, 51) gen)
    val arg2 = (range(0, 51) gen)
  in
    print("Random Int: " ^ Int.toString(arg1) ^ " " ^ Int.toString(arg2) ^ "\n")
  end;

(*
val _ = genRandCard1();
*)

(*
fun test1( n opdetails) =
  let
    open Random
    val gen = newgen()
    fun do_test () =
      let
        val arg1 = range (0, 60000000) gen
        val arg2 = range (0, 60000000) gen
      in
        "test"
      end;
    in
    do_test();
  end;
*)

(*
val _ = print("Random Int: " ^ Int.toString(genRandCard()) ^ "\n");
val _ = print("Random Int: " ^ Int.toString(genRandCard()) ^ "\n");
*)

fun merge(xs, nil) = xs
|  merge(nil, ys) = ys
|  merge(x::xs,y::ys) = if x < y then x :: merge(xs,y::ys) else y :: merge(x::xs,ys);

fun printListInteger(nil) = ()
| printListInteger([x]) = print(Int.toString(x) ^ "\n")
| printListInteger(x::xs) = (print(Int.toString(x) ^ "\n"); printListInteger(xs));

fun printListReal(nil) = ()
| printListReal([x]) = print(Real.toString(x) ^ "\n")
| printListReal(x::xs) = (print(Real.toString(x) ^ "\n"); printListReal(xs));

datatype SUIT = HEARTS | DIAMONDS | CLUBS | SPADES;

val rank = ["A", "2", "3", "4", "5", "6", "7", "8", "9", "T", "J", "Q", "K"];

fun length(nil) = 0
| length(_::t) = 1 + length(t);

fun deckCreate(deckSize) = if deckSize = 1 then [deckSize - 1] else (deckSize - 1)::deckCreate(deckSize - 1);

val deck = deckCreate(52);

fun listAdd(sz) =
  let
    open Random;
    val gen = newgen();
    val my_rand = (range(0, 51) gen);
  in
    if sz = 1 then
      [my_rand]
    else
      my_rand::listAdd(sz - 1)
  end;

val mylist = listAdd(52);
(*
val _ = printListInteger(mylist);
*)

fun dice(n) =
    let
      val gen = Random.newgen()
      val freq = Array.array(6, 0)
      fun loop(0) = ()
      | loop(i) =
        let
          val x = Random.range(0, 6) gen;
        in
          Array.update(freq, x, Array.sub(freq, x) + 1);
          loop (i-1)
        end
    in
      loop n;
      List.map real (Array.foldr op:: [] freq)
    end;

fun randomIntList(n) =
  let
    val gen = Random.newgen()
    val max = valOf Int.maxInt
  in
    Random.rangelist(0, n-1) (n, gen)
  end;

val mylist = randomIntList(52);
val _ = printListInteger(mylist);

(*
val mylist = dice(15);
val _ = printListReal(mylist);
*)

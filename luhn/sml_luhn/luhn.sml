fun main() =
  let
    val args = CommandLine.arguments();
    val argc = List.length(args);
    val prgmName = "example";
  in
    if argc <> 0 then
    (
      print("Usage: " ^ prgmName  ^ " <noargs>\n");
      OS.Process.exit OS.Process.failure
    )
    else
    (
      print("not working\n")
    )
  end;

val _ = main();
val cardNumber = "379126015215813";
val cardLength = String.size(cardNumber);
val cardNumbers = String.explode(cardNumber);
val _ = print(cardNumber ^ "\n");
val _ = print(Int.toString(cardLength) ^ "\n");

fun intFromString s = valOf (Int.fromString s)

fun charToInteger(x) = Char.ord(x) - 48;
fun stringToCharToIntegerList(str : string) = map (fn x => charToInteger(x)) (String.explode(str));

val intList = stringToCharToIntegerList(cardNumber);

fun condition1(inum, factor) = if factor = 2 then (inum *2) else inum;
fun condition2(factor) = if factor = 1 then 2 else 1;

fun loop(idx) =
   let
     val factor = 1;
     val luhnsum = 0;
     val inum = 0;
   in
    if idx = ~1 then (
      print("\n");
      print(Int.toString(luhnsum));
      print("\nend\n")
    )
    else (
      inum = List.nth(intList, idx);
      inum = condition1(List.nth(intList, idx), factor);
      luhnsum = luhnsum + inum;
      factor = condition2(factor);
      print(Int.toString(List.nth(intList, idx)) ^ "\n");
      (* Int.toString(List.nth(intList, idx)); *)
      loop (idx-1)
    )
   end;

val _ = loop(cardLength - 1);


fun luhnSum( cardNumber ) =
  let
    val factor = 1;
    val luhnsum = 0;
    val inum = 0;
  in
    0
  end;

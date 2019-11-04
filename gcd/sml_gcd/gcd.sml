(* comment *)
fun gcd (m,n) = if n = 0 then m else gcd(n, (m mod n));

fun main() =
  let
    val args = CommandLine.arguments()
    val argc = List.length(args)
    val prgmName = "gcd"
  in
    if argc <> 0 then
    (
      print("Usage: " ^ prgmName ^ " <noargs>\n");
      OS.Process.exit OS.Process.failure
    )
    else
    (
      print("gcd = " ^ Int.toString(gcd(4, 6)) ^ "\n");
      print("gcd = " ^ Int.toString(gcd(7, 35)) ^ "\n")
    )
  end;

val _ = main();

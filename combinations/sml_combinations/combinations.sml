fun combinations (0, _    ) = [[]]
  | combinations (_, []   ) = []
  | combinations (m, x::xs) = map (fn y => x :: y) (combinations (m-1, xs)) @
                  combinations (m, xs);
(* combinations (3, [0,1,2,3,4]); *)


fun main() =
  let
    val args = CommandLine.arguments()
    val argc = List.length(args)
    val prgmName = "combinations"
    val mlist = [6,10,8,4,1,2,13,5]
  in
    if argc <> 0 then
    (
      print("Usage: " ^ prgmName  ^ " <noargs>\n");
      OS.Process.exit OS.Process.failure
    )
    else
    (
       print("*** need to finish ***\n")
    )
  end;

val _ = main();

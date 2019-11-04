(* comment *)

fun writeFile(fname, str) =
  let
    val ofp = TextIO.openOut(fname)
    val _ = TextIO.output(ofp, str)
  in
    TextIO.closeOut(ofp)
  end;

fun exit () = ( OS.Process.exit(OS.Process.failure); ());

fun main() =
  let
    val args = CommandLine.arguments()
    val argc = List.length(args)
    val ifname = if argc = 1 then List.nth(args, 0) else ""
  in
    if argc <> 1 then
    (
      print("Usage: file_write <ifname>\n");
      OS.Process.exit OS.Process.failure
    )
    else
    (
      print("ifname: " ^ ifname ^ "\n");
      writeFile(ifname, "hello world")
    )
  end;

val _ = main();
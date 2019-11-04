load "OS";
(*
open BinIO;
open TextIO;
*)

fun writeFile(filename, str) =
  let
    val ofp = TextIO.openOut(filename)
    val _ = TextIO.output(ofp, str)
  in
    TextIO.closeOut(ofp)
  end;

structure Main =
  struct
    fun main() = (
      writeFile("output.txt", "Brian");
      OS.Process.success
    )
  end

val _ = Main.main();

quit();

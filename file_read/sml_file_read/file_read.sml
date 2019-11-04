(* comment *)
open Date;
open Time;
open TextIO;

(*
fun open_in file = TextIO.openIn file handle General.Io{cause=SysErr(s,_),...} => raise (Io s);
fun open_out file  = TextIO.openOut file handle General.Io{cause=SysErr(s,_),...} => raise (Io s);
*)
fun readlines(ifp) = if TextIO.endOfStream(ifp) then [] else TextIO.inputLine(ifp) :: readlines(ifp);
fun printList(list1) = if list1 = nil then () else (print(hd(list1) ^ "\n");printList(tl(list1)));

fun fileRead(filename) =
  let
    val ifp = TextIO.openIn(filename);
    val content = String.concat(readlines(ifp));
    val _ = TextIO.closeIn(ifp)
  in
    content
end;

fun listRead(ifname) =
  let
    val f = TextIO.openIn(ifname);
    fun truncate(s) = if String.substring(s, String.size(s)-2, 1) = "\r" then String.substring(s, 0, String.size(s) - 2) else String.substring(s, 0, String.size(s) - 1);
    fun readlines() = if TextIO.endOfStream f then [] else truncate(TextIO.inputLine f)::(readlines ());
    val linelist = readlines();
  in
    TextIO.closeIn(f);
    linelist
  end;

(*
fun isTokenSeparator #" " = true
  | isTokenSeparator #"\t" = true
  | isTokenSeparator #"," = true
  | isTokenSeparator #"|" = true
  | isTokenSeparator _ = false;

val s = "one1,two2,three3";
val ts = String.tokens isTokenSeparator s;
val _ = printList(ts);
*)

fun string_split(s) =
  let
    fun isTokenSeparator #"," = true
      | isTokenSeparator _ = false;
  in
    String.tokens isTokenSeparator(s)
  end;

val _ = printList(string_split("one1,two2,three3"));

fun main() =
  let
    val args = CommandLine.arguments()
    val argc = List.length(args)
    val ifname = if argc = 1 then List.nth(args, 0) else ""
  in
    if argc <> 1 then
    (
      print("Usage: fileRead <ifname>\n");
      OS.Process.exit OS.Process.failure
    )
    else
    (
      print(fileRead(ifname))
    )
  end;

val lst = listRead("input.txt");
val _ = printList(lst);


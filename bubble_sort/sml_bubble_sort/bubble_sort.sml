fun printList(list1) = if list1 = nil then () else (print(Int.toString(hd(list1)) ^ ", ");printList(tl(list1)));

fun bubble R [] = []
  | bubble R [h] = [h]
  | bubble R (f::s::t) = (* can't bubble without at least 2 elements *)
           if R (f, s) then f::(bubble R (s::t))
           else s::(bubble R (f::t));

fun unsorted R [] = false
  | unsorted R [h] = false
  | unsorted R (f::s::t) =
        if (f=s)  (* if R is an irreflexive relation remove duplicates *)
      then (unsorted R (s::t))
      else if R (f, s) then (unsorted R (s::t)) else true;

(* If R is not a total order then unsorted will yield false in any list
   containing incomparable elements.
*)

fun bubble_sort R L = if (unsorted R L) then (bubble_sort R (bubble R L)) else L;

fun main() =
  let
    val args = CommandLine.arguments();
    val argc = List.length(args);
    val prgmName = "bubble_sort";
    val mlist = [6,10,8,4,1,2,13,5];
  in
    if argc <> 0 then
    (
      print("Usage: " ^ prgmName  ^ " <noargs>\n");
      OS.Process.exit OS.Process.failure
    )
    else
    (
      let
      val newlist = bubble_sort (op <) mlist;
      in
       printList(newlist);
       print("\n")
      end
    )
  end;

val _ = main();


(*
open TextIO;
open Int;
open String;
open Real;

val infile = openIn("\\tt.sml");

fun myRead(infile) =
    if endOfStream(infile) then nil
    else inputN(infile,1) :: myRead(infile);

myRead(infile);
closeIn(infile);

*)

open TextIO;
val outfile = openAppend("\\output.txt");

fun put(0) = output(outfile,"\n")
|  put(n) = (
      output(outfile,"X");
      put(n-1)
    );
put(20);
closeOut(outfile);


fun comb(n,m) = (
    put(n);
    if m = 0 orelse m=n then 1
    else comb(n-1,m)+ comb(n-1,m-1)
    );

comb(5,2);
closeOut(outfile);

val fileOut = openOut("a:outData.txt");
   output(fileOut,"This is the text in this out file.\n");
closeOut(fileOut);

val fileAppend = openAppend("a:outData.txt");
  output(fileAppend,"Super! is appended to the end of the file outData.");
closeOut(fileAppend);

(*
fun compute(0) = 1
| compute(n) = 2*compute(n-1);

fun pr(0) = ()
| pr(n) = (
    print("X");
    pr(n-1)
   );
   pr(compute(5));

fun aux(0,y) = print(y)
|   aux(n,y) = aux(n-1, y^y);

fun xPrint(n) = (
     aux(n,"X"),
     print("\n")
);

xPrint(15);

*)

(*
val c = #"a";
print ("First Line\n\n");
print(Int.toString(1) ^ "\n\n");
print(Real.toString(2.0) ^ "\n\n");
print(Bool.toString(true) ^ "\n\n");
print (str(#"a") ^ "\n\n");

fun testZero(0) = print("zero\n\n")
|  testZero(_) = print("not zero\n\n");

    print ("\n");

fun printlist(nil) = ()
|  printlist(x::xs) =
   (
      print(Int.toString(x) ^ "\n");
      printlist(xs)
   );

implode(#"a",#"b");

ord (#"\^Z");
*)
#"\026";
quit();

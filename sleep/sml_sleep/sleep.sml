open Date;
open Time;
open Process;
open OS;
open TextIO;

val x = Time.fromSeconds (5);
val _ = print "Sleeping...\n";
val _ = sleep(x);
val _ = print "Awake!\n"

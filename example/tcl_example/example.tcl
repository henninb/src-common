package require Tcl

#comments
proc example_function {n} {
  return  $n
}

proc main {} {
  if { $::argc != 0 } {
    puts "Usage: $::argv0 <noargs>"
    exit 1
  }

  for { set idx_i 0}  {$idx_i < 10} {incr idx_i} {
    puts "example_function($idx_i)=<[example_function $idx_i]>"
  }
}

main

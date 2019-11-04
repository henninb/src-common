package require Tcl

#comments
proc example_function {n} {
  return  $n
}

proc rec_for_loop {x} {
  if{ $x == 0 } {
    return 0
  } else {
    [rec_for_loop ($x - 1)]
    puts($x)
  }
}

proc main {} {
  if { $::argc != 0 } {
    puts "Usage: $::argv0 <noargs>"
    exit 1
  }

  [rec_for_loop 10]
  #for { set idx_i 1}  {$idx_i < 15} {incr idx_i} {
  #   puts "example_function($idx_i): [example_function $idx_i]"
  #}
}

main


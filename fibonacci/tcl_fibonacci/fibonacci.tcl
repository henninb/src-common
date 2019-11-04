package require Tcl

proc fibonacci {n} {
  if {$n < 2} {
    expr {$n}
  } else {
    expr {[fibonacci [expr {$n-1}]]+[fibonacci [expr {$n-2}]]}
  }
}

proc main {} {
  if { $::argc != 0 } {
    puts "Usage: $::argv0 <noargs>"
    exit 1
  }

  for { set idx_i 1}  {$idx_i < 25} {incr idx_i} {
     puts "fibonacci($idx_i)=<[fibonacci $idx_i]>"
  }
}

main

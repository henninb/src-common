package require Tcl

proc factorial_rec {n} {
  expr {
    $n > 1 ?
     $n * [factorial_rec [expr {$n-1}]] :
     1
  }
}

proc factorial {x} {
  set i 1;
  set product 1;
  while {$i <= $x} {
    set product [expr $product * $i]
    incr i
  }
  return $product
}



proc main {} {
  if { $::argc != 0 } {
    puts "Usage: $::argv0 <noargs>"
    exit 1
  }

  for { set idx_i 1}  {$idx_i < 15} {incr idx_i} {
     puts "factorial_rec($idx_i)=<[factorial_rec $idx_i]>"
  }
}

main

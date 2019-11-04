package require Tcl

#comments
proc toCelsius {x} {
  return [expr [expr 5.0 / 9.0] * [expr $x - 32.0]]
  #return (5.0/9.0) * ($x - 32.0)
}

proc toFahrenheit {x} {
  return [expr [expr $x * [expr 9.0 / 5.0]] + 32.0]
  #return ($x * (9.0/5.0) + 32.0)
}

proc main {} {
  if { $::argc != 0 } {
    puts "Usage: $::argv0 <noargs>"
    exit 1
  }

  puts "toFahrenheit(21)=<[toFahrenheit 21.0]>"
  puts "toCelsius(70)=<[toCelsius 70.0]>"
}

main

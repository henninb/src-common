package require Tcl

#comments
proc env_variable_function {n} {
  return  $n
}

proc main {} {
  if { $::argc != 0 } {
    puts "Usage: $::argv0 <noargs>"
    exit 1
  }

  set os $::env(OS)
  puts "$os"
}

main

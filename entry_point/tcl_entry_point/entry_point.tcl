package require Tcl

proc date_today {} {
  puts [clock format [clock seconds] -format {%Y-%m-%d}]
}

proc main {} {
  if { $::argc != 1 } {
    puts "Usage: $::argv0 <arg1>"
    exit 1
  }
  date_today
}

main

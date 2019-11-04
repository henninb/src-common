package require Tcl

proc leap_year {year} {
  if {$year > 1581} {
    expr {(($year % 4 == 0) && ($year % 100 > 0)) || ($year % 400 == 0)}
  } else {
    expr {0}
  }
}

proc main {} {
  if { $::argc != 0 } {
    puts "Usage: $::argv0 <noargs>"
    exit 1
  }

  #puts "leap_year 1996" + [leap_year 1996]
  puts [leap_year 1996]
  puts [leap_year 2000]
  puts [leap_year 2001]
  puts [leap_year 2010]
  #let [x 5]
  #puts "$x"
  #puts "complete"
  #puts [expr [lindex $::argv 0] + [lindex $::argv 1]]
}

main

#comment
package require Tcl

proc date_today {} {
  set epoch [clock seconds]
  set year [clock format $epoch -gmt 0 -format {%Y}]
  set month [clock format $epoch -gmt 0 -format {%m}]
  set day [clock format $epoch -gmt 0 -format {%d}]
  set hour [clock format $epoch -gmt 0 -format {%H}]
  set min [clock format $epoch -gmt 0 -format {%M}]
  set sec [clock format $epoch -gmt 0 -format {%S}]
  puts [clock format [clock seconds] -format {%Y-%m-%d %H:%M:%S}]
  puts "epoch=<$epoch>"
  puts "local=<$year-$month-$day $hour:$min:$sec>"
}

proc date_utc {} {
  set epoch [clock seconds]
  set year [clock format  $epoch -gmt 1 -format {%Y}]
  set month [clock format $epoch -gmt 1 -format {%m}]
  set day [clock format $epoch -gmt 1 -format {%d}]
  set hour [clock format $epoch -gmt 1 -format {%H}]
  set min [clock format $epoch -gmt 1 -format {%M}]
  set sec [clock format $epoch -gmt 1 -format {%S}]
  puts "utc=<$year-$month-$day $hour:$min:$sec>"
  puts [clock format $epoch -gmt 1 -format {%Y-%m-%d %H:%M:%S}]
  puts [clock format $epoch -timezone :UTC -format {%Y-%m-%d %H:%M:%S}]
}


proc main {} {
  if { $::argc != 0 } {
    puts "Usage: $::argv0 <noargs>"
    exit 1
  }
  date_today
  date_utc
}

main

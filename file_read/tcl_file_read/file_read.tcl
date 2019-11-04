package require Tcl

proc fileRead {ifname} {

  puts "file read: $ifname"
  #  Slurp up the data file
  set fp [open "$ifname" r]
  set file_data [read $fp]
  close $fp
  #  Process data file
  set data [split $file_data "\n"]
  foreach line $data {
    puts "$data"
  }
}

proc main {} {
  if { $::argc != 0 } {
    puts "Usage: $::argv0 <noargs>"
    exit 1
  }
  fileRead "input.txt"
}

main

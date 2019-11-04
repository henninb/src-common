package require Tcl

proc euler_phi {N} {
  set Remainder $N;
  set Phi $N;
  set Odd 0;

  if {$Remainder % 2 == 0 } {
     set $Phi [$Phi / 2];
     while { ($Remainder % 2) == 0 } {
       set $Remainder [$Remainder / 2];
     }
  }

  set $Odd 3;

  while {$Odd <= $Remainder } {
    if { ($Remainder % $Odd) == 0 } {
      set $Phi [$Phi * [$Odd - 1] / $Odd];
      while { ($Remainder % $Odd) == 0 } {
        set $Remainder [$Remainder / $Odd];
      }
    }
    set Odd [$Odd + 2];
  }
  return $Phi;
}

proc main {} {
  if { $::argc != 0 } {
    puts "Usage: $::argv0 <noargs>"
    exit 1
  }

  set x [euler_phi 5]
  puts "$x"
  puts "done"
}

main

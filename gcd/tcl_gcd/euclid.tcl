package require Tcl

proc gcd {p q} {
    if {$q == 0} {
        return $p
    }
    gcd $q [expr {$p % $q}]
}

set status [gcd 4 6]
puts $status
puts "done"

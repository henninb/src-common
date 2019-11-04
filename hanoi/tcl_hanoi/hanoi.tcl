#
# The Towers Of Hanoi
# Tcl
# Copyright (C) 1998 Amit Singh. All Rights Reserved.
# http://hanoi.kernelthread.com
#
# Tested under Tcl 8.0b2

proc dohanoi {n to from using} {
    if {$n > 0} {
        dohanoi [expr {$n-1}] $using $from $to
        moveit $from $to
        dohanoi [expr {$n-1}] $to $using $from
    }
}

proc moveit {from to} {
    puts "move $from --> $to"
}

proc hanoi {n} {
    dohanoi $n 3 1 2
}

#if [expr $argv > 0] {
#    hanoi [expr $argv]
#    return 0
#}

set x [hanoi 3]

#__END__

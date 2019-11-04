#comment

function rec_for_loop {
  Param ([int]$x)
  if( $x -eq 0 ) {
    return
  } else {
    rec_for_loop($x - 1)
    write-host($x)
  }
}

function rec_for_loop_reverse {
  Param ([int]$x)
  if( $x -eq 0 ) {
    return
  } else {
    write-host($x)
    rec_for_loop_reverse($x - 1)
  }
}

function main( $argc, $argv ) {
  if ( $argc -ne 0 ) {
    (split-path $MyInvocation.PSCommandPath -Leaf) + " <noargs>"
  }

  rec_for_loop(10)
  rec_for_loop_reverse(10)
  #for ($idx_i=1; $idx_i -le 10; $idx_i++) {
  #  write-host "example_function(", $idx_i ,")=", (example_function $idx_i)
  #}
}

main $args.count $args

#comment

function test {
  Param ([int]$x)
}

function main( $argc, $argv ) {
  if ( $argc -ne 1 ) {
    (split-path $MyInvocation.PSCommandPath -Leaf) + " <arg1>"
    exit(1)
  }
  write-host "got here"
}

main $args.count $args

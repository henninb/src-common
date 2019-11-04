function gcd ([int] $x, [int] $y) {
  if ($y -eq 0) {
    return $x
  } else {
    return gcd $y ([int]$x % [int]$y)
  }
}

function main( $argc, $argv ) {
  if ( $argc -ne 0 ) {
    (split-path $MyInvocation.PSCommandPath -Leaf) + " <noargs>"
  }
  write-host "=(gcd 6 4)=", (gcd 6 4)
}

main $args.count $args

#comment

function example_function {
  Param ([int]$n)
  $x = 0

  $x = ($n + $n - $n) * ($n / 1)
  $x = $x * [math]::floor(1.25)

  if( $x -lt 0 ) {
    $x = [math]::abs($x)
  }
  return $x
}

function main( $argc, $argv ) {
  if ( $argc -ne 0 ) {
    (split-path $MyInvocation.PSCommandPath -Leaf) + " <noargs>"
    exit(1)
  }

  for ($idx_i=1; $idx_i -lt 10; $idx_i++) {
    (write-output "example_function($idx_i)=<", (example_function $idx_i), ">") -join ""
    #(write-output "example_function($idx_i)=<", (example_function $idx_i), ">")
  }
}

main $args.count $args

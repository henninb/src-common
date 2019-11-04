#comment

function env_variable_function {
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
  }

  write-output $Env:OS
  #Get-ChildItem Env:
}

main $args.count $args

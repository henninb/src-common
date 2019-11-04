#comment

function example_function {
  Param ([int]$x)
  return $x
}

function toFahrenheit {
  Param ([double]$x)
  return  $x * (9.0/5.0) + 32.0
}

function toCelsius {
  Param ([double]$x)
  return ($x - 32.0) * (5.0/9.0)
}

function main( $argc, $argv ) {
  if ( $argc -ne 0 ) {
    (split-path $MyInvocation.PSCommandPath -Leaf) + " <noargs>"
  }

  (write-output "toCelsius(", 70.0 ,")=", (toCelsius 70.0)) -join ""
  (write-output "toFahrenheit(", 21.0 ,")=", (toFahrenheit 21.0)) -join ""
}

main $args.count $args

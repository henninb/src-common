#comment

function fibonacci( [int]$n ) {
  if($n -eq 0) {
    return 0;
  } elseif( $n -eq 1 ) {
    return 1;
  } else {
    return (fibonacci($n - 1)) + (fibonacci ($n - 2))
  }
}

function main( $argc, $argv ) {
  if ( $argc -ne 0 ) {
    (split-path $MyInvocation.PSCommandPath -Leaf) + " <noargs>"
  }

  for ($idx_i=1; $idx_i -le 12; $idx_i++) {
    #write-host "fibonacci(", $idx_i ,")=", (fibonacci $idx_i)
    (write-output "fibonacci($idx_i)=<", (fibonacci $idx_i), ">") -join ""
  }
}

main $args.count $args

function factorial ( [int]$n ) {
  if( $n -eq 0 ) {
    return 0;
  } elseif( $n -eq 1 ) {
    return 1;
  } else {
    return $n * (factorial ($n - 1));
  }
}

function main( $argc, $argv ) {
  if ( $argc -ne 0 ) {
    (split-path $MyInvocation.PSCommandPath -Leaf) + " <noargs>"
  }
  for ($idx_i=1; $idx_i -le 14; $idx_i++) {
    #write-host "factorial(", $idx_i ,")=", (factorial $idx_i)
    (write-output "factorial($idx_i)=<", (factorial $idx_i), ">") -join ""
  }
}

main $args.count $args

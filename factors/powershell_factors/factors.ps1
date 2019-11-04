function factor( $n ) {
  $test = 0;

  for( $test = $n - 1; $test -le [Math]::SQRT($n); $test-- ) {
    if( ($n % $test) -eq 0 ) {
      write-host ($n / $test);
    }
  }
  write-host ($n);
}

function main( $argc, $argv ) {
  if ( $argc -ne 0 ) {
    (split-path $MyInvocation.PSCommandPath -Leaf) + " <noargs>"
  }

  #for ($idx_i=0; ($idx_i –lt 20); $idx_i++) {
  write-host "=(factor 1151)=", (factor 1151)
  #}
}

main $args.count $args

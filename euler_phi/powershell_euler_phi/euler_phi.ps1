#comment

function gcd ([int] $x, [int] $y) {
  if ($y -eq 0) {
    return $x
  } else {
    return gcd $y ([int]$x % [int]$y)
  }
}

function is_coprime( [int]$a, [int]$b ) {
  return ((gcd $a $b) -eq 1);
}

function euler_phi_new( [int]$n ) {
  return (rec_for_loop $n $n);
}

function rec_for_loop( [int]$n, [int]$x ) {
  if( $n -eq 0 ) {
    return 0;
  } else {
    if( (is_coprime $x $n) -eq $true ) {
      return (1 + (rec_for_loop($n - 1) $x));
    } else {
      return (0 + (rec_for_loop($n - 1) $x));
    }
  }
}

function euler_phi( [int]$n ) {
  $remainder = $n;
  $phi = $n;
  $odd = 0;

  if( $n -eq 0 ) {
    return 0;
  }
  if( ($remainder % 2) -eq 0 ) {
     $phi = $phi / 2;
     while( ($remainder % 2) -eq 0 ) {
       $remainder = $remainder / 2;
     }
  }

  $odd = 3;

  while ($odd -le $remainder ) {
    if ($remainder % $odd -eq 0 ) {
      $phi = $phi * ($odd - 1) / $odd;
      while( ($remainder % $odd) -eq 0 ) {
        $remainder = $remainder / $odd;
      }
    }
    $odd = $odd + 2;
  }
  return $phi;
}

function main( $argc, $argv ) {
  if ( $argc -ne 0 ) {
    (split-path $MyInvocation.PSCommandPath -Leaf) + " <noargs>"
  }

  for ($idx_i=1; $idx_i -le 24; $idx_i++) {
    write-host "euler_phi(", $idx_i ,")=<", (euler_phi $idx_i), ">"
    write-host "euler_phi_new(", $idx_i ,")=<", (euler_phi_new $idx_i), ">"
  }
}

main $args.count $args

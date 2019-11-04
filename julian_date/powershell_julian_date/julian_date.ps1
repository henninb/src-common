#comment

function julian_date {
  Param ([int]$year, [int]$month, [int]$day)
  $year += 8000
  if( $month -lt 3 ) {
    $year--
    $month += 12
  }
  return [math]::floor(($year * 365) + ($year / 4) - ($year / 100) + ($year / 400) - 1200820 + ($month * 153 + 3) / 5 - 92 + $day - 1) - 0.5
}

function main( $argc, $argv ) {
  if ( $argc -ne 0 ) {
    (split-path $MyInvocation.PSCommandPath -Leaf) + " <noargs>"
  }

  (write-output (julian_date 2017 11 22))
}

main $args.count $args

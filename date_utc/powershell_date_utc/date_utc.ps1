#comment

function example_function {
  Param ([int]$x)
}

function main( $argc, $argv ) {
  if ( $argc -ne 0 ) {
    (split-path $MyInvocation.PSCommandPath -Leaf) + " <noargs>"
  }
  $local = Get-Date
  $utc = $local.ToUniversalTime()
  #write-host "$now"
  $day = $local.Day
  $month = $local.Month
  $year = $local.Year
  $hour = $local.Hour
  $min = $local.Minute
  $sec = $local.Second
  write-host "$year-$month-$day ${hour}:${min}:${sec}"
  $day = $utc.Day
  $month = $utc.Month
  $year = $utc.Year
  $hour = $utc.Hour
  $min = $utc.Minute
  $sec = $utc.Second
  write-host "$year-$month-$day ${hour}:${min}:${sec}"
}

main $args.count $args

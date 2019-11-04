#comment

function isLeapYear {
  Param ([int]$year)

  if( $year -gt 1581 ) {
    return((($year % 4 -eq 0) -and ($year % 100 -gt 0)) -or ($year % 400 -eq 0));
  } else {
    return 1;
  }
}

function main( $argc, $argv ) {
  if ( $argc -ne 0 ) {
    (split-path $MyInvocation.PSCommandPath -Leaf) + " <noargs>"
  }

  for ($idx_i = 1999; $idx_i -lt 2101; $idx_i++) {
    (write-output "isLeapYear($idx_i)=<", (isLeapYear $idx_i), ">") -join ""
  }
}

main $args.count $args

#comment

function bubblesort ($a) {
  $l = $a.Length
  $hasChanged = $true
  while ($hasChanged) {
    $hasChanged = $false
    $l--
    for ($i = 0; $i -lt $l; $i++) {
      if ($a[$i] -gt $a[$i+1]) {
        $a[$i], $a[$i+1] = $a[$i+1], $a[$i]
        $hasChanged = $true
      }
    }
  }
}


function main( $argc, $argv ) {
  [int[]] $arr = 10, 2, 4, 1, 6, 5, 8, 7, 3, 9
  if ( $argc -ne 0 ) {
    (split-path $MyInvocation.PSCommandPath -Leaf) + " <noargs>"
  }

    Write-Host -NoNewline "$arr"
    Write-Host ""
  #foreach ($x in $arr) {
  #  Write-Host -NoNewline "$x "
  #}
  (bubblesort $arr)
    Write-Host -NoNewline "$arr"
    Write-Host ""
}

main $args.count $args

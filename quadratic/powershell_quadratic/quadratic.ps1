function quadratic( [double]$a, [double]$b, [double]$c ) {
  [double]$discriminant = (($b * $b) - (4.0 * $a * $c));
  [double]$root1 = 0.0;
  [double]$root2 = 0.0;

  if( $discriminant -lt 0.0 ) {
    Write-Host "No Real Roots";
    #printf("No real roots\n");
    #return 0.0;
  } else {
    $root1 = ((-1.0 * $b) - ([System.Math]::Sqrt($discriminant))) / (2.0 * $a);
    $root2 = ((-1.0 * $b) + ([System.Math]::Sqrt($discriminant))) / (2.0 * $a);
  }
  Write-Host "Roots1=" + $root1;
  Write-Host "Roots2=" + $root2;
  #printf("roots: %.10g %.10g\n", root1, root2);
  #return 0.0;
}

#5,9
#$x = quadratic([double]1.0, [double]-14.0, [double]45.0);
#quadratic(1, -14, 45);
quadratic(1.0, -14.0, 45.0);

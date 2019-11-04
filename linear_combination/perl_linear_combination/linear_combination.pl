#!/usr/bin/perl -w

use strict;
use warnings;

sub main {
  if( $#ARGV+1 != 0 ) {
    print STDERR "Usage: $0 <noargs>\n";
    exit(1);
  }
  &gcd_linear_combination(4,59);
  #print "$ARGV[0]\n";
  exit(0);
}

sub print_linear_combination {
  my $x = shift;
  my $y = shift;
  my $f = shift;
  my $g = shift;
  my $gcd = shift;
  #//printf("The Linear Combination is: %d * (%d) + %d * (%d) = %d\n", x, f, y, g, gcd);
  #//Console.WriteLine("The Linear Combination is: %d * (%d) + %d * (%d) = %d", x, f, y, g, gcd);
  #Console.WriteLine("The Linear Combination is: "+ x + " * (" + f + ") + " + y + " * (" + g + ") = " + gcd);
  print("The Linear Combination is: $x * ($f) + $y * ($g) = $gcd\n");
}

sub gcd_linear_combination {
  my $x = shift;
  my $y = shift;
  my $a2 = 1;
  my $b3 = 1;
  my $a3 = 0;
  my $b2 = 0;
  my $a1 = $x;
  my $b1 = $y;

  while( 1 ) {
    if( $a1 == $b1 ) {
      &print_linear_combination($x, $y, $b2, $b3, $b1);
      &print_linear_combination($x, $y, $a2, $a3, $a1);
      last;
    } elsif( $a1 > $b1 ) {
      $a1 = $a1 - $b1;
      $a2 = $a2 - $b2;
      $a3 = $a3 - $b3;
    } else {
      # if( $b1 > $a1 )
      $b1 = $b1 - $a1;
      $b2 = $b2 - $a2;
      $b3 = $b3 - $a3;
    }
  }
}

&main();

#!/usr/bin/perl -w

use strict;
use warnings;

sub easterCalculator {
  my $year = shift;
  my $day = 0;
  my $month = 0;
  my $g = 0;
  my $c = 0;
  my $h = 0;
  my $i = 0;

  $g = $year % 19;
  $c = $year / 100;
  $h = ($c - ($c / 4) - ((8 * $c + 13) / 25) + 19 * $g + 15) % 30;
  $i = $h - ($h / 28) * (1 - ($h / 28) * (29 / ($h + 1)) * ((21 - $g) / 11));

  $day   = int($i - (($year + ($year / 4) + $i + 2 - $c + ($c / 4)) % 7) + 28);
  $month = 3;

  if ($day > 31) {
    $month = $month + 1;
    $day = $day - 31;
  }
  return "" . $month . "/" . $day . "/" . $year . "";
}

sub main {
  my $idx_i;
  if( $#ARGV+1 != 0 ) {
    print STDERR "Usage: $0 <noargs>\n";
    exit(1);
  }
  for( $idx_i = 2018; $idx_i < 2100; $idx_i++ ) {
    print "easterCalculator(" . $idx_i . ")=<" . &easterCalculator($idx_i) . ">\n";
  }
  #print $ARGV[0], "\n";
  #print "got here\n";
  exit(0);
}

&main();


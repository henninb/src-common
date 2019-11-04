#!/usr/bin/perl -w

use strict;
use warnings;

sub main {
  my $x;
  my $idx;

  if( $#ARGV+1 != 0 ) {
    print STDERR "Usage: $0 <noargs>\n";
    exit(1);
  }

  for( $idx = 1; $idx < 25; $idx++ ) {
    $x = &euler_phi($idx);
    print "euler_phi($idx)=<$x>\n";
  }

  return 0;
}

sub euler_phi {
  my $n = shift;

  my $remainder = $n;
  my $phi = $n;
  my $odd = 0;

  if( ($remainder % 2) == 0 ) {
     $phi = $phi / 2;
     while( ($remainder % 2) == 0 ) {
       $remainder = $remainder / 2;
     }
  }

  $odd = 3;

  while ($odd <= $remainder ) {
    if ($remainder % $odd == 0 ) {
      $phi = $phi * ($odd - 1) / $odd;
      while( ($remainder % $odd) == 0 ) {
        $remainder = $remainder / $odd;
      }
    }
    $odd = $odd + 2;
  }
  return $phi;
}

&main();

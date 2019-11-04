#!/usr/bin/perl -w

use strict;
use warnings;

sub main {
  my $idx_i;

  if( $#ARGV+1 != 0 ) {
    print STDERR "Usage: $0 <noargs>\n";
    exit(1);
  }

  for( $idx_i = 1999; $idx_i < 2101; $idx_i++ ) {
    print "isLeapYear(" . $idx_i . ")=<" . &isLeapYear($idx_i) . ">\n";
  }
  exit(0);
}

sub isLeapYear {
  my $year = shift;

  if( $year > 1581 ) {
    return((($year % 4 == 0) && ($year % 100 > 0)) || ($year % 400 == 0));
  } else {
    return 1;
  }
}

&main();

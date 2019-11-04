#!/usr/bin/perl -w

use strict;
use warnings;

sub main {
  my $idx_i;

  if( $#ARGV+1 != 0 ) {
    print STDERR "Usage: $0 <noargs>\n";
    exit(1);
  }

  for( $idx_i = 1; $idx_i < 15; $idx_i++ ) {
    print "factorial(" . $idx_i . ")=" . &factorial($idx_i) . "\n";
  }

  return 0;
}

sub factorial {
  my $n = shift;

  if( $n == 0 ) {
    return 0;
  } elsif( $n == 1 ) {
      return 1;
  } else {
    return($n * factorial( $n - 1 ));
  }
}

&main();

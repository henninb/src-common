#!/usr/bin/perl -w

use strict;
use warnings;

sub main {
  my $idx_i;

  if( $#ARGV+1 != 0 ) {
    print STDERR "Usage: $0 <noargs>\n";
    exit(1);
  }

  for( $idx_i = 1; $idx_i < 25; $idx_i++ ) {
    print "fibonacci(" . $idx_i . ")=<" . &fibonacci($idx_i) . ">\n";
  }

  return 0;
}

sub fibonacci {
  my $n = shift;
  if( $n == 0 ) {
    return 0;
  } elsif( $n == 1 ) {
      return 1;
  } else {
    return (fibonacci($n-1) + fibonacci($n-2));
  }
}

&main();

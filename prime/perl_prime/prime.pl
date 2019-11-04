#!/usr/bin/perl -w

use strict;
use warnings;

sub is_prime {
    my $number = shift;
    for (my $idx_i=2; $idx_i < $number; $idx_i++) {
        if ($number % $idx_i == 0 && $idx_i != $number) {
          return 0;
        }
    }
    return 1;
}

sub main {
  if( $#ARGV+1 != 0 ) {
    print STDERR "Usage: $0 <noargs>\n";
    exit(1);
  }
  #print $ARGV[0], "\n";
  #print "got here\n";
  #my $x = &is_prime(97);
  for( my $idx = 0; $idx < 100; $idx++ ) {
    print "is_prime (" . $idx . ")" .  &is_prime($idx) . "\n";
  }
  exit(0);
}

&main();


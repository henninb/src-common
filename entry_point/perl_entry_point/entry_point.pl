#!/usr/bin/perl -w

use strict;
use warnings;

sub main {
  if( $#ARGV+1 != 1 ) {
    print STDERR "Usage: $0 <arg1>\n";
    exit(1);
  }
  print "$ARGV[0]\n";
  exit(0);
}

&main();

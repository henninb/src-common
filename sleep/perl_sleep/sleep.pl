#!/usr/bin/perl -w

use strict;
use warnings;

sub main {
  if( $#ARGV+1 != 0 ) {
    print STDERR "Usage: $0 <noargs>\n";
    exit(1);
  }
  print "Sleeping...\n";
  sleep 5; # number is in seconds
  print "Awake!\n";
  exit(0);
}

&main();


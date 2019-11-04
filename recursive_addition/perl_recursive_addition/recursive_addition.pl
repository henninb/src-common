#!/usr/bin/perl -w

use strict;
use warnings;

sub rec_add {
  my $x = shift;
  my $y = shift;

  if( $y == 0 ) {
    return $x;
  } else {
    return 1 + rec_add( $x, $y - 1 );
  }
}


sub main {
  if( $#ARGV+1 != 0 ) {
    print STDERR "Usage: $0 <noargs>\n";
    exit(1);
  }
  #print $ARGV[0], "\n";
  print "rec_add(6,8)=" . &rec_add(6,8) . "\n";
  exit(0);
}

&main();

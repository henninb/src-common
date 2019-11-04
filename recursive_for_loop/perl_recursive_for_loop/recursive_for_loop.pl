#!/usr/bin/perl -w

use strict;
use warnings;

sub main {
  my $idx_i;

  if( $#ARGV+1 != 0 ) {
    print STDERR "Usage: $0 <noargs>\n";
    exit(1);
  }
  #print $ARGV[0], "\n";
  #for( $idx_i = 1; $idx_i < 10; $idx_i++ ) {
  #  print "example_function(" . $idx_i . ")=<" . &example_function($idx_i) . ">\n";
  #}
  &rec_for_loop(10);
  &rec_for_loop_reverse(10);
  exit(0);
}

sub rec_for_loop {
  my $x = shift;
  if( $x == 0 ) {
    return;
  } else {
    rec_for_loop($x - 1);
    print($x, "\n");
  }
}

sub rec_for_loop_reverse {
  my $x = shift;
  if( $x == 0 ) {
    return;
  } else {
    print($x, "\n");
    rec_for_loop_reverse($x - 1);
  }
}

&main();

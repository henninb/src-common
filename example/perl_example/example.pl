#!/usr/bin/perl -w

use strict;
use warnings;
use POSIX qw/floor/;
use POSIX qw/abs/;

sub main {
  my $idx_i;

  if( $#ARGV+1 != 0 ) {
    print STDERR "Usage: $0 <noargs>\n";
    exit(1);
  }
  #print $ARGV[0], "\n";
  for( $idx_i = 1; $idx_i < 10; $idx_i++ ) {
    print "example_function(" . $idx_i . ")=<" . &example_function($idx_i) . ">\n";
  }
  exit(0);
}

sub example_function {
  my $n = shift;
  my $x = 0;

  $x = ($n + $n - $n) * ($n / 1);
  $x = $x * floor(1.25);

  if( $x < 0 ) {
    $x = abs($x);
  }
  return $x;
}

&main();

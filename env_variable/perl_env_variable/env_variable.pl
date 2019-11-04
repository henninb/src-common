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
  print $ENV{OS}, "\n";
  exit(0);
}

sub env_variable_function {
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

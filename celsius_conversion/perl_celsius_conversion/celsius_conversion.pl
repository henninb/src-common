#!/usr/bin/perl -w

use strict;
use warnings;

sub main {
  my $idx_i;

  if( $#ARGV+1 != 0 ) {
    print STDERR "Usage: $0 <noargs>\n";
    exit(1);
  }
  #for( $idx_i = 1; $idx_i < 10; $idx_i++ ) {
  #  print "example_function(" . $idx_i . ")=<" . &example_function($idx_i) . ">\n";
  #}
  #exit(0);
  print "toFahrenheit(" . 21 . ")=<" . &toFahrenheit(21) . ">\n";
  print "toCelsius(" . 70 . ")=<" . &toCelsius(70) . ">\n";
}

sub toFahrenheit {
  my $x = shift;
  return $x * (9.0/5.0) + 32.0;
}

sub toCelsius {
  my $x = shift;
  return ($x - 32.0) * (5.0/9.0);
}

&main();

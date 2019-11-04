#!/usr/bin/perl -w

use strict;
use warnings;
use Time::localtime;
use Date::Calc qw();

#does not work yet
sub julian_date {
  my $y = shift;
  my $m = shift;
  my $d = shift;

  $y += 8000;
  if( $m < 3 ) {
    $y--;
    $m += 12;
  }
  return int(($y * 365) + ($y / 4) - ($y / 100) + ($y / 400) - 1200820 + ($m * 153 + 3) / 5 - 92 + $d - 1) - 0.5;
}

sub main {
  my ($year, $month, $mday) = Date::Calc::Today();

  if( $#ARGV+1 != 0 ) {
    print STDERR "Usage: $0 <noargs>\n";
    exit(1);
  }
  print &julian_date($year, $month, $mday), "\n";
  exit(0);
}

&main();

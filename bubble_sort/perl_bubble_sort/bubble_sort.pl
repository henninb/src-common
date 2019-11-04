#!/usr/bin/perl -w

use strict;
use warnings;

sub main {
  my @arr = (10, 2, 4, 1, 6, 5, 8, 7, 3, 9);
  if( $#ARGV+1 != 0 ) {
    print STDERR "Usage: $0 <noargs>\n";
    exit(1);
  }
  &bubble_sort(@arr);
  #print $ARGV[0], "\n";
  exit(0);
}

&main();

sub bubble_sort {
  my $array = shift;
  my $not_complete = 1;
  my $index;
  my $len = ((scalar @$array) - 2);
  while ($not_complete) {
    $not_complete = 0;
    foreach $index (0 .. $len) {
      if (@$array[$index] > @$array[$index + 1]) {
        my $temp = @$array[$index + 1];
        @$array[$index + 1] = @$array[$index];
        @$array[$index] = $temp;
        $not_complete = 1;
      }
    }
  }
}

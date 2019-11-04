#!/usr/bin/perl -w

use strict;
use warnings;

sub main {
  if( $#ARGV+1 != 0 ) {
    print STDERR "Usage: $0 <noargs>\n";
    exit(1);
  }
  #print $ARGV[0], "\n";
  &hanoi(3, 3, 1, 2);
  exit(0);
}

&main();


#($#ARGV == 0) or die "usage: $0 N\n";
#my $N = int($ARGV[0]); ($N > 0) or die "$0: illegal value for number of disks\n";

#hanoi($N, 3, 1, 2);

sub hanoi {
  my ($n, $to, $from, $using) = @_;

  if ($n > 0) {
    hanoi($n - 1, $using, $from, $to);
    print "move $from --> $to\n";
    hanoi($n - 1, $to, $using, $from);
  }
}

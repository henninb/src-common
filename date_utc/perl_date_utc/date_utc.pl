#!/usr/bin/perl -w

use strict;
use warnings;
#use DateTime;

#my $local = DateTime->now;

sub date_today {
  my ($sec,$min,$hour,$mday,$month,$year,$wday,$yday,$isdst) = localtime(time);
  $month++;
  $year = $year + 1900;
  print "local: $year-$month-$mday $hour:$min:$sec\n";
  return "$year-$month-$mday $hour:$min:$sec";
}

sub date_today_utc {
  my ($sec,$min,$hour,$mday,$month,$year,$wday,$yday,$isdst) = gmtime(time);
  $month++;
  $year = $year + 1900;
  print "utc: $year-$month-$mday $hour:$min:$sec\n";
  return "$year-$month-$mday $hour:$min:$sec";
}

sub main {
  if( $#ARGV+1 != 0 ) {
    print STDERR "Usage: $0 <noargs>\n";
    exit(1);
  }

  print &date_today_utc(), "\n";
  print &date_today(), "\n";

  #print $ARGV[0], "\n";
  exit(0);
}

&main();

#!/usr/bin/perl -w

use strict;
use warnings;

#sub date_today {
#  my ($sec,$min,$hour,$mday,$month,$year,$wday,$yday,$isdst) = localtime(time);
#  my @local = (localtime)[3..5];
#  my $date1 = sprintf("%04d-%02d-%02d", $local[2] + 1900, $local[1] + 1, $local[0]);
#  my @now = localtime(time());
#  ##my ($mday, $mon, $year) = (localtime(time))[3,4,5];
#  $month++;
#  $year = $year + 1900;
#  print "$year-$month-$mday $hour:$min:$sec\n";
#  #print $date1, "\n";
#  return $date1;
#}

sub date_today {
  my ($sec,$min,$hour,$mday,$month,$year,$wday,$yday,$isdst) = localtime(time);
  $month++;
  $year = $year + 1900;
  print "local=<$year-$month-$mday $hour:$min:$sec>\n";
  return "$year-$month-$mday $hour:$min:$sec";
}

sub date_today_utc {
  my ($sec,$min,$hour,$mday,$month,$year,$wday,$yday,$isdst) = gmtime(time);
  $month++;
  $year = $year + 1900;
  print "utc=<$year-$month-$mday $hour:$min:$sec>\n";
  return "$year-$month-$mday $hour:$min:$sec";
}

sub main {
  my $x;

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

#!/usr/bin/perl -w

use strict;
use warnings;
#use Date::Manip;
use Time::Local;
use POSIX;
#use Time::CTime;
use POSIX qw/strftime/;
#use Date::Calc qw(Time_to_Date);

sub epoch_now {
  my $epoch = time();
  print "INFO: epoch = $epoch\n";
  return $epoch;
}

sub driver {
  #my @local_list;
  #my @utc_list;
  my $sec = 0;
  my $min = 0;
  my $hour =13;
  my $mday = 12 - 1;
  my $mon = 1;
  my $year = 2010 - 1900;
  my $wday = 0;
  my $yday = 0;


  my $local_datetime = timelocal($sec, $min, $hour, $mday, $mon, $year);
  my $utc_datetime = timegm($sec, $min, $hour, $mday, $mon, $year);

  my $unixtime = mktime($sec, $min, $hour, $mday, $mon, $year, $wday, $yday);
  #my $unixtime = mktime($sec, $min, $hour, $mday, $mon, $year);
  #my $local_datetime = timelocal(@local_list);
  #my $utc_datetime = timegm(@utc_list);
  #print @local_list;
  #my $theDate = strftime("%Y-%M-%d", $unixtime);

  print("local_datetime=$local_datetime\n");
  print("utc_datetime=$local_datetime\n");
  #print("unixtime=", $unixtime,  "\n");
}

sub main {
  if( $#ARGV+1 != 0 ) {
    print STDERR "Usage: $0 <noargs>\n";
    exit(1);
  }

  &epoch_now();
  &driver();
  return 0;
}

&main();

#!/usr/bin/perl -w

use strict;
use warnings;

sub main {
  my $fname = $ARGV[0];

  if( $#ARGV+1 != 1 ) {
    print STDERR "Usage: $0 <fname>\n";
    exit(1);
  }

  &file_write($fname, "some data");
  return 0;
}

sub file_write {
  my $fname = shift;
  my $data = shift;

  if( open(OFILE, ">$fname") != 1 ) {
    print STDERR "ABORT: open file failed for '$fname'.\n";
    exit(1);
  }

  # binary mode
  binmode(OFILE);
  print OFILE "$data";

  close(OFILE);
}

&main();

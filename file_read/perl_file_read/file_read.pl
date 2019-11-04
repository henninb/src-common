#!/usr/bin/perl -w

use strict;
use warnings;

sub main {
  my $fname = $ARGV[0];

  if( $#ARGV+1 != 1 ) {
    print STDERR "Usage: $0 <fname>\n";
    exit(1);
  }

  &file_read($fname);
  return 0;
}

sub file_read {
  my $filename = shift;

  # binmode(SDTOUT);

  if( defined(open(IFILE, "<$filename")) == 0 ) {
    print STDERR "ABORT: open failed for '$filename'.\n";
    exit(1);
  }

  while( <IFILE> ) {
    chomp($_);
    print $_, "\n";
  }

  close(IFILE);
}

&main();

#!/usr/bin/env perl
#
# This file is part of moses.  Its use is licensed under the GNU Lesser General
# Public License version 2.1 or, at your option, any later version.

use warnings;
use strict;

my $filename = $ARGV[0];
open(my $fh, '<:encoding(UTF-8)', $filename)
  or die "Could not open file '$filename' $!";
 
my $filename2 = $ARGV[1];
open(my $fhl, '>:encoding(UTF-8)', $filename2) or die "Could not open file '$filename' $!";

while (my $row = <$fh>) {
  chomp $row;
  print $fhl lc($row);
  print $fhl "\n";
}

close $fhl;
close $fh;

#!/usr/bin/env perl
use utf8;
use Modern::Perl 2022;
use File::Basename;
use File::Spec;

# Implementation of 'mv' command

die "Usage: $0 file destination" unless ( @ARGV >= 2 );
my ( $file, $destination ) = @ARGV;
$destination = File::Spec->catfile( $destination, basename $file )
  if -d $destination;
rename $file, "$destination" or die "Can't move '$file' to '$destination': $!";

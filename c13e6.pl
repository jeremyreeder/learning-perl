#!/usr/bin/env perl
use utf8;
use Modern::Perl 2022;

# Implementation of 'ln' command

die "Usage: $0 target link" unless ( @ARGV == 2 );
my ( $target, $link ) = @ARGV;
link $target, "$link" or die "Can't create link '$link' to '$target': $!";

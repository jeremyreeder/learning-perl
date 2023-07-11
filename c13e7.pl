#!/usr/bin/env perl
use utf8;
use Modern::Perl 2022;

# Implementation of 'ln' command with '-s' support

die "Usage: $0 [-s] target link" unless ( @ARGV >= 2 and @ARGV <= 3 );
my ( $target, $link ) = @ARGV[ -2 .. -1 ];
if ( $ARGV[0] eq '-s' ) {
    symlink $target, "$link"
      or die "Can't create symlink '$link' to target '$target': $!";
}
else {
    link $target, "$link"
      or die "Can't create link '$link' to target '$target': $!";
}

#!/usr/bin/env perl
use utf8;
use Modern::Perl 2022;

# Implementation of 'rm' command

die "Usage: $0 file" unless ( @ARGV >= 1 );

for (@ARGV) {
    unlink $_ or warn "Can't delete '$_': $!";
}

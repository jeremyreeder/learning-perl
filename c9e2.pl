#!/usr/bin/env perl
use utf8;
use Modern::Perl 2022;
use autodie;

my $input = $ARGV[0];
if ( !defined $input ) {
    die "Usage: $0 filename";
}

open OUTPUT, '>', "$input.out";
while ( $_ = <<>> ) {
    s/Fred/Larry/ig;
    print OUTPUT;
}

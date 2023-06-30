#!/usr/bin/env perl
## Copyright (C) 2023 by Jeremy Reeder
use utf8;
use Modern::Perl 2022;
use autodie;

my $input = $ARGV[0];
if ( !defined $input ) {
    die "Usage: $0 filename";
}

open OUTPUT, '>', "$input.out";
while ( $_ = <<>> ) {
    s/Fred/\0/ig;
    s/Wilma/Fred/ig;
    s/\0/Wilma/g;
    print OUTPUT;
}

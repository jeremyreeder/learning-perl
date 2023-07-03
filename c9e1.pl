#!/usr/bin/env perl
use utf8;
use Modern::Perl 2022;
use autodie;

open my $input_fh, '<', "resources/c9input.txt";

my $what = 'fred|barney';
while ( $_ = <$input_fh> ) {
    print if (/(?:$what){3}/);
}

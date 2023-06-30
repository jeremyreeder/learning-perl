#!/usr/bin/env perl
use utf8;
use Modern::Perl 2022;
use autodie;

open INPUT, '<', "resources/c9input.txt";

my $what = 'fred|barney';
while ( $_ = <INPUT> ) {
    print if (/(?:$what){3}/);
}

#!/usr/bin/env perl
use utf8;
use Modern::Perl 2022;

for ( glob '*' ) {
    if (-l) {
        my $target = readlink;
        say "$_ -> $target";
    }
}

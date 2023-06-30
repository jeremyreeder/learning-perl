#!/usr/bin/env perl
use utf8;
use Modern::Perl 2022;
use autodie;

open INPUT, '<', "resources/c8input.txt";

while ( $_ = <INPUT> ) {
    chomp;
    say "$_ contains '$1'" if (/(\w+a)\b/);
}

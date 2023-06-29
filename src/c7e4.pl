#!/usr/bin/env perl
use utf8;
use Modern::Perl 2022;
use autodie;

open INPUT, '<', "resources/c7input.txt";

while ( $_ = <INPUT> ) {
    print if ( /\b[A-Z][a-z]+\b/ );
}

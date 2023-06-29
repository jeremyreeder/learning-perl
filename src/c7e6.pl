#!/usr/bin/env perl
use utf8;
use Modern::Perl 2022;
use autodie;

open INPUT, '<', "resources/c7input.txt";

while ( my $line = <INPUT> ) {
    print $line if ( $line =~ /\bwilma\b/ && $line =~ /\bfred\b/ );
}

#!/usr/bin/env perl
use utf8;
use Modern::Perl 2022;
use autodie;
use Try::Tiny;

open my $input_fh, '<', "resources/c16e1input.txt";
chomp( my @lines = <$input_fh> );
close $input_fh;
open STDIN, '<', "$ENV{HOME}/ALTIN";
while ( my $pattern = <STDIN> ) {
    chomp $pattern;
    try {
        my @matches = grep { /$pattern/ } @lines;
        if ( @matches == @lines ) {
            say "All lines match /$pattern/.";
        }
        elsif ( @matches > 0 ) {
            say scalar(@matches) . " lines match /$pattern/:";
            say "\t$_" for @matches;
        }
        else { say "No lines match /$pattern/." }
    }
    catch {
        say "Can't match pattern /$pattern/: $_";
    }
}

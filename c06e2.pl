#!/usr/bin/env perl
use utf8;
use Modern::Perl 2022;
use autodie;

my %count;

open STDIN, '<', "$ENV{HOME}/ALTIN";

while ( my $word = <STDIN> ) {
    chomp($word);
    $count{$word}++;
}

for my $word ( sort ( keys %count ) ) {
    say "$count{$word} x $word";
}

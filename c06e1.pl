#!/usr/bin/env perl
use utf8;
use Modern::Perl 2022;
use autodie;

my %surnames = qw[
  Jeremy Reeder
  Cory McIntire
  Michael Karr
];

open STDIN, '<', "$ENV{HOME}/ALTIN";

while ( my $given_name = <STDIN> ) {
    chomp($given_name);
    say "$given_name\'s surname is $surnames{$given_name}.";
}

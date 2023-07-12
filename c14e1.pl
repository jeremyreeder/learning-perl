#!/usr/bin/env perl
use utf8;
use Modern::Perl 2022;

open STDIN, '<', "$ENV{HOME}/ALTIN";
chomp( my @numbers = sort { $a <=> $b } <STDIN> );
say "@numbers";

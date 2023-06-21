#!/usr/bin/env perl
use utf8;
use Modern::Perl '2022';

my @names = qw[fred betty barney dino wilma pebbles bamm-bamm];
chomp(my @numbers = <STDIN>);
say $names[$_ - 1] for (@numbers);
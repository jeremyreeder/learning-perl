#!/usr/bin/env perl
use utf8;
use Modern::Perl 2022;

my %surname = qw[
  fred flintstone
  Wilma Flintstone
  Barney Rubble
  betty rubble
  Bamm-Bamm Rubble
  PEBBLES FLINTSTONE
];

my @sorted_name =
  sort { "\F$surname{$a}" cmp "\F$surname{$b}" or "\F$a" cmp "\F$b" }
  keys %surname;

say "$_ $surname{$_}" for @sorted_name;

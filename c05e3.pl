#!/usr/bin/env perl
use utf8;
use Modern::Perl 2022;
use experimental 'signatures';

chomp(my @lines = <STDIN>);
say '1234567890' x 2 x @lines;
my $format = '%20s' x @lines;
printf $format, @lines;
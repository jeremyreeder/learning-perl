#!/usr/bin/env perl
use utf8;
use Modern::Perl 2022;
use experimental 'signatures';
use POSIX 'ceil';

chomp(my $column_width = <STDIN>);
chomp(my @lines = <STDIN>);
my $ruler = '1234567890' x ceil($column_width * @lines / 10);
say $ruler;
my $format = '%*s' x @lines;
my @columns = map { ($column_width, $_) } @lines;
printf $format, @columns;
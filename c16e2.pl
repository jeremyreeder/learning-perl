#!/usr/bin/env perl
use utf8;
use Modern::Perl 2022;
use List::Util 'max';

my @files               = glob '*';
my $max_filename_length = max( map { length } @files );
printf "%-*s  %-10s  %-10s\n", $max_filename_length, 'file', 'atime', 'mtime';
say '-' x $max_filename_length . ( '  ' . '-' x 10 ) x 2;
for (@files) {
    my ( $atime, $mtime ) = (stat)[ 8, 9 ];
    printf "%-*s  %10d  %10d\n", $max_filename_length, $_, $atime, $mtime;
}

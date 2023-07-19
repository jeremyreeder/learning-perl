#!/usr/bin/env perl
use utf8;
use Modern::Perl 2022;
use List::Util 'max';
use experimental 'signatures';

sub format_date ($epoch_time) {
    my ( $year, $month, $day ) = ( localtime($epoch_time) )[ 5, 4, 3 ];
    $year  += 1900;
    $month += 1;
    sprintf( "%d-%02d-%02d", $year, $month, $day );
}

my @files               = glob '*';
my $max_filename_length = max( map { length } @files );
printf "%-*s  %-10s  %-10s\n", $max_filename_length, 'file', 'atime', 'mtime';
say '-' x $max_filename_length . ( '  ' . '-' x 10 ) x 2;
for (@files) {
    my ( $atime, $mtime ) =
      map { format_date $_ } (stat)[ 8, 9 ];
    printf "%-*s  %s  %s\n", $max_filename_length, $_, $atime, $mtime;
}

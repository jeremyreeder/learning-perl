#!/usr/bin/env perl
use utf8;
use Modern::Perl 2022;
use experimental 'signatures';
use Time::Moment;
use List::Util 'min';

sub mtime ($file) {
    my @stats = stat $file;
    $stats[9];
}

die "Usage: $0 files" unless defined $ARGV[0];
my %file_mtime     = map { $_ => mtime $_ } @ARGV;
my $min_file_mtime = min( values %file_mtime );
my $then           = Time::Moment->from_epoch($min_file_mtime);
my $now            = Time::Moment->now;
my $age            = $then->delta_days($now);
my %mtime_file     = reverse %file_mtime;
my $oldest_file    = $mtime_file{$min_file_mtime};
printf "Oldest file: $oldest_file ($age day%s)\n", ( $age == 1 ? '' : 's' );

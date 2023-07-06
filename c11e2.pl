#!/usr/bin/env perl
use utf8;
use Modern::Perl 2022;
use Time::Moment;
use Scalar::Util 'looks_like_number';

my $now = Time::Moment->now;

unless ( looks_like_number( $ARGV[0] ) && looks_like_number( $ARGV[1] ) ) {
    die "Usage: $0 year month";
}
my $then = Time::Moment->new(
    year  => $ARGV[0],
    month => $ARGV[1],
);

my $delta_years  = $then->delta_years($now);
my $delta_months = $then->delta_months($now) % 12;

say "$delta_years years, $delta_months months";

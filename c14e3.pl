#!/usr/bin/env perl
use utf8;
use Modern::Perl 2022;

die "Usage: $0 string substring" unless @ARGV == 2;
my ( $string, $substring ) = @ARGV;
my $index = 0;
while (1) {
    $index = index( $string, $substring, $index );
    last if $index == -1;
    say $index++;
}

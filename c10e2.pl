#!/usr/bin/env perl
## Copyright (C) 2023 by Jeremy Reeder
use utf8;
use Modern::Perl 2022;
use autodie;
use Scalar::Util 'looks_like_number';
use Data::Dump 'dump';

my $Debug = $ENV{DEBUG} // 1;
say "\$Debug: true" if $Debug;
dump($ARGV)         if $Debug;
my ( $min, $max ) = ( 1, 100 );
my $secret = int( $min + rand $max );
say "\$secret: $secret" if $Debug;
say "I'm thinking of a number between $min and $max. Can you guess it?";

#open STDIN, '<', "$ENV{HOME}/ALTIN";
while ( my $guess = <STDIN> ) {
    chomp($guess);
    last unless ( looks_like_number($guess) );
    if ( $guess == $secret ) {
        say "You nailed it!";
        last;
    }
    say $guess > $secret ? "Too high." : "Too low.";
}

#!/usr/bin/env perl
use utf8;
use Modern::Perl 2022;
use feature 'bitwise';
use Scalar::Util 'dualvar';
use Devel::Peek;

my $number     = 137;
my $number_str = '137';
my $string     = 'Amelia';
my $dual       = dualvar 237, 'Buster';
Dump($number);
Dump($number_str);
{
    no warnings 'numeric'; # Yes, I really do want to parse $string as a number.
    say $number_str & ( $string + 0 );
}
say $number & $string;
say $number_str &. $string;
say $string;
say $number_str & $number;
say $number & $number_str;
say int($number_str);

say $dual;
say $dual + 0;

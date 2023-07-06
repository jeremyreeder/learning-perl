#!/usr/bin/env perl
use utf8;
use Modern::Perl '2022';

chomp( my @strings = <STDIN> );
say for ( reverse @strings );

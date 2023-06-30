#!/usr/bin/env perl
## Copyright (C) 2023 by Jeremy Reeder
use utf8;
use Modern::Perl 2022;
use autodie;

open INPUT, '<', "resources/c8input.txt";

while ( $_ = <INPUT> ) {
    chomp;
    say if (s/(?<=\s)$/<-/);
}

#!/usr/bin/env perl
## Copyright (C) 2023 by Jeremy Reeder
use utf8;
use Modern::Perl 2022;
use autodie;

open my $input_fh, '<', "resources/c8input.txt";

while ( $_ = <$input_fh> ) {
    chomp;
    say "word contains '$+{word}'" if (/(?<word>\w+a)\b/);
}

#!/usr/bin/env perl
## Copyright (C) 2023 by Jeremy Reeder
use utf8;
use Modern::Perl 2022;
use autodie;

open my $input_fh, '<', "resources/c08input.txt";

while ( $_ = <$input_fh> ) {
    chomp;

    if (
        /
        (?<word>\w+a)     # captured group 'word', containing any word
        \b                # word boundary
        (?<tail>.{1,5})?  # captured group 'tail', containing the next 1 to 5 characters if present
        /x
      )
    {
        if ( defined $+{tail} ) {
            say "Line contains word '$+{word}', followed by '$+{tail}'.";
        }
        else {
            say "Line ends with word '$+{word}'.";
        }
    }
}

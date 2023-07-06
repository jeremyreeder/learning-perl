#!/usr/bin/env perl
use utf8;
use Modern::Perl 2022;
use autodie;

open my $input_fh, '<', "resources/c07input.txt";

while ( $_ = <$input_fh> ) {
    if (
        /
        (?|
            (Fr)ed   |
            (Peb)\d+ |
            (D)ino
        )
        \s+
        (\w+)
        /x
      )
    {
        say "$1 $2";
    }
}

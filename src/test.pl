#!/usr/bin/env perl
use utf8;
use Modern::Perl 2022;
use autodie;

open INPUT, '<', "resources/c7input.txt";

while ( $_ = <INPUT> ) {
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

#!/usr/bin/env perl
use utf8;
use Modern::Perl '2022';

chomp(my @strings = <STDIN>);

# sort & say one per line
say for (sort @strings);

# sort & say all on one line
say (join ' ', sort @strings);
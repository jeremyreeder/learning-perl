#!/usr/bin/env perl
## Copyright (C) 2023 by Jeremy Reeder
use utf8;
use Modern::Perl 2022;
use autodie;

$^I = '.bak';
while ( $_ = <<>> ) {
    s/^#!.+$/$&\n## Copyright (C) 2023 by Jeremy Reeder/m;
    print;
}

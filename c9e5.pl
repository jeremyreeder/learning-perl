#!/usr/bin/env perl
## Copyright (C) 2023 by Jeremy Reeder
use utf8;
use Modern::Perl 2022;
use autodie;

my %queued;
for (@ARGV) { $queued{$_} = 1 }

while ( <<>> ) {
    if (/^## Copyright/) {
        delete $queued{$ARGV};
        last;
    }
}

@ARGV = keys %queued;
exit unless @ARGV;

$^I = '.bak';
while ( $_ = <<>> ) {
    s/^#!.+$/$&\n## Copyright (C) 2023 by Jeremy Reeder/m;
    print;
}

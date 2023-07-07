#!/usr/bin/env perl
use utf8;
use Modern::Perl 2022;

die "Usage: $0 files" unless defined $ARGV[0];
for (@ARGV) {
    say if -f -r -w -o;
}

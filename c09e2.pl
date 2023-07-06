#!/usr/bin/env perl
use utf8;
use Modern::Perl 2022;
use autodie;

my $input_filename = $ARGV[0];
unless ( defined $input_filename ) {
    die "Usage: $0 filename";
}

open my $input_fh, '>', "$input_filename.out";
while ( $_ = <<>> ) {
    s/Fred/Larry/ig;
    print $input_fh;
}

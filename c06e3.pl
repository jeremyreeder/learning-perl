#!/usr/bin/env perl
use utf8;
use Modern::Perl 2022;

my $max_key_length = 0;
for my $key ( keys %ENV ) {
    if ( length($key) > $max_key_length ) {
        $max_key_length = length($key);
    }
}

for my $key ( sort keys %ENV ) {
    printf( "%-*s  %s\n", $max_key_length, $key, $ENV{$key} );
}

#!/usr/bin/env perl
use utf8;
use Modern::Perl 2022;

$ENV{undefined} = undef;
$ENV{zero}      = 0;
$ENV{empty}     = '';

my $max_key_length = 0;
for my $key ( keys %ENV ) {
    if ( length($key) > $max_key_length ) {
        $max_key_length = length($key);
    }
}

for my $key ( sort keys %ENV ) {
    my $value = $ENV{$key} // '(undefined value)';
    printf( "%-*s  %s\n", $max_key_length, $key, $value );
}

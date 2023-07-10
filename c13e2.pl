#!/usr/bin/env perl
use utf8;
use Modern::Perl 2022;

open STDIN, '<', "$ENV{HOME}/ALTIN";

chomp( my $dir = <STDIN> );

if ( $dir =~ /^\s*$/ ) {
    chdir or die "Can't chdir to your home directory: $!";
}
else {
    chdir $dir or die "Can't chdir to '$dir': $!";
}

my @files = glob '* .*';
say for ( sort @files );

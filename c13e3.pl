#!/usr/bin/env perl
use utf8;
use Modern::Perl 2022;

open STDIN, '<', "$ENV{HOME}/ALTIN";

chomp( my $dir = <STDIN> );
$dir = $ENV{HOME} if ( $dir =~ /^\s*$/ );
opendir my $dh, $dir or die "Can't open '$dir': $!";
my @files = readdir $dh;
say for ( sort @files );

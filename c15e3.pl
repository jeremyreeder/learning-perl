#!/usr/bin/env perl
use utf8;
use Modern::Perl 2022;
use IPC::System::Simple 'capturex';

chomp( my $day = capturex 'date' );
say( $day =~ /^(Mon|Tue|Wed|Thu|Fri)/ ? "get to work" : "go play" );

#!/usr/bin/env perl
use utf8;
use Modern::Perl 2022;
use Module::CoreList;

my %modules = %{ $Module::CoreList::version{5.034} };

say for ( sort keys %modules );

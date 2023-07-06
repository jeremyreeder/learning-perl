#!/usr/bin/env perl
use utf8;
use Modern::Perl 2022;
use experimental 'signatures';

sub tac {
	my @lines = <<>>;
	print (reverse @lines);
}

tac;
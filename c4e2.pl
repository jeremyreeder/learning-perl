#!/usr/bin/env perl
use utf8;
use Modern::Perl 2022;
use experimental 'signatures';

sub total($head, @tail) {
	foreach (@tail) { $head += $_ }
	$head;
}

my $answer = total(1..1000);
say $answer;
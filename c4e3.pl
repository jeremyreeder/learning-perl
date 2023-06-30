#!/usr/bin/env perl
use utf8;
use Modern::Perl 2022;
use experimental 'signatures';

sub total($head, @tail) {
	foreach (@tail) { $head += $_ }
	$head;
}

sub average(@numbers) { (total @numbers) / scalar(@numbers) }

sub above_average(@numbers) {
	my $average = average @numbers;
	map { $_ > $average ? $_ : () } @numbers;
}

my @fred = above_average(1..10);
say "\@fred is @fred";
say "(Should be 6 7 8 9 10)";
my @barney = above_average(100, 1..10);
say "\@barney is @barney";
say "(Should be just 100)";
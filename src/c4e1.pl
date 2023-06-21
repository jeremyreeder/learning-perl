#!/usr/bin/env perl
use utf8;
use Modern::Perl 2022;
use experimental 'signatures';

sub total($head, @tail) {
	foreach (@tail) { $head += $_ }
	$head;
}

my @fred = qw[1 3 5 7 9];
my $fred_total = total @fred;
say "The total of \@fred is $fred_total.";
say "Enter some numbers on separate lines: ";
my $user_total = total(<STDIN>);
say "The total of those numbers is $user_total.";
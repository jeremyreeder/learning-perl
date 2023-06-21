#!/usr/bin/env perl
use utf8;
use Modern::Perl 2022;
use experimental 'signatures';

sub greet($guest) {
	state $prior_guest;
	print "Hi $guest! ";
	if (defined $prior_guest) {
		say "$prior_guest is also here!";
	} else {
		say "You are the first one here!";
	}
	$prior_guest = $guest;
}

while (defined (my $guest = <STDIN>)) {
	chomp($guest);
	greet $guest;
}
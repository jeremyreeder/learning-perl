#!/usr/bin/env perl
use utf8;
use Modern::Perl 2022;
use experimental 'signatures';

sub greet($guest) {
	state @prior_guests = ();
	print "Hi $guest! ";
	if (scalar @prior_guests > 0) {
		say "I've seen: @prior_guests";
	} else {
		say "You are the first one here!";
	}
	push @prior_guests, $guest;
}

while (defined (my $guest = <STDIN>)) {
	chomp($guest);
	greet $guest;
}
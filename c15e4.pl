#!/usr/bin/env perl
use utf8;
use Modern::Perl 2022;

my %sig_count;

sub hup_handler { say 'SIGHUP: ', ++$sig_count{HUP} }

sub int_handler { say 'SIGINT: ', ++$sig_count{INT} }

sub quit_handler { die 'SIGQUIT: ', ++$sig_count{QUIT} }

$SIG{HUP}  = 'hup_handler';
$SIG{INT}  = 'int_handler';
$SIG{QUIT} = 'quit_handler';

say $$;
1 while 1;

#!/usr/bin/env perl
use utf8;
use Modern::Perl 2022;

open STDOUT, '>', 'ls.out';
open STDERR, '>', 'ls.err';
chdir '/';
exec 'ls -l';

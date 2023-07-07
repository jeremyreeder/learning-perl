#!/usr/bin/env perl
use utf8;
use Modern::Perl 2022;
use experimental 'signatures';

sub permissions ($file) {
    return 0 unless -f $file;
    my %permissions = (
        r => -r _,
        w => -w _,
        x => -x _,
    );
    my @permissions =
      map { $permissions{$_} ? $_ : ' ' } ( sort keys %permissions );
    "@permissions";
}

die "Usage: $0 files" unless defined $ARGV[0];

my %permissions;
$permissions{$_} = permissions($_) for @ARGV;

my $max_filename_length = 0;
for my $filename ( keys %permissions ) {
    if ( length($filename) > $max_filename_length ) {
        $max_filename_length = length($filename);
    }
}

for my $filename (@ARGV) {
    my $permissions = $permissions{$filename};
    $permissions ||= '(no such file)';
    $permissions = '(no permissions)' if $permissions eq '     ';
    printf( "%-*s  %s\n", $max_filename_length, $filename, $permissions );
}

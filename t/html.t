#!/usr/bin/perl

use warnings;
use strict;

use Test::More;
use Test::HTML::Tidy5;
use File::Slurp;

my @files = glob( 'build/*.html' );
plan( tests => scalar @files );

for my $filename ( @files ) {
    my $text = read_file( $filename );

    html_tidy_ok( $text, $filename );
}

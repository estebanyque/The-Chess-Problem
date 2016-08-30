#!/usr/bin/perl

use Data::Dumper;

use Queen;
use Horse;
#
#my $q = new Queen();
#my $a = $q->attacks();
#print $q->row() ."\n";
my $rows = 6;
my $cols = 116;

my $h = new Horse($rows, $cols);

print $h->col();
foreach $pos ($h->attacks) {
    print $pos . "\n";
}

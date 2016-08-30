#!/usr/bin/perl

use Data::Dumper;

use Board;
use Queen;
use Horse;

# Request board size

print "Set the board (default 8x8)\n";
print "Rows (8): ";
$row = <stdin>;
print "Columns (8): ";
$col = <stdin>;

my $row = $row =~/^\d+$/ ? $row : 8;
my $col = $col =~/^\d+$/ ? $col : 8;

my $b = new Board($row, $col);

print "Board Size: ". $b->size;

# Calculate position where a Horse can attack
my $h = new Horse($b);

foreach $pos ($h->attacks) {
    print $pos . "\n";
}

# Queen used to test
#my $q = new Queen();
#my $a = $q->attacks();
#print $q->row() ."\n";


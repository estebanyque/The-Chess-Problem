#!/usr/bin/perl

use Board;
#use Queen;
use Knight;

# Request board size
my ($row, $col) = @ARGV;

unless ($row && $col) {
    print "Set the board (default 8x8)\n";
    print "Rows (8): ";
    $row = <stdin>;
    print "Columns (8): ";
    $col = <stdin>;

} else {
    print "Board set as $row x $col \n";
}

my $row = $row =~/^\d+$/ ? $row : 8;
my $col = $col =~/^\d+$/ ? $col : 8;

my $b = new Board($row, $col);

print "Board Size: ". $b->size ."\n";
print "Available Positions: ". join(" ", $b->available_positions)."\n";

my $k = new Knight($b);

#set a random position in the board
$k->set_position($b->random_position);
print "Current Position: ". $k->current_position . "\n";

$b->used_positions($k->current_position);

# Calculate position where a Knight can attack
print "Possible locations to attack from Current position: ". join (" ", $k->attacks) ."\n";

# Eliminate positions used and attacked
$b->used_positions($k->attacks);

print "Available Positions: ". join(" ", $b->available_positions) ."\n";
# The Board should be able to validate a list of positions
# @valid_attacks = $k->board->validate_positions($k->attacks);

print "\n";



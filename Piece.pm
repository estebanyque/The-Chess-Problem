package Piece;

use Data::Dumper;

use constant ROW => 8;
use constant COL => 8;
use constant SIZE => 64;

sub new() {
    my $class = shift;
    my @args = @_;
    my %default = (
        row => $args[0] || ROW,
        col => $args[1] || COL,
        size => $args[0]*$args[1] || SIZE,
    );


    return bless \%default, $class;
}

sub attacks() {
    my $self = shift;
    print "a typeless Piece cannot attack!\n";
    return undef;
}

sub row() {
    my $self = shift;
    print "Row method\n";
    return $self->{row};
}

sub col() {
    my $self = shift;
    #print "Col method\n";
    return $self->{col};
}
1;

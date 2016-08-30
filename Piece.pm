package Piece;

use Data::Dumper;

use constant ROW => 8;
use constant COL => 8;
use constant SIZE => 64;

sub new() {
    my $class = shift;
    my @args = @_;
    my %default = (
        board => $args[0],
    );


    return bless \%default, $class;
}

sub attacks() {
    my $self = shift;
    print "a typeless Piece cannot attack!\n";
    return undef;
}

sub board() {
    my $self = shift;
    return $self->{board};
}

1;

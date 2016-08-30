package Board;

use constant ROW => 8;
use constant COL => 8;

sub new() {
    my $class = shift;
    my @args = @_;
    my %default = (
        row => $args[0] || ROW,
        col => $args[1] || COL,
    );


    return bless \%default, $class;
}

sub row() {
    my $self = shift;
    return $self->{row};
}

sub col() {
    my $self = shift;
    return $self->{col};
}

sub size() {
    my $self = shift;
    my $size = $self->col * $self->row;
    return $size;
}
1;

package Board;
use Data::Dumper;
use Array::Utils qw/array_minus/;
use constant ROW => 8;
use constant COL => 8;

sub new() {
    my $class = shift;
    my @args = @_;
    my %default = (
        row => $args[0] || ROW,
        col => $args[1] || COL,
        used_positions => [],
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

sub positions() {
    my $self = shift;
#    my %positions;
#    foreach $position (1..$self->size) {
#        $positions{$position} = $positions{$position} || undef;
#    }
#    return \%positions;
    my @positions = (1 .. $self->size);
    return @positions;
}
sub available_positions() {
    my $self = shift;
    my @positions = $self->positions;
    my @used_positions = $self->used_positions;
    my @available_positions = array_minus(@positions, @used_positions); #Array::Utils

#    my %positions = $self->positions;
#    Dumper(%positions);
#    foreach $position (keys %positions) { 
#        warn $position;
#        push @available_positions, $position if !$positions{$position};
#    }
#
    return @available_positions;
}

sub used_positions() {
    my $self = shift;
    my @args = @_;

    push @{$self->{used_positions}}, @args;
    #my @used_positions = $self->{used_positions};
    #foreach $v (@{$self->{used_positions}}) { print "* $v "}
    #print "RRR\n";
    return @{$self->{used_positions}};
}

sub random_position() {
    my $self = shift;
    return int(rand($self->available_positions))
}
1;

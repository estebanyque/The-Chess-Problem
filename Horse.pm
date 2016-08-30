package Horse;

use base qw/Piece/;

sub current_position() {
    my $self = shift;
    # 13 has been choosen as part of a test 
    return 41;
}

sub attacks() {
    # Horse Limitation attacks
    # 8 posible positions

    my $self = shift;
    print "\nHorse Attacks\n";

    my $left_up = $self->current_position - $self->low_factor;
    my $upper_left = $self->current_position - $self->bigger_factor;
    my $upper_right = $self->current_position - $self->big_factor;
    my $right_up = $self->current_position - $self->lower_factor;
    my $right_down = $self->current_position + $self->low_factor;
    my $below_right = $self->current_position + $self->bigger_factor;
    my $below_left = $self->current_position + $self->big_factor;
    my $left_down = $self->current_position + $self->lower_factor;

    my @positions_to_attack = (
        $left_up,
        $upper_left,
        $upper_right,
        $right_up,
        $right_down,
        $below_right,
        $below_left,
        $left_down,
    );

    return @positions_to_attack

}

# Next you will find methods to calculate positions to let your
# horse attack from its current position

sub bigger_factor() {
    my $self = shift;
    my $col = $self->board->col();
    my $factor = ($col*2)+1;
    return $factor;
}

sub big_factor() {
    my $self = shift;
    my $col = $self->board->col();
    my $factor = ($col*2)-1;
    return $factor;
}

sub low_factor() {
    my $self = shift;
    my $col = $self->board->col();
    my $factor = $col+2;
    return $factor;
}

sub lower_factor() {
    my $self = shift;
    my $col = $self->board->col();
    my $factor = $col-2;
    return $factor;
}


1;

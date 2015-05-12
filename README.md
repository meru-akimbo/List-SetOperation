# NAME

List::SetOperation - simple set operation

# SYNOPSIS

    use Test::More;
    use List::SetOperation qw/intersection union difference/;

    my @intersection = intersection(
        [1, 2, 3, 4, 5],
        [1, 2, 3],
        [1, 3]
    );
 
    is_deeply \@intersection, [1, 3]; 


    my @union = union(
        [1, 2, 3, 4, 5],
        [1, 2],
        [3, 4, 5],
    );

    is_deeply \@union, [1, 2, 3, 4, 5];


    my @difference = difference(
        [1, 2, 3, 4, 5],
        [3, 4, 5],
    );

    is_deeply \@difference, [1, 2];

# DESCRIPTION

List::SetOperation does set operation.

# LICENSE

Copyright (C) meru\_akimbo.

This library is free software; you can redistribute it and/or modify
it under the same terms as Perl itself.

# AUTHOR

meru\_akimbo <merukatoruayu0@gmail.com>

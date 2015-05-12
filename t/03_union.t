use strict;
use Test::More 0.98;

use List::SetOperation qw/union/;

subtest 'basic' => sub {
    my @union = union(
        [1, 2, 3, 4, 5],
        [3, 4, 5],
    );

    is scalar @union, 5;
    is_deeply \@union, [1, 2, 3, 4, 5];

    @union = union(
        [1, 2],
    );

    is scalar @union, 2;
    is_deeply \@union, [1, 2];
};

subtest 'empty set' => sub {
    my @union = union(
        [1, 2, 3, 4, 5],
        [],
    );

    is scalar @union, 5;
    is_deeply \@union, [1, 2, 3, 4, 5];

    @union = union(
        [],
        []
    );

    is scalar @union, 0;
    is_deeply \@union, [];
};

done_testing;


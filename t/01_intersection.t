use strict;
use Test::More 0.98;

use List::SetOperation qw/intersection/;

subtest 'basic' => sub {
    my @intersection = intersection(
        [1, 2, 3, 4, 5],
        [2, 3, 4, 5],
        [3, 4, 5],
        [4, 5]
    );

    is scalar @intersection, 2;
    is_deeply \@intersection, [4, 5];

    @intersection = intersection(
        [1, 2, 3, 4, 5],
    );

    is scalar @intersection, 5;
    is_deeply \@intersection, [1, 2, 3, 4, 5];
};

subtest 'empty set' => sub {
    my @intersection = intersection(
        [1, 2, 3, 4, 5],
        [],
        [1, 2]
    );

    is scalar @intersection, 0;
    is_deeply \@intersection, [];

    @intersection = intersection(
        [],
    );

    is scalar @intersection, 0;
    is_deeply \@intersection, [];
};

done_testing;


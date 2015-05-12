use strict;
use Test::More 0.98;

use List::SetOperation qw/difference/;

subtest 'basic' => sub {
    my @difference = difference(
        [1, 2, 3, 4, 5],
        [3, 4, 5],
    );

    is scalar @difference, 2;
    is_deeply \@difference, [1, 2];

    @difference = difference(
        [1, 2],
        [1, 2, 3]
    );

    is scalar @difference, 0;
    is_deeply \@difference, [];
};

subtest 'empty set' => sub {
    my @difference = difference(
        [1, 2, 3, 4, 5],
        [],
    );

    is scalar @difference, 5;
    is_deeply \@difference, [1, 2, 3, 4, 5];

    @difference = difference(
        [],
        []
    );

    is scalar @difference, 0;
    is_deeply \@difference, [];
};

subtest 'more than two set' => sub {
    my @difference = difference(
        [
            [1, 2, 3, 4, 5],
            [3, 4, 5],
        ],
        [1, 3]
    );

    is scalar @difference, 3;
    is_deeply \@difference, [2, 4, 5];

    @difference = difference(
        [
          [1, 2, 3, 4, 5],
          [3, 4, 5],
        ],
        [
          [1, 3],
          [2, 4],
        ]
    );

    is scalar @difference, 1;
    is_deeply \@difference, [5];

    @difference = difference(
        [1, 2, 3, 4, 5],
        [
          [1, 3],
          [2, 4]
        ]
    );

    is scalar @difference, 1;
    is_deeply \@difference, [5];

};


done_testing;


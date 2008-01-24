#!perl -T

use strict;
use warnings;

use Test::More qw/no_plan/;

use t::Bag;

eval {
    &t::Bag::A::a;
};
like($@, qr/^t::Bag::A::a\(\): Break! at $0/);

eval {
    &t::Bag::A::b;
};
like($@, qr/^t::Bag::A::b\(\): Break! at $0/);

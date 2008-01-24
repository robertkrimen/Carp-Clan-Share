#!perl -T

use strict;
use warnings;

use Test::More qw/no_plan/;

use t::Pack;

eval {
    &t::Pack::A::a;
};
like($@, qr/^t::Pack::A::a\(\): Break! at t\/01-basic\.t/);

eval {
    &t::Pack::A::b;
};
like($@, qr/^t::Pack::A::b\(\): Break! at t\/01-basic\.t/);

#!perl

use strict;
use warnings;
use lib qw/./;

use Test::More qw/no_plan/;

use t::Pack;

eval {
    &t::Pack::A::a;
};
like($@, qr/^t::Pack::A::a\(\): Break! at $0/);

eval {
    &t::Pack::A::b;
};
like($@, qr/^t::Pack::A::b\(\): Break! at $0/);

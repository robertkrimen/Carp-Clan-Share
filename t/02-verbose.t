#!perl -T

use strict;
use warnings;

use vars qw/@Share/;

BEGIN {
    @Share = qw/verbose/;
}

use Test::More qw/no_plan/;

use t::Pack qw/verbose/;

eval {
    &t::Pack::A::a;
};
is($@, <<_END_);
Carp::Clan::__ANON__(): Break! at t/Pack/B.pm line 10
\tt::Pack::B::b() called at t/Pack/A.pm line 9
\tt::Pack::A::a() called at $0 line 17
\teval {...} called at $0 line 16
_END_

eval {
    &t::Pack::A::b;
};
is($@, <<_END_);
Carp::Clan::__ANON__(): Break! at t/Pack/A.pm line 13
\tt::Pack::A::b() called at $0 line 27
\teval {...} called at $0 line 26
_END_

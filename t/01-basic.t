#!perl -T

use strict;
use warnings;

use Test::More qw/no_plan/;

use t::Pack;

&t::Pack::A::a;

__END__
{
    package Pack;

    require Carp::Clan::Share;
    &Carp::Clan::Share::import;
}

{
    package Pack::A;

    &Pack::Clan::import;

    sub a {
        &Pack::B::b;
    }
}

{
    package Pack::B;

    use Pack::Clan;

    sub b {
        croak "Glop!";
    }
}

package main;

&Pack::A::a;

use inc::Module::Install;

name     'Carp-Clan-Share';
all_from 'lib/Carp/Clan/Share.pm';
author   'Robert Krimen <rkrimen@cpan.org>';

build_requires 'Test::More';

requires 'Carp::Clan';

auto_install;

WriteAll;


use inc::Module::Install;
name 'App-Lazyd';
all_from 'lib/App/Lazyd.pm';

# requires '';

tests 't/*.t';
author_tests 'xt';

build_requires 'Test::More';
use_test_base;
auto_include;
WriteAll;

use inc::Module::Install;
name 'App-Lazyd';
all_from 'lib/App/Lazyd.pm';

requires
    'Net::Delicious' => '1.13',
    'URI::Title' => '1.82';

scripts 'bin/lazyd';

tests 't/*.t';
author_tests 'xt';

build_requires 'Test::More';
use_test_base;
auto_include;
WriteAll;

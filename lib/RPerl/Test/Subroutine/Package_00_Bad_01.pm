# [[[ PREPROCESSOR ]]]
# <<< PARSE_ERROR: 'ERROR ECVPAPC02' >>>
# <<< PARSE_ERROR: 'Perl::Critic::Policy::Variables::ProhibitPackageVars' >>>

# [[[ HEADER ]]]
package RPerl::Test::Subroutine::Package_00_Bad_01;
use strict;
use warnings;
use RPerl::AfterFilter;
our $VERSION = 0.001_000;

# [[[ SUBROUTINES ]]]
our $empty_sub = sub {
    return 2;
};

1;                  # end of package

# [[[ PREPROCESSOR ]]]
# <<< PARSE_ERROR: 'ERROR ECVPARP00' >>>
# <<< PARSE_ERROR: 'Unexpected Token:  our' >>>

# [[[ HEADER ]]]
package RPerl::Test::Critic::Package_00_Bad_03;
use strict;
use warnings;
use RPerl::AfterFilter;
our $VERSION = 0.001_000;

# [[[ CRITICS ]]]
## no critic qw(ProhibitUselessNoCritic ProhibitMagicNumbers RequireCheckedSyscalls

# [[[ SUBROUTINES ]]]
our void $empty_sub = sub {
    return 2;
};

1;                  # end of package

# [[[ HEADER ]]]
use RPerl;
package RPerl::Test::LiteralNumber::Package_13_Good;
use strict;
use warnings;
our $VERSION = 0.001_000;

# [[[ CRITICS ]]]
## no critic qw(ProhibitUselessNoCritic ProhibitMagicNumbers RequireCheckedSyscalls)  # USER DEFAULT 1: allow numeric values & print operator

# [[[ SUBROUTINES ]]]
sub empty_sub { { my integer $RETURN_TYPE }; return -2_345_678; }

1;    # end of package

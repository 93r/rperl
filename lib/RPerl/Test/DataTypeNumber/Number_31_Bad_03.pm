# [[[ TEST : "ERROR ECVPAPL02" ]]]
# [[[ HEADER ]]]
package RPerl::Test::DataTypeNumber::Number_31_Bad_03;
use strict;
use warnings;
use RPerl;
our $VERSION = 0.001_000;

# [[[ CRITICS ]]]
## no critic qw(ProhibitUselessNoCritic ProhibitMagicNumbers RequireCheckedSyscalls)  # USER DEFAULT 1: allow numeric values and print operator

# [[[ SUBROUTINES ]]]
our void $empty_sub = sub { -0.234_567_89_; };

1;
1;    # CODE SEPARATOR: end of package


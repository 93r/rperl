# [[[ PREPROCESSOR ]]]
# <<< PARSE_ERROR: 'ERROR ECVPARP00' >>>

# [[[ HEADER ]]]
package RPerl::Test::LiteralString::Package_DoubleQuotes_15_Bad_01;
use strict;
use warnings;
use RPerl::AfterFilter;
our $VERSION = 0.001_000;

# [[[ SUBROUTINES ]]]
# DEV NOTE: the rules for sigils inside double quotes are too complicated for now
our string $empty_sub = sub {
    return "@ \@bar \$foo $ \n";
};

1;    # end of package

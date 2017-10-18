# [[[ PREPROCESSOR ]]]
# <<< GENERATE_ERROR: 'ERROR ECOGEAS' >>>
# <<< GENERATE_ERROR: 'Perl API name conflict' >>>

# [[[ HEADER ]]]
use RPerl;
package RPerl::Test::PerlAPINames::Class_03_Bad_00;
use strict;
use warnings;
our $VERSION = 0.001_000;

# [[[ OO INHERITANCE ]]]
use parent qw(RPerl::CompileUnit::Module::Class);
use RPerl::CompileUnit::Module::Class;

# [[[ CRITICS ]]]
## no critic qw(ProhibitUselessNoCritic ProhibitMagicNumbers RequireCheckedSyscalls)  # USER DEFAULT 1: allow numeric values & print operator
## no critic qw(RequireInterpolationOfMetachars)  # USER DEFAULT 2: allow single-quoted control characters & sigils

# [[[ OO PROPERTIES ]]]
our hashref $properties = {};

# [[[ SUBROUTINES & OO METHODS ]]]

sub mg_find {
    { my void $RETURN_TYPE };
    return;
}

1;    # end of class

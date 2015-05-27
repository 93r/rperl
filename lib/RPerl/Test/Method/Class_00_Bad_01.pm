# [[[ PREPROCESSOR ]]]
# <<< PARSE_ERROR: 'ERROR ECVPAPC02' >>>

# [[[ HEADER ]]]
package RPerl::Test::Method::Class_00_Bad_01;
use strict;
use warnings;
use RPerl;
our $VERSION = 0.001_000;

# [[[ OO INHERITANCE ]]]
use parent qw(RPerl::Test);
use RPerl::Test;

# [[[ OO PROPERTIES ]]]
our hashref $properties
    = { empty_property => my integer $TYPED_empty_property = 2 };

# [[[ OO METHODS & SUBROUTINES ]]]
our $empty_method = sub {
    return 2;
};

1;                  # end of class

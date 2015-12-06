# [[[ HEADER ]]]
package RPerl::DataType::String;
use strict;
use warnings;
use RPerl::AfterSubclass;
our $VERSION = 0.005_100;

# [[[ OO INHERITANCE ]]]
use parent qw(RPerl::DataType::Scalar);
use RPerl::DataType::Scalar;

# [[[ CRITICS ]]]
## no critic qw(RequireInterpolationOfMetachars)  # USER DEFAULT 2: allow single-quoted control characters & sigils
## no critic qw(Capitalization ProhibitMultiplePackages ProhibitReusedNames)  # SYSTEM DEFAULT 3: allow multiple & lower case package names

# [[[ SUB-TYPES ]]]
# a string is 0 or more letters, digits, or other ASCII (Unicode???) symbols
package  # hide from PAUSE indexing
    string;
use strict;
use warnings;
use parent qw(RPerl::DataType::String);

# [[[ PRE-DECLARED TYPES ]]]
package    # hide from PAUSE indexing
    bool;
package     # hide from PAUSE indexing
    unsigned_integer;
package     # hide from PAUSE indexing
    integer;
package    # hide from PAUSE indexing
    gmp_integer;
package    # hide from PAUSE indexing
    number;
package    # hide from PAUSE indexing
    char;

# [[[ SWITCH CONTEXT BACK TO PRIMARY PACKAGE ]]]
package RPerl::DataType::String;
use strict;
use warnings;

# [[[ INCLUDES ]]]
use POSIX qw(floor);

# [[[ EXPORTS ]]]
use Exporter 'import';
our @EXPORT = qw(string_to_bool string_to_unsigned_integer string_to_integer string_to_number string_to_char string_to_string);

# [[[ TYPE CHECKING ]]]
our void $string_CHECK = sub {
    ( my $possible_string ) = @_;
    if ( not( defined $possible_string ) ) {
        croak(
            "\nERROR EPV00, TYPE-CHECKING MISMATCH, PERLOPS_PERLTYPES:\nstring value expected but undefined/null value found,\ncroaking"
        );
    }
    if ( not( main::RPerl_SvPOKp($possible_string) ) ) {
        croak(
            "\nERROR EPV01, TYPE-CHECKING MISMATCH, PERLOPS_PERLTYPES:\nstring value expected but non-string value found,\ncroaking"
        );
    }
};
our void $string_CHECKTRACE = sub {
    ( my $possible_string, my $variable_name, my $subroutine_name ) = @_;
    if ( not( defined $possible_string ) ) {
        croak(
            "\nERROR EPV00, TYPE-CHECKING MISMATCH, PERLOPS_PERLTYPES:\nstring value expected but undefined/null value found,\nin variable $variable_name from subroutine $subroutine_name,\ncroaking"
        );
    }
    if ( not( main::RPerl_SvPOKp($possible_string) ) ) {
        croak(
            "\nERROR EPV01, TYPE-CHECKING MISMATCH, PERLOPS_PERLTYPES:\nstring value expected but non-string value found,\nin variable $variable_name from subroutine $subroutine_name,\ncroaking"
        );
    }
};

# [[[ BOOLIFY ]]]
#our bool $string_to_bool = sub {
sub string_to_bool {
    (my string $input_string) = @_;
    if (($input_string * 1) == 0) { return 0; }
    else { return 1; }
}

# [[[ UNSIGNED INTEGERIFY ]]]
#our integer $string_to_unsigned_integer = sub {
sub string_to_unsigned_integer {
    (my string $input_string) = @_;
    return (floor abs ($input_string * 1)) * 1;
}

# [[[ INTEGERIFY ]]]
#our integer $string_to_integer = sub {
sub string_to_integer {
    (my string $input_string) = @_;
    # DEV NOTE: must use double-casting via '* 1' below to avoid following errors
    # ERROR EIV01, TYPE-CHECKING MISMATCH, CPPOPS_PERLTYPES & CPPOPS_CPPTYPES:
    # integer value expected but non-integer value found,
    # in variable input_sv from subroutine XS_unpack_integer(),
#    return floor ($input_string * 1);
    return (floor ($input_string * 1)) * 1;
}

# [[[ NUMBERIFY ]]]
#our number $string_to_number = sub {
sub string_to_number {
    (my string $input_string) = @_;
    return $input_string * 1.0;
}

# [[[ CHARIFY ]]]
#our char $string_to_char = sub {
sub string_to_char {
    (my string $input_string) = @_;
    if ($input_string eq q{}) { return q{}; }
    else { return substr $input_string, 0, 1; }
}

# [[[ STRINGIFY ]]]
#our string $string_to_string = sub {
sub string_to_string {
    ( my string $input_string ) = @_;

    #    string_CHECK($input_string);
    string_CHECKTRACE( $input_string, '$input_string',
        'string_to_string()' );

#    RPerl::diag("in PERLOPS_PERLTYPES string_to_string(), received \$input_string =\n$input_string\n\n");
    $input_string =~ s/\\/\\\\/gxms; # escape all back-slash \ characters with another back-slash \ character
    $input_string =~ s/\'/\\\'/gxms; # escape all single-quote ' characters with a back-slash \ character
    $input_string = "'$input_string'";

#    RPerl::diag("in PERLOPS_PERLTYPES string_to_string(), bottom of subroutine, returning possibly-modified \$input_string =\n$input_string\n\n");

    return ($input_string);
}

# [[[ TYPE TESTING ]]]
our string $string__typetest0 = sub {
    my string $retval = 'Spice PERLOPS_PERLTYPES';

#    RPerl::diag("in PERLOPS_PERLTYPES string__typetest0(), have \$retval = '$retval'\n");
    return ($retval);
};
our string $string__typetest1 = sub {
    ( my string $lucky_string ) = @_;

    #    string_CHECK($lucky_string);
    string_CHECKTRACE( $lucky_string, '$lucky_string',
        'string__typetest1()' );

#    RPerl::diag("in PERLOPS_PERLTYPES string__typetest1(), received \$lucky_string = '$lucky_string'\n");
    return ( string_to_string($lucky_string) . ' PERLOPS_PERLTYPES' );
};

1;  # end of class

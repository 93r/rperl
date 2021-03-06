# [[[ HEADER ]]]
package RPerl::Operation::Expression::SubroutineCall::MethodCall;
use strict;
use warnings;
use RPerl::AfterSubclass;
our $VERSION = 0.003_000;

# [[[ OO INHERITANCE ]]]
use parent qw(RPerl::Operation::Expression::SubroutineCall);
use RPerl::Operation::Expression::SubroutineCall;

# [[[ CRITICS ]]]
## no critic qw(ProhibitUselessNoCritic ProhibitMagicNumbers RequireCheckedSyscalls)  # USER DEFAULT 1: allow numeric values & print operator
## no critic qw(RequireInterpolationOfMetachars)  # USER DEFAULT 2: allow single-quoted control characters & sigils

# [[[ OO PROPERTIES ]]]
our hashref $properties = {};

# [[[ SUBROUTINES & OO METHODS ]]]

sub ast_to_rperl__generate {
    { my string_hashref::method $RETURN_TYPE };
    ( my object $self, my string_hashref $modes) = @ARG;
    my string_hashref $rperl_source_group = { PMC => q{} };
    my string_hashref $rperl_source_subgroup;

#    RPerl::diag( 'in MethodCall->ast_to_rperl__generate(), received $self = ' . "\n" . RPerl::Parser::rperl_ast__dump($self) . "\n" );

    if ( ( ref $self ) ne 'Expression_153' ) {
        die RPerl::Parser::rperl_rule__replace(
            'ERROR ECOGEASRP000, CODE GENERATOR, ABSTRACT SYNTAX TO RPERL: Grammar rule '
                . ( ref $self )
                . ' found where Expression_153 expected, dying' )
            . "\n";
    }

    # Expression -> Variable OP02_METHOD_THINARROW LPAREN OPTIONAL-34 ')'
    my object $variable           = $self->{children}->[0];
    my string $thin_arrow_name    = $self->{children}->[1];
    my string $left_paren         = $self->{children}->[2];
    my object $arguments_optional = $self->{children}->[3];
    my string $right_paren        = $self->{children}->[4];

    # DEV NOTE, CORRELATION #rp045: identifiers containing underscores may be reserved by C++
    # NEED ANSWER: how to trigger ECOGEASxP187x? we must first declare a method which will trigger ECOGEASxP182x instead...
    # all methods are naturally scoped to their respective class, there are no global methods, thus ECOGEASRP187a is disabled & unused below
    my string $name = substr $thin_arrow_name, 2;
#    if (((substr $name, 0, 1) eq '_') and ($modes->{_symbol_table}->{_namespace} eq q{})) {
#        die 'ERROR ECOGEASRP187a, CODE GENERATOR, ABSTRACT SYNTAX TO RPERL:' . "\n" . 'call to global method name ' . q{'} . $name . q{()'} .
#            ' must not start with an underscore, forbidden by C++ specification as a reserved identifier, dying' . "\n";
#    }
    if ($name =~ m/^_[A-Z]/gxms) {
        die 'ERROR ECOGEASRP187b, CODE GENERATOR, ABSTRACT SYNTAX TO RPERL:' . "\n" . 'call to method name ' . q{'} . $name . q{()'} .
            ' must not start with an underscore followed by an uppercase letter, forbidden by C++ specification as a reserved identifier, dying' . "\n";
    }
    elsif ($name =~ m/__/gxms) {
        die 'ERROR ECOGEASRP187c, CODE GENERATOR, ABSTRACT SYNTAX TO RPERL:' . "\n" . 'call to method name ' . q{'} . $name . q{()'} .
            ' must not include a double-underscore, forbidden by C++ specification as a reserved identifier, dying' . "\n";
    }

    $rperl_source_subgroup = $variable->ast_to_rperl__generate($modes);
    RPerl::Generator::source_group_append( $rperl_source_group, $rperl_source_subgroup );

    $rperl_source_group->{PMC} .= $thin_arrow_name . $left_paren;

    if ( exists $arguments_optional->{children}->[0] ) {
        $rperl_source_subgroup = $arguments_optional->{children}->[0]->ast_to_rperl__generate($modes);
        RPerl::Generator::source_group_append( $rperl_source_group, $rperl_source_subgroup );
    }

    $rperl_source_group->{PMC} .= $right_paren;
    return $rperl_source_group;
}

sub ast_to_cpp__generate__CPPOPS_PERLTYPES {
    { my string_hashref::method $RETURN_TYPE };
    ( my object $self, my string_hashref $modes) = @ARG;
    my string_hashref $cpp_source_group
        = { CPP =>
            q{// <<< RP::O::E::SC::MC __DUMMY_SOURCE_CODE CPPOPS_PERLTYPES >>>}
            . "\n" };

    #...
    return $cpp_source_group;
}

sub ast_to_cpp__generate__CPPOPS_CPPTYPES {
    { my string_hashref::method $RETURN_TYPE };
    ( my object $self, my string_hashref $modes) = @ARG;
    my string_hashref $cpp_source_group = { CPP => q{} };
    my string_hashref $cpp_source_subgroup;

#    RPerl::diag( 'in MethodCall->ast_to_cpp__generate__CPPOPS_CPPTYPES(), received $self = ' . "\n" . RPerl::Parser::rperl_ast__dump($self) . "\n" );

    if ( ( ref $self ) ne 'Expression_153' ) {
        die RPerl::Parser::rperl_rule__replace(
            'ERROR ECOGEASCP000, CODE GENERATOR, ABSTRACT SYNTAX TO CPP: Grammar rule '
                . ( ref $self )
                . ' found where Expression_153 expected, dying' )
            . "\n";
    }

    # Expression -> Variable OP02_METHOD_THINARROW LPAREN OPTIONAL-34 ')'
    my object $variable           = $self->{children}->[0];
    my string $thin_arrow_name    = $self->{children}->[1];
    my string $left_paren         = $self->{children}->[2];
    my object $arguments_optional = $self->{children}->[3];
    my string $right_paren        = $self->{children}->[4];

    # DEV NOTE, CORRELATION #rp045: identifiers containing underscores may be reserved by C++
    # NEED ANSWER: how to trigger ECOGEASxP187x? we must first declare a method which will trigger ECOGEASxP182x instead...
    # all methods are naturally scoped to their respective class, there are no global methods, thus ECOGEASCP187a is disabled & unused below
    my string $name = substr $thin_arrow_name, 2;
#    if (((substr $name, 0, 1) eq '_') and ($modes->{_symbol_table}->{_namespace} eq q{})) {
#        die 'ERROR ECOGEASCP187a, CODE GENERATOR, ABSTRACT SYNTAX TO C++:' . "\n" . 'call to global method name ' . q{'} . $name . q{()'} .
#            ' must not start with an underscore, forbidden by C++ specification as a reserved identifier, dying' . "\n";
#    }
    if ($name =~ m/^_[A-Z]/gxms) {
        die 'ERROR ECOGEASCP187b, CODE GENERATOR, ABSTRACT SYNTAX TO C++:' . "\n" . 'call to method name ' . q{'} . $name . q{()'} .
            ' must not start with an underscore followed by an uppercase letter, forbidden by C++ specification as a reserved identifier, dying' . "\n";
    }
    elsif ($name =~ m/__/gxms) {
        die 'ERROR ECOGEASCP187c, CODE GENERATOR, ABSTRACT SYNTAX TO C++:' . "\n" . 'call to method name ' . q{'} . $name . q{()'} .
            ' must not include a double-underscore, forbidden by C++ specification as a reserved identifier, dying' . "\n";
    }

    $cpp_source_subgroup = $variable->ast_to_cpp__generate__CPPOPS_CPPTYPES($modes);
    RPerl::Generator::source_group_append( $cpp_source_group, $cpp_source_subgroup );

    if ($thin_arrow_name eq '->get_raw') {
        $cpp_source_group->{CPP} .= '.get_raw' . $left_paren;
    }
    elsif ($thin_arrow_name eq '->set_raw') {
        $cpp_source_group->{CPP} .= '.set_raw' . $left_paren;
    }
    else {
        $cpp_source_group->{CPP} .= $thin_arrow_name . $left_paren;
    }

    if ( exists $arguments_optional->{children}->[0] ) {
        $cpp_source_subgroup = $arguments_optional->{children}->[0]
            ->ast_to_cpp__generate__CPPOPS_CPPTYPES($modes);
        RPerl::Generator::source_group_append( $cpp_source_group,
            $cpp_source_subgroup );
    }

    $cpp_source_group->{CPP} .= $right_paren;
    return $cpp_source_group;
}

1;    # end of class

// [[[ HEADER ]]]
using std::cout;  using std::cerr;

#ifndef __CPP__INCLUDED__RPerl__Algorithm__Inefficient_cpp
#define __CPP__INCLUDED__RPerl__Algorithm__Inefficient_cpp 0.005_000

// [[[ INCLUDES ]]]
#include <RPerl/Algorithm/Inefficient.h>

# ifdef __PERL__TYPES

Purposefully_die_from_a_compile-time_error,_due_to____PERL__TYPES_being_defined.__We_need_to_define_only___CPP__TYPES_in_this_file!

# elif defined __CPP__TYPES

// [[[<<< BEGIN CPP TYPES >>>]]]
// [[[<<< BEGIN CPP TYPES >>>]]]
// [[[<<< BEGIN CPP TYPES >>>]]]

// [[[ OO METHODS & SUBROUTINES ]]]

void RPerl__Algorithm__Inefficient::inherited__Inefficient(string person) {
    RPerl::diag((const string) "in CPPOPS_CPPTYPES Inefficient->inherited__Inefficient(), have ::class($self) = " + classname(this) + (const string) " and $person = " + person + (const string) ", FLUFFY" + (const string) "\n");
}

void RPerl__Algorithm__Inefficient::inherited(string person) {
    RPerl::diag((const string) "in CPPOPS_CPPTYPES Inefficient->inherited(), have ::class($self) = " + classname(this) + (const string) " and $person = " + person + (const string) ", INCOMPATIBLE" + (const string) "\n");
}

string uninherited__Inefficient(string person) {
    RPerl::diag((const string) "in CPPOPS_CPPTYPES Inefficient::uninherited__Inefficient(), received $person = " + person + (const string) ", MESSY" + (const string) "\n");
    return (const string) "Inefficient::uninherited__Inefficient() RULES! CPPOPS_CPPTYPES";
}

// [[[<<< END CPP TYPES >>>]]]
// [[[<<< END CPP TYPES >>>]]]
// [[[<<< END CPP TYPES >>>]]]

# else

Purposefully_die_from_a_compile-time_error,_due_to_neither___PERL__TYPES_nor___CPP__TYPES_being_defined.__We_need_to_define_only___CPP__TYPES_in_this_file!

# endif

#endif

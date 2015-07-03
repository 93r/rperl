// [[[ HEADER ]]]
using std::cout;  using std::cerr;

#ifndef __CPP__INCLUDED__RPerl__Algorithm__Inefficient_h
#define __CPP__INCLUDED__RPerl__Algorithm__Inefficient_h 0.005_000

// [[[ INCLUDES & OO INHERITANCE INCLUDES ]]]
#include <RPerl.cpp>  // -> RPerl.h -> (rperltypes_mode.h; rperltypes.h; HelperFunctions.cpp)
#include <RPerl/Algorithm.cpp>

# ifdef __PERL__TYPES

Purposefully_die_from_a_compile-time_error,_due_to____PERL__TYPES_being_defined.__We_need_to_define_only___CPP__TYPES_in_this_file!

# elif defined __CPP__TYPES

// [[[<<< BEGIN CPP TYPES >>>]]]
// [[[<<< BEGIN CPP TYPES >>>]]]
// [[[<<< BEGIN CPP TYPES >>>]]]

// [[[ OO INHERITANCE ]]]
class RPerl__Algorithm__Inefficient : public RPerl__Algorithm {
public:
// [[[ OO METHODS ]]]
    void inherited__Inefficient(string person);
    void inherited(string person);

    // <<< CONSTRUCTOR & DESTRUCTOR >>>
    RPerl__Algorithm__Inefficient() {}
    ~RPerl__Algorithm__Inefficient() {}

    // <<< CLASS NAME REPORTER >>>
    virtual string myclassname() { return (const string) "RPerl::Algorithm::Inefficient"; }
};

// [[[ SUBROUTINES ]]]

string uninherited__Inefficient(string person);

// <<< OPERATIONS & DATA TYPES REPORTER >>>
integer RPerl__Algorithm__Inefficient__MODE_ID() { return 2; }  // CPPOPS_CPPTYPES is 2

// [[[<<< END CPP TYPES >>>]]]
// [[[<<< END CPP TYPES >>>]]]
// [[[<<< END CPP TYPES >>>]]]

# else

Purposefully_die_from_a_compile-time_error,_due_to_neither___PERL__TYPES_nor___CPP__TYPES_being_defined.__We_need_to_define_only___CPP__TYPES_in_this_file!

# endif

#endif

//!/usr/bin/rperl







// [[[ HEADER ]]]
#include <rperlstandalone.h>
#ifndef __CPP__INCLUDED__RPerl__Test__Subroutine__program_03_good_cpp
#define __CPP__INCLUDED__RPerl__Test__Subroutine__program_03_good_cpp 0.001_000
# ifdef __CPP__TYPES



// [[[ SUBROUTINES ]]]
integer jedi() {
    print "\"You love him, don't you?\"" << endl;
    return 6;
}

int main() {
    // [[[ OPERATIONS HEADER ]]]

// [[[ OPERATIONS ]]]
    integer episode = jedi();
    print "Return (value) of the Jedi, Episode " << episode << endl;



















    // [[[ OPERATIONS FOOTER ]]]
    return 0;
}

// [[[ FOOTER ]]]
# elif defined __PERL__TYPES
Purposefully_die_from_a_compile-time_error,_due_to____PERL__TYPES_being_defined.__We_need_to_define_only___CPP__TYPES_in_this_file!
# endif
#endif

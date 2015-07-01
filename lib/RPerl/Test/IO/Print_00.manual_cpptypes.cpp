// namespace RPerl::Test::IO::Print_00;  // NEED UPGRADE: Perl vs C++ namespace compatibility
using std::cout;
using std::cerr;
// VERSION 0.002_010
#include <rperltypes.h> // for data types and structures
#include <RPerl/HelperFunctions.cpp>  // -> HelperFunctions.h

// [[[ PROCEDURAL SUBROUTINE DECLARATION(S) ]]]
void greet_planet(integer arg0);
//void greet_planet(integer arg0, string arg1);
//void greet_planet(integer arg0, string arg1, number_arrayref arg2);

// [[[ PROCEDURAL SUBROUTINE DEFINITION(S) ]]]
void greet_planet(integer arg0) {
//void greet_planet(integer arg0, string arg1) {
//void greet_planet(integer arg0, string arg1, number_arrayref arg2) {
    // [[[ PRINT ARGUMENT(S) ]]]
    cout << "Hello, world! " << arg0 << '\n';  // single-quote newline works
    //cout << "Hello, world! " << arg0 << "\n";  // double-quote newline works
    //cout << "Hello, world! " << arg0 << " " << arg1 << '\n';
    //cout << "Hello, world! " << arg0 << " " << arg1 << " " << number_arrayref_to_string(arg2) << '\n';

    cout << "Goodbye from CPPOPS_CPPTYPES\n";
}

// [[[ OPERATIONS & DATA TYPES REPORTER ]]]
integer RPerl__Test__IO__Print_00__MODE_ID() { return 2; }

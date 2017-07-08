#!/usr/bin/perl

# [[[ PREPROCESSOR ]]]
# <<< EXECUTE_SUCCESS: 'have $foo = howdy hello ahoy' >>>
# <<< EXECUTE_SUCCESS: 'have $bar = 1' >>>

# [[[ HEADER ]]]
use RPerl;
use strict;
use warnings;
our $VERSION = 0.001_000;

# [[[ CRITICS ]]]
## no critic qw(ProhibitUselessNoCritic ProhibitMagicNumbers RequireCheckedSyscalls)  # USER DEFAULT 1: allow numeric values & print operator
## no critic qw(RequireInterpolationOfMetachars)  # USER DEFAULT 2: allow single-quoted control characters & sigils

# [[[ OPERATIONS ]]]

# BIND, LITERAL PATTERN

my string $foo  = 'howdy hello ahoy';
my integer $bar = $foo =~ m/owdy/gxms;

print 'have $foo = ', $foo, "\n";
print 'have $bar = ', $bar, "\n";

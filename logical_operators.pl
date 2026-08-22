#logical operators

use strict;
use warnings;

#logical AND >> and | &&

my @skills=("perl","python","java","tcl");

if (($skills[-1] eq "tcl") and (scalar @skills==4)){
	print "logical and operator\n";
}
if (($skills[-1] eq "tcl") && (scalar @skills==4)){
	print "c style and operator\n";
}

if (($skills[0] eq "perl") or ($skills[1] eq "java")){
	print "logical or operator\n"
}
if (($skills[0] eq "perl") || ($skills[1] eq "java")){
	print "c style or operator\n"
}
if (not(($skills[-1] eq "tcl") and (scalar @skills==6))){
	print "not logical and operator\n";
}

if (not(($skills[2] eq "perl") or ($skills[1] eq "java"))){
	print "not logical or operator\n"
}


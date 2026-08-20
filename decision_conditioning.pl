#decision conditioning statement
#if | if..else | if..elsif..else | unless | unless..else | unless..elsif..else | switch
#Ternary operator
#(condition)?<True>:<False>

use strict;
use warnings;

#if condition
my @skills =("perl","python","java","unix","shell");
if ($skills[-1] eq "shell"){
	print "shell is the last element of skills\n";
}

#if..else condition
if ($skills[-2]eq "java"){
	print "java is the last but one element of skills\n";
}
else{
	print "jave is not the last but one element of skills\n";
}

#if..elsif..else
my $num=10;
if ($num<10){
	print "num is lessthan 10\n";
}
elsif($num>10){
	print "num is greater than 10\n";
}
else{
	print "num is equal to 10\n";
}

#nested if block
if ($skills[-1] eq "shell"){
	if ($skills[0]eq "perl"){
		print "true\n";
	}
}

#unless

unless ($skills[0]eq"python"){
	print "true\n";
}

#unless..else

unless ($skills[0]eq "perl"){
	print "false\n";
}
else{
	print"true\n";
}

#unless..elsif..else
my @skills =("perl","python","java","unix","shell");

unless (scalar @skills ==5){
	print "unless true\n";
}
elsif(scalar @skills == 4){
	print "unless..elsif..true\n";
}
else{
	print"else true\n";
}

#Ternary operator

print "enter the user id:\n";
my $input =<STDIN>;
chomp($input);
(length($input)==4)?print"length is 4\n": print"length is not 4\n";




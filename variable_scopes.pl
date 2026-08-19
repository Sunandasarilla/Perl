#There are three types of variable scopes
#my,local,our

#my

#variable declared with my scope at the beginning if a script is accessible throughout the script including subroutines
my $string="Perl_scripting";
sub myfunction {
	print "Inside subroutine ",$string,"\n";
}
print "Outside subrouine ",$string,"\n";
myfunction();

#variables declared with my scopr inside a subroutine is accessible within that subroutine

sub myinside {
	my $skill ="Perl";
	print "inside subroutine: $skill\n";
}

print "outside subroutine: $skill\n";
myinside();


#local

#accessible within only a block or subroutine
sub localvariable{
	local $fruit = "apple";
	print "inside subroutine: $fruit \n";
}
print "ouside subroutine: $fruit\n";
localvariable();

#Differnece between my scope variable and local scope variable
sub localfunction {
	my $mystring ="perl";
	local $localstring = "python";
	print "inside subroutine\n";
	print "$mystring\n";
	print "$localstring\n";
	sub1();
}
sub sub1 {
	print "inside nested subroutine:\n";
	print "$mystring\n";
	print "$localstring\n";
}
localfunction();


#our
#accessible globally



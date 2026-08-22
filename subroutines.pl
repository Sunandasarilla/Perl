#subroutines

use strict;
use warnings;

my @lines =("google.com 100","yahoo.com 101","gitam.org 300","au.org 301","flipkart.com 320");
#declaring subroutine
print "elements containing com\n";
sub displaycom {
	foreach (@lines){
		if ($_=~ /com/){
			print "$_\n";
		}
	}
}

#calling subroutine
displaycom();
print "by using &\n";
&displaycom();

#passing arguments of subroutine

my $msg="org";
print "elements containing org\n";
sub displaycomlines{
	$msg=shift;
	foreach (@lines){
		if ($_=~ /$msg/){
			print "$_\n";
		}
	}
}
displaycomlines($msg);

#pass more than 1 arguments using shift

print "elemets containing com and 101\n"; 
sub displaycom101{
	my $msg=shift;
	my $code=shift;
	foreach (@lines){
		if ($_=~ /$msg.*$code/){
			print "$_\n";
		}
	}
}
displaycom101("com",101);

#passing arguments using default indexes

print "elemets containing com and 100\n"; 
sub displaycom100{
	my $msg=$_[0];
	my $code=$_[1];
	foreach (@lines){
		if ($_=~ /$msg.*$code/){
			print "$_\n";
		}
	}
}
displaycom100("com",100);

#passing arguments using @_

print "elemets containing org and 301\n"; 
sub displayorg301{
	my ($msg,$code)=@_;
	foreach (@lines){
		if ($_=~ /$msg.*$code/){
			print "$_\n";
		}
	}
}
displayorg301("org",301);

#returning values from subroutine


sub appenddomain{
	@lines=@_;

	foreach(@lines){
		if ($_ =~/com/){
			$_.=":COM";
		}
		else {
			$_.=":ORG";
		}
	}
	return(@lines);
}

@lines=appenddomain(@lines);
print "@lines\n";

sub appenddomains{
	@lines=$_[0];

	foreach(@lines){
		if ($_ =~/com/){
			$_.=":COM";
		}
		else {
			$_.=":ORG";
		}
	}
	return(@lines);
}

@lines=appenddomains(@lines);
print "@lines\n";

#how to pass a hash and return a hash


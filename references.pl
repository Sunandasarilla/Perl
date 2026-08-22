#references

use strict;
use warnings;

my $banner ="coding";
my @skills = ("perl","python","unix","java");
my %domaincodes = ("yahoo.com" => 101,"google.com" => 102,"gitam.org" => 401,"au.org" => 402,"microsoft.com"=> 103);

#creating references use \ before a variable
my $scalarref =\$banner;
print "the reference banner is $scalarref\n";

my $arrayref=\@skills;
print "the array reference is $arrayref\n";

my $domaincodesref = \%domaincodes;
print"the hash reference is  $domaincodesref\n";


#dereference use $after the variable $$,@$,%$

print "the scalar dereference is $$scalarref\n";
print "the array dereference is @$arrayref\n";
print "the hash dereference is ",%$domaincodesref,"\n";

#anonymous array and hash references


my $skillsano = ["perl","python","unix","java"];
my $domaincodesano = {"yahoo.com" => 101,"google.com" => 102,"gitam.org" => 401,"au.org" => 402,"microsoft.com"=> 103};

#printing the aonymous reference
print "anonymous array references is $skillsano\n";
print "anonymous hash referenecs is $domaincodesano\n";

#try to dereference them
print "anonymous array dereference is ",@$skillsano,"\n";
print "anonymous hash dereference is ",%$domaincodesano,"\n";

print $skillsano->[0],"\n";
print $domaincodesano->{"google.com"},"\n";

#passing references to functions

my @lines =("google.com 100","yahoo.com 101","gitam.org 300","au.org 301","flipkart.com 320");
my %skillsexperience =(Unix => 5,Perl => 5,Python => 2,Java => 3);
my %skills = ("Perl","Pythoon","Unix","Java");

sub displaylines{
	my ($ref1,$ref2,$ref3)=@_;

	print "@$ref1\n";
	print %$ref2,"\n";
	print %$ref3,"\n";
}
displaylines(\@lines,\%skillsexperience,\%skills);
#passing refernces to anonymous arrays and anonymous hashes
my $lines =["google.com 100","yahoo.com 101","gitam.org 300","au.org 301","flipkart.com 320"];
my $skillsexperience ={Unix => 5,Perl => 5,Python => 2,Java => 3};
my $skills = {"Perl","Pythoon","Unix","Java"};
sub displaylinesano{
	my ($ref1,$ref2,$ref3)=@_;

	print "@$ref1\n";
	print %$ref2,"\n";
	print %$ref3,"\n";
}
displaylinesano($lines,$skillsexperience,$skills);



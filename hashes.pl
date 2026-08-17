#Hashes represent key value pairs uses the symbol % to represent hashes

#representing Hashes

%skillsexperience =(Unix => 5,Perl => 5,Python => 2,Java => 1);
print "$skillsexperience{Perl}\n";

#Access keys values

@keys = keys%skillsexperience;

print "keys are @keys\n";

@values =values%skillsexperience;

print "values are @values\n";

#checking the existance of a key

if(exists($skillsexperience{Unix})) {
	print "Unix Exists in keys\n";

}
else{
	print "Unix does not exists in keys\n";
}
if(!exists($skillsexperience{TCL})){
		print "TCL does not exist in keys\n";
	}
	else{
		print "TCL exists in keys\n";
	}
print "size of keys are ",scalar @keys,"\n";

print "size of values are ", scalar @values,"\n";

print "size of hash is " ,scalar %skillsexperience,"\n";

$skillsexperience{"TCL"}=10;

print "$skillsexperience{TCL}\n";

delete$skillsexperience{Unix};

print "$skillsexperinece{Unix}\n";


#chomp() removes newline at the end of a scalar
#chop() removes last character from the end of a scalar

#Chomp on a scalar

print "Enter a skill:";
$input=<STDIN>;
print "$input";
chomp($input);
print "$input\n";

#Chomp on an array

@skills =("perl\n","python\n","Java\n");

print "@skills\n";
chomp(@skills);
print "@skills\n";

#Chomp on a Hash
%skillsexperiences =(perl=>"5\n",Python=>"2\n",Unix=>"6\n");
print %skillsexperiences, "\n";
chomp(%skillsexperiences);
print %skillsexperiences, "\n";



#Chop on a scalar

print "Enter the input:";
$input="fruits";
print $input,"\n";
chop($input);
print "after choping ",$input,"\n";

#chop on an array

@skills =("perl-","python-","Java-");
print "@skills\n";
chop(@skills);
print "@skills\n";

#chop on Hash

%skillsexperiences =(perl=>"50",Python=>"20",Unix=>"60");
print %skillsexperiences, "\n";
chop(%skillsexperiences);
print %skillsexperiences, "\n";


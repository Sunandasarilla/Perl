#map()  evaluates a block or expression on each element of array and returns an array or a hash
#Syntax:map{Expression}@<Arrayname>
#Ex:(1,2,3,4,5)->get square of numbers
#Result:(1,4,9,16,25)

@skills= ("perl","python","java","unix");
@skills_tech = map{$_."_Tech "}@skills;
print @skills_tech,"\n";

#convert array into hash using map function
@skills= ("perl","python","java","unix");
%skills=map{$_ =>4}@skills;
print %skills,"\n";

#remove duplicates in an array

@skills= ("perl","python","java","unix","perl","python","java");
%skills=map{$_ =>4}@skills;
%skills =keys %skills;
print %skills,"\n";

#grep() evaluates a block or expression and returns an array of having elements which are evaluated to true
#Ex:(1,2,3,4,5)->get the numbers>3
#Result:(4,5)

@skills= ("perl","python","java","unix");
@skills = grep {/^p/} @skills;
print @skills,"\n";

@skills= ("perl","python","java","unix");
@skills = grep{!/^p/}@skills;
print @skills,"\n";

#convert an array into hash by having the elements starting with p
@skills= ("perl","python","java","unix");
%skills = map{$_=>4} grep {/^p/} @skills;
print %skills,"\n";


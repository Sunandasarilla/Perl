#Arrays are represented by @ symbol


#Declaring an array
@skills = ("Perl",5,"Pythoon",10,"TCL",20);

#Accesing elements of an array

print "First element:$skills[0]\n";
print "Last element:$skills[-1]\n";
print "Last but one element:$skills[-2]\n";
print "Elements from 2 to 4 index:@skills[2..4]\n";
print "elements from 2 to last index:@skills[2..$#skills]\n";
print "Last three elements of an array:@skills[$#skills-2..$#skills]\n";

#Declaring a numbered array with range operator
@numbers=(1..10);
print "@numbers\n";

#Array Size

print "array size first way:",scalar@numbers,"\n";
print "array size second way:",$#numbers+1,"\n";

#Functions to add or delete elemets to an array

#Insering elements at the end

push (@numbers, 11);
print "add element at the end:@numbers\n";

#insert element at the start
unshift (@numbers, 0);
print "add element at the start:@numbers\n";

#remove elements at the end
pop (@numbers);
print "remove element from the end:@numbers\n";

#remove element at the start
shift (@numbers);
print "remove element from the start:@numbers\n";
#Slicing of an array
@marks = (65,75,80,85,90);
print "@marks[1..3]\n";

#splice to replace or remove the elements
#replace
splice(@marks,1,4,2,3,4,5);
print "@marks\n";

#remove 
splice(@marks,-1);
print "@marks\n";

#to give till the nth element
splice (@marks,2);
print "@marks\n";

#Split a string into an array
$languages="perl_python_java_tcl";
@languages=split("_",$languages);
print "@languages\n";

$languages=join(",",@languages);
print "$languages\n";


#Sorting an array
@fruits =("apple","mango","banana","orange");
@fruits =sort(@fruits);
print "@fruits\n";

$[ =1;
print "$fruits[1]\n";

#merging arrays
@merge=(@languages,@fruits);
print "@merge\n";


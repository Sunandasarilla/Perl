#numeric relational operators
use strict;
use warnings;

print "Enter the number n1:\n";
my $n1=<STDIN>;
print "Enter the number n2:\n";
my $n2=<STDIN>;

#Equal to

if ($n1==$n2){
	print "n1 is equal to n2\n";
}

#not equal to 
if ($n1!=$n2){
	print"n1 is not equal to n2\n";
}

#<=> checks which side of number is less,equal or greater amnd returns -1,0,1
my $result= $n1<=>$n2;
print "after comparing the result is:$result\n";


if (($n1<=>$n2)==-1){
	print "n1 is lessthan n2\n";
}
elsif (($n1<=>$n2)==0){
	print "n1 is equal to n2\n";
}
else{
	print "n1 is greaterthan n2\n";
}


#greaterthan >

if ($n1>$n2){
	print "n1 is greaterthan n2\n";
}

#lessthan <
if ($n1<$n2){
	print"n1 is lessthan n2\n";
}

#greaterthan or equal to
if ($n1>=$n2){
	print"n1 is greaterthan or equal to n2\n";
}

#lessthan or equal to 
if ($n1<=$n2){
	print "n1 is lessthan or equal to n2\n";
}


#while | do..while|until|for|foreach|while..each|nested loop

use strict;
use warnings;

#while
my @errors=("405-error","100-ok","101-ok","406-error","102-ok","503-error","104-ok");

my $i =0;
my $count=0;
#check if i is less than the size of array
#if condition checks if element at  index i matches error then the count will increase
#increase the i value 
#print the count of error 
while ($i<scalar @errors){	
	if ($errors[$i]=~/error/){
		$count++;
	}
	$i++;

}
print "from while loop:$count\n";

my $grepcount= grep {/error/} @errors;
print "from grep count:$grepcount\n";

#do..while
$i=0;
$count=0;
do{	
	if ($errors[$i]=~/error/){
		$count++;
	}
	$i++;
}while ($i<scalar @errors);
print "from do while loop:$count\n";

#until

$i=0;
$count=0;
until($i>$#errors){	
	if ($errors[$i]=~/error/){
		$count++;
	}
	$i++;
}
print "from until loop:$count\n";

#for
#the errors code with ok is incremented after the for loop
print "@errors\n";
for (my $i=0;$i<scalar@errors;$i++){
	if($errors[$i]=~/ok/){
		my($errorcode,$msg)=split("-",$errors[$i]);
		$errorcode++;
		$errors[$i]="$errorcode-$msg";
		}
	}

print "@errors\n";

#for loop using range operator

print "@errors\n";

for (0 ..$#errors){
	if($errors[$_]=~/ok/){
		my($errorcode,$msg)=split("-",$errors[$_]);
		$errorcode++;
		$errors[$i]="$errorcode-$msg";
		}
	}

print "@errors\n";

#foreach
my %skillsexp=(perl=>5,python=>4,unix=>5,shell=>6);

foreach (keys %skillsexp){
	print "$_ \n";
}

#foreach
print "by using foreach loop\n";
foreach (@errors){

	print "$_ \n";
}
#foreach using range operators
print"by using foreach range oprator\n";
foreach (0 .. $#errors){
	print "$errors[$_]\n";
}

#foreach loop using range oprators without default varibale >> include an iterator
print "without using default variable >> including an iterator\n";
foreach my $i (0 .. $#errors){
		print "$errors[$i]\n";

}


#while..each on a hash
my %colourcodes =(red => 2,blue =>3,yellow=>4,green=>5);

while (my ($key,$value)=each(%colourcodes)){
	print "$key - $value\n";
}

#nested loops
#two dimensional array

my @twodimen =([1,2,3],[4,5,6],[7,8,9]);

for (my $i=0; $i<3; $i++){
        for (my $j=0; $j<3; $j++){
		print "@twodimen [$i][$j]";
	}
	print "\n";
}


#Loop control statements
#next|last|continue|redo|goto


#next
my @colours=("red","blue","yellow","green","orange");

print "@colours\n";
foreach (@colours){
	if ($_ eq "green"){
		$_.="+";
		next;
	}
	$_.="#";
}

print "@colours\n";

#last terminates the loop immediately after the condition is true
my @colours=("red","blue","yellow","green","orange");

print "@colours\n";

foreach (@colours){
	if ($_ eq "green"){
		$_.="+";
		last;
	}
	$_.="#";
}

print "@colours\n";

#continue
my @colours=("red","blue","yellow","green","orange");

print "@colours\n";
foreach (@colours){
	next if ($_ eq "green");
}
continue {
	$_.="#";
	print "$_\n";
}
print "@colours\n";

#redo if the entered user id not start with S then redo will ask you to enter it again until the condiition is satisfied
for(my $i=0;$i<3;$i++){
	my $userid = <STDIN>;
	chomp($userid);

	if ($userid !~/^S/){
		redo;
	}
}
print "end\n";

#goto
my @versions =(2,4,5,7,1);
my $i=0;
GOTO:$versions[$i].="$versions[$i]";
print "$versions[$i]";
$i++;
if ($i< scalar @versions){
	goto GOTO;
}
print "\n";

#goto expression statement
my @versions =(2,4,5,7,1);
my $i=0;
my $str1 ="GO";
my $str2 ="TO";
my $str3 ="EXP";
GOTOEXP:$versions[$i].="$versions[$i]";
print "$versions[$i] ";
$i++;
if ($i< scalar @versions){
	goto $str1.$str2.$str3;
}
print "\n";

#goto subroutine


sub func1 {
	goto &func2;
}
sub func2{
	print "func2\n";
}
func1();


#infinite loop
for(;;){
	print "infine loop\n";
}


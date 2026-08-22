#string relational operators it is case sensitive if we compare Apple with apple the it will result Apple comes before apple

use strict;
use warnings;

print "enter the string1\n";
my $str1=<STDIN>;
print "enter the string2\n";
my $str2=<STDIN>;

#Equal eq

if ($str1 eq $str2){
	print"str1 and and str2 are equal\n";
}

#Not equal ne

if ($str1 ne $str2){
	print"str1 and str2 are not equal\n";
}

#compare cmp
my $result= $str1 cmp $str2;
print "after comparing the result is:$result\n";
if(($str1 cmp $str2)==-1){
	print"str1 comes before than str2\n";
}
elsif(($str1 cmp $str2)==0){
	print"str1 and str2 are equal\n";
}
else {
	print"str1 comes after str2\n";
}

#greaterthan gt

if ($str1 gt $str2){
	print "str1 comes after str2\n";
}

#lessthan lt

if($str1 lt $str2){
	print"str1 comes before str2\n";
}


#greaterthan or equal to ge

if ($str1 ge $str2){
	print"str1 comes after or equal to str2\n";
}

#lessthan or equal to le

if ($str1 le $str2){
	print "str1 comes before or equal to str2\n";
}


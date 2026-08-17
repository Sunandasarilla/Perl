#scalar is represented with $ symbol

$name = "Sunanda";
$num1 = <STDIN>;
$num2 = <STDIN>;
$sum = ($num1+$num2);
print "the sum of". $num1 ."and". $num2."is".$sum."\n";

#numeric scalar
$numscalar =100;

#string scalar
$strscalar ="Perl";

#vstring
$vstring = v85.78.73.88;

print $numscalar."-".$strscalar."-".$vstring."\n";

#to print multiple times 
print "$name\n" x 5,"\n";

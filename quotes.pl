#double quotes [" "] has special meaning but single quotes [' '] are not single quotes

print "here inside double quotes we are using ' ' there is no difference\n";

#lets assign values in double quotes and single quotes and see the difference
$language0 = "english\n";
$language1 ="$language0\n";
$language2 = 'language1\n';
print "language0 is  $language0\n language1 is $language1\n language2 is $language2\n";

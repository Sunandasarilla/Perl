#array of arrays

use strict;
use warnings;
use Data::Dumper;
my @array1 = ( ["yahoo","amazon"],["perl","python","unix"],["gitam.edu","au.edu","gayatri.edu"],[1,3,5,7,9]);

my $array2 =[[1,2,3,4],["apple","orange","banana"],[20,30,40,50]];

print @{$array1[1]},"\n";
print @{$array1[0]}[1],"\n";
print @{$array2->[1]},"\n";
print @{$array2->[0]}[1],"\n";

#array of array using arrays
my @lines = ("yahoo.com","google.com","gitam.edu","au.edu","cbit.edu","avanthi.edu",10..15);

my @aoa;

foreach(@lines){
	if ($_=~/com/){
	push(@{$aoa[0]},$_);
}
elsif($_=~/edu/){
	push(@{$aoa[1]},$_);
}
else {
	push(@{$aoa[2]},$_);
}
}

print "@aoa\n";

print Dumper(\@aoa),"\n";

#array of array using reference

my $aoa;

foreach(@lines){
	if ($_=~/com/){
	push(@{$aoa->[0]},$_);
}
elsif($_=~/edu/){
	push(@{$aoa->[1]},$_);
}
else {
	push(@{$aoa->[2]},$_);
}
}

print Dumper(\$aoa),"\n";


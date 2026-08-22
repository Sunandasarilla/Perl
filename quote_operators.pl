#quote like operators
use strict;
use warnings;
#single quotes
my $single=q{perl};
my $single1=q{$single};
print "using single quotes\n";
print "$single\n";
print "$single1\n";


#double quotes
my $double = qq{python};
my $double1=qq{$double};
print "using double quotes\n";
print "$double\n";
print "$double1\n";

#bactics
my @skills=qw{perl python 2 3 4};
print "@skills\n";





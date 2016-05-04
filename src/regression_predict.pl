#!/project/michal/apps/perl/bin/perl

use strict;
use warnings ;
use File::Slurp;



 my @matrix = read_file($ARGV[0]);
 foreach my $a1 (@matrix)
   {

   $a1 =~ s/^\s+|\s+$//g;
   my @split1 = split (/\s+/,$a1);
   my $y_actual=$split1[0];
   my $x1=substr($split1[2],2,8)*1;
   my $x2=substr($split1[3],2,8)*1;
   my $x3=substr($split1[4],2,8)*1;
   my $x4=substr($split1[5],2,8)*1;
   my $y_predicted = ( 957.5815  - $x1*40.4366 - $x2*282.7437 + $x3*33.9166 + $x4*94.5994 ); #regular 

   print "$y_predicted\n";
   }


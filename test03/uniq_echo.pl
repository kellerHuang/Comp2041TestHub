#!/usr/bin/perl -w
for $i(@ARGV){
   if(!defined $hash{$i}){
      push @array, $i;
   }
   $hash{$i} = 1;
}
print "@array\n";

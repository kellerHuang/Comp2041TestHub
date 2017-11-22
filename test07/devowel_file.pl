#!/usr/bin/perl -w

$file = $ARGV[0];

open($f,$file) or die;

for $i(<$f>){
   $i =~ s/[aeiouAEIOU]//g;
   push @a,$i;
}

open($f,'>',$file);

for $i(@a){
   print $f $i;
}

#!/usr/bin/perl -w

for $i(<STDIN>){
   @array = ($i =~ /(\S+)/g);
   @array = sort @array;
   print "@array\n";
}

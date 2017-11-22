#!/usr/bin/perl

for $i(<STDIN>){
   $i =~ s/[0-9]//g;
   print $i
}

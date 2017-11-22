#!/usr/bin/perl -w

for $i(@ARGV){
   push @list,$i;
}

@list = sort {$a <=> $b} @list;

$req = (scalar @list)/2;

print "$list[$req]\n";

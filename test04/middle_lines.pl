#!/usr/bin/perl -w

open ($FILE,$ARGV[0]) or die;

for $i(<$FILE>){
   push @lines,$i;
}
if(scalar @lines == 0){
}elsif(scalar @lines%2 == 0){
   print @lines[scalar @lines/2-1];
   print @lines[scalar @lines/2];
}else{
   print @lines[(scalar@lines-1)/2];
}


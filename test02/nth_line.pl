#!/usr/bin/perl

$n = @ARGV[0];
$text = @ARGV[1];

open(F,$text) or die;

for $i(<F>){
   $x += 1;
   if($n == $x){
      print $i;
   }
}

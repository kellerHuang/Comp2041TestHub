#!/usr/bin/perl

$snap = @ARGV[0];
$printed = 0;
while($i = <STDIN>){
   $hash{"$i"}++;
   if($hash{$i} == $snap && $printed == 0){
      print "Snap: $i";
      $printed++;
   }
}

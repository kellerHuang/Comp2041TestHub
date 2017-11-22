#!/usr/bin/perl -w
$amount = $ARGV[0];
$totLines = 0;
$uniq = 0;
while ($i = <STDIN>){
   $i = lc $i;
   @array = ($i =~ /(\S+)/g);
   $i = "@array";
   if(!defined $hash{$i}){
      $uniq += 1;
   }
   $hash{$i} = 1;
   $totLines += 1;
   if($uniq == $amount){
      last;
   }
}

if($uniq == $amount){
   print "$uniq distinct lines seen after $totLines lines read.\n";
}else{
   print "End of input reached after $totLines lines read - $amount different lines not seen.\n";
}

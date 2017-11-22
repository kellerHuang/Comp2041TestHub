#!/usr/bin/perl -w

for $i(<STDIN>){
   @res = ($i =~ /(-?\d*\.\d+)/g);
   @new = ($i =~ /[^.\d](-?\d+)/g);
   push @res,@new;
   @new = ($i =~ /^(-?\d+)/g);
   push @res,@new;
   #print "@res\n";
   if(scalar @res == 0){
      next;
   }
   if(!defined $globalHigh){
      $globalHigh = $res[0];
      $globalHighLine{$i} = 1;
      push @highLineArray,$i;
   }
   for $m(@res){
      if($globalHigh < $m){ #new high
         undef %globalHighLine;
         undef @highLineArray;
         push @highLineArray, $i;
         $globalHighLine{$i} = 1;
         $globalHigh = $m;
      }elsif($globalHigh == $m){ #equal high
         if(!defined $globalHighLine{$i}){
            push @highLineArray, $i;
         }
         $globalHighLine{$i} = 1;
      }#else do nothing
   }
}

print @highLineArray;

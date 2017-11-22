#!/usr/bin/perl

for $i(<STDIN>){
    @nums = ($i =~ /([0-9]+)/g);
    push @allnums, @nums;
}

for $n(@allnums){
    $breachCount = 0;
    for $m(@allnums){
#        print "$n and $m\n";
        if($n/$m == int($n/$m)){
            $breachCount++;
        }
    }
    if($breachCount == 1){
        push @print, $n;
    }
}

@print = sort {$a <=> $b} @print;

print "@print\n";

#!/usr/bin/perl -w

$print = 0;

for $i(<STDIN>){
	undef @arr;
        for $m(split / /,$i){
	   	undef %hash;
		chomp $m;
		$ori = $m;
		$m = lc $m;
		for $x(split //,$m){
#	                print "($x)";
			$hash{$x}++;
	        }
		$print = 1;
		$equivalue = 0;
		for $y(keys %hash){
			if($equivalue == 0){
				$equivalue = $hash{$y};
			}
			if($hash{$y} != $equivalue){
				$print = 0;
				last;
			}
		}
		if($print == 1){
			push @arr,$ori;
		}
	}
        print "@arr\n";
}

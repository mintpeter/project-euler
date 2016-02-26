

# 
# The sum of the primes below 10 is 2 + 3 + 5 + 7 = 17.
# 
# Find the sum of all the primes below two million.
# 


sub is_prime (Int @primes, Int $x) {
    if $x == @primes.any {
        return True;
    }
    my Int $root = $x.sqrt.ceiling;
    for @primes -> $p {
        if $p > $root {
            return True;
        }
        if $x % $p == 0 {
            return False;
        }
    }
}

sub find_primes_below (Int $n) {
    my Int @primes = [2, 3, 5, 7, 11, 13];

    loop (my $i = @primes.max + 2; $i < $n; $i += 2) {
        if is_prime(@primes, $i) {
            say "Found prime $i";
            @primes.push($i);
        }
    }

    @primes
}

sub find_sum_of_primes_below_perl (Int $n) {
    my $sum = 2;

    loop (my $i = 3; $i < $n; $i += 2) {
        if $i.is-prime {
            say "Found prime $i";
            $sum += $i;
        }
    }
    
    $sum
}

#say find_sum_of_primes_below_perl(2 * 10**6);
say [+] find_primes_below(2 * 10**6);

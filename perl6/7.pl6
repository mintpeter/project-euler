

# 
# By listing the first six prime numbers: 2, 3, 5, 7, 11, and 13, we can see
# that the 6th prime is 13.
# 
# What is the 10 001st prime number?
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

sub find_nth_prime (Int $n) {
    my Int @primes = 2, 3, 5, 7, 11, 13;
    loop (my Int $i = @primes.max + 2; @primes.elems <= $n ; $i += 2) {
        if is_prime(@primes, $i) {
            @primes.push($i);
            say @primes.elems ~ ": " ~ $i;
        }
    }
    @primes[$n];
}

sub find_nth_prime_perl (Int $n) {
    my Int $j = 1;
    loop (my Int $i = 3; $j < $n; $i += 2) {
        if $i.is-prime {
            $j++;
            say "$j: $i";
        }
    }
    $i - 2;
}

say find_nth_prime_perl(1000);

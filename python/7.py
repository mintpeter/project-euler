## By listing the first six prime numbers: 2, 3, 5, 7, 11, and 13, we can see that the 6th prime is 13.
##
## What is the 10 001st prime number?

from math import sqrt
import time

def main():
    primes = [2]
    i = 3
    j = 1
    
    while j < 10001:
        rt = sqrt(i)
        for prime in primes:
            if prime <= rt:
                if i % prime == 0:
                    i += 2
                    break
            else:
                primes.append(i)
                i += 2
                j += 1
                break
    
    return primes[j - 1]

start_time = time.time()
print main(), time.time() - start_time
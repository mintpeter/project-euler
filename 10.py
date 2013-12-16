## The sum of the primes below 10 is 2 + 3 + 5 + 7 = 17.
##
## Find the sum of all the primes below two million.

import time
from math import sqrt

def main():
    rng = range(2, 2000000)
    for n in rng:
        rt = sqrt(n)
        for m in rng:
            if m <= rt:
                if n % m == 0:
                    rng.remove(n)
                    break
            else:
                break
    
    acc = 0
    for n in rng:
        acc += n
    
    return acc
start_time = time.time()

print main(), time.time() - start_time
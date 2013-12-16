## The sum of the primes below 10 is 2 + 3 + 5 + 7 = 17.
##
## Find the sum of all the primes below two million.

import time
from math import sqrt, ceil

#def main():
#    rng = range(2, 2 * (10 ** 6))
#    primes = range(2, 2 * (10 ** 6))
#    for n in rng:
#        rt = sqrt(n)
#        for m in primes:
#            if m <= rt:
#                if n % m == 0:
#                    if n in primes:
#                        primes.remove(n)
#            else: break
#    acc = 0
#    for n in rng:
#        acc += n
#    
#    return rng[:10]

def main():
    rng = range(3, 2 * (10 ** 6))
    primes = [2]
    
    for n in rng:
        rt = sqrt(n)
        for m in primes:
            if m <= rt:
                if n % m == 0:
                    break
            else:
                primes.append(m)
    
    acc = 0
    
    for n in primes:
        acc += n
    
    return acc


start_time = time.time()

print main(), time.time() - start_time
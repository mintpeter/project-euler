## The sum of the squares of the first ten natural numbers is,
## 1^2 + 2^2 + ... + 10^2 = 385
##
## The square of the sum of the first ten natural numbers is,
## (1 + 2 + ... + 10)^2 = 55^2 = 3025
##
## Hence the difference between the sum of the squares of the first ten natural
## numbers and the square of the sum is 3025 - 385 = 2640.
##
## Find the difference between the sum of the squares of the first one hundred
## natural numbers and the square of the sum.

import time

rng = range(1, 101)

def sum_squares():
    acc = 0
    for n in rng:
        acc += n ** 2
    
    return acc

def square_sum():
    acc = 0
    for n in rng:
        acc += n
    
    return acc ** 2

def main():
    return sum_squares() - square_sum()

start_time = time.time()

print main(), time.time() - start_time
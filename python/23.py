"""A perfect number is a number for which the sum of its proper divisors is
exactly equal to the number. For example, the sum of the proper divisors of 28
would be 1 + 2 + 4 + 7 + 14 = 28, which means that 28 is a perfect number.

A number n is called deficient if the sum of its proper divisors is less than n
and it is called abundant if this sum exceeds n.

As 12 is the smallest abundant number, 1 + 2 + 3 + 4 + 6 = 16, the smallest
number that can be written as the sum of two abundant numbers is 24. By
mathematical analysis, it can be shown that all integers greater than 28123 can
be written as the sum of two abundant numbers. However, this upper limit cannot
be reduced any further by analysis even though it is known that the greatest
number that cannot be expressed as the sum of two abundant numbers is less than
this limit.

Find the sum of all the positive integers which cannot be written as the sum of
two abundant numbers."""

from collections import defaultdict
import functools
import itertools as it
from math import ceil, floor, sqrt
import time

divisor_dict = {1: {1}}

def find_divisors(n):
    if n in divisor_dict:
        return divisor_dict[n]

    divisors = {1}
    for i in range(ceil(sqrt(n)), 1, -1):
        if n % i == 0 and i < n:
            divisors |= find_divisors(i)
            divisors.add(i)
            divisors.add(n // i)
    divisor_dict[n] = divisors
    return divisors

@functools.lru_cache(maxsize=1024*4)
def is_abundant(n):
    divisors = find_divisors(n)
    abundant = sum(divisors) > n
    if abundant:
        print('{} is abundant. Its divisors are {}.'.format(n, divisors))
        return True
    else:
        return False

def main():
    abundants = filter(is_abundant, range(1, 28124))

    print('Computing sums.')
    sums = map(sum, it.combinations_with_replacement(abundants, 2))
    sums = set(filter(lambda x: x <= 28123, sums))
    print('{} sums calculated between [{}, {}].'.format(len(sums), min(sums), max(sums)))
    answers = set(range(1, 28124)) - sums
    print('{} answers found.'.format(len(answers)))
    print(answers)

    return sum(answers)

if __name__ == '__main__':
    start = time.time()
    print(main())
    print('time: {}'.format(time.time() - start))

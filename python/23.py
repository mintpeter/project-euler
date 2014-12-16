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

import time
from math import ceil, sqrt

divisor_dict = {1: {1}}

def find_divisors(n):
    divisors = {1}

    for i in range(ceil(sqrt(n)), 1, -1):
        if i not in divisors and n % i == 0:
            divisors.add(i)
            divisors.add(n//i)
            if i in divisor_dict:
                divisors | divisor_dict[i]
    divisor_dict[n] = divisors
    return divisors

def is_abundant(n):
    divisors = find_divisors(n)
    return sum(divisors) > n

def is_sum_abundants(n, abundants):
    """Given a number and a list of abundant numbers, return True if the number
    is the sum of two abundant numbers.
    """
    for abundant in abundants:
        if abundant < n:
            for other in abundants:
                if other >= abundant and abundant + other == n:
                    return True
        else:
            return False

def main():
    abundants = [12]    
    
    answers = []
    
    for i in range(1, 28123):
        if i not in abundants and is_abundant(i):
            abundants.append(i)

        if is_sum_abundants(i, abundants):
            answers.append(i)
            
    return sum(answers)

if __name__ == '__main__':
    start = time.time()
    print(main())
    print('time: {}'.format(time.time() - start))

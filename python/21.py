"""Let d(n) be defined as the sum of proper divisors of n (numbers less than n
which divide evenly into n).
If d(a) = b and d(b) = a, where a ≠ b, then a and b are an amicable pair and
each of a and b are called amicable numbers.

For example, the proper divisors of 220 are 1, 2, 4, 5, 10, 11, 20, 22, 44, 55
and 110; therefore d(220) = 284. The proper divisors of 284 are 1, 2, 4, 71 and
142; so d(284) = 220.

Evaluate the sum of all the amicable numbers under 10000."""

import time
from math import sqrt, ceil

def find_divisors(n, divisor_dict):
    divisors = {1}

    for i in range(ceil(sqrt(n)), 1, -1):
        if i not in divisors and n % i == 0:
            divisors.add(i)
            divisors.add(n//i)
            if i in divisor_dict:
                divisors | divisor_dict[i]
    divisor_dict[n] = divisors
    return divisors

def main():
    divisor_dict = {1: {1}}
    sum_dict = {1: 1}

    total = 0
    for i in range(2, 10000):
        divisors = find_divisors(i, divisor_dict)
        #divisor_dict[i] = divisors
        sum_divisors = sum(divisors)
        sum_dict[i] = sum_divisors
        
        if sum_divisors in sum_dict\
                and sum_dict[sum_divisors] == i\
                and i != sum_divisors:
            total += i
            total += sum_divisors

    return total

if __name__ == '__main__':
    start_time = time.time()
    print(main())
    print('time: {}'.format(time.time() - start_time))

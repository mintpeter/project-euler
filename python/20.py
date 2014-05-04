# vim: set fileencoding=utf-8 :

# PROBLEM 20
#
# n! means n × (n − 1) × ... × 3 × 2 × 1
# 
# For example, 10! = 10 × 9 × ... × 3 × 2 × 1 = 3628800,
# and the sum of the digits in the number 10! is
# 3 + 6 + 2 + 8 + 8 + 0 + 0 = 27.
#
# Find the sum of the digits in the number 100!

from math import factorial, log10, ceil

def main(n):
    num_digits = log10(n)
    if num_digits % 1 == 0:
        num_digits = int(num_digits)
    else:
        num_digits = int(ceil(num_digits))
    digits = [(n % 10 ** (i + 1)) // (10 ** i) for i in range(1, num_digits)]
    return sum(digits)

if __name__ == '__main__':
    print(main(factorial(100)))

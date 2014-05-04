# vim: set fileencoding=utf-8 :

# PROBLEM 15
# 
# Starting in the top left corner of a 2×2 grid, and only being able to move to
# the right and down, there are exactly 6 routes to the bottom right corner.
#
# How many such routes are there through a 20×20 grid?

from math import factorial

def ncr(n, r):
    return factorial(n) / (factorial(n - r) * factorial(r))

def main(n):
    return ncr(n * 2, n)

if __name__ == '__main__':
    print(main(20))

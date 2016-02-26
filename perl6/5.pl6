
# 
# 2520 is the smallest number that can be divided by each of the numbers from 1
# to 10 without any remainder.
#
# What is the smallest positive number that is evenly divisible by all of the
# numbers from 1 to 20?
#
#
# 1: 1
# 2: 1
# 3: 1
# 4: 2, 1
# 5: 1
# 6: 3, 2, 1
# 7: 1
# 8: 4, 2, 1
# 9: 3, 1
# 10: 5, 2, 1
# 11: 1
# 12: 6, 4, 3, 2, 1
# 13: 1
# 14: 7, 2, 1
# 15: 5, 3, 1
# 16: 8, 4, 2, 1
# 17: 1
# 18: 9, 6, 3, 2, 1
# 19: 1
# 20: 10, 5, 4, 2, 1
#
# all: 6, 7, 8, 9, 10, 11, 13, 17, 19

my @divisors = [7, 16, 9, 5, 11, 13, 17, 19];

say [*] @divisors;

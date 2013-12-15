# encoding: utf-8
## A palindromic number reads the same both ways. The largest palindrome made from the product of two 2-digit numbers is 9009 = 91 × 99.
##
## Find the largest palindrome made from the product of two 3-digit numbers.

from math import floor

def is_palindrome(n):
	n = str(n)
	if n[0] == n[5] and n[1] == n[4] and n[2] == n[3]:
		return True
	else:
		return False

def main():
	i = 999
	j = 999
	
	gt = 0
	
	while i > 316:
		j = 999
		
		while j > 316:
			m = i * j
			if is_palindrome(m) and m > gt:
				gt = m
			else:
				j -= 1
		i -= 1
	
	return gt

print main()
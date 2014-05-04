## If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6 and 9. The sum of these multiples is 23.
##
## Find the sum of all the multiples of 3 or 5 below 1000.

def multiple3or5(n):
	if ((n % 3) == 0) or ((n % 5) == 0):
		return True
	else:
		return False

def main():
	i = 1
	acc = 0
	
	while i < 1000:
		if multiple3or5(i):
			acc += i
			i += 1
		else:
			i += 1
	
	return acc

print main()
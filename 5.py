## 2520 is the smallest number that can be divided by each of the numbers from 1 to 10 without any remainder.
##
## What is the smallest positive number that is evenly divisible by all of the numbers from 1 to 20?

def main():
	rng = range(11, 21)
	i = 9699690
	
	while True:
		j = i
		for n in rng:
			if (j % n) == 0:
				n /= j
				if n == 20:
					return i
			else:
				break
		i += 19

print main()
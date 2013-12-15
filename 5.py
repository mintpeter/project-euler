## 2520 is the smallest number that can be divided by each of the numbers from 1 to 10 without any remainder.
##
## What is the smallest positive number that is evenly divisible by all of the numbers from 1 to 20?

import time

def main():
	rng = range(11, 21)
	i = 9699690
	
	while True:
		for n in rng:
			if (i % n) == 0:
				if n == 20:
					return i
			else:
				break
		i += 19
start_time = time.time()
print main(), time.time() - start_time
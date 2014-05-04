## 2520 is the smallest number that can be divided by each of the numbers from 1 to 10 without any remainder.
##
## What is the smallest positive number that is evenly divisible by all of the numbers from 1 to 20?

import time

def main():
	rng = range(11, 21)
	i = 193993800
	
	while True:
		j = i
		for n in rng:
			if i % n:
				break
			elif n == 20:
				return i
		i += 20
start_time = time.time()
print main(), time.time() - start_time
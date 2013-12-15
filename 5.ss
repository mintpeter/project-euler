#|
2520 is the smallest number that can be divided by each of the numbers from 1 to 10 without any remainder.

What is the smallest positive number that is evenly divisible by all of the numbers from 1 to 20?
|#

(define problem5
	(lambda ()
		(let ([range (map (lambda (n) (+ n 11)) (iota 10))])
			(let loop ([i 9699690])
				(let loop1 ([range range])
					(if (null? range) i
						(if (zero? (remainder i (car range))) (loop1 (cdr range))
							(loop (+ i 19)))))))))
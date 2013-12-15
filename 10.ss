#|
The sum of the primes below 10 is 2 + 3 + 5 + 7 = 17.

Find the sum of all the primes below two million.
|#

(define problem10
	(lambda ()
		(let loop ([j 3] [primes (list 2)] [acc 0])
			(if (< j 2000000)
				(let loop1 ([primes1 primes] [rt (sqrt j)])
					(if (null? primes1)
						(begin
							(display j) (newline)
							(loop (+ j 2) (cons j primes) (+ j acc)))
						(if (> (car primes1) rt)
							(loop1 (cdr primes1) rt)
							(if (zero? (remainder j (car primes1)))
								(loop (+ j 2) primes acc)
								(loop1 (cdr primes1) rt)))))
				acc))))
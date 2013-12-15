;; 4.b. Given a positive integer, base, a nonnegative integer, n, and a positive
;;      integer representing clock size, clck, return the result of raising base
;;      to the nth power in a clock of size clck.
(define exp-clock
  (lambda (base n clck)
    (define help
      (lambda (n acc)
        (if (= 1 n) acc
            (let ([prod (* base acc)])
              (if (> prod clck)
                  (help
                    (sub1 n)
                    (remainder prod clck))
                  (help
                    (sub1 n)
                    prod))))))
      (help n base)))

;; 4.c. Given two numbers, base and n (base < n), tests whether n is likely to
;;      be prime or not.
(define fermat-test
  (lambda (base n)
    (= base (exp-clock base n n))))

(define problem7
	(lambda ()
		(let loop ([i 2] [j 3] [primes (list 2 1)])
			(if (< i 10001)
				(let loop1 ([primes1 primes] [rt (sqrt j)])
					(if (null? primes1)
						(loop (add1 i) (+ j 2) (cons j primes))
						(if (and
								(< (car primes1) rt)
								(zero? (remainder j (car primes1))))
							(loop1 (cdr primes1) rt)
							(loop i (+ j 2) primes))))
				j))))

(define problem7*
	(lambda ()
		(let loop ([i 2] [j 3] [primes (list 2 1)])
			(if (= i 10001)
				j
				(if (and
						(fermat-test 2 j)
						(fermat-test 3 j))
					(loop (add1 i) (+ j 2) (cons j primes))
					(loop i (+ j 2) primes))))))
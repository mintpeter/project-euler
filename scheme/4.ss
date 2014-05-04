#|
A palindromic number reads the same both ways. The largest palindrome made from the product of two 2-digit numbers is 9009 = 91 × 99.

Find the largest palindrome made from the product of two 3-digit numbers.
|#

(define number-palindrome?
	(lambda (n)
		(let ([len (inexact->exact (ceiling (log n 10)))] [str (number->string n)])
			(let loop ([i 0] [j (sub1 len)])
				(if (< i (if (even? len) (/ len 2) (/ j 2)))
					(if (equal? (string-ref str i) (string-ref str j))
						(loop (add1 i) (sub1 j))
						#f)
					#t)))))

(define problem4
  (lambda ()
    (car (sort > (let iloop ([i 999])
                   (if (> i 100)
                       (let jloop ([j 999])
                         (if (> j 100)
                             (let ([n (* i j)])
                               (if (number-palindrome? n)
                                   (cons n (jloop (sub1 j)))
                                   (jloop (sub1 j))))
                             (iloop (sub1 i))))
                       '()))))))
#|
A palindromic number reads the same both ways. The largest palindrome made from the product of two 2-digit numbers is 9009 = 91 × 99.

Find the largest palindrome made from the product of two 3-digit numbers.
|#

(define (string-reverse str)
  (let ([len (string-length str)] [str1 (make-string (string-length str))])
    (let loop ([i 0] [j (sub1 len)])
      (if (< i len)
          (begin
            (string-set! str1 j (string-ref str i))
            (string-set! str1 i (string-ref str j))
            (loop (add1 i) (sub1 j)))
          str1))))

(define number-palindrome?
	(lambda (n)
		(let ([len (ceiling (log n 10))] [str (number->string n)])
			(let loop ([i 0] [j (sub1 len)])
				(if (< i (if (even? len) (/ len 2) (/ j 2)))
					(if (equal? (string-ref str i) (string-ref str j))
						#f)
					#t)))))
(define problem4
  (lambda ()
    (car (sort > (let iloop ([i 999])
                   (if (> i 100)
                       (let jloop ([j 999])
                         (if (> j 100)
                             (let ([str (number->string (* i j))])
                               (if (equal? str (string-reverse str))
                                   (cons (string->number str) (jloop (sub1 j)))
                                   (jloop (sub1 j))))
                             (iloop (sub1 i))))
                       '()))))))
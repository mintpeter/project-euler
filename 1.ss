#|
If we list all the natural numbers below 10 that are multiples of 3 or 5, we get
3, 5, 6 and 9. The sum of these multiples is 23.

Find the sum of all the multiples of 3 or 5 below 1000.
|#

(define problem1
  (lambda (n)
    (if (< n 1) 0
        (if (or (zero? (remainder n 3)) (zero? (remainder n 5)))
            (+ n (sum-multiples-3-5 (sub1 n)))
            (sum-multiples-3-5 (sub1 n))))))
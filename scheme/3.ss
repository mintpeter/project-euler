#|
The prime factors of 13195 are 5, 7, 13 and 29.

What is the largest prime factor of the number 600851475143 ?
|#

(define problem3
  (lambda ()
    (let loop ([x 3] [y 600851475143])
      (if (< (* x x) y)
          (if (zero? (remainder y x))
              (loop x (/ y x))
              (loop (+ x 2) y))
          y))))
#|
The prime factors of 13195 are 5, 7, 13 and 29.

What is the largest prime factor of the number 600851475143 ?
|#

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

(define fermat-test
  (lambda (base n)
    (= base (exp-clock base n n))))

(define problem3
  (lambda ()
    (let loop ([i (floor (sqrt 600851275143))])
      (if (and
               (> i 0)
               (fermat-test 2 i)
               (zero? (remainder 600851275143 i)))
               i
          (loop (- i 2))))))
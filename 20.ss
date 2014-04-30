;; PROBLEM 20
;;
;; n! means n × (n − 1) × ... × 3 × 2 × 1
;; 
;; For example, 10! = 10 × 9 × ... × 3 × 2 × 1 = 3628800,
;; and the sum of the digits in the number 10! is
;; 3 + 6 + 2 + 8 + 8 + 0 + 0 = 27.
;;
;; Find the sum of the digits in the number 100!

(define (factorial n)
    (if (> n 1)
        (* n (factorial (sub1 n)))
        1))

(define (sum-digits n)
    (let ([s (number->string n)])
        (let loop ([i 0])
            (if (< i (string-length s))
                (+ (string->number (substring s i (add1 i))) (loop (add1 i)))
                0))))

(define (problem20)
    (sum-digits (factorial 100)))

(display (problem20))
(newline)

;; PROBLEM 16
;; 
;; 2^15 = 32768 and the sum of its digits is 3 + 2 + 7 + 6 + 8 = 26.
;;
;; What is the sum of the digits of the number 2^1000?

(define sum-digits
    (lambda (s)
        (if (zero? (string-length s))
            0
            (+
                (sum-digits (substring s 1 (string-length s)))
                (string->number (substring s 0 1))))))

(define problem16
    (lambda (n)
        (sum-digits (number->string n))))

(display (problem16 (expt 2 1000)))
(newline)


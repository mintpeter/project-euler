;; PROBLEM 14
;; 
;; The following iterative sequence is defined for the set of positive
;; integers:
;; 
;; n → n/2 (n is even)
;; n → 3n + 1 (n is odd)
;; 
;; Using the rule above and starting with 13, we generate the following
;; sequence:
;; 13 → 40 → 20 → 10 → 5 → 16 → 8 → 4 → 2 → 1
;; 
;; It can be seen that this sequence (starting at 13 and finishing at 1)
;; contains 10 terms. Although it has not been proved yet (Collatz Problem),
;; it is thought that all starting numbers finish at 1.
;; 
;; Which starting number, under one million, produces the longest chain?
;; 
;; NOTE: Once the chain starts the terms are allowed to go above one million.


(define problem14
    (lambda ()
        (let loop1 ([i 1000000] [maxi 0] [topj 0])
            (if (> i 1)
                (let loop2 ([j i] [ls '()])
                    (cond
                        [(= j 1)
                            (let ([len (length ls)])
                                (if (> len maxi)
                                    (loop1 (sub1 i) len (list-ref ls (sub1 len)))
                                    (loop1 (sub1 i) maxi topj)))]
                        [(= (remainder j 2) 0) (loop2 (/ j 2) (cons j ls))]
                        [else (loop2 (+ (* 3 j) 1) (cons j ls))]))
                topj))))
                    

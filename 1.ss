(define sum-multiples-3-5
  (lambda ((sub1 n))
    (if (< n 1) 0
        (if (or (zero? (remainder n 3)) (zero? (remainder n 5)))
            (+ n (sum-multiples-3-5 (sub1 n)))
            (sum-multiples-3-5 (sub1 n))))))
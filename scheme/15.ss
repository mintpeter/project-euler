;; PROBLEM 15
;; 
;; Starting in the top left corner of a 2×2 grid, and only being able to move to
;; the right and down, there are exactly 6 routes to the bottom right corner.
;;
;; How many such routes are there through a 20×20 grid?


(define problem15
    (lambda ()
        (let loop1 ([x 0] [y 0])
            (if (and (< x 20) (< y 20))
                (let loop2 ([right (loop1 (add1 x) y)] [down (loop1 x (add1 y))])
                    (+ right down))
                1))))

(define factorial
    (lambda (n)
        (if (zero? n)
            1
            (* n (factorial (sub1 n))))))


(define ncr
    (lambda (n r)
        (/
            (factorial n)
            (* (factorial (- n r)) (factorial r)))))

(define problem15
    (lambda (n)
        (ncr (* n 2) n)))

(display (problem15 20))
(newline)

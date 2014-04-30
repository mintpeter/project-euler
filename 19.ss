;; PROBLEM 19
;;
;; You are given the following information, but you may prefer to do some
;; research for yourself.
;;
;; 1 Jan 1900 was a Monday.
;;
;; Thirty days has September,
;; April, June and November.
;; All the rest have thirty-one,
;; Saving February alone,
;; Which has twenty-eight, rain or shine.
;; And on leap years, twenty-nine.
;;
;; A leap year occurs on any year evenly divisible by 4, but not on a century
;; unless it is divisible by 400.
;;
;; How many Sundays fell on the first of the month during the twentieth century
;; (1 Jan 1901 to 31 Dec 2000)?

;; Gauss' Algorithm
;; y = year
;; m = (month - 2) % 12
;; d = day of month
;; w = weekday (0 -> Sunday ... 6 -> Saturday)
;; w = (d + (2.6 * m - 0.2) + 5 * (y % 4) + 4 * (y % 100) + 6 * (y % 400)) % 7

(define (get-m month)
    (let ([m (remainder (- month 2) 12)])
        (if (< m 0)
            (* m -1)
            m)))

(trace-define (day-of-week y m d)
    (let ([m (get-m m)])
        (remainder
            (floor (+
                    (- (* 2.6 m) 0.2)
                    (* 5 (remainder y 4))
                    (* 4 (remainder y 100))
                    (* 6 (remainder y 400))))
            7)))

(define (problem19)
    (trace-let year ([y 1901])
        (if (<= y 2000)
            (trace-let month ([m 0])
                (if (< m 12)
                    (if (zero? (day-of-week y m 1))
                        (add1 (month (add1 m)))
                        (month (add1 m)))
                    (year (add1 y))))
            0)))

(display (problem19))
(newline)

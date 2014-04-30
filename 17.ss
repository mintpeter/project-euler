;; PROBLEM 17
;;
;; If the numbers 1 to 5 are written out in words: one, two, three, four, five,
;; then there are 3 + 3 + 5 + 4 + 4 = 19 letters used in total.
;;
;; If all the numbers from 1 to 1000 (one thousand) inclusive were written out 
;; in words, how many letters would be used?
;;
;; NOTE: Do not count spaces or hyphens. For example, 342 (three hundred and 
;; forty-two) contains 23 letters and 115 (one hundred and fifteen) contains 20
;; letters. The use of "and" when writing out numbers is in compliance with
;; British usage.

(define ones
    '#(""
       "one"
       "two"
       "three"
       "four"
       "five"
       "six"
       "seven"
       "eight"
       "nine"
       "ten"
       "eleven"
       "twelve"
       "thirteen"
       "fourteen"
       "fifteen"
       "sixteen"
       "seventeen"
       "eighteen"
       "nineteen"))

(define tens
    '#(""
       ""
       "twenty"
       "thirty"
       "forty"
       "fifty"
       "sixty"
       "seventy"
       "eighty"
       "ninety"))

(define hundreds
    '#(""
       "onehundred"
       "twohundred"
       "threehundred"
       "fourhundred"
       "fivehundred"
       "sixhundred"
       "sevenhundred"
       "eighthundred"
       "ninehundred"))

(define number->word
    (lambda (n)
        (cond
            [(< n 20) (vector-ref ones n)]
            [(< n 100) (string-append
                            (vector-ref tens (floor (/ n 10)))
                            (number->word (remainder n 10)))]
            [(and 
                (zero? (remainder n 100))
                (not (= n 1000))) (vector-ref hundreds (/ n 100))]
            [(< n 1000) (string-append
                            (vector-ref hundreds (floor (/ n 100)))
                            "and"
                            (number->word (remainder n 100)))]
            [else "onethousand"])))

(define problem17
    (lambda (n)
        (let loop ([n n] [str ""])
            (if (> n 0)
                (begin
                    (display (number->word n))
                    (newline)
                    (loop
                        (sub1 n)
                        (string-append
                            (number->word n)
                            str)))
                (string-length str)))))

(display (problem17 1000))
(newline)

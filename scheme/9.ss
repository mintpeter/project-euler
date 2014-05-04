#|
A Pythagorean triplet is a set of three natural numbers, a < b < c, for which,
a^2 + b^2 = c^2

For example, 3^2 + 4^2 = 9 + 16 = 25 = 5^2.

There exists exactly one Pythagorean triplet for which a + b + c = 1000.
Find the product abc.
|#

(define pythagorean-triplet?
	(lambda (a b c)
		(= (+ (* a a) (* b b)) (* c c))))

(define problem9
	(lambda ()
		(let aloop ([a 100])
			(if (< a 997)
				(let bloop ([b 100])
					(if (< b 998)
						(let cloop ([c 100])
							(if (< c 999)
								(if (and
										(= (+ a b c) 1000)
										(pythagorean-triplet? a b c))
									(* a b c)
									(cloop (add1 c)))
								(bloop (add1 b))))
						(aloop (add1 a))))
				#f))))
								
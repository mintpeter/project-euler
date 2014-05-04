## A Pythagorean triplet is a set of three natural numbers, a < b < c, for which,
## a^2 + b^2 = c^2
##
## For example, 3^2 + 4^2 = 9 + 16 = 25 = 5^2.
##
## There exists exactly one Pythagorean triplet for which a + b + c = 1000.
## Find the product abc.

def pythagorean_triplet(a, b, c):
    if (a ** 2) + (b ** 2) == (c ** 2):
        return True
    else:
        return False

def main():
    a = 100
    while a < 997:
        b = 100
        while b < 998:
            c = 100
            while c < 999:
                if a + b + c == 1000:
                    if pythagorean_triplet(a, b, c):
                        return a * b * c
                c += 1
            b += 1
        a += 1

print main()
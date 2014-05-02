# PROBLEM 16
# 
# 2^15 = 32768 and the sum of its digits is 3 + 2 + 7 + 6 + 8 = 26.
#
# What is the sum of the digits of the number 2^1000?

def sum_digits(digits):
    digits = [int(n) for n in digits]
    return sum(digits)

def main(n):
    return sum_digits(str(n))

if __name__ == '__main__':
    print(main(2 ** 1000))

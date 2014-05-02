# PROBLEM 17
#
# If the numbers 1 to 5 are written out in words: one, two, three, four, five,
# then there are 3 + 3 + 5 + 4 + 4 = 19 letters used in total.
#
# If all the numbers from 1 to 1000 (one thousand) inclusive were written out 
# in words, how many letters would be used?
#
# NOTE: Do not count spaces or hyphens. For example, 342 (three hundred and 
# forty-two) contains 23 letters and 115 (one hundred and fifteen) contains 20
# letters. The use of "and" when writing out numbers is in compliance with
# British usage.

from math import floor

ones = ["",
        "one",
        "two",
        "three",
        "four",
        "five",
        "six",
        "seven",
        "eight",
        "nine",
        "ten",
        "eleven",
        "twelve",
        "thirteen",
        "fourteen",
        "fifteen",
        "sixteen",
        "seventeen",
        "eighteen",
        "nineteen"]

tens = ["",
        "",
        "twenty",
        "thirty",
        "forty",
        "fifty",
        "sixty",
        "seventy",
        "eighty",
        "ninety"]

def number_to_words(n):
    if n < 20:
        return ones[n]
    elif n < 100:
        ten = tens[int(floor(n / 10))]
        return ten + number_to_words(n % 10)
    elif n < 1000:
        return number_to_words(int(floor(n / 100))) + number_to_words(n % 100)
    else:
        return "onethousand"

def main():
    total = 0
    for n in range(1, 1001):
        total += len(number_to_words(n))
    return total

if __name__ == '__main__':
    print(main())

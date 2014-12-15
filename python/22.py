"""Using names.txt (right click and 'Save Link/Target As...'), a 46K text file
containing over five-thousand first names, begin by sorting it into alphabetical
order. Then working out the alphabetical value for each name, multiply this
value by its alphabetical position in the list to obtain a name score.

For example, when the list is sorted into alphabetical order, COLIN, which is
worth 3 + 15 + 12 + 9 + 14 = 53, is the 938th name in the list. So, COLIN would
obtain a score of 938 × 53 = 49714.

What is the total of all the name scores in the file?"""

import time
import string
import csv

letters = string.ascii_uppercase

def score(name, i):
    """Takes a name (string) and an index (zero-indexed).

    Returns a score, which is described above.
    """
    
    letter_sum = sum(map(lambda l: letters.index(l) + 1, name))
    return letter_sum * (i + 1)

def main():
    with open('22.txt', 'r') as f:
        names = sorted(next(csv.reader(f, quotechar='\"')))

    return sum(list(score(name, names.index(name)) for name in names))

if __name__ == '__main__':
    start = time.time()
    print(main())
    print('time: {}'.format(time.time() - start))

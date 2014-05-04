# PROBLEM 19
#
# You are given the following information, but you may prefer to do some
# research for yourself.
#
# 1 Jan 1900 was a Monday.
#
# Thirty days has September,
# April, June and November.
# All the rest have thirty-one,
# Saving February alone,
# Which has twenty-eight, rain or shine.
# And on leap years, twenty-nine.
#
# A leap year occurs on any year evenly divisible by 4, but not on a century
# unless it is divisible by 400.
#
# How many Sundays fell on the first of the month during the twentieth century
# (1 Jan 1901 to 31 Dec 2000)?

# Gauss' Algorithm
# y = year
# m = (month - 2) % 12
# d = day of month
# w = weekday (0 -> Sunday ... 6 -> Saturday)
# w = (d + (2.6 * m - 0.2) + 5 * (y % 4) + 4 * (y % 100) + 6 * (y % 400)) % 7

from datetime import datetime

def main():
    count = 0
    for year in range(1901, 2001):
        for month in range(1, 13):
            date = datetime(year, month, 1)
            if date.weekday() == 6:
                count += 1
    return count

if __name__ == '__main__':
    print(main())


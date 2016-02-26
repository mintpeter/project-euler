
# 
# The prime factors of 13195 are 5, 7, 13 and 29.
#
# What is the largest prime factor of the number 600851475143 ?
#

my $bignum = 600851475143;
my $i = 600851475143.sqrt.round;
until $i == 0 or ($bignum % $i == 0 and $i.is-prime) {
    $i--;
}

say $i;

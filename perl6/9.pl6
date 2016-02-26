

#
# A Pythagorean triplet is a set of three natural numbers, a < b < c, for which,
# a**2 + b**2 = c**2
# 
# For example, 3**2 + 4**2 = 9 + 16 = 25 = 5**2.
# 
# There exists exactly one Pythagorean triplet for which a + b + c = 1000.
# Find the product abc.
#

loop (my $a = 333; $a > 0; $a--) {
    loop (my $b = $a + 1; 2 * $b < 1000 - $a; $b++) {
        my $c = 1000 - $a - $b;
        if $a**2 + $b**2 == $c**2 {
            say ($a, $b, $c);
            say $a * $b * $c;
        }
    }
}

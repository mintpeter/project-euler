

# 
# The four adjacent digits in the 1000-digit number that have the greatest
# product are 9 × 9 × 8 × 9 = 5832.
# 
# Find the thirteen adjacent digits in the 1000-digit number that have the
# greatest product. What is the value of this product?
# 

my $big_number = (slurp "8.txt").lines.join('');

my $max = 0;

loop (my $i = 0; $i <= $big_number.chars - 13; $i++) {
    my $s = $big_number.substr($i..^($i+13));
    my Int @digits;
    @digits = $s.split("", :skip-empty).map({ Int($_) });
    if 0 == @digits.any {
        next;
    }
    my $new_max = max(([*] @digits), $max); # the reduce expression has to be
                                            # enclosed in parentheses. that was
                                            # kind of a gotcha.
    if $max != $new_max {
        $max = $new_max;
        say "max = $new_max";
    }
}

say $max;

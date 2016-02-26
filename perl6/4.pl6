

# 
# A palindromic number reads the same both ways. The largest palindrome made
# from the product of two 2-digit numbers is 9009 = 91 × 99.
#
# Find the largest palindrome made from the product of two 3-digit numbers.
# 

my Set $products;

loop (my $i = 999; $i >= 100; $i--) {
    loop (my $j = 999; $j >= 999 - $i; $j--) {
        my $product = $i * $j;
        if $product == $product.flip {
            say $product;
            return;
            #$products ∪= $product;
        }
    }
}

say $products.keys.max;

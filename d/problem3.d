/* 
   The prime factors of 13195 are 5, 7, 13 and 29.

   What is the largest prime factor of the number 600851475143 ?
 */

import std.stdio;
import std.math;

void main() {
    long x = 600851475143;

    for (long i = 3; i < round(sqrt(float(x)));) {
        if (x % i == 0)
            x /= i;
        else
            i += 2;
    }

    writeln(x);
}

\ Returns the nth Fibonacci number
\ : fib ( n -- n )
\  1 1 rot begin
\    dup 0> while
\      rot rot swap over
\      + rot 1-
\  repeat
\  drop nip
\ ;

: even? ( n -- f )
  1 and 1 xor
;

: fib ( n n -- n )
  \ n-1 n
  swap
  \ n n-1
  over
  \ n n-1 n
  +
  \ n n+1
;

\ Arguments are the last two fibs.
: sum_even_fibs ( n n -- n )
  0 1
  \ n-1 n sum i
  begin
    2swap dup 40 < while
      dup even? if
	\ sum i n-1 n
	2swap
	\ n-1 n sum i
	swap
	\ n-1 n i sum
	rot
	\ n-1 i sum n
	dup
	\ n-1 i sum n n
	rot
	\ n-1 i n n sum
	+
	\ n-1 i n sum'
	rot
	\ n-1 n sum' i
      else
	2swap
      endif
      1+
      \ n-1 n sum' i'
      2swap
      \ sum' i' n-1 n
      fib
      \ sum' i' n n+1
      2swap
      \ n n+1 sum' i'
  repeat
  2drop drop
;

1 2 sum_even_fibs .


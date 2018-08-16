: mult_3_5 ( n -- f )
  dup
  3 mod
  0 = if drop true
  else
    5 mod
    0 = if true
    else false
    endif
  endif
;

: sum_mults_3_5 ( n -- n )
  1- 0 swap begin
    dup 0> while
      dup mult_3_5 if
	tuck + swap endif
      1-
  repeat
  drop ;

1000 sum_mults_3_5
.
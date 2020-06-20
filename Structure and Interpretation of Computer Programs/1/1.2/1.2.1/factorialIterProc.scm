MIT/GNU Scheme running under GNU/Linux
Type `^C' (control-C) followed by `H' to obtain information about interrupts.

Copyright (C) 2011 Massachusetts Institute of Technology
This is free software; see the source for copying conditions. There is NO
warranty; not even for MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.

Image saved on Tuesday Februarye 6, 2018 at 6:31:25 PM
  Release 9.1.1     || Microcode 15.3 || Runtime 15.7 || SF 4.41
  LIAR/x86-64 4.118 || Edwin 3.116

2 error> (define (factorial n)
(define (factorial-iter counter product)
(if (> counter n) product (factorial-iter (+ counter 1) (* product counter))))
(factorial-iter 1 1))

;Value: factorial

2 error> (factorial 5)

;Value: 120

2 error> 
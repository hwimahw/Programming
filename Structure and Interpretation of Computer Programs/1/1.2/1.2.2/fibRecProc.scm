MIT/GNU Scheme running under GNU/Linux
Type `^C' (control-C) followed by `H' to obtain information about interrupts.

Copyright (C) 2011 Massachusetts Institute of Technology
This is free software; see the source for copying conditions. There is NO
warranty; not even for MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.

Image saved on Tuesday February 6, 2018 at 6:31:25 PM
  Release 9.1.1     || Microcode 15.3 || Runtime 15.7 || SF 4.41
  LIAR/x86-64 4.118 || Edwin 3.116

1 ]=> (define (fib n)
(cond ((= n 0) 0)
((= n 1) 1)
(else (+ (fib (- n 1)) (fib (- n 2))))))

;Value: fib

1 ]=> (fib 13)

;Value: 233

1 ]=> 
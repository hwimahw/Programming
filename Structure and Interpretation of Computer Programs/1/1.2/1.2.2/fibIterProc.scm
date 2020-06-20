MIT/GNU Scheme running under GNU/Linux
Type `^C' (control-C) followed by `H' to obtain information about interrupts.

Copyright (C) 2011 Massachusetts Institute of Technology
This is free software; see the source for copying conditions. There is
NO warranty; not even for MERCHANTABILITY or FITNESS FOR A PARTICULAR
PURPOSE.

Image saved on Tuesday February 6, 2018 at 6:31:25 PM
  Release 9.1.1     || Microcode 15.3 || Runtime 15.7 || SF 4.41
  LIAR/x86-64 4.118 || Edwin 3.116

1 ]=> (define (fib-iter a b n iter)
(if (= iter n) a (fib-iter (+ a b) a)))

;Value: fib-iter

1 ]=> (fib-iter 1 0 3 1)

;The procedure #[compound-procedure 13 fib-iter] has been called with 2 arguments; it requires exactly 4 arguments.
;To continue, call RESTART with an option number:
; (RESTART 1) => Return to read-eval-print level 1.

2 error> (define (fib-iter a b n iter)
(if (= iter n) a (fib-iter (+ a b) a n (+ iter 1)))))

;Value: fib-iter

2 error> (fib-iter 1 0 3 1)

;Value: 2

2 error> (fib-iter 1 0 5 1)

;Value: 5

2 error> (fib-iter 1 0 12 1)

;Value: 144

2 error> (define (fib n)
(fib-iter 1 0 n 1))

;Value: fib

2 error> (fib 12)

;Value: 144

2 error> (fib 13)

;Value: 233

2 error> 
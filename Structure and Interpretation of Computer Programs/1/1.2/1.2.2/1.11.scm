MIT/GNU Scheme running under GNU/Linux
Type `^C' (control-C) followed by `H' to obtain information about interrupts.

Copyright (C) 2011 Massachusetts Institute of Technology
This is free software; see the source for copying conditions. There is NO
warranty; not even for MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.

Image saved on Tuesday February 6, 2018 at 6:31:25 PM
  Release 9.1.1     || Microcode 15.3 || Runtime 15.7 || SF 4.41
  LIAR/x86-64 4.118 || Edwin 3.116

1 ]=> (+ 4 4)

;Value: 8

1 ]=> (define (func n)
(if (< n 3) n
(+ (func (- n 1)) (func (- n 2)) (func (- n 3)))))

;Value: func

1 ]=> (func 4)

;Value: 6

1 ]=> (define (func n)
(define (func-iter a b c count)
(if (= count 0) c
(func-iter b c (+ a b c) (- count 1))))
(if (< n 3) n
(func-iter 0 1 2 (- n 2))))

;Value: func

1 ]=> (func 4)

;Value: 6

1 ]=> (func 5)

;Value: 11

1 ]=> 

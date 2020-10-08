MIT/GNU Scheme running under GNU/Linux
Type `^C' (control-C) followed by `H' to obtain information about interrupts.

Copyright (C) 2011 Massachusetts Institute of Technology
This is free software; see the source for copying conditions. There is NO warranty; not even for MERCHANTABILITY or FITNESS FOR A PARTICULAR
PURPOSE.

Image saved on Tuesday February 6, 2018 at 6:31:25 PM
  Release 9.1.1 || Microcode 15.3 || Runtime 15.7 || SF 4.41 || LIAR/x86-64 4.118 || Edwin 3.116

1 ]=> (define eps 0.001)

;Value: eps

1 ]=> (define (abs x) (cond ((> x 0) x) ((< x 0) (- x)) ((= x 0) 0)))

;Value: abs

2 error> (define (success x a) (if (< (abs (- (* x x) a)) eps) x (success (* 0.5 (+ x (/ a x))) a)))

;Value: success

3 error> (define (sqrt-iter x a) (if (< (abs (- (* x x) a)) eps) x (sqrt-iter (* 0.5 (+ x (/ a x))) a)))

;Value: success

3 error> (success 1 2)

;Value: 1.4142156862745097

3 error> (define (sqrt-iter x a) (if (< (abs (- (* x x) a)) eps) x (sqrt-iter (* 0.5 (+ x (/ a x))) a)))

;Value: sqrt-iter

3 error> (sqrt-iter 1 2)

;Value: 1.4142156862745097

3 error> (define (sqrt a) (sqrt-iter 1 a))

;Value: sqrt

3 error> (sqrt 2)

;Value: 1.4142156862745097

3 error> 
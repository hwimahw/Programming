MIT/GNU Scheme running under GNU/Linux
Type `^C' (control-C) followed by `H' to obtain information about interrupts.

Copyright (C) 2011 Massachusetts Institute of Technology
This is free software; see the source for copying conditions. There is NO
warranty; not even for MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.

Image saved on Tuesday February 6, 2018 at 6:31:25 PM
  Release 9.1.1     || Microcode 15.3 || Runtime 15.7 || SF 4.41
  LIAR/x86-64 4.118 || Edwin 3.116

1 ]=> (define (bin-coeff n k)
(if (= n 0) (/ (factorial n) (* (factorial k) (factorial (- n k))))
(+ (bin-coeff (- n 1) (- k 1)) (bin-coeff (- n 1) k))))
;Value: bin-coeff

1 ]=> (bin-coeff 2 2)

;Aborting!: maximum recursion depth exceeded

1 ]=> (define (factorial n) (if (< n 2) 1 (* n (factorial (- n 1)))))

;Value: factorial

1 ]=> (/ (factorial n) (* (factorial k) (factorial (- n k))))

;Unbound variable: k
;To continue, call RESTART with an option number:
; (RESTART 3) => Specify a value to use instead of k.
; (RESTART 2) => Define k to a given value.
; (RESTART 1) => Return to read-eval-print level 1.

2 error> (define (bin-coeff n k)
(if (= n 0) (/ (factorial n) (* (factorial k) (factorial (- n k))))
(+ (bin-coeff (- n 1) (- k 1)) (bin-coeff (- n 1) k))))

;Value: bin-coeff

2 error> (bin-coeff 2 2)

;Aborting!: maximum recursion depth exceeded

2 error> (factorial 5)

;Value: 120

2 error> (define (bin-coeff n k)
(if (= n 0) (/ (factorial n) (* (factorial k) (factorial (- n k))))
(+ (bin-coeff (- n 1) (- k 1)) (bin-coeff (- n 1) k))))

;Value: bin-coeff

2 error> (define (bin-coeff n k)
(if (= n 0) (/ (factorial n) (* (factorial k) (factorial (- n k))))
(+ (bin-coeff (- n 1) (- k 1)) (bin-coeff (- n 1) k))))

;Value: bin-coeff

2 error> (bin-coeff 2 2)

;Aborting!: maximum recursion depth exceeded

2 error> (bin-coeff 1 1)

;Aborting!: maximum recursion depth exceeded

2 error> (factorial 0)

;Aborting!: maximum recursion depth exceeded

2 error> (define (factorial n) (if (< n 2) 1 (* n (factorial (- n 1)))))

;Value: factorial

2 error> (factorial 0)

;Value: 1

2 error> (define (bin-coeff n k)
(if (= n 0) (/ (factorial n) (* (factorial k) (factorial (- n k))))
(+ (bin-coeff (- n 1) (- k 1)) (bin-coeff (- n 1) k))))

;Value: bin-coeff

2 error> (bin-coeff 2 2)

;Value: 7/2

2 error> (bin-coeff 2 1)

;Value: 4

2 error> (bin-coeff 1 1)

;Value: 2

2 error> (bin-coeff 1 0)

;Value: 2

2 error> (bin-coeff 2 1)

;Value: 4

2 error> 
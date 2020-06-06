MIT/GNU Scheme running under GNU/Linux
Type `^C' (control-C) followed by `H' to obtain information about interrupts.

Copyright (C) 2011 Massachusetts Institute of Technology
This is free software; see the source for copying conditions. There is NO
warranty; not even for MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.

Image saved on Tuesday February 6, 2018 at 6:31:25 PM
  Release 9.1.1     || Microcode 15.3 || Runtime 15.7 || SF 4.41
  LIAR/x86-64 4.118 || Edwin 3.116

1 ]=> (define (max x y) (if (> x y) x y))

;Value: max


 (define (min x y) (if (< x y) x y))

;Value: min


7 error> (define (middle x y z) (- (+ x y z) (max (max x y) z) (min (min x y) z)))

;Value: middle

7 error> (middle 2 1 5)

;Value: 2

7 error> (middle 10 10 10)

;Value: 10

7 error> (middle 10 11 12)

;Value: 11

7 error> (define (sum x y z) (+ (* (max (max x y) z) (max (max x y) z)) (* (middle x y z) (middle x y z))))

;Value: sum

7 error> (sum 3 1 2)

;Value: 11

7 error> (max (max x y) z)

;Unbound variable: z
;To continue, call RESTART with an option number:
; (RESTART 9) => Specify a value to use instead of z.
; (RESTART 8) => Define z to a given value.
; (RESTART 7) => Return to read-eval-print level 7.
; (RESTART 6) => Return to read-eval-print level 6.
; (RESTART 5) => Return to read-eval-print level 5.
; (RESTART 4) => Return to read-eval-print level 4.
; (RESTART 3) => Return to read-eval-print level 3.
; (RESTART 2) => Return to read-eval-print level 2.
; (RESTART 1) => Return to read-eval-print level 1.

8 error> (max (max 3 1) 2)

;Value: 3

8 error> (define (sum x y z) (+ (* (max (max x y) z) (max (max x y) z)) (* (middle x y z) (middle x y z))))

;Value: sum

8 error> (+ (* (max (max x y) z) (max (max x y) z)) (* (middle x y z) (middle x y z)))

;Unbound variable: z
;To continue, call RESTART with an option number:
; (RESTART 10) => Specify a value to use instead of z.
; (RESTART 9) => Define z to a given value.
; (RESTART 8) => Return to read-eval-print level 8.
; (RESTART 7) => Return to read-eval-print level 7.
; (RESTART 6) => Return to read-eval-print level 6.
; (RESTART 5) => Return to read-eval-print level 5.
; (RESTART 4) => Return to read-eval-print level 4.
; (RESTART 3) => Return to read-eval-print level 3.
; (RESTART 2) => Return to read-eval-print level 2.
; (RESTART 1) => Return to read-eval-print level 1.

9 error> (define (sum x y z) (+ (* (max (max x y) z) (max (max x y) z)) (* (middle x y z) (middle x y z))))

;Value: sum

9 error> (sum 3 1 2)

;Value: 13

9 error> (sum 1 2 3)

;Value: 13


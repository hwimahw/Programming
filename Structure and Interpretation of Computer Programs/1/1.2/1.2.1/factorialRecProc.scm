MIT/GNU Scheme running under GNU/Linux
Type `^C' (control-C) followed by `H' to obtain information about interrupts.

Copyright (C) 2011 Massachusetts Institute of Technology
This is free software; see the source for copying conditions. There is NO
warranty; not even for MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.

Image saved on Tuesday February 6, 2018 at 6:31:25 PM
  Release 9.1.1     || Microcode 15.3 || Runtime 15.7 || SF 4.41
  LIAR/x86-64 4.118 || Edwin 3.116


1 ]=> (define (factorial n) (if (= n 1) 1 (* n (factorial (- n 1)))))

;Value: factorial

1 ]=> (factorial 5)

;Value: 120

1 ]=> (factorial 6)

;Value: 720

1 ]=> 
#;#;
#<<END
TR info: dead-else.rkt 14:1 display -- hidden parameter
TR opt: dead-else.rkt 16:13 (+ 4.0 5.0) -- dead else branch
TR opt: dead-else.rkt 15:13 (+ 2.0 3.0) -- binary float
TR info: dead-else.rkt 17:1 display -- hidden parameter
TR opt: dead-else.rkt 19:13 (+ 4.0 5.0) -- dead else branch
TR opt: dead-else.rkt 18:13 (+ 2.0 3.0) -- binary float

END
"5.05.0"
#lang typed/scheme
#:optimize
(display (if (number? 3)
             (+ 2.0 3.0)
             (+ 4.0 5.0)))
(display (if #t
             (+ 2.0 3.0)
             (+ 4.0 5.0)))
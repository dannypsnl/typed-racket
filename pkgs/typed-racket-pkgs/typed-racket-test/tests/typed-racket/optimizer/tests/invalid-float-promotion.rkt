#;#;
#<<END
TR missed opt: invalid-float-promotion.rkt 17:0 (/ (ann 1 Integer) 2.0) -- all args float-arg-expr, result not Float -- caused by: 17:8 1
TR info: invalid-float-promotion.rkt 17:0 (/ (ann 1 Integer) 2.0) -- exact real arith
TR missed opt: invalid-float-promotion.rkt 18:0 (* (ann 2/3 Exact-Rational) 3.0) -- all args float-arg-expr, result not Float -- caused by: 18:8 2/3
TR info: invalid-float-promotion.rkt 18:0 (* (ann 2/3 Exact-Rational) 3.0) -- exact real arith

END
#<<END
0.5
2.0

END
#lang typed/scheme
#:optimize
;; the ann are necessary, since (* PosReal Float) -> Float (exact 0 is not in PosReal)
(/ (ann 1 Integer) 2.0) ; result is not a float, can't optimize
(* (ann 2/3 Exact-Rational) 3.0)
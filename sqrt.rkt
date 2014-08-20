#lang racket

(define (square x)
  (* x x))

(define (good? guess x)
  (< (abs (- (square guess) x)) 0.00001))

(define (improve x y)
  (/ (+ (/ x (square y)) (* 2 y)) 3))

(define (sqrt-iter guess x)
  (if (good? guess x) guess
    (sqrt-iter (improve x guess)
               x)))

(define (sqrt x)
  (sqrt-iter 1 x))

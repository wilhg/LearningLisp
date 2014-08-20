#lang racket
(define (f n)
  (define (g n x)
    (* x (f (- n x))))
  (if (< n 3) n
    (+ (g n 1) (g n 2) (g n 3))))


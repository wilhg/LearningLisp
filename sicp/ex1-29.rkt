#lang racket
(define (sum term a next b)
  (define (iter a result)
    (if (= a b)
      result
      (iter (next a) (+ result (term a)))))
    (iter a 0))

(define (inc n) (+ n 1))

(define (cube x) (* x x x))

(define (sps f a b n)
  (define (h a b n)
    (/ (- b a) n))
  (define (y k)
    (f (+ a (* k (h a b n)))))
  (define (even n)
    (= (remainder n 2) 0))
  (define (item k)
    (cond ((or (= k 0) (= k n)) (y k))
          ((even k) (* 2 (y k)))
          (else (* 4 (y k)))))
  (/ (* (h a b n) (sum y 0 inc n))))

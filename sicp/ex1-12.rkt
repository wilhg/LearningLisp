#lang racket
(define (is-even n)
  (= (remainder n 2) 0))

(define (my-expt b n)
  (define (expt-iter b n out)
    (cond ((= n 0) out)
          ((is-even n) (expt-iter (* b b) (/ n 2) out))
          (else (expt-iter b (- n 1) (* b out)))))
  (expt-iter b n 1))

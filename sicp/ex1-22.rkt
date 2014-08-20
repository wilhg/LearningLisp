#lang racket
(define (runtime) (current-milliseconds))

(define (timed_priime_test n)
  (newline)
  (display n)
  (start_prime_test n (runtime)))

(define (start_prime_test n start_time)
  (if (prime? n)
    (report_prime (- (runtime) start_time))))

(define (report_prime elapsed_time)
  (display "***")
  (display elapsed_time))

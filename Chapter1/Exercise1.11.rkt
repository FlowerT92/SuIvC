#lang racket/base
(define (f n)
  (cond ((< n 3) n)
        (else (+ (+ (f (- n 1)) (* (f (- n 2)) 2 )) (* (f (- n 3)) 3)))))

(define (f2 n)
  (f-iter 2 1 0 n))
(define (f-iter a b c counter)
  (if(= counter 0)
     c
     (f-iter (+ a (* 2 b) (* 3 c)) a b (- counter 1))))
#lang racket/base
(define (Pascal-Dreieck n k)
  (cond ((= n k) 1)
        ((= k 1) 1)
        (else (+ (Pascal-Dreieck (- n 1)(- k 1)) (Pascal-Dreieck (- n 1) k)))))
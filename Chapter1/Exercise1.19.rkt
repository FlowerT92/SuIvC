#lang racket/base
(define (fib n)
  (fib-iter 1 0 0 1 n))

(define (fib-iter a b p q zaehler)
  (cond ((= zaehler 0) b)
        ((gerade? zaehler)
         (fib-iter a b (+ (quadrat p) (quadrat q)) (+ (* (* 2 q) p) (quadrat q)) (/ zaehler 2)))
  (else (fib-iter (+ (* b q) (* a q) (* a p))
                  (+ (* b p) (* a q))
                   p q (- zaehler 1)))))
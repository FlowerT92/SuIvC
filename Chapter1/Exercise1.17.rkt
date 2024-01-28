#lang racket/base
(define (gerade? n)
  (= (remainder n 2) 0))

(define (double n)
  (+ n n))

(define (halving n)
  (cond ((gerade? n) (/ n 2))
        (else 0)))


(define (* a b)
  (cond ((= b 0) 0)
  ((gerade? b) (* (double a) (halving b)))
  (else (+ a (* a (- b 1))))))

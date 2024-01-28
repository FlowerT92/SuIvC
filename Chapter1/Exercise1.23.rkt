#lang racket/base
(define (finde-teiler n pruef-teiler)
  (cond ((> (quadrat pruef-teiler) n) n)
        ((teilt? pruef-teiler n) pruef-teiler)
        (else (finde-teiler n (+ pruef-teiler 1)))))

(define (kleinster-teiler2 n)
  (finde-teiler2 n 2))

(define (finde-teiler2 n pruef-teiler)
  (cond ((> (quadrat pruef-teiler) n) n)
        ((teilt? pruef-teiler n) pruef-teiler)
        (else (finde-teiler n (naechstes pruef-teiler)))))

(define (naechstes n)
  (if (= n 2) 3
      (+ 2 n)))
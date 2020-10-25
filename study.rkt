#lang racket
(define (inc x) (+ x 1))
(define (square x) (* x x))
(define (square# x) (* x 2))
;;;练习1.42;;;;;;;;;;;;;;
(define (compose f g) (λ (x) (f (g x))));匿名函数作为返回值

((compose square inc) 6)
;;;;;;;;;;;;;;;;;;;;;;;;;

;;;;;;练习1.43;;;;;;;;;;;;;;
(define (repeated f x) (λ (n) (if (> n 1)
                                  ((repeated f (f x)) (- n 1))
                                  x)))
((repeated square# 2) 5)

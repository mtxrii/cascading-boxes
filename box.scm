#lang racket

(define x 4)

(display "+")
(define (lp i)
  (when (< i x)
    
    (display "-+\n")
    (define (lpi j)
      (when (< j i)
        (display "  ")
        (lpi (+ 1 j))))
    (lpi 0)

    (display "| |\n")
    (define (lpii ji)
      (when (< ji i)
        (display "  ")
        (lpii (+ 1 ji))))
    (lpii 0)

    (display "+-+")
    (lp (+ 1 i))))
(lp 0)

(define x 4)

(display "+")
(define lp (i)
  (cond (< i x)
    (
      (display "-+\n")
      (define lpi (j)
        (cond (< j i)
          (display "  "))
        (lpi (+ 1 j)))
      (lpi 0)
      
      (display "| |\n")
      (define lpii (ji)
        (cond (< ji i)
          (display "  "))
        (lpii (+ 1 ji)))
      (lpii 0)
      
      (display "+-+")
    )
  (lp (+ 1 i))))
(lp 0)

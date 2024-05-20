(define (over-or-under num1 num2)
  'YOUR-CODE-HERE
  (cond
      ((< num1 num2) -1)
      ((< num2 num1) 1)
      (else 0))
  )

(define (make-adder num) 
  'YOUR-CODE-HERE
  (lambda (inc) (+ inc num))
  )

(define (composed f g) 
  'YOUR-CODE-HERE
  (lambda (x) (f(g x)))
  )

(define (repeat f n) 
  'YOUR-CODE-HERE
  (if (< n 1)
    (lambda (x) x)
    (composed f (repeat f (- n 1))))
  )

(define (max a b)
  (if (> a b)
      a
      b))

(define (min a b)
  (if (> a b)
      b
      a))

(define (gcd a b) 
  'YOUR-CODE-HERE
  (cond
      ((zero? a) b)
      ((zero? b) a)
      (else (gcd (min a b) (modulo (max a b) (min a b)))))
  )

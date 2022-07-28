(define (cddr s)
  (cdr (cdr s))
)

(define (cadr s)
  'YOUR-CODE-HERE
  (car (cdr s))
)

(define (caddr s)
  'YOUR-CODE-HERE
  (car (cddr s))
)

(define (sign num)
  'YOUR-CODE-HERE
  (cond
    ((> num 0) 1)
    ((= num 0) 0)
    (else -1)
  )
)

(define (square x)
  (* x x)
)

(define (pow x y)
  'YOUR-CODE-HERE
  (cond
    ((= y 0) 1)
    ((= y 1) x)
    ((even? y) (square (pow x (/ y 2))))
    (else (* x (pow x (- y 1))))
  )
)

(define (unique s)
  'YOUR-CODE-HERE
  (if (null? s)
    nil
    (cons
      (car s)
      (unique (filter (lambda (x) (not (equal? (car s) x))) (cdr s)))
    )
  )
)

(define (replicate x n)
  'YOUR-CODE-HERE
  (define (helper x n start)
    (if (= n 0)
      start
      (helper x (- n 1) (cons x start))
    )
  )
  (helper x n nil)
)

(define (accumulate combiner start n term)
  'YOUR-CODE-HERE
  ; As the normal recursive edition is trivial, I just put the tail recursive edition
  (if (<= n 0)
    start
    (accumulate combiner (combiner (term n) start) (- n 1) term)
  )
)

(define (accumulate-tail combiner start n term)
  'YOUR-CODE-HERE
  (if (<= n 0)
    start
    (accumulate combiner (combiner (term n) start) (- n 1) term)
  )
)

(define-macro
 (list-of map-expr for var in lst if filter-expr)
 'YOUR-CODE-HERE
 `(map (lambda (,var) ,map-expr) (filter (lambda (,var) ,filter-expr) ,lst))
)

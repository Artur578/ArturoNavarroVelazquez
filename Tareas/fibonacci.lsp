; Fibonacci
(defun f(x)
    (if (< x 3)
        1
    (+ (f(- x 1)) (f(- x 2)))
    )
)
 ; Factorial
(defun fact(x)
    (if (< x 2)
        1
        (* x (fact(- x 1)))
    )
)
# Funciones Matemáticas en Lisp

Las siguientes son implementaciones de las clásicas funciones matemáticas para calcular la secuencia de Fibonacci y el factorial de un número, escritas en Lisp.

## Fibonacci

La función `f` calcula el `x`-ésimo número en la secuencia de Fibonacci. Los dos primeros números de la secuencia son 1. Para todos los demás, el número de Fibonacci es la suma de los dos números anteriores en la secuencia.

```lisp
(defun f(x)
    (if (< x 3)               ; Si x es menor que 3, devuelve 1, ya que los dos primeros números de Fibonacci son 1.
        1
    (+ (f (- x 1)) (f (- x 2))) ; De lo contrario, calcula recursivamente la suma de los dos números anteriores de Fibonacci.
    )
)

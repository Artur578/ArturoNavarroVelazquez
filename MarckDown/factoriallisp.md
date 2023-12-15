# Función Factorial en Lisp

La función `factorial` definida a continuación calcula el factorial de un número `x`. 
Si `x` es igual a 0, la función devuelve 1, que es el factorial de 0. 
Si `x` es mayor que 0, la función se llama a sí misma recursivamente con el valor de `x-1` y multiplica `x` por el resultado de esa llamada recursiva.

```lisp
(defun factorial(x)
    (if (= x 0)
        1
        (* x (factorial (- x 1)))
    )
)

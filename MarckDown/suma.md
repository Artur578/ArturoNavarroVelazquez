# Función de Suma en Lisp
## Arturo Navarro Velazquez

La siguiente función interactiva pide al usuario que ingrese dos números y luego calcula la suma de ambos. El resultado se evalúa y muestra en la terminal.

```lisp
(defun suma()
    (princ "Dame un numero: ")         ; Imprime un mensaje pidiendo al usuario el primer número.
    (setq num1 (read))                 ; Lee el primer número del usuario y lo asigna a num1.
    (princ "Dame un segundo numero:")  ; Imprime un mensaje pidiendo al usuario el segundo número.
    (setq num2 (read))                 ; Lee el segundo número del usuario y lo asigna a num2.
    (setq resultado '(+ num1 num2))    ; Crea una lista que representa la suma de num1 y num2.
    ;(write resultado)                 ; Esta línea está comentada y escribiría la lista resultado.
    (eval resultado)                   ; Evalúa la lista resultado como una expresión de suma y devuelve el resultado.
)
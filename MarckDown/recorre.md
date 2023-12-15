# Función para Recorrer Listas en Lisp

La función `recorre` es una función recursiva en Lisp que itera a través de una lista, imprimiendo cada elemento hasta que la lista esté vacía.

```lisp
(defun recorre (lista)
    ; Verifica si la lista no está vacía antes de intentar acceder a su cabeza (car).
    (if lista
        (progn
            ; Imprime el primer elemento de la lista (la cabeza).
            (format t "~A-> " (car lista))
            ; Llama recursivamente a la función con el resto de la lista (la cola).
            (recorre (cdr lista))
        )
    )
)

# Función para Recorrer Listas en Lisp

La función `recorre` es una función en Lisp que itera a través de una lista imprimiendo cada elemento. Se detiene cuando ha llegado al final de la lista.

```lisp
(defun recorre(lista)
  ; Comprueba si la lista está vacía, en cuyo caso termina la recursión.
  (if (equal lista nil) 
    nil
    ; Si la lista no está vacía, ejecuta las siguientes instrucciones.
    (progn
      ; Imprime el primer elemento de la lista (la cabeza).
      (princ (car lista))
      ; Llama recursivamente a la función con el resto de la lista (la cola).
      (recorre (cdr lista))
    )
  )
)

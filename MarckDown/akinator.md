# Árbol de Datos de Información en Lisp
## Arturo Navarro 
El siguiente código en Lisp define un árbol de datos denominado `*informacion*`, que categoriza diferentes entidades y personajes según si son reales o ficticios, y a su vez, se dividen según su época y nacionalidad.

```lisp
(defparameter *informacion*  
  '(realidad
    (actual
     (espanol
        (creador
        (masculino)
        (femenino)
        )
        (figura historica
        (masculino)
        (femenino)
        )
     )
     (aleman
        (creador
        (masculino)
        (femenino)
        )
        (figura historica
        (masculino)
        (femenino)
        )
     )
     (canadiense
        (figura historica
        (masculino)
        (femenino)
        )
     )
    )

    (pasado
      (espanol
        (creador
        (masculino)
        (femenino)
        )
        (figura historica
        (masculino)
        (femenino)
        )
     )
     (aleman
        (creador
        (masculino)
        (femenino)
        )
        (figura historica
        (masculino)
        (femenino)
        )
     )
     (canadiense
        (figura historica
        (masculino)
        (femenino)
        )
     )  
    )
  )

  (ficticio
    (juego
      (accion
       (GuerraFutura
        (masculino
         (Comandante Rayo)
        )
        (femenino
         (Lara Spectro)
        )
        (criatura
         (Escuadron de lobos)
        )
       )
      )
      (estrategia
       (BatallaMitica
        (masculino
         (Thor Loki)
        )
        (femenino
         (Freya Sif)
        )
        (criatura
         (Fenrir Jormungandr)
        )
       )
       (Conquista
        (masculino)
        (femenino)
        (criatura)
       )
      )
      (aventura
       (Exploradores
        (masculino)
        (femenino)
        (criatura)
       )
       (Creadores
        (masculino)
        (femenino)
        (criatura)
       )
      )   
    )
    (animacion
     (masculino)
     (femenino)
     (criatura)
    )  
  )
)

; Código en LISP

; *informacion* Imprime todo el nodo
;(assoc 'alto (assoc 'realidad *informacion*))
;(assoc 'alto (cdr (assoc 'realidad *informacion*)))
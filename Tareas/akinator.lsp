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

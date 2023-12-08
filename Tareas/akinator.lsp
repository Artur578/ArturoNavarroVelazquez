(defparameter *nodes*
    '(
        (living-room (you are in the living-room. a wizard is snoring loudly on the couch.))
        (garden (you are in a beautiful garden. there is a well in front of you.))
        (attic (you are in the attic. there is a giant welding torch in the corner.))
    )
)


(defun busca (lista)
    (setq cuarto (caar lista))
    (format t "tu cuarto es ~d ? (1: si | 0: no): " cuarto)
    (setq lectura (read))


    (if (caadr lista) ; SI NO ESTÁ VACIA 
        (format t "que rollo ~d " (caadr lista))
        ; (format t "no se hajaja ~d " (caadr lista))
    )

    (if (caadr lista) ; SI NO ESTÁ VACIA 
        (cond
            ( (eq lectura 0)
                (if lista
                    (busca (cdr lista))
                )
            )
            ( (eq lectura 1)
                (cdr (assoc cuarto lista))
            )
        )
    )
    
)
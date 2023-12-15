## Arturo Navarro Velazquez
### Área y volúmenes con funciones Lambda

```lisp
; Área Cuadrado
(mapcar (lambda (n) (* n n)) '(4))

; Área Rectángulo
(mapcar (lambda (b h) (* b h)) '(4) '(5))

; Área Triángulo
(mapcar (lambda (b h) (/ (* b h) 2)) '(4) '(5))

; Área Pentágono
(mapcar (lambda (p a) (/ (* (* a 5) p) 2)) '(4) '(5))

; Área Hexágono
(mapcar (lambda (p a) (/ (* (* a 6) p) 2)))

; Área Paralelogramo
(mapcar (lambda (b h) (* b h)))

; Área Rombo
(mapcar (lambda (f d) (/ (* f d) 2)))

; Área Círculo
(mapcar (lambda (r) (* pi (expt r 2))))

; Área Trapecio
(mapcar (lambda (b1 b2 h) (/ (* (+ b1 b2) h) 2)))

; Área Cono
(mapcar (lambda (r h) (/ (* pi r r h) 3)))

; Volumen Cubo
(mapcar (lambda (a) (expt a 3)))

; Volumen Cilindro
(mapcar (lambda (r h) (* pi (expt r 2) h)))

; Volumen Ortoedro
(mapcar (lambda (a b c) (* a b c)))

; Volumen Prisma Recto
(mapcar (lambda (b h) (* b h)))

; Volumen Cono
(mapcar (lambda (r h) (/ (* pi (expt r 2) h) 3)))

; Volumen Esfera
(mapcar (lambda (r) (/ (* 4 pi (expt r 3)) 3)))

; Volumen Pirámide
(mapcar (lambda (b h) (/ (* b h) 3)))

; Volumen Tetraedro Regular
(mapcar (lambda (a) (/ (* (sqrt 2) (expt a 3)) 12)))

; Volumen Octaedro Regular
(mapcar (lambda (a) (/ (* (sqrt 2) (expt a 3)) 3)))

; Volumen Tronco de Cono
(mapcar (lambda (r1 r2 h) (/ (* pi h (+ (expt r1 2) (expt r2 2) (* r1 r2))) 3)))

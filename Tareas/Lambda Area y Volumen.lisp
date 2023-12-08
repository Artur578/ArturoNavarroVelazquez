;Area Cuadrado
(mapcar (lambda (n) (* n n)) '(4))
;Area Rectangulo
(mapcar (lambda (b h) (* b h)) '(4) '(5))
;Area Triangulo
(mapcar (lambda (b h) (/ (* b h) 2)) '(4) '(5))
;Area Pentagono
(mapcar (lambda (p a) (/ (* (* a 5) p) 2)) '(4) '(5))
;Area Hexagono
(mapcar (lambda (p a) (/ (* (* a 6) p) 2)))
;Area Paralelogramo
(mapcar (lambda (b h) (* b h)))
;Area Rombo
(mapcar (lambda (f d) (/  (* f d) 2)))
;Area Circulo
(mapcar (lambda (r) (* 3.1416 (expt r 2))))
;Area Trapecio
(mapcar (lambda (r) (* 3.1416 (expt r 2))))
;Area Cono
(mapcar (lambda (b h) (* 3.1516 b h)))

;Volumen Cubo
(mapcar (lambda (a) (expt a 3)))
;Volumen Cilindro
(mapcar (lambda (r h) (* 3.1416 (expt r 2) h)))
;Voluen Ortoedro
(mapcar (lambda (a b c) (* a b c)))
;Volumen Prisma Recto
(mapcar (lambda (a h) (* a h)))
;Volumen Cono
(mapcar (lambda (r h) (/ (* 3.1416 (expt r 2) h) 3)))
;Volumen Esfera
(mapcar (lambda (r) (/ (* 4 3.1416 (expt r 3)) 3)))
;Volumen Piramide
(mapcar (lambda (a h) (/ (* a h) 3)))
;Volumen Tetraedro Regular
(mapcar (lambda (a) (/ (* (sqrt 2) (expt a 3)) 12)))
;Volumen Octraedro Regular
(mapcar (lambda (a) (/ (* (sqrt 2) (expt a 3)) 3)))
;Volumen Tronco Cono
(mapcar (lambda (rg rc h) (/ (* 3.1416 h (+ (expt rg 2) (expt rc 2) (* rg rc))) 3)))
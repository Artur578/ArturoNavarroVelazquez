;AREAS

;Se recibe un lado
(defun areaCuadrado(l)
(expt a 2)
)
;Se recibe la base y altura
(defun areaRectangulo(b h)
(* b h)
)
;Se recibe la base y altura
(defun areaTriangulo(b h)
(/ (* b h) 2)
)
;Se recibe el apotema y un lado
(defun areaPentagono(p a)
(/ (* (* a 5) p) 2)
)
;Se recibe el apotema y un lado
(defun areaHexagono(p a)
(/ (* (* a 6) p) 2)
)
;Se recibe la base y altura
(defun areaParalelogramo(b h)
(* b h)
)
(defun areaRombo(f d)
(/  (* f d) 2)
)
;Se recibe el radio
(defun areaCirculo(r)
(* 3.1416 (expt r 2))
)
;Se recibe la base inferior, superior y altura
(defun areaTrapecio(b a h)
(* (/ (+ b a) 2) h)
)
;Se recibe la base y altura
(defun areaCono(b h)
(* 3.1516 b h)
)

;VOLUMENES

;Se recibe un lado
(defun volumenCubo(a)
(expt a 3)
)
;Se recibe el radio y altura
(defun volumenCilindro(r h)
(* 3.1416 (expt r 2) h)
)
;Se reciben 3 lados
(defun volumenOrtoedro(a b c)
(* a b c)
)
;Se recibe el area de la base y altura
(defun volumenPrismaRecto(a h)
(* a h)
)
;Se recibe el radio y altura
(defun volumenCono(r h)
(/ (* 3.1416 (expt r 2) h) 3)
)
;Se recibe el radio
(defun volumenEsfera(r)
(/ (* 4 3.1416 (expt r 3)) 3)
)
;Se recibe el area de la base y altura
(defun volumenPiramide(a h)
(/ (* a h) 3)
)
;Se recibe un lado
(defun volumenTetraedroRegular(a)
(/ (* (sqrt 2) (expt a 3)) 12)
)
;Se recibe un lado
(defun volumenOctaedroRegular(a)
(/ (* (sqrt 2) (expt a 3)) 3)
)
;Se recibe el radio de la base inferior, radio de la base superior y altura
(defun voulumenTroncoCono(rg rc h)
(/ (* 3.1416 h (+ (expt rg 2) (expt rc 2) (* rg rc))) 3)
)


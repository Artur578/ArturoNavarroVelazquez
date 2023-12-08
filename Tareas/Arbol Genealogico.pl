/Familia Principal/
padre(gerardo).
madre(maria).
hijo(alejandro).
hija(monserrat).
hija(alejandra).
espadrede(gerardo,alejandro).
esmadrede(maria,alejandro).
esmadrede(maria,alejandra).
espadrede(gerardo,monserrat).
esmadrede(maria,monserrat).

/Familia Mamá/
abuelo(jesus1).
abuela(reina).
padre(jesus1).
madre(reina).
hijo(jesus2).
hijo(pioquinto).
hija(sara).
hija(maria).
espadrede(jesus1,jesus2).
esmadrede(reina,jesus2).
espadrede(jesus1,pioquinto).
esmadrede(reina,pioquinto).
espadrede(jesus1,sara).
esmadrede(reina,sara).
espadrede(jesus1,maria).
esmadrede(reina,maria).

/Familia Padre/
abuelo(roberto1).
abuela(amelia).
abuela(araceli).
padre(roberto1).
madre(amelia).
hijo(gerardo).
hijo(margarito).
hijo(roberto2).
hijo(carlos).
hija(teresa).
hija(diana).
espadrede(roberto1,gerardo).
esmadrede(amelia,gerardo).
espadrede(roberto1,margarito).
esmadrede(amelia,margarito).
espadrede(roberto1,roberto2).
esmadrede(amelia,roberto2).
espadrede(roberto1,carlos).
esmadrede(amelia,carlos).
espadrede(roberto1,teresa).
esmadrede(amelia,teresa).
espadrede(roberto1,diana).
esmadrede(araceli,diana).

/Relaciones Abuelos/
/Familia Madre/
esabuelode(jesus1,alejandro).
esabuelade(reina,alejandro).
esabuelode(jesus1,monserrat).
esabuelade(reina,monserrat).
/Familia Padre/
esabuelode(roberto1,alejandro).
esabuelade(amelia,alejandro).
esabuelode(roberto1,monserrat).
esabuelade(amelia,monserrat).

/Regla/
esabuelode(X,Y):- espadrede(X,Y), espadrede(W,Y). 
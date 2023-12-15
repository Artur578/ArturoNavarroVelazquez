# Árbol Genealógico Familiar

## Familia Principal
- **Padre**: `gerardo`
- **Madre**: `maria`
- **Hijos**: 
  - `arturo`
  - `monserrat`
  - `alejandra`
- **Relaciones**:
  - `espadrede(gerardo,alejandro)`
  - `esmadrede(maria,alejandro)`
  - `esmadrede(maria,alejandra)`
  - `espadrede(gerardo,monserrat)`
  - `esmadrede(maria,monserrat)`

## Familia Mamá
- **Abuelos**: 
  - `abuelo(jesus1)`
  - `abuela(reina)`
- **Padres**:
  - `padre(jesus1)`
  - `madre(reina)`
- **Hijos**:
  - `jesus2`
  - `pioquinto`
  - `sara`
  - `maria`
- **Relaciones**:
  - `espadrede(jesus1,jesus2)`
  - `esmadrede(reina,jesus2)`
  - `espadrede(jesus1,pioquinto)`
  - `esmadrede(reina,pioquinto)`
  - `espadrede(jesus1,sara)`
  - `esmadrede(reina,sara)`
  - `espadrede(jesus1,maria)`
  - `esmadrede(reina,maria)`

## Familia Padre
- **Abuelos**: 
  - `abuelo(roberto1)`
  - `abuela(amelia)`
  - `abuela(araceli)`
- **Padres**:
  - `padre(roberto1)`
  - `madre(amelia)`
- **Hijos**:
  - `gerardo`
  - `margarito`
  - `roberto2`
  - `carlos`
  - `teresa`
  - `diana`
- **Relaciones**:
  - `espadrede(roberto1,gerardo)`
  - `esmadrede(amelia,gerardo)`
  - `espadrede(roberto1,margarito)`
  - `esmadrede(amelia,margarito)`
  - `espadrede(roberto1,roberto2)`
  - `esmadrede(amelia,roberto2)`
  - `espadrede(roberto1,carlos)`
  - `esmadrede(amelia,carlos)`
  - `espadrede(roberto1,teresa)`
  - `esmadrede(amelia,teresa)`
  - `espadrede(roberto1,diana)`
  - `esmadrede(araceli,diana)`

## Relaciones Abuelos
### Familia Madre
- `esabuelode(jesus1,alejandro)`
- `esabuelade(reina,alejandro)`
- `esabuelode(jesus1,monserrat)`
- `esabuelade(reina,monserrat)`

### Familia Padre
- `esabuelode(roberto1,alejandro)`
- `esabuelade(amelia,alejandro)`
- `esabuelode(roberto1,monserrat)`
- `esabuelade(amelia,monserrat)`

## Regla
```prolog
esabuelode(X,Y):- espadrede(X,Z), espadrede(Z,Y).

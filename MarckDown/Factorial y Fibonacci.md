# Funciones Matemáticas en Prolog
## Arturo Navarro Velazquez
## Factorial

La siguiente función calcula el factorial de un número `N`. 
El caso base es `fact(0, 1)`, que establece que el factorial de 0 es 1. 
La regla recursiva calcula el factorial de `N` multiplicando `N` por el factorial de `N-1`.

```prolog
fact(0, 1).
fact(N, A):- 
    AUX is N - 1,   % Calcula N-1 y lo almacena en AUX
    fact(AUX, P),   % Llama recursivamente a fact con N-1
    A is P * N.     % Multiplica el resultado P (fact de N-1) por N


fibo(0, 1) :- !.   % Caso base para el cero en la secuencia de Fibonacci, con corte para evitar backtracking
fibo(1, 1) :- !.   % Caso base para el uno en la secuencia de Fibonacci, con corte para evitar backtracking
fibo(N, F) :-
    N > 1,          % Verifica que N es mayor que 1 para aplicar la regla
    N1 is N - 1,    % Calcula el antepasado N-1 de N
    N2 is N - 2,    % Calcula el antepasado N-2 de N
    fibo(N1, F1),   % Calcula Fibonacci de N1 recursivamente
    fibo(N2, F2),   % Calcula Fibonacci de N2 recursivamente
    F is F1 + F2.   % Suma los dos valores para obtener el Fibonacci de N

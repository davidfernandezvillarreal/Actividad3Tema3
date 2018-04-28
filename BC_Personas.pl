mujer(ana).
mujer(maria).
mujer(luisa).
mujer(fabiola).
mujer(esther).
mujer(rocio).
mujer(deysi).
mujer(vanessa).
mujer(martha).
mujer(romina).

hombre(hugo).
hombre(mario).
hombre(marco).
hombre(juan).
hombre(luis).
hombre(pedro).
hombre(raul).
hombre(gerardo).
hombre(sergio).
hombre(paco).

madre(ana, rocio).
madre(ana, maria).
madre(ana, luis).
madre(martha, deysi).
madre(fabiola, romina).
madre(maria, juan).

padre(raul, rocio).
padre(marco, hugo).
padre(pedro, gerardo).
padre(marco, romina).
padre(sergio, paco).
padre(hugo, sergio).

% Regla para identificar ABUELOS
% Para ser padre se debe SER PADRE
% Su hijo debe de tener hijos

% abuelo(X, Y) :- padre(X, Z) , padre(Z, Y).

% Regla para identificar ABUELAS
% REGLA persona
% REGLA matrimonio o pareja

abuelo(X, Y) :- padre(X, Z) , (padre(Z, Y) ; madre(Z, Y)).
% Regla abuelo paterno y materno.
% X = marco,
% Y = sergio;
% X = hugo, 
% Y = paco;
% false;

abuela(X, Y) :- madre(X, Z) , (padre(X, Y) ; madre(Z, Y)).
% Regla para abuela paterno y materno
% X = ana,
% Y = juan;
% false

persona(X) :- hombre(X) ; mujer(X).
% Regla para persona
% X = hugo ;
% X = mario ;
% X = marco ;
% X = juan ;
% X = luis ;
% X = pedro ;
% X = raul ;
% X = gerardo ;
% X = sergio ;
% X = paco ;
% X = ana ;
% X = maria ;
% X = luisa ;
% X = fabiola ;
% X = esther ;
% X = rocio ;
% X = deysi ;
% X = vanessa ;
% X = martha ;
% X = romina

nieto(X, Y) :- (padre(Y, Z) ; madre(Y, Z)) , (padre(Z, X) ; madre(Z, X)).
% Regla para nieto
% X = sergio,
% Y = marco ;
% X = paco,
% Y = hugo ;
% X = juan,
% Y = ana ;
% false.

pareja(X, Y) :- padre(X, Z) , madre(Y, Z).
% Regla para pareja
% X = raul,
% Y = ana ;
% X = marco,
% Y = fabiola ;
% false.

hermano(X, Y) :- madre(W, Y) , madre(W, X).

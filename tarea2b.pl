natural(0).
natural(suc(X)) :- natural(X).
suma(0,N,N) :-natural(N),!.
suma(suc(X),N,suc(Z)) :- suma(X,N,Z).
multiplicacion(0,N,0) :- natural(N),!. 
multiplicacion(suc(X),Y,Z) :- multiplicacion(X,Y,R) , suma(R,Y,Z).
potencia(N,0,suc(0)) :- natural(N),!. 
potencia(X,suc(Y),+Z) :- potencia(X,Y,R) , multiplicacion(X,R,Z).
inversa_1( [], []).
inversa_1([X|L1] ,L2):-
inversa_1(L1,L3),
append(L3, [X] ,L2).



inversa_2(L1,L2) :-
inversa_2_aux(L1, [],L2).
inversa_2_aux( [] ,L,L).
inversa_2_aux( [X|L] ,Acum,L2):-
inversa_2_aux(L, [X|Acum] ,L2).


longitud1([ ], 0).
longitud1([ _ | Cola], N) :- longitud(Cola, T), N is T+1.


longitud2(Lista, A) :- longitudA(Lista, 0, A).
longitudA([ ], A, A).
longitudA([ _ |Cola], A, Salida) :-
A2 is A+1, longitudA(Cola, A2, Salida).


factorial1(1,1).
factorial1(N,Salida) :-
N > 1,
M is N-1, factorial(M,Salida1),
Salida is N * Salida1,!.


factorial2(0, A, A).
factorial2(N, A, Salida) :-
N>0,
M is N-1,
A2 is A*N,
factorial(M, A2, Salida).

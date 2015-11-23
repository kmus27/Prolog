%regresa_cumple(Info , [H|T],R):-propiedad(Info , H),result(Info, H,T,R).
%regresa_cumple(Info , [H|T],R):-regresa_cumple(Info,T,R).

%regresa_cumple(Info , [H|T],R):-propiedad(Info , H),result(Info, H,T,R).
%regresa_cumple(Info , [H|T],R):-regresa_cumple(Info,T,R).

%ultimo(E , [E]):-!.
%ultimo(E , [H | T]):- ultimo(E, T).

%todo_despues(E , [E|T] , T):-!.
%todo_despues(E , [H | R],R):- todo_despues(E, T,R).

%multiplos(E , [H|T],R):- 0 is mod(H,E),R=H.
%multiplos(E , [H | T],R):- multiplos(E, T,R).

mayusculas([H|T],R):- is_upper(H),R=H.
mayusculas([H | T],R):- mayusculas(T,R).


minusculas([H|T],R):- is_lower(H),R=H.
minusculas([H | T],R):- minusculas(T,R).

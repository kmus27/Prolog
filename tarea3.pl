%existe_uno(Info , [H | T]) :- cumple_prop(Info , H).
%existe_uno(Info , [H | T]) :- existe_uno(Info , T).


%contiene_par([H | T]) :- 0 is mod(H, 2) , !.
%contiene_par([H | T]) :- contiene_par(T).

contiene_multiplo(N,[H | T]) :-0 is mod(H, N) , !.
contiene_multiplo(N,[H | T]) :- contiene_multiplo(N,T).
%es_letra(C) :- 'a' =< C , C =<'z'.
%es_letra(C) :- 'A' =< C , C =<'Z'.
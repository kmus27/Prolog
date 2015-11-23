%para_todos(Info , []).
%para_todos(Info , [H | T]) :- cumple_prop(Info , H) , para_todos(Info , T).


solo_letras([]).
solo_letras([H | T]) :- is_alpha(H), solo_letras(T).

homonimos(C,[]):-!.
homonimos(C ,  [H | T]) :- C = H, homonimos(C ,T).

divisor(C,[]):-!.
divisor(C ,  [H | T]) :- 0 is mod(H,C), divisor(C ,T).
%procesa_todo_ac(Info , [] , Acc, Acc).
%procesa_todo_ac(Info , [H | T] , Acc , Ans):- procesa_uno(Info , H1 , H2), procesa_todo(Info, T1 ,[H2,Acc] ,Ans).

duplica(L1 , L2):-duplica(L1,[] , L2).
duplica( [] , Ans , Ans).
duplica([H | T] , Acc, Ans):-  H2 is H * 2 , duplica(T , [H2 | Acc] , Ans).

aMayusculas(L1, L2) :- aMayusculas(L1 , [], L2).
aMayusculas([] , Ans, Ans).
aMayusculas([H | T] , Acc , Ans  ):-  upcase_atom(H,H2) , aMayusculas(T ,[H2 | Acc ] , Ans).

inversa(L1,L2) :-
inversa_aux(L1, [],L2).
inversa_aux( [] ,L,L).
inversa_aux( [X|L] ,Acum,L2):-
inversa_aux(L, [X|Acum] ,L2).

%aMinusculas([] , Acc, Acc).
%aMinusculas([H1 | T1] , [H2 | T2]):-  downcase_atom(H1,H2) , aMinusculas(T1 , T2).

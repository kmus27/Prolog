procesa_todo(Info , [] , []).
procesa_todo(Info , [H1 | T1] , [H2 | T2]):- procesa_uno(Info , H1 , H2), procesa_todo(Info, T1 , T2).

duplica( [] , []).
duplica([H1 | T1] , [H2 | T2]):-  H2 is H1 * 2 , duplica(T1 , T2).

aMayusculas([] , []).
aMayusculas([H1 | T1] , [H2 | T2]):-  upcase_atom(H1,H2) , aMayusculas(T1 , T2).

aMinusculas([] , []).
aMinusculas([H1 | T1] , [H2 | T2]):-  downcase_atom(H1,H2) , aMinusculas(T1 , T2).

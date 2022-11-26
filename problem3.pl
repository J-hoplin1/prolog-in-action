a(4).
a(x).
b(3,x).
b(1,7).
c(A, B, C) :- b(B, A), !,a(D). 
c(A, _, B) :- b(A, B).



/*
understanding cut operator

-> prun unnecessary branches

IF : without cutting operator
s(m).
s(d).
t(k).
t(i).
d(c).
d(j).

solve(3,4,5).
solve(X,Y,Z) :- s(X), t(Y), d(Z).
solve(1,2,3).

X = 3,  Y = 4,  Z = 5 ;
X = m,  Y = k,  Z = c ;
X = m,  Y = k,  Z = j ;
X = m,  Y = i,  Z = c ;
X = m,  Y = i,  Z = j ;
X = d,  Y = k,  Z = c ;
X = d,  Y = k,  Z = j ;
X = d,  Y = i,  Z = c ;
X = d,  Y = i,  Z = j ;
X = 1,  Y = 2,  Z = 3.

IF : With cutting
Program :
s(m).
s(d).
t(k).
t(i).
d(c).
d(j).

solve(3,4,5).
solve(X,Y,Z) :- s(X), !, t(Y),d(Z).
solve(1,2,3).

?- solve(X,Y,Z).
X = 3,  Y = 4,  Z = 5 ;
X = m,  Y = k,  Z = c ;
X = m,  Y = k,  Z = j ;
X = m,  Y = i,  Z = c ;
X = m,  Y = i,  Z = j.

변수 X에 대해서 DFS하는것에 대한 Backtracking을 하지 않음

*/

a(1).
a(2).
b(a).
c(A,B,C) :- a(A), d(B,C).
c(A,B,C) :- b(A),d(B,C).
d(B,C) :- a(B), !, a(C).
d(B,_) :- b(B).


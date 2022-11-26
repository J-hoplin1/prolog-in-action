/*

list-> ordered sequence of componenets where components can be cariables,
constant, compound terms, number or another list.

< example >

[1,2,3,4]

[X,Y,james]

[A,[p,n,c],4]


< head and tail of list >

head : the 1st element of the list
tail : all elements of the list except the 1st one

Syntax : [Head | Tail]

[1,2,3,4] -> Head : 1, Tail [2,3,4]


?- [X|Y] = [A | [b,c]].
X = A,
Y = [b, c].

?- [A | [b,c]] = [X | Y].
A = X,
Y = [b, c].

?- [B,[p,n,c],4] = [X | Y].
B = X,
Y = [[p, n, c], 4].

?- [likes(john,mary),X,1,2] = [Head | Tail].
Head = likes(john, mary),
Tail = [X, 1, 2].

?- [[1,2],a,b] = [Head | Tail].
Head = [1, 2],
Tail = [a, b].

?- [john] = [Head | Tail].
Head = john,
Tail = [].


*/

% Facts

list([p, q, r]).

% Rules
what_is([Head | Tail]) :- list([Head | Tail]).


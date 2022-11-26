/*

The following Prolog clauses define the procedure named reverse. The goal reverse(X,Y) succeeds for the list X, instantiating Y to the reverse of the list X.
For example, evaluating the goal reverse([a,b,c],Q) instantiates Q to [c,b,a].
*/

reverse(X,Y) :- rev(X,[],Y).

rev([],L,L).
rev([H|T],R,Y) :- rev(T,[H|R],Y).
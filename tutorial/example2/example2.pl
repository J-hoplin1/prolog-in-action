%Facts
studies(charlie,csc135).
studies(olivia,csc135).
studies(jack, csc131).
studies(arthur,csc134).

teaches(kirke,csc135).
teaches(collins,csc131).
teaches(collins,csc171).
teaches(juniper,csc134).

%Rules
professor(X,Y) :- teaches(X,C), studies(Y,C).

/*
X is a professor of Y if X teaches C and Y studies C

X -> professor
Y -> student
C -> course

X,Y,C -> Variable
*/
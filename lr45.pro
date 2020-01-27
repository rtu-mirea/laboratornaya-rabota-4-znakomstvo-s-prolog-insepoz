domains
s=symbol
predicates
nondeterm parent(s,s)
female(s)
male(s)
nondeterm mother(s,s)
nondeterm father(s,s)
ancestor(s,s)
child(s,s)
nondeterm brother(s,s).
nondeterm sister(s,s).
nondeterm grand_father(s,s).
nondeterm grand_mother(s,s).
clauses
parent(pam,bob).
parent(tom,bob).
parent(tom,liz).
parent(bob,ann).
parent(bob,pat).
parent(pat,jim).
female(pam).
female(liz).
female(ann).
female(pat).
male(tom).
male(bob).
male(jim).
child(Y,X):- parent(X,Y).
mother(X,Y):- parent(X,Y),female(X).
father(X,Y):- parent(X,Y),male(X).
ancestor(X,Z):- parent(X,Z).
ancestor(X,Z):- parent(X,Y),ancestor(Y,Z).

brother(X,Y):- male(X), father(F,X), father(F,Y), mother(M,X), mother(M,Y), X<>Y.
sister(X,Y):- female(X), father(F,X), father(F,Y), mother(M,X), mother(M,Y), X<>Y.
grand_father(X,Y):- male(X), parent(P,Y), parent(X,P).
grand_mother(X,Y):- female(X), parent(P,Y), parent(X,P).

goal
grand_father(tom,Who).
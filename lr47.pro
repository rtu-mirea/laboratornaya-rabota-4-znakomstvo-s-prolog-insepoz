domains
s=symbol
predicates
nondeterm teacher(s).
nondeterm student(s).
teaches(s,s).
nondeterm wants_to_study(s,s).
nondeterm has_students(s).
clauses
teacher(joe).
teacher(jim).
teacher(josh).
student(jorge).
student(joseph).
student(jack).
teaches(joe,astrology).
teaches(jim,cryptozoology).
teaches(josh,numerology).
wants_to_study(jorge,numerology).
wants_to_study(joseph,numerology).
wants_to_study(jack,cryptozoology).
has_students(X):- teacher(X), student(Z), teaches(X,Y), wants_to_study(Z,Y).
goal
has_students(jim).
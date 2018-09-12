fib(0, 1) :- !.
fib(1, 1) :- !.
fib(N, Result) :- fib_aux(N, N, 1, 1, Result).

fib_aux(_, 1, _, R, R).
fib_aux(N, Contor, F1, F2, Rez) :- Aux is Contor - 1,
                                   F3 is F1 + F2,
                                   fib_aux(N, Aux, F2, F3, Rez).

/* ?- fib(50, X). */
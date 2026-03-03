:- use_module('../safe_cracker').
:- use_module('../parser').


solution_20251228(A, B, C, D) :-
    Vs = [A, B, C, D],
    common_constraints(Vs),

    apply_clue('Exactly one of the first and third is odd', Vs),
    apply_clue('The sum of the first two is divisible by 5', Vs),
    apply_clue('The second is less than the third', Vs),
    apply_clue('The first two differ by four', Vs),
    apply_clue('The fourth is three less than the second', Vs),

    label(Vs).

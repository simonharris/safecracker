:- use_module('../safe_cracker').
:- use_module('../parser').


solution_20251130(A, B, C, D) :-
    Vs = [A, B, C, D],
    common_constraints(Vs),

    apply_clue('The second is greater than four', Vs),
    apply_clue('The fourth is odd', Vs),
    apply_clue('The third is three less than the fourth', Vs),
    apply_clue('The first is greater than the fourth', Vs),
    apply_clue('The sum of the second and fourth is divisible by five', Vs),

    label(Vs).

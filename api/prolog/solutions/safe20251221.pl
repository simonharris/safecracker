:- use_module('../safe_cracker').
:- use_module('../parser').


solution_20251221(A, B, C, D) :-
    Vs = [A, B, C, D],
    common_constraints(Vs),

    apply_clue('The first and fourth total nine', Vs),
    apply_clue('Exactly one of the second or third is odd', Vs),
    apply_clue('The third and fourth differ by more than three', Vs),
    apply_clue('Either the first or third (not both) is a factor of 20', Vs),
    apply_clue('The first and second total 13', Vs),

    label(Vs).

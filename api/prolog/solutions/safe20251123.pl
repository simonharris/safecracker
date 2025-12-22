:- use_module('../safe_cracker').
:- use_module('../parser').


solution_20251123(A, B, C, D) :-
    Vs = [A, B, C, D],
    common_constraints(Vs),

    % apply_clue('The sum of the digits is a square', Vs),
    apply_clue('Either the first or second is prime but not both', Vs),
    apply_clue('The fourth is twice the first', Vs),
    apply_clue('The fourth is less than the second', Vs),
    apply_clue('The second and third differ by two', Vs),

    label(Vs).

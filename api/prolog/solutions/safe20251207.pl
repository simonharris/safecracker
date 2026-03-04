:- use_module('../safe_cracker').
:- use_module('../parser').


solution_20251207(A, B, C, D) :-
    Vs = [A, B, C, D],
    common_constraints(Vs),

    apply_clue('The second is greater than three and less than eight', Vs),
    apply_clue('The sum of the first and third is greater than 13', Vs),
    apply_clue('Only one digit is odd', Vs),
    apply_clue('The third is prime', Vs),
    apply_clue('The third and fourth differ by three', Vs),

    label(Vs).

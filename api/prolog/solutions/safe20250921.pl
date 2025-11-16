:- use_module('../safe_cracker').
:- use_module('../parser').


solution_20250921(A, B, C, D) :-
    Vs = [A, B, C, D],
    common_constraints(Vs),

    %apply_clue('The sum of the digits is divisible by five', Vs),
    %apply_clue('The second is more than twice the first ', Vs),
    %apply_clue('At least one digit is divisible by three', Vs),
    %apply_clue('The second and fourth differ by a prime', Vs),
    apply_clue('The third is one less than the first', Vs),

    label(Vs).

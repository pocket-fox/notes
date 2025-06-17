#set quote(block: true)

= Probability

Probability is the likelihood of a given *event* occuring. By $P(E)$ we mean the
likelihood that event $E$ occurs in one repetition of the *experiment*.

The generalized formula for the probability of event $E$ is:
$
    P(E) = (|E|)/(|SS|)
$

For example, the probability of rolling an even number on a balanced d6:
$
    P("Even") = (|"Even"|)/(|"All possible outcomes"|) = (|{2, 4, 6}|)/(|{1, 2, 3, 4, 5, 6}|) = 3/6 = 1/2 = 0.5
$

Probabilities can be expressed as ratios ($1:2$), fractions ($1/2$), decimal
values ($0.5$), or percentages ($50%$).

== Axioms of Probability

1. Let $SS$ be the sample space, then $P(SS) = 1$
2. For any event $E$, $0 <= P(E) <= 1$
3. If events $A_1, A_2, ..., A_n$ are mutually exclusive
    ($A_i sect A_j = emptyset", for i" eq.not "j"$), then
    $P(A_1 union A_2 union ... union A_n) = P(A_1) + P(A_2) + ... + P(A_n)$

== Useful Properties

For any event $E$, $P(E) = 1 - P(E')$ and conversely, $P(E') = 1 - P(E)$

#quote(attribution: [PROOF])[
    Given $E union E' = SS$ and $E sect E' = emptyset$ $P(SS) = P(E union E')$
    by axiom 3, $P(E) + P(E') = 1 therefore P(E) = 1 - P(E')$
]

#hide[
    = Related
    #link("Event.typ")[Event]
    #link("Sample_Space.typ")[Sample_Space]
    #link("Experiment.typ")[Experiment]
    #link("Negation.typ")[Negation]
]

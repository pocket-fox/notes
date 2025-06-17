#import "/templates/permanent.typ": *
#show: style
#import "@preview/cetz:0.2.2"

= Conditional Probability

Conditional probabilities clamp down the *sample space* based on the condition
and ask you to find answers within the new space. The probability that event $B$
occurs given that event $A$ has already occured is written $P(B|A)$, and is
given by the following formula:
$
    P(B|A) = P(A sect B)/P(A) \
$

The above formula, when solved for $P(A sect B)$, additionally provides us with
the *multiplication rule*:
$
    P(A sect B) = P(A) dot P(B|A)\
    or\
    P(A sect B) = P(B) dot P(A|B)
$

== Probability Trees

Probability trees can provide a useful visual representation of some set of
conditional probabilites. Each branch represents the occurance of some event and
the probability at any given branch or leaf is given by multiplying the
probabilities from each previous branch.

#aside[Conditional probabilities must still adhere to the the 3 axioms of
    probability.
]

#hide[
    = Related
    #link("Probability.typ")[Probability]
    #link("Event.typ")[Event]
    #link("Sample_Space.typ")[Sample_Space]
    #link("Multiplication_Rule.typ")[Multiplication_Rule]
]

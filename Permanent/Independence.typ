#import "/templates/permanent.typ": *
#show: style

= Independence

*Events* $A$ and $B$ are independent if the *probability* of $B$, given that $A$
occurs, remains unchanged: $P(B|A) = P(B)$. As a direct result, it can be
inferred that $P(A|B) = P(A)$.

Additionally, it directly follows that the *negation* of the above definition
defines *dependence*. That is to say, events $A$ and $B$ are dependent if the
probability of $B$, given that $A$ occurs, changes: $P(B|A) eq.not P(B)$.

Example:\
Draw 1 card from a 52 card deck. Let:\
$K = "event 'King is drawn'"$\
$H = "event 'Heart is drawn'"$\
$C = "event 'Club is drawn'"$\
$B = "event 'Black is drawn'"$\
Determine whether the following events are mutaully exclusive, independent,
both, or neither:

1. H and B ($H union B$)
All hearts are red $therefore$ *mutually exclusive*
$
    P(H|B) = 0 eq.not P(H) therefore bold("dependent")
$

2. C and B ($C union B$)
All clubs are black $therefore$ *not mutually exclusive*\
$
    P(C|B) = (13/52)/(26/52) = 1/2 \
    P(C) = 13/52 = 1/4 \
    P(C|B) eq.not P(C) therefore bold("dependent")
$

3. K and H ($K union H$)
There exists at least one case where both events occur (king of hearts or king
of diamonds) $therefore$ *not mutually exclusive*
$
    P(K|H) = P(K sect H)/P(H) = (1/52)/(13/52) = 1/13 \
    P(K|H) = 1/13 \
    P(K) = 4/52 = 1/13 \
    P(K|H) = P(K) therefore bold("independent")
$

#hide[
    = Related
    #link("Set.typ")[Set]
    #link("Probability.typ")[Probability]
    #link("Negation.typ")[Negation]
    #link("Event.typ")[Event]
]

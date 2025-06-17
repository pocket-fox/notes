= Union

The union of sets $A$ and $B$, written $A union B$ is a third set containing all
members of its constituent sets. Union can be seen as taking the sum of two
sets, and is treated this way mathematically when calculating *probability*
$
    "Suppose " A = {1, 2, 3} " and " B = {2, 3, 4}. \
    A union B = {1, 2, 3, 4}
$

== Addition Rule

The *probability* that an event falls within set $A$ or set $B$ is given by:
$
    P(A union B) = P(A) + P(B) - P(A sect B)
$
However, if $A$ and $B$ are *mutually exclusive*, the sets have no
*intersection* by definition and the the $P(A sect B)$ term becomes $0$:
$
    P(A union B) = P(A) + P(B)
$

#hide[
    = Related
    #link("Probability.typ")[Probability]
    #link("Set.typ")[Set]
    #link("Event.typ")[Event]
    #link("Mutual_Exclusivity.typ")[Mutual_Exclusivity]
    #link("Intersection.typ")[Intersection]
]

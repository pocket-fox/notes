#import "/templates/permanent.typ": *
#show: style

= Intersection

The intersection of sets $A$ and $B$, written $A sect B$ is a third set
containing only the members present in both its constituent sets
simultaeneously.
$
    "Suppose " A = {1, 2, 3} " and " B = {2, 3, 4}. \
    A sect B = {2, 3}
$

== Multiplicaton Rule

If two *sets* are *independent*, the probability of a result falling within both
simultaneously is given by:
$
    P(A sect B) = P(A) dot.op P(B)
$
If the sets are *dependent*, the probability is given by:
$
    P(A sect B) = P(A) dot.op P(B|A)
$

#hide[
    = Related
    #link("Union.typ")[Union]
    #link("Set.typ")[Set]
    #link("Independence.typ")[Independence]
]

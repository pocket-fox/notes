#import "/templates/permanent.typ": *
#show: style

= Multiplication Rule

When working with *probabilities*, *intersection* can be seen as the
multiplication of two probabilites. However, this multiplication is only as
simple as normal multiplication, that is $a b = a dot b$, when the two *events*
are *independent*. In the general case the rule is:
$
    P(A sect B) = P(A) dot P(B|A)
$

This equation, when solved for $P(B|A)$ also provides us with the formula for
determining *conditional probability*

In the case where the events are independant $P(B|A) = P(B)$ and therefore we
return to standard multiplication:
$
    P(A sect B) = P(A) dot P(B)
$

#hide[
    = Related
    #link("Intersection.typ")[Intersection]
    #link("Independence.typ")[Independence]
    #link("Probability.typ")[Probability]
    #link("Conditional_Probability.typ")[Conditional_Probability]
]


#import "/templates/permanent.typ": *
#show: style

= Law of Total Probability

If you have some set $A$ within some *superset* ${B_n: n = 1, 2, 3, ...}$ (read:
a collection of sets) that is *mutually exclusive* and *collectively exhaustive*
(read: they wholly encompass the *sample space* without overlap, that is, they
*partition* it) then:
$
    A = sum_(0)^n A sect B_n \
    "(read: A can be defined as the union of each place where A and B overlap)" \
    therefore \
    P(A) = sum_(0)^n P(A sect B_n) \
$
And by the definition of *conditional probability*:
$
    P(A) = sum_(0)^n P(B_n) P(A|B_n)
$

#hide[
    = Related
    #link("Sample_Space.typ")[Sample_Space]
    #link("Set.typ")[Set]
    #link("Mutual_Exclusivity.typ")[Mutual_Exclusivity]
    #link("Partition.typ")[Partition]
    #link("Exhaustive.typ")[Exhaustive]
    #link("Conditional_Probability.typ")[Conditional_Probability]
]


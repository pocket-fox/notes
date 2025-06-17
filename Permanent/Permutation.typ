#import "/templates/permanent.typ": *
#show: style

= Permutation

A permutation is an ordering of some finite number of items from a set *without
replacement*. Such calculations are useful when considering card games like
*Magic the Gathering*. Permutations are usually considered in a counterpart to
or at least in tandem with *combinations*.

The formula for ordering $r$ items from a set of $n$ items is:
$
    ""_n P_r = (n!)/(n - r)!
$

Notably, the case in which you want to know how many possible ways there are to
order a given set of items is simply a permutation where $r = n$.
$
    ""_n P_n = (n!)/(n - n)! = n!/0! = n!/1 = n!
$

#aside[$0! = 1$, This is because there is exactly one way to order a set which
    containts nothing (the *empty set*), the way in which there is nothing.]

#hide[
    = Related
    #link("Combination.typ")[Combination]
    #link("Set.typ")[Set]
    #link("Event.typ")[Event]
    #link("Magic_the_Gathering.typ")[Magic_the_Gathering]
]

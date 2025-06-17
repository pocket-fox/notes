#import "/templates/permanent.typ": *
#show: style

= Bayes' Theorem

Bayes' Theorem serves to reverse the condition on which a statement of
*conditional probability* is centered. That is if you are working with the
$P(B|A)$, you can determine $P(A|B)$ assuming you also have $P(A)$ and $P(B)$
independently.
$
    P(A|B) = (P(B|A)P(A))/(P(B)) \
    "(so long as P(B)"eq.not"0)"
$

And applying the *Law of Total Probability*:
$
    P(A_i|B) = (P(B|A_i)P(A_i))/(sum_(i = 0)^n P(B|A_n))
$

Using the Law of Total Probability enables us to backfill a *probability tree*
given only partial information.

#hide[
    = Related
    #link("Law_of_Total_Probability.typ")[Law_of_Total_Probability]
    #link("Conditional_Probability.typ")[Conditional_Probability]
    #link("Probability_Tree.typ")[Probability_Tree]
]

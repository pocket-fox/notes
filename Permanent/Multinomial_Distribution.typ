#import "/templates/permanent.typ": *
#show: style

= Multinomial Distribution

Describes an experiment whereby a die is rolled $n$ times and we count the
number of times each face comes up, or put another way, we count the number of
each of the faces rolled when rolling $n$ dice. Essentially, multiple binomial
distributions counted simultaeneously where each binomial distribution tracks a
unique outcome.

== Probability Mass Function

Given the probabilities of $k$ possible outcomes $p_1, p_2, ..., p_k$, and the
number of trials to run, $n$, the _joint_ probability mass function is given by:
$
    P(Y_1 = y_1, Y_2 = y_2, ..., Y_k = y_k) = n! / (y_1! y_2! dots y_k!) p_1^y_1 p_2^y_2 dots p_k^y_k
$
such that $y_1 + y_2 + dots + y_k = n$ and $p_1 + p_2 + dots + p_k = 1$.




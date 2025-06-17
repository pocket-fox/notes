#import "/templates/permanent.typ": *
#show: style

= Variance

In the field of probability variance is a measure of *dispersion*, or how spread
apart from the average the items in the set are. In the general case, the
variance of a random variable is the *expected value* of the squared deviation
from the mean of the set $X$ where $mu = E(X)$.
$
    V(X) = E[(X - mu)^2]
$

Variance is occasionally represented differently, notably as the square of the
*standard deviation* from the mean: $sigma^2$

== Discrete Random Variable

Given some set $X$ with a *_pmf_* $p_X (x_i) = p_i$
$
    V(X) = sigma^2 = E[(x - mu)^2] = sum_(i=0)^n [(x_i - mu)^2 dot p_i]\
    or\
    E(X^2) - E(X)^2 = E(X^2) - mu^2
$

The second version of the equation, the _mean squared minus the squared mean_
representation, should be avoided when doing *floating point* math with
computers because it can suffer from *catastrophic cancellation* if the values
are of similar magnitudes.

Example:\
For the number of heads in 3 tosses of a coin.
#table(
    columns: 4,
    [$x$], [$p_i$], [$x dot p_i$], [$(x-mu)^2p_i$],
    [$0$], [$1/8$], [$0$], [$9/32$],
    [$1$], [$3/8$], [$3/8$], [$3/32$],
    [$2$], [$3/8$], [$6/8$], [$3/32$],
    [$3$], [$1/8$], [$3/8$], [$9/32$],
    [Sums], [$1$], [$3/2 = mu$], [?],
)
$
    V(X) = sum_(i = 0)^n = 9/32 + 3/32 + 3/32 + 9/32 = 24/32 = 3/4
$

#hide[
    = Related
    #link("Mean.typ")[Mean]
    #link("Standard_Deviation.typ")[Standard_Deviation]
]

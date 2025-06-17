#import "/templates/permanent.typ": *
#show: style

= Hypergeometric Distribution

Describes an experiment where you are counting the number of successes drawn
from a collection without replacement. The standard card game probability
calculation.

== Probability Mass Function

Given $n$ draws, without replacement, from $N$ items, such that $R$ of the
original population were successes. Let $Y$ be the number of successes in your
sample of $n$ draws, then $Y$ is given by:
$
    Y tilde.op H(N, R, n) \
    P(Y = y) = ( mat(R; y) mat(N-R; n-y) )/( mat(N; n) )
$

== Mean

The mean is given by:
$
    mu_Y = n(R/N)
$

== Variance

The variance is given by:
$
    sigma_Y^2 = n(R/N)((N-R)/N)((N-n)/(N-1))
$

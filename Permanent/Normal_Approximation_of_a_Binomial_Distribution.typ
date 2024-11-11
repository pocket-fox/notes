#import "/templates/permanent.typ": *
#show: style

= Normal Approximation of a Binomial Distribution

Because a binomial distribution can be seen as a sum of $n$ independent identically distributed
Bernoulli(p) random variables, application of the central limit theorem enables us to approximate a
binomial distribution with a normal distribution defined as such:
$
  T tilde.op "Binomial"(n, p) => Y tilde.dot N( n p, n p(1 - p) )
$
However, rather than a general rule about having a "sufficiently" large $n$, when approximating a
binomial distribution via a normal distribution, you must ensure $n$ is large enough that the
expected number of both successess and failures is greater than 10. That is:
$
  n p > 10 quad "&" quad n p(1 - p) > 10
$

== Continuity Correction

When using a normal approximation of a binomial distribution, you must account for the fact that the
binomial distribution is not continuous whereas the normal distribution is. Not accounting for this, due to the integration involved when calculating properties of a normal distribution, will result in
either under- or over-estimating those properties of the binomial. To account for the difference,
you shift or expand your initial boundary range(s) for the normal approximation by $0.5$. The
direction in which you make the correction is case dependant, drawing a visual representation of the
distribution is helpful in determining the direction to shift or expand the range(s).
$
  Y tilde.op "Bin"(n, p) &=> Y tilde.dot N(n p, n p(1 - p))
                         &approx "normalcdf"(a plus.minus 0.5, b plus.minus 0.5, n p, n(1 - p))
                         //TODO: verify that the above equation is correct
$

//TODO: include a visual of the graphing estimation

//TODO: make connections

#import "/templates/permanent.typ": *
#show: style

= Normal Approximation of a Poisson Distribution

Due to the Poissons relationship to the binomial, the fact that the sum of
independent Poisson distributions is itself Poisson, and the Central Limit
Theorem stating that sums of independent random variables is proximately
normally distributed, we can approximate Poisson distributions via the normal
distribution:
$
    X tilde.op "Poisson"(lambda) => X tilde.dot N(lambda, lambda)
$

== Contituity Correction

When using a normal approximation of a Poisson distribution, you must account
for the fact that the Poisson distribution is not continuous whereas the normal
distribution is. Not accounting for this, due to the integration involved when
calculating properties of a normal distribution, will result in either under- or
over-estimating those properties of the Poisson. To account for the difference,
you shift or expand your initial boundary range(s) for the normal approximation
by $0.5$. The direction in which you make the correction is case dependant,
drawing a visual representation of the distribution is helpful in determining
the direction to shift or expand the range(s).
$
    X tilde.op "Poisson"(lambda) &=> X tilde.dot N(lambda, lambda)
    &approx "normalcdf"(a plus.minus 0.5, b plus.minus 0.5, lambda, lambda)
    //TODO: verify that the above equation is correct
$

//TODO: include visual reference

//TODO: make connections

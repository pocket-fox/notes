#import "/templates/permanent.typ": *
#show: style

= Bernoulli Distribution

A Bernoulli trial is an experiment that has only 2 possible outcomes, imagine
flipping a coin. These outcomes historically have special names: _success_ and
_failure_; however, the names have no bearing on which outcome recieves which
label.

Let $X$ be some random variable, such that $X = 1$, if a trial is a success, and
$X = 0$ if it is a failure. We say $X$ is Bernoulli random variable, and it is
written:
$
    X tilde.op "Bernoulli"(p)\
    "where" p "is the probability of success"
$

== Probability Mass Function

#table(
    columns: 2,
    [$x$], [$p(x)$],
    [$0$], [$1 - p$],
    [$1$], [$pi$],
)

== Mean

Using the formula for mean, $mu = sum_(i=0)^n (x_i p_i)$:
$
    mu = p
$

#aside[
    The mean of a Bernoulli random variable is the equal to the success rate $p$
    of the Bernoulli trial.
]

== Variance

Using the formula for variance, $sigma^2 = sum_(i=0)^n (x_i^2 p_i - mu^2)$, we
find that $E(X^2) = sum_(i=0)^n x_i^2 p_i$. Then
$sigma^2 = sum_(i=0)^n (x_i^2 p_i - mu^2)$:
$
    sigma^2 = p - p^2 = p(1 - p)
$

#aside[
    The variance of the Bernoulli random variable is the product of the success
    and failure rates for the Bernoulli trial.
]

== Standard Deviation
$
    sigma = sqrt(p - p^2)
$

#hide[
    = Related
    #link("Mean.typ")[Mean]
    #link("Variance.typ")[Variance]
    #link("Standard_Deviation.typ")[Standard_Deviation]
    #link("Set.typ")[Set]
    #link("Sample_Space.typ")[Sample_Space]
    #link("Event.typ")[Event]
    #link("Experiment.typ")[Experiment]
    #link("Real_Numbers.typ")[Real_Numbers]
]

#import "/templates/permanent.typ": *
#show: style

= Continuous Random Variable

A continuous random variable is simply that: a variable which is both
*contiuous*, there exists an infinite number of values between any two integer
inputs, and a *random variable*, it serves to map numbers from $SS$ to $RR$.

== Probablity Density Function

Continuous random vairables have 2 unique properties that must hold true for
their probability density functions:
1. The PDF must be positive for all possible values of $x$:
$
    f(x) > 0, x in RR
$

2. The sum of all probabilities must equal 1 (100%):
$
    integral_(-oo)^oo f(x) d x = 1
$

The probability density function for continuous random variable $X$ is given by:
$
    P(X) = integral f(x) d x \
    P(a < x < b) = integral_a^b f(x) d x
$

== Mean

Conceptually, the *mean* of a continuous random variable is the result of
accounting for the $RR$ weight of each probability slice during integration.
Mathematically this is done simply by multiplying each probability slice by its
$RR$ weight:
$
    mu_X = integral_(-oo)^oo x f(x) d x
$

== Variance

The *variance* of a continuous random variable, as with most variances, is the
difference of squares:
$
    sigma^2 & = E(x - mu)^2      \
            & = E(x^2) - E(mu)^2 \
            & = E(x^2) - mu^2
$

#hide[
    #link("Continuous_Variable.typ")[Continuous_Variable]
    #link("Random_Variable.typ")[Random_Variable]
    #link("Mean.typ")[Mean]
    #link("Variance.typ")[Variance]
]

#import "/templates/permanent.typ": *
#show: style

= Negative Binomial Distribution

A coin is tossed until $r$ successes are observed, this can be seen as a
counterpart to the binomial distribution. Suppose $X$ is the number of
*independent* *Bernoulli trials* up to and including the $r^"th"$ success, then
$Y$ is a negative binomial distribution written:
$
    Y tilde.op "NB"(r, p)\
$

== Probability Mass Function

$
    P(Y = y) = mat(y - 1; r - 1) p^r (1 - p)^(y - r)
$

== Mean

The mean of a negative binomial distribution is given by the formula:
$
    r/p
$
and can be seen as the sum of the mean of $r$ independent *geometric variables*,
$X_i$:
$
    mu_Y & = mu_X_1 + mu_X_2 + dots.h.c + mu_X_r \
         & = (1/p) + (1/p) + dots.h.c + (1/p)    \
         & = r(1/p)                              \
         & = r/p                                 \
$

== Variance

The variance of a negative binomial distribution is given by the formula:
$
    sigma_Y^2 = r(1 - p)/p^2
$
and, as with the mean, can also be seen as the sum of the variance of $r$
independent geometric variables, $X_i$:
$
    sigma_Y^2 & = sigma_(X_1)^2 + sigma_(X_2)^2 + dots.h.c + sigma_(X_r)^2 \
              & = ((1 - p)/p^2) + ((1 - p)/p^2) + dots.h.c ((1 - p)/p^2)   \
              & = r((1 - p)/p^2)                                           \
              & = r(1 - p)/p^2
$

#pagebreak()

====== Example:\
Roll a fair die until the $4^"th"$ six is rolled.

Let $Y = "Number of rolls"$
$
    Y tilde.op "NB"(4, 1/6)
$

1. What is the probability the experiment terminates on the $20^"th"$ roll?
$
    P(Y = 20) & = mat(19; 3) (P("success"))^4 (P("failure")^16) \
              & = mat(19; 3) mat(1; 6)^4 mat(5; 6)^16
$

2. Find the mean ad standard deviation for the number of rolls until the
    $4^"th"$ success.
$
    mu_Y = E(Y) = 4/(1/6) = 24
$$
    sigma_Y & = sqrt(4(5/6)/(1/6)^2) \
            & = sqrt(20 dot 6)       \
            & = 11
$

#hide[
    = Related
    #link("Geometric_Distribution.typ")[Geometric_Distribution]
    #link("Mean.typ")[Mean]
    #link("Variance.typ")[Variance]
]

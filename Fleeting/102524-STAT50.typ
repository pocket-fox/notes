#import "/templates/permanent.typ": *
#show: style

= Normal Approx. to Binomial Dist

$T ~ "Bin"(n, p)$

If $n$ is sufficiently large, then $Y tilde.op N(n p, n p(1 - p))$.
- *sufficiently large* in this context means $n p > 10$, that is, there are suffienct trials such
that you expect to observe at least $10$ failures and $10$ successes in $n$ trials ("Rule of 10")

== Continuity Correction

Because the Binomial Distribution is discrete and the Normal is continuous, we must account for
that. This is done by using the outermost edge of the bucket (box) you intend to use to estimate
the distribution. E.g. if your target is to start at $8$, you would instead start your estimate at
$7.5$ given boxes of size $1$ centered on $mu$. This will in almost all cases mean, given target
$[x, y]$ you will use $[x - 0.5, y + 0.5]$ as your estimate.

The continuity correction can cause greater error when operating on the tails of a distribution.
The closer to the mean you are the more accurate a Normal approximation will be.

====== Example:\
$Y ~ "Bin"(10, 0.5)$
$
  P(Y >= 8) = 1 - P(Y <= 7) = 1 - "binomcdf"(10, 0.5, 7) = 0.0547 \
$
This can be estimated using the normal distribution $Y ~ N(5, 2.5)$
$
  P(Y >= 8) = "normalcdf"(8, oo, 5, sqrt(2.5)) = 0.0289 != 0.0547 \
  P(Y >= 7.5) = "normalcdf"(7.5, oo, 5, sqrt(2.5)) = ... approx 0.0547 //TODO: calculate this
$

====== Example:\
$
  Y = "# of defectives" \
  Y ~ "Bin"(120, 0.25) \
  n p eq.quest 30 > 10 #check() \
  n p(1 - p) eq.quest 90 > 10 #check() \
  => Y ~ N(30,...) \
  P(Y > 35) &approx "normalcdf"(35.5, oo, 30, sqrt(30(1/4)(3/4)))
            &approx 0.1231
$

#aside[The $35.5$ in the above equation comes from the Contintuity Correction]

= Normal approx. to the Poisson Dist

$Y ~ "Poisson"(lmabda)$

If $lambda$ is sufficiently large, in this case $lambda > 10$ then
$
  Y ~ "Poisson"(lambda) approx Y ~ N(lambda, lambda)
$

====== Example:\
$Y = "# of "alpha" particles in 5 min"$
$
  Y ~ "Poisson"(100), lambda = 100 > 10 #check() \
  Y ~ N(100, 100) \
  P(90 <= Y <= 100) &approx "normalcdf"(89.5, 100.5, 100, 10) \
                    &approx 0.3731

$


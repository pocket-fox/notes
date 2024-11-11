#import "/templates/permanent.typ": *
#show: style

= Central Limit Theorem

The distribution shape of a sample will approach that of a normal distribution as the number of samples increases regardless of the original distributions shape. Given some collection of
identically distributed independent random variables, $X_0, dots, X_n$, we can construct an average
distribution, $overline(X)$:
$
  overline(X) = (X_1 + X_2 + dots + X_n) / n
$
For large values of $n$, this distribution is approximately normal:
$
  overline(X) tilde.op N(mu, sigma^2 / n)
$

When we divide the sum of the sample distributions by $n$, we are constructing a distribution from
the average values of each sample. In doing so, we lose the distribution shape of the original
population; however, we produce an approximation of its mean and variance. This is useful when
working with a population for which it is impractical or even impossible to know true the state of.

Additionally, it is worth noting that each of the individual sample "distributions" need not be
large samples; in fact, the sample "distributions" are usually only a single data point. You need
not conduct multiple surveys of the population, a single sample population is sufficient.

====== Example:

Let $X$ be the salary of public school teachers in an area. A 64 person sample, $overline(X)$, is
taken from the population and it is found that the sample has a mean of \$48,000 and standard
deviation of \$8,000. What is the probability that a teacher has a salary greater than \$50,000?
$
  mu_overline(X) = \$48,000 \
  sigma_overline(X) = \$8,000 \
  P( overline(X) > \$50,000 ) = " ?"\
$$
  && overline(X) tilde.op N( 48,000, 8000^2 / 64 )         &&& "(1) Central Limit Theorem" \
  && "normalcdf"(50000, oo, 48000, 8000) &= 0.022750062  && "(2) Integrate"\
                                           &&&approx 0.0238 \
                                           &&&= 2.38%
$

== Application of CLT for Summation

This implies that sums of independent random variables are at least proximately normal. Given some
sequence of independent and identically distributed random variables $X_1, X_2, ..., X_n$, and an
adequately large sample size, each $X_i$ in the sum $S_n = X_1 + X_2 + dots + X_n$ can be
approximated by $overline(X)$. Therefore, $S_n = n overline(X)$, which can then be treated as a
proximately normal distribution:
$
  S_n tilde.op N(n mu_overline(X), n sigma_overline(X) ) quad "&" quad
  mu_S_overline(X) = n mu_overline(X)
$

//TODO: make connections

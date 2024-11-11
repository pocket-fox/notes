#import "/templates/permanent.typ": *
#show: style

= Sample Variance

Every parameter can be estimated by a statistic. True variance is given by
$sigma^2 = E[(X - mu)^2]$, the _mean squared deviation_ of $X$, and similarly the sample variance is
the _mean squared deviation of the sample_, where $overline(X)$ takes the place of the unkown
parameter $mu$. The sample variance is given by:
$
  S^2 = (sum_(i=1)^n (X_i - overline(X)^2))/(n - 1)
$

Of note: sample variance is an unbiased estimator of $sigma^2$

== Sample Standard Deviation

While this IS calculated as one would expect, sample standard deviation is a BIASED estimator of
$sigma$. The bias can largely be discounted in most cases, you must be aware of when the bias may
have an impact on your use case.

Sample standard deviation is given by:
$
  S = sqrt(S^2)
$

//TODO: make connections

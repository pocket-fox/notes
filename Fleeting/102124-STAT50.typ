#import "/templates/permanent.typ": *
#show: style

= The Central Limit Theorem

Let $overline(X) = (X_1 + X_2 + dots.h + X_n)/n$ where $X_i$ are independent and identically distributed. Then $overline(X)$ has mean $mu_overline(X) = mu$ and variance $sigma_overline(X)^2$. 

For large $n$, $overline(X) tilde.op N(mu, sigma^2/n)$ 

For this context, "large" means some $n >= 30"ish"$

Additionally, if the $X_i$ are normal, then $overline(X)$ is always normal by definition.

- we use a normal distribution $N(mu, sigma^2/n)$ to fit $overline(X)$
  - namely we use its own $mu$ and $sigma$
  - "if theres a normal distribution that fits... its probably the one using the functions own properties"

====== Example:\
Let $X$ be the salary of public school teachers in an area. The mean salary is \$48,000, the standard deviation is \$8,000.
$
  mu = \$48,000 \
  sigma = \$8,000 \
$
a) Let $overline(X)_64 = (X_1 + dots.h + X_64)/(64)$, what is the $P(overline(X)_64 > \$50,000)$
$
  "Then, by the Central Limit Theorem:" \
  overline(X)_64 tilde.op N(48000, 8000^2/64) \
  "normalcdf"(50000, "E99", 48000, 8000) = 0.022750062 //TODO: verify this example
$
b) Suppose you increase the sample size to 100, compare $P(overline(X)_100 > 50000)$ to $P(overline(X)_64 > 50000)$
$
  overline(X)_100 tilde.op N(48000, 8000^2/100) \
  "The distribution becomes less spread and the standard deviation shrinks" \
  = 0.0062096
$

#aside[TI-84 Plus CE \
update bios]

e) If you are given a prob. (area under curve) but dont have the mean
standard dev. then you need to go through the standard normal $ZZ tilde.op
N(0, 1)$. this will allow you to use inverse normal to get a z-score. A
z-score is "how many standard errors" above the mean so you can:
$
  \$49,000 = \$48,000 + 1.28(8000/sqrt(n))
$
and then solve for $n$

f) cant solve without knowing thw distribution of an individual teachers salary, that is we need $X$ not just $overline(X)$



#import "/templates/permanent.typ": *
#show: style

= t-Interval

A method for constructing a confidence interval for the mean of a distribution when the variance is
unknown. Additionally, this method is essentially a subset of using a z-score to estimate as it is
the case $lim(italic("df"), oo) t => Z$. You can construct t-intervals to be either one- or
two-sided.

The t-distribution is very similar to the standard normal distribution $Z tilde.op N(0, 1)$, with
some minor differences:
1. uses _degrees of freedom_, abbreviated _df_, rather than the sample size $n$
  - however, _df_ is always derived from $n$ in some way
2. has a greater spread than the standard normal distribution

Given a *point estimate* of the mean, $overline(X)$, the *t-score* corresponding to the
$plus.minus (alpha/2)100^"th"$ percetiles of $T tilde.op t(italic("df"_(n-1)))$, and the
*sample standard deviation*, $S$, the confidence interval estimator of the mean of $X$,
$overline(X)_t$ is given by:
$
  overline(X) plus.minus t_(alpha/2 ,n-1) S/sqrt(n)
$

//TODO: include visual of the Z ~ N(0, 1) graph and its corresponding parts

== t-Score

Found by either using a t-table or using the inverse t distribution. Given target a confidence level
$alpha dot 100%$ and the degrees of freedom $italic("df")$:
$
  t = "invT"( (1 - alpha), italic("df") )
$

== Margin of Error

The part of the above formula following the $plus.minus$ ($t_(alpha/2 ,n-1) S/sqrt(n)$) is known as
the *Margin of Error*. So, another way you may see the confidence interval written might be:
$
  overline(X) plus.minus E
$

#hide[
  = Related
  #link("Sample_Variance.typ")[Sample_Variance]
  //TODO: make connections
]

#import "/templates/permanent.typ": *
#show: style

= Z-Interval

A methodology for constructing a *confidence interval* for the *mean* of a distribution when the
*standard deviation* is known.

== Mean

Given a *point estimate* of the mean, $overline(X)$, the *z-score* corresponding to the
$plus.minus (alpha/2)100^"th"$ percetiles of $Z tilde.op N(0, 1)$, the *parameter* for the standard 
deviation, $sigma$, and the *sample size*, $n$, the confidence interval estimator of the mean of
$X$, $overline(X)_z$ is given by:
$
  overline(X) plus.minus z_(alpha/2) sigma/sqrt(n)
$

//TODO: include visual of the Z ~ N(0, 1) graph and its corresponding parts

The part of the above formula following the $plus.minus$ ($z_(alpha/2) sigma/sqrt(n)$) is known as
the *Margin of Error*. So, another way you may see the confidence interval written might be:
$
  overline(X) plus.minus E
$

//TODO: make connections

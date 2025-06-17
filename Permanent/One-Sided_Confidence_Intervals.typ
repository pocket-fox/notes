#import "/templates/permanent.typ": *
#show: style

= One Sided Confidence Intervals

Both *z-intervals* and *t-intervals* can be adjusted to construct one-sided
intervals if you only require information regarding the upper or lower bound of
your target parameter. This is useful as it will allow us to have greater
confidence in our stated interval.

The requisite modification is simple: when calculating the z- or t-score for the
confidence interval, you simply use $alpha$ directly rather than $alpha/2$. So
the confidence intervals for a one sided interval are given by:
$
    overline(X) plus.minus t_(alpha ,n-1) S/sqrt(n) quad "&" quad
    overline(X) plus.minus z_(alpha) sigma/sqrt(n)
$

//TODO: make connections


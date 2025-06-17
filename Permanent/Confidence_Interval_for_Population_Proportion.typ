#import "/templates/permanent.typ": *
#show: style

= Confidence Intervals for Population Proportion

The confidence interval for a population proportion estimate is given by:
$
    hat(p) plus.minus z_(alpha/2) sqrt((hat(p)(1 - hat(p)))/n)
$

== With Historical Data

If you have some previous value of $p$, a previous survey for example, that is
you can suspect is reasonably accurate, the confidence interval is given by:
$$

//TODO: make connections

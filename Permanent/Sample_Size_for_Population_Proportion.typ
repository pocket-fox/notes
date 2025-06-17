#import "/templates/permanent.typ": *
#show: style

= Sample Size for Population Proportion

The sample size, $n$, neccessary to estimate a population proportion with
$(1 - alpha)100%$ confidence that is within $E$ percent of true is given by:
$
    n = 0.25(z_(alpha/2)/E)^2
$

== Historical Data

Given some $tilde(p)$, an estimate of $p$ that you can suspect is reasonably
accurate, a recent previous survey for example, the sample size $n$ is can be
reduced and is given by:
$
    n = tilde(p)(1 - tilde(p))(z_(alpha/2)/E)^2
$

//TODO: make connections

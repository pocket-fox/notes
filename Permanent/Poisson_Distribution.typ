#import "/templates/permanent.typ": *
#show: style

= Poisson Distribution

Describes an experiment in which we count the number of events that occur over an interval $t$. This interval could be an interval of any kind, time (in 5 seconds), space (over the course of 5 meters), etc. The events must occur with a constant rate $lambda$, disjoint intervals must be independent, and events cannot occur simultaeneously.

== Probability Mass Function

Given the frequency with which the event occurs, $lambda$, and a target number of events to be observed $x$. The probability that $x$ events occur in an interval of _unit_ length (i.e. length of $1$) is given by:
$
  P(X = x) = (lambda^x / x!) e^(-lambda)
$
for $x = 0, 1, 2, ...$

== Mean

The mean is given by:
$
  mu_X = lambda
$

== Variance

The variance is given by:
$
  sigma_X^2 = lambda
$

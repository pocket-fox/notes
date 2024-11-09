#import "/templates/permanent.typ": *
#show: style

= Exponential Distribution

A distribution describing the distance between *events* in a *Poisson Distribution*. That is,
distance between events in a process where events occur *independently* at a constant average
rate. The exponential distribution is a particular instance of the *Gamma Distribution* and is the
continuous equivalent of the *Geometric Distribution*.

$
  T tilde.op "Exp"(lambda) quad
  f(t, lambda) = cases(0                 &"," t <= 0,
                       1 - e^(-lambda t) &"," t > 0) quad
  mu = 1/lambda space (= sigma) quad
  sigma^2 = 1/lambda^2 quad
  F(m) = mu
$

== Memorylessness Property

The exponential distribution has a special property unique to itself which, when interpreted in the
context of $T$ as a waiting time between events, implies the following:

If $T$ describes a failure to observe some event over a period of time $s$, the likelihood that the
event is observed at some later time $s + t$ is the same as the likelihood that it is observed $t$
time from age $0$. That is to say, the past has no bearing on future probabilities.

#hide[
  = Related
  #link("Event.typ")[Event]
  #link("Experiment.typ")[Experiment]
  #link("Poisson_Distribution.typ")[Poisson_Distribution]
  #link("Independence.typ")[Independence]
  #link("Gamma_Distribution.typ")[Gamma_Distribution]
  #link("Geometric_Distribution.typ")[Geometric_Distribution]
]

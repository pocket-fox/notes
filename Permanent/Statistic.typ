#import "/templates/permanent.typ": *
#show: style

= Statistic

The values we use to serve in place of the *parameters* of *distributions* found by doing 
calculations on *samples*. For every parameter there is a statistic to estimate it. Statistics are 
random variables computed from the sample.

Statistics are composed of two parts:
1. _point estimator_: The value that represents our best guess at the true value of a parameter
2. _interval estimator_: A measure describing the range of values within which the point estimator
could lie. Intervals are always accompanied by a percent confidence value, representing the
likelihood the point estimator is within the interval estimator.

#hide[
  = Related
  #link("Confidence_Interval.typ")[Confidence_Interval]
]

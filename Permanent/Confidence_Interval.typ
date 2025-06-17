#import "/templates/permanent.typ": *
#show: style

= Confidence Interval

A rule for constructing the _interval estimate_ of a *statistic* that takes the
form of an interval on the number line with an associated _coverage
probability_. The coverage probability is the percentage value describing the
likelihood the _point estimate_ falls within the given range.

Rather notably, it is impossible to calculate a coverage probability of $100%$
($1 - alpha = 0$), and as a result there will always exist some likelihood that
the true value of your target parameter falls outside your calculations.

== Methods for Calculating Confidence Interval

1. Confidence Intervals for $mu$ when $sigma$ is Known: *z-Intervals*
2. Confidence Intervals for $mu$ when $sigma$ is Unknown: *t-Intervals*

#hide[
    = Related
    #link("z-Interval.typ")[z-Interval]
    #link("t-Interval.typ")[t-Interval]
]

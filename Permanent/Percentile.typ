#import "/templates/permanent.typ": *
#show: style

= Percentile

The $k^"th"$ percentile of a distribution is the subset of members of the distribution below which lies $k%$ of the total population. If a member of the population is "within / in / above" the $k^"th"$ percentile that member is _above_ $k%$ of the population. In this context, _above_ need not necessarilly mean a greater number by value; for example, the population may be a measure of a members proximity to $0$ in a game where a higher score is better. A member in the $99^"th"$ percentile of such a population would be an exceptionally poor scorer.

This can be expressed numerically as a likelihood of falling within a particular percentile or as the value over which one falls into the percentile. Given a continuous random variable $overline(X)$, the $p^"th"$ percentile, $x_p$, is given by:
$
  F(x_p) = P(X <= x_p) = p/100
$

== Noteworthy Percentiles

The *median*, $m$, of a population is the $50^"th"$ percentile, or the value which exactly half the population is greater than and half the popultaion is less than. The median can technically be seen as the second *quartile* of the distribution as well; however, this nomenclature is rare.
$
  P(X <= x_p) = 0.5
$

The first and third *quartile* of a population are the $25^"th"$ and $75^"th"$ percentiles respectively.
$
  P(X <= x_p) = 0.25 quad & quad P(X <= x_p) = 0.75
$

#hide[
  = Related
  #link("Probability.typ")[Probability]
  #link("Median.typ")[Median]
  #link("Quartile.typ")[Quartile]
  #link("Distribution.typ")[Distribution]
]



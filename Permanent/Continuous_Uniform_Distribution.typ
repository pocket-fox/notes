#import "/templates/permanent.typ": *
#show: style

= Continuous Uniform Distribution

A distribution where every outcome is equally likely. Examples of such experiments are: rolling a
die, pulling a single card from a deck, or the sex of a child.

$
  X tilde.op U(a, b) quad mu = (a + b)/2 quad f(x) = cases(0 &", " x <= a, k &", " a < x < b, 0 &",
  " x >= b) quad F(x) = cases(0 &", " x <= a, integral_a^b k space d t &", " a < x < b, 0 &", " x
  >= b)
$

#hide[
  = Related
  #link("Probability.typ")[Probability]
  #link("Experiment.typ")[Experiment]
]

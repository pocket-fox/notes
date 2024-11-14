#import "/templates/permanent.typ": *
#show: style

= Geometric Distribution

Supposing $X$ is the number of independent *Bernoulli trials* up to and including the $1^"st"$ success, then $X$ has a geometric distribution. We are counting the number of coin flips until a success. This is written:
$
  X tilde.op "Geom"(p)\
  "with probability mass function"\
  P(X = x) = (1 - p)^(k - 1)p
$


This distribution has the following *contingency table*:
#table(columns: 3,
[$x$],      [$P(X = x_i)$],        [$"Sequence"$],
[$1$],      [$p$],                 [$"S"$],
[$2$],      [$(1 - p)p$],          [$"FS"$],
[$3$],      [$(1 - p)^2 p$],       [$"FFS"$],
[$dots.v$], [$dots.v$],            [$dots.v$],
[$x$],      [$(1 - p)^(x - 1) p$], [$"FF...S"$]
)

== Mean
$
  mu_X = 1/p
$

== Variance
$
  sigma_X^2 = (1 - p)/p^2
$

#hide[
  = Related
  #link("Bernoulli_Distribution.typ")[Bernoulli_Distribution]
  #link("Contingency_Table.typ")[Contingency_Table]
  #link("Mean.typ")[Mean]
  #link("Variance.typ")[Variance]
]

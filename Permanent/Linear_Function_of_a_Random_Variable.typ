#import "/templates/permanent.typ": *
#show: style

= Linear Function of a Random Variable

Given a *random variable* $X$ with *probability mass function* $p_X (x)$, mean $mu_x$, and variance $sigma_x^2$. Let $Y = a X + b$, where $a$ and $b$ are constants. Then $Y$ is a linear function of $X$.

#aside[
  The probablility mass function of $Y$ adopts the probabilities from the probability mass function of $X$
]

A linear function of $X$ has no bearing on $X$ itself, see it as a function that is simply using $X$ as an input. No different from $f(x) = a x + b$; just $x$ in this case takes on values from the set $X$.

Example:\
Let $X$ be the number of heads in 3 tosses of a coin. Let $Y = 3X - 5$ be the number of dollars you win.
#table(columns: 4,
  [$x_i$], [$p_i$], [$y_i$],  [$P(y_i)$],
  [$0$],   [$1/8$], [$\$-5$], [$1/8$],
  [$1$],   [$3/8$], [$\$-2$], [$3/8$],
  [$2$],   [$3/8$], [$\$1$],  [$3/8$],
  [$3$],   [$1/8$], [$\$4$],  [$1/8$],
)

#import "/templates/permanent.typ": *
#show: style

= Hypothesis Test

Given some Null and Alternate Hypotheses, we can determine whether to accept the
alternative hypothesis or let the null hypothesis stand. To do so we use a
z-test, which relies on aquiring a z-value, and therefore has the same
constraints as a z-interval: the distribution we are testing must be normal or
our sample distribution must be of sufficient size to otherwise do our analysis.

To actually evaluate the "correctness" of the alternative hypothesis, we compare
its *probability value*, or p-value, $hat(p)$, to our desired confidence level,
$alpha$. If $hat(p)$ is less than or equal to $alpha$, $hat(p) <= alpha$, we can
conclude that the evidence is sufficient to accept $H_A$ and thereby reject
$H_0$.

== How To

1. Identify $H_0$ & $H_A$, the hypotheses
2. Select an $alpha$, the _significance level_ of the test
3. Draw a picture summarizing the test
4. Find $hat(p)$

#hide[
    = Related
    #link("Probabolity_Value.typ")[Probabolity_Value]
]



#import "/templates/permanent.typ": *
#show: style

= Cumulative Distribution Function

Where the *probability mass function* is $p_X (x) = P(X = x)$, the cumulative
distribution function, abbreviated _cdf_, is defined as:
$
    F_X (x) = P(X <= x)
$

The resulting graph is similar to a graph of the _pmf_; however, the output of
the _cdf_ increases as you move along the x-axis because you are summing all
previous probablities when adding each new point. This will result in a
non-continuous graph.


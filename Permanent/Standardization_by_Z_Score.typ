#import "/templates/permanent.typ": *
#show: style

= Standardization by Z Score

The measure most typically used for standardiztion is the standardized value, or
z-Score. A *samples* z-Score is a measure of how many standard deviations above
or below the *mean* its own mean is. So, a z-Score of 1.2 implies that the
sample distribution is 1.2 standard deviations above the mean of its source
distribution.

Given some sample distribution, $x$, the z-score is given by:
$
    z = (x - mu)/sigma
$

We can also standardize an entire distribution using the same formula:
$
    Z = (X - mu)/sigma
$

Doing so results in a form of the standard normal distribution that has been
scaled by the source distributions standard deviation and shifted by its mean.

#hide[
    = Related
    #link("Standardization.typ")[Standardization]
    #link("Random_Sample.typ")[Random_Sample]
]

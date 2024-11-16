#import "/templates/permanent.typ": *
#show: style

= Probability Value

The probability value for some *alternate hypothesis* $H_A$ is simply the title given to the
probability of $H_A$. As such, calculating the probability of $H_A$ is done by finding the area
under the distribution in question. We use the ```normalcdf``` with the desired bounds based on the
terms of the hypothesis.

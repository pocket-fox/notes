#import "/templates/literature.typ": *
#show: style

= Chapter 7

== 7.0 Confidence Intervals

*Parameter*: A constant related to some variable; usually unkown. Examples would be $mu$ and
$sigma$.

It is often impractical or even impossible to sample every member of a target population so we use
samples drawn from the population in question to derive our parameters. The rest of this class will
assume that samples drawn are *Simple Random Samples*.

*Simple Random Sample*: An *independent* and *identically distributed* random variable

Simple random samples are rarely good estimators of real-world problems but will be employed in this
class for ease of use.

*Point Estimator*: The particular statistic we denote as an estimated value of a parameter based on
the sample.

*Interval Estimator*: Intervals about a point estimator whose width is a measure of the estimator’s
precision are called Interval Estimators .Because a point estimator _is_ only an estimate, there
must exist a measure of its accuracy. Such a measure is typically represented by an interval. The
goal is to be able to specify a particular probability with which the estimator will fall within
the interval.

*Confidence Interval*: The rule by which the interval estimator will be constructed to meet the
requisite likelihood of falling within the chosen interval.

The specified probablity of the parameter falling within the specified interval is called the
*coverage probability* of the interval.

== 7.1 Confidence Intervals for the Mean when Variance is Known

#quote(attribution:[page 110])[
  *Example*: A lab procedure for measuring the speed of light in a vacuum, c, is known to have a
  standard deviation of 8 km/s. If 16 measurements of the speed of light are taken, and measurements
  are independent and normally distributed, find an interval, centered on the sample mean, that
  has probability  0.95 of containing the true speed of light c, assuming there is no systematic
  bias to the measurement  procedure. (Systematic bias, the tendency to systematically under-
  or overestimate the parameter, is what  you are attempting to eliminate when you calibrate an
  instrument prior to taking measurements with it.) ...
  
  *Solution*: The following events are equivalent representations of the distance inequality $|
  bar(X) - mu| < k sigma/sqrt(n)$, which is the event that the Estimator $bar(X)$ and the parameter
  $mu$ that it estimates are within $k$ standard errors of each other. Solving the distance
  inequality for $bar(X)$ and $mu$ in turn yields the following equivalent events:

  - $bar(X)$ is within $k$ standard errors of the mean, ${mu - k sigma/sqrt(n) < bar(X) < mu + k
  sigma/sqrt(n)}$

  - The mean is within $k$ standard errors of $bar(X)$, ${bar(X) - k sigma/sqrt(n) < mu < bar(X) + k
  sigma/sqrt(n)}$

  (An analogy works as well: John is within 10 meters of Mary _iff_  Mary is within 10 meters of
  John!)

  We’ll use the first bullet above, and the normally distributed lab measurements X, to derive
  our Interval Estimator of $mu$ from the second bullet. From the ‘68-95-99.7 Rule’ for normal
  distributions, we expect the sample mean to be within two standard errors of the true mean with
  approximate probability 0.95. So,
  $
    P(mu - 2 8/sqrt(16) < bar(X) < mu + 2 8/sqrt(16)) approx 0.95 "(Bullet 1), and" P(bar(X) - 2 8/
    sqrt(16) < mu < bar(X) + 2 8/sqrt(16)) approx 0.95 "(Bullet 2)"
  $
  Finally, $P(bar(X) - 4 < mu < bar(X) + 4) approx 0.95$ leads to our Interval Estimator for the
  speed of light in a vacuum, $bar(X) plus.minus 4$, in kilometers per second.

  *Note*: The Interval Estimator above is a _random_ interval because it is centered on the random
  variable $bar(X)$ (until the measurements are taken, when it becomes the _fixed_ interval $bar(x)
  plus.minus 4$ calculated from the data).

  *Example*: Suppose the 16 measurements of the speed of light in a vacuum average 299,795 km/s.
  Then the interval $bar(x) plus.minus 4$ estimates that $c$ lies between 299,791 km/s and 299,799
  km/s.
]

The above example demonstrates a rough generation of the Interval Estimator by making use of the fact that the provided example requested an Interval of the $95^("th")$ percentile and we have a special rule for 68, 95, and 99.7 percentiles. The generation of the Estimator was done by, first, recognizing that distance inequality can be alternatively interpreted as a statement which places bounds on the range of possible values of $bar(X)$ and thus $mu$ as well. Then, recognizing that $bar(X)$ should be within approximately 2 standard deviations of the mean by the 68+95-99.7 rule we can remove all unknown variables from the equation and identify our Interval.

== 7.1.1 Confidence Intervals for $mu$ when $sigma$ is known (z-Intervals)

Given the following:
1. A simple random sample is selected from variable $X$
2. $bar(X)$ can be treated as being normally distributed (either because it is or our sample size is large enough)
3. We know the variance ($sigma^2$) of the distribution

We can determine the $(1 - alpha) dot 100%$ Confidence Interval Estimator of the mean of $X$ using the formula:
$
  bar(X) plus.minus z_(alpha/2) sigma/sqrt(n)
$
where $-z_(alpha/2)$ and $z_(alpha/2)$ are the $(alpha/2) dot 100^"th"$ and $(1-alpha/2) dot 100^"th"$ percentiles of $Z ~ N(0, 1)$.

The systematic approach provided here as it applies to the example from the previous section:

Given 16 measurements ($n = 16$), a standard deviation of 8 km/s ($sigma = 8$), and the goal of finding the interval that has a 95% chance of containing the true value ($P(mu - z < mu < mu + z) = 0.95$), we can identify $z$ as follows:
$
  95% = (1 - alpha) dot 100% &=> (1 - alpha) = 0.95 \
                             &=> alpha = 0.05 \
                             &=> alpha/2 = 0.025 \
$$  therefore $$
  z_(alpha/2) = italic("invNorm")(0.025, 0, 1) = 1.96 &=> -z_(alpha/2) = -1.96 \
$$  therefore $$
  "A " 95% "Confidence Interval Estimator of the true speed of light has the form:" \
  bar(X) plus.minus 1.96(8/sqrt(16)) 
$

== 7.1.2 Interpreting Confidence Intervals

Without taking a sample, the likelihood that the mean is within the confidence interval is given by the *Coverage Probability* ($1 - alpha$). After taking the sample, the observed mean will either be within the interval or not; therefore, we cannot speak to the true value of the mean, only the likelihood of its value.

== 7.1.3 Sample Size

*Margin of Error ($E$)*: The distance from the sample mean to the bounds of the interval estimate. Given by:
$
  E = z_(alpha/2)(sigma/sqrt(n))
$

This is the name for the value we solved for in the previous two sections. Additionally, having this equation enables us to solve for any variable within given the values of the rest. Namely, we can solve for the requisite sample size ($n$) given a target margin of error.

#quote(attribution:[page 112])[
  *Example*: For the problem of estimating the speed of light in a vacuum, how many measurements should be taken to be able to determine the speed of light to within $1$ km/s with probability $0.90$? 

  *Solution*: We are asked to limit the margin of error to $1$ km/s in a 90% confidence interval, where $sigma = 8$km/s is known. Solving for the sample size $n$ in the equation for the margin of error,
  $
    n >= [((1.645)(8))/(1)]^2 = 173.19, "or" n = 174
  $
]

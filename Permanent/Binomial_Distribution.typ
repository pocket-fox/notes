#import "/templates/permanent.typ": *
#show: style

= Binomial Distribution

A binomial distribution is a series of Bernoulli trials, that is, a series of coin flips with a constant probability for each outcome, where we are counting the number of successes. For an *experiment* to officially qualify as binomial, it must meet _all_ the following conditions:

1. Fixed number of trials ($n$)
2. Each trial must result in either a success or failure (each experiment must be *Bernoulli trial*)
3. Success rate per trial is constant ($p$)
4. Trials must be independent

== Probability Mass Function

A *binomial random variable* is defined as follows: Let $Y$ describe the number of successes in a binomial experiment. Then $Y$ is a binomial random variable with parameters $n$, being the number of trials, $y$, the number of successes (or desired success), and $p$, the probability of any particular expermient resulting in success; and can be written:
$
  Y tilde.op "Bin"(n, p)\
  \
  P(Y = y_i) = mat(n; y) p^y (1 - p)^(n - y), y in {0, 1, 2, ..., n}
$

====== Example:\
For each of the following, state whether a binomial random variable may be defined. If so, define the distribution and identify $n$ and $p$. If not, state which condition was not met.

1. Toss a coin 10 times.
  1. Fixed number of trials #check()
  2. Each trial must result in either a success or failure #check()
  3. Success rate per trial is constant #check()
  4. Trials must be independent #check()
$
  Y tilde.op "Bin"(10, 1/2)
$

2. Roll a die 10 times.
  1. Fixed number of trials #check()
  2. Each trial must result in either a success or failure #cross()
  3. Success rate per trial is constant #check()
  4. Trials must be independent #check()

3. Roll a die 10 times, count the number of 3s rolled.
  1. Fixed number of trials #check()
  2. Each trial must result in either a success or failure #check()
  3. Success rate per trial is constant #check()
  4. Trials must be independent #check()
$
  Y tilde.op "Bin"(10, 1/6)
$

4. Toss a coin until 10 heads are observed.
  1. Fixed number of trials #cross()
  2. Each trial must result in either a success or failure #check()
  3. Success rate per trial is constant #check()
  4. Trials must be independent #check()
#pagebreak()  
5. Toss a loaded coin 10 times. (coin has probability $p$ of landing on heads)
  1. Fixed number of trials #check()
  2. Each trial must result in either a success or failure #check()
  3. Success rate per trial is constant #check()
  4. Trials must be independent #check()
$
   Y tilde.op "Bin"(10, p)
$

====== Example:\
12 CA voters are to be randomly selected for a focus group. 25% of CA are registered republican.

1. What is the probability that exactly $4$ are republican?

Let $Y = "number of republicans"$\
Then $Y tilde.op "Bin"(12, 0.25)$
$
  P(Y = 4) &= 12!/(4!8!) (0.25)^4 (0.75)^8\
           &= 0.1935777068
$

== Mean

#aside[Let $Y = X_1 + X_2 + dots.h + X_n$, where $X_i = 1$ if the $i^"th"$ trial is a success, and $X_i = 0$ if the trial is a failure. Where each $X_i$ is an independent Bernoulli trial with probability $p$.]

The mean of a binomial distribution is given by the sum of the means of its constituent Bernoulli trials.
$
  mu_Y &= p + p + dots.h + p\
       &= n p
$

== Variance

#aside[Let $Y = X_1 + X_2 + dots.h + X_n$, where $X_i = 1$ if the $i^"th"$ trial is a success, and $X_i = 0$ if the trial is a failure. Where each $X_i$ is an independent Bernoulli trial with probability $p$.]

The variance of a binomial distribution is given by the sum of the variances of its constituent Bernoulli trials.
$
  sigma_Y^2 &= p(1 - p) + p(1 - p) + dots.h + p(1 - p)\
            &= n p(1 - p)
$

#hide[
  = Related
  #link("Bernoulli_Distribution.typ")[Bernoulli_Distribution]
  #link("Experiment.typ")[Experiment]
]

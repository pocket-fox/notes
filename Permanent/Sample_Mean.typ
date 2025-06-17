#import "/templates/permanent.typ": *
#show: style

= Sample Mean

For every *parameter* we wish to estimate, there is a *statistic* that can be
used to estimate it. The statistic used to estimate the parameter is called the
sample mean and is denoted $overline(X)$ and is defined as:
$
    overline(X) = (X_1 + X_2 + dots.h.c + X_n)/n
$

== Mean

When a statistic is equal to what it is trying to estimate, we say that the
sample mean, $overline(X)$, is an _unbiased estimator_.
$
    mu_overline(X) & = 1/n mu_X_1 + 1/n mu_X_2 + dots.h.c 1/n mu_X_n \
                   & = 1/n (mu_X_1 + mu_X_2 + dots.h.c + mu_X_n)     \
                   & = 1/cancel(n) (cancel(n) mu_X)                  \
                   & = mu_X
$

== Variance

Assuming all $X_i$ are independent:
$
    sigma_overline(X)^2 &= (1/n)^2 sigma_X_1^2 + (1/n)^2 sigma_X_2^2 + dots.h.c + (1/n)^2 sigma_X_n^2\
    &= (1/n)^2(sigma_X_1^2 + sigma_X_2^2 + dots.h.c + sigma_X_n^2)\
    &= (1/n^2)(n sigma_X^2)\
    &= sigma_X^2/n
$

== Standard Deviation

The standard deviation of the sample mean is called the _standard error_ (of the
sample mean), or the _uncertainty in the estimate_.
$
    sigma_overline(X) = sigma/sqrt(n)
$

#pagebreak()

Exmaple:\
Houeshold incomes for a state have mean \$48,580 with a standard deviation
\$14,400. If 36 households are to be randomly selected, find the mean and
standard deviaiton for the sample mean. $
    "Let" X & = "household income in \$" \
         mu & = \$48,580                 \
      sigma & = \$14,400                 \
$$
    "Then" overline(X) &= (X_1 + X_2 + dots.h.c + X_36)/(36)\
    "has mean," mu_overline(X) &= \$48,580\
    "and standard deviation," sigma_overline(X) &= (\$14,400)/sqrt(36) = \$2,400
$

#hide[
    = Related
    #link("Mean.typ")[Mean]
    #link("Variance.typ")[Variance]
    #link("Standard_Deviation.typ")[Standard_Deviation]
    #link("Parameter.typ")[Parameter]
    #link("Statistic.typ")[Statistic]
]

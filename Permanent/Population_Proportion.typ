#import "/templates/permanent.typ": *
#show: style

= Population Proportion

An estimate of the fraction of a population with a particular characteristic,
$p$, from a sample is given by:
$
    hat(P) = Y / n quad "&" quad Y tilde.op "Bin"(n, p)
$

$hat(p)$ is an unbiased estimator of $p$, therefore $mu_hat(p) = p$.

== Variance

The variance is given by:
$
    sigma_hat(p)^2 = (p(1 - p))/n
$

//TODO: make connections

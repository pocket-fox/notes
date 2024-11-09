#import "/templates/permanent.typ": *
#show: style

= Group Mean 

The group mean is a sum of each possible individual items in the *set* weighted by its probability of occurance. Where $x$ is some item in the set $X$ and $p(x)$ is the likelihood that $x$ occurs:
$
  mu_X = sum_(i=0)^n (x_i dot p(x_i))
$

It is similar to the *arithmetic mean*, in fact, the arithmetic mean approaches the group mean as the number of items in the set increases.


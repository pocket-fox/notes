#import "/templates/permanent.typ": *
#show: style

= Linear Functions of Normal Random Variables

Given some distribution $X$ that is, or can be treated as, normally distributed, any distributions
defined as a linear function on $X$ is itself normally distributed with the form:
$
  Y tilde.op (a mu + b, a^2 sigma^2)
$

== Linear Combinations of Normal Random Variables

Following from the linearity of linear functions of normal random variables, linear combinations of
a collection of independent normal random variables are also normally distributed.

Given some distribution $Y$, defined as a linear combination of $n$ independent and normally
distributed random variables $X_n$, that is $Y$ takes the form $Y = c_1 X_1 + c_2 X_2 + dots + c_n X_n$,
then $Y$ can be defined as:
$
  Y tilde.op N(c_1 mu_1 + c_2 mu_2 + dots + c_n mu_n, c_1 sigma_1 + c_2 sigma_2 + dots + c_n sigma_n)
$

//TODO: finish note

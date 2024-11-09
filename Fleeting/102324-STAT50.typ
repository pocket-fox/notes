#import "/templates/permanent.typ": *
#show: style

= Central Limit Theorem & Sums

The central limit theorem implies, with regards to sums, that they are at least proximately normal... so $S_n = n( (X_1 + dots.c + X_n) / n )$ which implies
$
  S_n = n overline(X) wide "&" wide mu_S_n = n mu_overline(X)
$

====== Example:\
a)\

$X = "thickness of a sheet of paper"\
  mu = 0.08 "mm"\
  sigma = 0.01 "mm"\
$$
  S_250 &= X_1 + dots.c + X_250\
        &= "thickness in mm of the unbound book"\
        & tilde.op N(250(0.08), 250(0.01)^2)\
        & "normalcdf"(20.2, "E99", 20, (0.01sqrt(250)))\
        &= 0.1030
$
b) This can be seen as a binomial distribution\

$"Let " Y = "# of books thicker than 200 mm"\
"Then " Y tilde.op "Bin"(15, 0.103)$
$
  P(Y >= 3) &= 
            &= 1 - P(Y <= 2)
            &= 1 - "binomcdf"(15, 0.103, 2/)
$

c)\
$"10"^"th"" percentile of the thickness is invNorm"(0.1, 20, 0.01 sqrt(250)) $

d) What is the probability that = What is the proportion that\
cant solve, we dont know the distribution of $X$

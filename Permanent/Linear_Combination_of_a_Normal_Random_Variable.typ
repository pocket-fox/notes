#import "/templates/permanent.typ": *
#show: style

== Linear Combination of a Normal Random Variable

Following from the linearity of linear functions of normal random variables, linear combinations of
a collection of independent normal random variables are also normally distributed.

Given some distribution $Y$, defined as a linear combination of $n$ independent and normally
distributed random variables $X_n$, that is $Y$ takes the form $Y = c_1 X_1 + c_2 X_2 + dots + c_n X_n$,
then $Y$ can be defined as:
$
  Y tilde.op N(c_1 mu_1 + c_2 mu_2 + dots + c_n mu_n, c_1 sigma_1 + c_2 sigma_2 + dots + c_n sigma_n)
$

//TODO: finish note

====== Example:

The lengths of certain rods are normally distributed with a mean of 250 mm and a standard deviation of 0.6 mm. Four rods are randomly selected and joined end-to-end to be fitted into a sleeve. (The rods are assumed to be independent of one another.)

a. If a sleeve has length 1002.5 mm, what is the probability that an assembly of rods will fit into the sleeve.
$
  "Let" L = "length of rod in mm"\
  L tilde.op N(250, 0.6^2)\
  "Let" S_4 &= L_1 + L_2 + L_3 + L_4\
            &= "length of assembled rods"\
$#aside[It is *NOT* $4 dot L$, the rods are independent, therefore you must sum them...]$
  "Then" S_4 &tilde.op N(250 + 250 + 250 + 250)\
             &tilde.op N(1000, 4(0.6)^2)\
$$
  P(S_4 < 1002.5) &= "normalcdf"(-oo, 1002.5, 1000, 1.2)\
                  &= 0.9814\
                  \
  P(S_4 < 1002.5) &= P((S_4-1000)/1.2 < (1002.5 - 1000)/1.2)\
                  &= P(ZZ < 2.5/1.2)\
                  &= P(ZZ < 2.08)\
                  & "look up in Z-table"...\
                  &= 0.9812
$

b. Suppose that the sleeves are also normally distributed, with a mean if 1002.5 mm and a standard deviation of 0.4mm. What is the probability that four randomly selected rods will fit into a randomly selected sleeve?
$
  T &= "length of sleeve"\
  T &tilde.op N(1002.5, 0.4^2)\
  P(S_4 < T)\
  = P(0 < T - S_4)\
$$
  T - S_4 &tilde.op N(1002.5 - 1000, 1.44 + 0.16)&\
          &tilde.op N(2.5, 1.6)&&= "normalcdf"(0, oo, 2.5, sqrt(1.6))\
          &                    &&= 0.9759466
$

c. Find the $90^"th"$ percentile for rod lengths.
$
  l_90 &= "invNorm"(0.90, 250, 0.6)\
       &= 250.77 "mm"\
      \
  ZZ_90 &= 1.28\
   l_90 &= 250 + 1.28(0.6)\
$

#hide[
  = Related
  #link("Linear_Combination_of_a_Random_Variable.typ")[Linear_Combination_of_a_Random_Variable]
]

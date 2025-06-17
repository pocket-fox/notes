#import "/templates/permanent.typ": *
#show: style

= Linear Combination

Suppose that there exists some *superset* $X_1, X_2, ..., X_n$ and
$C_1, C_2, ..., C_n$ are constants. Then
$Y = C_1 X_1 + C_2 X_2 + dots.h.c + C_n X_n$. $Y$ is a linear combination of the
$X_i$s

If $X_1, X_2, dots.h.c ,X_n$ are independent variables, then:
$
    sigma_Y^2 = C_1^2 sigma_X_1^2 + C_2^2 sigma_X_2^2 + dots.h.x + C_n^2 sigma_X_n^2
$

When determining *variance* of a linear combination, regardless of whether you
are adding them together ($Z = X + Y$) or subtracting them ($Z = X - Y$), you
add the variances of the two sets. You are combining the variance in either
case, subtracting the variances would end up _reducing_ the measure of variance.

Example:\
Four poles are randomly selected and attatched end-to-end. If poles have mean
length 26" and standard deviation $0.25 "\""$ Assume lengths are independent.
Find the mean and standard deviation for the length of the assembled poles.\
Length $L$ is the length of a pole\
Length $T$ is the length of an assembly\
$
            T & = L_1 + L_2 + L_3 + L_4                              \
         mu_T & = mu_L_1 + mu_L_2 + mu_L_3 + mu_L_4                  \
              & = 26 + 26 + 26 + 26                                  \
              & = 104 "in"                                           \
                                                                     \
                                                                     \
    sigma_T^2 & = sigma_L_1^2 +sigma_L_2^2 +sigma_L_3^2 +sigma_L_4^2 \
              & = (0.25)^2 +(0.25)^2 +(0.25)^2 +(0.25)^2             \
      sigma_Y & = sqrt(1/4)                                          \
              & = 0.5 "in"
$

#hide[
    = Related
    #link("Set.typ")[Set]
    #link("Variance.typ")[Variance]
    #link("Mean.typ")[Mean]
]

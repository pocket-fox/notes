#import "/templates/permanent.typ": *
#show: style

= Integration By Parts

Let $u = f(x)$ and $v = g(x)$ be some functions of $x$, then:
$
    integral u d v = u v - integral v d u
$

====== Example:\
Solve: $integral x e^(-x) d x$ $
      u & = x quad   &   v & = e^(-x)      \
    d u & = d x quad & d v & = -e^(-x) d x \
$$
    integral x(-e^(-x))d x & = -integral x e^(-x)d x             \
                           & = -(x e^(-x) - integral -e^(-x)d x) \
                           & = -(x e^(-x) + integral e^(-x)d x)  \
                           & = -(x e^(-x) + (-e^(-x) + C))       \
                           & = x e^(-x) - e^(-x) + C
$

#hide[
    = Related
    #link("Integral.typ")[Integral]
]

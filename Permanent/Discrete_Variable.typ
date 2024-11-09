#import "/templates/permanent.typ": *
#show: style

= Discrete Variable

A discrete variable describes information that can be represented by distinct, disjointed, values. That is, you cannot have valid values "halfway" between two valid values of a discrete variable. Each member of a set created by a discrete variable can be listed. 

Essentially, this category serves to preclude a *range* of values. Some variable $X$ would be discrete if it was define as $X = {1, 2, 3, 4, 5}$ or $X = {1, 1.25, 1.5, 1.75, 2}$; however, it would become a *continuous variable* were it defined as $X = { 1 <= x <= 2 }$.

#hide[
  = Related
  #link("Continuous_Variable.typ")[Continuous_Variable]
]
